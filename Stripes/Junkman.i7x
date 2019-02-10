Version 1 of Junkman by Stripes begins here.

"Adds a Junkman creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Monster Responses

when play begins:
	add { "Junkman" } to infections of guy;

to say junkmandesc:
	setmongender 3; [creature is male]
	choose row monster from the Table of Random Critters;
	let qq be a random number between 4 and 8;
	let zz be ( a random number between 1 and 6 ) + ( a random number between 1 and 6 );
	if hardmode is true and level of player > 6:		[Heavy Duty Model!]
		increase qq by level of player - 7;
		now HP entry is ( ( ( 13 times qq ) divided by 2 ) + zz + a random number between 0 and qq );
		now monsterHP is HP entry;
		now wdam entry is 4 + ( qq / 3 );
		now lev entry is qq;
		now dex entry is 12 + ( qq / 6 ) + ( square root of qq + 5 ); [faster initial growth, but slows down more]
	else:								[Standard Model]
		now HP entry is ( ( ( 13 times qq ) divided by 2 ) plus zz );
		if HP entry > 60, now HP entry is 60;
		now monsterHP is HP entry;
		now wdam entry is qq;
		now lev entry is qq;
		now dex entry is ( qq + 10 + a random number between 0 and 2 );
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
		now libido entry is 50;
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
		now libido entry is 60;
	else:
		now sex entry is "Male";
		now libido entry is 40;
	say "     As you round a corner, you catch sight of a strange figure. Looking vaguely human, it has several chunks of junk that have grown from or fused with its body. There are metal pipes, plates of metal, unidentifiable chunks and other assorted bits to replace parts of his skin or body. There is a [one of]plastic guard[or]metal panel[or]steel plate[or]brass globe[at random] placed over his groin to protect his junk. Despite looking like a strange cyborg made of scrap, it moves quite organically. Spotting you, he releases a groan like grinding metal and charges to attack.";
	if hardmode is false and ( lev entry is 7 or lev entry is 8 ):
		say "     This particular junkman seems especially powerful and dangerous. Best be careful.";

to say losetojunkman:
	[reset creature stats for next encounter]
	choose row monster from the Table of Random Critters;
	now lev entry is 6; [ reset level for random encounter availability ]
	say "     Victorious, the scrapyard cyborg raises its arms in the air and emits another grinding groan. After this cry, he grabs you and pushes you down across a [one of]stray car seat[or]old washer[or]rusty engine block[in random order] and moves in behind you. ";
	say "     As you hear an odd whirring sound, you manage to glance back for a moment before you're pushed back down. You catch a glimpse of the panel over his groin folding up, uncovering his blessedly human dick made of pure flesh and blood. As he lines it up with your [if player is female]wet pussy[else]tight pucker[end if], you [if HP of player > 0]moan softly in anticipation[else]struggle a little in vain[end if] before he sinks it into you. You grip your improvised seat as he starts thrusting into you repeatedly, quickly making you grow excited and lustful. The feel of his seemingly human penis thrusting into you feels quite enjoyable, making your [if player is female]pussy[else]asshole[end if] squeeze and tug at it as you long more and more for his hot seed in you.";
	say "     Thinking of his seed makes you notice that his balls feel strange against [if player is male]yours[else]you[end if] as they bump into you with each thrust. Reaching back, you grab his sac to fondle him and find [one of]his balls have a plastic cover[or]it protected by what feels like a brass shell[or]it reinforced by several metal plates[or]some hard, rubber tubes leading into it[at random]. The creature atop you releases a grinding moan as you rub over his ballsack, clearly enjoying your touch despite their strange form. You can feel his balls start to throb warmly inside his odd scrotum and you are rewarded moments later by a steady stream of thick, oily cum. His slick seed pumps into you as some internal pump chugs away inside him, sending large amounts of his semen into you. Much of it flows up into your [if player is female]waiting womb[else]sexy ass[end if] while the rest overflows around his cock to run down your thighs, with more gushing out as he withdraws and paints your ass with his last few spurts. Finished, he gives your sticky rear end a pat and wanders off.[impregchance]";

to say beatthejunkman:
	say "     You manage to drive off the junk creature, forcing it to flee back into the scrapyard.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Junkman"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The junkman bashes you with a fist covered in metal bits![or]The junkman kicks you with a heavy, metal foot![or]The scrapyard cyborg grabs you and tosses you roughly to the ground![or]The junk cyborg headbutts you with his metal-plated skull![at random]";
	now defeated entry is "[beatthejunkman]"; [ Text when monster loses. ]
	now victory entry is "[losetojunkman]"; [ Text when monster wins. ]
	now desc entry is "[junkmandesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human, but with a stainless steel panel across one side and under your chin. From the shape of it, you'd guess it belongs on some kind of kitchen appliance. You have three rows of mismatched bolts running over it, almost like a strange mohawk of metal";
	now body entry is "human, but with numerous pieces of scrap protruding from or replacing body parts. There are some metal and plastic vanes attached to your shoulders, various external wires and cords, the handle to an old iron at your hip and metal pipes which sounds hollow replacing your left forearm, to name just a few. Your hands are thankfully normal save for a few wires embedded in the skin, allowing you full use of them. One foot has been replaced with the lower half of an iron and seems to match the handle at your hip[if player is male]. A quartet of brass tubes run across the surface of your skin and flex with it. These lead from a valve which has replaced your navel to your balls[end if][if player is female]. A trio of pink, plastic tubes run from your sides, starting just above the hip and across the surface of your skin. These lead down to your groin and link into your cunt, which is wet and slick with the oily lubricant flowing into it constantly[end if]";
	now skin entry is "human skin covered in a mish-mash of metal and plastic plates, many of them old and dented. Random bits of junk protrude from your skin at odd places as well";
	now tail entry is "From the end of your spine there dangles an electrical cord ending in a standard plug, but somehow it is able to move on its own at times, twitching and swaying when your emotions run high.";
	now cock entry is "[one of]human[or]pink[or]human-like[at random]";
	now face change entry is "your ears ring with the sounds of clangs and bashes. Your head echoes with the whirring of power tools as it reshapes into a mostly human form. You can feel an off cool sensation as a stainless steel plate forms at your cheek and under your chin, an approximate fit at best. The whirring only gets worse as you can feel several hard protuberances growing out from the top of your head";
	now body change entry is "the sounds of banging on metal and plastic comes from it. These even feel like dull thumps across your body as your changes come sporadically. Your body becomes human in form, at its basic level, but several parts are replaced with assorted junk. Stray wires grow out from your skin, only to curl around and sink back in elsewhere. One of your feet grow hard and heavy, reforming into the lower half of an iron. It is difficult to focus on all the changes happening to you as your body becomes a strange cyborg made of junk[if player is male]. Brass tubes form against your skin near your groin, attached at one end to your balls[end if][if player is female]. Pink plastic tubes form against your skin near your groin, running to your cunt. You can feel your pussy grow wet as the clear, oily lubricant keeps you slick and ready for mating[end if]";
	now skin change entry is "your skin becomes smooth and human, lightly tanned. But before you can appreciate this change towards normalcy, the sensation of change intensifies in random locations as a mish-mash of metal and plastic plates start to appear. Many of these are old and dented and don't quite fit the spots they're replacing. Some protrude out too far while others flex and shift as you bend. Other small chunks of junk and scrap protrude almost at random from your";
	now ass change entry is "the base of your tailbone opens a small panel and an electrical cord snakes out";
	now cock change entry is "it throbs and pulses, reshaping into a thankfully human form. As the pleasure of transformation is coming to an end, you cum, spraying out a spurt of thick seed that is a little oily to the touch";
	now str entry is 14;
	now dex entry is 14;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 42; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mish-mashed[or]junk-riddled[or]haphazard[at random]";
	now type entry is "cyborg"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


when play ends:
	if bodyname of player is "Junkman":
		if humanity of player < 10:
			say "     Drawn back to the scrapyard by your corrupted instincts, you join the other junkmen in wandering around the piles of junk, satisfying your lusts on each other and others you find. Your people have little ambition or organization, only existing in the moment, enjoying short lives corrupting a handful of creatures and siring a few offspring before eventually breaking down and rejoining their scrapyard home.";
		else:
			say "     Your body is upsetting to several of the soldiers who find you during the rescue operation, but you are able to convince them that you are still sane. Taken from the outbreak city, you are scrutinized by several of the military scientists, intrigued by your haphazard cybernetics. They are unfortunately able to learn little from you, as what they discover about your anatomy makes no sense and they conclude that it is purely cosmetic.";
			say "     But you can sense that there is more to it and that somehow the junk is a part of you. You obtain old books on appliance repair and electronics from garage sales and study your odd body, spending several hours a week tinkering with yourself. ";
			if tailname of player is "Junkman":
				say "     You discover early on that plugging yourself in feels very good and provides you with more energy. While you seem able to survive on just food or power, you operate at your best running on some of both. As an extra bonus, after a good, long charge, you are a randy lover with very long endurance, pleasing your partners greatly. ";
			say "     You open what panels you can and replace any frayed wires or corroded tubes you can find with replacements you scavenge from old appliances you collected during your yard sale hunting. While you can't really tell what most of these do, you do start to feel better over time as you make these repairs. While your new form is rather offputting, you do manage to make some new friends and meet new lovers, who also seem pleased with your body's improved function. By keeping proper maintenance on yourself, you manage to live a long and pleasurable life, surviving several generations of other species. ";
			if player is herm and "Sterile" is not listed in feats of player:
				say "     Over your long life, you give birth to and sire numerous offspring which are junk-cybernetic versions of their other parent. ";
			else if player is male:
				say "     Over your long life, you sire numerous offspring which are junk-cybernetic versions of their other parent. ";
			else:
				say "     Over your long life, you give birth to numerous offspring which are junk-cybernetic versions of their other parent. ";
			say "     You make sure to have as many children as you can with different lovers, ensuring there is a wide variety of them around add a little home-repair flair to their species.";

Junkman ends here.
