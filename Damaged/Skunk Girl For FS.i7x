Version 7 of Skunk Girl For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]


"Adds a Skunk Girl to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

skunkready is a number that varies;

to say skunkg attack:
	say "The female skunk turns, spraying thick, oily musk everywhere!";
	say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
	infect;
	increase skunkready by 1;

to say skunkg bodyshift:
	if cunts of player > 1:
		say "Your body becomes even more feminine, waist slimming, hips widening leaving you with curves that would make anyone, male or female, drool in lust.";
	otherwise:
		say "Your body becomes more feminine, curves building that make it impossible to define you as anything but female despite what equipment you might have.";

to say skunkg defeat:
	if a random number from 1 to 100 is greater than 40:
		say "The skunk girl looks up at you, smiling even as her body seems to turn to liquid, 'I may be gone, but you can still carry His kittens...' she mutters cryptically as she collapses, disolving completely.";
	otherwise:
		say "The skunk girl turns to run from you and you relax thinking the fight over, suddenly you realise your error as one last gob of oily musk hits you.";
		say "Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery textured fur, even as you feel a tingle at your groin.";
		infect;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Skunk Girl"; [Name of your new Monster]
	now attack entry is "[one of]Runs up, bringing her feet forward in a flying kick.[or]Leaps in and bites at your arm.[or]Claws at you woth her slender paws.[at random]";
	now defeated entry is "[skunkg defeat]";
	now victory entry is  "[skunkg attack]"; 
	now desc entry is "A very female anthropomorphic skunk with hints of animal, its curves and breasts leave you wanting, without any reservations, to fuck it senseless.";[ Description of the creature when you encounter it.]
	now face entry is "have a large-muzzled female skunk's head.";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "curvaceous and screams 'female and needs IT', men want to fuck you women want to be you... and fuck you.";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[otherwise]black and white fured[end if]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip.  A pair of white stripes travel up its length, completing the effect.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human shaped";[ Cock Description, format as you have a "size" (your text) cock]
	now face change entry is "black fur moves over your head like a hood, leaving a muzzle that[apostrophe]s white on the bottom with a head that[apostrophe]s all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "[skunkg bodyshift]"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a sea of black moves over your back and a sea of white over your chest, while a matching stripe forms down the middle of the black."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "the black fur shifts over your ass, squeezing it until it's tight and sexy."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it seems un-needed."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 17;
	now sta entry is 14;                    
	now per entry is 16;
	now int entry is 13;
	now cha entry is 19;
	now sex entry is "Female";     [ Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"]
	now hp entry is 28;            [ How many HP has the monster got? ]
	now lev entry is 3;            [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 6;            [Amount of Damage monster Does when attacking.]
	now area entry is "Mall";    [ Current options are "Outside" and "Mall"  Case sensitive]
	now cocks entry is 0;            [ How many cocks will the infection try and cause if sex is "Male" or "Both"]
	now cock length entry is 0;        [ Length infection will make cock grow to if cocks]
	now cock width entry is 0;        [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;            [ Number of Breasts infection will give you. ]
	now breast size entry is 3;        [Size of breasts infection will try to attain ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 14;        [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 5;        [ Width of female sex  infection will try and give you ]
	now libido entry is 10;            [ Amount player Libido will go up if defeated ]
	now loot entry is "Skunk Goo";            [ Loot monster drops, ]
	now lootchance entry is 100;        [ Chance of loot dropping 0-100 ]
[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Skunk Girl";	[ This should be exactly the same as your monster name in the main table]
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
[ +++++ ]

[ Edit this to have the correct Name as wall]
Skunk Girl For FS ends here.