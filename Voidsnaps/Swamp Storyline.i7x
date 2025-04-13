Swamp Storyline by Voidsnaps begins here.

a postimport rule:
	if Faustian Bargain is Resolved:
		now Libido of Riker is 11;

Section 1 - Storyline Introduction

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Kidnapped Lizards"	Kidnapped Lizards	"[EventConditions_Kidnapped Lizards2]"	Lizard Village Entrance	2500	1	60


to say EventConditions_Kidnapped Lizards2:
	if "Lizard Village Welcome" is listed in Traits of Kosk:
		if level of Player > 5:
			now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Kidnapped Lizards	"Kidnapped Lizards"

Kidnapped Lizards is a situation.
ResolveFunction of Kidnapped Lizards is "[ResolveEvent Kidnapped Lizards]".
Sarea of Kidnapped Lizards is "Lizard Village Entrance".

when play begins:
	add Kidnapped Lizards to BadSpots of MaleList;
	add Kidnapped Lizards to BadSpots of FurryList;

to say ResolveEvent Kidnapped Lizards:
	say "     As you tread the familiar path to the Lizard Village, you can't help but notice that the usually static presence of Kosk has disappeared. What's more, Kosk appears to have left in a hurry. A fishing pole stuck haphazardly into mud plus a faintly smoking fire are all that remains of his vigil. You quicken your pace, worried about what his absence might mean for the small community, but thankfully, you find him just inside the city limits, arms crossed as he listens to a panicked-looking lizard man. 'You don't understand. Something grabbed Laz! Something fast! Dahlia almost went to state championships in high school, and she couldn't catch up before it disappeared with him!' The panicked man gestures toward the water, waving his arms. 'We need to send out a search party! What if it tries to drown him?!'";
	say "     'Look, man.' Sighing, Kosk grabs the space between his eyes with his forefinger and thumb. 'It's the sixth disappearance this month. Didn't I tell you not to get in the water that far away from the village anymore? Since when is skinny dipping worth-' Noticing your presence, Kosk holds up a finger in your direction. 'I can't protect you guys if you wander off, so just go home and stay there for a while. I'll see what I can do, but you need to listen from now on, okay?' Still affecting his usual tough-guy demeanor, Kosk looks worried as a dripping-wet female lizard puts her arm around the distraught man and leads him away. 'I don't suppose you can pretend you didn't see that?' Kosk puts a hand behind his head and looks away with a click of his tongue. 'Don't like airing our dirty laundry to the only outsider we've let in.'";
	say "     Do you want to press the issue?";
	say "     [link]Y[as]y[end link]Ask whether you can help.";
	say "     [link]N[as]n[end link]Shrug and let Kosk handle it.";
	if Player consents:
		Linebreak;
		say "Shaking your head, you tell Kosk that he shouldn't worry about involving you. If he doesn't mind, you'd like to help him out. Since you don't have a village to guard, maybe you could check things out in his place? You're pretty handy in a fight, after all! 'I suppose if you've survived so long, you can't be exaggerating. The city was a hellhole back when we fled here. If the dam hadn't busted and washed out half the buildings, who knows how many monsters would have followed us?' Sighing, Kosk walks with you back to his post, busying himself with checking his fishing line and tending to the dying fire. 'Fine. I can't seem to get the others to realize how dangerous it is, but there's this nice little swimming hole a little bit east of here, surrounded by thorn bushes. Half a dozen of our people have gone missing around there. We searched a few times but couldn't find any of them. The goblins would have just taken their stuff, maybe fucked them a couple of times, and nothing else poses a threat when you have claws like these.' Holding up a wicked set of fingers tipped with sharp reptile claws, Kosk mimics a slash in midair. 'Maybe you'll see something we can't.' After a few minutes spent asking for exact directions to the swimming hole, you thank Kosk for trusting you, shouldering your pack and looking out over the water. You'll be more wary of the still surface from now on.";
		TraitGain "Kidnapping Quest" for Kosk;
		connect Suspicious Swimming Hole;
	else:
		Linebreak;
		say "     Shrugging, you tell Kosk that you don't feel like butting into things that aren't your business. If he doesn't want to tell you what's going on, you won't pry. He seems grateful that you don't press the matter, settling into everyday chit-chat about his latest recipes and grilling you on your adventures, clearly wondering if you've found any other food-related things for him. Before you know it, you've walked with him back to his post, promising to let him know if you stumble upon any more supplies as he checks his fishing line, silently letting you know you've finished talking.";
	now Kidnapped Lizards is Resolved;

Section 2 - Searching for Clues

a postimport rule:
	if "Kidnapping Quest" is listed in Traits of Kosk:
		connect Suspicious Swimming Hole;


to connect Suspicious Swimming Hole:
	change the east exit of Lizard Village Entrance to Suspicious Swimming Hole;
	change the west exit of Suspicious Swimming Hole to Lizard Village Entrance;


Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Still Water"	Still Water	"[EventConditions_Still Water]"	Suspicious Swimming Hole	2500	8	100

to say EventConditions_Still Water:
	if "Kidnapping Quest" is listed in Traits of Kosk:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Still Water	"Still Water"

Still Water is a situation.
ResolveFunction of Still Water is "[ResolveEvent Still Water]".
Sarea of Still Water is "Nowhere".

to say ResolveEvent Still Water:
	say "     As you part the dense foliage around an idyllic clearing, you instantly recognize the area that Kosk described- A relatively clean patch of water emptied of the muck and aquatic plants that infest most of the water around the village. The popular swimming spot's still faintly murky but doesn't give off the same sense of danger as the rest of the swamp. Of course, you're not here to go swimming, but you still take a moment to cool your feet, sitting on the water's edge as you look around for clues.";
	if an intelligence check passes 12:
		Linebreak;
		say "     Looking around, you inspect the bushes with a keen eye, noticing that, other than a well-trod path you entered through, the thick brush is unbroken. Knowing that, you now realize that the only way someone could have attacked in this remote place is- From beneath the water! Cursing your stupidity, you stand up as quickly as you can, watching as a shadow appears below the water and streaks toward where your feet were a moment ago, clarifying into a pair of large, slit pupiled eyes and a brightly colored, wide-mouthed visage.";
		say "     Readying yourself, you prepare to face the culprit, stepping back from the water's edge, hoping that they'll follow you into more advantageous terrain. ";
		say "[AmphibianQuestFirstFight]";
	else if a perception check passes 12:
		Linebreak;
		say "     Looking around, you fail to notice anything out of the ordinary. It's almost as if an assailant appeared out of nowhere. They couldn't have come from beneath the water, could they? You look between your legs, only to catch a faint shine below the water's surface. Coming closer, it nearly reaches your legs before you can pull them free! Thank goodness you noticed in time!";
		say "     Readying yourself, you prepare to face the culprit, stepping back from the water's edge. ";
		say "[AmphibianQuestFirstFight]";
	else if a dexterity check passes 12:
		Linebreak;
		say "     Kicking your feet idly, you stare off into space and sigh. Why did you think you could help Kosk investigate what happened to his fellow villagers? You've yet to notice anything and can't see below the water's surface! Any clues would have disappeared by now, taken away by the gentle flow swirling around your feet. Suddenly, you recoil as something wraps around your ankle, barely managing to wrench yourself free and jumping to your feet, readying yourself to meet whatever touched you with its slimy extremity.";
		say "     Readying yourself, you prepare to face the culprit, stepping back from the water's edge to give yourself room to dodge any further attacks. ";
		say "[AmphibianQuestFirstFight]";
	else if a strength check passes 12:
		Linebreak;
		say "     Kicking your feet and idly playing with a nearby stick, you aimlessly look around, trying- and failing- to glean anything from the overgrown brush. Minutes pass, and you start to wonder how you'll explain to Kosk that you found nothing when suddenly something slimy wraps around your ankle, tugging you toward the water. Quickly, you dig your hands into the dirt nearby, heaving yourself to stop your quick slide, then grip the offending appendage, breaking its hold on you with sheer brute strength and sending it flying back into the water.";
		say "     Readying yourself, you prepare to face the culprit, stepping back from the water's edge hoping that they'll come onto land where you can use your full strength. ";
		say "[AmphibianQuestFirstFight]";
	else: [failed all checks]
		Linebreak;
		say "[AmphibianCaptureScene]";
	now Still Water is Resolved;

to say AmphibianCaptureScene:
	say "     Failing to find anything, you resolve to enjoy a small break before returning to Kosk. Unfortunately for you, there appears to be something in the water! Before you can get away, something grabs your ankle, tugging you down into a muddy slide directly into the now stirred-up pond! Given very little time to react, you can only watch helplessly as the water's edge swallows you up. Once under water, a shadowy attacker punches you in the stomach, taking your breath away and blackening your vision. You black out almost immediately, left to the mercy of the mysterious kidnapper.";
	TraitGain "Hostile" for Ignacio;
	say "[AmphibianKidnapping]";

to say AmphibianQuestFirstFight:
	say "Thankfully, the creature follows your lead, swinging a tattered net and watching you warily as it steps out of the water. Brightly colored patches coat the frog's body, screaming 'danger- poison!' to anyone with a brain, and a bare chest glistens with water as he stares you down, eyes focused on you. He seems surprised, looking from your face to your pack. 'You're not one of those scaly fucks. Why are you here? Are they outsourcing their dirty work now?' He spits his words, white-knuckling his weapon and lunging forward before you can answer."; [no starting spaces.]
	challenge "Poison Dart Frog";
	if fightoutcome >= 10 and fightoutcome <= 19: [win]
		LineBreak;
		say "     As the poison dart frog falls to his knees, he stares at you defiantly. Spitting on the ground next to him, he tries- and fails- to stand up, legs shaking with the effort. 'Go ahead, then. Take me. I know you and those scaly fucks are holding them hostage. They'll send someone else when I don't report back.' Blinking in confusion, you wonder what led to this situation. Isn't the frog in front of you the kidnapper? Why would he spout off like you're the bad guy? Relaxing your stance to be more diplomatic, you ask him why he attacked you in the first place. Wasn't he trying to take you, just like he took the lizardmen?";
		say "     'Stop lying. Dozens of us have gone missing. I saw those fuckin' unmistakable scales. You took my little brother.' Desperation shines in the brightly colored frog's eyes, and you doubt he's lying- no one's that good at acting. 'Bring out the fucker with dark spots, and I'll beat it out of him.' He's practically foaming at the mouth, trying and failing to bring himself to his feet. Thinking back, you run through the lizards you've seen around the village in your mind's eye. None of them have the pattern the frog describes. You tell him so, shrugging your shoulders and wondering aloud if he might have mistaken his attacker. 'You- What?' Wavering in his convictions, the frog looks conflicted. 'You mean he was telling the truth? I thought he was trying for sympathy. Fuck.' Sagging forward, the frog radiates defeat. 'Where are you, Matty?' Shaking his head, the frog thinks for a moment. 'Fine. We'll give back the prisoner. Just let me go, and I'll bring-' Wincing, the frog pauses to rub the soreness from his leg, giving you a chance to decide on a course of action.";
		say "     While it looks like the frog isn't lying, you have to make a choice. [bold type]Will you drag him to the lizard village, or let him go and hope he keeps his word?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Let him go and trust him.";
		say "     [link]N[as]n[end link] - Drag him back to Kosk.";
		if Player consents:
			Linebreak;
			say "     Interrupting the frog before he can jump back into the water, you tell him that he'd better bring back the villager. If not, you're going to be searching for him. He won't have a second chance- next time, you'll make sure he makes good on his promise. 'Yeah, yeah. You don't have to twist my arm.' Scoffing at your words, the frog finally manages to stand, turning his back to you. 'Maybe you're not so bad. After all this is over, we can have a drink or something. I'll make it up to you.' His voice wavers, and you get the feeling that the frog's a little embarassed by what he's saying. There's no doubt in your mind. He's not the kidnapper.";
			TraitGain "Trusted" for Ignacio;
		else:
			Linebreak;
			say "     Shaking your head, you stop the frog before he can climb back into the water. You won't let him off this easily- he'll have to explain what he means to Kosk before you'll trust him! After all, he appears to know more than he's letting on. He doesn't want more people to disappear, does he? 'Fuck. There's no time!' Pulling weakly against your grip, the frog attempts to escape, aided by the thin coat of slime across his skin. 'Shit. Don't blame me for what happens next.' Growling his words, the frog suddenly reverses his movements, pressing close and ramming his tongue down your throat, mashing his lips against yours hard enough that you worry he'll split your lower lip.";
			say "     You attempt to push the frog away, but a sudden tingling numbness where his lips meet yours spreads quickly across your body. Your limbs have stopped working! The only part of you that seems immune to the poisonous smooch is your chest, slowly rising and falling with even breaths. Frozen with a surprised expression, you can only watch as the frog breaks the hasty kiss, wiping his lips across his arm and staring regretfully at you. 'Not the best first impression, but I can't afford to be locked up. It might be too late for Matty if you don't let me out. Maybe we can have a beer after this is all over.' Diving into the water, he leaves you to lapse into unconsciousness, unable to feel your limbs.";
			TraitGain "Broken Trust" for Ignacio;
	else if fightoutcome >= 20 and fightoutcome <= 29: [lose]
		say "     Staggering backward, you realize that the frog has managed to herd you toward the water. All strength has drained from your limbs after the fight, and you can barely raise your arms to block the frog's next attack, reeling as the amphibian uses that dextrous tongue to wrap around your neck. Within seconds, you see black around the edge of your vision, and before you pass out, you hear a muffled voice above you. 'Wait for me, Matty. This asshole will tell me where you are.'";
		TraitGain "Hostile" for Ignacio;
	else: [flee]
		say "     Unwilling to fight, you race to report back to Kosk, running in the opposite direction without delay. Sadly, that leaves your back open to attack, and before you can make it to the safety of the path back to the village, you feel something wrap around your legs, sending you crashing to the ground. You hit your head on a rock on the way down, and as you fade into unconsciousnss, you hear the frog murmuring something unintelligible from above.";
		TraitGain "Hostile" for Ignacio;


Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Poison Dart Frog"	"[PrepCombat_PoisonDartFrog]"

to say PrepCombat_PoisonDartFrog:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Poison Dart Frog";
	add "Poison Dart Frog" to infections of AmphibianList;
	add "Poison Dart Frog" to infections of NatureList;
	add "Poison Dart Frog" to infections of MaleList;
	add "Poison Dart Frog" to infections of InternalCockList;
	add "Poison Dart Frog" to infections of BipedalList;
	now Name entry is "Poison Dart Frog";
	now enemy title entry is "Poison Dart Frog Kidnapper";
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Tossing his bundled net at you like a whip, the frog attempts to drag you toward the water with a grip around your extremity, only to click his tongue when you break free, cursing under his breath.[or] Lashing out with his tongue, the frog aims for your head, attempting to knock you out with a solid strike. You see stars for a moment from the impact, then ready yourself to counterattack.[at random]";
	now defeated entry is "<Fight Only for Now.>";
	now victory entry is "<Fight Only for Now.>";
	now desc entry is "<Fight Only for Now.>";
	now face entry is "<Fight Only for Now.>";
	now body entry is "<Fight Only for Now.>";
	now skin entry is "<Fight Only for Now.>";
	now tail entry is "<Fight Only for Now.>";
	now cock entry is "<Fight Only for Now.>";
	now face change entry is "<Fight Only for Now.>";
	now body change entry is "<Fight Only for Now.>";
	now skin change entry is "<Fight Only for Now.>";
	now ass change entry is "<Fight Only for Now.>";
	now cock change entry is "<Fight Only for Now.>";
	now str entry is 15;
	now dex entry is 22;
	now sta entry is 22;
	now per entry is 20;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 8; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "poison dart frog milk";
	now CumItem entry is "";
	now TrophyFunction entry is "";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is ""; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Going to the Amphibian Village

[Taken by Ignacio:]

to say AmphibianKidnapping:
	say "     Blinking away sleep, you sit up, holding your head as it throbs dully. You don't recognize your surroundings, but they appear to be a storage room behind a shop. Various boxes overflowing with balls for different sports surround you, and a scratchy blanket protects you from the cold concrete below. How nice of your captor to consider your comfort. As you rub the slight swelling on your temple, you hear a low, angry voice from beyond the bars. 'Serves you right, fucker. Just a taste of what you put Matty through.' Staring down at you with pure hatred in his eyes, the frog from the swimming hole clenches his jaw. 'Your little buddy played dumb and got the girls on his side, but I'm not letting that happen this time. Tell me where he is.' You doubt you can get out of this place without a repeat of your capture, so you only have one choice- Talking to your jailer. Perhaps you can convince him that you had nothing to do with the kidnappings? At the very least, you might get more of the big picture. As you try to think of what to say, you hear the frog mumble under his breath. 'Don't worry, Matty. Big brother Ignacio will find you.'";
	move Player to Froggy Prison;
	move Ignacio to Froggy Prison;
	AddNavPoint Flooded Mezzanine;

to connect Flooded Mezzanine:
	change the east exit of Flooded Mall to Flooded Mezzanine;
	change the west exit of Flooded Mezzanine to Flooded Mall;

Instead of going east from Froggy Prison while "Hostile" is listed in Traits of Ignacio:
	say "     Shaking the bars, you test their strength, wondering what's going on. You get the feeling you could plow through them if you wanted to, but you're currently being watched! Maybe you should talk to your captor?";


[Going there willingly:]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Moist Diplomacy"	Moist Diplomacy	"[EventConditions_Moist Diplomacy]"	Lizard Village Entrance	2500	8	40

to say EventConditions_Moist Diplomacy:
	if "Kidnapping Quest" is listed in Traits of Kosk and "Trusted" is listed in Traits of Ignacio:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Moist Diplomacy	"Moist Diplomacy"

Moist Diplomacy is a situation.
ResolveFunction of Moist Diplomacy is "[ResolveEvent Moist Diplomacy]".
Sarea of Moist Diplomacy is "Nowhere".

to say ResolveEvent Moist Diplomacy:
	say "     Eager to report what you found at the swimming hole, you meet Kosk at his usual spot, interrupting him in the process of poking and prodding a pit that billows smoke. The intense smell of good cooking almost makes you forget your goal, but you swallow a mouthful of saliva and let him know you've found the culprit- though you let them go. Explaining that it seemed like the frog mistook the real kidnapper for a member of the lizard village, you tell him about the poison dart frog and his promise to return. You're a little embarrassed that you couldn't bring him yourself, but you hope your explanation of his sneak attack absolves you of blame. After all, who expects a drugging out of nowhere? 'Spots? Did you say dark spots?' Blinking in confusion, Kosk leans on the stick he's been using to poke the embers. 'I thought I saw something in the trees the other day, and that sounds familiar. Thought I was imagining things...' Sighing, Kosk shakes his head. 'I guess it makes sense, but I wish I could interrogate him.'";
	say "     'No, thanks.' A familiar voice accompanied by the soft plop of water droplets cascading on mud rings out. The poison dart frog from earlier has returned, though he appears alone. 'I'm not interested in wasting time answering more stupid questions.' Clicking his tongue, the poison dart frog waves a webbed hand at Kosk's immediate defensive posture. 'Calm down. I made a mistake. You didn't take Matty.' Asking the poison dart frog where the prisoner he promised to return is, you try to tamp down memories of his tongue down your throat, keeping your distance. You don't sense any malice from him, but you're not exactly a fan of being knocked out by poison. If he wants to earn your trust, he can prove he doesn't want to harm you.";
	WaitLineBreak;
	say "     'He's... Fine.' Shifting uncomfortably, the poison dart frog almost seems to blush. 'I tried to get him to come with me, but there were... problems.' Spreading his hands at your expression, he rolls his eyes. 'I didn't hurt the fucker, but the girls just... Fuck me. Go see for yourself.' Taking a small pad of paper in a baggy out of his Speedo, the frog jots something down, handing a slip to you. Scrawled in awful handwriting, the words 'Tell them Ignacio sent you,' sit above a crudely drawn map. It takes you a moment, but you eventually recognize the swamp's layout. In an area you haven't explored yet, a large building sits, surrounded by... water lines...? Does that mean it's flooded? Before you can ask, you look up to see Kosk staring at a patch of bubbles. 'Looks like you've made a new friend.' Kosk seems to have relaxed a bit, shaking his head. 'Bit rough around the edges though. Could I ask you another favor? [bold type]Can you go check this place out? I don't feel comfortable leaving anyone else on guard duty.[roman type]'";
	connect Flooded Mezzanine;
	AddNavPoint Flooded Mezzanine;
	move Ignacio to Amphibian Chieftain's Room;
	Now Moist Diplomacy is resolved;


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Friends In Muddy Places"	Friends In Muddy Places	"[EventConditions_Friends In Muddy Places]"	Flooded Mezzanine	2500	8	40

to say EventConditions_Friends In Muddy Places:
	if "Kidnapping Quest" is listed in Traits of Kosk and "Trusted" is listed in Traits of Ignacio:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Friends In Muddy Places	"Friends In Muddy Places"

Friends In Muddy Places is a situation.
ResolveFunction of Friends In Muddy Places is "[ResolveEvent Friends In Muddy Places]".
Sarea of Friends In Muddy Places is "Nowhere".

to say ResolveEvent Friends In Muddy Places:
	say "     'Stop right there.' A gruff female voice stops you in your tracks just as you find the place that Ignacio outlined, and you find yourself facing the tip of a spear. Flared gills and a light grey expanse of skin wait at the other end of the stick, with an indignant expression plastered on an Amazonian axolotl's face. 'Where do you think you're going? You DON'T belong here. If you don't want an extra asshole, you'd better get the fuck out of here.' Stammering out an apology, you slowly reach into your pack, producing the slip of paper the poison dart frog gave you. The axolotl snatches it warily and sighs while reading it. 'Yeah... That's Iggy's handwriting. Are you here for the cute lizard boy? Pity. I wanted a taste, too. Go ahead on in.' Bewildered by the axolotl's words, you follow her directions, holding your pack above your head as you wade through mid-chest level muck, hoping your feet don't find a hole in the floor. Thankfully, you make it through a series of narrow passages, ending up in a large atrium with clear water to wash away the muck. The unmistakable sounds of splashing and laughter float on the humid air, and you're surprised to find amphibians of all species and sizes playing in the pond.";
	now Friends In Muddy Places is Resolved;

Section 4 - Antagonist Introduction

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Culprit Found"	Culprit Found	"[EventConditions_Culprit Found]"	Rundown Cabin	2500	8	100

to say EventConditions_Culprit Found:
	if "Kidnapping Quest" is listed in Traits of Kosk and "Matteo Quest" is listed in Traits of Ignacio:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Culprit Found	"Culprit Found"

Culprit Found is a situation.
ResolveFunction of Culprit Found is "[ResolveEvent Culprit Found]".
Sarea of Culprit Found is "Nowhere".

to say ResolveEvent Culprit Found:
	say "     As you find the place Ignacio pointed out, you feel something strange, like someone's bearing down on your neck. Shivering, you stop, looking around, only to hear a twig snapping nearby and a sudden yelp. Acting quickly, you attempt to mask your presence, slipping behind a conveniently placed bush and peering through its leaves. 'Well, well, well. What've we got here?' A deep, chuckling voice draws your eyes toward its owner. Coiling around something, a snake man circles his prey, grinning in a broad, unsettlingly toothy way that contrasts with a cowboy hat affixed atop his smooth head. 'Seems I picked a nice spot. The past few weeks have been fruitful.' Visibly tightening his hold, the naga reveals his prey as a face approaches his. It's Ignacio!";
	say "     'Where... Is he?' Struggling to breathe, Ignacio struggles futilely against his bonds, staring defiantly into the face of his captor. 'My... Brother.' He can't seem to get more than one word out with all the pressure on his chest, but he's as prickly as ever, pursuing his single-minded goal. 'Ah, yes. You must be referring to my latest product.' Tipping his hat and caressing Ignacio's throat almost fondly, the snake inspects his face. 'It hasn't been long since I started sampling my wares, but that boy has been irresistible. The way he begs for it.' Flicking his tongue as he speaks, the naga anaconda shudders. 'Sublime.'";
	WaitLineBreak;
	say "     'Take me. Let Matty go.' Ignacio pleads, gritting his teeth and kicking futilely at the coils around his bound legs. Their positioning on his body has changed, revealing his speedo-clad smooth crotch and almost nothing else. A slight crackling noise worries you, but the naga's control is enough to prevent him from breaking bones, earning nothing but a wince. 'Oh, no. That's not how this works, darlin'.' Hooking one claw beneath Ignacio's Speedo, the naga smirks, inching it down until the frog's slit lies bare. Shamelessly, he trails his fingers over it, stopping just as the tip inches inside to play with Ignacio's manhood. 'Riker will take good care of you. By the time I finish, you'll be an obedient little slut, for the highest bidder. Plenty of rich assholes willing to pay a pretty penny for some exotic ass.' Punctuating his words with a lick to swipe away the drool forming at the corners of his mouth, the naga shamelessly curls his fingers, provoking a struggle from the frog as he penetrates him somewhere you can't see. 'The best thing about you mutants- I can be as rough as I want, and you'll still be tight and ready for your new master.'";
	say "     Ignacio notices you in the bushes just as you move to stop him from being molested, shaking his head and giving you a pointed look that sends you back to your hiding spot. 'Fuck you. When I get out of this, I'll rip your dick off and shove it down your throat.' Suddenly able to draw enough breath to talk, he takes the opportunity to insult the naga, spitting in his face. 'You'll regret that. I s'pose I'll have to beat all that spunk out of you.' Tightening his grip on his Ignacio's limp form, the naga squeezes Ignacio until he slumps forward, then slithers to the cabin door, dragging him into the darkness beyond.";
	Now Culprit Found is resolved;
	now libido of Riker is 8;
	TraitGain "Captured" for Ignacio;

An everyturn rule:
	if libido of Riker > 0 and libido of Riker < 9:
		decrease libido of Riker by 1;
		say "You're suddenly reminded of Ignacio's plight. Maybe you should return to the cabin and help him before it's too late!";
	else if libido of Riker is 0:
		say "     You're not sure how you know, but suddenly you're certain that you've lost any hope of rescuing the frog brothers from Riker. If only you'd [bold type]gone back to that cabin soon enough...[roman type][line break]";
		now libido of Riker is 10;
	
	

Section 5 - Riker's Offer

[July 2024.]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Faustian Bargain"	Faustian Bargain	"[EventConditions_Faustian Bargain]"	Rundown Cabin	2500	8	100

to say EventConditions_Faustian Bargain:
	if "Matteo Quest" is listed in Traits of Ignacio and "Captured" is listed in Traits of Ignacio and libido of Riker > 0 and libido of Riker is not 10:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Faustian Bargain	"Faustian Bargain"

Faustian Bargain is a situation.
ResolveFunction of Faustian Bargain is "[ResolveEvent Faustian Bargain]".
Sarea of Faustian Bargain is "Nowhere".

to say ResolveEvent Faustian Bargain:
	say "     Returning to the strange cabin in the swamps where you last saw Ignacio, you gather the courage to confront his kidnapper, approaching the door through which he disappeared. It's now or never, and you don't know if you'll get a chance to exit this place once you go in.";
	say "     [bold type]Will you risk it? Or come back later? Keep in mind, Ignacio may be long gone if you wait too long...[roman type]";
	say "     [link]Y[as]y[end link] Go in! You need to save Ignacio!";
	say "     [link]N[as]n[end link] You need to prepare more! Who knows what's waiting for you!";
	if Player consents:
		say "     Crossing the unkempt tangle of weeds in front of the cabin, you try your best to remain stealthy, traveling around its perimeter and searching for a way to enter that doesn't involve the ominous front door. After all, it would be stupid of you to walk right in! Sadly, not even a single window graces the dilapidated cabin's surface. Faced with no choice, you step up to the door, looking nervously toward either side and resisting the absurd urge to knock.";
		say "     [bold type] Should you attempt to knock down the door? Or try the lock?";
		say "     [link]Y[as]y[end link] Kick it down!";
		say "     [link]N[as]n[end link] Try your luck with the lock.";
		if Player consents:
			Linebreak;
			if a strength check passes 15:
				say "    Summoning all your strength, you attempt to break down the door, splintering it into several pieces and falling to the floor past it. You make quite a bit of noise in the process, but as you dust yourself off, you notice that the cabin's empty. Rather, outside of a few snake trails in the dust, it appears that no one's lived there in years. Bewildered, you look around the dingy interior with a confused expression. Wasn't this where Riker dragged Ignacio off?";
				if an intelligence check passes 14:
					say "     Searching around the cramped, mostly space, you notice something peculiar about the inner walls of the cabin. Wasn't it at least double the size when you circled the outside? Walking back outside, you confirm with some quick math based on heel-to-toe steps, then compare it to the inner space. Sure enough, it appears that the inside of the cabin is much smaller than the outside! With that revelation in mind, you explore the wooden wall with careful fingers. You feel a bit silly, as though you're a cartoon detective, but when your fingers find a suspicious button underneath, you shake your head at the secret door that swings inward. Why would someone build a place like this? It's in the middle of nowhere, but before, it would have just been a cabin in the middle of the city. Wouldn't that have been more conspicuous?";
				else:
					say "     Searching around the cramped space, you realize there's nothing there. With no clues as to your froggy friend's whereabouts, you sit down in a huff, leaning against the only piece of furniture in the place, a conspicuously placed bookshelf. Kicking yourself for not coming sooner, you worry about what might have happned to Ignacio and his little brother, absentmindedly tapping the back of your head against the wood until you misjudge the distance, falling backward. You bump your head on something that clicks, and suddenly your view flips upside down as the bookshelf retreats behind you, revealing a secret room!";
		else:
			say "     Trying the doorhandle, you're surprised to find that it's unlocked! Pushing the door inward with an ominous, incredibly loud screech from its ancient hinges, you step inside, ready for a fight, but contrary to your expectations, the place appears to be deserted, with nothing but a few snake trails in the dust where this 'Riker' fellow slithered about. Bewildered, you look around the dingy interior with a confused expression. Wasn't this where Riker dragged Ignacio off?";
			if an intelligence check passes 14:
				say "     Searching around the cramped, mostly space, you notice something peculiar about the inner walls of the cabin. Wasn't it at least double the size when you circled the outside? Walking back outside, you confirm with some quick math based on heel-to-toe steps, then compare it to the inner space. Sure enough, it appears that the inside of the cabin is much smaller than the outside! With that revelation in mind, you explore the wooden wall with careful fingers. You feel a bit silly, as though you're a cartoon detective, but when your fingers find a suspicious button underneath, you shake your head at the secret door that swings inward. Why would someone build a place like this? It's in the middle of nowhere, but before, it would have just been a cabin in the middle of the city. Wouldn't that have been more conspicuous?";
			else:
				say "     Searching around the cramped space, you realize there's nothing there. With no clues as to your froggy friend's whereabouts, you sit down in a huff, leaning against the only piece of furniture in the place, a conspicuously placed bookshelf. Kicking yourself for not coming sooner, you worry about what might have happned to Ignacio and his little brother, absentmindedly tapping the back of your head against the wood until you misjudge the distance, falling backward. You bump your head on something that clicks, and suddenly your view flips upside down as the bookshelf retreats behind you, revealing a secret room!";
		say "     Suddenly remembering Ignacio's plight, you rush through the door, looking around in a huff. You might be able to fight off that naga from before, but you worry that he might have friends. Thankfully, it doesn't take long to find the frog man- he's chained up on the floor in front of you with a piece of duct tape affixed to his mouth. A spreader bar forces his legs apart, and he has an angry, tapered amphibian erection throbbing between them, dribbling pitifully to the floor. When he sees you, he struggles, his eyes widening and strangled noises rumbling in his throat. Strangely, he appears to be looking behind you...";
		say "     'Another one, huh?' A vibrating chuckle hisses by your ear, and sudden pressure hobbles your legs as strong hands turn you to face Ignacio's kidnapper. 'Seems my luck is lookin' up. You planning to steal something from me?' A rakishly tilted cowboy hat obscures a cruel smile, and a body built of pure muscle warns against escape even as coils tighten around you.";
		say "     [bold type]You've been caught! With only a few moments before you're coiled into unconsciousness, you have a choice to make![roman type][line break]";
		let Riker_Initial_Choices be a list of text;
		add "Fight back! Get free and fight!" to Riker_Initial_Choices;
		add "Try to bargain with the snake." to Riker_Initial_Choices;
		let Riker_Initial_Choice be what the player chooses from Riker_Initial_Choices;
		if Riker_Initial_Choice is:
			-- "Try to bargain with the snake.":
				if a charisma check passes 15:
					say "     Swallowing down the instinctive fear that the coils bring as they work your way up your hips, you raise your arms to prove that you aren't a threat. Thinking quickly, you mention you're here for the frog before you, nodding toward Ignacio. If Riker lets you take him away, you'll forget this happened. Of course, you'll compensate him for his trouble. 'Oh? And what do you have that I would want?' An amused voice sounds behind you, bringing warm air across your ear. 'It seems you're not in any position to offer me anything. Perhaps you'd like to prove me wrong?' You get the sense that you're being toyed with but still seize the opportunity.";
					say "     [bold type]What should you offer the naga?[roman type][line break]";
					let Riker_Bargain_Choices be a list of text;
					add "Perhaps he's as perverse as your first impression led you to believe? Offer him sex!" to Riker_Bargain_Choices;
					add "Offer Riker money. Freecred has to be good for something!" to Riker_Bargain_Choices;
					add "Offer to take Ignacio's place. It's the least you can do." to Riker_Bargain_Choices;
					let Riker_Bargain_Choice be what the player chooses from Riker_Bargain_Choices;
					if Riker_Bargain_Choice is:
						-- "Perhaps he's as perverse as your first impression led you to believe? Offer him sex!":
							say "[RikerAssistantIntroduction]";
						-- "Offer Riker money. Freecred has to be good for something!":
							say "     Swallowing with difficulty as the snake's coils compress your stomach, you offer him a significant amount of freecreds- not only the amount you have on you but future funds you'll send him whenever he likes. He only has to agree to let you and his other captives go, and you'll pay him as much as he can imagine! Chuckling vibrates through the tight hold on your body, and a flicking tongue tickles your ear. 'Strike two. Your first was sneaking in here. You want to try again?' Trailing a hand along your chest in an oddly gentle, yet threatening manner, the naga scrapes sharp claws across sensitive flesh, at odds with how tightly his coils have entrapped your lower half. 'My clientele could buy and sell you a thousand times over, with real money, at that. None of that make-believe shit you mutants use.' Shit. You've chosen the wrong thing to entice the naga, and by the sound of it, you only have one more chance. You shudder to think what will happen if you don't manage to talk your way out of this.";
							say "     [bold type]Offer something else?[roman type][line break]";
							say "     [link]Y[as]y[end link] Offer to take Ignacio's place. It's the least you can do.";
							say "     [link]N[as]n[end link] Perhaps he's as perverse as your first impression led you to believe? Offer him sex!";
							if Player consents: [bad end]
								say "     Deflating as you realize there's no other way- and partially because of the intense pressure working up your body- you take a deep breath and steel yourself. Summoning what courage you can, you offer to take Ignacio's place. After all, it's your fault the naga caught him in the first place, so it's only fair that you take responsibility. 'Interesting. What's to stop me from taking you? It doesn't seem like you're going anywhere without my say-so.' Tightening his grip, the snake nearly breaks your ribs as he speaks, taking your breath away with sheer strength. 'Three new slaves ready for market, or one. Such a predicament.' Taunting you with his words, Riker seems to have dollar signs in his eyes. Gasping for air and grasping at straws, you wrack your brain before settling on something that must set you apart from the rest of Riker's 'products.' On the verge of blacking out from lack of oxygen, you squeak a hurried explanation of your unique ability to change form. Other than mutants you've seen changed forcibly in the street, you're one of the few you've ever met that can change form and remain yourself. Wouldn't that mean you could maintain any training you receive while changing your form to match your new 'master's' ever-changing proclivities? You're a prize worth a small fortune at LEAST.";
								Linebreak;
								if a charisma check passes 12: [saved Ignacio and Matteo through self sacrifice.]
									say "     Loosening his grip with a skeptical expression, Riker seems to weigh the risk that you're lying against potential profit. A toothy grin spreads across his face as he judges your words to be truthful, and the naga sets you down, though a clawed hand remains on your shoulder, close enough to your neck that you don't dare step out of line. 'Well. Isn't that a surprise?' He coos as he tilts your face upward, seemingly inspecting 'the goods.' Ignacio's eyes widen across the room as the snake leads you to him. It seems he realized what you're about to do, and as the naga deftly chains you next to him, he growls around the duct tape covering his mouth, impotently shaking his chains. 'Don't. I'll fucking kill you. As soon as I get back, I'm going-' Grunting in pain, he doubles over as the naga's fist contacts his diaphragm, knocking the air out of his lungs.";
									say "     'You'll do what? Make me pay? Do somethin' heroic? What'll happen to your poor, sweet little brother if you do somethin' that colossally stupid?' Caressing your head as though you were a favored pet, Riker flicks his finger against a nearby wall, opening a panel to reveal a treefrog with glazed eyes and skin covered with what could only be layers upon layers of cum. 'He's already well-trained. You should thank your friend here for volunteering- otherwise, this slut would be on the next flight to the far east. Some wealthy CEO wanted a new secretary to tie up beneath his desk. A pity. He's so WILLING.' Waving his hand dismissively at Ignacio, Riker turns his attention back to you, clearly unbothered and unthreatened by the freed frog. 'Take him and go home, kid. And don't even think about returning. I'll be long gone before your posse grabs their torches and pitchforks.' Sparing you one last glance but finally caving to his desire to save his battered, overfucked sibling, Ignacio looks away, limping out with the groggy frog slumped over his back. You doubt you'll ever see him again, but you're glad for the opportunity to keep your word- in a way, you DID help him save his brother.";
									say "[PlayerSavedFrogBrothersBadEnd]";
								else: [Sold into slavery alongside the frog brothers.]
									say "     Laughing in your face, Riker tilts his cowboy hat rakishly backward. 'I'll take your word for that, partner. I've got a good thing goin' here, and I'm not giving it up for some pie-in-the-sky shit. I'll take you, those two, and whoever I want.' Licking scaly lips, the snake runs a pointed tongue over rows and rows of fangs. 'Try to fight back. Breaking the spirited ones is always the best.' You could have handled this better, but you don't have time to contemplate exactly where things went wrong. Out of air and options, you pass out before the domineering naga can hear your breathless reply, going limp in scaly coils.";
									say "[IgnacioMatteoPlayerRikerBadEnd]";
							else:
								say "[RikerAssistantIntroduction]"; [possible to work with Riker]
						-- "Offer to take Ignacio's place. It's the least you can do.":
							say "     Deflating as you realize there's no other way- and partially because of the intense pressure working up your body- you take a deep breath and steel yourself. Summoning what courage you can, you offer to take Ignacio's place. After all, it's your fault the naga caught him in the first place, so it's only fair that you take responsibility. 'Interesting. What's to stop me from taking you? It doesn't seem like you're going anywhere without my say-so.' Tightening his grip, the snake nearly breaks your ribs as he speaks, taking your breath away with sheer strength. 'Three new slaves ready for market, or one. Such a predicament.' Taunting you with his words, Riker seems to have dollar signs in his eyes. Gasping for air and grasping at straws, you wrack your brain before settling on something that must set you apart from the rest of Riker's 'products.' On the verge of blacking out from lack of oxygen, you squeak a hurried explanation of your unique ability to change form. Other than mutants you've seen changed forcibly in the street, you're one of the few you've ever met that can change form and remain yourself. Wouldn't that mean you could maintain any training you receive while changing your form to match your new 'master's' ever-changing proclivities? You're a prize worth a small fortune at LEAST.";
							if a charisma check passes 12: [saved Ignacio and Matteo through self sacrifice.]
								say "     Loosening his grip with a skeptical expression, Riker seems to weigh the risk that you're lying against potential profit. A toothy grin spreads across his face as he judges your words to be truthful, and the naga sets you down, though a clawed hand remains on your shoulder, close enough to your neck that you don't dare step out of line. 'Well. Isn't that a surprise?' He coos as he tilts your face upward, seemingly inspecting 'the goods.' Ignacio's eyes widen across the room as the snake leads you to him. It seems he realized what you're about to do, and as the naga deftly chains you next to him, he growls around the duct tape covering his mouth, impotently shaking his chains. 'Don't. I'll fucking kill you. As soon as I get back, I'm going-' Grunting in pain, he doubles over as the naga's fist contacts his diaphragm, knocking the air out of his lungs.";
								say "     'You'll do what? Make me pay? Do somethin' heroic? What'll happen to your poor, sweet little brother if you do somethin' that colossally stupid?' Caressing your head as though you were a favored pet, Riker flicks his finger against a nearby wall, opening a panel to reveal a treefrog with glazed eyes and skin covered with what could only be layers upon layers of cum. 'He's already well-trained. You should thank your friend here for volunteering- otherwise, this slut would be on the next flight to the far east. Some wealthy CEO wanted a new secretary to tie up beneath his desk. A pity. He's so WILLING.' Waving his hand dismissively at Ignacio, Riker turns his attention back to you, clearly unbothered and unthreatened by the freed frog. 'Take him and go home, kid. And don't even think about returning. I'll be long gone before your posse grabs their torches and pitchforks.' Sparing you one last glance but finally caving to his desire to save his battered, overfucked sibling, Ignacio looks away, limping out with the groggy frog slumped over his back. You doubt you'll ever see him again, but you're glad for the opportunity to keep your word- in a way, you DID help him save his brother.";
								say "[PlayerSavedFrogBrothersBadEnd]";
							else: [Sold into slavery alongside the frog brothers.]
								say "     Laughing in your face, Riker tilts his cowboy hat rakishly backward. 'I'll take your word for that, partner. I've got a good thing goin' here, and I'm not giving it up for some pie-in-the-sky shit. I'll take you, those two, and whoever I want.' Licking scaly lips, the snake runs a pointed tongue over rows and rows of fangs. 'Try to fight back. Breaking the spirited ones is always the best.' You could have handled this better, but you don't have time to contemplate exactly where things went wrong. Out of air and options, you pass out before the domineering naga can hear your breathless reply, going limp in scaly coils.";
								say "[IgnacioMatteoPlayerRikerBadEnd]";
				else:
					say "     Grasping at straws, you attempt to bargain with the snake. However, you stumble over your words and fail to convince yourself that you have anything worth trading for your freedom, let alone the mocking reptile. Before you can try again, the naga's grip tightens to completion, cracking your ribs before black borders encroach on your vision, overtaking it as you pass out.";
					say "[IgnacioMatteoPlayerRikerBadEnd]";
			-- "Fight back! Get free and fight!":
				say "     Deciding to at least go out with a bang, you struggle against the naga's grip, grabbing at smooth scales with varying success. Spreading your limbs and summoning your strength, you stretch the bands of pure muscle encircling you, feeling sweat pour down your forehead as you fight for your life. The effort gives you just enough breathing room to regain your strength, and you give one final push, hoping it's enough.";
				if a strength check passes 18:
					say "     One final titanic shove throws the naga's coils off you. Stumbling as you create some distance between you and the surprised snake, you wince at the bruised ribs that twinge from your effort. Grabbing your weapon, you place yourself between Ignacio and Riker, shouting that he'll have to try harder. If he wants you, he'll have to beat you until you can't resist. 'Oh ho. This one's got some spunk.' Holding spread hands at his sides, Riker fixes a predator's stare on you. 'I'll enjoy beating it out of you.' Without further ado, he rushes toward you in a silent slither, claws outstretched.";
					challenge "Naga Trafficker";
					if fightoutcome < 20: [player won]
						say "[PlayerBeatRiker]";
						TraitGain "Riker Beaten" for Riker;
					else if fightoutcome > 19 and fightoutcome < 30: [Player Lost]
						say "     Falling to your knees as Riker strikes the final blow, you can only stare defiantly up at him while he slowly coils around you. Chuckling at your predicament, he takes his time wrapping you in his coils, a hungry expression twisting his face and drool at the corner of his mouth. 'Nothing better than when they fight back.' His country accent slips, revealing something more foreign that you can't quite place. 'It makes breaking them all the sweeter.' There's no mercy in his movements, and weakened as you are, you can only weakly struggle as he cuts off your air supply, wringing the consciousness out of you.";
						say "[IgnacioMatteoPlayerRikerBadEnd]";
					else if fightoutcome > 30: [Fled]
						say "     Sparing Ignacio one last glance, you turn and run, feeling guilty for your choice, but realizing that you're no match for the naga.[bold type] You get the feeling that you lost the chance to save either Ignacio or Matteo. You don't think you could face their friends and family, so you decide to forget where the frog settlement is.[roman type]"; [Complete cut off from the frogs. Any further content added there will not be available.]
						TraitGain "Guilty Coward" for Player;
				else:
					say "     Trying your best to get away, you eventually have to give up as your strength gives out. It seems you're not strong enough to break the grip, and as your vision clouds, all you can do is gasp for air that won't come, going limp.";
					say "[IgnacioMatteoPlayerRikerBadEnd]";
		now Faustian Bargain is Resolved;
	else:
		say "     Shaking your head, you decide you need more time to prepare a rescue effort. Of course, if you wait too long [bold type]the frog brothers may be gone forever! [roman type]You should hurry back as soon as possible if you want to save them.";
	now libido of Riker is 11;
	now Faustian Bargain is Resolved;

to say RikerAssistantIntroduction:
	say "     Trying your best to be seductive despite your bound state, you offer Riker sex. If he promises not to harm the two frogs, you'll let him do whatever he likes to you. Of course, it's not like you had a choice if he wanted to force himself on you, but there must be some merit in your consent, right? Riker loosens his grip somewhat, seeming slightly surprised. 'Interesting. How would you stop me from taking what I want, whether you like it or not?' Something long and hard worms its way between your legs as the naga demonstrates his control over the situation. Fuck, those cocks are a lot bigger than you thought they'd be!";
	say "     Squeaking out an answer, you further your submission, mentioning that it just doesn't have to be one instance of sex. If Riker lets you go, you can serve him. It's not ideal, but maybe you can find an opportunity to escape later. From what you can see, he's still not taking the bait, so thinking quickly, you offer to help him train his captives! You doubt he can handle two or three sex slaves by himself. One hand on your chin to tilt your face upward, the naga chuckles and sneers. 'Hah! You're telling the truth. Tell you what- I'll take you up on that offer.' Hand moving lower, he squeezes your neck enough that you feel slightly light-headed. 'If you can keep up with me, I'll let your little buddies stay here longer. If you can't- Let's say you won't have to worry about it anymore.'";
	WaitLineBreak;
	say "     Swallowing hard, you rethink your choices as the naga strips away anything and everything that might get in the way of ravaging you, throwing it to the side with little care. It feels like you're a field mouse staring down a hungry snake when he tosses you to the ground, and the sharp teeth showing through the snake's grin only add to the effect. Impatient, the naga thrusts into your mouth, forcing your jaw open with clawed fingers and wringing an indignant gag from your aching throat. Rough and cruel, Riker strikes your cheek when you balk at his size, surging forward and cutting off your air supply as his second masculine appendage dribbles on top of your head, marking you with precum. Both hands settle on the back of your head as he uses you like a fleshlight, and before long, your face drips with drool and precum, your cheeks stinging with increasingly rough slaps.";
	say "     You're not sure how long Riker throatfucks you, swapping dicks until both have made their acquaintance with the deepest depths of your throat, but by the time he withdraws, your vision clouds with darkness, and you feel so dizzy that you wouldn't be surprised if you passed out. Is that all? As you look up at him, lower lip trembling and dripping with mixed fluids, you try to catch your breath, staring down the barrel of both cocks and trying your best to look unrattled. Forcibly turning you around, the naga slams your face against the wall hard enough that you see stars, spreading your legs and smacking your upturned ass, then giving it a wrenching squeeze on one cheek that digs the points of his claws into your tender flesh. Before you can draw a painted breath, Riker thrusts into your exposed entrance, stuffing himself past your defenses. ";
	if Player is female:
		say "     Thankfully for your poor stinging asshole, one of his twin shafts takes a detour downward, plugging your pussy and bruising your cervix. Riker slams to the root in a savage rhythm, ravaging both of your holes in tandem, overflowing your inner depths with pre and bulging out your stomach. You try your best to resist, but the pain and pleasure running through your body become too much to bear, and you scream for mercy, tears running down your face to mix with the cock slime that marked it.";
		NPCSexAftermath Player receives "PussyFuck" from Riker;
		NPCSexAftermath Player receives "AssFuck" from Riker;
	else:
		say "     Unfortunately, your hole accepts both cocks despite the sheer size involved, stretching your ass wide enough that you worry the naga will break your poor ring. Forced to endure the sodomizing of your life, you can only focus on the faint pleasure of your bruised prostate, gritting your teeth as your ass screams for mercy. You won't be able to sit for a week! The pain becomes too much long before the naga finishes with you, and you scream for mercy.";
		NPCSexAftermath Player receives "AssFuck" from Riker;
	say "     'Shut your fuckin' mouth.' Riker growls in your ear, raining down blows on your poor upturned ass. 'You want me to stop? Make me cum. Until then, shut the fuck up.' Warning given, he sinks his teeth into your shoulder, widening your stance and nearly lifting you off the ground with every bullying slam.";
	if a stamina check passes 14:
		say "     You can barely feel your legs by the time the naga's cocks twitch inside you, but you endure until the end, clenching as best you can and pushing back against the aggressive reptile's attempts to break you. It's a relief when Riker finishes, soothing your aching holes with a hot, sticky load that dribbles down your legs and fills the air with a scent uniquely reptilian and aggressively masculine. He doesn't let up the pressure even when his cocks start to soften, and as a hand finds your neck, you can only struggle for air, thrashing with increasing desperation. When your air-deprived mind translates pain and panic into a humiliating orgasm that adds your fluids to the naga's impressive load, Riker releases your throat, murmuring in your ear. 'Just a little reminder. Keep yourself in line, and I'll always stop there. Try anything, and I'll break you.'";
		say "     Tossing you to the floor like a used cumrag, the naga wipes his twin appendages clean on your face, adjusting his hat and nodding toward the door. 'Come back in a few hours, and I'll put you to work. Tell anyone what I'm doing here, and I'll be long gone before you return. You won't like what happens to your little friends.'";
		TraitGain "Working With Riker" for Player;
	else:
		say "     Something inside you breaks as you ragdoll in the rutting naga's grip for hours on end, and you giggle to yourself as pain and pleasure begin to meld together into the same sensation. It feels so good to be a fucktoy, and you can't help but masturbate yourself at the thought of being filled like this every day. Begging for your master's dick, you clench wildly, pushing back and letting your body go wild. Riker cums, so you follow suit, doing your best to show how much you appreciate his abuse and frantically gathering the cum that drips down your legs with your fingers, licking them clean, and praising him for his output. You even slurp his shafts into your slutty mouth when he tosses you to the floor, accepting a strike across your cheeks for your trouble. You smile up at the naga as you lick him clean, your addled mind demanding absolute obedience. Were you lucid, you'd find your behavior absurd, but you're already gone, replaced by an obedient slut.";
		say "     'Ugh. Another one.' Riker recoils at your sudden obedience, grumbling under his breath despite your attempts to please him. 'Pity. Thought I'd get some more fun out of this one.'";
		the Player is enslaved;
		end the story saying "Having broken under pressure, losing your sanity in one fell swoop, your days become nothing more than sucking cock and taking dick in any hole that'll accept it. From Riker's care, you're sent to the sex slave discount bin and rented out as a cheap whore, becoming the main attraction at an underground brothel. Your unhinged personality brings back many loyal customers, and your inability to distinguish pain from pleasure ensures you're always in demand.";

to say PlayerBeatRiker: [Defeated Naga Trafficker(Riker). Opens up the ability to give him a taste of his own medicine.]
	say "     Standing triumphantly over the naga, you watch him fall backward against the far wall. Panting, you walk over to Ignacio, ignoring him and grabbing a solitary roll of duct tape from a chair near him. Cautiously, you use the roll to secure the naga's arms and cover his mouth while he's still too dazed to fight back, then make creative use of nearby bondage gear to hobble his coils with some difficulty, suspending him from the ceiling. He looks silly slumped in a sling, but you're unwilling to take any chances! With the villain bound and gagged, you turn your attention to Ignacio, gently ripping the duct tape off his face and wincing at the sound. It's hard to ignore his cock in your face as you kneel to release his feet from the spreader bar forcing them apart, but you politely try, eventually setting him free.";
	say "     'Thanks.' With an embarrassed expression, Ignacio looks around, searching the bare room with a hand over his still rock-hard shaft before sighing and giving up. 'I guess you've seen it already.' He says with a distinct inability to meet your eye. 'Just... uh... don't stare at it. It'll go away eventually.' Despite his protest, you notice his cock jumping at your glance. Is Ignacio an exhibitionist? You might have to explore this later! Shaking your head with a barely suppressed smile, you tell the frog it's alright if he's clothing-deficient. You're just happy that you showed up in time. More importantly, isn't he here for someone else? Or has he forgotten why he came here in the first place?";
	WaitLineBreak;
	say "     'Matty! Right! Fuck, how could I forget?!' Face flushed, Ignacio rushes to the far door, throwing it open with you walking behind him. Far from his usual abrasive self, he's devolved into a blushing virgin, and you can't help but wonder which side of him is an act- if any. Blinking away the bright halogen lights, you shield your face as your vision adjusts. If the previous room was a sex dungeon, this place was an entire sex club by itself. Every leather, rubber, and latex toy you can think of lines the walls, and the floor beneath your feet is oddly sticky, as though various fluids have soaked into the wood. There's no doubt that Riker enjoys his line of work. 'Matty. Fuck, what did he do to you?' Kneeling, Ignacio fumbles with a leather mask covered in copious dribbles of unknown fluid, tugging it off another frog. They look nothing alike, but this is the younger brother that Ignacio's been looking for.";
	say "     You can say that Riker has discerning taste. An athletic body quivers with every breath, with a broad chest and thick legs spread apart by twin manacles. A log of amphibian cock pulses with the tied man's heartbeat, dripping to the floor below, and his thighs drip with what must be cum- no doubt Riker's- matching the drooling frog's chin. The naga must have used him countless times before you came to his rescue. Shaking your head, you quash the rising desire to add your mess to what already exists. After all, it would be rude to interrupt the froggy reunion! The image of both naked brothers burns itself into your vision, though, and you can't help but imagine a less innocent interaction between the concerned brother and his insensate sibling.";
	WaitLineBreak;
	say "     'Mmm.' Shaking his head, the former captive looks around with glazed eyes, settling on you before shuffling over and licking his lips, ignoring Ignacio for the moment. 'Are you my new owner? I'll be good. Just tell me what you want.' He says as he blatantly fawns over your crotch, his long tongue lolling out just before Ignacio stops him. Confused, he looks over his shoulder with a mildly annoyed expression, his face dawning into confusion. 'Iggy? Why are you here? My head.' Collapsing forward, Matteo inadvertently shoves you backward, his face buried in your crotch. It seems exhaustion has gotten the better of him! 'What the fuck happened to you?' Ignacio says as he picks up the larger male by one arm, swinging him around to lean against his side. 'Let's get you home.' He murmurs as he hobbles toward the door. Addressing you over his shoulder with an air of embarrassment, Ignacio grumbles. 'Come and see me soon. I'll thank you properly.'";
	Linebreak;
	say "     Now that Matteo and Ignacio are gone, is there anything else you'd like to do in this place?";
	let Riker_Defeat_Choices be a list of text;
	add "Leave." to Riker_Defeat_Choices;
	add "Deal with Riker." to Riker_Defeat_Choices;
	add "Look around the 'training room.'" to Riker_Defeat_Choices;
	let Riker_Defeat_Choice be what the player chooses from Riker_Defeat_Choices;
	if Riker_Defeat_Choice is:
		-- "Leave.":
			LineBreak;
			say "     Too disgusted by what you've found here, you decide to leave Riker where he is and exit the way you came without investigating the place. If he knows what's good for him, he won't stick around when he wakes up. At the very least, he won't bother the swamps ever again!";
			TraitGain "Abandoned Cabin" for Riker;
		-- "Look around the 'training room.'":
			LineBreak;
			say "     Rummaging around through the small torture room/sex dungeon, you notice that a corkboard occupies the door you entered from. Polaroid photos of various faces of all genders and species, all of them occupied with at least one naga cock stuffing their throat, stare up at you, with numbers next to each. There's at least 70 of them, and several dozen of them are either amphibians or reptiles. It's become abundantly clear where all the missing members of the two villages have gone, though there's no sign of them in the cabin. At least you can tell their loved ones that you know what happened to them.";
			TraitGain "Victims Known" for Riker; [Flavor.]
			say "     [bold type]Now that you know about Riker's Victims, what will you do?[roman type][line break]";
			let Riker_Defeat2_Choices be a list of text;
			add "Leave." to Riker_Defeat2_Choices;
			add "Deal with Riker." to Riker_Defeat2_Choices;
			let Riker_Defeat2_Choice be what the player chooses from Riker_Defeat2_Choices;
			if Riker_Defeat2_Choice is:
				-- "Leave.":
					LineBreak;
					say "     Deciding it's time to leave, you ignore the dazed naga, leaving him in his bound state and closing up the cabin behind you. He should have learned his lesson, and you don't have the heart to stoop to his level. Plus, you don't know who's backing him- better not to make enemies.";
					TraitGain "Abandoned Cabin" for Riker;
				-- "Deal with Riker.":
					LineBreak;
					say "     Without the frog brothers to worry about, you turn your attention to the bound naga, still drooping in his serpentine bondage. You could give him a taste of his own medicine now that he's at your mercy, or you could find a way to ensure that he'll be a non-issue in the future. ";
					say "     [bold type]Which method would you prefer?[roman type][line break]";
					say "     ([link]Y[as]y[end link]) - Give him a taste of his own medicine. It's the only way to get revenge for all the people he kidnapped.";
					say "     ([link]N[as]n[end link]) - Look for a way to ensure that he'll never be an issue again.";
					if Player consents:
						LineBreak;
						say "[RikerBitchScene]";
					else:
						LineBreak;
						say "[RikerDruggedScene]";
		-- "Deal with Riker.":
			say "     Without the frog brothers to worry about, you turn your attention to the bound naga, still drooping in his serpentine bondage. You could give him a taste of his own medicine now that he's at your mercy, or you could find a way to ensure that he'll be a non-issue in the future.";
			say "     [bold type]Which method would you prefer?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Give him a taste of his own medicine. It's the only way to get revenge for all the people he kidnapped.";
			say "     ([link]N[as]n[end link]) - Look for a way to ensure that he'll never be an issue again.";
			if Player consents:
				LineBreak;
				say "[RikerBitchScene]";
			else:
				LineBreak;
				say "[RikerDruggedScene]";
				TraitGain "Orc Bitch" for Riker;

to say RikerBitchScene:
	say "     Returning to the bound naga, you slap his cheek to wake him up, grinning at his indignant, muffled noises. Since he's at your mercy, you explain your plans to him, telling him that while you don't want to harm him, you want compensation for your troubles. After all, you had to work SO hard to defeat him. There's little need to elaborate further as your hand tells the story for you, reaching out to slide along helpless coils and find the naga's slit. Eyes widening as you stuff two fingers into a surprisingly warm slit, the naga growls low in his throat. Judging by the look of discomfort growing on his face and his intensifying struggles, he's not used to being on the receiving end of any of the abuse he puts out, but that's something you'll remedy soon enough. ";
	if Player is male: [Slit Fucking]
		say "     Not willing to risk losing out on this opportunity, you remove your fingers, tossing aside your gear and taking firm hold of the coils on either side of the naga's slit, lining yourself up and watching his expression. When he starts to shake his head, you nuzzle your cockhead against the slightly spread lips, then stuff yourself inside without ceremony, biting back a moan at the friction-heavy silken inner walls your cock so rudely butts into. Slickened by your pre, you have little trouble bottoming out, butting against twin pulsing shafts that no doubt ache to be set free. Your rough rhythm draws pained hisses through the duct tape gag, your captive struggling against every thrust despite how easily his genital slit takes every inch. Drool drips through the gag before long, and his eyes roll back when you feel his cocks swell to their limit, bullied backward by yours. Growing wetness dribbling down the base of your dick shows it's not just your imagination- he must be enjoying his new place as your bitch!";
		say "     Taunting the naga with this newfound knowledge, you ask him whether you should keep him. It'll be cold comfort for his former victims, but at least he'll get to endure every moment he put them through. Taking the renewed pulsing through those forcibly softened cocks as agreement, you up the ante, shoving yourself in with a sense of urgency guaranteed to leave him sore. You lose yourself in the dirty talk, calling the naga everything under the sun and relishing the way his angry expression melts into embarrassment, the truth in your words keeping him from making eye contact. There's no way he can deny it with you fucking him so soundly! Lingering on each pounding thrust, you attempt to fight against the rising feeling in your lower stomach. It's too early for you to finish, but the increased tightness of that overstuffed makeshift cunt is far too good to resist. Burying yourself to the root, you mark the naga with a healthy seeding, filling every available space with pump after pump of cum until your dick's forced out by the pressure, flopping free with a wet squelch.";
		WaitLineBreak;
		say "     Groaning through his gag, Riker looks down at you, chin dripping with drool and eyes unfocused. In the absence of your cock, his twin tapered pink shafts have grown, dripping with your cum and angrily throbbing as if begging for more. Sadly for them, you ignore the display, wiping yourself clean on a spare cloth from your pack and observing your helpless conquest's dangling form.";
		NPCSexAftermath Riker receives "AssFuck" from Player;
	else if Player is female: [Edge him with your pussy]
		say "     Popping your fingers free of that tightening slit, you lower them between your legs, rubbing the slight bit of slickness that clings to your fingers into your needy cunt as you toss aside your gear. Riker appears to know what you want, although he's none too pleased about his submissive position, and he struggles against his bonds, shaking his head. Nonetheless, those twin cocks slip free as you finger yourself in front of him, throbbing as if demanding attention. It takes some finagling, but you manage to move one of those dribbling cocks into position, sliding it against your lower lips until a muffled groan eggs you on, then sitting on it, taking it in one extended glide. Riker's so delightfully firm inside of you, his tapered length reaching all the right places, and you can't help but sink into a heavy rhythm, slamming your ass into his spare cock with a resounding thwap every time your cheeks meet it.";
		say "     Taunting the snake as you notice his cock's wild throbbing, you ask him whether he's going to finish quickly inside of you. Wouldn't that add another layer of humiliation to his predicament? Losing a fight just to cum in seconds from your enemy's pussy- you're not sure he'd live that down. Emboldened by the snake's inability to look you in the eye, you escalate things, fucking yourself wildly on his cock as you call him every insult you can think of. Through all the excitement, you can't help but notice the coiling orgasm growing in your stomach. It's the perfect end to what you're trying to accomplish here, and you know what you will do. Using that fat snake cock as a dildo, you bring yourself to a mind-shattering finish, coating it in a copious layer of femcum, only to withdraw when you feel him begin to twitch, heralding his finish.";
		WaitLineBreak;
		say "     Denied, the snake looks at you with pleading eyes and dripping cocks, struggling against his bonds and grumbling as drool runs down his chin. Sadly for him, you have no intention of letting him enjoy himself a minute longer, and you wipe yourself clean with a rag from your pack as you gather your gear. Contemplating the naga's bound, shaking form, you wonder what you'll do with him.";
		NPCSexAftermath Riker receives "Stroking" from Player;
	else: [Catch all Fingering]
		say "     Teasing those growing cocks as they crowd your fingers, you work them until your captive struggles and moans against his gag, his eyes crossing from your efforts. Sadly for him, you have no intention of continuing past getting him right to the edge of orgasm, and you chastise him for thinking otherwise. Denied, the snake looks at you with pleading eyes and dripping cocks, struggling against his bonds and grumbling as drool runs down his chin. Sadly for him, you have no intention of letting him enjoy himself a minute longer, and you wipe your fingers clean with a rag from your pack as you gather your gear. Contemplating the naga's bound, shaking form, you wonder what you'll do with him.";
		NPCSexAftermath Riker receives "Stroking" from Player;
		WaitLineBreak;
	say "    With your needs taken care of, you stretch and leisurely make your way into the back room, searching for something more permanent to deal with the small matter of your reptilian problem. After all, letting him roam the swamps again will encourage him to come looking for revenge- or worse, to report back to his bosses. Eying a set of manacles, you decide they'll work well enough. Two convenient links of chain and several rolls of heavy-duty duct tape complete the kit, and with a lot of swearing (The naga's heavy!) and at least one escape attempt (disguised as involuntary coil movement on the part of the naga captive) you manage to trap him in his mini sex-dungeon. With arms manacled behind his back, an indignant expression, and coils taped to the wall so tightly that he can't move a muscle, with just his genitals left free from bondage, the naga stares hatefully at you, still aroused and unable to do anything about it. [bold type]You can leave this place now without him escaping, but whenever you want to use him again, it should be possible.[roman type][line break]";
	now Riker is in Creepy Swamp Cabin;

to say RikerDruggedScene:
	say "     Searching around the miniature sex dungeon, you scour dubiously clean toys for something that might help you prevent any future victims of Riker's trafficking operation. Just before you give up the search, an evil idea crosses your mind as you swirl around at least a gallon of milky fluid in a large mason jar labeled 'Orc Cum. Highly addictive.' If you get Riker hooked and send him off to the orcs, he'll never see the light of day again! It seems that Riker had the same idea as you in the past, and you find a gas-mask-style leather apparatus in the shape of a dog's head nearby hooked to a funnel. How many others has he used this method on? You try not to think of it as you gingerly grab the mask and return to the unconscious reptile.";
	say "     Riker's already woken up when you return, and his eyes widen as he sees what you're holding in your hands. 'Hey. Wait. We can talk about this. I can pay you. I can make you fuckin' rich. They'll fuckin' kill you if they find out what-' Gagged by the rubber hose you stuff in his mouth, the snake gags, his expression more horrified as you secure the mask to his face, disappearing behind the expressionless dog face. Shaking your head, you ask how many of Riker's victims begged and pleaded with him the same way when he was 'training them' in that dank sex dungeon. Of course, he can't answer you, but you get some satisfaction from the soft noises of rejection as his throat tries to push out the foreign object. Gripping the jar in one hand and the funnel in the other, you pay his head, telling him that at least he won't remember anything after you finish with him. After all, you're not nearly as twisted as he appears.";
	WaitLineBreak;
	say "     Without further ado, you pour the thick liquid into the funnel, holding it steady as the formerly dominant snake tries his best to gain some traction, struggling not to swallow. Eventually, the need for air wins out, and noisy gulps fill the area, his body loosening and his widened eyes drifting half-closed as the drugged seed does its work. Each noisy gulp relaxes him more and more until the only thing stopping him from melting to the floor below is the myriad straps around his body. You finish the entire jar in the same manner, pausing when the weakened naga sputters and risks wasting it through his nostrils until only a milky film remains, coating the glass. You can already see the naga's scales smoothing into greenish skin and his tail shrinking inward when you begin to undo his straps, and by the time you've freed him, he's unrecognizable. The face you covered with the mask is gone by the time it comes off, replaced by a feminine, twinkish expression, tusks, and a wide, flatter nose in place of the twin slits that once were. The dose must have been high enough that the snake's form is irreparably changed!";
	say "     Staring up at you with glazed eyes, the newly minted orc breeder barely reacts, licking his lips and pushing the few drops that escaped his throat, dripping down his chin, to his mouth, hungrily devouring every last bit of addictive spunk. Drunk off his ass, he looks from side to side as if seeking out more, moving awkwardly on newly acquired knees that shuffle ineffectively on the hardwood.";
	LineBreak;
	say "      [bold type]Send him off with a bang?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Give him a taste of what he did to the people he trafficked.";
	say "     ([link]N[as]n[end link]) - Don't stoop to his level. Point the newly transformed slut to his new masters and send him on his way.";
	if Player consents:
		if Player is male:
			say "     Grabbing luxurious locks of black hair, you fish out your manhood, flopping it across the newly minted breeder's face and ramming it against his lips. You're not gentle, nor do you care about his comfort, and you can only grin as the breeder chokes on your insistent thrusts, his throat still no doubt sore from the funnel. You fuck his face like it owes you money, enjoying the mild tingle of leftover orc cum on bare flesh. Despite his seeming inexperience, the breeder learns face, lashing his tongue against your underside and sucking so thoroughly that his lips refuse to leave your shaft when it retreats, begging for the seed that you're all too willing to give. You blast his throat in moments, holding him in place as he coughs and gags and forcing him to drink every drop before you release him, smearing his whorish expression with the last bit of mixed drool and cum. Dragging him to his feet, you force him out of the cabin still coated in your cum, pointing the way toward the city, and tell him if he wants orc cum, he'd better beg for it on the streets like the slut he is. Watching him naked and stumbling through the brush in a daze, you can't help but shake your head. Some orc warrior would ruin him before the day's end, and he deserved every second.";
		else if Player is female:
			say "     Grabbing luxurious locks of black hair, you fish out your womanhood, resting it across the newly minted breeder's face and riding his face until he gets the hint and starts licking. You're not gentle, nor do you care about his comfort, and you can only grin as the breeder drowns on your insistent thrusts grinding, his tongue working overtime. You fuck his face like it owes you money, enjoying the mild tingle of leftover orc cum on bare flesh. Despite his seeming inexperience, the breeder learns fast, lashing his tongue against your clit and sucking so thoroughly that his lips refuse to leave your pleasure button, begging for the femcum that you're all too willing to give. You blast his face in moments, holding him in place as he coughs and slurps, forcing him to drink every drop before you release him, smearing his whorish expression with the last bit of mixed drool and pussyjuice. Dragging him to his feet, you force him out of the cabin still coated in your juices, pointing the way toward the city, and tell him if he wants orc cum, he'd better beg for it on the streets like the slut he is. Watching him naked and stumbling through the brush in a daze, you can't help but shake your head. Some orc warrior would ruin him before the day's end, and he deserved every second.";
	else:
		say "     Dragging Riker to his feet, you force him out of the cabin still naked and shuddering from the drugged seed. Pointing the way toward the city, you tell him if he wants orc cum, he'd better beg for it on the streets like the slut he is. Watching him fully nude and stumbling through the brush in a daze, you can't help but shake your head. Some orc warrior would ruin him before the day's end, and he deserved every second.";

to say IgnacioMatteoPlayerRikerBadEnd: [Lost the Fight or lost the strength roll to get away.]
	say "     As you awaken from your sudden squeeze-induced faint, you realize you can't move a single muscle below your neck. The cause for your bondage becomes apparent after a few moments of investigation. Not only are your arms and legs forced into an unnatural kneel, with your arms behind your back and legs spread wide, but you've been stripped naked, and chains stretch from your extremities to the walls. Duct tape covers your mouth, though you can breathe through your nose. 'Ah, the little hero's awake.' A familiar voice rings through your ears, and coils slither across the cold tile beneath your feet as a reptilian body looms in your vision. 'I've had to busy myself with your little friends while you slept. Shame you weren't awake to watch.' The naga stretches his arms and grins wickedly, one hand coming into view holding a leather flogger. 'Don't worry. I saved the big event just for you.' Gingerly retrieving a small glob of something from within a jar on a nearby shelf, the naga rips away the gag on your mouth, forcing fingers in before you can react.";
	say "     The instinct to bite melts away at the first taste of the substance, and you find yourself moaning instead as heat spreads through your body from your tingling tongue down to the tip of your toes. You're not sure what Riker drugged you with, but all thoughts melt away, and all you can think of is cock. In your mouth, your ass, anywhere else it can find. You need it so badly that you set your sights on his genital slit, eying the emerging reptilian cocks with a greedy stare. 'That's it. Good shit.' Mockingly cooing his approval, the naga fingerfucks your throat with those fingers, letting you gather up every last bit with your tongue, flopping his growing erections between your eyes. They're bigger than most, though they taper to a point and curve away from each other, but to your eyes, they're the most delicious-looking things you've ever seen. 'Let's get processing out of the way.' He grunts as he slurps his fingers free of your mouth.";
	WaitLineBreak;
	say "     The naga grabs your cheek and lines his cocks up with your mouth, forcing the dual penises past your lips until your jaw aches. Thick, musky masculinity flows down your throat, and you gag desperately, struggling to accept it, but your distress only seems to excite him more, encouraging him to shove to the root. A flash across your eyes and the telltale click of a camera follows the roughest part of the facefuck, and as you look up with teary eyes, you realize Riker's taking a Polaroid picture of your face! Embarrassment fights with the desire to worship those twin cocks, but you're at the mercy of the hand on the back of your head, fighting for your life and drooling mixed pre and saliva through your nose and down your chin. 'There's a good bitch.' Riker growls as he finally relents, dragging his slimy shafts from your mouth and wiping them clean on your forehead, marking you with the scent of his arousal. 'Don't worry. Breaking you in won't be all bad.' Releasing you from your bondage before you answer, the naga drags your unresisting body to a nearby bench and throws you over, ass in the air.";
	say "     Blows rain down on your exposed ass, one after another, and when you attempt to close your legs, the naga shoves them apart, demanding that your genitals stay in view even as your cheeks redden and sting. Nanites work overtime to prevent the welts on your poor, defenseless skin from bleeding, but they do nothing for the pain, and before long, you're begging him to stop, tears dripping down your face. 'That's what I like to hear! You're not so tough now, are you? Where's that heroic attitude?' Never giving you a second's reprieve, the naga tosses aside the flogger, cramming his twin dicks between your ass cheeks and crowding your hole. 'Beg me to fuck you, and it'll be over sooner.' Through a curtain of tears, you beg for a dick you're not sure you want, though the mouthful of aphrodisiac (has your cock hard as a rock/ makes your pussy drip like a faucet.) Anything to stop the constant pain inflicted on your lower back and ass cheeks. If it'll end this torture, you'd be willing to do anything.";
	WaitLineBreak;
	say "     'If you insist!' Approval dripping through his hissing voice, the naga stuffs his cocks [if Player is female]into both your holes. [else if Player is male]into your defenseless asshole, stretching you wide. [end if]Ramming himself to the root, he tosses aside his flogger and uses his hands for the same purpose, loud ringing slaps filling the air as he times them with each withdrawal. He's far from gentle, and if it weren't for the nanites' influence, you bet you would have torn something. You're not sure how long you ride out the naga's furious fucking, but by the time he's finished, you've gone limp. Your entire body hurts, but your ass is another story. Your cheeks burn like they're on fire, and your hole[if Player is female]s[end if] feel like you've been fucked by a stone pillar. It hurts so much that you feel relieved when the heavy thrusts give way to pulsing within you, then a gush of naga cum that threatens to swell your stomach. At the very least, you might get some relief while he recovers.";
	trigger ending "Riker's Training";
	end the story saying "You've given in to Riker's training, becoming a semi-willing participant in degrading and painful acts. In your more lucid moments, you balk, but that only seems to excite your trainer more, resulting in more lengthy punishments, and is one of the reasons you're sold for such a high price. Unfortunately, your new owner is even worse, and before long, you lose all grasp of reality, struggling through a world of pain and pleasure until the day they're sick of you.";





to say PlayerSavedFrogBrothersBadEnd:
	say "     You pass out as the naga constricts your body, and awaken to the inability to move anything below your neck. The cause for your bondage becomes apparent after a few moments of investigation. Not only are your arms and legs forced into an unnatural kneel, with your arms behind your back and legs spread wide, but you've been stripped naked, and chains stretch from your extremities to the walls. Duct tape covers your mouth, though you can breathe through your nose. 'Ah, the little hero's awake.' A familiar voice rings through your ears, and coils slither across the cold tile beneath your feet as a reptilian body looms in your vision. 'I've had to busy myself with your little friends while you slept. Shame you weren't awake to watch.' The naga stretches his arms and grins wickedly, one hand coming into view holding a leather flogger. 'Don't worry. I saved the big event just for you.' Gingerly retrieving a small glob of something from within a jar on a nearby shelf, the naga rips away the gag on your mouth, forcing fingers in before you can react.";
	say "     The instinct to bite melts away at the first taste of the substance, and you find yourself moaning instead as heat spreads through your body from your tingling tongue down to the tip of your toes. You're not sure what Riker drugged you with, but all thoughts melt away, and all you can think of is cock. In your mouth, your ass, anywhere else it can find. You need it so badly that you set your sights on his genital slit, eying the emerging reptilian cocks with a greedy stare. 'That's it. Good shit.' Mockingly cooing his approval, the naga fingerfucks your throat with those fingers, letting you gather up every last bit with your tongue, flopping his growing erections between your eyes. They're bigger than most, though they taper to a point and curve away from each other, but to your eyes, they're the most delicious-looking things you've ever seen. 'Let's get processing out of the way.' He grunts as he slurps his fingers free of your mouth.";
	WaitLineBreak;
	say "     The naga grabs your cheek and lines his cocks up with your mouth, forcing the dual penises past your lips until your jaw aches. Thick, musky masculinity flows down your throat, and you gag desperately, struggling to accept it, but your distress only seems to excite him more, encouraging him to shove to the root. A flash across your eyes and the telltale click of a camera follows the roughest part of the facefuck, and as you look up with teary eyes, you realize Riker's taking a Polaroid picture of your face! Embarrassment fights with the desire to worship those twin cocks, but you're at the mercy of the hand on the back of your head, fighting for your life and drooling mixed pre and saliva through your nose and down your chin. 'There's a good bitch.' Riker growls as he finally relents, dragging his slimy shafts from your mouth and wiping them clean on your forehead, marking you with the scent of his arousal. 'Don't worry. Breaking you in won't be all bad.' Releasing you from your bondage before you answer, the naga drags your unresisting body to a nearby bench and throws you over, ass in the air.";
	say "     Blows rain down on your exposed ass, one after another, and when you attempt to close your legs, the naga shoves them apart, demanding that your genitals stay in view even as your cheeks redden and sting. Nanites work overtime to prevent the welts on your poor, defenseless skin from bleeding, but they do nothing for the pain, and before long, you're begging him to stop, tears dripping down your face. 'That's what I like to hear! You're not so tough now, are you? Where's that heroic attitude?' Never giving you a second's reprieve, the naga tosses aside the flogger, cramming his twin dicks between your ass cheeks and crowding your hole. 'Beg me to fuck you, and it'll be over sooner.' Through a curtain of tears, you beg for a dick you're not sure you want, though the mouthful of aphrodisiac (has your cock hard as a rock/ makes your pussy drip like a faucet.) Anything to stop the constant pain inflicted on your lower back and ass cheeks. If it'll end this torture, you'd be willing to do anything.";
	WaitLineBreak;
	say "     'If you insist!' Approval dripping through his hissing voice, the naga stuffs his cocks [if Player is female]into both your holes. [else if Player is male]into your defenseless asshole, stretching you wide. [end if]Ramming himself to the root, he tosses aside his flogger and uses his hands for the same purpose, loud ringing slaps filling the air as he times them with each withdrawal. He's far from gentle, and if it weren't for the nanites' influence, you bet you would have torn something. You're not sure how long you ride out the naga's furious fucking, but by the time he's finished, you've gone limp. Your entire body hurts, but your ass is another story. Your cheeks burn like they're on fire, and your hole[if Player is female]s[end if] feel like you've been fucked by a stone pillar. It hurts so much that you feel relieved when the heavy thrusts give way to pulsing within you, then a gush of naga cum that threatens to swell your stomach. At the very least, you might get some relief while he recovers.";
	WaitLineBreak;
	trigger ending "Highest Bidder";
	end the story saying "You've given into your new role as a shape-changing sex slave. At the beck and call of your new masters, you down vials of various creatures' cum and endure clients' lustful desires until your sanity gives out. At least, until you lose yourself, you're able to recall how you saved Ignacio and Matteo from a fate similar to yours. Cold comfort, but at least it's something.";

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Highest Bidder"	"BadEnd"	"Sex Slave"	Highest Bidder rule	1	false

This is the Highest Bidder rule:
	if ending "Highest Bidder" is triggered:
		say "     Over the next few weeks, Riker subjects you to all sorts of transformations, often followed by a rough, violent fuck that leaves your freshly transformed body battered, bruised, and broken. Your gender and species change like the wind until your sanity finally breaks, and you lie there, letting him do as he likes. You're not sure how long you dissociate, but you're in a completely different place when you come to. A dog cage encloses you on all sides, and a familiar voice booms from above, sending shivers down your spine as you recall bits and pieces of the sexual torture you endured. You try your best to return to the dissociation, staring at hands you don't recognize even when you move them. You've changed species so often by now that you don't know who you are anymore.";
		say "     'Now, this toy should satisfy even the most discerning gentleman.' Riker's feigned southern drawl drones on despite your attempts to close yourself off, and you sit up, looking around in a daze at naked men wearing masks, attended by lavishly dressed men and women draped with jewels. 'With the help of a vial or two of any mutant's cum, this little slut'll change form right before your eyes. Sure to satisfy even the most fleeting tastes.' Hitting the top of your cage, the naga coos. 'But you don't have to believe me. Let me show you.' Dragged out of your cage by a collar around your neck, you shiver on all fours, staring at a mosaic pattern on the tile floor below you. If it weren't for your situation, you might find your surroundings pretty, but you only hope that your lucidity will disappear before the torture continues. Snarling and lunging against a leash that chokes him when he pulls too hard, an anthro wolf with a dripping erection is led into the room by a few servants, trotting toward you and focusing on you with a single sniff. Once his vision locks onto you, his handlers let him loose, and he's on you in a single bound, his claws digging into your hips as he rams himself into your well-trained asshole and his teeth clamping on the scruff of your neck. Ravaged and battered, you can only hold yourself up, your untouched genitals dripping to the floor below and your fingers scrabbling for purchase on the tile.";
		WaitLineBreak;
		say "     It isn't the first mutant Riker has forced you to accommodate, though this is the largest audience for your forced breeding. Thankfully for you, your ass is used to the abuse, and even the swelling knot pops in and out of you with practiced ease, bringing with it dribbles of pre that roll down your thighs, messing your chimeric body. When the wolf finishes and withdraws, you groan and curl into a ball, gritting your teeth against the almost instantaneous changes. Fur sprouts from spaces that had none, and your mismatched parts gain some unity, though your genitals remain safe from change. A tail breaks through above your ass, sticking straight up above your violated hole, and ears burst from the top of your head, quivering as the rest of your features morph to become distinctly canine. You whimper for mercy, but all you hear is applause, and you soon quiet down as the wolf rams himself home for a second round, pounding your unresisting body. As consciousness slips away again, the sneering crowd out their bids. Hopefully, you'll stay broken this time, because if not, you're sure you'll have to endure more of this in the future. Worse, you're not sure if you hate it. The cock violating your unresisting asshole doesn't feel THAT bad, after all.";
		the Player is enslaved;

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Riker's Training"	"BadEnd"	"Sex Slave"	Riker's Training rule	1	false

This is the Riker's Training rule:
	if ending "Riker's Training" is triggered:
		say "     'Obedient little whore.' Riker grunts as he dismounts, slapping your upturned ass. 'Now for the grand finale. Let's see how your little friends are doing.' Grabbing your arm, he drags you out of the BDSM room and into the room where you first saw Ignacio. A familiar exotic skin pattern and a more muted tree frog pattern greet you, accompanied by two wildly different expressions. Ignacio looks horrified, while the other frog seems jealous but not quite right in the head, with glazed eyes and drool dripping from the corners of his mouth. That must be Matteo, right? 'Now, now, sluts. Is that any way to greet fellow product?' Riker sneers as he shoves you forward, looming over you and gripping Matteo's head to guide his drooling mouth to the cocks that so recently violated you. 'Time for you three to play.' He coos as he stuffs his cock down Matteo's throat, letting the other smear the willing frog's face with leftover cum.";
		say "     The next few hours are a blur. Forced by the threat of Riker's whip, you violate both brothers in every manner possible, stuffing your fingers (and your cock) into every orifice and licking away at Riker's cock base as he violates their slits, asses, and throats. The smell of snake cock burrows its way into your brain, aided by copious fingers full of the mysterious substance from the jar (later revealed to be orc cum), and you find yourself craving it, giving yourself willingly to Riker's rough affections and enduring his violent tendencies for any opportunities to please him. Your sanity breaks before your body does, and you lose track of anything but the desire to please, taking on the life of a sex slave without a whimper of protest. The frog brothers are sold as a pair, forced to fuck each other for their master's amusement, and you kneel at Riker's side as they make out around their master's cock. You should be horrified, but you can't summon anything past the envy you feel watching them get coated in a thick layer of human cum. Of course, you know better than to beg, and when you get your turn, you try your best to outdo them with your new master when it comes to your turn, losing yourself in the joy of pleasing a new cock and falling into the life of a well-broken sex slave.";
		the Player is enslaved;

Section 6 - Debug Cheats for Testing

MatteoQuestSkip is an action applying to nothing.

understand "zMatteoQuestSkip" as MatteoQuestSkip.

check MatteoQuestSkip:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out MatteoQuestSkip:
	say "<You've now skipped the lead in to Matteo's quest!";
	TraitGain "Lizard Village Welcome" for Kosk;
	AddNavPoint Sinking Swamps;

MatteoQuestSkip2 is an action applying to nothing.

understand "zMatteoQuestSkip2" as MatteoQuestSkip2.

check MatteoQuestSkip2:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out MatteoQuestSkip2:
	say "<You've now skipped the first part of Matteo's quest!>";
	TraitGain "Matteo Quest" for Ignacio;
	TraitGain "Lizard Village Welcome" for Kosk;
	TraitGain "Kidnapping Quest" for Kosk;

Swamp Storyline ends here.