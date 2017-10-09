Version 1 of Sugar Ferret For FS by Stripes begins here.
[Version 1.1 - Alt attack tweaked]
"Adds a caffeine-addicted Sugar Ferret creature to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses

when play begins:
	add { "Sugar Ferret" } to infections of girl;
	add { "Sugar Ferret" } to infections of guy;
	add { "Sugar Ferret" } to infections of furry;

sugferretjoke is truth state that varies. sugferretjoke is normally false.

to say losetosugarferret:
	if sugarferretfight is 3:
		now sugarferretfight is 2;
		if hp of player > 0:
			say "     Unwilling to keep fighting, you give yourself over to the manic ferrets. Cheering, they bounce onto you, grabbing your limbs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by the over-excited ferrets.";
		else:
			say "     As your strength wanes, you are tackled by several of the ferrets at once. They grab onto your arms, legs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by the over-excited ferrets.";
	else:
		if hp of player > 0:
			say "     Unwilling to keep fighting, you give yourself over to the manic ferrets. Cheering, they bounce onto you, grabbing your limbs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by several of the over-excited ferrets while others pull off your backpack.";
		else:
			say "     As your strength wanes, you are tackled by several of the ferrets at once. They grab onto your arms, legs and body, pulling you down by sheer numbers. Even as you're going down, you're groped and fondled by several of the over-excited ferrets while others pull off your backpack.";
		if soda is owned:
			delete soda;
			decrease lastcaffeine of Sweet Tooth by 2;
			if bodyname of player is "Sugar Ferret" and caffeinehigh of player is 0:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You quickly grow more excited and long to play with them. When one presses some cola to your lips, you drink it down without thinking, your wild, over-caffeinated excitement returning as your Sugar Ferret body reacts. You can feel the caffeine rushing through your system and you grab the nearest ferret, pulling them into a sweet kiss.";
				decrease thirst of player by 6;
				sfcaffeine;
				decrease caffeinehigh of player by 2;
			else if bodyname of player is "Sugar Ferret" and caffeinehigh of player > 0:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You try to make a grab for your pop as you see them passing it around, at first just trying to get your stash back. But when one can is passed to you, you pop it open right away and start downing it. You can feel the sweet rush as it flows over your tongue and down your throat. You grab the nearest ferret, pulling them into a sweet kiss.";
				increase caffeinehigh of player by 2;
				decrease thirst of player by 3;
				decrease humanity of player by 5;
				increase libido of player by 5;
			else:
				say "     The wild ferrets rummage through your pack, pulling out all the soda they can find, cheering happily as they do, passing it around as they lustfully tease you. You quickly grow more excited and long to play with them. All around you, they drink down your supplies of soda while working to get you aroused.";
			while carried of soda is not 0:
				delete soda;
				decrease lastcaffeine of Sweet Tooth by 2;
				if caffeinehigh of player > 0 and bodyname of player is "Sugar Ferret":
					increase caffeinehigh of player by 2;
					if a random chance of 2 in 5 succeeds, increase caffeinehigh of player by 1;
					if a random chance of 2 in 5 succeeds, decrease caffeinehigh of player by 1;
					decrease thirst of player by 3;
					decrease humanity of player by 3;
					increase libido of player by 3;
		else:
			if bodyname of player is "Sugar Ferret" and caffeinehigh of player is 0:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. When one presses some cola to your lips, you drink it down without thinking, your wild, over-caffeinated excitement returning as your Sugar Ferret body reacts. You can feel the caffeine rushing through your system and you grab the nearest ferret, pulling them into a sweet kiss.";
				decrease thirst of player by 6;
				sfcaffeine;
				decrease caffeinehigh of player by 2;
			else if bodyname of player is "Sugar Ferret" and caffeinehigh of player > 0:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. In your excitement, you try to make a grab for your pop as you see them passing it around and soon you're downing a can of pop that's been passed to you. You can feel the sweet rush as it flows over your tongue and down your throat. You grab the nearest ferret, pulling them into a sweet kiss.";
				increase caffeinehigh of player by 2;
				decrease thirst of player by 3;
				decrease humanity of player by 5;
				increase libido of player by 5;
			else:
				say "     The wild ferrets rummage through your pack, but find it empty of soda. Not to let that get them down, they pull out some soda from their personal stashes to pass around while celebrating their victory. They cheer happily, passing the drinks around as they lustfully tease you. You quickly grow more excited and long to play with them. All around you, they drink down your supplies of soda while working to get you aroused.";
		say "     What comes afterwards is largely a haze filled with bright colours, soft breasts, wet pussies, hard cocks and tight asses, all punctuated by sweet kisses. You lose yourself in the sex with the lustful, bouncy ferrets before the group decides to finally move on when they notice they've wiped out the drinks.[impregchance]";
		now libido of player is libido of player / 2;


to say beatthesugarferret:
	if sugarferretfight is 3:
		now sugarferretfight is 1;
		say "     Over the course of your fight with them, you manage to temporarily daze several of the crazed ferrets attacking you and toss several others over to the others having lustful sex, where they're grabbed and pulled into playing with those couples. When the last of them dealt with, you have a brief moment to take in what's happening.";
	else:
		say "     Managing to daze several of the ferrets, the others retreat with their fallen comrades, yelling '[one of]Meanie[or]Stingy[or]Come on, let's try over here[or][if cunts of player > 0]She[else]He[end if] plays too rough![at random]' as they leave. Victorious over the manic tube-rats, you are free to get on with your plans. ";


to say sugarferretdesc:
	setmongender 19; [creatures are mixed/variable]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if sugarferretfight is 3:
		say "     Once cute and cuddly little ferrets, the pastel mustelids have become vibrantly coloured. Their cute paws-like hands have gained large, sharp claws and their too-wide grins are filled with pointed teeth. They look at you with sinister intent in their bright, red eyes as they move in to surround you.";
	else:
		say "     You find yourself encountering a small group of the sugar ferrets all hepped up on caffeine again, probably still rampaging in search of more cola or candy. Their once pastel colours are now bright and vibrant. Their paws have elongated claws and their wide, manic grins show their saw-like teeth. While only four of five feet tall, there are several of the little bundles of energy here. Overcharged on caffeine and sugar, they have boundless energy and a wild thirst for more. Spotting you, they poing over, intent on ransacking your pack for any soda they can find. ";
		if bodyname of player is "Sugar Ferret" and caffeinehigh of player > 0:
			say "     Still in the throws of your own caffeine high, you clutch your pack possessively, wanting to protect your stash from them.";
		else:
			if sugferretjoke is false:
				say "     'Give us the cola and we'll hurt you!' one says.";
				say "     'No, _or_ we'll hurt you!' another says, bonking the first on the head.";
				say "     'Well, maybe it'll hurt a bit, but it'll be fun!' another pipes in.";
				say "     'Hey, don't tell [']em that. They won't give up the goods,' the second says, slapping the third. The trio are reduced to a slapping fight before coming to their senses, yelling 'Cola!' together and charging, trying to catch up with the rest of the ferrets already advancing on you.";
				now sugferretjoke is true;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Sugar Ferret"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The crazed ferrets try to tackle you down en masse![or]One of the ferrets manages to bite your ankle with his sharp teeth! 'That's for being a meanie and not playing with us,' she says.[or]The colourful ferrets pelt debris at you while making demands for soda![or]The ferrets claw at you, leaving several deep gashes![or]One of the manic mustelids weaves in and around your legs at high speed, scratching and pinching you mercilessly![or]The multicolour mob tries to rush you as a hyperactive wave of fur, teeth and claws![or]One of the ferrets grabs your arm, pulling you towards it. 'Play with me!' 'No, me first!' another calls out, grabbing your other arm and pulling you in the other direction![or][if scalevalue of player > 3]Being carried piggy-backed by another to reach your height, a[else]A[end if] ferret comes at you, swinging his arms in wild punches as he laughs maniacally.[at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthesugarferret]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetosugarferret]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[sugarferretdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "[if caffeinehigh of player > 0]that of a wild ferret creature with bright red eyes. You have a wild, manic expression on your face, showing your pointy, saw-like grin[else]that of a cute ferret creature with a happy smile[end if]";
	now body entry is "[if caffeinehigh of player > 0]short, slender and elongated. You are filled with excitement and energy barely controlled at times. You have short arms and legs that end in little paws with large, sharp claws. Your ferret-like body is always in motion, twitching from the caffeine-high[else]short, slender, elongated and filled with bouncy energy. You have short arms that end in cute, nimble paws with small claws at their tips. You have short legs that make your flexible body bound and sway whenever you run[end if]"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[if caffeinehigh of player > 0]brightly coloured purple fur that is scraggly and ill-groomed[else]soft fur that is a soft, pastel purple in tone[end if] covers your";
	now tail entry is "You have the long, slender tail of a [if caffeinehigh of player > 0]frantic[else]cute[end if] ferret attached to your backside."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "ferret"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it warps and pulses, bulging and shifting in odd places as a sweet taste fills your mouth. Soon you are left with a head much like a ferret's, but with a [if caffeinehigh of player > 0]wild grin full of pointy teeth and bright red eyes[else]friendly smile[end if]";
	now body change entry is "it stretches and grows more tube-like while becoming under five feet in height
[if caffeinehigh of player > 0]. Your limbs reshape themselves into short arms and legs ending in paws with sharp claws on each digit. You are filled with a wild, rambunctious energy that makes it difficult for you to keep still[else]. Your limbs reshape themselves into short arms and legs ending in cute, soft paws[end if]";
	now skin change entry is "prickles spread across it as [if caffeinehigh of player > 0]bright purple[else]pastel purple[end if] fur spreads all over you";
	now ass change entry is "you gain the long, slender tail of a twitchy ferret";
	now cock change entry is "it changes shape, becoming elongated and tapered, much like that of a ferret";
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 90; [ The monster's starting hit points. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 7; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 66; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]ferrety[at random]";
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "sugferret"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"sugferret"	retaliation rule	--	--	--	--	--	--	--	sugferret rule	--


this is the sugferret rule:		[continuous temptation]
	choose row monster from table of random critters;
	if bodyname of player is "Sugar Ferret":
		say "     [one of]Just looking at the other cute, bouncy ferrets around you is a considerable temptation. If you give in, you could have more soda with them and have some fun[or]The sight of those energetic ferrets makes you want to give in and join them in their wild romp[or]'Yay! Playtime!' one of the ferrets calls out[or]'Weeee! PopPopPopPopPop!' they babble frantically, lost in their caffeine high and you find yourself tempted to give into the manic energy filling you as well[or]'Join us for some fun! Come! We've got sugar!' one of them says in a tempting manner. 'Yeah,' another pipes up, 'we'll share!' Your ferrety impulses do find the offer alluring[at random]...";
		let targetnum be 200 + humanity of player + ( plmindbonus * 3 ) - libido of player - ( caffeinehigh of player * 2 );
		let tempnum be a random number between 1 and ( 200 + ( monmindbonus * 3 ) );
		say "1-200: [tempnum] vs [targetnum]: ";
		if tempnum > targetnum:
			let dam be ( ( square root of ( lev entry + wdam entry ) ) * ( a random number between 80 and 120 ) ) / 100;
			say "The impulse to give in and join them eats away at your resolve. You take [special-style-2][dam][roman type] damage and grow a little more aroused!";
			increase libido of player by 3;
			if hp of player < 1 or libido of player >= 110:
				lose;
		else:
			say "You manage to fight down the impulse to give in and play with them... for now.";
		LineBreak;
	else if a random chance of 1 in 2 succeeds:
		say "     [one of]The bouncy ferrets poing around you. It'd be cute if it weren't for their demonic eyes and saw-toothed grins.[or]Hepped up on caffeine and sugar, the manic ferrets seem to have boundless energy.[or]'Yay! Playtime!' one of them calls out.[or]'Weeee! PopPopPopPopPop!' they babble frantically, lost in their caffeine-high.[or]'Soda! Give us soda!' a [one of]hob[or]jill[at random] yells.[or]'Woooo! Sugarrrrr!' one of the ferrets cries out.[or]'Let's play!' one of the ferrets says.[or]'Spoon!' a blue ferret yells, charging.[or]'Fork over the cola!' one of them yells.[or]'GimmeGimmeGimme!' one says, making grabby paws for your backpack.[or]'This is fun!' one of the brightly coloured ferrets laughs as poings in place.[at random]";


when play ends:
	if bodyname of player is "Sugar Ferret":
		if humanity of player is less than 10:
			say "     As your humanity fades, you are overcome by an increasing longing for sugary treats. You roam around for a while, scavenging what candy you can find and guzzling down any soda you gather immediately, thirsty or not. After a few days of this, you remember another spot with lots of sweet treats and make your way back to the Sweet Tooth candy store where you are met by the other sugar ferrets. They happily greet you and welcome you to their group with another orgy of carbonated, over-caffeinated lust.";
		else:
			say "     You manage to survive your time in the city and are brought out to the military's holding facility. There you impatiently await your release, always tempted by the soda you see around the camp. You resist, knowing that your transformation into a wild, over-caffeinated creature of unbridled lustful energy would not improve your chances of getting out of there. It is very hard on you, but you manage to hold back your cravings.";
			if alexbrunch >= 4:
				say "     Once you're released, you manage to meet up with Alex, the ferrety lawyer, and move into his new place, becoming his lover and mate. You have a fun life with him, able to enjoy wild romps on cola whenever you like, playing with Lorenda and Lee in their guises as paid housekeepers while really being just well-paid lovers and permanent houseguests. Alex continues his career as a very successful lawyer and thankfully doesn't pick up your caffeine hyperness, though he does develop quite the sweet tooth.";
			else:
				say "     Once you're released, you do your best to settle down into a new life. Luckily, you meet a cute [if cocks of player > 0]jill[else]hob[end if] among your release group and soon become their lover. In time, you move in together and have wild, over-caffeinated romps nearly every week-end. While your lover doesn't gain your reaction to cola and pop, they do develop quite the sweet tooth.";

Sugar Ferret For FS ends here.
