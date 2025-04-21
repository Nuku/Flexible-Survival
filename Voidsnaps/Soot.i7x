Soot by Voidsnaps begins here.

Section 1 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Soot	"Soot"

Soot is a man.
ScaleValue of Soot is 3. [human sized]
Body Weight of Soot is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Soot is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Soot is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Soot is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Soot is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Soot is 12. [length in inches]
Breast Size of Soot is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Soot is 2. [count of nipples]
Asshole Depth of Soot is 10. [inches deep for anal fucking]
Asshole Tightness of Soot is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Soot is 2. [number of cocks]
Cock Girth of Soot is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Soot is 15. [length in inches]
Ball Count of Soot is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Soot is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Soot is 0. [number of cunts]
Cunt Depth of Soot is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Soot is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Soot is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Soot is false.
PlayerRomanced of Soot is false.
PlayerFriended of Soot is false.
PlayerControlled of Soot is false.
PlayerFucked of Soot is false.
OralVirgin of Soot is false.
Virgin of Soot is false.
AnalVirgin of Soot is false.
PenileVirgin of Soot is false.
SexuallyExperienced of Soot is true.
TwistedCapacity of Soot is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Soot is true. [steriles can't knock people up]
MainInfection of Soot is "Dragomancer". [Always match the capitalization of the infection. Case sensitive.]
Description of Soot is "[SootDesc]".
Conversation of Soot is { "<This is nothing but a placeholder!>" }.
The scent of Soot is "[SootScent]".
Soot is in Pocket Universe.

to say SootDesc:
	say "     A single green eye with a slit pupil stares back at you from a mostly bandage-covered face. Tufts of white hair stick haphazardly out of a mess of bandages, framing the predatory orb. Despite the fearsome appearance of that single eye, you can't feel any enmity from its owner, and judging by his relaxed posture, he doesn't mean you any harm. Still, you can't help but feel he's hiding something from you. You can't see much else besides a vaguely masculine, skinny form wrapped in nondescript robes that seem designed to hide Soot's silhouette.";
	if "Half-transformed" is listed in traits of Soot:
		say "    The dragomancer's appearance has changed significantly thanks to your efforts. He stands more proudly, and his once almost useless arm works without issue, though his face is still deformed. You can't help but wonder what he'll look like once you finish your quest to capture and conquer his four dragons.";

to say SootScent:
	say "     Strangely metallic scents waft from the bandaged man, mixed with a slight odor of brimstone, and something akin to burning hickory. Overall, not the worst, though you can't help but wonder why he smells so... burned.";

instead of fucking Soot:
	say "     As though reading your mind, Soot holds up a hand before you can speak. 'I'm afraid that won't be possible. Perhaps there was a time and place where I might take you up on your offer, but as I am now... It's simply not possible.' Shaking his head, Soot smiles with far too many teeth. 'Though you might channel that energy toward something that pleases us both.' ";
	if "Quest Revealed" is listed in Traits of Soot:
		say "Nodding toward the quartet of nearby doors, Soot waves his hand. 'Off you go.'";

instead of conversing Soot:
	say "      Approaching the mysterious man, you try to think of what to say. Strangely, he appears to have all the time in the world, sipping a mug of tea that you're SURE didn't exist a second ago and sitting in a comfortable chair behind his ornate desk.";
	say "[SootConversationMenu]";

to say SootConversationMenu:
	now PlayerMet of Soot is true;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Quest Revealed" is listed in Traits of Soot and "Helios Captured" is not listed in Traits of Soot:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the first part of the quest";
		now sortorder entry is 1;
		now description entry is "Now that you've proven you're good enough for Soot's requirements, ask him what you need to do next";
	[]
	if "Quest Revealed" is not listed in Traits of Soot:
		choose a blank row in table of fucking options;
		now title entry is "Ask why Soot brought you here";
		now sortorder entry is 2;
		now description entry is "Ask Soot what this place is and why he brought you here.";
	[]
	if "Helios Captured" is listed in Traits of Soot and resolution of Hard Bargain is 1 and "Hunting Alon" is not listed in Traits of Soot and Alon is not in Glittering Gate:
		choose a blank row in table of fucking options;
		now title entry is "Ask Soot what your next target is after Helios";
		now sortorder entry is 3;
		now description entry is "Ask Soot where your next dragon quarry is.";
		sort the table of fucking options in sortorder order;
	[]
	if OffSpringCount of Helios is 4 and OffSpringCount of Alon is 4:
		choose a blank row in table of fucking options;
		now title entry is "Tell Soot you've been upholding your end of the bargain";
		now sortorder entry is 4;
		now description entry is "Tell Soot that it seems like you've birthed quite a few eggs for him.";
		sort the table of fucking options in sortorder order;
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask about the first part of the quest"):
					say "[SootQuestPartOne]";
				else if (nam is "Ask why Soot brought you here"):
					say "[SootIntroduction]";
				else if (nam is "Ask Soot what your next target is after Helios"):
					say "[AlonHuntStart]";
				else if (nam is "Tell Soot you've been upholding your end of the bargain"):
					say "[QuestPartOneDone]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the mysterious mage, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Dragomancer"	"[PrepCombat_Dragomancer]"

to say PrepCombat_Dragomancer:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dragomancer"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Dragomancer" to infections of MagicalList;
	add "Dragomancer" to infections of MythologicalList;
	add "Dragomancer" to infections of MaleList;
	add "Dragomancer" to infections of BipedalList;
	now Name entry is "Dragomancer"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "Soot"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Soot"; [ Specific name of unique enemy. ]
	now enemy type entry is 2; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Soot lashes out with a sword that appears in his left hand, attacking from your blind spot![or]Transforming one of his arms into a dragon's set of claws covered in gold scales, the dragomancer flies forward and slashes at you[or]Murmuring something unintelligible, the dragomancer summons a complicated set of runes and then points at you, sending you flying into the nearest wall.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now ass change entry is ""; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "";
	now str entry is 25; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 25; [ These values may be used as part of alternate combat.]
	now per entry is 40;
	now int entry is 25;
	now cha entry is 30;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 220; [ The monster's starting HP. ]
	now lev entry is 18; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 18; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 5; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "dragonmancer milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "";
	now magic entry is true; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say SootQuestPartOne:
	say "     Now that you've squared everything away, it's time to let Soot know you're ready for whatever he wants you to do. You make it clear that you're only going to participate if you hear the whole story, and if he wants your help, he'll have to make sure that he doesn't hold anything back. You've seen far too many movies and TV shows where this exact situation backfired. 'Hah! Excellent.' Amused by your warning, Soot shakes his head. 'I assure you, I have no ulterior motives. My method may be objectionable to some, but you may find it amenable.' Soot grasps your hand, pressing a yellowed parchment into it. 'First, the method to find the first dragon. Flourish this and say my name, and it will guide you to your quarry.'";
	say "     Stowing the parchment, you ask what Soot wants you to do once you find the dragon. Does he want you to kill it? Subdue it? You're not sure that you can drag a dragon through the streets back to this place, let alone fend off other creatures while doing it! 'Not a problem.' The dragomancer painstakingly removes his arm from its bondage at his chest, revealing a draconic limb that shakes with the slightest effort. Slowly, he traces his finger over your palm, drawing a glowing rune with an intricate, almost pulsing design. 'Once you've found the first, press your palm to its scales. My magic will do the rest. I'm afraid I can only weaken it slightly, but it should allow you to defeat it. Once the wyrm falls, I'll bring you both back here.'";
	WaitLineBreak;
	say "     Wincing in apparent pain, Soot returns his arm to its makeshift sling, waving you toward the door. 'Go, now! Once you've captured your quarry, I'll walk you through the rest of the process.' You still have so many questions, but you're sure that the dragomancer has his reasons for explaining things in easily digestible chunks. It would be better to do as he asks if you want to know what's happening. Before you head out, you should [bold type]Consult The Parchment[roman type].";
	TraitGain "Dragon Parchment" for Soot;
	TraitGain "Hunting Helios" for Soot;

Dragonparchment is an action applying to nothing.
Understand "Consult The Parchment" as DragonParchment.
Understand "Consult Parchment" as DragonParchment.

carry out DragonParchment:
	if "Hunting Helios" is listed in Traits of Soot:
		say "     You pull out the parchment and say Soot's name. Almost immediately, the paper lights up, and words appear one at a time, etched in a glowing ink. 'Helios. The first. A prideful sort. Seek him where the fire still burns.' At the same time, an arrow appears below the text, swirling for a moment, before swiveling to point toward the [bold type]Capitol Building. [roman type]Maybe you should look there? The text hints that you'll find the dragon in a [bold type]hot place, like a vocanic crater.[roman type][line break]";
	else if "Hunting Alon" is listed in Traits of Soot:
		say "     You pull out the parchment and say Soot's name. Almost immediately, the paper lights up, and words appear one at a time, etched in a glowing ink. 'Alon. The second. Playful to a fault. Seek him where the water pools.' At the same time, an arrow appears below the text, swirling for a moment, before swiveling to point toward the [bold type]Reservoir. [roman type]Maybe you should look there? The text hints that you'll find the dragon in a [bold type]wet place, like the swamps.[roman type][line break]";
	else:
		say "     You pull out the parchment and say Soot's name, but strangely, the paper appears unreactive, staying its usual yellow color. Shrugging, you put it away. Maybe you should [bold type]Check whether there are any more dragons Soot wants you to find first.[roman type][line break]";

to say SootIntroduction:
	say "     Asking Soot exactly why he chose you, you wonder aloud if there's some reason. After all, you're not the strongest mutant in the city, and wouldn't it be better if he picked someone from Earth who hasn't exposed themselves to the nanites? There must have been better choices. 'Hm. Perhaps I see a little of myself in you. Ever curious, exploring the tattered ruins of a destroyed civilization.' Soot leans forward in his seat, taking on a nostalgic look, his hand on his chin. 'And a certain mix of... qualities I require. I've seen what you've gotten up to.' Winking as he makes a hand motion akin to stroking something, the dragomancer heavily implies he's been watching your less-savory interactions. Suddenly bashful, you thank Soot for his honesty. Maybe it's right to trust him, but you still have doubts.";
	TraitGain "Quest Revealed" for Soot;

to say AlonHuntStart:
	say "     Asking Soot whether he has another target for you to hunt, you eagerly lean over the desk, wondering aloud if they'll be as hard to fight as Helios was. Soot sips at a cup of tea, waving his hand to stop your questions and pulling your palm over to inspect the spot where the rune was before you used it on Helios. Drawing another, more intricate series of symbols, he releases it and waves you toward the exit. 'You know what to do! Find him, touch him, and I'll bring him here once you defeat him!' Despite his dismissive and jovial attitude, you can see the cup shake in his hands. Is he excited about getting to leave this place?";
	TraitGain "Hunting Alon" for Soot;

Section 2 - After Defeating Helios

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Hard Bargain"	Hard Bargain	"[EventConditions_Hard Bargain]"	Pocket Universe	2500	2	100

to say EventConditions_Hard Bargain:
	if "Helios Captured" is listed in Traits of Soot and "Hard Bargain" is not listed in Traits of Helios: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Hard Bargain	"Hard Bargain"

Hard Bargain is a situation.
ResolveFunction of A Hard Bargain is "[ResolveEvent Hard Bargain]".
Sarea of Hard Bargain is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]
Level of Hard Bargain is 0. [minimum level to encounter randomly]

to say ResolveEvent Hard Bargain:
	say "     Returning to the pocket universe through a conveniently placed door on a nearby wall, you follow the long hallway to Soot's desk. To the left, you can see that one of the doors is glowing with golden flames, setting itself apart from the comparatively drab entrances around it. If you weren't close enough to feel the lack of heat wafting from it, you'd almost think it was on fire! Drawing your attention away from admiring the fancifully flickering door by clearing his throat, Soot beams from behind his desk, magicking a cup of tea from thin air and pressing it into your hand. 'Congratulations! I knew you were the man for the job. A true dragonslayer, the envy of any knight!' Indicating the lively fireworks display roiling on the nearby doorway with his unbandaged hand, Soot continues. 'I've contained your quarry. I can suppress untoward intentions within this place, so don't worry. There's no danger. All he can do is throw his size around for a moment before the wards kick in. Completely harmless.' Soot shakes his head after a moment's thought. 'Ah, yes! Forgive me, I'm so excited, I forgot to offer your reward. [bold type] Would you prefer brains or brawn?'[roman type][line break]";
	let Soot_Statup1_Choices be a list of text;
	add "Brains. You're not sure what Soot means, but you've always preferred that approach." to Soot_Statup1_Choices;
	add "Brawn. You've never been shy about feats of strength. You're not sure what Soot  means, but the choice is clear." to Soot_Statup1_Choices;
	let Soot_Statup1_Choice be what the player chooses from Soot_Statup1_Choices;
	if Soot_Statup1_Choice is:
		-- "Brains. You're not sure what Soot means, but you've always preferred that approach.":
			say "     Brains would be the only logical choice. You extol the virtues of a sharp mind and proper planning. After all, without a good head on your shoulders, what use is any other ability? Soot nods with a serious expression. 'Well said! It seems we have the same outlook. Though I suppose my intellect is part of why I'm trapped here.' Sighing and shaking his head after a quick rumination, he snatches your palm and draws a quick symbol on your forearm. Within seconds, the symbol begins to sting, then fades. You notice an immediate improvement in your vision and ability to take in information, holding out your hand in front of your eyes like a blind man given the ability to see and study the bits of dirt you didn't notice before beneath your fingernails. Your perception is definitely better than it was before!";
			increase Perception of Player by 3;
		-- "Brawn. You've never been shy about feats of strength. You're not sure what Soot  means, but the choice is clear.":
			say "     Muscles are all that matters. With the ability to beat up whatever or whoever comes your way, why would you need anything else? You extol the virtues of a strong fist, stating that if you can crack it over the head hard enough, even a god wouldn't be a problem! Soot chuckles and shakes his head. 'I see. I suppose that's one way to think of things. I've known many a hero with a similar mindset, so I can't fault it, though I took a markedly different path.' Snatching your hand and dragging it over, the dragomancer draws a quick symbol on your knuckles. Within seconds, the symbol begins to sting, then fades. You notice an immediate improvement in your muscles, as though your biceps gained an inch or two, and when you experimentally grip the desk in front of you, you lift it a few inches despite its solid wooden frame. There's no denying it. You've gotten stronger!";
			increase Strength of Player by 3;
	WaitLineBreak;
	say "     'Alright. Now for the hardest- or the easiest, depending on your answer- part of our little partnership.' Suddenly business-like, Soot can't seem to meet your eyes. 'I need one of two things. Either way, a mingling of your essence with theirs, but the means to that end will be somewhat unorthodox.' Sighing, Soot studies your expression. It seems he senses he can't beat around the bush any longer. 'I need you or our draconic 'friend' to gestate eggs. Which one doesn't matter- and my magic will render the contents infertile- but reproduction itself will combine the two energies so that I can safely consume it and temper myself for your world.' Leaning over the desk with a strangely serious face at odds with the content of his message, the dragomancer continues. 'I need you to fuck dragons. Specifically, the individual you just defeated, and at least three others you will help me capture. [bold type]Will you help me?'[roman type][line break]";
	let Soot_DragonFucking_Choices be a list of text;
	add "Agree without hesitation. Fuck yeah. When do you start?" to Soot_DragonFucking_Choices;
	add "That's a bit beyond what you're willing to do." to Soot_DragonFucking_Choices;
	add "Can you think about it? You're not sure if this is something you want to do." to Soot_DragonFucking_Choices;
	let Soot_DragonFucking_Choice be what the player chooses from Soot_DragonFucking_Choices;
	if Soot_DragonFucking_Choice is:
		-- "Agree without hesitation. Fuck yeah. When do you start?":
			LineBreak;
			say "     Already feeling your thighs rub together in anticipation, you wholeheartedly agree with the dragomancer's proposal. It's not like you needed much push, but you appreciate that Soot considered your feelings rather than forcing you. Already eager to get to the 'fun part,' you ask whether he needs anything else before you get to work. Blinking in surprise, Soot shakes his head. 'Well. I was hoping for a 'yes,' but I wasn't expecting such excitement. I've already prepared the dragon for my needs. You only need to have fun in any way you see fit. I'll give you some privacy.' Winking, Soot returns to his desk, producing a book from thin air and shooing you off toward the flaming door.";
			now Resolution of Hard Bargain is 1; [Let the DragonFucking begin!]
			TraitGain "MPreg" for Helios;
		-- "That's a bit beyond what you're willing to do.":
			LineBreak;
			say "     You have a bad feeling about the whole setup, and polite decline Soot's proposal. You're not willing to breed a dragon, and you're not sure how you'd justify forcing yourself on it. You'd rather leave THAT job for someone else. Soot nods sadly at your words, shrugging his shoulders. 'Ah, well. I suppose I should have known it was too good to be true. Take care of yourself!' With a wave, he sends you flying down the hallway behind you, to land back in the swamps with a surprisingly soft thud. There's no sign of the door to his pocket Universe, and you get the feeling you're no longer welcome.";
			now Resolution of Hard Bargain is 100; [Coward. No dragon sex for you!]
		-- "Can you think about it? You're not sure if this is something you want to do.":
			LineBreak;
			say "     Rubbing one hand on the back of your head, you weigh the situation. You're not certain whether you want to go through with things, but you don't want to be rude. After all, you've come this far. Can you come back later and give Soot and answer? 'Certainly. Let me know if you've come to a decision. In the meantime, I'll allow you to... inspect your prize.' Winking, Soot produces a book from below the desk and shoos you off toward the door. It seems he wants you to see the creature you captured before you make your decision!";
			now Resolution of Hard Bargain is 2; [Not sure yet.]
	now Hard Bargain is Resolved;
	TraitGain "Hard Bargain" for Helios;

instead of navigating Pocket Universe while (Resolution of Hard Bargain is 100):
	say "     You attempt to search for the usual door to Soot's pocket Universe, but give up after a while. It's nowhere to be found, and you doubt you will ever be allowed in again. Maybe [bold type]you should have just gone along with his plan if you wanted to continue interacting with him.[roman type][line break]";

Section 3 - After Winning Over Alon

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Whatever Works"	Whatever Works	"[EventConditions_WhateverWorks]"	Pocket Universe	2500	2	100

to say EventConditions_WhateverWorks:
	if "Alon Captured" is listed in traits of Soot and "Whatever Works" is not listed in traits of Alon: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Whatever Works	"Whatever Works"

Whatever Works is a situation.
ResolveFunction of A Whatever Works is "[ResolveEvent Whatever Works]".
Sarea of Whatever Works is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]
Level of Whatever Works is 0. [minimum level to encounter randomly]

to say ResolveEvent Whatever Works:
	say "     As soon as you return to the pocket Universe, Soot meets you at the door, an eyebrow raised. 'Your... friend... has been asking after you. He seems rather excited to be here. I've never seen a dragon quite this eager for captivity.' Soot waves his hand at your explanation with a knowing grin and shakes his head. 'No, no. I don't need details. It truly doesn't matter HOW you fulfill our bargain. Just let me know if you need any restrictions placed. I'll leave you to it!' Thanking the dragomancer for his discretion, you reiterate that you plan to pump out more eggs for him to use as he sees fit.";
	now Whatever Works is Resolved;
	TraitGain "Whatever Works" for Alon;

Section 4 - Interactions After Enough Egg Births

to say QuestPartOneDone:
	say "     Feeling a bit of pride at your productive capacity, you tell Soot that you've managed to fulfill quite a quota of dragon eggs so far. Is there much more that you need to do to give him a foothold in your world? Soot shakes his head at your exhuberance, letting out a wry chuckle. 'You've certainly done your part, but you've only finished roughly half of what's needed.' Tugging at the bandage on his arm, he shows off a fully dragconic appendage, free of the twisted appearance you're used to. 'As you can see, it's offered me a sort of stability I haven't seen in years, but I'm not quite finished.' Standing with a bashful smile, the dragomancer's newfound silhouette surprises you. He's much taller, and the robe around his body seems smaller on his frame. Are those claws peeking out under the hem? It seems he's trending more toward dragon features despite the peeking bits of humanity still showing under his bandaged face.";
	TraitGain "Half-transformed" for Soot;

Soot ends here.