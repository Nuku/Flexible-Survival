Swamp Storyline by Voidsnaps begins here.


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
	say "     [link](Y)[as]Y[end link]Ask whether you can help.";
	say "     [link](N)[as]N[end link]Shrug and let Kosk handle it.";
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


Table of WalkInEvents (continued)
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
		say "     [link](Y)[as]y[end link] - Let him go and trust him.";
		say "     [link](N)[as]n[end link] - Drag him back to Kosk.";
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
	now MilkItem entry is "";
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
1	"Culprit Found"	Culprit Found	"[EventConditions_Culprit Found]"	Rundown Cabin	2500	8	40

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
	say "     <Content ends here for now!(5/19/2024) Stay tuned for more Riker, Ignacio and Matteo content revolving around saving the frogs or siding with their captor!>";
	Now Culprit Found is resolved;

Section 5 - Debug Cheats for Testing

MatteoQuestSkip is an action applying to nothing.

understand "zMatteoQuestSkip" as MatteoQuestSkip.

check MatteoQuestSkip:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out MatteoQuestSkip:
	TraitGain "Lizard Village Welcome" for Kosk;
	AddNavPoint Sinking Swamps;

[MatteoQuestSkip2 is an action applying to nothing.

understand "zMatteoQuestSkip2" as MatteoQuestSkip2.

check MatteoQuestSkip2:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out MatteoQuestSkip2:
	TraitGain "Matteo Quest" for Ignacio;
	]

Swamp Storyline ends here.