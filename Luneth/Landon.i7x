Version 1 of Landon by Luneth begins here.
[Version 1 - establish Landon as an NPC - Luneth]

Table of GameCharacterIDs (continued)
object	name
Landon	"Landon"

Landon is a man.
[physical details as of game start]
ScaleValue of Landon is 3. [human sized]
Cocks of Landon is 1.
Cock Length of Landon is 9.
Cock Width of Landon is 6.
Testes of Landon is 2.
Cunts of Landon is 0.
Cunt Length of Landon is 0.
Cunt Width of Landon is 0.
Breasts of Landon is 2.
Breast Size of Landon is 0.
[Basic Interaction states as of game start]
PlayerMet of Landon is false.
PlayerRomanced of Landon is false.
PlayerFriended of Landon is false.
PlayerControlled of Landon is false.
PlayerFucked of Landon is false.
OralVirgin of Landon is true.
Virgin of Landon is true.
AnalVirgin of Landon is true.
PenileVirgin of Landon is true.
SexuallyExperienced of Landon is true.
MainInfection of Landon is "Male Retriever".

to say LandonBJ:
	if player is female:
		if PenileVirgin of Landon is true: [first time facefucking the player]
			now PenileVirgin of Landon is false; [since he isn't a true virgin dick-wise, we just used this to track player v-card]
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
		else:
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
	else: [oh horror - a gay cock vampire!]
		if PenileVirgin of Landon is true: [first time facefucking the player]
			now PenileVirgin of Landon is false; [since he isn't a true virgin dick-wise, we just used this to track player v-card]
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
		else:
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;

Section 1 - Events

Part 1 - Intro

after going to Athletic Street while (Resolution of HypnoGeeks > 0 and Resolution of HypnoGeeks < 98 and HP of Landon is 0): [intro event]
	say "     ";

Part 2 - Random

Section 2 - Talking

Section 3 - Fucking

Section 4 - Quests

Section 5 - Infection

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Male Retriever";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a masculine golden retriever, with large folded ears atop your head and warm brown eyes. Your muzzle has a friendly appearance, giving off the effect that you're constantly smiling.";
	now body entry is "that of a muscular canine, with an adonis like torso with equally thick arms and digitigrade legs that end in large paws. Your hands have also become somewhat paw-like, while they have maintained some dexterity, it is clear they have become very canine, with short but slender digits topped with small claws";
	now skin entry is "a thick, shiny coat of golden fur over your";
	now tail entry is "Your tail is that of a golden retriever, long and covered with soft golden fur. It wags happily constantly without your input unless you make a conscious effort to stop it.";
	now cock entry is "[one of]canine[or]knotted[or]sheathed[at random]";
	now face change entry is "you feel an immense pressure build in your head, only to have it release moments later as your face pushes out into a canine muzzle. You are distracted from your changing head when your ears begin to ring painfully, you realize why when you feel them shifting to the top of your head while the rest of your face changes to match a masculine retriever almost exactly";
	now body change entry is "you stumble and fall to all fours, your legs twisting to a digitigrade configuration with canine paws. The changes continue up your body like a wave, leaving you with a strong muscular figure and paw-like hands, much like that retriever jock";
	now skin change entry is "as a thick coat of golden fur covers your entire body";
	now ass change entry is "masculine muscles overtake it leaving you with a meaty bubble butt that appears to be a cross between a man and a canine. Meanwhile you feel nearby muscles working without your input, looking backwards you find they are wagging your growing retriever tail happily, regardless of your opinion";
	now cock change entry is "your entire manhood is consumed by a growing golden furred sheath, once covered you feel an unusual pressure while it changes into that of a male retriever";
	now str entry is 28;
	now dex entry is 14;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 250;                [ How many HP has the monster got? ]
	now lev entry is 20;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 30;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now cocks entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 10;
	now cock width entry is 5;         [ Size of balls ]
	now breasts entry is 2;            [ Number of nipples. ]
	now breast size entry is 0;        [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 95;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, ]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "muscular";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 6 - Notes&Comments



Landon ends here.
