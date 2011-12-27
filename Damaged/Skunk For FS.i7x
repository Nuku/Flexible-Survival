Version 8 of Skunk For FS by Damaged begins here.
[ Version 8 - Endings added by Stripes ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]


"Adds male and female Skunks to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

skunkready is a number that varies;
Skunk_type is a number that varies; [if it is 0 it means to pick a new creature type. if it is a 1 it is a skunk girl, if its a 2 its a skunk beast...]

to say skunk vict:
	if skunkready > 2:
		if cunt length of player > 5:
			say "The large skunk snuffles at the air for something, deciding you're what he's looking for it seems.  A huge, heavy paw knocks you down onto your hands and knees, and before you can get back up, the heavy weight pins you down. The thick shaft parts your new black-furred slit, and pounds you wildly!";
			say "The wild beast uses you for his own pleasure, as your body betrays you, a low groan rising in your throat.  You find yourself pushing back, panting, but the thick, messy cum that floods your body comes just before you can release, leaving you almost desperate and begging for more.[impregchance]";
			infect;
			increase skunkready by 1;
		otherwise:
			say "The massive skunk sprays thick, oily musk everywhere!";
			say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
			infect;
			increase skunkready by 1;
	otherwise:
		say "The massive skunk sprays thick, oily musk everywhere!";
		say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
		infect;
		increase skunkready by 1;

to say skunk defeat:
	if skunkready > 3: [been sprayed or mated a lot]
		if cunt length of player > 5: [ready to take him]
			say "With one last feat of strength, the beast grabs you, lifting itself onto your rear, thrusting madly. You whimper as his final rutting brings you to your limit. As your world turns fuzzy, gripped in a rushing orgasm you feel the beasts heated seed spray your inner most parts one last time.[impregchance]"; [rawr final mating]
			increase skunkready by 1;
			infect;
		otherwise:
			say "The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";
	otherwise:
		say "The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";

to say skunk bodyshift:
	if cunts of player > 1:
		say "Your body becomes even more feminine, waist slimming, hips widening leaving you with curves that would make anyone, male or female, drool in lust";
	otherwise:
		say "Your body becomes more feminine, curves building that make it impossible to define you as anything but female despite what equipment you might have";

to say skunkg vict:
	say "The female skunk turns, spraying thick, oily musk everywhere!";
	say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
	infect;
	increase skunkready by 1;

to say skunkg defeat:
	if a random number from 1 to 100 is greater than 2:
		say "The skunk girl looks up at you, smiling even as her body seems to turn to liquid, 'I may be gone, but you can still carry His kittens...' she mutters cryptically as she collapses, disolving completely.";
	otherwise:
		say "The skunk girl turns to run from you and you relax thinking the fight over, suddenly you realise your error as one last gob of oily musk hits you.";
		say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
		infect;
		
to say skunk_defeat:
	if Skunk_type is 1:
		say "[skunkg defeat]";
	otherwise:
		say "[skunk defeat]";
	now Skunk_type is 0;
	
to say skunk_vict:
	if Skunk_type is 1:
		say "[skunkg vict]";
	otherwise:
		say "[skunk vict]";
	now Skunk_type is 0;	

to say skunk_attack:
	if Skunk_type is 1:
		say "[one of]Runs up, bringing her feet forward in a flying kick.[or]Leaps in and bites at your arm.[or]Claws at you woth her slender paws.[at random]";
	otherwise:
		say "[one of]Leaps, batting you aside.[or]Leaps in and bites at your arm.[or]Claws at you viciously.[at random]";

		
		
	
		
to say skunk_desc:
	choose row monster from the table of random critters;	
	if a random number from 1 to 10 > 3: [female skunk]
		say "A very female anthropomorphic skunk with hints of animal, its curves and beasts leave you wanting, without any reservations, to fuck it senseless.";
		now Skunk_type is 1;
		now hp entry is 28;            [- How many HP has the monster got? -]
		now monsterhp is 28;
		now wdam entry is 6;            [-Amount of Damage monster Does when attacking.-]
	otherwise: [male skunk]
		say "This Skunk Beast would easily pass for a normal animal, if it weren't for two things.  One, the creature is the size of a small horse, and two, it's sporting the biggest erection you've ever seen as it waddles around on all fours.  Which is a bit less than comforting, with the way it looks into your eyes.";
		now Skunk_type is 2;
		now hp entry is 64;            [- How many HP has the monster got? -]
		now monsterhp is 64;
		now wdam entry is 10;            [-Amount of Damage monster Does when attacking.-]
	
		
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Skunk"; [Name of your new Monster]
	now attack entry is "[skunk_attack]";
	now defeated entry is "[skunk_defeat]"; 
	now victory entry is  "[skunk_vict]"; 
	now desc entry is "[skunk_desc]";[ Description of the creature when you encounter it.]
	now face entry is "have a large-muzzled female skunk's head";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "curvaceous and screams 'female and needs IT', men want to fuck you women want to be you... and fuck you";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[otherwise]black and white furred[end if]";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip.  A pair of white stripes travel up its length, completing the effect.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human shaped";[- Cock Description, format as you have a "size" (your text) cock-]
	now face change entry is "black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "[skunk bodyshift]"; [body change text. format as "Your body feels funny as (your text)."]
	now skin change entry is "a sea of black moves over your back and a sea of white over your chest, while a matching stripe forms down the middle of the black"; [- skin change text. format as "Your skin feels funny as (your text)." -]
	now ass change entry is "the black fur shifts over your ass, squeezing it until it's tight and sexy"; [- ass/tail change text. format as "Your ass feels funny as (your text)." -]
	now cock change entry is "it seems unneeded"; [- cock change text. format as "Your cock feels funny as (your text)." -]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 14;                    
	now per entry is 14;
	now int entry is 8;
	now cha entry is 19;
	now sex entry is "Female";     [- Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"-]
	now hp entry is 64;            [- How many HP has the monster got? -]
	now lev entry is 5;            [- Level of the Monster, you get this much hp if you win, or this much hp halved if you loose -]
	now wdam entry is 10;            [-Amount of Damage monster Does when attacking.-]
	now area entry is "Park";    [- Current options are "Outside" and "Mall"  Case sensitive-]
	now cocks entry is 0;            [- How many cocks will the infection try and cause if sex is "Male" or "Both"-]
	now cock length entry is 0;        [- Length infection will make cock grow to if cocks-]
	now cock width entry is 0;        [- Size of balls apparently ;) sneaky Nuku-]
	now breasts entry is 2;            [- Number of Breasts infection will give you. -]
	now breast size entry is 3;        [-Size of breasts infection will try to attain -]
	now male breast size entry is 0;    [- Breast size for if Sex="Male", usually zero. -]
	now cunts entry is 1;            [- if sex = "Female or both", indicates the number of female sexes infection will grant you.-]
	now cunt length entry is 14;        [- Length of female sex  infection will attempt to give you. -]
	now cunt width entry is 5;        [- Width of female sex  infection will try and give you -]
	now libido entry is 10;            [- Amount player Libido will go up if defeated -]
	now loot entry is "Skunk Goo";            [- Loot monster drops, -]
	now lootchance entry is 70;        [- Chance of loot dropping 0-100 -]


Section 3 - Skunk heat and Skunk goo

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Skunk";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5;					[ This is the number of days a heat "cycle" lasts, usualy 7 ]
	now heat duration entry is 2;					[ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.] 
	now trigger text entry is "Your need seems to swell suddenly, an ache between your legs causing you to fall down to all fours at its intensity. As you stand there, propped, rear in the air, drooling, only one thought consumes your mind, find a skunk and fuck it until you can't move.";  [ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[skunk heat start]";		[this is a to say block that cuasees things to happen when the player enters heat. for example the GSD sex grows wider.  Delete entire line if you wish nothing to happen.]
	now heat end entry is "[skunk heat end]";		[this is the same as heat start only it"s for ending the cycle. GSSD her sex is reduced back to it"s previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[skunk in heat]";			[this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat riaises libido value by 5 every 3 hours. ]
	
to say skunk heat start:
	increase cunt width of player by 3;
	increase cunt length of player by 2;
	
to say skunk heat end:
	decrease cunt width of player by 3;
	decrease cunt length of player by 2;

to say skunk in heat:
	say "[one of]You ache constantly for a male, preferably skunk, but as you think about a large rod pushing into you you realise that any would do.[or]You need to fuck, again and again and again and again.[or]You need to be filled by a skunks breeding tool.[or]Thinking becomes harder as the need to mate pushes everything else from your mind.[or]You NEED to fill your cunt NOW![or] 'Skunk kittens...', your mind tells you, 'Skunk kittens would be fun to have.'[at random]";
	increase skunkready by 1;
	increase libido of player by 10;


Table of Game Objects(continued)
name	desc	weight	object
"Skunk Goo"	"Black skunk goo on a stick"	1	Skunk Goo

Skunk Goo is a grab object.

Skunk Goo is infectious. The strain of skunk goo is "Skunk".



Section 4 - Endings

[For endings, see the 'Skunk Pet' file by Sarokcat.]

[ Edit this to have the correct Name as wall]
Skunk For FS ends here.