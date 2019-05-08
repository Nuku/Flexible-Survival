Version 1 of Xeno Nest by Kernog begins here.

[When exploring the capitol, the player can stumble upon a xeno nest. Low-level SCAVENGING event.

Event should be banned if Player has either of these:
- ovilevel is 1
- player is not female and does not have the mpreg feat

The player may choose to go fast or cautiously, in search of supplies (or give up).

Something can happen during the exploration
1/ Ambushed by a facehugger -> Leads to a dexterity check
2/ Ambushed by a trilobite -> Leads to a strength check
3/ Ambushed by a xeno -> Leads to a fight

If the player is molested:
	End scene: player ends up in a bound state
Else:
	Player discovers a cache, and can choose either food or pure water.
	First choice, add selected item to the invent of Player
	if Player is cautious, they decide to get out, otherwise, they can choose another item
	End scene: player walks away, his backpack filled

Resolutions: (for the narration):
* 0 - First visit to the nest
* 1 - Player was captured and impregnated
* 2 - Player successfully completed an expedition while being cautious
* 3 - Player successfully completed an expedition while rushing

]
Table of GameEventIDs (continued)
Object	Name
Xeno Nest	"Xeno Nest"

Xeno Nest is a situation. The sarea of Xeno Nest is "Capitol".
xenoNestisCautious is a number that varies. xenoNestisCautious is usually 0.

Instead of resolving Xeno Nest:
	say "     You stumble upon a large building overrun with a thick coat of fleshy mold. The ground floor's wall has crumbled, leaving a big opening leading to what looks like some kind of alien lair. The upper floors look untouched by the pink-brown material.";
	if Resolution of Xeno Nest is 0:
		say "     You wonder if you can find some much needed supplies on these last floors. However, you would have to find your way through the strange nest first. You could favor caution and explore the place as stealthily as possible; or you could attempt to rush and make your way to the top as fast as possible. No matter the method, there would always be a risk to encounter whatever built this nest.";
	else if Resolution of Xeno Nest is 1:
		say "     You remember your previous, failed attempt. The memories from last time are still fuzzy in your head, but your body keeps shivering. Is it of fear or of excitement? The supplies are still there, waiting for you, albeit there is now a hint of unusual curiosity lingering in your ponderations.";
	else if Resolution of Xeno Nest is 2:
		say "     You remember your previous, successful attempt. And you know that there must be plenty of supplies remaining where you left them. You wonder if you should try to reach the goal faster, so that you have time to get more supplies, or stay cautious to lessen the odds of encountering one of the dwellers of the nest.";
	else if Resolution of Xeno Nest is 3:
		say "     You remember your previous, successful attempt. And you know that there must be plenty of supplies remaining where you left them. You wonder if you should keep going for speed, and collect as much supplies, or be more cautious to lessen the odds of encountering one of the dwellers of the nest.";
	say "     [bold type]What should you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Explore the nest cautiously.";
	say "     [link](2)[as]2[end link] - Rush into the nest.";
	say "     [link](3)[as]3[end link] - Walk away.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to A, [link]2[end link] to B or [link]3[end link] to C.";
	if calcnumber is 1:
		LineBreak;
		say "[cautiousNestExploration]";
	else if calcnumber is 2:
		LineBreak;
		say "[boldNestExploration]";
	else:
		LineBreak;
		say "     You decide to abstain from delving into such a dangerous looking place, as the reward is not worth the risk. You walk away.";

to say cautiousNestExploration:
	now xenoNestisCautious is 1;
	let chancemodifier be 8;
	if "Wary Watcher" is listed in feats of Player:
		now chancemodifier is 12;
	else:
		say "     You decide to take a cautious approach. Instead of entering by the large gap in the building, you find a smaller, secondary entrance, and sleep inside. The flesh walls and floor are slimy and squishy, and there are strange noises all around you. The surreal ambiance keeps you on your toes as you progress slowly. You do your best not going in the direction of the strange noises, and watch for any unusual movement or object in your field of vision.";
	if a random chance of 3 in chancemodifier succeeds:
		say "     Unfortunately, this does not prevent you from being caught by surprise.";
		xenoNestEncounter;
	else:
		say "     You make your way to the building's staircase without incident. The nest has not expanded to the upper floors yet, so you allow yourself to relax, and make your way to the last floor.";
		xenoNestWin;

to say boldNestExploration:
	now xenoNestisCautious is 0;
	let chancemodifier be 4;
	if "Wary Watcher" is listed in feats of Player:
		now chancemodifier is 6;
	say "     You walk at a brisk pace through the gap in the building. The floor becomes slimy and squishy under your [feetDesc], and after getting deeper inside, you start to hear strange noises all around you. The surreal ambiance motivates you to urge on, and your brisk walk turn into a light job. You jump from tunnel to room, letting your instincts guide you towards the staircase.";
	if (a random chance of 3 in chancemodifier succeeds):
		say "     Your lack of caution results in you being caught by surprise.";
		xenoNestEncounter;
	else:
		say "     Almost miraculously, nothing blocks your path, or manages to catch up with you, and you barge into the building's staircase unimpeded. The nest has not expanded to the upper floors yet, so you allow yourself to relax, and make your way to the last floor.";
		xenoNestWin;

to xenoNestEncounter:
	WaitLineBreak;
	setmonster "Xeno"; [We set the monster to Xeno here, so that every monster can use ovichance in their scenes]
	let rand be a random number between 1 and 5;
	if rand is 1:
		say "[nestXenoFight]";
	else if rand <= 3:
		say "[nestFacehugger]";
	else:
		say "[nestTrilobite]";

to say nestXenoFight:
	now inasituation is true;
	challenge "Xeno";
	now inasituation is false;
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     You are knocked down by the powerful creature and pinned beneath it. It hisses at you, extending its inner mouth and dripping thick slime onto your cheek as it stares down at you, small nasal holes flaring as it takes in your scent. Instead of having its way with you, the creature violently bashes your head on the floor, knocking you out on the spot. As your consciousness fades, you feel the monster grab your leg and drag you to an unknown place.";
		xenoNestFailure;
	else if fightoutcome >= 30:
		say "     You run away in terror from the gigeresque creature. You hear it raise the alarm behind you. Just as you turn a corner, you meet another nest dweller.";
		xenoNestEncounter;
	else:
		say "     Your opponent defeated, you allow yourself a moment to relax, and let the tension die down. Afterwards, you resume your exploration. You eventually find the door leading to the upper floor, and leave this strange place.";
		xenoNestWin;

to say nestFacehugger:
	let bonus be (( Dexterity of the player - 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Dexterity Check):[line break]";
	increase diceroll by bonus;
	if diceroll >= 12:
		say "     Hearing something screech next to you, you do not think twice and leap away. A crab-like creature flies past your head. As soon as it lands on the floor, you kick it away and run the other way. Who knows what could have happened if you did not react in time? Afterwards, you find the door leading to the upper floor and leave this strange place.";
		xenoNestWin;
	else:
		say "     Hearing something screech next to you, you make the mistake of turning your head in the direction of the sound. You barely have the time to notice the crab-like creature jumping towards you before it clamps down on your head. You feel its long legs squeeze around your [face of Player] while its tail wraps around your neck. Safely anchored, the creature pushes a tube-like organ down your throat. You gag as the organ forces its way in. You wrestle with the creature, falling on the ground as you do so, but you cannot budge the chitinous creature from you. The effects of the lack of air slowly take hold, and your consciousness begins to fade. The last thing you feel is an oblong object being forced past your jaw and slowly slipping inside your throat.";


to say nestTrilobite:
	let bonus be (( the Strength of the player - 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Strength Check):[line break]";
	increase diceroll by bonus;
	if diceroll >= 12:
		say "     A guttural growl erupts from the ceiling, and a large, octopus-like creature falls on you. It tries to overpower you with its muscular tentacle arms, and thin tendrils growing lining up its underside. Fortunately, you manage to overpower the creature and push it back. It flops almost pathetically on the nest's floor, while you put as much distance as possible between you and it.";
		xenoNestWin;
	else:
		say "     A guttural growl erupts from the ceiling, and a large, octopus-like creature falls on you. Its muscular tentacle arms wrap around your body while the sheer weight flattens you on your back. The creature's arms squeeze tight, preventing you from struggling while thin tendrils wrap around your head and lock it in place against a long slit of the creature. A thick, tongue-like organ slides out of the hole and into your mouth. It stretches your [face of Player] jaw and dives into your esophagus, creating a visible bulge in your throat. You wiggle on the fleshy floor with your aggressor while you slowly asphyxiate from the constriction and the organ gagging your mouth. Your last conscious feeling is the sensation of an oblong object being forced past your jaw and slowly slipping inside your throat.";

to xenoNestFailure:
	ovichance;
	now Resolution of Xeno Nest is 1;
	WaitLineBreak; [Wait Line break from previous scene]
	say "     When you wake up, an uncertain amount of time later, you take a moment to get back your bearings. Through attempts to move the different parts of your body, you realize that you are encased in one of the flesh walls you were walking through, before the attack. Instead of a dark corridor, you are in a large room, which seems to be designed to hold more prisoners like you, although you are alone at the moment. You cannot move your neck a lot, and a flash mask obstructs your vision, but you see that a small group of drone-like critters skitters towards your defenseless, naked body. All of them are linked to the flesh structure with a thick, organic tube. [if Breast Size of Player > 0]The first creatures that come your way are strange, pinkish bag-on-legs. They climb your body, and each of them clamp on one of your breasts, stretching to accommodate their [short breast size desc] size. After this, they seem to fit together to form a solid breastplate. [end if][if Player is male]Next comes another bag-like creature, this time looking more like an eldritch octopus. Its limbs wrap around your groin while its mouth gulps down your scrotum, balls and cock[smn] together, having no problem swallowing everything whole despite the size. [end if]One last creature, crab-shaped, attach itself to your crotch, espousing its form perfectly. Once everything is attached safely on your body, you are barely visible inside your prison of flesh.";
	say "     For a moment, nothing happens. You realize too late that the living organism you are trapped in was waiting for you to wake up, and go to the next step as soon as you attempt to struggle. [if Player is male]The octopus drone starts sucking your cock[smn] and fondling your balls. You grow hard in seconds, which prompts the drone to insert its tongue[smn] inside your shaft[smn], and sound [ittheym]. [end if]Tentacles of various sizes grow under the crab drone's inner side and [if Player is purefemale and anallevel is 3 and wslevel is 3]force their way inside each of your holes, even your urethra[else if Player is female and anallevel is 3]force their way inside your puss[yfn] and your ass[else if Player is purefemale and wslevel is 3]force their way inside your puss[yfn] and your urethra[else if Player is female]force their way inside your puss[yfn][else if anallevel is 3]force their way inside your ass[else]massage your backside[end if]. As your mouth is wide open from the shock, the flesh mask grows inward and slides inside your mouth, then your throat. A thick substance is forced in your stomach, and seems to act as a stimulant and as an aphrodisiac[if Nipple Count of Player > 0 and Breast Size of Player > 0]. Under its effect, your breasts start to fill with milk. The organic breastplate promptly squeezes on them, forcing them to eject the fresh milk inside their internal reservoir[end if].";
	say "     You realize quickly, once the after-shock fades, that it would be in your best interest to escape from this predicament while you still can.";
	WaitLineBreak;
	xenoNestBoundState;

to xenoNestWin:
	WaitLineBreak;
	say "     You reach the building's last floor and walk in an abandoned IT company office. You patrol the different desks, until you find a storage room filled with food and water supplies. Either you have found the developers['] secret stash, or someone had assembled these supplies in the first days of the nanite plague. In any case, these are yours to pick, and there are entire cardboxes of each of them.";
	xenoLoot;
	if xenoNestisCautious is 0:
		now Resolution of Xeno Nest is 2;
	else:
		say "     You turn back and check if you are still in the clear. Everything is calm for now. It seems that your speed-run has given you enough time to pack more supplies. You put your attention back to the food and water stocks.";
		xenoLoot;
		now Resolution of Xeno Nest is 3;
	say "     A ferocious roar coming from the lower floors interrupts your looting. You stand back and look behind you, worried. The creatures do not seem to be interested in these supplies, but they seem to have caught your smell, and the growls are getting closer and closer. You zip up your backpack, and hurry in direction of the emergency exit. The emergency staircase are missing the ground floor, but you manage to jump down without too much trouble. However, you will have to travel through the nest again if you want to return to the supply stash.";

to xenoLoot:
	say "     You make some place in your backpack, then turn towards the supplies. [bold type]What will you grab?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Food.";
	say "     ([link]N[as]n[end link]) - Water.";
	if Player consents:
		LineBreak;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of water bottle by 2;
	else:
		LineBreak;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 2;

Section 3 - Bound State

[TODO: Plan variations for lustatt>79]

to xenoNestBoundState:
	psycheeval;
	libidoeval;
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	now boundsegment is 4;
	while Trixieexit is 0:
		now boundstate is true;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			xenoNestBoundOrgasm; [Calls the function defined later on]
			ovichance;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 5) + 1;
			now lustatt is Libido of Player;
			xenoNestBoundSanityOrgasm; [Calls the function defined later on]
		now enduring is false;
		say "[xenoNestBoundDesc]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Struggle: [xenoNestBoundStruggleBar][line break][run paragraph on]";
		if humanity of Player < 1: [Lost all sanity. Instant game over.]
			say "     Game over desc";
			WaitLineBreak;
			now bodyname of Player is "XenoNestHost";
			now humanity of Player is 0;
			end the story saying "Kept prisoner in the xeno nest, you are constantly milked of your sexual fluids, while welcoming new eggs in your body and birthing new creatures. You feel, rather than see, new people being added one-by-one to the nursery, and the nest slowly grows, ready to propagate its strain of mutation throughout the rest of the world.";
			now Trixieexit is 1;
		else: [Section of actions possible during the bind.]
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle": [player picked struggle]
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < boundsegment: [Determines if the cumulative "struggle attribute" < or equal to bound stage. If equal to, the player escapes. Each orgasm will remove struggleatt.]
					say "     [one of]You pull on your arms with all your strength, in order to break the waxy material keeping you prisoner[or]Using your trapped limbs as a lever, you flex your body in an attempt to break out[or]You wiggle back and forth, and try to use the momentum to wear down the flesh wall trapping you[at random]. [one of]You feel your bindings crack under your efforts[or]You hear the promising sound of cracks forming inside the organic cement[or]You feel the thick matter strain, trying to stretch and hold you down[at random].";
				else: [player escapes the bind]
					say "     Your efforts pay off, and your arms suddenly snap off from their encasement. Using them as support, you break the rest of your bindings, and step down on the floor. With some effort, you pull out the various implements attached to your body. Just in time, as another set of eggs were making their way towards your orifices[if Libido of Player >= 75]. However, you are not quick enough to prevent the nursery drones to coax another orgasm out of you, promptly absorbed into the main structure[end if].";
					say "     The environment around you is eerily silent. You realize that you were brought in a recently built part of the nest, and that you are right next the exit, with no guards or traps in sight. You spot your bag and your clothes, put aside in a corner. After recovering your possessions, you run away as fast as your state allows you.";
					if Libido of Player >= 75, now Libido of Player is 74;
					LineBreak;
					cleanboundmemory;
					now Trixieexit is 1;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2": [player picked oblige/abide - currently no custom text for each!]
				LineBreak;
				say "     [one of]You grind your hips as much as your encased state allows you, and let the drones work your [Body Size Adjective of Player] body, a debilitated smile on your face[or]You bite your lower lip as you hump the drones molesting your body, trying to get closer to your climax[at random].";
				now obliging is true;
			else: [player picked endure/recover]
				now enduring is true;
				LineBreak;
				if boundrecover is true: [recover]
					increase humanity of Player by 2 + psycheadjust;
					if humanity of Player > 100, now humanity of Player is 100;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity, recovering a small portion of your lost humanity.";
					LineBreak;
				else: [endure]
					say "     [one of]You grit your teeth and try to think about other things, while you attempt to resist your sexual torture[or]You breathe deeply through the flesh mask, as you try to stave off your approaching orgasm[or]You clench your body and try to ignore the drones coaxing another orgasm out of you[at random].";
			if Trixieexit is 0:
				if boundrecover is false, xenoNestBoundSanityPassive;
				xenoNestBoundLust;
				if obliging is true, now obliging is false;
				if boundrecover is true, now boundrecover is false;
			WaitLineBreak;
			next;


[
The following section is included in order of appearance in-game.
- xenoNestBoundOrgasm appears at the top on a new turn if the player cums.
- xenoNestBoundDesc always prints below these but above the options list.
]

to xenoNestBoundOrgasm: [Orgasm description. Progresses to next bound segment.]
	say "     You feel a powerful orgasm coming, thanks to relentless efforts of the alien devices, and bulges begin to travel up and down the organic tubes linked to your body, while you exchange fluids and eggs with the nest. [if Player is male]Your [cock of Player] cock[smn] release[smv] a [Cum Load Size of Player] load. To your greatest frustration, it is instantly sucked in by the sound in your urethra, denying any satisfaction on this side. [end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]The product of the relentless milking of your [short breast size desc of Player] breasts is siphoned by your living prison. [end if][if Player is female]You puss[yfn] quiver[sfv] violently as the drone pistoning inside you collects every drop of fem-cum [ittheyf] produce. The additional lube helps spherical eggs make their way into your womb, stretching your [cunt size desc of Player] cunt[sfn] along the way. [end if][if wslevel is 3 and player is female]Even your piss is absorbed through the tendril resting in your urethra, as the climax makes you lose control of your bladder. [end if][if anallevel is 3]Eggs transit through the organ buried into your ass, each round solid object stretching your sphincter as they slide through in direction of your stomach. [end if]The mask feeds you a bitter sludge through the tentacle buried in your throat, in order to keep you fed and awake through your ordeal.";
	say "     The various drones and tentacles using your body do not mark any kind of pause, and are already trying to force another orgasm of your increasingly tired body.";

to say xenoNestBoundDesc: [Displays at the top of the bound screen after every action. Modified by current bound stage.]
	say "     You are solidly encased in one of the flesh walls of the alien nest. Organic material covers your arms and your legs, and you are only able to flex your body, as a number of drone-like creatures are attached to your body, each of them linked to the main structure with thick tubes. [if Player is male]An octopus-shaped creature is wrapped around your groin, sucking a massaging your [cock of Player] cock[smn], and tugging and squeezing your [ball size], while a straw-like probe is buried in your cock-slit[smn], awaiting to drink your cum. [end if]Another, crab-like drone is wrapped around your crotch. [if Player is female]It is busy pistoning thick tentacle-shaped organs inside each of your lower orifices, while its tiny mouth sucks and plays with your clit. [else if anallevel is 3]It is busy pistoning a thick tentacle-shaped organ inside your ass, drilling all the way up to your stomach then back. [end if][if Player is female and wslevel is 3]There is even a small tendril wiggling and twisting inside your urethra. [end if][if Nipple Count of Player > 0 and Breast Size of Player > 0]Your breasts are trapped under a fleshy breast-plate, which constantly squeezes warm milk into ever-growing, individual reservoirs. [end if]A organic mask blocks your lower face. A thick tentacle extends from it, invading your throat and straining your jaw, air given to you through small slits at nose level.";
	if lustatt < 75:
		say "Your living prison is relentless in its efforts to bring you to an uninterrupted series of mind-crushing orgasms.";
	else:
		say "Your living prison keeps working on your increasingly agitated body, redoubling their efforts as they feel that you are about to orgasm";
	say "     You could try to [bold type]S[roman type]truggle, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] your predicament, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] the relentless motions.";

to xenoNestBoundLust: [Passively increases the player's lust attribute. Higher bound segments increase the per-turn lust gain.]
	let obladj be 1;
	if obliging is true:
		now obladj is 2; [Value to multiply lust gain by if obliging.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide lust gain by if enduring.]
	increase lustatt by ((10 + (lustadjust * 2)) * obladj) / endureadj;

to xenoNestBoundSanityPassive: [Passively decreases the player's sanity attribute. Higher bound segments increase the per-turn sanity loss.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	decrease humanity of Player by 4 / endureadj;

to xenoNestBoundSanityOrgasm: [Causes sanity to sharply plummet upon orgasm.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if struggleatt is 1:
		now struggleatt is 0;
	else if struggleatt > 1:
		decrease struggleatt by 2;
	decrease humanity of Player by (10 + psycheadjust) / endureadj;

to say xenoNestBoundStruggleBar: [Displays struggle bar. The amount of struggle turns necessary to escape is always equal to the bound segment.]
	say "[close bracket]-[if struggleatt > 2]X[else]-[end if][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";

Xeno Nest ends here.
