Version 7 of Small Feline and Lion For FS by Damaged begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Small Feline and Lion to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

Feline_type is a number that varies;
Feline_meow is a number that varies;
Feline_attached is a number that varies;


to say cat att:
	say "[one of]The Small Felinoid launches an attack, claws and teeth flying![or]The diminutive lioness attacks you, tripping you down and raking at your groin with her razor sharp claws.[at random]";

to say lion att:
	say "[one of]The big cat-man roars and lashes out with talon like retractable claws![or]In a show of viscousness the lion man leaps at your neck, clamping down his jaw. Only by poking at his eyes do you force him to let go.[at random]";

to say cat def:
	say "You deliver a killing blow to the Small Felinoid!";

to say lion def:
	say "The big cat tries to rake you with his monstrous claws one more time but you jump back nimbly even as you see it slump down, completely motionless.";

to say cat vict:
	increase Feline_meow by 1;
	say "The small curvy feline approaches and looks up at you imploringly. Against your better judgment, you reach down and pick her up. She leans in and begins to eagerly suckle at your chest.";
	if breasts of player > 0:
		say "The small cat's teeth chew at your own thick black teats and she begins to drink eagerly. You were not aware you were able to lactate, but she proves it in debilitating waves of delight.";
	otherwise:
		say "Tawny fur explodes over your chest, spreading rapidly across your front  and back, slightly lighter on the front. Pleasure builds in your front as two breasts swell into existence, nipples firm and visible through the fur.";
	infect;
	if libido of player < 10:
		say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
	otherwise:
		say "The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate.[line break]It seems no amount of your milk sates the busty feline as she snuggles against you.";
		now Feline_attached is 1;
		
to say lion vict:
	say "The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your new womb, which swells outwards with the volume of it. [line break]As you recover from the pleasure of it, the lion man snuggles, caressing your chest with his broad paws and rocking against you a few moments longer before he rises and releases you to your feet, wobbly though they may be.[impregchance][impregchance]";
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
		
to say feline vict:
	if Feline_type is 1:
		say "[cat vict]";
	otherwise:
		say "[lion vict]";
		
to say feline desc:
	choose row monster from the table of random critters;
	if Feline_meow < 5:
		say "A small cute girl, about four feet in height, covered in fur with round lion ears and a bright smile. She is quite developed for her size, sporting B cups and wide hips and seems to be eying you rather provocatively.";
		now Feline_type is 1;
		now hp entry is 20;	
		now monsterhp is 20;
		now wdam entry is 7;
		now lev entry is 3;
		now libido entry is 25;	
	otherwise:
		if cunts of player > 0:
			say "A large, strongly muscled and powerful lion/human hybrid. He has a dark brown mane and slightly lighter fur everywhere else with round ears and sharp looking teeth. He is entirely naked, allowing you to see his thickly furred sheath and the jutting pink lion shaft. It is oozing with precum as he walks and seeks out a mate.";
			now Feline_type is 2;
			now hp entry is 65;	
			now monsterhp is 65;
			now wdam entry is 35;
			now lev entry is 14;
			now libido entry is 5;	
		otherwise:
			say "A small cute girl, about four feet in height, covered in fur with round lion ears and a bright smile. She is quite developed for her size, sporting B cups and wide hips and seems to be eying you rather provocatively.";
			now Feline_type is 1;
			now hp entry is 20;	
			now monsterhp is 20;
			now wdam entry is 7;
			now lev entry is 3;
			now libido entry is 25;		



Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

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
	now tail entry is "You have a long tufted  lion's tail.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "leonine";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your head shrinks and, as you gasp, you notice your voice has lightened, gaining you the face of a small female feline. For some reason, the scents of the groins of all around you become enticing and you can feel arousal building"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "urge to giggle becomes powerful as you shrink and gain the softness of a small lioness"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "tawny fur explodes over your chest, spreading rapidly across your front  and back, slightly lighter on the front"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it shrinks even as it becomes rounder, Pleasantly grabbable. It is covered in tan fur, you have a female lion's butt"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you no longer think of yourself as male"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 21;
	now sta entry is 8;					
	now per entry is 20;
	now int entry is 14;
	now cha entry is 25;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 65;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 35;			[Amount of Damage monster Does when attacking.]
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
	now libido entry is 25;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]


Section 3 - Monster Heat

[ IMPORTANT READ ME  - Thiss section is compleately optional. if you do NOT want to go through the trouble of adding a particular heat text of events to your creature, just delete between the two marker comments, for clarity i have included the German shepard entry. +++++]	
[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

to say feline heat end:
	say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
	now Feline_attached is 0;

to say feline heat:	
	if Feline_attached is greater than 0:
		if libido of player is less than humanity of player:
			increase Feline_meow by 1;
			say "The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate.[line break]It seems no amount of your milk sates the busty feline as she snuggles against you. As she suckles you feel your mind start to wander and you gaze, mouth watering slightly, at the cocks, breasts and moist slits of all the creatures you can see. Soon you know your animal urges will overcome your humanity and you will lose control.";
			increase libido of player by 4;
			decrease humanity of player by 4;
		otherwise:
			say "[feline heat end]";
			
			
When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Feline";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400;					[ This is the number of days a heat 'cycle' lasts, usualy 7 ]
	now heat duration entry is 400;					[ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.] 
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "";				[ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is "";		[this is a to say block that cuasees things to happen when the player enters heat. for example the GSD sex grows wider.  Delete entire line if you wish nothing to happen.]
	now heat end entry is "[feline heat end]";		[this is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to it's previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[feline heat]";


	[ +++++ ]	
[ Edit this to have the correct Name as wall]
Small Feline and Lion For FS ends here.