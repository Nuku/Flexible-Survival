Version 1 of Human Infections by Wahn begins here.
[Version 1.1 - Tweaked description stuff]

ActivateNewInfections is an action applying to nothing.
understand "activate new infections" as ActivateNewInfections.

carry out ActivateNewInfections:
	if Name of Player is not "DebugTesting":
		say "This command is not available to you.";
	else:
		if NewTypeInfectionActive is false:
			now NewTypeInfectionActive is true;
			say "Debug: New Infections are ACTIVE";
		else:
			now NewTypeInfectionActive is false;
			say "Debug: New Infections are INACTIVE";

Section 1 - Creature Insertion [Human]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human";
	add "Human" to infections of HumanList;
	add "Human" to infections of NatureList;
	add "Human" to infections of BipedalList;
	now Name entry is "Human";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The human slaps you.[or]You get hit by a balled fist.[at random]";
	now defeated entry is " ";
	now victory entry is " ";
	now desc entry is "     This isn't supposed to be an actual infection, just a stand-in - please report how you saw this.";
	now face entry is "charmingly human";
	now body entry is "charmingly human";
	now skin entry is "smooth";
	now tail entry is "";
	now cock entry is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 25;                [ How many HP has the monster got? ]
	now lev entry is 1;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 4;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 25;            [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "human";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 2 - Creature Insertion [herm human]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human";
	add "Herm Human" to infections of HumanList;
	add "Herm Human" to infections of NatureList;
	add "Herm Human" to infections of HermList;
	add "Herm Human" to infections of BipedalList;
	now Name entry is "Herm Human";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The hermaphrodite human slaps you.[or]You get hit by a balled fist.[at random]";
	now defeated entry is " ";
	now victory entry is " ";
	now desc entry is "     This isn't supposed to be an actual infection, just a stand-in - please report how you saw this.";
	now face entry is "completely human";  [ Face description, format as "Your face is (your text)."]
	now body entry is "human-looking";     [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "human";             [ format as "Your body is covered in (your text) skin."]
	now tail entry is "";                  [ write a whole Sentence or leave blank. ]
	now cock entry is "human";             [ format as "You have a 'size' (your text) cock.]
	now face change entry is "it seems to tingle, moving slightly, with a start you realize it's human"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles writhe about under your skin, slowly settling back into a human shape"; [  format as "Your body feels funny as (your text)." ]
	now skin change entry is "all the hair on your body seems to fall out at once only to have what would be considered normal human hair sprout back out"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your hips seem to return to a normal human's figure"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to feel hot, then after a few gasps you realize it looks completely human"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both";              [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 25;                   [ How many HP has the monster got? ]
	now lev entry is 1;                   [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;                  [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";          [ Case sensitive]
	now Cock Count entry is 1;                 [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3;            [ Size of balls ]
	now Nipple Count entry is 2;               [ Number of nipples. ]
	now Breast Size entry is 0;           [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;                 [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 25;               [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";                 [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;            [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]average[or]normal[or]unchanged[at random]";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Herm Human Infection"	"Infection"	""	Herm Human Infection rule	1000	false

This is the Herm Human Infection rule:
	if Player has a body of "Herm Human":
		trigger ending "Herm Human Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10: [succumbed]
			say "     Succumbing to the inner voice that tells you to return to your master, you make your way back to the dark tunnels under the Trevor Labs. Walking through the shadowy hallways filled with tentacled aberrations without fear, you soon find the thought eater again, joining his growing throng of obedient slaves.";
			if Player is female and "Sterile" is not listed in feats of Player: [has a vag, not sterile]
				say "     Serving your master in all his desires, your pussy getting bathed daily with his potent seed, it doesn't take long until your belly starts to swell with his child. Being part of his harem, he just keeps coming back to fuck you, enjoying your body through the days of your pregnancy, then immediately gets to work on knocking you up again after you give birth to his half-human offspring. You're deliriously happy to serve him, over time bearing a whole brood of hybrids in the dark and shadowy underground that is now your home.";
			else if Player is mpreg_ok and "Sterile" is not listed in feats of Player: [mpreg-able, not sterile]
				say "     Devoted to please your master, you tell him about your changed physiology. The thought eater is immensely satisfied in having something so extraordinary as a slave, immediately ordering you to bend over and get ready for him to fuck you. With his potent seed being shot into your womb several times a day, it's only a question of time until your belly starts to swell with his child. Being a special jewel in his harem, he just keeps coming back to fuck you, enjoying your body through the days of your pregnancy, then immediately gets to work on knocking you up again after you give birth to his half-human offspring. You're deliriously happy to serve him, over time bearing a whole brood of hybrids in the dark and shadowy underground that is now your home.";
			else if Player is female: [sterile women]
				say "     With you being sterile and the thought eater preferring his harem of pregnant slaves, you're only seldom taken into his chamber, though he sometimes has you perform with others, male, female and herm, for his amusement. Mostly, you're just spending your days working, preparing food, sorting through loot and supplies gatherers bring from outside your dark underground home.";
			else if Player is male: [non mpreg men]
				say "     As a man, you're added to your master's guards, protecting the entrances to his underground home and escorting the groups he sends out to gather supplies and new slaves. Sometimes, you're also brought in to the inner chambers, with your master telling you to mount selected females as he tries to breed nicer-looking servants.";
			else: [neuters]
				say "     Being completely sexless, the thought eater has little interest in you yourself, so you just end up being used as a worker, preparing food, sorting through loot and supplies gatherers bring from outside your dark underground home.";
		else: [sane]
			say "     When the military finally moves in, you're brought into a medical holding facility. There a doctor checks you out, then gives you a shot to neutralize the remaining nanites in your system before you're released. Since you were only changed into a herm human form by the nanites, you have a lot less problems rejoining society than other, more bestial, infectees. That doesn't mean that your time in the dark hallways of the Trevor Labs sublevels didn't leave any traces though. Sometimes at night, you see the face of the thought eater in front of your mental eye, his tentacles spread and reaching for you. The words 'You will be mine, sooner or later' echo in your mind as you awake, bathed in sweat after the recurring nightmare.";

Human Infections ends here.
