Version 9 of Small Feline and Lion For FS by Damaged begins here.
[ Version 9 - Alt Combat for male, player victory sex against male, ENDINGS!]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Small Feline and Lion to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

Feline_type is a number that varies;
Feline_meow is a number that varies;
Feline_attached is a number that varies;
Feline_encountered is a number that varies;


to say cat att:
	say "[one of]The small feline launches an attack, claws and teeth flying![or]The diminutive lioness attacks you, tripping you down and raking at your groin with her razor sharp claws.[or]The girly lioness gropes you with her feline hands![or]The kitty girl grabs onto you and rubs her body sensually against yours![at random]";

to say lion att:
	say "[one of]The big cat-man roars and lashes out with talon like retractable claws![or]In a show of viciousness the lion man leaps at your neck, clamping down his jaw. Only by poking at his eyes do you force him to let go.[or]The lion man's powerful paws slam into you, knocking you around![or]The powerful feline grabs you and tosses you to the ground, sending you tumbling![at random]";

to say cat def:
	if libido of player >= 40:
		if cocks of player > 0:
			say "     Deciding to make use of the pesky catgirl, you push the small, curvy feline to the ground and pounce her.  She mewls softly, but doesn't pull away as you line up your cock and drive it into her[if cock length of player > 16].  Your massive cock makes a huge bulge in the little feline and she moans and mewls uncontrollably, rubbing her paws over her swollen tummy[otherwise if cock length of player > 10].  Your big cock makes an appreciable bump in the little feline's belly and she rubs it, moaning and mewling happily[otherwise].  Your cock stuffs the little feline, cramming her full of throbbing meat, making her moan and mewl happily[end if].  Her pussy quivers around your shaft and her B-cup breasts sway as you pound into her curvy body.  When finally you cum, you pump your thick seed into her, leaving her [if cock width of player > 10]hugely bloated as your ample cum stuffs her small body, flowing out her overstuffed pussy[otherwise if cock width of player > 5]tummy a little plump and her pussy leaking your seed[otherwise]her pussy stuffed full of your semen and slowly leaking cum[end if].  She purrs softly, passed out after getting fucked good and hard.";
		otherwise:
			say "     Deciding to make use of this pesky catgirl, you grab the small, curvy feline and press her face between your legs, grinding your pussy into her softly furred muzzle.  She mewls softly and starts timidly licking at your slit, running her raspy little tongue over it.  You moan softly and scritch her ears, telling her she's a good kitty.  As you encourage her, her enthusiasm for her task increases, as does your pleasure.  Her rough tongue is quick stimulating and soon enough you're soaking the little kitty's face in your juices as you cum hard.  Once you're finished with her, you push her to the ground, leaving her to lick and groom herself clean.";
	otherwise:
		say "You deliver a final strike to the small feline, knocking her out!";

to say lion def:
	say "     The big cat tries to rake you with his monstrous claws one more time, but you jump back nimbly even as you see it slump down";
	if libido of player + ( Feline_meow * 3 ) > 50:
		say ".  Knocked down and beaten, the leonine man is lying on the ground, his cock still mostly hard after being denied release.  Eying it, you find yourself wondering if you could risk having a little fun with that feline meat[if cocks of player > 0 and Feline_meow < 8] or that tawny ass[end if] now that he's subdued.  Do you want to have some fun with him?";
		if the player consents:
			now tempnum is 0;
			if cocks of player > 0 and Feline_meow < 8:
				say "     Looking over the defeated lion, you wonder if you'd prefer to stuff his furry ass (Y) or have a ride on that feline cock. (N)";
				if the player consents:
					now tempnum is 1;
					decrease Feline_meow by 1;
					say "     Deciding to take this opportunity to turn the tables on the lion man, you shove the big kitty onto his front.  He tries to struggle, thinking you intend to keep fighting, but you grab his wrists and keep him pinned down.  Once you start grinding your [cock size desc of player] [cock of player] erection against his ass, he whimpers and attempts to pull away, but you keep your grip.  Lining up your cock under his tail, you press your glans against his tailstar and sink slowly into his tight, unyielding hole.  His initial mrowl of discomfort soon turns to rumbles of pleasure as you pound into him, stuffing his golden-furred ass with your meat.  Soon enough, he's pushing back into your thrusts and mewling needfully like a lustful kitty.";
					say "     You fuck him like this for several minutes before finally driving your full length into him and groaning loudly as you cum[if cock length of player > 24].  Your giant cock stretches the lion man out, but he takes it all even as your spurting seed stuffs him even further[otherwise if cock length of player > 12].  Your huge cock stretches out the lion man nicely and he takes it all as your hot seed flows into him[otherwise].  Your pulsing cock sends your hot seed deep into the lustful lion[end if].  Finished with him, you pull out and give his ass a spank, sending him on his way.  He is rather wobbly as he staggers off.  As you watch him go, you notice him shrinking down and his figure changing, becoming more girlish and feminine.  It looks like there may be another of those cat girls around soon.";
			if tempnum is 0:
				decrease Feline_meow by 3;
				say "     Deciding you can't let such a lovely, hard cock go to waste, you shove the big kitty onto his back.  He tries to struggle, thinking you intend to keep fighting, but you grab his wrists and pin him down.  Once you start grinding your ass down onto waning erection, his attitude changes and his angry growls turn to a rumble of pleasure.  His cock quickly stiffens back to full hardness, ready for you.";
				say "     With the throbbing need for lion cock overwhelming you, you don't delay any longer and lower yourself down onto his hard rod, releasing a mrowl of pleasure.  His shaft feels so good inside you, filling a need that had been growing inside you.  You run your paws through his thick chestfur and ride his cock hard and fast, giving yourself over those feline urges[if cocks of player > 0].  Your cock is quite hard from your arousal, but you have no desire to tend to it, focusing purely on your pussy's need for lion cum[end if].  His paws rub over your [bodytype of player] body and play with your tits.";
				say "     Eventually, your efforts are rewarded as that leonine penis pulses inside you, blasting his ample load deep inside you, stuffing you so wonderfully full of feline cum that your belly swells with its large output.  Feeling deliciously full and satisfied, at least for now, you roll off of the big kitty.  The lion man snuggles you, caressing your stuffed tummy before helping you up onto your feet, wobbly though they may be, before padding off.[impregchance]";
				infect "Feline";
	otherwise:
		say ", passing out shortly afterwards.";

to say cat vict:
	increase Feline_meow by 1;
	say "     The small curvy feline approaches and looks up at you imploringly. Against your better judgment, you reach down and pick her up. She leans in and begins to eagerly suckle at your chest";
	if breasts of player > 0:
		say ".  The small cat's teeth chew at your own thick black teats and she begins to drink eagerly. You were not aware you were able to lactate, but she proves it in debilitating waves of delight";
	otherwise:
		say ".  Tawny fur explodes over your chest, spreading rapidly across your front and back, slightly lighter on the front. Pleasure builds in your front as two breasts swell into existence, nipples firm and visible through the fur.";
	infect;
	if libido of player < 10:
		say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
	otherwise:
		say "The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate.[line break]It seems no amount of your milk sates the busty feline as she snuggles against you.";
		now Feline_attached is 1;

to say lion vict:
	say "The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your new womb, which swells outwards with the volume of it. [line break]As you recover from the pleasure of it, the lion man snuggles, caressing your chest with his broad paws and rocking against you a few moments longer before he rises and releases you to your feet, wobbly though they may be.[impregchance]";
	infect;
	decrease Feline_meow by 3;

to say feline att:
	if Feline_type is 1:
		say "[cat att]";
	otherwise:
		say "[lion att]";

to say feline def:
	if Feline_type is 1:
		say "[cat def]";
	otherwise:
		say "[lion def]";
	say "[feline cleanup]";

to say feline vict:
	if Feline_type is 1:
		say "[cat vict]";
	otherwise:
		say "[lion vict]";
	say "[feline cleanup]";

to say feline cleanup:  [post-battle reset of stats to catgirl values]
	choose row monster from the table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 3, let debit be level of player - 3;
	if hardmode is false and Feline_type is 2 and monsterhp <= 0, increase xp of player by 22;	[xp difference for beating the male]
	now Feline_type is 1;
	now hp entry is 20 + ( debit * 3 );
	now wdam entry is 7 + ( debit / 3 );
	now lev entry is 3 + debit;
	now libido entry is 25;

to say feline desc:
	choose row monster from the table of random critters;
	let debit be 0;
	if Feline_meow < 5 or cunts of player is 0:
		increase feline_encountered by 1;
		if feline_encountered is 1:		[first time desc]
			say "A small cute girl, about four feet in height, covered in fur with round lion ears and a bright smile.  At first, you almost mistake her for a younger infected person, but soon realize that's incorrect.  She is quite developed for her short size, sporting B cups and wide hips. And she seems to be eying you rather provocatively.  She mrowls softly and licks her muzzle, coming towards you with a look of lustful hunger.";
		otherwise:
			say "You've encountered another of those feline girls.  Looking like a cute lioness girl about four feet in height, she is covered in fur with round lion ears and a bright smile.  She is quite developed for her size, sporting B cups and wide hips and seems to be eying you rather provocatively.";
		if hardmode is true and level of player > 3, let debit be level of player - 3;
		now Feline_type is 1;
		now hp entry is 20 + ( debit * 3 );
		now monsterhp is 20 + ( debit * 3 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 3 + debit;
		now libido entry is 25;
	otherwise:
		say "A large, strongly muscled and powerful lion/human hybrid. He has a dark brown mane and slightly lighter fur everywhere else with round ears and sharp looking teeth. He is entirely naked, allowing you to see his thickly furred sheath and the jutting pink lion shaft. It is oozing with precum as he walks and seeks out a mate.  Looking at him, you can feel something inside you, some buried urge, starting to push to let such a big, strong male just have his way with you.";
		if hardmode is true and level of player > 14, let debit be level of player - 14;
		now Feline_type is 2;
		now hp entry is 65 + ( debit * 5 );
		now monsterhp is 65 + ( debit * 5 );
		now wdam entry is 20 + ( ( 4 * debit ) / 11 );
		now lev entry is 14 + debit;
		now libido entry is 5;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feline"; [Name of your new Monster]
	now attack entry is "[feline att]"; [Text used when the monster makes an Attack]
	now defeated entry is "[feline def]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[feline vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[feline desc]";[ Description of the creature when you encounter it.]
	now face entry is "the cute head of a small lioness";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "a female lioness. You are only about four feet tall, though you have huge breasts for your height and your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on, leaking a constant stream of thick cream that runs down into your fur if it isn't being drunk constantly";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "[if looknow is 1]tawny brown fur, covering pliable[otherwise]tawny brown fur covered[end if]";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "You have a long, tufted lion's tail.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "leonine";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your head shrinks and, as you gasp, you notice your voice has lightened, gaining you the face of a small female feline. For some reason, the scents of the groins of all around you become enticing and you can feel arousal building"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "urge to giggle becomes powerful as you shrink and gain the softness of a small lioness"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "tawny fur explodes over your chest, spreading rapidly across your front  and back, slightly lighter on the front"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it shrinks even as it becomes rounder, Pleasantly grabbable. It is covered in tan fur, you have a female lion's butt"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you no longer think of yourself as male"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 21;
	now sta entry is 8;
	now per entry is 18;
	now int entry is 14;
	now cha entry is 20;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 3;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]petite[or]girlish[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]leonine[or]feline[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "park_feline";	[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"park_feline"	retaliation rule	--	--	--	--	--	--	--	leoninelust rule	--

this is the leoninelust rule:		[continuous lustful weakening of player]
	if Feline_type is 2:		[lion man only]
		choose row monster from the table of random critters;
		let dam be ( Feline_meow * ( lev entry + ( a random number from 60 to ( 90 + lev entry ) ) ) ) divided by 100;	[damage based on built-up feline urges]
		decrease hp of player by dam;
		increase libido of player by 2;
		say "     [one of]Something inside you makes you long to give in to the sexy lion, draining your resolve[or]Just looking at the sexy lion makes your pussy quiver with need[or]You can't help but imagine yourself underneath this handsome feline, taking his throbbing cock[or]Affected by buried, feline urges, you find it hard to focus on the battle in the face of the strong, male cat[or]Some part of you pushes you to just give in so your aching cunt can get stuffed full of lion meat[at random].  You take [special-style-2][dam][roman type] damage";
		if hp of player <= 0:
			say "!  You mewl and stagger, about to give into those urges as the feline comes in for a final strike.";
			now fightoutcome is 20;
		otherwise if ( ( hp of player * 100 ) / maxhp of player ) < 25:
			say "!  With your will to fight fading fast, you'd best end this soon.";
		otherwise if ( ( hp of player * 100 ) / maxhp of player ) < 50:
			say "!  Your will to keep fighting is waning in the presence of this lion stud.";
		otherwise:
			say "!";


Section 4 - Feline Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

to say feline heat end:
	if feline_status is 2:
		say "Leonard nuzzles the newest member of his pride and has her remain waiting on his bed, promising he'll be back to spend more time with her soon.";
	otherwise if feline_status is 3:
		say "Leonard nuzzles the feline who came in with you, telling her what a fine job she did.  He pats her ass, sending her on her way.";
	otherwise:
		say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
	now Feline_attached is 0;
	now feline_status is 0;		[reset to new kitty]

to say feline heat:	
	if Feline_attached is greater than 0:
		if libido of player is less than humanity of player and feline_status is not 2 and feline_status is not 3:
			increase Feline_meow by 1;
			say "The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate.[line break]It seems no amount of your milk sates the busty feline as she snuggles against you. As she suckles you feel your mind start to wander and you gaze, mouth watering slightly, at the cocks, breasts and moist slits of all the creatures you can see. Soon you know your animal urges will overcome your humanity and you will lose control.";
			increase libido of player by 4;
			decrease humanity of player by 4;
		otherwise:
			say "[feline heat end]";


When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Feline";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400;					[ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 400;					[ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.] 
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "";				[ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is "";		[this is a to say block that causes things to happen when the player enters heat. for example: the GSD sex grows wider.  Delete entire line if you wish nothing to happen.]
	now heat end entry is "[feline heat end]";		[this is the same as heat start only it's for ending the cycle. GSD her sex is reduced back to it's previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[feline heat]";


Section 5 - Endings

when play ends:
	if bodyname of player is "Feline":
		if humanity of player is less than 10:
			if hp of Leonard >= 3:
				say "     As your feline instincts start to come to the fore as your human mind falls to pieces.  You make your way back to the park, drawn by the scent of the other felines like yourself there, feeling a growing need within your loins.  You are drawn back to a tunnel cave at the far side of the park, smelling your leonine lover.  Leonard smiles and happily welcomes you back, telling you how pleased he is to see you as a proper feline playtoy like you were always meant to be.  You can't help but agree with him, knowing him to be your alpha, your pride leader.";
				say "     And speaking of his pride, when he takes you to his bed to mount you again, you find that he has several other cute lioness girls on the bed already stuffed full of his seed.  After a lustful welcome by them all that leaves you bloated with lion seed, you and the other girls stagger out, heading off to hunt for more lovely furnishing and supplies for your lion master's home.  Between trips out, you meet the rest of your pride mates, the handsome lion having gathered or created many lustful felines through his charms.  And when the military comes through the area, he charms several more, tricking the soldiers into thinking his den is a safe place for them and many a lone soldier, separated from their unit ends up there only to become another lioness lover.";
				if cocks of player > 0 and cunts of player is 0 and bodyname of player is "Feline" and player is pure:
					say "     Despite your girlish appearance, you remain male and hold a special place in the pride.  He keeps an eye on you around the other girls, but is more than happy to stuff your tight, little bottom.  After a few years, he takes to having you mount some of the girls while he fucks you.  Over time, you grow and mature, becoming a big, strong male like him.  Soon you're ready to lead a pride of your own, though you're always willing to bend over and offer your ass up to him, remaining his submissive little girly-boy at heart.  Any pride leaders formed from his or yours are taught the same as well, submitting to Leonard as their leader, giving the aristocratic lion considerable power in the parklands.";
			otherwise:
				say "     Your feline instincts start to come to the fore as your human mind falls to pieces.  You make your way back to the park, drawn by the scent of the other felines like yourself there, feeling a growing need within your loins";
				if cunts of player > 0:
					say ".  With your cute, girlish figure and the scent of your growing feline heat, you attract one of the gorgeous male lions around, becoming one of the many lionesses in his pride";
					if "Sterile" is not listed in feats of player:
						say ".  You soon swell with his young, bearing several litters of cubs for him";
					if cocks of player > 0:
						say ".";
						say "     Being equipped with a cock as well, you become the alpha female of the pride.  When others of your pride disobey you, you work out your frustration and deepen familial bonds by fucking them until they submit in a puddle of pleasured fluids.  You end up siring several cubs of your own.";
				otherwise if cocks of player > 0:
					say ".  Coming across one of the small cat girls, you mewl and coax her into approaching you.  Once she's drawn in, you pounce her, revealing that you're not quite a cat [']girl['] like her.  She submits soon enough, mrowling in need for your cock.  As you fuck her, you start to change, growing larger and most masculine.  Soon you're an strong and sexy lion man pounding into what is the first of many feline girls you'll have in your pride.";
				otherwise:
					say ".  You are treated in a friendly manner by the felines of the park.  The lions allow you to visit and play with their prides and service any members who want it.  But lacking any distinct gender of your own, you're never allowed to join a pride of your own.  You have an enjoyable life though, sharing in the company of the sexy lions and lovely lionesses, preferring your life as a free-roaming plaything for them all.";
		otherwise:
			say "     You survive and are taken to the military's holding facility.  Many of the soldiers treat you like a little girl and not like an adult.  This allows you a few privileges you wouldn't otherwise have.  And if you get caught roaming around the base to meet up with another feline there for a little fun, you simply act like you got lost and you're off the hook.";
			say "     After your release, you continue to take advantage of your appearance like this, playing off people's sympathies or making them underestimate you";
			if cocks of player > 0 and cunts of player is 0:	[MALE]
				say ".  You take more and more to cross-dressing, often using it as a means to slip into girls-only areas or luring in a new playmate-to-be before revealing your throbbing cock.";
			otherwise if cocks of player > 0 and cunts of player > 0:	[HERM]
				say ".  You are a lustful little cat girl though, seeking out lovers of all genders and from all forms of felines.  And while lions may be your favorite, nothing says you can't enjoy the others as well.  You eventually move in with a sexy male lion who indulges your girlish playing around and is happy to let you play with the other kitties as long as he can get his fair share of your hot pussy.";
			otherwise if cocks of player is 0:
				say ".  You are a lustful little cat girl though, seeking out as many felines of any species as you can get, as long as they have a hard cock to fill you.  And while lions may be your favorite, nothing says you can't enjoy the others as well.  You eventually move in with a sexy male lion who indulges your girlish playing around and is happy to let you play with the other kitties as long as he can get his fair share of your hot pussy.";
			otherwise:
				say ".  Lacking a gender of your own, but still remaining a lustful little cat girl, you seek out as many feline playmates of any species as you can find.  You seek to pleasure them in any way they desire, pleasing them orally, suckling their breasts, offering up your ass or even using toys to make up for your lack of equipment.  You are an eager playtoy for them, submitting to any desire they may have.  You eventually move in with an eight-foot tall, over-endowed herm lioness who is as happy to stuff your tight ass as to have you do her with a giant strap-on.";


Small Feline and Lion For FS ends here.