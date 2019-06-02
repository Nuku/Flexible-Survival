Version 1 of Landon by Luneth begins here.
[Version 1 - establish Landon as an NPC - Luneth]

Table of GameCharacterIDs (continued)
object	name
Landon	"Landon"

Landon is a man.
[physical details as of game start]
ScaleValue of Landon is 3. [human sized]
Cock Count of Landon is 1.
Cock Length of Landon is 9.
Ball Size of Landon is 6.
Ball Count of Landon is 2.
Cunt Count of Landon is 0.
Cunt Depth of Landon is 0.
Cunt Tightness of Landon is 0.
Nipple Count of Landon is 2.
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
	if Player is female:
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

Section 6 - Notes&Comments



Landon ends here.
