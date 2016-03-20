Version 7 of Awesome Tree For FS by Damaged begins here.
[ Version 7.1 - Relocated to Urban Forest area. ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Awesome Tree to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

Section 2 - Monster Insertion

Awesome_sex is a number that varies.
Awesome_boredom is a number that varies.
Awesome_counter is a number that varies.
Awesome_forcesex is a number that varies.
Awesome_noreward is a number that varies.
to say infect:
	infect;

to say Give Awesome:
	if a random number between 1 and 100 > 40:
		increase carried of awesome fruit by 1;
		say "You gain 1x awesome fruit!";
	if a random number between 1 and 100 > 40:
		increase carried of awesomer fruit by 1;
		say "You gain 1x awesomer fruit!";
	if a random number between 1 and 100 > 85:
		increase carried of awesomest fruit by 1;
		say "You gain 1x awesomest fruit!";

to say awesome attack:
	if Awesome_boredom is 4:
		say "The tree seems to vibrate. Whether your fervent attacks or the breeze caused it, a branch falls and thumps you on the arm. You notice some fruit on the branch, and without hesitation you put one in your pocket. As you look at the remaining two, you feel a sudden hunger and eat them uncontrollably. [infect]The world seems to go dark as you finish the second. Waking up, you can't see any trace of the tree, but you feel pretty awesome nonetheless. You pat your bag where you put the fruit, and smile at the thought that you still have some awesomeness in store.";
		now hunger of player is 0;
		now thirst of player is 0;
		if a random number between 1 and 100 > 90:
			if awesome bat is not owned:
				now carried of awesome bat is 1;
				say "You get an awesome piece of wood that could be used as, an awesome bat!";
		say "[Give Awesome][combat abort]";
		now fightoutcome is 20;
	otherwise:
		say "[one of]While you try and attack the tree, you trip over a root that you hadn't seen[or]You stop for a moment, and as you ponder just how awesome the tree really is, suddenly your leg cramps[at random].";
		now monsterhp is 60;
		increase Awesome_boredom by 1;

to say awesome defeat:
	if Awesome_noreward > 3:
		say "You know you hesitated, you could not bring yourself to strike down another of the trees.";
		if awesome bat is owned:
			if awesome bat is weapon object of player:
				try using awesome bat;
			delete awesome bat;
			say "Walking away, you get a sudden urge and dig a hole in some soft ground, pushing your bat in deeply. You can sense, with your most awesome senses, the wood taking root and beginning to grow.";
		say "With good feelings coursing through you at your good deed, a warmth seems to spread from the core of awesome that the tree's fruit seems to have implanted into your being.";
		infect;
		now fightoutcome is 19;
	otherwise:
		say "Somehow you manage to strike the tree in such a way that it collapses, breaking along the fault line in its trunk you had made. You notice the branches are riddled with fruit and you make an effort to gather as many ripe ones as you can.";
		if Awesome_noreward > 2:
			say "You drop to your knees, wailing, unable to live with yourself for how much awesome you have taken from the world. Rising to your feet, you pledge never to destroy another awesome tree so long as you live.";
		otherwise:
			say "With a start, you realize what you have done: you have ended a whole other kind of awesome in the world. Guiltily you walk away from the tree but promise you will find a way to atone for your sin.";
		let x be a random number between 4 and 10;
		repeat with Awesome_counter running from 1 to x:
			say "[Give Awesome]";


to say awesome vict:
	say "You proudly look up at the tree, standing still, and curse under your breath. All of a sudden, a crack sounds in the canopy above you and a single fruit drops down and smashes against the back of your head, knocking you out. The juice seeps down over your skin and almost seems to be absorbed by your body.[infect]";
	say "As you wake up, you look around and wonder how the tree got away. Guess that's just another awesome mystery for this messed up new world.";

to say awesome desc:
	setmongender 0;		[creature is neuter-X]
	now Awesome_boredom is 0;
	choose row monster from the table of random critters;
	if Awesome_forcesex is 0:
		if "Male Preferred" is listed in feats of player:
			now Awesome_sex is 2;
			now sex entry is "Male";
		otherwise if "Female Preferred" is listed in feats of player:
			now Awesome_sex is 1;
			now sex entry is "Female";
		otherwise:
			now Awesome_sex is 0;
			now sex entry is "Both";
	say "You turn a corner and see it. Looking up you realize due to the shape of the branches you are unable to actually see just how tall this monstrous and truly Awesome Tree is. Its branches are long and you see, among the foliage some fruit that look unbelievably tasty, if you could just shake the tree enough to get one to fall...";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Awesome tree"; [Name of your new Monster]
	now attack entry is "[awesome attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[awesome defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[awesome vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[awesome desc]";[ Description of the creature when you encounter it.]
	now face entry is "completely human";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "human-looking";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]human[otherwise]normal human, lovely, healthy-looking[end if]";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it seems to tingle, moving slightly, with a start you realize it's human"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles writhe about under your skin, slowly settling back into a human shape"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "all the hair on your body seems to fall out at once only to have what would be considered normal human hair sprout back out"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "[if awesome_sex is 2]your hips seem to return to human male normal[otherwise]your rear changes, sliding into the perfect wide-hipped female figure[end if]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to feel hot, after a few gasps you realize it looks completely human"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 15;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 60;			[ How many HP has the monster got? ]
	now lev entry is 7;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 3;			[Amount of Damage monster Does when attacking.]
	now area entry is "Forest";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 2;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 2;		[ Width of female sex  infection will try and give you ]
	now libido entry is 0;			[ Amount player Libido will go up if defeated ]
	now loot entry is "awesomest fruit";			[ Loot monster drops, ]
	now lootchance entry is 100;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]perfect[or][if player is female]lovely[otherwise]handsome[end if][at random]";
	now type entry is "human";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Monster Heat

[ +++++ ]

Table of Game Objects(continued)
name	desc	weight	object
"awesomest fruit"	"The most awesomest fruit you ever ate!"	1	awesomest fruit
"awesomer fruit"	"The most awesomer fruit you ever ate, now with a funky pink logo!"	1	awesomer fruit
"awesome fruit"	"The most awesome fruit you ever ate, now with a funky blue logo!"	1	awesome fruit
"awesome bat"	"A heavy branch that you are pretty sure you could use to hit... something."	5	awesome bat

the scent of the awesome fruit is "[awesomefrscent]".

to say awesomefrscent:
	if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	otherwise:
		say "The strange fruit has a strong, manly scent that seems mouthwateringly sweet.";

the scent of the awesomer fruit is "[awesomerfrscent]".

to say awesomerfrscent:
	if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	otherwise:
		say "The strange fruit has a lovely, feminine scent that seems mouthwateringly sweet.";

the scent of the awesomest fruit is "[awesomestfrscent]".

to say awesomestfrscent:
	if "Male Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	otherwise:
		say "The strange fruit has a rich mix of male and female scents that seems mouthwateringly sweet.";

the scent of the awesome bat is "The powerful bat smells faintly of wood and the strange fruits that grew on that giant tree.".

to say awesome bat proc:
	choose row monster from the table of random critters;
	if hp entry is 60:
		if name entry matches the text "Awesome":
			say "[line break]Your bat resounds against the tree, causing the world itself to shake. The unstoppable force and the immovable object meet, however your strength behind the bat is the deciding factor.";
			now monsterhp is 0;
			increase Awesome_noreward by 1;

awesome bat is a armament. It has a weapon "[one of]awesome bat, a double rainbow appears for a brief second,[awesome bat proc][or]bat of awesomeness[or]indestructible length of awesome-wood[at random]".
The weapon damage of awesome bat is 7. the objsize of awesome bat is 4.
The weapon type of awesome bat is "Melee". It is not temporary.



awesomest fruit is a grab object.
awesomest fruit has a usedesc "[awesomest fruit use]".

To say awesomest fruit use:
	let omonster be monster;
	if "Male Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	otherwise:
		repeat with Z running from 1 to number of rows in table of random critters:
			choose row Z from the table of random critters;
			if name entry matches the text "Awesome":
				now monster is z;
				break;
		now sex entry is "Both";
		now breasts entry is 2;
		now breast size entry is 3;
		say "You bite into the awesomest fruit!";
		now Awesome_forcesex is 1;
		infect;
	now monster is omonster;

awesomer fruit is a grab object.
awesomer fruit has a usedesc "[awesomer fruit use]".

To say awesomer fruit use:
	let omonster be monster;
	if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	otherwise:
		repeat with Z running from 1 to number of rows in table of random critters:
			choose row Z from the table of random critters;
			if name entry matches the text "Awesome":
				now monster is z;
				break;
		now sex entry is "Female";
		now breasts entry is 2;
		now breast size entry is 3;
		say "You bite into the awesomer fruit!";
		now Awesome_forcesex is 1;
		infect;
	now monster is omonster;

awesome fruit is a grab object.
awesome fruit has a usedesc "[awesome fruit use]".

To say awesome fruit use:
	let omonster be monster;
	if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	otherwise:
		repeat with Z running from 1 to number of rows in table of random critters:
			choose row Z from the table of random critters;
			if name entry matches the text "Awesome":
				now monster is z;
				break;
		now sex entry is "Male";
		now breasts entry is 0;
		now breast size entry is 0;
		say "You bite into the awesome fruit!";
		now Awesome_forcesex is 1;
		infect;
	now monster is omonster;


[ +++++ ]
[ Edit this to have the correct name as well]
Awesome Tree For FS ends here.
