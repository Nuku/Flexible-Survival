Version 1 of Centaur Stallion for FS by Stripes begins here.
[ Version 1.2 - WS + oral ]
[Adaptation of Centaur Stallion for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Centaur Stallion to Flexible Survival."
 
Section 1 - Monster Responses

when play begins:
	add { "Centaur Stallion" } to infections of guy;

to say centaurstalliondesc:
	setmongender 3;		[creature is male]
	say "     A centaur approaches you, galloping across the plains and unslinging his bow. His body is covered in tan, human flesh from the waist up. From the waist down, everything is covered in the short, brown hairs of a horse. His head is mostly that of a human male at first glance, but with a broad flaring nose and pointed ears. His upper body is human and strongly built, with hard muscles and broad shoulders on that tanned, male body. His arms are human in appearance and quite muscular. Being a centaur, his legs are replaced in their entirety from the waist down by the body of a horse. His muscled, equine body has slender legs leading to a set of four shiny black hooves. A long flowing tail trails behind. Below that equine body is a massive sheath, bloated and full, as are the watermelon-sized balls behind it.";

to say losetocentaurstallion:
	if wslevel is 3 and ( ( cunts of player is 0 and a random chance of 1 in 5 succeeds ) or a random chance of 1 in 4 succeeds ):
		say "     You are bowled over by the powerful centaur, landing in a heap in the dirt. He chuckles darkly at you as he straddles you, slapping his hefty cock across your [bodytype of player] body a few times. He then gives a soft, exaggerated sigh as he starts to piss on you, his equine urine covering you with its impressive flow. You end up with a mouthful of it as the stream splashes across your face before finally coming to a halt with a few last squirts.";
		say "     Humiliated at being so used, his abuse of you does not end as his wet horsecock slaps against you a few more times. 'Start licking, you messy mare,' he orders. When you don't comply immediately, he stomps his hooves around you threateningly. Given no other option, you take his equine rod in your hands and guide it to your mouth. You lick and suck at it while your hands play along it, stroking along its impressive length. Still tasting his piss on it as the last drops of it leak out, that is soon replaced by drops of precum instead. You keep it up, forcing yourself to take more and more of his two feet of stallion meat into your mouth and throat. When he cums, he ends up pumping the bulk of his heavy load right into your belly, leaving you feeling full from his semen.";
		say "     Having sated himself, he steps back and pops his cock free of your throat and mouth. In the end, you are left wet and smelling strongly of a stable.";
	else if cunts of player > 0:
		say "     You feel a sudden weight atop you, pinning you to the ground on your hands and knees. Next comes a sudden pressure between your legs as you realize this hugely hung stallion fully intends to mount you[if cunt width of player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if cunt length of player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[else]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He thrusts in and out of you, grunting in a near bestial manner as that gigantic rod pounds into you over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[impregchance]";
	else if "Submissive" is listed in feats of player and "Less Anal" is not listed in feats of player:
		say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. He steps overtop you and stomps his hoofs on the hard ground around you. As you cringe to avoid them, your submissive instincts cause you to raise your rear, inadvertently putting it beneath the centaur's slapping cock.";
		say "     As his equine meat slaps against your rear a few times, he shifts his stance and starts grinding it against your backside, then thrusts it into you with a whinny of pleasure. You groan as the centaur's horse cock is driven into you, its flat glans spreading you wide as he starts plowing into you. You moan beneath him as his huge cock as he uses you as his mare. He thrusts in and out of you, grunting in a near bestial manner as that gigantic rod pounds into you over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[mimpregchance]";
	else:
		say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. He steps overtop you and pounds his hoofs on the hard ground again and again. As you cringe to avoid them, his huge cock slaps against his equine belly again and again, growing fully and harder. His pre dribbles down onto you as a warning of what comes soon after. With a loud whinny, his glans flares and blast after blast of centaur cum splatters onto you, leaving you soaked in his semen. He snorts again and trots off, frustrated and only a little satisfied.";
		decrease hp of player by 10;
	if "Female Preferred" is listed in feats of player and girl is not banned:		[change target to Mare for infection]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Centaur Mare":
				now monster is y;
				break;

to say beatthecentaurstallion:
	if libido of player > 24:
		say "     Your eyes are drawn back to the centaur's huge cock and throbbing ballsac. The large, flared glans is poking from his sheath and you can see his black cock is quite large to go with it. A lustful yearning makes you want to lick and suck that throbbing meat and drain those bloated balls for all they'll give.";
		say "     [bold type]Shall you give in to your urges?[roman type][line break]";	
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Give in.";
		say "     ([link]N[as]n[end link]) - Resist.";
		if the player consents:
			say "     Grabbing the stallion's large sheath, you rub over that warm flesh, getting him to moan and whinny, hopeful at getting some relief after all. As his cock starts to emerge, you eye that thick, black meat hungrily, licking your lips. Leaning further under him, you bring that large cock to your mouth and start licking and kissing at its flared glans, making it swell faster. Soon, centaur pre is leaking onto your tongue. You lick and suck at it until it grows too large and full to fit in your mouth before pulling it to you. Running your hands along the equine member, you fondle those huge balls while tending to the giant horse cock before you. As his glans flares and he starts to whinny excitedly, you hold the end with one hand while rubbing his balls with the other. Holding it in place, you get him to blast shot after shot of hot, equine cum into your mouth and down your throat. You swallow as much of it as you can, though much of his copious flow ends up running down your chest. Satisfied, you give his equine ass a swat, sending him galloping off. As you watch him go and rub your full, bloated tummy, you can feel the warmth of his seed inside you, spreading into tingles of his spreading infection.";
			increase libido of player by 5;
			if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
			if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
			decrease hunger of player by 3;
			if hunger of player < 0, now hunger of player is 0;
			decrease thirst of player by 6;
			if thirst of player < 0, now thirst of player is 0;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			if "Female Preferred" is listed in feats of player and girl is not banned:		[change target to Mare for infection]
				infect "Centaur Mare";
			else:
				infect "Centaur Stallion";
		else:
			say "     Not wanting to risk the large amount of infected semen those big balls contain, you pull your eyes away from his huge loins. You give the centaur's equine ass a swat, sending him galloping off.";
	else:
		say "     Having defeated the wild stallion, you give his equine ass a swat, sending him galloping off.";


Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Centaur Stallion"; [Name of your new Monster]
	now attack entry is "[one of]The centaur stallion fires his bow at you, piercing your shoulder with an arrow![or]The centaur stallion charges at you, knocking you to the ground roughly![or]The centaur rears up and manages to land a heavy hoof on your shoulder![or]The centaur swings a punch at you, bashing you in the jaw![or]The stallion rears up, causing his semi-hard cock to slap against his equine belly and release a spurt of precum onto you and also giving you a good view of his impressive penis and bloated balls![at random]";
	now defeated entry is "[beatthecentaurstallion]";
	now victory entry is  "[losetocentaurstallion]";
	now desc entry is "[centaurstalliondesc]";
	now face entry is "mostly human at first glance, but with a broad flaring nose and pointed ears. It has a male cast to it";
	now body entry is "that of a centaur, with a muscled, human upper torso. Your body is chiseled and has well-defined muscles. Broad shouldered and strongly-built, it evokes the male form. Your arms are strong and muscular, and very human in appearance. Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of shiny black hooves";
	now skin entry is "tanned human flesh from the waist up. From the waist down, everything is covered in the short brown hairs of horse over your";
	now tail entry is "You have a long, flowing tail like a horse coming from just above your behind. It flicks and swishes from time to time.";
	now cock entry is "[one of]black, equine[or]flared, equine[or]sheathed, equine[or]horse-like[at random]";
	now face change entry is "it takes on a human appearance with hard, masculine features. As the changes continue to progress, your nose flares wide and your ears taper up into points";
	now body change entry is "your torso becomes strong and muscled, with broad, manly shoulders. The muscles on your arm and chest become well-defined, as if having had years worth of muscle training within a matter of moments. But as the changes progress, your legs and hips become unsteady and you are no longer able to stand as they twitch uncontrollably. Spots fill your eyes as the rush of this transformation overwhelms your senses. When your vision finally clears, your lower body has become that of a horse";
	now skin change entry is "a sudden itching from below your waist brings to your attention the short brown hairs completely covering you from your waist down. However, from the waist up your skin is tanned and smooth human skin";
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a horse's tail";
	now cock change entry is "it twitches and throbs as it stiffens and reshapes itself. The head flares like a horse's and releases several spurts of cum on the ground as it turns a glossy black. As your member grows soft again, a sheath forms around the base to keep the swollen member safe and secure";
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 35;			[ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 6;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 28;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 20;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 40;			[ Amount player Libido will go up if defeated ]
	now loot entry is "centaur cum";			[ Loot monster drops, ]
	now lootchance entry is 33;		[ Chance of loot dropping 0-100 ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[at random]";
	now type entry is "centaur";			[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hoofstomp";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Hoof Stomp

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hoofstomp"	retaliation rule	--	--	hoofstomp rule	20	--	--	--	--	--


this is the hoofstomp rule:		[double-damage hoof stomping]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[Double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The centaur rears up to attack you, slamming both hooves into [one of]you[or]your chest[purely at random], knocking your over briefly. [one of]While you're prone,[or]This allows it to use[purely at random] its hard, heavy hooves to [one of]pound at you[or]stomp away at you[or]strike you repeatedly[purely at random] until you manage to get out of the way and get back on your feet. This [one of]powerful[or]strong[or]devastating[purely at random] attack does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";



Section 4 - Centaur Cum and Centaur Hair

Table of Game Objects (continued)
name	desc	weight	object
"centaur cum"	"Some centaur cum you've managed to collect... Why would you do that!?"	1	centaur cum
"centaur hair"	"Some thick, dark brown hair."	0	centaur hair

centaur cum is a grab object.
the usedesc of centaur cum is "[centaurcumuse]".
it is part of the player.
It is temporary.
centaur cum is cum.

centaur hair is a grab object.
the usedesc of centaur hair is "[centaurhairuse]".
it is part of the player.
It is temporary.

to say centaurcumuse:
	say "     With a little shrug, you tilt your head back and slam down the centaur cum, letting the thick, gooey contents of the jar slide down your throat. While it does slake your thirst a little, it also floods your body with infection.";
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	if "Female Preferred" is listed in feats of player and girl is not banned:		[change target to Mare for infection]
		infect "Centaur Mare";
	else:
		infect "Centaur Stallion";

to say centaurhairuse:
	say "     You take the long strands of thick horsehair and stare at them. Feeling a growing compulsion, you place the roots of the tail at [one of]the base of your spine[or]at the back of your head[at random] and feel them start to grow into you.";
	if "Male Preferred" is listed in feats of player and guy is not banned:			[change target to Stallion for infection]
		infect "Centaur Stallion";
	else:
		infect "Centaur Mare";

the scent of centaur cum is "The contents of the jar smell of men and horses, and musky, male arousal.".

the scent of centaur hair is "The hairs smell of women and horses, and the dry plains outside the city.".



Section 5 - Endings

when play ends:
	if bodyname of player is "Centaur Stallion" or bodyname of player is "Centaur Mare":
		if humanity of player is less than 10:
			say "     As your infection spreads within you, you find yourself drawn back to the open plains at the edge of the city. There, you seek out the other centaurs and join their herd. ";
			if cocks of player > 0 and cunts of player > 0:
				say "     As a herm centaur, you are popular among the other members of the herd and are often mounted by the stallions and sought out by the mares in heat. You happily have sex with them all, whinnying lustfully as you mate with them.";
			else if cocks of player > 0:
				say "     As a male centaur, you help to guard the territory. When they come into season, you are sought out by several of the mares in heat looking for you to give them a foal.";
			else:
				say "     As a female centaur, you help gather food and tend to the young foals. When the time comes and you go into heat, you are mounted often by the stallions, ensuring you bear the herd a foal.";
			if centaurmate is 1 or centaurmate is 2:
				say "     Your people are locked in a constant conflict with the tainted, mutant centaurs. You are careful not to tell them that you accidentally let the first of these escape the corrupted tree, but you do inform them of the apple tree and its sinister fruits. Your people eradicate these trees whenever they are found with fiery arrows. Without the apples, the mutant centaurs are more easily contained if never fully purged from your lands. The military, having erected a barricade around the plains, strive to contain the centaur menace in their own way. But the pure centaurs don't see it that way and instead are happy that it keeps the soldiers off their lands.";
		else:
			say "     Your unusual body makes modern life rather difficult for you, as most building, vehicles and even tools are not designed for a body as different as yours. You take to living a simpler, country life, making a comfortable home in a barn you buy and renovate with many modern conveniences. It is roomy and comfortable for someone like you and your home becomes envied by the few other tauric infected in the area, who start to emulate your example. Becoming friends with them, they provide you with a stable of various lovers to satisfy your lustful, equine passions.";

 
Centaur Stallion for FS ends here. 
