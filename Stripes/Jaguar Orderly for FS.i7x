Version 1 of Jaguar Orderly for FS by Stripes begins here.
[Version 1]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Jaguar Orderly creature to Flexible Survivals Wandering Monsters table with impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Jaguar" } to infections of furry;
	add { "Jaguar" } to infections of guy;

to say losetojaguar:
	say "     You are battered by the brutish, feline orderly and left in a heap to recover.";
	now hp of player is (( hp of player ) times 2 ) divided by 3;


to say beatthejaguar:
	say "     You manage to knock the muscled jaguar out, at least for the moment.";


to say jaguardesc:
	choose row monster from the table of random critters;
	if sabtoothed is 1:		[permanent upgrade]
		say "[line break]     Before you is a large, muscled figure in the light blue-green uniform of a hospital orderly.  But no man, this is a large jaguar creature.  But unlike the ones you've seen earlier at the hospital, this one is bigger and has large, sabretoothed fangs protruding from its upper jaw.  The devolved jaguarman growls and reaches to grab you with its powerful paws.";
		now hp entry is 95;
		now monsterhp is 95;
		now lev entry is 9;
		now wdam entry is 12;
	otherwise:
		say "[line break]     Before you is a large, muscled figure in the light blue-green uniform of a hospital orderly.  But no man, this is a large jaguar creature.  He looks you over angrily and reaches to grab you, obviously feeling you are somewhere you don't belong.";
		now hp entry is 80;
		now monsterhp is 80;
	if triclamped is 1:		[permanent upgrade]
		say "     Getting a closer look at the creature as it charges towards you, you can see traces of toughened scales at the top of its neck and there are three small horns on its head, one at the end of its muzzle and two over its brow.";
		increase hp entry by 15;
		increase monsterhp by 15;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Jaguar"; [Name of your new Monster]
   now attack entry is "[one of]The jaguar orderly strikes you firmly across the head![or]The orderly grabs his strong arms around you and squeezes you until you're able to slip free![or]The angry jaguar bites down on your arm with his powerful jaws![or]The vicious creature slashes at you with its sharp claws, leaving bloody gashes![or]Charges at you, slamming his shoulder into your chest and knocking you back several steps![or]The feline orderly grabs your arm and twists it behind your back in an attempt to painfully restrain you![or]The beast growls and headbutts you so hard that you're dizzy for a moment![or]The powerful jungle cat punches you hard in the chest, making you wheeze for breath![or]He clubs your sides repeatedly with his first![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthejaguar]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetojaguar]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[jaguardesc]"; [ Description of the creature when you encounter it.]
   now face entry is "feline head with dark spots covering your"; [ Face description, format as the text "You have a (your text) face."]
   now body entry is "stocky, but strong.  You can feel the powerful muscles under your skin.  Your feline paws clench into hard fists when angry."; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "golden-yellow fur with black rosettes all over your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "Behind you lashes a spotted, feline tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "deep, angry red"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "remolds itself into a blunt, feline muzzle with powerful jaws and sharp teeth."; [ face change text. format as "Your face feels funny as (your text)" ]
   now body change entry is "it tightens with strong muscles.  Your body becomes short and stocky, but powerful.  Your hands are now paw-like fists."; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it is covered by golden fur decorated with black rosettes."; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "you grow a long, slender tail.  As it lashes behind you angrily, fur coats it, a golden yellow and covered in black spots."; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "turns a deep red in colour"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 16;
   now dex entry is 18;
   now sta entry is 16;                    
   now per entry is 12;
   now int entry is 10;
   now cha entry is 10;
   now sex entry is "nochange";     [ Invalid answer intentionally getting no change in gender]
   now hp entry is 80;            [ How many HP has the monster got? ]
   now lev entry is 8;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 10;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 8;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 4;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 8;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 3;        [ Width of female sex  infection will try and give you ]
   now libido entry is 33;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Jaguar":
		if humanity of player is less than 10:
			say "     Succumbed as jaguar orderly.";
		otherwise:
			say "     Survive as jaguar orderly.";



[ Edit this to have the correct Name as well]
Jaguar Orderly for FS ends here.