Version 3 of Hanu by Kernog begins here.

[Version 2 - Rework of Hanu from Misc 9 by Kaleem mcintyre, integration with Zoo Month, sidequest(s) with Monkey King allowing for monkey group enemies to get released into the zoo.]
[Version 3 - Inclusion of Loyalty and PreReq features. Hanu becomes a fully-fledge NPC and is now in the newly built Monkey House.]

Section 1 - Hanu NPC

[REPLACE WITH HANU NPC AND MONKEY HOUSE]

Table of GameCharacterIDs (continued)
Object	Name
Hanu	"Hanu"

Hanu is a person. Hanu is in Monkey House.
[Physical details as of game start]
ScaleValue of Hanu is 3. [human sized]
SleepRhythm of Hanu is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Hanu is 1. [X cock]
Cock Length of Hanu is 8. [X Inches]
Ball Size of Hanu is 4.
Ball Count of Hanu is 2. [X balls]
Cunt Count of Hanu is 0. [X pussy]
Cunt Depth of Hanu is 0. [X Cunt]
Cunt Tightness of Hanu is 0. [X Cunt]
Nipple Count of Hanu is 2. [X nipples]
Breast Size of Hanu is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Hanu is false. [can not take oversized members without pain]
Sterile of Hanu is true.
PlayerMet of Hanu is false.
PlayerRomanced of Hanu is false.
PlayerFriended of Hanu is false.
PlayerControlled of Hanu is false.
PlayerFucked of Hanu is false.
OralVirgin of Hanu is true.
Virgin of Hanu is true.
AnalVirgin of Hanu is true.
PenileVirgin of Hanu is true.
SexuallyExperienced of Hanu is false.
MainInfection of Hanu is "".
Description of Hanu is "[hanuDesc]";

to say hanuDesc:
	if Monkey Duel is unresolved:
		say "[one of]Hanu stands in the middle of the repurposed Training Hall, performing katas. His graceful moves and calm expression make him look like a ballet dancer[or]Hanu is sitting in the middle of the Monkey House, meditating in a succession of poses showcasing the simian's remarkable flexibility[at random].";
	else if Resolution of Monkey Duel is 2 or Resolution of Monkey Duel is 3:
		say "Hanu is sitting in front of the throne, naked except for the collar shackled around his neck, linked with a metal chain to the throne. The monkey gives you a defeated look, then lowers his eyes as Wukong patronizingly pets his slave's head with his prehensile foot.";
	else if Resolution of Monkey Duel is 1:
		say "[one of]Hanu stands in the middle of the repurposed Training Hall, performing katas. His graceful moves and calm expression make him look like a ballet dancer[or]Hanu is sitting in the middle of the Monkey House, meditating in a succession of poses showcasing the simian's remarkable flexibility[or]Hanu is sitting in front of his more-or-less willing student as he finishes lecturing him on the importance of mastering one's mind and body. From Wukong's [if humanity of Wukong < 3]exasperated[else]bored[end if] expression, you are not sure if Hanu's message is finding open ears[at random].";
	else:
		say "Unexpexted Resolution of Monkey Duel: [Resolution of Monkey Duel] Please report this on the FS Discord.";

Instead of going to Monkey House while (Resolution of Monkey Duel is 0 and Monkey Duel is inactive):
	say "Coming to one of the less exposed area of the zoo you find yourself coming across a monkey-shifted man sitting quietly on top of a rock, meditating in the lotus position. 'About time you showed up.' The voice of the simian catches you slightly off guard as you find the other speaking to you while keeping his eyes close. 'Yes, I'm talking to you. Come on over here so we can start training.'";
	say "You look at him, intrigued, while his long tail slowly curls around the left side of his body. He gives off an aura of calmness, with his groomed dark brown fur ruffled softly by the wind alongside his long, straight hair, and his slow breathing shifting the abdominals of his trained body. His face beams with a light smirk as he awaits your answer. [bold type]Do you want to train with this strange simian?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "Deciding what the hey you move over to where the other creature is, hopping over the fence that separates you both as you do, and then step over to the monkey man. What happens next turns out to be something you hadn't been expecting because instead of sex... you wind up finding yourself being asked several strange questions by the other, whose name happens to Hanu, and then being shown several strange yoga positions, which you find yourself going through with some problems. The next hour and a half of your life ends up being spent with Hanu meditating, a strange practice in and of itself, all things considered. However, end up finding yourself very refreshed once the moment is done.";
		say "'That was fun.' Hanu slowly uncrosses his legs and then uses his tail to lift himself up onto his feet. 'I think that I'm going to go and head back for home now. I hope you take well care of yourself[if Player is not defaultnamed], [name of Player][end if].' And with that Hanu springs up over your head up onto the concrete wall that divides the zoo from the outside world, turns to wave at you and then disappears out of sight. Not sure what that was about you mildly wonder who that crazy monkey guy was.";
		decrease Libido of Player by 10;
		if Libido of Player < 0, now Libido of Player is 0;
		SanBoost 20;
		Increase maxHP of Player by 5;
		Increase score by 5;
		now Monkey Duel is active;
	else:
		LineBreak;
		say "You politely refuse Hanu's offer, arguing that you have more pressing matters. 'Hmf,' the monkey replies. 'You should take the time to meditate and reflect on your personality. I remain here. Come back and talk to me if you reconsider my offer.";
		now Resolution of Monkey Duel is 99; [postponed]

instead of conversing Hanu:
	if Monkey Duel is inactive:
		say "     'Are you reconsidering my offer?' Hanu asks in return of your greetings. 'Do you wish to train with me?'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Deciding what the hey, you move over to where the other creature is, hopping over the fence that separates you both as you do, and then step over to the monkey man. What happens next turns out to be something you hadn't been expecting, because instead of sex, you wind up finding yourself being asked several strange questions by the other, whose name happens to Hanu, and then being shown several strange yoga positions, which you find yourself going through with some problems. The next hour and a half of your life end up being spent with Hanu meditating, a strange practice in and of itself, all things considered. However, you end up finding yourself very refreshed once the moment is done.";
			say "     'That was fun.' Hanu slowly uncrosses his legs and then uses his tail to lift himself up onto his feet. 'I think that I'm going to go and head back for home now. I hope you take well care of yourself[if Player is not defaultnamed], [name of Player][end if].' And with that, Hanu springs up over your head up onto the concrete wall that divides the zoo from the outside world, turns to wave at you, and then disappears out of sight. Not sure what that was about, you idly wonder who that crazy monkey guy was.";
			decrease Libido of Player by 10;
			if Libido of Player < 0, now Libido of Player is 0;
			SanBoost 20;
			Increase maxHP of Player by 5;
			Increase score by 5;
			now Monkey Duel is active;
	else if Monkey Duel is unresolved and (Take My Royal Word For Granite is resolved or Hunt Of Mammoth Proportions is resolved):
		monkeyDuel;
	else if the resolution of Monkey Duel is not 1:
		say "[one of]     'P-Please, help me,' the monkey whispers, before Wukong pulls on his leash.[line break]     'What was that?' the younger simian asks as Hanu gasps, then looks at the ground once more. 'That's what I thought. You're my pet, so I expect of you to talk like one.'[line break]     'E-Eeek. Eek,' Hanu makes in a resigned tone.[line break]     'Better.'[or]     'Ook,' Hanu replies plaintively.[line break]     'My pet is well-behaved, is he not?' Wukong asks mockingly.[stopping]";
	else:
		say "     'Hello, my friend. I hope that you are well,' Hanu greets you. '[if humanity of Wukong < 1]Our simian friend is a turbulent student, and I had to use the shocking collar a fair number of times. But he will learn, eventually[else if humanity of Wukong < 3]Our common friend is showing admirable progress. I only need to discipline him once a day, now[else]I am very proud of Wukong; he is ready to become a proper student. Although I think I will keep his current outfit for, um, reasons. Humor an old monkey, will you[end if].'";

instead of fucking Hanu:
	if Monkey Duel is unresolved:
		say "     The monkey chuckles. 'I am flatted by your proposal, my friend, but I must refuse. My mind fights with the urges that came with this body, and I cannot allow any lapse.'";
	else if Resolution of Monkey Duel is 1:
		say "     Hanu smiles. 'I must once again deny your request. However, if lust stirs your loins, you can train with me and Wukong to work it out.' [bold type]What do you say?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Train";
		now sortorder entry is 1;
		now description entry is "Train alongside Wukong";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Assist";
		now sortorder entry is 6;
		now description entry is "Assist Hanu in his training";
		sort the table of fucking options in sortorder order;
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
					if nam is "Train":
						say "[WukongTrainingTrain]";
					if nam is "Assist":
						say "[WukongTrainingAssist]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You shake your head and politely refuse Hanu's offer. 'A shame. We are on the same boat, here,' the monkey replies. 'In order to retain our sanity, mental fortitude is needed. Come back if you reconsider.'";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "     'You wish to use my pet?' Wukong asks, grinning. 'He is mine to use as I see fit, so I cannot let you have him. However, you can assist me, for my amusement.' The monkey fetches a vibrating wand from behind his cushion, then throws it at you.";
		say "     'Keep him busy until I say so. Don't mind him, even if he cums.'";
		say "     You ready the wand, and kneel [if Player is dominant]excitedly[else]hesitantly[end if] in front of Hanu. The old monkey wiggles, and attempts to plead silently, but you ignore him, and press the wand against his crotch. Then, you turn on the toy.";
		say "     [italic type]Bzzzzz![roman type] 'Oooh! Nnnnf!' Hanu groans loudly while the vibrations stir his cock to life.";
		say "     In the meantime, Wukong slides forward and turns his rival's face towards his growing cock. 'I won't have my assistant stop until I get one off. So work diligently.'";
		say "     'Nnnf! Aaah...' Hanu's body jerks as you hit one of his good spots. Then, he slips the tip of Wukong's dick inside his mouth and begins sucking it. Holding the old monkey's head flat against the throne's seat, Wukong lets gravity push his shaft down Hanu's throat. 'Gmmmrf!'";
		say "     Hanu has a lot of trouble focusing, with you running the wand up and down his member. Wukong is simply content watching the show while he lets his sex slave handle the slab of meat in his throat. You notice Hanu's body tense up, and his fingers and toes curl as he approaches the edge of climax. [bold type]How should you proceed?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Edge him.";
		say "     ([link]N[as]n[end link]) - Milk him.";
		if Player consents:
			LineBreak;
			say "     You remove the wand at the last second. Hanu, who is unable to see what's going down, with his face teabagged by Wukong, sighs with relief. His cry of distress when you press the wand on his cock once more amuses the monkey king greatly. 'Oh, yes. Keep screaming around my cock,' he sighs. Hanu desperately attempts to keep the wand out of reach, but Wukong quickly grabs his arms and pull them up. Once again, Hanu's breathing accelerates. Once again, you deny him release, and the cycle plays again.";
			say "     Eventually, it is Wukong's turn to grunt. 'Raah! Nnnf... Rrrraaah!' The visible and audible gulps of Hanu's throat turn you on immensely. 'Turn it off,' the monkey king asks you as he pulls out of Hanu's mouth. Hanu moans loudly in protest, then when his mouth is finally free. 'P-Please end this torment! Pleas-Urk!'";
			say "     'Language,' Wukong growls while pulling on Hanu's collar.";
			say "     'Oo... Oook. Oook?'";
			say "     Wukong laughed, and grabbed Hanu's cock with his feet. 'That's it! That's what you are: a little monkey pet. Now, cum! Make sure the whole city hears you howl like an animal!'";
			say "     'Oook! Oookoooh! Ooooh!' You wisely move out of the way, in time for Wukong's stroking feet to coax an eruption of cum exploding from Hanu's cock and splashing a long line in front of the throne. 'Aaaahuuuu!' the monkey keeps screaming, eyes closed.";
		else:
			say "     You keep the wand, until Hanu moans loudly around Wukong's cock. Ropes of cum launch out of his own member, and drop down on his body. Hanu's moans of pleasure progressively turn into cries of distress as he realizes that the wand is still not stopping. Hanu desperately attempts to keep the wand out of reach, but Wukong quickly grabs his arms and pull them up. 'Hands off, pet! You can only blame yourself for this.'";
			say "     'Nnnmf!' Hanu wiggles and struggles, but the wand is still there, harassing him, steadily building a second orgasm.";
			say "     Said orgasm comes only a few minutes after. Hanu lets out raspy moans as more cum flows up, but less in quantity and in a less spectacular fashion. Wukong obliviously keeps riding Hanu's mouth. 'Mmmm! Coming soon. Can't believe you can cum more than twice while I only get one. What a naughty pet.' Hanu whimpers, but his struggles have become not much more than exhausted shudders.";
			say "     Just as Wukong cums inside Hanu's throat, Hanu lets out a pathetic whimper as his sex lets out only a few drops of sperm. A panting Wukong chuckles at the spectacle, and his feet leisurely play with his sex pet's cum-coated fur.";
		say "     Satisfied by the outcome, Wukong releases Hanu, and lets the exhausted simian slump down on the floor, completely exhausted. 'Well, that was fun,' Wukong says as he plays with Hanu's cum on his feet, then negligently rubs it off his prisoner's fur. 'We should do it again later.'";

Section 2 - Monkey Duel

Table of GameEventIDs (continued)
Object	Name
Monkey Duel	"Monkey Duel"

Monkey Duel is a situation.
ResolveFunction of Monkey Duel is "".
Monkey Duel is inactive.
Sarea of Monkey Duel is "Nowhere".

to MonkeyDuel:
	say "     'About time you showed up[if Player is not defaultnamed], [name of Player][end if].' a familiar voice calls you out as you pass under a large tree. Hanu, the monkey with whom you meditated with earlier, is sitting leisurely on one of the branches, his long tail waving at you. With surprising agility, Hanu jumps down from his perch and makes a perfect landing just in front of you. 'You seem to have a habit of being late for training, my pupil. But no matter, let us practice our kung fu together.'";
	say "     The monkey's words make you remember about your (mis)adventures with the only other monkey you know. [bold type]Should you bring up Wukong's existence to Hanu?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - As long as you skip another meditation session.";
	say "     ([link]N[as]n[end link]) - No more monkey business.";
	if Player consents:
		LineBreak;
		say "     'The Monkey King? At the Museum?' Hanu remains silent a short moment, before smiling softly. 'What an interesting story you have, my dear pupil. And worrying too.' He puts a hand to his chin, pensive. 'This [']Wukong['] person seems quite the brash ruffian, and violent too. He is completely misusing his natural talents[if Loyalty of Wukong is 2]. And to top it off, it seems that he encouraged you to follow his ways[else]. And to top it off, it seems that you had to take responsibility for his actions instead of me[end if]. You did good to bring the existence of this person to my attention.'";
		say "     'I need to take responsibility as well, and bring him to reason. It is time for me to go on a journey to the Museum. [bold type]Will you accompany me?[roman type]'[line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     'Good,' Hanu nods. 'And I have the best tool for the situation at end. Wait for me at the entrance of the Museum.'";
			say "     A moment later, you arrive at the rendezvous point. Hanu meets you a dozen minutes later. He came with his own martial arts staff, but also with a heavy-looking collar. Noticing your interest for the item, Hanu hands it to you. The collar is mostly leather, albeit you notice a thick metallic thread running around the inner side, and a small block at the back of the collar, with a lightning bolt sticker on it. 'Yes, this is what you think it is,' the monkey says. 'A [']crown['] of some sort, for our brash king, like in the story. Now, let us not waste time.'";
			WaitLineBreak;
			say "     You guide Hanu to the Asian exposition, and its tacky decorum. As usual, Wukong is there to welcome you. [if Loyalty of Wukong is 2]'If it is not my most trusted servant. And who are you bringing with you? A new friend?'[else]'You little pile of manure! How dare you show your face to me?! And who did you bring? An imposter?'[end if]";
			say "     'My name is Hanu,' the other monkey introduces himself. 'And I am here to teach you some manners.'";
			say "     'We finally meet. It does not matter. I finished breeding my own little court, and I will have them take over this [']Zoo['] place for me. Bring it, you fart!' Wukong growls as he launches himself on his opponent.";
			say "     The two monkeys engage in a spectacular brawn, filled with acrobatics and intricate martial art moves. You feel as if you have been drawn in a wuxia movie. The fight began with the two warriors evenly matched; Wukong's offensive and powerful strikes meet the fluid moves and the counter-attacks of Hanu. As the battle goes on, Hanu is slowly getting the upper hand, conserving his stamina against his brasher opponent.";
			say "     Wukong initiates a desperate-looking series of blow, pressuring Hanu backwards. You suddenly realize that it is part of his plan as Hanu's backwalk leads him closer and closer to a now-empty podium. [bold type]This battle can only have one winner, and it will depend on if you warn Hanu or stay quiet and let the battle unfold. What do you do?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - 'The podium behind you! Watch out!'";
			say "     ([link]N[as]n[end link]) - Long live the king.";
			if Player consents:
				LineBreak;
				say "     For a moment, you fear that Hanu did not hear you. But, just as he was about to bump the furniture, he does a gracious backflip over the object, Wukong's staff missing the target by a hair's breath. Taken by his momentum, Wukong leaves his face open to a counter-strike, an opportunity that Hanu does not wastes. His own weapon bongs loudly against the other monkey's cranium, sending its own flying in the air.";
				say "     As soon as the monkey king touches the ground, his kin is already on him and clips the heavy shock collar on his neck. 'Wha- what is thi-guuuuh!' A pained and panicked Wukong tries to remove the collar, but the item has been padlocked and his efforts are useless.";
				WaitLineBreak;
				say "     'All is well that ends well,' Hanu says, playing with the collar's remote in his hands.";
				say "     'Get. This. Thing. Off! Guaaak!' Wukong shouts at him, before another zap shuts him off.";
				say "     'I shall bring you home and teach the manners befitting a [italic type]real[roman type] martial artist,' the monkey king's new master claims. 'I will teach you to control your emotions and your lust.'";
				say "     'You bastard! Put me down. My men will look me for anyway, and you should prey that they do not find you, you-owowOw! Stop! Stop with this colla-arg!'";
				say "     'You should visit us, when you have time. To check on our friend's training. I will have him tamed in no time, you'll see.";
				say "     On these words, Hanu leaves you, a bruised and reluctant Wukong on his shoulders. A short moment after, you also make your way to the museum's lobby.";
				WaitLineBreak;
				move player to Museum;
				now Resolution of Monkey Duel is 1; [Hanu won]
				say "[italic type]Wukong was forced to leave the Museum by Hanu. However, you feel that his threats were not empty.[roman type][line break]";
			else:
				LineBreak;
				say "     'Hanu's back bumps into the podium. Hanu is distracted for a second. Long enough for Wukong to pole-vault in the air with his staff and drop-kick Hanu. You see the older monkey fly in the air, toppling the podium and crashing into an exposition case behind. While Hanu crawls on the ground, knocked out, Wukong notices the shock collar, that Hanu dropped on the floor during his fall. 'Well, that is interesting.'";
				say "     Hanu gets back on his feet, but is too groggy to prevent Wukong from clipping the collar around his neck. 'What did you put on my... Oh...' Hanu watches Wukong playing with the collar's remote. 'W-wait, please dnnnng!' Hanu falls to his knees, hands grabbing his neck in pain as electricity runs through the restraint.";
				say "     'What an interesting toy, indeed,' Wukong says. 'Did you intend to use this on me, you knave?'";
				say "     'Nnn... Gh. I, I-aaargh!' Another electric discharge makes Hanu writhe on the ground. As he falls on his back, you and Wukong notice something quite embarrassing.";
				say "     'Oh my. Are you having an erection? Is being humiliated so exciting?' Wukong asks.";
				if Loyalty of Wukong is 2:
					say "     Finally taking notice of you, Wukong looks in your direction. 'I did not think you were the one to bring gifts, [if Player is not defaultnamed][name of Player][else]my friend[end if]. And here you are, offering me a new pet, just for me.' The golden-furred monkey runs up to you and steals a kiss from your lips. 'Hee hee. You know, while you were gone, I went out and made a number of followers. I will have them make the home of this pitiful excuse for a monkey mine and move there once it is done.' Wukong grabs Hanu by the collar. 'Just be careful. I tried to tell them about you, but they hardly listen. Not really quality servant material, unlike you. Take care~.' Once the two monkeys are gone, you also make your way to the museum's lobby.";
				else:
					say "     Finally taking notice of you, Wukong looks in your direction. '[if Player is not defaultnamed][name of Player][else]You[end if]... I did not forget the humiliation that you put me through. 'While you were away, I went out and made a number of followers. First, I will have them make the home of this pitiful excuse for a monkey mine and move there once it is done. After that, I will come for [italic type]you[roman type]. Just you wait.' Wukong grabs Hanu by the collar, and disappear into the museum. Once the two monkeys are gone, you also make your way to the museum's lobby.";
				say "[italic type]Wukong's thugs should be at the Zoo, by the time you go back.[roman type][line break]";
				WaitLineBreak;
				move player to Museum;
				now Resolution of Monkey Duel is 2; [Wukong won]
		else:
			LineBreak;
			say "     'Well that was... Blunt,' Hanu reacts. 'But do not worry. I am sure that I can hold my own against our young [']friend[']. Wish me luck, my pupil.' You were about to correct him but Hanu was already on his way to the museum. Shaking your head, you finish your walk, wondering how the whole affair will conclude. A while after, the air fills with monkey noises and people shouting. What happened?";
			say "     Heading to the entrance, you have barely the time to hide behind a tree as a pair of thuggish-looking monkeys walk by. You eavesdrop their conversation:";
			say "'So, that's where that asshole came from?'";
			say "     'Yeah. The King wants us to make this place our turf while the other guy has been driven away. Apparently, he will come here in a few days to visit.'";
			say "     'With his new bitch?'";
			say "     'Heh heh. Nothing better than to twist the knife in the wound, right?'";
			say "The two monkeys snicker and walk away. [italic type]It seems that Hanu lost in your absence, and that Wukong sent some thugs at the Zoo.[roman type][line break]";
			now Resolution of Monkey Duel is 3; [left the monkeys to fight]
		now the area corresponding to a name of "Monkey" in the Table of Random Critters is "Nowhere";
		now the area corresponding to a name of "Monkey Thug" in the Table of Random Critters is "Zoo";
		move Wukong to Monkey House;
		now Monkey Duel is resolved;
	else:
		LineBreak;
		say "     You blurt out the best excuse you can think of and walk away from the awkward situation as fast as you can, while Hanu sighs loudly in your general direction. 'You are hiding something from me, aren't you? It does not matter. Talk to me again once you are ready to divulge your little secret.'";



Section 3 - Monster infections

[Thug / Group focused content]
when play begins:
	add { "Monkey Thug" } to infections of HermList;
	add { "Monkey Thug" } to infections of FurryList;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Monkey"; [name of the overall species of the infection, used for children, ...]
	add "Monkey Thug" to infections of PrimateList;
	add "Monkey Thug" to infections of FurryList;
	add "Monkey Thug" to infections of NatureList;
	add "Monkey Thug" to infections of MaleList;
	add "Monkey Thug" to infections of BipedalList;
	add "Monkey Thug" to infections of TailList;
	now Name entry is "Monkey Thug";
	now enemy title entry is "Wukong Thugs"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]You leave yourself open for one of the thugs to grab your arms, offering a couple of cheap shots to his comrades[or]One of the thugs tackle you, and you fall on your butt. You struggle to get her off of you while her friends kick your body[or]One of the thugs grab you, forcing you to a standstill while one of his allies deliver a sturdy kick in your ribs[at random].";
	now defeated entry is "[beatWukongThugs]";
	now victory entry is "[losetoWukongThugs]";
	now desc entry is "[WukongThugsdesc]";
	now face entry is "like a monkey, with a small muzzle, big laughing eyes and a mane of fur around it"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "lithe and human-like. It is also very flexible, and you can do any kind of acrobatics with ease. Your feet are prehensile, meaning you can hold various objects and do many things with them as if they were hands"; [ Body Description, format as "Your body is (your text)" ]
	now skin entry is "short, golden fur which recovers your entire"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a long, prehensile tail that wiggles behind you every time you move."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "human-like"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "you feel your hair grow and surround it. Your nose and your mouth changes, forming a small muzzle"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body loses mass and becomes lither. Your feet tingle as they change form, gaining an opposable thumb and becoming prehensile"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a short but thick fur, as gold as the sun, grows on your whole body from head to toe"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a long, prehensile tail grows from your buttocks"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it morphs. Once the transformation is over, you look down and see your cock is like a human's"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 16;
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 11;
	now cha entry is 15;
	now sex entry is "Both";
	now HP entry is 60;
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 9; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 5; [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lithe"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "simian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



to say WukongThugsdesc:
	choose row MonsterID from the Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	say "     As you are walking down the alleys, you hear some commotion up ahead, including monkey shouts.[first time] You stumble upon a gang of monkeys of various genders and allures. All of them share the same small build and orange-fur of Wukong. Did they turn them? They are dressed like stereotypical street thugs: cap, large t-shirts, gold plated jewelry and piercings; oddly, no bottom cloth whatsoever.[only] Wukong's gang is in the middle of [one of]taking turns molesting a zebra[or]defacing one of the zoo's pens[or]harassing a cheetah woman, playing [']tag['] with her by slapping her butt when she's distracted[or]holding a tigertaur down while one of them milk her cock[at random]. They all stop what they are doing the moment they see you. 'Hey, [if Player is male]bro[else]sis[end if], you shouldn't walk around here alone. Why don't you stay with us for a moment?' one of them say. They begin to circle around you in a predatory manner.";

to say beatWukongThugs:
	say "     You eventually knock down the last thug, and the whole band is writhing on the ground, at your feet, groaning and holding their injured body parts. 'Wh-what are you, you freak?' one of them ask. 'That's... Cheating,' another says.";
	if Player is dominant:
		say "     Your lust surges up as the adrenaline of the fight goes away. Stupid two-bit thugs, spoiling your day with their antics. [bold type]You consider taking one of them to take care of your libido[roman type].";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Use a hole";
			now sortorder entry is 1;
			now description entry is "You feel like using a hole.";
		choose a blank row in table of fucking options;
		now title entry is "Use a cock";
		now sortorder entry is 2;
		now description entry is "You feel like using a cock.";
		if Player is kinky:
			choose a blank row in table of fucking options;
			now title entry is "Worship";
			now sortorder entry is 3;
			now description entry is "Have the gang give you a [italic type]thorough[roman type] tongue bath.";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Leave them be[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Use a hole":
						say "[beatWukongThugs_useAHole]";
					else if nam is "Use a cock":
						say "[beatWukongThugs_useACock]";
					else if nam is "Worship":
						say "[beatWukongThugs_worship]";
					decrease Libido of Player by 50;
					if Libido of Player < 0, now Libido of Player is 0;
					wait for any key;
			else if calcnumber is 0:
				say "     Refraining on your compulsions, you let the monkeys help each other up and limper away.";
				now sextablerun is 1;
				wait for any key;
			else:
				say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";
	else:
		say "     They help each other up, but take great care to put some distance between you and them. Eventually, they all limper away, to your satisfaction.";

to say beatWukongThugs_useAHole:
	let genType be a random number between 1 and 3;
	if FemaleList is not warded and FemaleList is not banned and genType is 1: [girl variation]
		say "     You need to blow your frustrations out of your system. Literally. You pick up the nearest monkey. A girl, who begins to protest meekly as you pull her by the tail. You sit on a nearby bench, forcing her to kneel in front of you. She tries to protest, but you waste no time shutting her down by pushing her face down on your cock. 'What do you think you're dmmmg! Ggkk!' Before she has a chance to fight back, you warn her that you would not want to harm her pretty face more, so she whimpers, trying to find a comfortable position. But you do not care. She will follow [italic type]your[roman type] rhythm, not the other way around. You facefuck the female thug, enjoying the messy sounds escaping from her throat as she tries to fit your [cock size desc of Player] cock inside her mouth. You leave her no pause[if Cock Count of Player > 1], switching between your cocks once you want her to give more attention to the rest of the package[end if].";
		if Cock Count of Player > 1:
			say "     Once you feel yourself ready, you pull her face away from your groin and have her straddle you, [if Cock Count of Player is 2]your two cocks[else]two of your cocks[end if] pointing at her orifices. Her struggles are pathetically weak now, and she barely offers any resistance as you slam her crotch down on your lap. The thug howls in pleasure as she feels herself being stretched from both sides. You begin to hump inside of her, making her body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play her like a living instrument, groping her [one of]petite[or]average[or]generous[or]enormous[at random] breasts and pinching her nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' she says, noticing their gaze. You threaten the group to not look away instead.";
			WaitLineBreak;
			say "     Eventually, you get a satisfying orgasm, and pump the monkey girl's holes full of seed. You wonder if she has climaxed too; her half-closed eyes and her heavy panting suggest she did, but you do not care anyway. You push her off from your lap, letting her fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]holes. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
		else:
			say "     Once you feel yourself ready, you pull her face away from your groin and have her straddle you, your cock grazing her pussy. Her struggles are pathetically weak now, and she barely offers any resistance as you slam her crotch down on your lap. The thug howls in pleasure as she feels herself being stretched. You begin to hump inside of her, making her body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play her like a living instrument, groping her [one of]petite[or]average[or]generous[or]enormous[at random] breasts and pinching her nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' she says, noticing their gaze. You threaten the group to not look away instead.";
			WaitLineBreak;
			say "     Eventually, you get a satisfying orgasm, and pump the monkey girl's womb full of seed. You wonder if she has climaxed too; her half-closed eyes and her heavy panting suggest she did, but you do not care anyway. You push her off from your lap, letting her fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]hole. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
	else if MaleList is not warded and MaleList is not banned and genType is 2: [guy variation]
		say "     You need to blow your frustrations out of your system. Literally. You pick up the nearest monkey. A boy, who begins to protest meekly as you pull him by the tail. You sit on a nearby bench, forcing him to kneel in front of you. He tries to protest, but you waste no time shutting him down by pushing his face down on your cock. 'What do you think you're dmmmg! Ggkk!' Before he has a chance to fight back, you warn him that you would not want to harm his pretty face more, so he whimpers, trying to find a comfortable position. But you do not care. He will follow [italic type]your[roman type] rhythm, not the other way around. You facefuck the male thug, enjoying the messy sounds escaping from his throat as he tries to fit your [cock size desc of Player] cock inside his mouth. You leave him no pause[if Cock Count of Player > 1], switching between your cocks once you want him to give more attention to the rest of the package[end if].";
		say "     Once you feel yourself ready, you pull his face away from your groin and have him straddle you, [if Cock Count of Player is 1]your cock[else]one of your cocks[end if] poking at his ass. His struggles are pathetically weak now, and he barely offers any resistance as you slam his ass down on your lap. The thug howls in pleasure as he feels himself being stretched. You begin to hump inside of him, making his body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play him like a living instrument, pinching his nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' he says, noticing their gaze. You threaten the group to not look away instead.";
		WaitLineBreak;
		say "     Eventually, you get a satisfying orgasm, and pump the monkey girl's womb full of seed. You wonder if he has climaxed too; his half-closed eyes and the ropes of thick white cum dangling from his semi-hard, [one of]small[or]average[or]large[or]oversized[at random] bobbing cock suggest you he did, but you do not care anyway. You push him off from your lap, letting him fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]hole. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
	else:
		let genType be a random number between 1 and 3;
		if TransList is not banned and TransList is not warded and gentype < 3:
			if genType is 1: [trans-male]
				say "     You need to blow your frustrations out of your system. Literally. You pick up the nearest monkey. He looks like a boy, but is geared like a girl down there. It does not matter. He begins to protest meekly as you pull him by the tail. You sit on a nearby bench, forcing him to kneel in front of you. He tries to protest, but you waste no time shutting him down by pushing his face down on your cock. 'What do you think you're dmmmg! Ggkk!' Before he has a chance to fight back, you warn him that you would not want to harm his pretty face more, so he whimpers, trying to find a comfortable position. But you do not care. He will follow [italic type]your[roman type] rhythm, not the other way around. You facefuck the trans-male thug, enjoying the messy sounds escaping from his throat as he tries to fit your [cock size desc of Player] cock inside his mouth. You leave him no pause[if Cock Count of Player > 1], switching between your cocks once you want him to give more attention to the rest of the package[end if].";
				if Cock Count of Player > 1:
					say "     Once you feel yourself ready, you pull his face away from your groin and have him straddle you, [if Cock Count of Player is 2]your two cocks[else]two of your cocks[end if] pointing at his orifices. His struggles are pathetically weak now, and he barely offers any resistance as you slam his crotch down on your lap. The thug howls in pleasure as he feels herself being stretched from both sides. You begin to hump inside of him, making his body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play him like a living instrument, pinching his nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' he says, noticing their gaze. You threaten the group to not look away instead.";
					WaitLineBreak;
					say "     Eventually, you get a satisfying orgasm, and pump the monkey cuntboy's holes full of seed. You wonder if he has climaxed too; his half-closed eyes and his heavy panting suggest he did, but you do not care anyway. You push him off from your lap, letting him fall to the ground, your cum escaping from his [if Cock Length of Player > 8]gaping [end if]holes. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
				else:
					say "     Once you feel yourself ready, you pull his face away from your groin and have him straddle you, your cock grazing his pussy. His struggles are pathetically weak now, and he barely offers any resistance as you slam his crotch down on your lap. The thug howls in pleasure as he feels himself being stretched. You begin to hump inside of him, making his body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play him like a living instrument, pinching his nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' he says, noticing their gaze. You threaten the group to not look away instead.";
					WaitLineBreak;
					say "     Eventually, you get a satisfying orgasm, and pump the monkey cuntboy's womb full of seed. You wonder if he has climaxed too; his half-closed eyes and his heavy panting suggest he did, but you do not care anyway. You push him off from your lap, letting her fall to the ground, your cum escaping from his [if Cock Length of Player > 8]gaping [end if]hole. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
			else: [trans-female]
				say "     You need to blow your frustrations out of your system. Literally. You pick up the nearest monkey. She looks like a girl, but is geared like a boy down there. It does not matter. She begins to protest meekly as you pull her by the tail. You sit on a nearby bench, forcing her to kneel in front of you. She tries to protest, but you waste no time shutting her down by pushing her face down on your cock. 'What do you think you're dmmmg! Ggkk!' Before she has a chance to fight back, you warn her that you would not want to harm her pretty face more, so she whimpers, trying to find a comfortable position. But you do not care. She will follow [italic type]your[roman type] rhythm, not the other way around. You facefuck the trans-female thug, enjoying the messy sounds escaping from her throat as he tries to fit your [cock size desc of Player] cock inside her mouth. You leave her no pause[if Cock Count of Player > 1], switching between your cocks once you want her to give more attention to the rest of the package[end if].";
				say "     Once you feel yourself ready, you pull her face away from your groin and have her straddle you, [if Cock Count of Player is 1]your cock[else]one of your cocks[end if] poking at her ass. Her struggles are pathetically weak now, and she barely offers any resistance as you slam her ass down on your lap. The thug howls in pleasure as she feels herself being stretched. You begin to hump inside of her, making her body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play her like a living instrument, groping her [one of]petite[or]average[or]generous[or]enormous[at random] breasts and pinching her nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' she says, noticing their gaze. You threaten the group to not look away instead.";
				WaitLineBreak;
				say "     Eventually, you get a satisfying orgasm, and pump the monkey dickgirl's womb full of seed. You wonder if she has climaxed too; her half-closed eyes and the ropes of thick white cum dangling from her semi-hard, [one of]small[or]average[or]large[or]oversized[at random] bobbing cock suggest you she did, but you do not care anyway. You push her off from your lap, letting him fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]hole. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
		else: [herm]
			say "     You need to blow your frustrations out of your system. Literally. You pick up the nearest monkey, a hermaphrodite, who begins to protest meekly as you pull her by the tail. You sit on a nearby bench, forcing her to kneel in front of you. He tries to protest, but you waste no time shutting her down by pushing her face down on your cock. 'What do you think you're dmmmg! Ggkk!' Before she has a chance to fight back, you warn her that you would not want to harm his pretty face more, so she whimpers, trying to find a comfortable position. But you do not care. She will follow [italic type]your[roman type] rhythm, not the other way around. You facefuck the herm thug, enjoying the messy sounds escaping from her throat as she tries to fit your [cock size desc of Player] cock inside her mouth. You leave her no pause[if Cock Count of Player > 1], switching between your cocks once you want her to give more attention to the rest of the package[end if].";
			if Cock Count of Player > 1:
				say "     Once you feel yourself ready, you pull her face away from your groin and have her straddle you, [if Cock Count of Player is 2]your two cocks[else]two of your cocks[end if] pointing at her orifices. Her struggles are pathetically weak now, and she barely offers any resistance as you slam her crotch down on your lap. The thug howls in pleasure as she feels herself being stretched from both sides. You begin to hump inside of her, making her body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play her like a living instrument, groping her [one of]flat[or]petite[or]average[or]generous[or]enormous[at random] breasts and pinching her nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' she says, noticing their gaze. You threaten the group to not look away instead.";
				WaitLineBreak;
				say "     Eventually, you get a satisfying orgasm, and pump the monkey herm's holes full of seed. You wonder if she has climaxed too; her half-closed eyes and her heavy panting, as well as the ropes of thick white cum dangling from her semi-hard, [one of]small[or]average[or]large[or]oversized[at random] bobbing cock, suggest she did, but you do not care anyway. You push her off from your lap, letting her fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]holes. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
			else:
				say "     Once you feel yourself ready, you pull her face away from your groin and have her straddle you, your cock grazing her pussy. Her struggles are pathetically weak now, and she barely offers any resistance as you slam her crotch down on your lap. The thug howls in pleasure as she feels herself being stretched. You begin to hump inside of her, making her body do small jumps on your hips, followed by small cries of pleasure which are music to your ears. You play her like a living instrument, groping her [one of]flat[or]petite[or]average[or]generous[or]enormous[at random] breasts and pinching her nipples to go into the higher notes. By the time you have gotten the action going, the rest of the group has gotten themselves together. They look at you fucking their comrade, now your sexual hostage, unsure of what to do. 'D-don't look at me like that,' she says, noticing their gaze. You threaten the group to not look away instead.";
				WaitLineBreak;
				say "     Eventually, you get a satisfying orgasm, and pump the monkey herm's womb full of seed. You wonder if she has climaxed too; her half-closed eyes and her heavy panting, as well as the ropes of thick white cum dangling from her semi-hard, [one of]small[or]average[or]large[or]oversized[at random] bobbing cock, suggest she did, but you do not care anyway. You push her off from your lap, letting her fall to the ground, your cum escaping from her [if Cock Length of Player > 8]gaping [end if]hole. The rest of the band lets you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";

to say beatWukongThugs_useACock:
	let genType be a random number between 1 and 3;
	if MaleList is not warded and MaleList is not banned and genType is 1:
		say "     Your loins itch, and to quell this itch, you walk over the nearest adequately equipped monkey. The monkey boy has no time to understand before your sit on his face and order him to lick. To make him understand that it is not a request, you begin to grind your crotch anyway. Fortunately, the monkey eventually abides, and you understand by his panicked slaps on your legs that he desperately needs to breathe. You raise yourself, just enough to let him gobble up a couple of breaths, before pressing back down on his face. The little game continues for some time, until you notice that, because of the repeated smothers, his cock has become erect. You eventually lift yourself off the thug, only to take position over his groin, and you let yourself fall slowly on his [one of]small[or]average[or]large[at random] member.";
		say "     The monkey whines and tries to lift his arms to push you off. But you are faster, pinning his limbs down on the ground. To mark your victory, you force a kiss out of the groaning male. You spend the next minutes slamming down on the monkey's dick. With a close view of the moaning, whimpering thug's face, you play at getting the strongest reactions out of him by varying the speed and the strength of your thrusts. The little game turns you on immensely, and you almost push yourself over the edge a couple of times. In the meantime, the other monkeys have gotten up and are now looking at you slamming your body on the crotch of their comrade, now sexual hostage, unsure of what to do. Adding insult to injury, you talk dirty to your victim, telling him how he's a wimp for letting a [if Player is female]girl[else if Player is male]guy[else]herm[end if] dominate him and a sick whore for doing this in front of everyone else. 'D-don't look at me like that,' he asks, noticing the gaze of his friends. You threaten the group to not look away instead.";
		WaitLineBreak;
		say "     The monkey does not last much longer after that, and you feel his semen spill inside of you as he clenches his fists in frustration. You keep riding him a couple minutes more, prolonging his orgasm, then having him whine as he enters his refractory period, until you reach your own orgasm. Your [if anallevel is 3 or player is male]ass[else][cunt size desc of Player] cunt[end if] clenches around his shaft several times as you take your time to ride your climax as long as possible, despite his protests. [if Player is male]You take the time to stroke your cock[smn] and point [itthemm] at the monkey's torso, painting his chest and his face with your cum. [end if]Eventually, you pull him out of your body and stand up. This felt good! You stretch yourself, then glare at the rest of the thugs. They let you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
	if TransList is not banned and TransList is not warded and gentype is 2:
		say "     Your loins itch, and to quell this itch, you walk over the nearest adequately equipped monkey. The monkey dickgirl has no time to understand before your sit on her face and order her to lick. To make her understand that it is not a request, you begin to grind your crotch anyway. Fortunately, the monkey eventually abides, and you understand by her panicked slaps on your legs that she desperately needs to breathe. You raise yourself, just enough to let her gobble up a couple of breaths, before pressing back down on her face. The little game continues for some time, until you notice that, because of the repeated smothers, her cock has become erect. You eventually lift yourself off the thug, only to take position over her groin, and you let yourself fall slowly on her [one of]small[or]average[or]large[at random] member.";
		say "     The monkey whines and tries to lift her arms to push you off. But you are faster, pinning her limbs down on the ground. To mark your victory, you force a kiss out of the groaning trans-girl. You spend the next minutes slamming down on the monkey's dick. With a close view of the moaning, whimpering thug's face, you play at getting the strongest reactions out of her by varying the speed and the strength of your thrusts. The little game turns you on immensely, and you almost push yourself over the edge a couple of times. In the meantime, the other monkeys have gotten up and are now looking at you slamming your body on the crotch of their comrade, now sexual hostage, unsure of what to do. Adding insult to injury, you talk dirty to your victim, telling her how she's a wimp for letting a [if Player is female]girl[else if Player is male]guy[else]herm[end if] dominate her and a sick whore for doing this in front of everyone else. 'D-don't look at me like that,' she asks, noticing the gaze of her friends. You threaten the group to not look away instead.";
		WaitLineBreak;
		say "     The monkey does not last much longer after that, and you feel her semen spill inside of you as she clenches her fists in frustration. You keep riding her a couple minutes more, prolonging her orgasm, then having her whine as she enters her refractory period, until you reach your own orgasm. Your [if anallevel is 3 or player is male]ass[else][cunt size desc of Player] cunt[end if] clenches around her shaft several times as you take your time to ride your climax as long as possible, despite her protests. [if Player is male]You take the time to stroke your cock[smn] and point [itthemm] at the monkey's torso, painting her breasts and her face with your cum. [end if]Eventually, you pull her out of your body and stand up. This felt good! You stretch yourself, then glare at the rest of the thugs. They let you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
	else:
		say "     Your loins itch, and to quell this itch, you walk over the nearest adequately equipped monkey. The monkey hermaphrodite has no time to understand before your sit on her face and order her to lick. To make her understand that it is not a request, you begin to grind your crotch anyway. Fortunately, the monkey eventually abides, and you understand by her panicked slaps on your legs that she desperately needs to breathe. You raise yourself, just enough to let her gobble up a couple of breaths, before pressing back down on her face. The little game continues for some time, until you notice that, because of the repeated smothers, her cock has become erect. You eventually lift yourself off the thug, only to take position over her groin, and you let yourself fall slowly on her [one of]small[or]average[or]large[at random] member.";
		say "     The monkey whines and tries to lift her arms to push you off. But you are faster, pinning her limbs down on the ground. To mark your victory, you force a kiss out of the groaning herm. You spend the next minutes slamming down on the monkey's dick. With a close view of the moaning, whimpering thug's face, you play at getting the strongest reactions out of her by varying the speed and the strength of your thrusts. The little game turns you on immensely, and you almost push yourself over the edge a couple of times. In the meantime, the other monkeys have gotten up and are now looking at you slamming your body on the crotch of their comrade, now sexual hostage, unsure of what to do. Adding insult to injury, you talk dirty to your victim, telling her how she's a wimp for letting a [if Player is female]girl[else if Player is male]guy[else]herm[end if] dominate her and a sick whore for doing this in front of everyone else. 'D-don't look at me like that,' she asks, noticing the gaze of her friends. You threaten the group to not look away instead.";
		WaitLineBreak;
		say "     The monkey does not last much longer after that, and you feel her semen spill inside of you as she clenches her fists in frustration. You keep riding her a couple minutes more, prolonging her orgasm, then having her whine as she enters her refractory period, until you reach your own orgasm. Your [if anallevel is 3 or player is male]ass[else][cunt size desc of Player] cunt[end if] clenches around her shaft several times as you take your time to ride your climax as long as possible, despite her protests. [if Player is male]You take the time to stroke your cock[smn] and point [itthemm] at the monkey's torso, painting her breasts and her face with your cum. [end if]Eventually, you pull her out of your body and stand up. This felt good! You stretch yourself, then glare at the rest of the thugs. They let you go, too intimidated and injured to do something against you, and go to tend to your victim instead.";
	[add impreg chance?]

to say beatWukongThugs_worship:
	say "     You grab each of the thugs by the air, and pull them in a small pile. They look at you, some of them asking for forgiveness, some evening offering you their clothes and their jewelry as compensation. You refuse all of this, and explain to them that all this scuffle made you sweaty. As you offer them your naked body, you give a simple order: lick; and a simple threat: if you feel the mere tip of a cock or a finger graze your orifice[if Player is female]s[end if], you will mess them so bad that golden dentures might be a good idea for their next jewelry shopping. They seem to understand as they surround you, some kneeling, some standing, and start servicing you.";
	say "     You feel tongues and fingers slip against your [BodyName of Player] body. Your arms, your legs, your torso, every place is taken care off, and those monkeys are not half-bad at it. You encourage some of them at exploring every nook and cranny by crossing your arms behind your head. As you had predicted, the monkeys are slowly emboldened by the situation, and soon you feel too soft noses digging at your armpits, followed by tongues. You sigh in pleasure, especially when the simians start to take interest in your sexy bits. They are hesitant at first, and you do watch what they are doing, but you are soon rewarded by many tongues and fingers exploring under your legs. True to your demand, the fingers simply caress and pinch, but it is more than enough. Everything is tended to, from [if Player is herm]the tip of your cock to the base of your shaft and your balls, to your now dripping pussy and clit[else if Player is male]the tip of your cock to the base of your shaft and your balls[else]your aching clit to the inner side of your labia[end if]. Several of them share each of your [breast size desc of Player] breasts, flicking their tongues over your nipples. You even feel a tongue probe around your anus, but by now you are comfortable enough to let it explore your taint.";
	WaitLineBreak;
	say "     Their gender does not matter. Male, female, in between, you do not care at all as they do an excellent job. They bring you slowly to a powerful orgasm, yet it is one of the softest you had yet experienced. Instead of a big wave of pleasure crashing into you, it feels like a vase slowly overflowing with intensity. Mouths press to take everything you have to give down there, and you grab the nearest piece of monkey fur you can find and hold it as if your life depended on it. Eventually, your orgasm subsides, and you take your leave from the gang after having them promise that you would not catch them at doing mischief again. A part of you doubt they will actually listen, and another part actually does not mind.";

to say losetoWukongThugs:
	say "     'He's down, get him!' The whole gang piles on you, pinning you on the ground and exposing your naked body. You try to struggle but your limbs are pulled apart, preventing you from resisting the countless hands running over your body and harassing your erogenous zones. 'We'll have a lots of fun together, [if Player is male]bro[else]sis[end if],' says one of the monkeys who had slipped under you in the confusion. 'You'll see.'";
	let randomnumber be a random number between 1 and 2;
	if randomnumber is 1:
		say "     You try to protest, but one of monkeys takes the opportunity to plant his legs around your head and push his cock inside your mouth. You cough and gag as the slab of meat descends down your throat, and the simian starts hitting your uvula with each maw-stretching pump.";
	else:
		say "     You try to protest, but one of monkeys takes the opportunity to plant her legs around your head and press her crotch against your mouth. You groan as she smothers you and grinds her pussy against your face, wetting your tongue with her vaginal fluids.";
	WaitLineBreak;
	if anallevel > 1:
		say "     Your ass is suddenly stretched as the monkey under you pushes his member inside your ass and does not waste time slapping his pelvis against your butt with short, fast thrusts.";
		WaitLineBreak;
	if Player is female:
		let randomnumber be a random number between 1 and 3;
		if randomnumber is 1:
			say "     Another monkey takes advantage of the confusion and plunges his shaft inside your [cunt size desc of Player] pussy, jackhammering your cervix with his member";
		else if randomnumber is 2 and player is kinky:
			say "     Another monkey takes advantage of the confusion and slams a pair of fingers down your [cunt size desc of Player] pussy. Two quickly become three, then four, until the primate eventually manages to slip the five fingers inside and forms a fist inside of you";
		else:
			say "     Another monkey takes advantage of the confusion and dives head-first on your [cunt size desc of Player] pussy, nibbling on your clit and licking inside, making a game of getting as far as possible";
		if Cunt Count of Player > 1:
			say ". Your other pussies are not forgotten and get fingered in an almost sadistic manner";
		say ".";
		WaitLineBreak;
	if Player is male:
		let randomnumber be a random number between 1 and 2;
		if randomnumber is 1:
			say "     You feel something tight pushing around your cock, signaling that a monkey has lined up [one of]his ass[or]her pussy[at random] with your [cock size desc of Player] cock, and swallows it down the tight, warm hole. Your hear wet noises coming from your groin as crotch meets crotch with increasing speed";
		else:
			say "     You feel something warm and soft kiss the tip of your cock, signaling that a monkey has their mouth on your [cock size desc of Player] dick. They promptly swallow it down to the hilt, and the air fills with wet noises coming from your groin, with increasing intensity";
		if Cock Count of Player > 1:
			say ". Your other cocks quickly find hungry mouths and dexterous hands to be taken care by";
		say ".";
		WaitLineBreak;
	if Breast Size of Player > 0:
		let randomnumber be a random number between 1 and 2;
		if randomnumber is 1:
			say "     Despite the space getting cramped, another simian still finds the place to sit on your tummy and pushes your [breast size desc of Player] breasts together. You feel his cock slip between them as the monkey gives himself a leisurely tit-fuck.";
		else:
			say "     Despite the space getting cramped, other simians still find the place to gnaw on your breasts, kneading them[if Nipple Count of Player > 0] and play-biting your nipples[end if], enjoying the high-pitched grunts escaping from between the legs of the monkey fucking your face.";
		WaitLineBreak;
	say "     Stuck in the middle of the monkey gang-bang, you are forced to endure long minutes of being used sexually in every conceivable way. As soon as one of the monkeys finish, another takes their place, until everyone in the gang has had a turn with you. Once they are done, they leave your tired, cum-covered body, laughing and hooting about the good time they just had.";

Section 3 - Monkey House

Table of GameRoomIDs (continued)
Object	Name
Monkey House	"Monkey House"

Monkey house is south of Main Path 2.
The earea of Main Path 2 is "Zoo".
Description of Monkey House is "[monkeyHouseDesc]".

to say monkeyHouseDesc:
	if Resolution of Monkey Duel is 2 or Resolution of Monkey Duel is 3:
		say "     The zoo's monkey house was originally an exhibit for monkeys and apes, and formerly a makeshift dojo. Now that Wukong has taken over, the house turned into a throne room, with the golden monkey sitting on his cushioned sit, in the middle. His thugs occasionally come to give him reports, and leave with new orders.";
	else:
		say "     The zoo's monkey house seems to have been repurposed. The glass panels have been removed, and one of the exhibits have been repurposed into a makeshift dojo. A suspended tire is the only artifact of the original place; judging by the cot installed in it, it is Hanu's resting place.";

Hanu ends here.
