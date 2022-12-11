Version 1 of Greek Mythos by Prometheus begins here.

[ TwelveLaborsStage                                                  ]
[ 0: Not started                                                      ]
[ 1: Started First Task - The Nemean Lion                             ]
[ 2: Started Second Task - Lernean Hydra                              ]
[ 3: Started Third Task - The Hind of Ceryneia                        ]
[ 4: Started the Fourth Task - The Erymanthean Boar                   ]
[ 5: Started the Fifth Task - The Augean Stables                      ]
[ 6: Started the Sixth Task - The Stymphalian Birds                   ]
[ 7: Started the Seventh Task - The Cretan Bull                       ]
[ 8: Started the Eighth Task - The Horses of Diomedes                 ]
[ 9: Started the Ninth Task - The Belt of Hippolyte                   ]
[ 10: Started the Tenth Task - Geryon's Cattle                        ]
[ 11: Started the Eleventh Task - The Apples of the Hesperides        ]
[ 12: Started the Twelfth Task - Fetch Cerberus from the Underworld   ]
[ 99: Failed                                                          ]


TwelveLaborsStage is a number that varies. TwelveLaborsStage is usually 0.

[QUEST LOG]
to TwelveLaborsQuestLog:
	if TwelveLaborsStage is:
		-- 1:
			say "[bold type]Twelve Labors Quest: [roman type]I was told to go to the Dry Plains to face the Nemean Lion. I should be sure of my readiness before doing so.";
		-- 2:
			say "[bold type]Twelve Labors Quest: [roman type]Having successfully defeated the Nemean Lion, I was told that the next Labor, the Lernean Hydra, would be waiting for me in the Junkyard.";

a postimport rule: [bugfixing rules for players that import savegames]
	if TwelveLaborsStage is 2 and "Hero's Aura" is listed in feats of Player:
		now TwelveLaborsStage is 3;

Section 1 - Events

[Labors of Herakles]

Table of GameEventIDs (continued)
Object	Name
Labors Introduction	"Labors Introduction"

Labors Introduction is a situation.
ResolveFunction of Labors Introduction is "[ResolveEvent Labors Introduction]".
Sarea of Labors Introduction is "Museum".
The Level of Labors Introduction is 30.

[This can stay here, for the time when we eventually make more rooms in the museum. One thing that should be remembered is that _Navigation_ is not _Going_ - it's a completely different command that moves the player by a code command, not the act of walking that would trigger the code below]
after going to Museum Foyer while (Labors Introduction is active and Labors Introduction is not resolved and level of Player > 30 and (MaleList is not Banned and MaleList is not Warded) and (FemaleList is not Banned and FemaleList is not Warded) and a random chance of 1 in 2 succeeds):
	move player to Museum Foyer;
	LaborsIntroductionEvent;

to say ResolveEvent Labors Introduction:
	LaborsIntroductionEvent;

to LaborsIntroductionEvent: [Invited to perform the Labors]
	say "     As you enter the museum entrance hall, the air feels different to usual as though it is charged. You consider asking Valerie about it but a loud thunderclap and the sudden appearance of an impressively bearded man interrupts this thought. 'You there. Mortal. Are you [name of Player]?' he intones grandly. You quickly nod dumbfounded. The man relaxes a bit and takes you by the shoulder as you walk down the corridors. 'I am Zeus. God of the sky, and king of the Olympians. Your actions within this plane have not gone unnoticed and as such I would like to extend to you an invitation to carry out the Labors of Herakles. I do hope you are familiar with them, but even if you aren't, I'm sure you'll manage them anyway. Though I doubt you'll be quite as impressive as my son, but I'm biased so don't be discouraged.' He seems a lot less wrathful than some of the myths make him out to be, luckily for you.";
	say "     By this time you are opposite a shrine to Hera. Beside it, an elegant woman is brushing dust off the marble and muttering rude remarks about the cleaners. Zeus coughs politely, causing her to look up. While you wouldn't describe her face as sexy, there is a regal beauty that commands respect. You stand there awkwardly, unsure what to say. The woman finally breaks the silence with a sigh. 'As my husband is too rude to introduce me, I am Hera, goddess of Marriage, and Queen of Olympus. Come sit with my by the shrine.' You allow her to guide you to a step and seat yourself at a polite distance next to Hera, allowing a bashful Zeus to sit on her other side. 'How much has he explained to you?' the goddess asks, offering you a dish of pomegranate seeds. You reply that he had only had time to say that you were invited to perform the Labors.";
	WaitLineBreak;
	say "     'When Herakles had to do the labors it was to seek redemption for killing his family, and as you can understand I did some morally questionable things to try and stop him,' Hera begins to explain. Zeus rolls his eyes when she says [']morally questionable['] but doesn't interrupt. 'Now, we use the labors more as a ritual or for ceremonial purposes when we find someone we believe worthy. We have an agreement with other parties not to interfere directly in the affairs of the city. Can you imagine how much damage could be caused by multiple pantheons of gods trying to one-up each other? It's bad enough having pretenders running around claiming to be divine and maligning our names. Some of the gods known for their trickery are walking a fine line at the moment. Loki has had several warnings for mingling with mortals under various guises, and we are not going to even mention Prometheus...' Hera trails off, grumbling under her breath.";
	say "     'I will be acting more as an adversarial force rather than your enemy. Your efforts to succeed and overcome the trials ahead of you will entertain those of us watching, even deities of other cultures. We try not to conflict with each other and watching rituals of each other's followers allows us to socialize more often,' Hera's comments. Seeing the concern on your face, Zeus quickly adds, 'We wouldn't have chosen you if we didn't think you had a chance. We want you to succeed too.' His wife wraps her arm around your shoulder, 'I didn't intend to sound as uncaring as I did. I apologize. Each time you complete a labor you shall be rewarded, as much as our agreement allows anyway, but I hope you'll at least like some of them. As I'm sure you understand, this city has a, shall we say, hedonistic atmosphere that might even shock Aphrodite or Dionysus, so some of the labors may take on a similar theme. I hope you don't mind.' From Zeus's grin, you can tell that he is looking forward to watching.";
	WaitLineBreak;
	say "     'None of us will interfere in the labors directly, so only attempt each trial when you are sure you are ready. We cannot be sure of your welfare, so you may die,' Hera informs you concernedly. 'Or become a monster's sex toy,' Zeus mutters, shrinking back under the glare directed at him by his wife. He quickly continues the speech, 'The first labor is the [bold type]Nemean Lion[roman type], an absolutely vast feline with a near-impenetrable hide. I'm not allowed to tell you how to defeat it, but I would advise finding out if you don't already know. It can be found in the [bold type]Dry Plains[roman type], so depending on whether or not you feel ready for it, I would suggest searching there.' He looks to Hera to see whether there is anything further she feels you need to know. 'Be careful hero, as amusing as Ares might find you meeting a valiant death, it wouldn't serve any purpose and we would rather you didn't take part than get yourself killed.'";
	say "     They seem to be finished explaining what they want you to do so, wanting a bit of space from them, you return to the museum entrance. Valerie is back behind the front desk reading through a book of riddles which she quickly hides upon noticing you. 'I'm sorry I wasn't here earlier. I was [italic type]advised[roman type] not to be here.' She rolls her eyes as she says this. 'What Zeus needed to tell you without me being present I probably shouldn't pry into, but be careful. Gods and mortals don't often mix well.' It would seem she would prefer not to get mixed up in the gods['] request so you keep quiet about it. A shame. She might have been able to help with suggestions for how to defeat the Nemean Lion. Should you decide to attempt the labors, you're going to have to find someone else with classical knowledge or hope you know enough yourself to succeed.";
	now TwelveLaborsStage is 1;
	add "Twelve Labors Quest" to OpenQuests of Player;
	now Labors Introduction is resolved;

Section 1.1 - Nemean Lion

Table of GameEventIDs (continued)
Object	Name
Meet the Nemean Lion	"Meet the Nemean Lion"

Meet the Nemean Lion is a situation.
ResolveFunction of Meet the Nemean Lion is "[ResolveEvent Meet the Nemean Lion]".
Prereq1 of Meet the Nemean Lion is Labors Introduction.
The level of Meet the Nemean Lion is 30.
Sarea of Meet the Nemean Lion is "Plains".

instead of going to Dry Plains while (Meet the Nemean Lion is active and Meet the Nemean Lion is not resolved and TwelveLaborsStage is 1 and a random chance of 1 in 5 succeeds):
	move player to Dry Plains;
	MeettheNemeanLionEvent;

to say ResolveEvent Meet the Nemean Lion:
	MeettheNemeanLionEvent;

to MeettheNemeanLionEvent: [Fight the Nemean Lion]
	say "     Wading through the long grass, you hear a roar in the distance and fearful shouts. You consider avoiding the situation, but curiosity and concern overpower your caution. You begin to rush towards the commotion, the sounds getting louder. Ahead of you, you see a hill with three unconscious centaurs strewn across the dirt, their breaths ragged. The grass is soaked in blood, turning your stomach, the source of which is the ragged tears in the centaurs['] flesh caused by what appears to be claws. The sound of beating hooves causes you to snap your head up as an equine body charges over the crest of the hill pursued by the largest lion you have ever seen. This centaur seems to be faring better than his brethren judging from his lack of wounds, but while he has sweat trickling over his skin, his adversary appears unfazed by the physical exertion. You doubt that this will last much longer, but you doubt you would be able to escape even if you tried.";
	say "     Still evading the lion's claws, the centaur knocks an arrow to his bow and looses back at his pursuer. To your surprise, the arrow [italic type]shatters[roman type] on impact with the feline's hide. It would seem that this is the mythical Nemean Lion. Now that you look more closely, you see the remnants of other arrows suggesting that this has been going on for some time. Why then does he still try the same tactic? Your thoughts are answered by the groans of the centaurs down the side of the hill as they regain consciousness and attempt to stand. The combatants both hear this, with the centaur shouting, 'Run, this is an adversary that we can't overcome! The interloper will buy us time.' What? The centaurs flee, their leader rushing right past you leaving you facing a bloodthirsty beast from Greek myth. If you survive this, then you're going to be having some words with him and his herd.";
	challenge "Nemean Lion";
	if fightoutcome < 20: [player won]
		say "     'Nicely done mortal. Nicely done indeed.' You turn to find a man clapping his hands, impressed at your success. He continues, 'I hope you won't take offense at my surprise. I'm Hermes and I have been tasked with rewarding you. So what's it going to be; the five piece lounge set, the holiday to sunny Barcelona, or perhaps the hide of the Nemean Lion without having to get all bloody skinning a highly resistant beast?' Before you can reply, he interjects, 'Sorry, but there isn't actually a choice. Like Herakles, you're getting the skin. You don't have a use for a lounge set, and sending you to Barcelona may spread the contagion.' The unconscious lion begins to glow as Hermes raises his arms, speaking in an unrecognizable language. You shield your eyes from the rapidly brightening light and by the time you look back, a lion skin that looks fashioned in a cloak lies before you. Crouching to pick it up, you are surprised at how light it feels for its size and question the waiting god about it.";
		say "     'You can't just accept a miracle for what it is can you? You have to ask how. It's magic, and not even mine. I just acted as a sort of conduit for Hekate. It should protect you from physical harm you may come across in the city. Insults and lewd gestures will hit you just fine though, so don't put yourself in situations that you aren't comfortable with. I've got to run though, messages to deliver and travelers to watch. Enjoy!' With that, Hermes just seems to disappear as he steps through thin air, leaving you awkwardly crouched, trying to jam a lion skin into your backpack. It is at this point that you realize that you have no idea where you are going next. A voice behind you startles you out of this thought and you prepare to defend yourself as you spin around.";
		WaitLineBreak;
		say "     You are greeted by the knees and white tunic of Zeus. He chortles as he looks down at you, offering you a hand up. 'Sorry to surprise you, but I noticed that my son forgot to tell you where to go next, and I felt the reward was a little... hollow for the amount of effort you put in. So how would you like to mount or be mounted by the Nemean Lion? He's male, so if you prefer women feel free to refuse. You won't be rewarded or punished further either way. I promise I'll let you [italic type]fraternize[roman type] in relative privacy.";
		say "     [bold type]Do you take Zeus up on this offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. Why not gain something extra out of your struggle?";
		say "     ([link]N[as]n[end link]) - No. There are things you would rather be doing and the lion doesn't sufficiently gain your interest.";
		if Player consents: [Sex with Lion]
			if Player is male: [ Male Choices]
				say "     [bold type]Who is mounting whom?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - You shall mount the lion. Take out your excess adrenaline on his ass.";
				say "     ([link]N[as]n[end link]) - Let the lion mount you. You dominated it in combat, now let it dominate you.";
				if Player consents: [Pitch Anal]
					say "     Grinning at you with a gleam in his eye, Zeus raises his arms, the sky turning black above him. With a loud boom, a lightning bolt strikes the hill above you, the flash blinding you for a moment. When the stars clear from your vision, the lion has returned, its coat resplendent. Another noticeable feature is the erect pink cock bobbing beneath his golden stomach, a fine gleam of pre shining. His behavior, for it is definitely a he, is closer to that of a house cat, friendly without wishing to appear too much so, brushing against Zeus's leg as it walks past. 'I'm looking forward to this,' you hear the god mutter to himself, patting the lion between his ears. 'I suppose I'll leave you to it. Don't worry, he's a lot tamer now so any wounds you get shouldn't be too serious. Oh, and he'll be banished once you orgasm so try to give him a little pleasure too.' With that, the king of Olympus vanishes in a thunderclap.";
					say "     Now that Zeus is gone, the feline shifts his focus to you, rubbing against your leg and purring. If you consider it sufficiently intelligent, then this might be attempts at bribing you into pleasuring it, and oh how you plan on doing so. [if Player is submissive]Crouching beside the lion's engorged penis, you gently begin to stroke his flank, gradually closing in on the twitching organ. Your partner's legs shiver in anticipation, copious fluids dripping onto the soil, exuding an arousing scent that stirs your loins[else]Gripping its mane, you stare it in the eyes to reinforce your dominance, being rewarded with him shrinking away and baring his throat. Content with his reaction, you crouch beside him and begin to stroke his penis, the aroma of his arousal stirring your loins[end if]. As the friction decreases over his erection, you become curious as to what his impressive cock tastes like and lie on your back below his groin, your control still maintained.";
					WaitLineBreak;
					say "     The lion's musk is much more potent beneath him, filling your nostrils to the point of even flowing into your throat. This aids you to salivate as the earthy flavor tickles your mouth and your patience runs thin. Giving your lips a cursory lick, you slip the feline cock into your mouth, looping your tongue around the shaft to taste his essence. Feeling it rotate in your mouth, you are surprised to see the Nemean Lion turning so that his face is beside your loins. As his tongue makes contact with the sensitive flesh of your member you flinch, the rough texture grazing up your length. In tandem, you orally stimulate each other, both out of desire, but also keeping in mind the final goal of you mounting your former adversary. With this thought, you allow his member to spring from within your mouth and shuffle back a bit, granting yourself a view of his dark tail hole. You consider for a moment before deciding the more lubrication the better and bring your mouth towards his backside.";
					say "     The lion takes your cock deeper within his maw as you begin to trace the tip of your tongue around the waiting orifice, his hide slightly salty with an aftertaste of his arousal. You can feel the head of your penis sliding into the lion's throat as your tongue slides over his sphincter, the hard tissue at the back of his mouth forming a pleasant ring around your length. The feline's purrs intensify as you explore his rear cavity, the vibrations being felt by both your invading organs, heightening the stimulation and causing you to shiver. The copious saliva shining from around the big cat's anus indicate his readiness if the rampant cock swaying between his slightly crouched legs wasn't enough, and you withdraw your face from his rear. You are almost reluctant to end his oral ministrations, but the anticipation of what is to come steels your resolve as you slip your shaft from his mouth with a noticeable squelch. With all necessary areas suitably slick, you are ready for the main event.";
					WaitLineBreak;
					say "     Scrabbling out from beneath him, you take a minute to admire his muscular derriere as you clamber to your feet. Testing his pulsing opening with a finger, you find it wet and eager for you as you slip your digit inside for a second. The lion lets out a growl as though to protest the sluggish speed at which you progress towards penetrating his anus properly. Lining your cock up carefully, you take a breath before driving yourself inside of him with a single thrust. The walls of his rectum squeeze around your flesh as you pound into him with vigor similar to your combat, the feline letting out grunts and purrs as his prostate is battered. [if Player is dominant]You grasp the scruff of his neck with one hand to help anchor yourself while your other strokes over his tail and around your joining. He responds by letting out an ecstatic yowl and releasing a sizable spurt of pre onto the ground[else]Your hands roam over his flanks, squeezing the muscles in his thighs and probing your joining. You lean over the feline's back, allowing one hand to reach his penis to give it a few strokes, being rewarded with a few spurts of pre that splatters the dirt[end if].";
					say "     As your coupling continues, your partner gradually presses his chest more firmly against the ground while keeping his hindquarters elevated for your firm love-making. He seems to be recognizing your dominance over him. You can feel yourself getting closer and closer to climax and intensify your thrusts. The resultant force of this causes the Nemean Lion's cock to slap against his tummy, the noise mingling with the squelches from his anus. This is apparently too much for the cat, as he emits a magnificent roar and begins to cum. A veritable flood of semen erupts from his barbed penis, flying through the air to soak the ground beneath him as well as painting his underbelly with the musky liquid. His orgasm is accompanied by the rapid contractions of his rear passage, the moist passage's caresses clasping with increased force around your rigid shaft.";
					WaitLineBreak;
					say "     A cross between a groan and a sigh oozes from your lips as your release arrives with a vengeance for all the teasing up until now. The first spasm doesn't release any semen, but the second onwards squirts what feels like more than your balls would be capable of holding into the dazed lion's inviting colon, your twitching scrotum pressed tightly between your groins. When your muscles release the tension preventing you from moving, you both collapse on your sides, keeping your still trickling shaft in his quivering anus. Taking deep breaths, you stroke his fur as your climax comes to an end feeling apprehensive about your companion's approaching banishment. 'Don't worry. Banishment isn't death,' a male voice says from behind you. You rapidly turn your head, but see no-one. 'I'm not supposed to be here, so please forgive my not showing myself. But as I was saying, the lion will be fine. Echidna loves her monsters no matter how mundane or unworldly they appear. Good luck in the Labors.'";
					say "     You gather the being is gone from the silence that follows, only broken by the feline's deep purrs and your panting. With a flash of light, the lion vanishes, leaving you alone beside a small puddle of cum. 'Now that that's done, would you like to know your next task?' You jump slightly at the sound of Zeus's voice and resist the urge to cover yourself considering he was probably watching the whole thing. 'Well, from your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras you find there.' With that, you are left alone again, the soil drinking the result of your breeding.";
					CreatureSexAftermath "Nemean Lion" receives "OralCock" from "Player";
					CreatureSexAftermath "Player" receives "OralCock" from "Nemean Lion";
					CreatureSexAftermath "Nemean Lion" receives "AssFuck" from "Player";
				else: [Catch Anal/ Herm choices]
					if player is herm:
						if "Less Anal" is listed in feats of Player: [Vaginal]
							say "     Grinning at you with a gleam in his eye, Zeus raises his arms, the sky turning black above him. With a loud boom, a lightning bolt strikes the hill above you, the flash blinding you for a moment. When the stars clear from your vision, the lion has returned, its coat resplendent. Another noticeable feature is the erect pink cock bobbing beneath his golden stomach, a fine gleam of pre shining. His behavior, for it is definitely a he, is closer to that of a house cat, friendly without wishing to appear too much so, brushing against Zeus's leg as it walks past. 'I'm looking forward to this,' you hear the god mutter to himself, patting the lion between his ears. 'I suppose I'll leave you to it. Don't worry, he's a lot tamer now so any wounds you get shouldn't be too serious. Oh, and he'll be banished once you orgasm so try and forgive him if he's a little rough.' With that, the king of Olympus vanishes in a thunderclap.";
							say "     Now that Zeus is gone, the feline shifts his focus to you, rubbing against your leg and purring. If you consider it sufficiently intelligent, then this might be attempts at bribing you into pleasuring it, and oh how you plan on doing so. [if Player is submissive]Crouching beside the lion's engorged penis, you gently begin to stroke his flank, gradually closing in on the twitching organ. Your partner's legs shiver in anticipation, copious fluids dripping onto the soil, exuding an arousing scent that stirs your loins[else]Gripping its mane, you stare it in the eyes to reinforce your dominance, being rewarded with him shrinking away and baring his throat. Content with his reaction, you crouch beside him and begin to stroke his penis, the aroma of his arousal stirring your loins[end if]. As the friction decreases over his erection, you become curious as to what his impressive cock tastes like and lie on your back below his groin, your control still maintained.";
							WaitLineBreak;
							say "     The lion's musk is much more potent beneath him, filling your nostrils to the point of even flowing into your throat. This aids you to salivate as the earthy flavor tickles your mouth and your patience runs thin. Giving your lips a cursory lick, you slip the feline cock into your mouth, looping your tongue around the shaft to taste his essence. Feeling it rotate in your mouth, you are surprised to see the Nemean Lion turning so that his face is beside your loins. As his tongue makes contact with the sensitive flesh of your cock ande vulva, you flinch, the rough texture grazing over your clit and shaft. In tandem, you orally stimulate each other, both out of desire, but also keeping in mind the final goal of him mounting you. Perhaps with this thought in mind, the lion redoubles his affections, thrusting his tongue deep within your canal and further dampening the moistening walls. Every so often, his tongue unintentionally slips from your depths and laps over the divide between your anus and pussy.";
							say "     Concerned that your reciprocation is lagging behind, you determinedly press your face further and further up his length, his barbed tip slipping through the firm ring at the back of your mouth and down your throat. He lets out a rumble of approval and gives your button a light nip before starting to lightly thrust into your eager mouth. Content to allow this, you focus on circling your tongue around his shaft, slathering his flesh enthusiastically. The smell of musk grows stronger as you both continue, his balls presses into your nose each time he thrusts. From the constant trickle of pre from your cock and the increasing wetness of your pussy, you doubt that it will be long before you are ready and apprehension conflicts with the eagerness to feel the large feline pounding into you. He seems to share your anticipation for what comes next, dismounting your face and circling around to allow you to get on all fours. With all necessary areas suitably slick, you are ready for the main event.";
							WaitLineBreak;
							say "     Looking over your shoulder, you admire his toned form while you wait for him to approach and mount you. He sniffs your cunt for a moment, the wafts of air feeling cool against the sheen of fluid clinging to the lips. With a noise of eagerness, the Nemean Lion heaves himself onto your back and for a moment you wonder whether you will be able to support his weight. As he comes down on top of you, you find your concern to be unfounded. Either he isn't as heavy as he looks or there is some force ensuring your pairing goes smoothly. For a few seconds you relax at the feeling of his warm fur against your naked back before another stimuli takes precedence. With a growl of determination, the lion thrusts forward, impaling your receptive body on his barbed penis. His shaft slips into your vagina with ease, aided by the copious lubricant of saliva and secretions. The barbs around his tip rub against your clip as he thrusts and withdraws, eliciting gasps and moans from you.";
							say "     [if Player is submissive]To your surprise, the lion softly grasps your neck in his jaws as he continues to thrust firmly. Beneath a magnificent beast as he pounds you and protectively holds you, you subconsciously feel that this is your natural position[else]To your surprise, you feel the lion's rough tongue rasping over the back of your neck as he continues to push into you. You may be beneath him, but such affection shows he doesn't think you inferior[end if]. You gradually lower your upper body to the ground as the coupling progresses, your rear being kept raised in order to receive your partner's rigid cock. From the increase in force that accompanies his thrusts, you wonder whether he is getting close to climax, each collision causing your turgid shaft to smack into your stomach. By this time he is nearly pounding you into the ground, his thrusts making his scrotum to slap against your tummy, the sound mingling with the squelches from your stretched pussy. With a magnificent roar, the Nemean Lion cums deep within you, the flood of semen filling your womb and flowing out of the joining as his balls contract against your clitoris.";
							WaitLineBreak;
							say "     A cross between a groan and a sigh bursts from your mouth as the pressure from the hot sperm deep within you sends you over the edge too. Around his still twitching shaft your cunt begins to repeatedly contract, further cum being squeezed from within your body to trickle over your tummy and onto the bottoms of your breasts even as your own cock erupts, spraying across the soil beneath you. With the lion pressed firmly against your backside, you are held in position while you both recover from your orgasmic paralysis. As soon as the feline takes a step back, you collapse on your side, his shaft sliding from your gaping hole, spilling a new river of semen onto the ground. Through the haze of climax, you become concerned about your companion's approaching banishment. 'Don't worry. Banishment isn't death,' a male voice says from behind you. You rapidly turn your head, but see no-one. 'I'm not supposed to be here, so please forgive my not showing myself. But as I was saying, the lion will be fine. Echidna loves her monsters no matter how mundane or unworldly they appear. Good luck in the Labors.'";
							say "     You gather the being is gone from the silence that follows, only broken by the feline's deep purrs and your panting. With a flash of light, the lion vanishes, leaving you alone beside a sizable pool of cum. 'Now that that's done, would you like to know your next task?' You jump slightly at the sound of Zeus's voice and resist the urge to cover yourself considering he was probably watching the whole thing. 'Well, from your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras that you'll find there.' With that, you are left alone again, the soil drinking the result of your breeding.";
							CreatureSexAftermath "Nemean Lion" receives "OralCock" from "Player";
							CreatureSexAftermath "Player" receives "OralCock" from "Nemean Lion";
							CreatureSexAftermath "Player" receives "PussyFuck" from "Nemean Lion";
						else: [Anal]
							say "Grinning at you with a gleam in his eye, Zeus raises his arms, the sky turning black above him. With a loud boom, a lightning bolt strikes the hill above you, the flash blinding you for a moment. When the stars clear from your vision, the lion has returned, its coat resplendent. Another noticeable feature is the erect pink cock bobbing beneath his golden stomach, a fine gleam of pre shining. His behavior, for it is definitely a he, is closer to that of a house cat, friendly without wishing to appear too much so, brushing against Zeus's leg as it walks past. 'I'm looking forward to this,' you hear the god mutter to himself, patting the lion between his ears. 'I suppose I'll leave you to it. Don't worry, he's a lot tamer now so any wounds you get shouldn't be too serious. Oh, and he'll be banished once you orgasm so try and forgive him if he's a little rough.' With that, the king of Olympus vanishes in a thunderclap.";
							say "     Now that Zeus is gone, the feline shifts his focus to you, rubbing against your leg and purring. If you consider it sufficiently intelligent, then this might be attempts at bribing you into pleasuring it, and oh how you plan on doing so. [if Player is submissive]Crouching beside the lion's engorged penis, you gently begin to stroke his flank, gradually closing in on the twitching organ. Your partner's legs shiver in anticipation, copious fluids dripping onto the soil, exuding an arousing scent that stirs your loins[else]Gripping its mane, you stare it in the eyes to reinforce your dominance, being rewarded with him shrinking away and baring his throat. Content with his reaction, you crouch beside him and begin to stroke his penis, the aroma of his arousal stirring your loins[end if]. As the friction decreases over his erection, you become curious as to what his impressive cock tastes like and lie on your back below his groin, your control still maintained.";
							WaitLineBreak;
							say "     The lion's musk is much more potent beneath him, filling your nostrils to the point of even flowing into your throat. This aids you to salivate as the earthy flavor tickles your mouth and your patience runs thin. Giving your lips a cursory lick, you slip the feline cock into your mouth, looping your tongue around the shaft to taste his essence. Feeling it rotate in your mouth, you are surprised to see the Nemean Lion turning so that his face is beside your loins. As his tongue makes contact with the sensitive flesh of your member you flinch, the rough texture grazing up your length. In tandem, you orally stimulate each other, both out of desire, but also keeping in mind the final goal of him mounting you. Perhaps with this thought in mind, the lion lets your member slip from his jaws and begins to lick over your pussy and ass. His tongue grazes over the sensitive skin of your scrotum as he attempts to lubricate your anus. Another side effect is that he has to crouch more to reach, thus forcing his cock further into your soft throat.";
							say "     This doesn't cause you much discomfort however as you swap your focus to circling your tongue around his shaft while allowing him to thrust. The rough texture of his tongue makes you occasionally twitch as it catches on the crinkled skin of your sphincter, the tingles making your penis tap against your partner's neck. Heightening the stimulation, the lion begins to purr as he continues to taste your darkest area, the vibrations carrying through your body and you are sure that he'll be able to feel them in his own cock. The smell of musk grows stronger as you both continue, his balls presses into your nose each time he thrusts. From the feeling of wetness around your anus, you doubt it will be long before you are ready and apprehension conflicts with the eagerness to feel the large feline pounding into you. He seems to share your anticipation for what comes next, dismounting your face and circling around to allow you to get on all fours. With all necessary areas suitably slick, you are ready for the main event.";
							WaitLineBreak;
							say "     Looking over your shoulder, you admire his toned form while you wait for him to approach and mount you. He sniffs your backside for a moment, the wafts of air feeling cool against the sheen of fluid around your anus. With a noise of eagerness, the Nemean Lion heaves himself onto your back and for a moment you wonder whether you will be able to support his weight. As he comes down on top of you, you find your concern to be unfounded. Either he isn't as heavy as he looks or there is some force ensuring your pairing goes smoothly. For a few seconds you relax at the feeling of his warm fur against your naked back before another stimuli takes precedence. With a growl of determination, the lion thrusts forward into your ass, impaling your receptive body on his barbed penis. As the head rapidly squeezes through your opening, each of these nubs slips through with pleasurable feedback rushing through your nerves. The big cat only stops his forward momentum when he feels his balls contact with yours.";
							say "     [if Player is submissive]To your surprise, the lion softly grasps your neck in his jaws as he continues to thrust firmly. Beneath a magnificent beast as he pounds you and protectively holds you, you subconsciously feel that this is your natural position[else]To your surprise, you feel the lion's rough tongue rasping over the back of your neck as he continues to push into you. You may be beneath him, but such affection shows he doesn't think you inferior[end if]. You gradually lower your upper body to the ground as the coupling progresses, your rear being kept raised in order to receive your partner's rigid cock. From the increase in force that accompanies his thrusts, you wonder whether he is getting close to climax. By this time he is nearly pounding you into the ground, his thrusts making your penis slap against your tummy, the sound mingling with the squelches from your anus. With a magnificent roar, the Nemean Lion cums deep within your bowels, the flood of spooge spurting out of the joining as his balls contract against your own.";
							WaitLineBreak;
							say "     A cross between a groan and a sigh bursts from your mouth as the pressure from the hot sperm in your ass sends you over the edge too. The first spasm doesn't release any semen, but the second onwards squirts what feels like more than your balls would be capable of holding onto the dirt in front of your head, stray bursts splattering your face. With the lion pressed firmly against your backside, you are held in position while you both recover from your orgasmic paralysis. As soon as the feline takes a step back, you collapse on your side, his shaft sliding from your gaping hole, spilling a new river of semen onto the ground. Through the haze of climax, you become concerned about your companion's approaching banishment. 'Don't worry. Banishment isn't death,' a male voice says from behind you. You rapidly turn your head, but see no-one. 'I'm not supposed to be here, so please forgive my not showing myself. But as I was saying, the lion will be fine. Echidna loves her monsters no matter how mundane or unworldly they appear. Good luck in the Labors.'";
							say "     You gather the being is gone from the silence that follows, only broken by the feline's deep purrs and your panting. With a flash of light, the lion vanishes, leaving you alone beside a sizable pool of cum. 'Now that that's done, would you like to know your next task?' You jump slightly at the sound of Zeus's voice and resist the urge to cover yourself considering he was probably watching the whole thing. 'Well, from your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras you find there.' With that, you are left alone again, the soil drinking the result of your breeding.";
							CreatureSexAftermath "Nemean Lion" receives "OralCock" from "Player";
							CreatureSexAftermath "Player" receives "OralCock" from "Nemean Lion";
							CreatureSexAftermath "Player" receives "AssFuck" from "Nemean Lion";
					else: [Pure Male]
						say "     Grinning at you with a gleam in his eye, Zeus raises his arms, the sky turning black above him. With a loud boom, a lightning bolt strikes the hill above you, the flash blinding you for a moment. When the stars clear from your vision, the lion has returned, its coat resplendent. Another noticeable feature is the erect pink cock bobbing beneath his golden stomach, a fine gleam of pre shining. His behavior, for it is definitely a he, is closer to that of a house cat, friendly without wishing to appear too much so, brushing against Zeus's leg as it walks past. 'I'm looking forward to this,' you hear the god mutter to himself, patting the lion between his ears. 'I suppose I'll leave you to it. Don't worry, he's a lot tamer now so any wounds you get shouldn't be too serious. Oh, and he'll be banished once you orgasm so try and forgive him if he's a little rough.' With that, the king of Olympus vanishes in a thunderclap.";
						say "     Now that Zeus is gone, the feline shifts his focus to you, rubbing against your leg and purring. If you consider it sufficiently intelligent, then this might be attempts at bribing you into pleasuring it, and oh how you plan on doing so. [if Player is submissive]Crouching beside the lion's engorged penis, you gently begin to stroke his flank, gradually closing in on the twitching organ. Your partner's legs shiver in anticipation, copious fluids dripping onto the soil, exuding an arousing scent that stirs your loins[else]Gripping its mane, you stare it in the eyes to reinforce your dominance, being rewarded with him shrinking away and baring his throat. Content with his reaction, you crouch beside him and begin to stroke his penis, the aroma of his arousal stirring your loins[end if]. As the friction decreases over his erection, you become curious as to what his impressive cock tastes like and lie on your back below his groin, your control still maintained.";
						WaitLineBreak;
						say "     The lion's musk is much more potent beneath him, filling your nostrils to the point of even flowing into your throat. This aids you to salivate as the earthy flavor tickles your mouth and your patience runs thin. Giving your lips a cursory lick, you slip the feline cock into your mouth, looping your tongue around the shaft to taste his essence. Feeling it rotate in your mouth, you are surprised to see the Nemean Lion turning so that his face is beside your loins. As his tongue makes contact with the sensitive flesh of your member you flinch, the rough texture grazing up your length. In tandem, you orally stimulate each other, both out of desire, but also keeping in mind the final goal of him mounting you. Perhaps with this thought in mind, the lion lets your member slip from his jaws and begins to lick at your ass. His tongue grazes over the sensitive skin of your scrotum as he attempts to lubricate your anus. Another side effect is that he has to crouch more to reach, thus forcing his cock further into your soft throat.";
						say "     This doesn't cause you much discomfort however as you swap your focus to circling your tongue around his shaft while allowing him to thrust. The rough texture of his tongue makes you occasionally twitch as it catches on the crinkled skin of your sphincter, the tingles making your penis tap against your partner's neck. Heightening the stimulation, the lion begins to purr as he continues to taste your darkest area, the vibrations carrying through your body and you are sure that he'll be able to feel them in his own cock. The smell of musk grows stronger as you both continue, his balls presses into your nose each time he thrusts. From the feeling of wetness around your anus, you doubt it will be long before you are ready and apprehension conflicts with the eagerness to feel the large feline pounding into you. He seems to share your anticipation for what comes next, dismounting your face and circling around to allow you to get on all fours. With all necessary areas suitably slick, you are ready for the main event.";
						WaitLineBreak;
						say "     Looking over your shoulder, you admire his toned form while you wait for him to approach and mount you. He sniffs your backside for a moment, the wafts of air feeling cool against the sheen of fluid around your anus. With a noise of eagerness, the Nemean Lion heaves himself onto your back and for a moment you wonder whether you will be able to support his weight. As he comes down on top of you, you find your concern to be unfounded. Either he isn't as heavy as he looks or there is some force ensuring your pairing goes smoothly. For a few seconds you relax at the feeling of his warm fur against your naked back before another stimuli takes precedence. With a growl of determination, the lion thrusts forward, impaling your receptive body on his barbed penis. As the head rapidly squeezes through your opening, each of these nubs slips through with pleasurable feedback rushing through your nerves. The big cat only stops his forward momentum when he feels his balls contact with yours.";
						say "     [if Player is submissive]To your surprise, the lion softly grasps your neck in his jaws as he continues to thrust firmly. Beneath a magnificent beast as he pounds you and protectively holds you, you subconsciously feel that this is your natural position[else]To your surprise, you feel the lion's rough tongue rasping over the back of your neck as he continues to push into you. You may be beneath him, but such affection shows he doesn't think you inferior[end if]. You gradually lower your upper body to the ground as the coupling progresses, your rear being kept raised in order to receive your partner's rigid cock. From the increase in force that accompanies his thrusts, you wonder whether he is getting close to climax. By this time he is nearly pounding you into the ground, his thrusts making your penis slap against your tummy, the sound mingling with the squelches from your anus. With a magnificent roar, the Nemean Lion cums deep within your bowels, the flood of spooge spurting out of the joining as his balls contract against your own.";
						WaitLineBreak;
						say "     A cross between a groan and a sigh bursts from your mouth as the pressure from the hot sperm in your ass sends you over the edge too. The first spasm doesn't release any semen, but the second onwards squirts what feels like more than your balls would be capable of holding onto the dirt in front of your head, stray bursts splattering your face. With the lion pressed firmly against your backside, you are held in position while you both recover from your orgasmic paralysis. As soon as the feline takes a step back, you collapse on your side, his shaft sliding from your gaping hole, spilling a new river of semen onto the ground. Through the haze of climax, you become concerned about your companion's approaching banishment. 'Don't worry. Banishment isn't death,' a male voice says from behind you. You rapidly turn your head, but see no-one. 'I'm not supposed to be here, so please forgive my not showing myself. But as I was saying, the lion will be fine. Echidna loves her monsters no matter how mundane or unworldly they appear. Good luck in the Labors.'";
						say "     You gather the being is gone from the silence that follows, only broken by the feline's deep purrs and your panting. With a flash of light, the lion vanishes, leaving you alone beside a sizable pool of cum. 'Now that that's done, would you like to know your next task?' You jump slightly at the sound of Zeus's voice and resist the urge to cover yourself considering he was probably watching the whole thing. 'Well, from your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras you find there.' With that, you are left alone again, the soil drinking the result of your breeding.";
						CreatureSexAftermath "Nemean Lion" receives "OralCock" from "Player";
						CreatureSexAftermath "Player" receives "OralCock" from "Nemean Lion";
						CreatureSexAftermath "Player" receives "AssFuck" from "Nemean Lion";
			else: [Vaginal Sex]
				say "     Grinning at you with a gleam in his eye, Zeus raises his arms, the sky turning black above him. With a loud boom, a lightning bolt strikes the hill above you, the flash blinding you for a moment. When the stars clear from your vision, the lion has returned, its coat resplendent. Another noticeable feature is the erect pink cock bobbing beneath his golden stomach, a fine gleam of pre shining. His behavior, for it is definitely a he, is closer to that of a house cat, friendly without wishing to appear too much so, brushing against Zeus's leg as it walks past. 'I'm looking forward to this,' you hear the god mutter to himself, patting the lion between his ears. 'I suppose I'll leave you to it. Don't worry, he's a lot tamer now so any wounds you get shouldn't be too serious. Oh, and he'll be banished once you orgasm so try and forgive him if he's a little rough.' With that, the king of Olympus vanishes in a thunderclap.";
				say "     Now that Zeus is gone, the feline shifts his focus to you, rubbing against your leg and purring. If you consider it sufficiently intelligent, then this might be attempts at bribing you into pleasuring it, and oh how you plan on doing so. [if Player is submissive]Crouching beside the lion's engorged penis, you gently begin to stroke his flank, gradually closing in on the twitching organ. Your partner's legs shiver in anticipation, copious fluids dripping onto the soil, exuding an arousing scent that stirs your loins[else]Gripping its mane, you stare it in the eyes to reinforce your dominance, being rewarded with him shrinking away and baring his throat. Content with his reaction, you crouch beside him and begin to stroke his penis, the aroma of his arousal stirring your loins[end if]. As the friction decreases over his erection, you become curious as to what his impressive cock tastes like and lie on your back below his groin, your control still maintained.";
				WaitLineBreak;
				say "     The lion's musk is much more potent beneath him, filling your nostrils to the point of even flowing into your throat. This aids you to salivate as the earthy flavor tickles your mouth and your patience runs thin. Giving your lips a cursory lick, you slip the feline cock into your mouth, looping your tongue around the shaft to taste his essence. Feeling it rotate in your mouth, you are surprised to see the Nemean Lion turning so that his face is beside your loins. As his tongue makes contact with the sensitive flesh of your vulva you flinch, the rough texture grazing over your clit. In tandem, you orally stimulate each other, both out of desire, but also keeping in mind the final goal of him mounting you. Perhaps with this thought in mind, the lion redoubles his affections, thrusting his tongue deep within your canal and further dampening the moistening walls. Every so often, his tongue unintentionally slips from your depths and laps over the divide between your anus and pussy.";
				say "     Concerned that your reciprocation is lagging behind, you determinedly press your face further and further up his length, his barbed tip slipping through the firm ring at the back of your mouth and down your throat. He lets out a rumble of approval and gives your button a light nip before starting to lightly thrust into your eager mouth. Content to allow this, you focus on circling your tongue around his shaft, slathering his flesh enthusiastically. The smell of musk grows stronger as you both continue, his balls presses into your nose each time he thrusts. From the constant trickle of wetness from your pussy, you doubt it will be long before you are ready and apprehension conflicts with the eagerness to feel the large feline pounding into you. He seems to share your anticipation for what comes next, dismounting your face and circling around to allow you to get on all fours. With all necessary areas suitably slick, you are ready for the main event.";
				WaitLineBreak;
				say "     Looking over your shoulder, you admire his toned form while you wait for him to approach and mount you. He sniffs your cunt for a moment, the wafts of air feeling cool against the sheen of fluid clinging to the lips. With a noise of eagerness, the Nemean Lion heaves himself onto your back and for a moment you wonder whether you will be able to support his weight. As he comes down on top of you, you find your concern to be unfounded. Either he isn't as heavy as he looks or there is some force ensuring your pairing goes smoothly. For a few seconds you relax at the feeling of his warm fur against your naked back before another stimuli takes precedence. With a growl of determination, the lion thrusts forward, impaling your receptive body on his barbed penis. His shaft slips into your vagina with ease, aided by the copious lubricant of saliva and secretions. The barbs around his tip rub against your clip as he thrusts and withdraws, eliciting gasps and moans from you.";
				say "     [if Player is submissive]To your surprise, the lion softly grasps your neck in his jaws as he continues to thrust firmly. Beneath a magnificent beast as he pounds you and protectively holds you, you subconsciously feel that this is your natural position[else]To your surprise, you feel the lion's rough tongue rasping over the back of your neck as he continues to push into you. You may be beneath him, but such affection shows he doesn't think you inferior[end if]. You gradually lower your upper body to the ground as the coupling progresses, your rear being kept raised in order to receive your partner's rigid cock. From the increase in force that accompanies his thrusts, you wonder whether he is getting close to climax. By this time he is nearly pounding you into the ground, his thrusts making his scrotum to slap against your tummy, the sound mingling with the squelches from your stretched pussy. With a magnificent roar, the Nemean Lion cums deep within you, the flood of semen filling your womb and flowing out of the joining as his balls contract against your clitoris.";
				WaitLineBreak;
				say "     A cross between a groan and a sigh bursts from your mouth as the pressure from the hot sperm deep within you sends you over the edge too. Around his still twitching shaft your cunt begins to repeatedly contract, further cum being squeezed from within your body to trickle over your tummy and onto the bottoms of your breasts. With the lion pressed firmly against your backside, you are held in position while you both recover from your orgasmic paralysis. As soon as the feline takes a step back, you collapse on your side, his shaft sliding from your gaping hole, spilling a new river of semen onto the ground. Through the haze of climax, you become concerned about your companion's approaching banishment. 'Don't worry. Banishment isn't death,' a male voice says from behind you. You rapidly turn your head, but see no-one. 'I'm not supposed to be here, so please forgive my not showing myself. But as I was saying, the lion will be fine. Echidna loves her monsters no matter how mundane or unworldly they appear. Good luck in the Labors.'";
				say "     You gather the being is gone from the silence that follows, only broken by the feline's deep purrs and your panting. With a flash of light, the lion vanishes, leaving you alone beside a sizable pool of cum. 'Now that that's done, would you like to know your next task?' You jump slightly at the sound of Zeus's voice and resist the urge to cover yourself considering he was probably watching the whole thing. 'Well, from your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras you find there.' With that, you are left alone again, the soil drinking the result of your breeding.";
				CreatureSexAftermath "Nemean Lion" receives "OralCock" from "Player";
				CreatureSexAftermath "Player" receives "OralCock" from "Nemean Lion";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Nemean Lion";
			now Resolution of Meet the Nemean Lion is 1; [won, had sex]
		else: [Not interested]
			say "     You shake your head, saying that you have no wish to fornicate in any way with your recent adversary. Zeus looks momentarily surprised, but quickly recovers. 'Each to their own I suppose. Would you like to know your next task?' You silently contemplate the effort the previous labor took but before you can reply Zeus continues. 'From your lack of refusal I'll take that as a yes. You must defeat a hydra of extraordinary size. Once again, I'm not allowed to give you hints, but just in case you didn't get help for the previous labor, there are people in the city with a knowledge of myth so you could possibly ask them for advice.' As he turns to leave, he says over his shoulder, 'you'll find your quarry in the junkyard, but he's larger than the [']normal['] hydras you find there.' With that, you are left alone again, slightly annoyed that the god didn't wait for a proper response.";
			now Resolution of Meet the Nemean Lion is 2; [won, not interested in sex]
		now TwelveLaborsStage is 2;
		ItemGain lionskin by 1;
		if "Twelve Labours Explained" is listed in Traits of Sylvia:
			remove "Twelve Labours Explained" from Traits of Sylvia;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     You come round to a landscape devoid of life. The wounds that previously covered your body have mended and, more importantly, you are alive. With a thunderclap, you are no longer alone. A grim faced Zeus looks down at your prone body before speaking, 'You have failed the first Labor. We seemed to have judged you poorly, you are weak and lucky to be alive. In future think properly and make sure you are ready before attempting to overcome challenges that you face. We are unlikely to meet with you again. Farewell.' He disappears in another clap of thunder, leaving you alone as rain begins to pelt from the skies. As you sit up, the realization sinks in that while you may have failed, someone made sure you survived your defeat. Who could be mighty enough to defeat the lion when you couldn't?";
		now Resolution of Meet the Nemean Lion is 3; [lost]
		now TwelveLaborsStage is 99;
	else if fightoutcome is 30: [fled]
		say "     Realizing that the trial ahead of you may be too difficult, you turn and flee. As you retreat, you can hear the large feline pursuing you, snarls and growls encouraging haste. You barely notice the muscular man you pass as you run down the hill going the opposite direction, too focused on your own problems. You continue fleeing for several minutes before you realize that you weren't being chased any more. You turn around to look back at the hill only to find it gone. The expanse of the plains is unadulterated by hills with large lions. 'Don't be too surprised that it's not there anymore,' a voice says behind you. You spin around to find Zeus glaring at you as he strokes his beard. 'Not only did you fail to defeat the Nemean Lion, but your cowardly actions disgrace yourself and us.' This comment is accompanied by the god spitting at your feet.";
		say "     'In future think properly and make sure you are ready before attempting to overcome challenges that you face. We are unlikely to meet with you again. Farewell.' He disappears in another clap of thunder, leaving you alone as rain begins to pelt from the skies. While you are glad you aren't dead, Zeus's reaction dampens your spirits in sync with the rain soaking your skin. You finally have time to think back on the man you passed as you ran and wonder who he was and whether he was alright. You feel that you have seen him somewhere but can't quite remember. His muscles were huge so perhaps he was a bodybuilder you think to yourself as you trudge on in search of shelter from the rain. It doesn't look like you'll be taking part in the Labors any more.";
		now Resolution of Meet the Nemean Lion is 4; [fled]
		now TwelveLaborsStage is 99;
	now Meet the Nemean Lion is resolved;

Section 1.2 - Lernean Hydra

Table of GameEventIDs (continued)
Object	Name
Too Many Heads	"Too Many Heads"

Too Many Heads is a situation.
ResolveFunction of Too Many Heads is "[ResolveEvent Too Many Heads]".
Prereq1 of Too Many Heads is Meet the Nemean Lion.
Prereq1Resolution of Too Many Heads is { 1, 2 }.
The level of Too Many Heads is 30.
Sarea of Too Many Heads is "Junkyard".

instead of going to Junkyard while (Too Many Heads is active and Too Many Heads is not resolved and TwelveLaborsStage is 2 and a random chance of 1 in 5 succeeds):
	move player to Junkyard;
	TooManyHeadsEvent;

to say ResolveEvent Too Many Heads:
	TooManyHeadsEvent;

to TooManyHeadsEvent: [Fight the Lernean Hydra]
	say "     The junkyard is its usual cacophonous place, metal crashing and creatures roaring, but you have yet to see the supposedly larger hydra that Zeus told you about, or anything else worthy of being described as mythical, at least by nanite-apocalypse standards. Thoughts of how dull and fruitless this is distract you enough that it takes you a minute to realize that the ground is shaking and that the hub bub seems to be becoming increasingly muffled as though you are being submerged underwater. As the mound of rusting cars and defunct washing machines explodes outward, you watch as one of the largest monsters that you have seen charge through what was likely tons of scrap to glare downward at you before unleashing a roar that you can feel reverberate through your bones. Surprisingly, it only has one head, though this seems to be the only feature different from the other draconic hydras roaming the junkyard other than its vast size difference. It barely gives you a chance to run your eyes over its glistening scales, pearly fangs, and thrashing tail before its head lunges toward you, leaving you scrambling to defend yourself.";
	challenge "Lernean Hydra Stage One";
	if fightoutcome < 20: [player won]
		if player is lonely: [Enemy Recovers and strengthens]
			say "     Breathing a sigh of relief, you wait for one of the Olympians to come and reward you for your mighty deed. Instead, to your horror, the hydra begins to stir and you watch as one of its necks divides in two, each with a fully formed head with vengeance glowing in its beady eyes. Releasing an ear-shattering roar, the Lernean hydra charges at you once more. It would seem that your fight is not yet over...";
			challenge "Lernean Hydra Stage Two";
			if fightoutcome < 20: [player won]
				say "     On edge from the hydra's recovery from last time, you wait cautiously to make sure that it is defeated. Your fear is well-founded as barely later, the beast staggers to its feet again with a new neck growing from its shoulders with a draconic head with a maw full of massive fangs. You're beginning to think that you've made a mistake fighting this thing, especially alone. However, your regrets are soon cut short by the hydra charging at you once more with murderous intent.";
				challenge "Lernean Hydra Stage Three";
				if fightoutcome < 20: [player won]
					say "     Not forgetting what has happened the last two times that the Lernean Hydra seemed defeated, you only drop your stance sufficiently to allow yourself to take a few deep breaths for when it inevitably gets back up again. Once again, your caution is proved justified as the beast recovers once more a new head growing and joining the cacophony of snarls that it is emitting. As it readies to charge, your conflict is interrupted by a thunderclap and the arrival of a figure wearing a helmet and armor and wielding a spear between the two of you. 'Stop! This labor is completed,' they command, their voice strong but feminine, slamming the butt of her spear into the ground. The hydra snaps and snarls at the warrior but she doesn't flinch even as its teeth click within inches of her face. 'Sleep. By the time that you wake, your rage will be soothed,' she responds, softly stroking the side of its head as it begins to calm until eventually it falls into slumber.";
					say "     Turning towards you, the woman introduces herself. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. While you have demonstrated your courage and prowess and thus succeeded in this labor, you did so through brute force rather than making the wise decision to have help in overcoming the hydra. Even Herakles didn't do so alone and surely there would have been someone in this city who could have provided you with some guidance. Nonetheless, allow me to grant you a boon to help you survive long enough to complete the other labors.' You are too surprised to move when Athena banishes her spear and steps up to you, placing a hand on your chest while you stand still and look at her with a confused expression. A feeling of warmth radiates from where her palm rests and spreads through your body until it suffuses through your body completely.";
					WaitLineBreak;
					say "     'You and your allies should be more in sync with one another now and hopefully this will mean that while they are with you they will be more active in your defense. This is slightly ironic considering your recklessness today, but hopefully you are wise enough to learn from this. Having friends is not a weakness,' the goddess says, looking at you with concern. 'If you only rely on yourself then there is no-one to help you when you inevitably miscalculate or make a mistake. Reason leads us to believe that those who are alone are likely to perish earlier than those with friends and allies. And don't abandon them in a home base, keep your friends close and your enemies at a spears-length,' she adds pointedly. She is momentarily distracted by a rumble of thunder even though the sky is clear.";
					say "     'I apologize, but that is my cue to leave. I wouldn't want the Aesir to think that I was interfering too deeply. Some of them have tempers, shall we say,' Athena informs you with a knowing glance. 'Your cunning will serve you better than your physical strength, now more than ever, and bravado is a poor substitute for wisdom. Choose your path in life carefully and remember that you do not need to walk it alone. When you are ready to continue with the next labor, look for the nymph in the forest. She will guide you as to what you must do next.' With that said, you watch as the goddess transforms into an owl and flies away, leaving you to consider her words as well as what you should be doing next, the blessing of the gods still making you feel warm.";
					add "Hero's Aura" to feats of Player;
					now Resolution of Too Many Heads is 3; [Brute Force Win]
					now TwelveLaborsStage is 3;
					if "Twelve Labours Explained" is listed in Traits of Sylvia:
						remove "Twelve Labours Explained" from Traits of Sylvia;
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     You hear the whoosh of air as the hydra's head lunges towards you, but instead of feeling its fangs sink into your flesh there is a loud clang and an angrily frustrated roar, causing you to open your eyes again to see what has caused your stay of execution. You find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car.";
					say "     'I think that you already know that you've failed the Second Labour of Herakles, but you can consider this a confirmation,' she tells you with a look of disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I can't fault you for your courage, but your recklessness shows a lack of common sense. Even Ares wouldn't have been so rash. As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even contemplate taking up a safer hobby such as weaving.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
					now Resolution of Too Many Heads is 4; [lost]
					now TwelveLaborsStage is 99;
				else if fightoutcome is 30: [fled]
					say "     Deciding that your chances of surviving the onslaught from this massive hydra are too slim to want to continue the fight, you turn to run, and make the fatal mistake of taking your eye off the threat and leaving yourself open to be struck from behind as you flee. You end up being sent skidding through the detritus with a gushing bite wound to your side, the nanites struggling to repair the damage and allow you to save yourself. As you struggle to your feet, you wait for the monster to strike again and end you but the rush of air that you hear as it lunges at you again is interrupted by a loud clang. As you roll over, you find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe.";
					say "     She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car. 'That was rather pathetic and it should go without saying that you have failed the Second Labour of Herakles,' she tells you with marked disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I agree that discretion is the better part of valor, but considering that you decided to seek the hydra out, one could hardly describe you as being valorous even by this standard.'";
					WaitLineBreak;
					say "     'As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even want to be cautious should you take up a comparatively safer hobby such as weaving. You wouldn't want to get your fingers caught in the loom.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
					now Resolution of Too Many Heads is 5; [fled]
					now TwelveLaborsStage is 99;
				now Too Many Heads is resolved;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     You hear the whoosh of air as the hydra's head lunges towards you, but instead of feeling its fangs sink into your flesh there is a loud clang and an angrily frustrated roar, causing you to open your eyes again to see what has caused your stay of execution. You find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car.";
				say "     'I think that you already know that you've failed the Second Labour of Herakles, but you can consider this a confirmation,' she tells you with a look of disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I can't fault you for your courage, but your recklessness shows a lack of common sense. Even Ares wouldn't have been so rash. As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even contemplate taking up a safer hobby such as weaving.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
				now Resolution of Too Many Heads is 4; [lost]
				now TwelveLaborsStage is 99;
			else if fightoutcome is 30: [fled]
				say "     Deciding that your chances of surviving the onslaught from this massive hydra are too slim to want to continue the fight, you turn to run, and make the fatal mistake of taking your eye off the threat and leaving yourself open to be struck from behind as you flee. You end up being sent skidding through the detritus with a gushing bite wound to your side, the nanites struggling to repair the damage and allow you to save yourself. As you struggle to your feet, you wait for the monster to strike again and end you but the rush of air that you hear as it lunges at you again is interrupted by a loud clang. As you roll over, you find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe.";
				say "     She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car. 'That was rather pathetic and it should go without saying that you have failed the Second Labour of Herakles,' she tells you with marked disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I agree that discretion is the better part of valor, but considering that you decided to seek the hydra out, one could hardly describe you as being valorous even by this standard.'";
				WaitLineBreak;
				say "     'As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even want to be cautious should you take up a comparatively safer hobby such as weaving. You wouldn't want to get your fingers caught in the loom.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
				now Resolution of Too Many Heads is 5; [fled]
				now TwelveLaborsStage is 99;
			now Too Many Heads is resolved;
		else: [Won]
			say "     Breathing a sigh of relief, you wait for one of the Olympians to come and reward you for your mighty deed. Instead, to your horror, the hydra begins to stir and you watch as one of its necks divides in two, each with a fully formed head with vengeance glowing in its beady eyes. As it readies to charge, your conflict is interrupted by a thunderclap and the arrival of a woman in armor and wielding a spear between the two of you. 'Stop! This labor is completed,' she commands, slamming the butt of her spear into the ground. The hydra snaps and snarls at the warrior but she doesn't flinch even as its teeth click within inches of her face. 'Sleep. By the time that you wake, your rage will be soothed and you might be able to be rewarded too,' she responds, softly stroking the side of its head as it begins to calm until eventually it falls into slumber.";
			say "     Turning towards you, the woman introduces herself. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. You have demonstrated your courage and prowess and thus succeeded in this labor, but do not forget that you did not do so alone. You had the help of an ally, and hopefully a friend, just as Herakles before you did. In recognition of the bond between you, allow me to grant you a boon to help you survive long enough to complete the other labors.' You are too surprised to move when Athena banishes her spear and steps up to you, placing a hand on your chest while you stand still and look at her with a confused expression. A feeling of warmth radiates from where her palm rests and spreads through your body until it suffuses through your body completely.";
			WaitLineBreak;
			say "     'You and your allies should be more in sync with one another now and hopefully this will mean that while they are with you they will be more active in your defense. You were wise enough today to recognize that having friends is not a weakness, and that with their help that you can overcome adversaries that might normally be beyond your capabilities alone,' the goddess says, looking at you with pride. 'If you only rely on yourself then there is no-one to help you when you inevitably miscalculate or make a mistake. Reason leads us to believe that those who are alone are likely to perish earlier than those with friends and allies, something which you have demonstrated by overcoming the hydra with their help' she adds. She is momentarily distracted by a rumble of thunder even though the sky is clear.";
			say "     'I apologize, but that is my cue to leave. I wouldn't want the Aesir to think that I was interfering too deeply. Some of them have tempers, shall we say,' Athena informs you with a knowing glance. 'Your cunning will serve you better than your physical strength, now more than ever, and bravado is a poor substitute for wisdom. Choose your path in life carefully and remember that you do not need to walk it alone. When you are ready to continue with the next labor, look for the nymph in the forest. She will guide you as to what you must do next.' With that said, you watch as the goddess transforms into an owl and flies away, leaving you to consider her words as well as what you should be doing next, the blessing of the gods still making you feel warm.";
			add "Hero's Aura" to feats of Player;
			now resolution of Too Many Heads is 6; [Placeholder. If resolved before sex added, will have a way to repeat and finish properly.]
			now TwelveLaborsStage is 3;
			if "Twelve Labours Explained" is listed in Traits of Sylvia:
				remove "Twelve Labours Explained" from Traits of Sylvia;
			[say "     ";
			say "     [bold type]Do you have sex with the hydra?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents: [Sex with Hydra]
				if player is herm: [herm choices]
					say "     [bold type]Is the Hydra male or female?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Male.";
					say "     ([link]N[as]n[end link]) - Female.";
					if Player consents: [Hydra is Male]
						if "Less Anal" is listed in feats of Player: [Vaginal]
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
						else: [Anal]
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
						now Resolution of Too Many Heads is 1; [Won. Hydra was male]
					else: [Hydra is female]
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						now Resolution of Too Many Heads is 2; [Won. Hydra was female]
				else if Player is male: [ Male Choices]
					say "     [bold type]Is the Hydra male or female?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Male.";
					say "     ([link]N[as]n[end link]) - Female.";
					if Player consents: [Hydra is Male. Player mounted anally]
						if "Less Anal" is listed in feats of Player: [Cock Worship?]
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
						else: [Anal]
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
							WaitLineBreak;
							say "     ";
							say "     ";
						now Resolution of Too Many Heads is 1; [Won. Hydra was male]
					else: [Hydra is female]
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						now Resolution of Too Many Heads is 2; [Won. Hydra was female]
				else if Player is female: [ Male Choices]
					say "     [bold type]Is the Hydra male or female?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Male.";
					say "     ([link]N[as]n[end link]) - Female.";
					if Player consents: [Hydra is Male. Player mounted vaginally]
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						now Resolution of Too Many Heads is 1; [Won. Hydra was male]
					else: [Hydra is female]
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						now Resolution of Too Many Heads is 2; [Won. Hydra was female]
				else: [Neuter]
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						WaitLineBreak;
						say "     ";
						say "     ";
						now Resolution of Too Many Heads is 1; [Won. Hydra was male]
			else: [No Sex]
				say "     ";
				say "     ";
				WaitLineBreak;
				say "     ";
				say "     ";]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     You hear the whoosh of air as the hydra's head lunges towards you, but instead of feeling its fangs sink into your flesh there is a loud clang and an angrily frustrated roar, causing you to open your eyes again to see what has caused your stay of execution. You find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car.";
		say "     'I think that you already know that you've failed the Second Labour of Herakles, but you can consider this a confirmation,' she tells you with a look of disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I can't fault you for your courage, but your recklessness shows a lack of common sense. Even Ares wouldn't have been so rash. As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even contemplate taking up a safer hobby such as weaving.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
		now Resolution of Too Many Heads is 4; [lost]
		now TwelveLaborsStage is 99;
	else if fightoutcome is 30: [fled]
		say "     Deciding that your chances of surviving the onslaught from this massive hydra are too slim to want to continue the fight, you turn to run, and make the fatal mistake of taking your eye off the threat and leaving yourself open to be struck from behind as you flee. You end up being sent skidding through the detritus with a gushing bite wound to your side, the nanites struggling to repair the damage and allow you to save yourself. As you struggle to your feet, you wait for the monster to strike again and end you but the rush of air that you hear as it lunges at you again is interrupted by a loud clang. As you roll over, you find yourself lying at the feet of a woman dressed for battle in sandals, bronze breastplate, and plumed helmet, and wielding a spear and shield. She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe.";
		say "     She stands above you protectively, though the hydra doesn't seem eager to strike again, snapping and snarling at the air as it glares at your savior. 'Be gone. They are beaten. You need not be here any longer,' the warrior-woman declares, pointing her spear at your foe. Strangely, the beast seems to comply with her command, stomping away into the junkyard with one last growl at you. When it has disappeared from sight, the woman removes her helmet and turns to face you, placing it, her weapon, and shield on the ground as she kneels down and props you up against the husk of a car. 'That was rather pathetic and it should go without saying that you have failed the Second Labour of Herakles,' she tells you with marked disappointment. 'I am Athena, goddess of wisdom, crafts, and those who undertake heroic endeavors. I agree that discretion is the better part of valor, but considering that you decided to seek the hydra out, one could hardly describe you as being valorous even by this standard.'";
		WaitLineBreak;
		say "     'As such, you may consider your trials over. Some of us had high hopes for you but shall try not to let it color any future interactions with you. Be more careful in future conflicts in which you are involved as you aren't as capable as you seem to think that you are. You might even want to be cautious should you take up a comparatively safer hobby such as weaving. You wouldn't want to get your fingers caught in the loom.' Athena collects her armor and weapon as she straightens up again and turns away. 'We wish you the best in your chosen path, but take care with where you place your feet in future.' With that, she disappears in a thunderclap, a stark contrast to her silent arrival. Gritting your teeth, you struggle to your feet and decide where to go to recover from this sound defeat.";
		now Resolution of Too Many Heads is 5; [fled]
		now TwelveLaborsStage is 99;
	now Too Many Heads is resolved;

Section 1.3 - The Hind of Ceryneia

Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Introduction	"Benefit of Hindsight Introduction"

Benefit of Hindsight Introduction is a situation.
ResolveFunction of Benefit of Hindsight Introduction is "[ResolveEvent Benefit of Hindsight Introduction]".
Prereq1 of Benefit of Hindsight Introduction is Too Many Heads.
The level of Benefit of Hindsight Introduction is 30.
Sarea of Benefit of Hindsight Introduction is "Urban Forest".

instead of navigating Urban Forest while (Benefit of Hindsight Introduction is active and Benefit of Hindsight Introduction is not resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Urban Forest]";
	if NavCheckReturn is false, stop the action;
	move player to Urban Forest;
	say "[ResolveEvent Benefit of Hindsight Introduction]";

to say ResolveEvent Benefit of Hindsight Introduction:
	say "     Unsure of exactly who you are meant to be meeting about the Third Labor, you wander around vaguely, though making sure not to stray too far from the road so as to avoid getting lost. You are just beginning to think that you'll return to the temple in the museum to get more guidance when you see a goat-legged satyr hiding behind some bushes, seeming to be spying on something beyond them. Sneaking up beside them, you peer out past the leaves and spot a naked young woman swimming back and forth in a swimming pool, prompting you to avert your gaze again and instead stare at the satyr, waiting for him to notice you. He is so engrossed in the view that you have been crouched beside him for nearly thirty seconds before he senses your presence and without even looking at you, falls over with a startled yelp. 'I swear I didn't mean to spy on her, it just sort of happened. Please don't set the wolves on me,' he pleads, pressing his face into the dirt.";
	say "     You find this to be a bit of a strange reaction and question him as to why you would do such a thing. Voyeurism isn't exactly an uncommon occurrence in the city after all. His head snaps up and he looks at you, his relief evident. 'Thank the gods that you aren't who I thought you were. She'd have made me prey,' the satyr mumbles, brushing some of the dirt from his face. You ask him who. 'Artemis, the Mistress of the Hunt and the Maiden Archer,' a feminine voice answers as the woman from before steps through the bushes, now dressed more decently in a short, brown tunic, and glares at the perpetrator. 'Do you really want to take after Aktaion? If you want to join me swimming, ask, but hiding in a bush so you can watch is a good way to have the hounds set upon you,' she chides him. Waiting for a break in the conversation, you ask whether they might perhaps be who you are meant to be meeting about the Third Labor of Herakles, noticing their shoulders sag in relief.";
	WaitLineBreak;
	say "     'Oh, praise Zeus. We were beginning to wonder if the hydra had returned to finish you off. She has been known to hold a grudge,' the woman exclaims. 'I am Nephele, a nymph in the service of Artemis, and the satyr that you caught spying on meis Abderos, a follower of Dionysus. We have been tasked with aiding you in the labors.' The goat-man gives you a wave and a grin, his confidence returning. 'From what I hear, you're pretty hot stuff when it comes to fighting monsters,' he comments, eyeing you up and down as he does so. 'Defeating the Nemean Lion and the Lernean Hydra are impressive feats, but this next task requires perseverance rather than strength. The Hind of Ceryneia has been lost within this tainted city and the Goddess of the Wilds would have her returned unharmed,' Abderos explains. 'And unspoilt,' Nephele adds, giving you a piercing glance. 'We are well aware of the proclivities of mortals and you are no exception.'";
	say "     You have to concede that point, but that still doesn't explain how you are meant to catch it when you don't even know where it is. 'That's sort of what we are here for,' the nymph responds. '[Bold Type]The hind was last seen here in these woods[Roman Type], so we'll help you track where it has run off to should it escape, but we aren't allowed to directly aid you beyond this.' 'We also aren't going to follow you around if you're off doing other things. We have lives too,' Abderos chips in, his eyes now having strayed to look at Nephele again, though she seems to be oblivious or ignoring him this time. 'We would appreciate it if you abstained from dithering though. We aren't allowed to leave this plane until you do and, as I'm sure you know, this satyr isn't the only one guided by his lusts in the city,' the nymph continues. 'We can talk to you more as we go, but we've been standing around for long enough. Onwards! The hunt awaits!' Nephele cheers, urging you to start your search for the hind before the two of them charge off ahead of you, leaving you to find your own way.";
	now Benefit of Hindsight Introduction is resolved;

Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Forest	"Benefit of Hindsight Forest"

Benefit of Hindsight Forest is a situation.
ResolveFunction of Benefit of Hindsight Forest is "[ResolveEvent Benefit of Hindsight Forest]".
Prereq1 of Benefit of Hindsight Forest is Benefit of Hindsight Introduction.
The level of Benefit of Hindsight Forest is 30.
Sarea of Benefit of Hindsight Forest is "Urban Forest".

instead of navigating Urban Forest while (Benefit of Hindsight Forest is active and Benefit of Hindsight Forest is not resolved and Benefit of Hindsight Introduction is resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Urban Forest]";
	if NavCheckReturn is false, stop the action;
	move player to Urban Forest;
	say "[ResolveEvent Benefit of Hindsight Forest]";

to say ResolveEvent Benefit of Hindsight Forest:
	say "     Creeping between the trees, you are soon joined by Nephele and Abderos, the satyr moving surprisingly stealthily given that he has a horn of wine in one hand and seems to be slightly inebriated. 'Sorry, sorry,' the nymph apologizes on his behalf, seeing your glance in their direction. 'He didn't think that you would be this quick to begin the pursuit and decided that he had time to attend a party at the college. Fortunately, no one thought twice about a satyr wandering around and we can travel quickly when we need to. We frequently end up assigned together like this, and despite our differences Abderos is nearly as capable in the wilds as I am,' Nephele grudgingly compliments him, as he staggers around twigs and branches that might otherwise spook your quarry. 'We should probably keep silent from now on. We're nearing the hind, I can feel it in the wind.' You agree, but not having spoken a word since meeting them, you smirk that it is her who has been the most chatty. As you near a glade, the satyr gestures for you to take cover behind a fallen log and you see the Hind of Ceryneia for the first time.";
	say "     Your eyes widen as you take in the size of it, wondering how it manages to traverse the forest without its golden antlers catching in the branches. The hind is as large as a moose, though it exudes an aura of serenity as it grazes in the clearing, a creature of elegance despite its size. It takes you a moment to notice that its hooves appear to be bronze and you snap your head around to look at your guides in case they have anything to say. 'Don't get kicked,' Abderos advises you, sagely nodding his head as though he has imparted some great wisdom. As you turn back to look at the doe, a loud noise startles you all and an elf woman sprints from the trees opposite you pursued by a knight who is naked from the waist down, his penis flopping around as he runs. 'Cease your flight fair maiden and tend to my sword,' the knight bellows before tripping over a root, giving the elf a chance to dart off to the side and escape. This unfortunately also causes the hind to bolt in the opposite direction, the branches magically parting in its path to allow it passage before closing behind its retreating from, preventing any chance of you catching up to it.";
	WaitLineBreak;
	say "     Clambering to his feet and dusting himself off, the knight looks around dejectedly before trudging back the way he came, hopefully to find where he left the bottom half of his armor. With a sigh of annoyance, you turn to see what advice Nephele and Abderos can give you only to find the nymph looking absolutely livid. 'That damnable mortal! May the path ever evade him in this forest,' she spits, her companion looking at her uneasily. 'I would take that back. We can find the hind again and the elf escaped unscathed. You know that your words will be heeded if you genuinely mean them, but the gods will ask something in return,' Abderos cautions her, though she remains unmoved. With a sigh the satyr looks over to you. 'Come on, we'll walk with you back to the edge of the woods. We don't want you to end up lost like that knight will surely be and Nephele might have calmed down enough by then to pick up the trail for you.'";
	say "     With little other choice, you readily acquiesce and follow the two of them back the way you came, the nymph muttering darkly under her breath while Abderos strikes up a conversation with you. 'I have to tell you, this city isn't as bad as what I thought it would be. I mean, it would be better if there were more trees, but the majority of people seem to have surrendered to their naturally hedonistic ways,' he says, his earlier tipsiness gone. 'The college was especially pleasant and Lord Dionysus might be interested in making an appearance in one form or another at some of the parties there. I heard that they are planning another big one with everyone invited, but I had to leave before I could find out when.' He continues in this way until you reach the edge of the trees, falling silent when Nephele holds up a hand. Crouching down, she presses a hand into the dirt, sniffs at the air and cocks her head as if listening to something. 'Our quarry heads towards the beach,' she says before trudging off sulkily. 'Please forgive her. She takes pride in her skill at the hunt and likely feels that she has failed you, despite the knight being at fault, not her,' Abderos apologizes. 'I'll try to cheer her up a bit, but don't be surprised if she is desperate to make amends when she next sees you. We'll met you at the beach,' he continues hurriedly before scampering after the nymph, leaving you to decide what to do next.";
	now Benefit of Hindsight Forest is resolved;

Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Beach	"Benefit of Hindsight Beach"

Benefit of Hindsight Beach is a situation.
ResolveFunction of Benefit of Hindsight Beach is "[ResolveEvent Benefit of Hindsight Beach]".
Prereq1 of Benefit of Hindsight Beach is Benefit of Hindsight Forest.
The level of Benefit of Hindsight Beach is 30.
Sarea of Benefit of Hindsight Beach is "Beach".

instead of going to Beach while (Benefit of Hindsight Beach is active and Benefit of Hindsight Beach is not resolved and Benefit of Hindsight Forest is resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	move player to Beach;
	BenefitofHindsightBeachEvent;

to say ResolveEvent Benefit of Hindsight Beach:
	BenefitofHindsightBeachEvent;

to BenefitofHindsightBeachEvent: [Search for the Hind of Ceryneia]
	say "     You find Abderos chatting with a pair of [']beach-babes['], a voluptuous panther and toned rabbit, Nephele strangely absent. Seeing you approaching, the satyr waves you over, a grin spreading across his face. 'Hey there. Listen, I've persuaded these two beautiful women into a threesome, but I doubt that it will take much to make it a foursome instead. Are you interested?' he asks, winking at them and making them giggle. 'Were you planning on abandoning me while I was getting ice cream, or did you forget that we have a responsibility to fulfill before we can engage in such activities?' Turning around, you find Nephele standing there with an icecream in each hand, an eyebrow raised pointedly. 'Well, as I can see that you are busy, I'll just give yours to someone more deserving. Perhaps the hero undergoing the trials? The extra energy will do them good,' she continues, proffering a cone to you while she nibbles on her own. You reflexively take it and begin to lick, inwardly hoping that this isn't going to upset Abderos too much, especially as he now seems torn between the two beautiful women and his friend.";
	say "     With a sigh, he turns to the panther and bunny, 'It will have to be another time ladies. Dionysus wouldn't abandon his duties and neither should I,' he apologizes, the two women blowing him a kiss before bounding away, chattering with each other. 'Cheer up Abderos. Maybe next time Circe will let you buy your own ice cream seeing as you resisted your masculine temptation  this time,' Nephele consolingly says, giving the satyr her own. 'But you've already licked it,' he complains, the nymph rolling her eyes before replying, 'Are you really saying that that is a problem for you? Just think of it like an indirect kiss. I may not be bound by vows of maidenhood, but while I am in the Huntress's service I would not wish to slight her so blatantly.' Conceding her point, Abderos quickly eats the entire thing within seconds, leaving both you and Nephele stunned by this display. 'What? I was hungry, and it tasted like her,' he says defensively, tilting his head towards the nymph and making her scowl and blush. 'Weirdo,' she mutters.";
	WaitLineBreak;
	say "     'But anyway, we've been distracted for long enough. Circe said that she saw the hind down the beach where it was quieter,' Nephele states, gesturing for you to follow her. The three of you make your way past the many other beach-goers, your conversation continuing. 'Hopefully this time there won't be any of those knights, though you'll be pleased to know that my lady Artemis declined to trap him in the forest for all eternity. Recounted a lesson on how being impetuous could ruin the hunt and that I should instead try to find fulfillment in the journey rather than trying to reach completion as expediently as possible. I'm pretty sure that Aphrodite said a similar thing in very different circumstances, but I didn't dare say that to her. Making comparisons between the Olympians can be more dangerous than trying to steal from the Hesperides, but I'm sure that you'll learn that yourself.' The nymph's words concern you, but before you can enquire further she holds up a hand for you to stop and you see the hind at the sea edge being doted over by some naked women. 'Nereids,' Nephele and Abderos say at the same time, though in very different tones.";
	say "     While your female guide almost spits the word out, the satyr instead sounds eager to get to know them, the two women from earlier understandably fresh in his mind. 'Think, Abderos. They are Nereids, whereas I am a dryad,' Nephele grumbles. 'We may as well prepare for having to track the hind again. They aren't malicious, but the nereids will likely warn it of our presence just to be mischievous and because of the rivalry between different nymphs. Just be glad that we haven't run into any maenads. They're much, much more problematic for anyone not following Dionysus. Even Ganymede here wouldn't be able to protect you from them, but I digress. Be prepared for the pursuit to be even longer,' she warns you. Pinching the bridge of her nose in preparation for the sea nymphs['] vexatious behavior, Nephele gestures for you to continue onwards towards your quarry.";
	WaitLineBreak;
	say "     Before you can take more than a few steps, one of the nereids spots you and shouts a warning to the hind, 'Run! The hunters close in on you.' Startled, the Ceryneian Hind leaps away, the sand momentarily causing it difficulty before it sprints away over the dunes. Her warning accurate, Nephele half-heartedly kicks some sand towards the giggling women even as Abderos stares dreamily at them. Sticking their tongues out at you, the sea-nymphs prance back into the sea, leaving the three of you standing around with differing emotions towards them. 'At least the view was nice,' the satyr says, flinching slightly at Nephele's sour expression. 'I can't find the silver-lining as easily as you, but I'll try nonetheless,' she mutters, trying to control her disappointment and [']enjoy the journey[']. You, by comparison, are merely resigned to this whole thing taking no more and no less time than the Olympians have decided.";
	say "     Eventually, Nephele stoops down and picks up a twirly shell, peering at it, licking it, and then  holding it up to her ear. 'Judging from the alignment of the waves, the hind will make her way to the zoo. Though why she would want to go to such a horrible place, I do not know,' she informs you. Incredulous that she could learn all that from a shell you are about to ask more before Abderos cuts in, 'She's just trying to sound mysterious. She can hear the animals reacting to the deer's arrival.' Feeling a little silly at your momentary naivety, you are nonetheless pleased that she is taking its escape a lot better this time. 'Well, I suppose we'll meet you there again,' the nymph informs you. 'Last one to arrive is spoiled wine,' the satyr adds, dashing away in an attempt at a head start. 'I wouldn't worry about him too much. He'll probably get distracted and try to find those women from earlier,' Nephele confides in you before walking serenely after her friend.";
	now Benefit of Hindsight Beach is resolved;

Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Zoo	"Benefit of Hindsight Zoo"

Benefit of Hindsight Zoo is a situation.
ResolveFunction of Benefit of Hindsight Zoo is "[ResolveEvent Benefit of Hindsight Zoo]".
Prereq1 of Benefit of Hindsight Zoo is Benefit of Hindsight Beach.
The level of Benefit of Hindsight Zoo is 30.
Sarea of Benefit of Hindsight Zoo is "Zoo".

instead of navigating Zoo Entrance while (Benefit of Hindsight Zoo is active and Benefit of Hindsight Zoo is not resolved and Benefit of Hindsight Beach is resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Zoo Entrance]";
	if NavCheckReturn is false, stop the action;
	move player to Zoo Entrance;
	say "[ResolveEvent Benefit of Hindsight Zoo]";

to say ResolveEvent Benefit of Hindsight Zoo:
	say "     Your arrival at the zoo is one without a welcoming party, though it could hardly be said to be quiet. All around you are the usual cries and calls of animals, varying from sounds of hostility to those of ecstasy. Realizing that you don't know where exactly in the zoo that you were meant to be meeting and that you aren't likely to find the deer without help, you stand around awkwardly and try to concoct a plan. Fortunately, before much time has passed, you hear familiar voices in the midst of an argument. 'I knew that you would get distracted, but by the gods, I didn't expect to have to trail you all over the city as you pursued men, women, and parties,' an exasperated female voice scolds. Turning around, you see Nephele and Abderos approaching, the satyr for the most part ignoring his companions' complaints. 'I'm sure that [SubjectPro of Player] won't be here either. Why don't you save your prickly tongue for [ObjectPro of Player]?' he replies.";
	say "     You call out to them, interrupting their exchange and making them look towards you with surprise. Even more shocking is that Abderos barges in front of the nymph and makes a dash towards you. Unfortunately for him, he manages to tangle his legs together as he does so and ends up sprawled on the ground as Nephele scampers past him and gently pokes your nose before turning back towards him as he hauls himself back to his feet. 'Now, what did we learn?' she mocks him, sticking her tongue out momentarily. 'Also, by your own wager, you are now sour vinegar. I do hope that none of the gods take this too literally,' she continues. 'I said spoiled wine, and of course no-one is going to transform me into it. Anyway, I thought that nymphs were meant to be nice. Your close ties with nature and all that,' the satyr grumbles, brushing himself off as he comes to a stop in front of you.";
	WaitLineBreak;
	say "     'Surely you're too old to be that naive. Nature is beautiful, not nice, and the two are not the same. Just ask Aphrodite. She has claws. Metaphorically,' Nephele laughs. 'Sometimes a moment of savagery is necessary. Always being kind can get people hurt.' Clearing your throat, you remind them that they are meant to be helping you find the Hind of Ceryneia and that they could well frighten it off with their argument before you even catch sight of it and that you for one would like to complete this trial without needless delays. Both looking suitably chastened, the duo fall silent and instead divert their attention to studying the ground, communicating in hushed tones as they attempt to discern the location of the deer with their primitive yet arcane methods. Eventually, they straighten up and turn to face you. 'The hind is a short distance that way,' Abderos informs you, pointing off to the side. 'We should hurry though. The giants are displeased by her unwillingness to be contained,' Nephele adds.";
	say "     Heeding her words, you set off at a brisk pace in the direction that he has indicated, soon arriving at the edge of an enclosure that has had its bars wrenched apart by some large creature. Looking in, you see a commotion in the opposite corner. A giant seems to have had better luck than you in capturing the hind, though so far success still eludes it, trapping the magnificent creature with its back against the wall, the sacred deer's scything antlers all that is keeping the transformed zookeeper away. 'I know that the labors are meant to be a test, but really?' you hear Abderos mutter before Nephele interjects, 'If we can distract the giant for long enough, maybe even only a few seconds, the hind will be able to escape.' Frowning, you pointedly ask if that isn't counter-intuitive to your own interest in it [italic type]not[roman type] escaping. Looking sympathetic, the nymph replies, 'Sort of. Yes. But I would rather have to search the city again than risk that monster violating an animal sacred to my mistress.'";
	WaitLineBreak;
	say "     Though you can understand her reasoning, circumstances dictate that you do not get a chance to continue the discussion. Growing impatient with the stubborn beast, the giant swings a meaty fist at the hind, its hand colliding with a swinging antler with a sickening crunch. To your shock and horror, the glistening bone snaps off and drops to the ground as the cervine cries out in pain and fear, though its vocalization is soon drowned out by Nephele's bellow of fury at the harm inflicted upon Artemis's sacred hind. Frantically looking around for some weapon to attack the zookeeper with, she eventually settles for a stone, judging the trajectory within a second before throwing it with more force than you would have expected from someone her size. The resulting impact against the back of the giant's head demonstrates her marksmanship even with her improvised missile and makes you glad that you haven't done anything to earn her ire. Astonished, you watch as the giant crumples to the ground, the Hind of Ceryneia narrowly avoiding being crushed as the giant collapses, pulverizing the wall beneath it's considerable mass.";
	say "     'As much as I would like to take credit, I assure you that wasn't me,' Nephele mumbles as both you and Abderos look at her with fearful awe. However, with the new breach in the enclosure, the deer is able to scamper over the fallen form of the giant and escape again, though it does pause for a moment and almost seems to bow at the three of you before dashing away again. 'I think that she earned that one,' Abderos says, a statement that you have to agree with despite the fact that you'll have to find the beast again. 'As distasteful as it is, I'll be able to track her near perfectly using her broken antler,' the nymph sighs, trudging over to the scene of devastation and locating the appendage, resisting the urge to kick the zookeeper while she is beside him. Barely has she touched the golden antler before she says, 'The park. The hind has gone to the park to recover.'";
	WaitLineBreak;
	say "     Finally airing a thought that had been troubling you for a while, you ask how the creature is able to travel so quickly. 'The simple answer is magic, but I would describe it as more as a divine blessing,' Abderos replies. Continuing on from what the satyr has said, Nephele clarifies further, 'While the two might seem interchangeable to you, Hekate's magic is vastly different to what Artemis or Dionysus can do.' Accepting their explanation, you part ways again after agreeing to meet them in the park, the nymph reverently holding the broken antler before her as she walks away.";
	now Benefit of Hindsight Zoo is resolved;

Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Park	"Benefit of Hindsight Park"

Benefit of Hindsight Park is a situation.
ResolveFunction of Benefit of Hindsight Park is "[ResolveEvent Benefit of Hindsight Park]".
Prereq1 of Benefit of Hindsight Park is Benefit of Hindsight Zoo.
The level of Benefit of Hindsight Park is 30.
Sarea of Benefit of Hindsight Park is "Park".

instead of navigating Park Entrance while (Benefit of Hindsight Park is active and Benefit of Hindsight Park is not resolved and Benefit of Hindsight Zoo is resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Park Entrance]";
	if NavCheckReturn is false, stop the action;
	move player to Park Entrance;
	say "[ResolveEvent Benefit of Hindsight Park]";

to say ResolveEvent Benefit of Hindsight Park:
	say "     Facing a similar problem to in the zoo, you register that once again, you didn't agree on anywhere in particular to meet Nephele and Abderos, though with how suddenly you seemed to part ways previously, you begin to wonder whether they are doing this on purpose, especially as they always seem to arrive soon after you as if by magic. With how they explained the hind's ability to travel so quickly, you assume that it is something similar. Finding a bench in the shadow of a statue to some historical philanthropist, you sit and wait for their inevitable arrival. As expected, you aren't waiting long before the two of them round the corner in the middle of laughing about something. They wave as they approach, still stifling giggles as they walk over to you. 'Hiya. Sorry to keep you waiting, but we were held up by some coyote by the entrance,' Nephele chuckles.";
	say "     'I'm sure that you will have met [ObjectPro of Diego] before. Anyway, [SubjectPro of Diego] was in the middle of some nonsense about how we had been invited to a party being held in the Red Light District when Abderos challenged [ObjectPro of Diego] to a drinking competition, even going as far as to call [ObjectPro of Diego] a coward when they initially refused. Now, I know what you're thinking. Only an idiot would agree to a drinking contest with a satyr, but here's the thing, they were only going to be drinking water.' The nymph pauses to to take a breath and Abderos continues the story, 'Or to be more accurate, [SubjectPro of Diego] [italic type]thought[roman type] that we were going to drink water and no doubt was thinking of some way to hoodwink me, but a quick prayer to Dionysus and I knew that I wouldn't have any trouble winning. As soon as any liquid entered either of our throats, it changed into strong wine. Needless to say, I have a much better capacity for alcohol than most in your world. Long story short, now [SubjectPro of Diego] is sleeping it off and we were able to meet up with you without any more problems.'";
	WaitLineBreak;
	say "     Abderos looks quite proud of himself, the praise of his counterpart no doubt stroking his ego. 'Hermes would be proud of you, I'm sure,' Nephele compliments him before, to yours and the satyr's astonishment, kissing him on the cheek. 'Consider yourself forgiven for all those times you watched me bathe,' she giggles while he stands there slack-jawed. 'Now, while he recovers from that, we should get on with finding the hind,' Nephele says, turning to you with a cheeky grin. 'It is likely that she will have gone in search of a source of freshwater, preferably something like a river or a lake. Is there something like that around here?' she continues. Nodding, you mention a decently-sized pond where people used to play in paddle-boats before enquiring as to whether something happened beyond her earlier encounter to cause her good mood, especially when so far your attempts to capture the hind were less than successful, especially in the zoo.";
	say "     With a smile, she explains as the three of you move, 'I took my goddess's advice to see the pursuit as a reward in itself rather than only finding value in it when it is successful. I needed to be reminded that worthy prey that must be stalked is more fulfilling than that which one overcomes immediately. I think that I was paired with Abderos to help me learn this. His carefree approach to life is very different to my own and he seems to find more enjoyment in it than I did with my objective-focused mindset. I'm sure that he can learn from me too, but watching him outwit the coyote earlier made me realize that I frequently underestimate him and that if I want to better serve the Goddess of the Hunt that I need to be less rigid of mind. Now I feel that I can actually enjoy myself a bit more without the fear of it making me a failure.' You have to concede that this sounds like a good reason to be cheerful and congratulate her on her epiphany before the satyr finally finds his tongue and interrupts.";
	WaitLineBreak;
	say "     'You kissed me!' he exclaims in an accusatory tone. 'Did you not like it?' Nephele replies worriedly, her smile slipping. 'It's not that. It was wonderful. I just never imagined that you would ever do that. You're going to get in so much trouble,' he hurriedly responds, concern tingeing his voice. 'Maybe a little, but it's not as if I have sworn a vow of abstinence like Artemis. It just felt like the right thing to do in the moment,' the nymph mumbles, blushing. Though they both fall silent, you imagine that they will be discussing this in private for quite some time. As the pond comes into view, you get the impression that something is very wrong despite the apparent peace that hangs around the water. 'Perhaps she found a stream somewh-?' Abderos begins to suggest, but cuts himself off mid-sentence noticing something by the shoreline, rushing over to look more closely. 'Oh. Well that complicates things,' he mutters before straightening up again and turning to you. 'The hind has been taken by centaurs,' he informs you and causing Nephele to grind her teeth together beside you.";
	say "     'How I wish more centaurs were like Chiron,' she laments. 'Well, I'm sure that you know where we have to go next. I thought that the creatures in your city usually stayed in their own territories, but I suppose I was mistaken.' Asking whether it is possible that actual centaurs rather than those infected by nanites took the sacred hind, both the satyr and the nymph shake their heads. 'They wouldn't dare. At least the ones from our realm. Not if they didn't want to end up hunted in turn by my goddess,' Nephele explains, Abderos nodding in agreement. 'No. They are most likely from one of the tribes on the [bold type]Dry Plains[roman type]'. Reluctantly accepting that your hunt has been extended even more, you enquire as to where to meet them once you get there. 'What we've been doing so far has worked hasn't it?' Abderos teases you, Nephele managing a small smile before returning to her concerned expression. Admitting that it has, you part with the two of them and make your way back towards the entrance to the park, contemplating how you are going to overcome a tribe of centaurs.";
	now Benefit of Hindsight Park is resolved;


Table of GameEventIDs (continued)
Object	Name
Benefit of Hindsight Plains	"Benefit of Hindsight Plains"

Benefit of Hindsight Plains is a situation.
ResolveFunction of Benefit of Hindsight Plains is "[ResolveEvent Benefit of Hindsight Plains]".
Prereq1 of Benefit of Hindsight Plains is Benefit of Hindsight Park.
The level of Benefit of Hindsight Plains is 30.
Sarea of Benefit of Hindsight Plains is "Plains".

instead of navigating Dry Plains while (Benefit of Hindsight Plains is active and Benefit of Hindsight Plains is not resolved and TwelveLaborsStage is 3 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	move player to Dry Plains;
	say "[ResolveEvent Benefit of Hindsight Plains]";

to say ResolveEvent Benefit of Hindsight Plains:
	BenefitofHindsightPlainsEvent;

to BenefitofHindsightPlainsEvent: [Search for the Hind of Ceryneia]
	say "     It takes you several moments before you realize that Nephele and Abderos are walking behind you. 'Took you long enough,' the satyr teases you, the nymph merely waving her fingers in greeting. 'For once, I think we got here ahead of you. Sort of,' she informs you. 'We decided that it might be easier for you if we could tell you which centaur tribe you needed to bring down the wrath of the Huntress upon, so we did some scouting and can take you to them. We would have rescued the Hind ourselves, but as your third labor is as of yet incomplete, we were forbidden from doing so. My lady was not pleased...' she continues, shuddering with what you assume are memories of Artemis's displeasure. 'Anyway, follow us,' Abderos interjects with his usual cheer, no doubt Dionysus not as emotionally invested in the ordeal and thus not causing fear in his followers.";
	say "     It doesn't take you too long to find the guilty centaurs, their tribe small but apparently capable enough to capture a sacred animal of a goddess. They have made camp around a small barn, assorted firepits and stockpiles arrayed around the immediate area. They even have sentries wandering around the perimeter, but they remain oblivious to your approach, their heads frequently turning towards the barn where cries of distress issue from. 'The hind may be why we are here, but don't let that stop you rescuing anyone else that they hold prisoner,' Nephele whispers, a bow now held in one hand and a quiver on her back. 'Abderos and I will distract them at the opposite side of their camp while you sneak in and fulfill your task. As long as you free the hind, she'll make sure you get out safely again. At least I hope so. You might be in for a little difficulty if she doesn't repay you for your kindness.'";
	WaitLineBreak;
	say "     Finding plenty of flaws in this plan, you begin to voice your concern before Abderos waves his hand dismissively. 'If that doesn't work, I'll just turn them into dolphins,' he reassures you. Skeptical, you enquire as to whether there might perhaps be a better way of staging this rescue, a heavy feeling forming in your stomach as soon as Nephele starts to shake her head. 'I apologize, but it has to be a direct strike. Artemis wants her deer safe again, but isn't allowed to send a hunting party to do so due to the pact between the many different gods and goddesses that have taken an interest in your city. You can imagine how messy it would get if they all took a direct hand in influencing the city. The Trojan War was bad enough and that was only the Olympians, not to mention that there are a handful of powerful beings wandering around that are not party to the limited-interference agreement...' she laments.";
	say "     'At least we can give you a little help,' Abderos says, once again trying to cheer you along. Grudgingly, you accept that there is no other way available to you and agree to do your part in their plan. 'Excellent. Let us commence with the rescue. I plan on punishing these savages with as much prejudice as is possible with blunt weapons. No one escapes the reach of the Huntress,' Nephele says with considerable relish. You are soon left all alone, waiting for some sign that you should move on the barn, aware that the scheme relies more on good fortune than meticulous planning. Technically, all that is required of you is to reach the barn, get inside, and release the Hind and any other prisoners that you can. After that you'll have to trust in the gratitude of the beast that you have relentlessly pursued around the city, a factor that seems like it would play more into forming a grudge than any desire to help you, but you must admit that your guides haven't led you astray yet.";
	WaitLineBreak;
	say "     At first there is very little to give away that something has changed in the camp when Nephele and Abderos come into sight, perhaps a few more eyes turned towards the opposite edge or a few centaurs calmly stirring from relaxation. Overall a tepid response that leaves them vulnerable when the nymph draws her bow and unleashes an arrow that thuds into the head of one of the larger equines. Though it bounces off, no doubt due to non-lethal modifications to her ammunition, the centaur staggers a bit slowly crumples to the ground a moment before the commotion explodes into its full glory. Whoops, jeers, and shouts fill the camp, and no doubt much of the surrounding area, as arrows and stones fly through the air and the centaurs gallop around in an attempt to subdue the interlopers as they duck and weave among tents and supplies. You spot Abderos merrily prancing around what you assume is the tribe's stash of alcohol, grabbing bottles and sampling them even while evading the grasping hands of the camp's residents.";
	say "     Seeing this as your chance as the last few sentries on this side of the camp go to assist their brothers in attempting to capture new slaves, you dash towards the barn, keeping low to the ground and ready to defend yourself should any of them spot you before you reach shelter. Fortunately, you manage to slip inside without raising the alarm, catching sight of the satyr vainly attempting to steer a centaur while riding on its back before closing the large door behind you. At least he seemed to be enjoying himself as usual. Turning around you find yourself being watched by more than one pair of wide eyes, Nephele's suspicions of there being multiple prisoners being held here being proven correct. Though at first glance you don't see the Hind, there are a couple of female centaurs in one stall, a trussed-up horseman in a corner, and a pair of bruised soldiers huddled together in a cage.";
	WaitLineBreak;
	say "     None of them make any attempt to call for the guards despite how you have obviously unauthorized entry, suggesting that not even the centaur mares are willing occupants here, the horseman directing an especially desperate expression towards you. As you take a few steps further, you catch sight of the Hind behind a dividing wall, her missing antler particularly distinctive. A multitude of ropes keep her restrained and bound to rings on the wall, though she seems otherwise unsullied, missing antler excluded. The deer eyes you warily but otherwise makes no attempt to struggle against her bonds as you hurry over to her. Laying a reassuring hand on her side you gently explain that you are here to free her, sensing that a calming approach is best, your instinct rewarded when she dips her head and allows you easier access to the ropes that encircle her head and shoulders.";
	say "     Each minute that passes as you tease at the knots and loosen her restraints drags on, fears of what is happening outside and that the guards might soon return gnawing at the back of your mind. Nonetheless, you resolutely continue, the knowledge that should you fail that your new friends['] sacrifice would be for nothing. Finally, after what feels like an hour but may be as little as five minutes, the Hind of Ceryneia is freed from her bondage, the large cervine stamping her bronze hooves as she enjoys her mobility again. Taking pity on the other prisoners and without a moment to lose, you rush over to them in turn, their own salvation taking much less time as you fling open the gate of the mare's stall, directing them to untie the horseman while you unlock the soldier's cage with a key hanging on the wall. With everyone free you prepare yourselves for escaping the centaur tribe's camp.";
	WaitLineBreak;
	say "     'Technically, your labor could be considered complete,' says a serene voice behind you. Startled, your little group, bar the hind, spins around to see a pale-skinned young woman with silver hair stepping out from behind a pile of hay-bales, the doe instead running over to the mysterious figure. She is dressed in a brown and green tunic that stops just short of her knees with a silvery bow and quiver on her back, though you still get the impression that she would be able to draw and loose an arrow at you within the fraction of a heartbeat should she wish to. Briefly regarding you keenly with soulful gray eyes, she soon redirects her attention towards the deer as it comes to a stop before her and kneels down, a warm smile spreading across her face as she runs her hand over its face. 'I am Artemis and I thank you for rescuing my hind. While usually a gentle creature, the centaurs have earned her ire as well as my own so I shall allow her to repay your kindness despite having accomplished the labor that you were tasked with. I shall speak with you again soon.' As quickly as she appeared, the goddess vanishes again, her words confusing the centaur mares, soldiers, and horseman.";
	say "     Before you get the chance to explain, the barn door is hurled open and a particularly muscular centaur recoils in surprise at finding you standing before them. 'How the fuck did you get in here?' he spits, hefting a leather whip in one hand. 'Pah. Doesn't take much to guess that you're with those two assholes that are messing up the camp. Mo matter, your rescue attempt stops here and I'll make you into a fuck slave just like these other bitches even if I have to beat the resistance out of you.' With the soldiers in no fit shape to fight back, and the centaur mares cowering away, it would seem that it is up to you, the horseman, and the sacred deer to see this slaver off, the situation worsening when eight more centaurs appear behind him, readying lassoos and clubs. Such a shame that Artemis couldn't have stayed around just a little longer...";
	WaitLineBreak;
	say "     Any concern that you might have had quickly fades away as the Hind of Ceryneia charges right past you and into the middle of the group of centaurs, scything her antler back and forth. Despite having only one antler, the doe's superior size and the ferocity with which she swings her head around soon puts the centaurs to flight sporting bruises and gashes, vengeance for their crimes against the Goddess of the Hunt's sacred animal. Within seconds, only the leader remains, lying on the ground groaning and flinching back again each time he attempts to stand again as the hind stomps a bronze hoof towards him, making you wonder how weakened she must have been for the centaurs to capture her in the park. With one last glare at the fallen slaver, the deer makes her escape closely followed by the other captives and you, your group only stopping when you are a considerable distance from the encampment.";
	say "     You are slightly disappointed, but nonetheless understanding, when none of them except the hind remain around for long, thanking you with sincerity before dashing off across the plains in different directions whether it is to return to their own herd, military camp, or humble abode. The two of you don't remain alone for long, the familiar figures of Nephele and Abderos soon rejoining you, a suspicious bag that clinks whenever he moves slung over Abderos['] shoulder. 'What? I'm allowed to take loot, aren't I?' he says defensively when you raise an eyebrow at him, the nymph giggling at this exchange. 'I'd have allowed you to take even more,' a voice says behind you, making you flinch. You turn to find Artemis scratching the hind under her chin, though she does have the decency to dip her head in apology at startling you.";
	WaitLineBreak;
	say "     'I suppose that I'll have to accept the rescue of their prisoners and the looting of their alcohol as the extent of my vengeance towards their tribe. A shame, but perhaps a more healthy outcome for all those involved,' she muses as she moves her hand up to caress the top of the doe's head where she is missing an antler. Miraculously, as she rubs, the bone begins to regenerate at an astonishing rate, the damage soon becoming but a memory. You can't help but join Nephele and Abderos as they smile at this feat of healing, though they no doubt knew that the goddess was capable of it. 'Would you like a chance to bid farewell to the hind before I return her back to my personal forests?' Artemis asks you, stepping aside as you reply in the affirmative. The deer lenas into your palm as you gently stroke the side of her face, admiring her antlers as you do so.";
	say "     Stepping back again, you watch the deer, waiting for it to fade away or vanish in a flash of light. However, you eventually are forced to blink and when you open your eyes, the doe is gone and the Huntress is looking at you rather smugly. 'Sometimes subtlety is better,' she confides. 'Now, I'm sure that you are waiting for your reward for completing this labor and are unlikely to accept that the real treasure was the friends that you made along the way, so I won't make you wait any longer. And before you ask, no. You may not have sex with the hind. She's been through enough. If Nephele could please hand me the broken antler that she had been keeping safe for me, I will bless it and grant you my boon.' The nymph produces the antler from the folds of her tunic somehow and passes it to her goddess, though you do see a small amount of disappointment on her face. 'Cheer up young one. You and Abderos will receive your own rewards later, though perhaps I should still turn you into a bear for kissing him,' Artemis teases, relenting when she sees Nephele's expression turn to terror. 'As you said, you aren't sworn to abstinence nor did you attempt to hide this from me, so you need not fear punishment. Perhaps I should work on my humor...'";
	WaitLineBreak;
	say "     Running her fingers over the antler, marvelous images of hunting are left behind etched into the bone with hounds running at the heels of the masters while stags bound and birds take flight. With the scene completed, the antler begins to shrink in the goddess's hands until it is small enough to fit in the palm of her hand. 'I thought that it would be easier for you to store like this,' she explains as she offers you your prize. Looking at it, you cautiously ask whether it is a protective charm or merely a momento. 'Mostly it's a momento, but I decided to give it a little inspiration from those abominable nanites infesting your city. If you rub it, it will transform you into a doe, or stag, just like my hind. It will even resist other transformations and bolster your essence beyond what the majority of nanites can do,' Artemis replies almost boastfully. 'If you get tired of looking like that, just rub the antler again. It will make you human again, but of course you are free to resume mingling with the animals should you wish.'";
	say "     'I think that I have explained what I need to. Someone will find you at the library when we are ready for you to complete the next task. I wish you well until we meet again, though I do not have the gift of prophecy to guess when that might be. Most are not too distraught to see me leave, so I doubt that it will be too troubling for you. You may be pleased to know that Nephele and Abderos will likely be assisting you again in future with some of the other labors should you continue to excel. Good luck,' Artemis states, standing aside to allow the nymph and satyr to say their own goodbyes. 'It was a pleasure to hunt with you and I look forward to assisting you again,' Nephele says, hugging you and causing the goddess to roll her eyes good-naturedly. 'Maybe next time we can meet up at a party,' Abderos adds, he too giving you a hug as the nymph steps out of the way. Your farewells said, you stow the hind's antler in your backpack and watch as the they walk away, wondering when you will next see them, hoping that it will be sooner rather than later.";
	now TwelveLaborsStage is 4;
	ItemGain Ceryneian Antler by 1;
	if "Twelve Labors Explained" is listed in Traits of Sylvia:
		remove "Twelve Labors Explained" from Traits of Sylvia;
	now Benefit of Hindsight Park is resolved;


Section 2 - Table of Game Objects

Section 2.1 - Nemean Lionskin

Table of Game Objects (continued)
name	desc	weight	object
"lionskin"	"The skin of the Nemean Lion. Ethically acquired after completing the First Labor of Herakles."	5	lionskin

lionskin is a grab object.
lionskin is equipment.
It is not temporary.
Plural of lionskin is false.
Taur-compatible of lionskin is true.
The size of lionskin is 3.
The AC of lionskin is 100.
The effectiveness of lionskin is 40.
The placement of lionskin is "body".
The descmod of lionskin is "You have the hide of a big cat wrapped around your shoulders.".
The slot of lionskin is "body".
The scent of lionskin is "The Nemean Lion's skin still smells of his musk, a potent, authority-demanding scent."

Section 2.2 - Antler of the Hind of Ceryneia

Table of Game Objects (continued)
name	desc	weight	object
"Ceryneian Antler"	"A small golden antler with hunting scenes etched into it. Feelings of freedom fill you as you handle it."	1	Ceryneian Antler

Ceryneian Antler is a grab object. Understand "Ceryneian" and "Antler" as Ceryneian Antler. It is not temporary.

Usedesc of Ceryneian Antler is "[CeryneianTransformation]";

the scent of Ceryneian Antler is "The etched antler smells of the forest, damp and leafy.".

To say CeryneianTransformation:
	if "Ceryneian Blessed - Anthro" is listed in traits of Player or "Ceryneian Blessed - Feral" is listed in traits of Player or "Ceryneian Blessed - Taur" is listed in traits of Player:
		say "     Wishing to become human again, you press the antler against your chest, somehow feeling the etchings against your flesh. Visualizing your desired transformation, you feel the energy of the artifact flow through you, shifting your form back to being human. Grunting as your antlers shrink back into your skull, while not exactly painful, the pressure definitely wouldn't be described as a blissful experience. Your face flattens back into that of a human and the thin fur that covered you withers and drops to the ground before blowing away in a sudden puff of wind. ";
		if "Ceryneian Blessed - Anthro" is listed in traits of Player:
			say "You stagger and have to recalibrate your balance as your previously unguligrade legs return to being plantigrade. Between your legs, your genitals shift and shrink back into those more fitting of the human that you are becoming while above your ass, your tail retreats back into your spine. By the time your transformation is complete and you are able to take a breath, you are a nondescript human once again.";
			TraitLoss "Ceryneian Blessed - Anthro" for Player;
		else if "Ceryneian Blessed - Feral" is listed in traits of Player:
			say "You fall to the ground as your previously unguligrade hind legs return to being plantigrade and your forelegs become arms with soft hands rather than hooves. Between your legs, your genitals shift and shrink back into those more fitting of the human that you are becoming while above your ass, your tail retreats back into your spine. By the time your transformation is complete and you are able to pick yourself up off the ground, you are a nondescript human once again.";
			TraitLoss "Ceryneian Blessed - Feral" for Player;
		else if "Ceryneian Blessed - Taur" is listed in traits of Player:
			say "You fall to the ground as your previously unguligrade hind legs return to being plantigrade and your forelegs rapidly diminish in size before vanishing back into your body as your equine half fuses with your more humanoid half. Between your legs, your genitals shift and shrink back into those more fitting of the human that you are becoming while above your ass, your tail retreats back into your spine. By the time your transformation is complete and you are able to pick yourself up off the ground, you are a nondescript human once again.";
			TraitLoss "Ceryneian Blessed - Taur" for Player;
		StatChange "Strength" by -6;
		StatChange "Dexterity" by -8;
		StatChange "Stamina" by -6;
		StatChange "Intelligence" by -4;
		StatChange "Perception" by -6;
		StatChange "Charisma" by -6;
		Humanify_Player;
		attributeinfect "Human";
		stop the action;
	else: [Player is not currently a Ceryneian Transformation]
		if Nightmaretf > 0: [Nightmare]
			say "     You rub the shrunken golden antler and immediately snatch your fingers away again as a stabbing sensation like being struck by thousands of arrows spreads through your hand. You swear that you hear the wind breath, 'Tainted...' as you return the artifact to your backpack. Perhaps the Olympians take issue with your Nightmare infection.";
			stop the action;
		if wrcursestatus >= 7 and wrcursestatus < 100: [Were-raptor]
			say "     You rub the shrunken golden antler and immediately snatch your fingers away again as a stabbing sensation like being struck by thousands of arrows spreads through your hand. You swear that you hear the wind breath, 'Cursed...' as you return the artifact to your backpack. Perhaps the Olympians take issue with you being a wereraptor.";
			stop the action;
		if (JackalManTF > 0 and JackalManTF < 5) or (JackalBoyTF > 0): [Jackalman Transformation]
			say "     You rub the shrunken golden antler and immediately snatch your fingers away again as a stabbing sensation like being struck by thousands of arrows spreads through your hand. You swear that you hear the wind breath, 'Soul-sworn...' as you return the artifact to your backpack. Perhaps the Olympians take issue with your Jackalman infection.";
			stop the action;
		else if isHellhound is true: [Hellhound]
			say "     You rub the shrunken golden antler and immediately snatch your fingers away again as a stabbing sensation like being struck by thousands of arrows spreads through your hand. You swear that you hear the wind breath, 'Filth-ridden...' as you return the artifact to your backpack. Perhaps the Olympians take issue with your Hellhound infection.";
			stop the action;
		else: [No other permanent transformations]
			say "     Wanting to make use of the boon afforded to you by Artemis, you trace your fingers over the etchings on the antler. As you do so, a whooshing sound like leaves in the wind grows in your ears, until eventually it dies away again, leaving a sense of serenity over your mind. Gradually, a mist seems to seep from over your shoulders and form into shapes before your eyes, settling into three distinct figures; that of an anthro deer-person, a quadrupedal deer not unlike the Hind of Ceryneia herself, and a hybrid of the other two, a deer-taur. It would seem that you have a choice, you just need to visualize yourself in that form.";
			LineBreak;
			say "     [bold type]How do you visualize yourself?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Anthro.";
			say "     [link](2)[as]2[end link] - Feral.";
			say "     [link](3)[as]3[end link] - Tauric.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to simply watch, [link]2[end link] to get in the room, [link]3[end link] to knock on the window, [link]4[end link] to continue, or [link]5[end link] to leave and avoid the area in the future.";
			if calcnumber is 1: [Anthro]
				LineBreak;
				say "     With the bipedal deer-person in mind, you feel your body begin to shift, beginning with your hands and spreading from there. Your fingers toughen and appear to become gleaming bronze, while a layer of dappled brown fur begins to grow from the rest of your hand and up your arms. It continues to spread until it reaches your feet, which compact themselves until they form cloven hooves, forcing you to readjust your balance as you momentarily feel like you are standing on tiptoe. This feeling of instability soon passes as the rest of your leg shifts to become unguligrade and your mind rapidly seems to acclimatize. As your limbs lengthen and become more slender, you also feel your muscles become denser, especially around your shoulders and hips, though outwardly you don't seem to be any more bulky, being left looking graceful but with the occasional ripple of muscle visible through your dappled brown fur as you move.";
				say "     Your face draws out into a slender snout with a damp wet nose at the end and you immediately notice your sense of smell has improved, able to pick up the body odor of potential threats or the succulent scent of fresh fruit from who-knows-where. Your ears shrink back into your head before elongating again, narrow and able to reflexively twitch towards sound. An intense pressure builds in the top of your head and you immediately put your hands up to feel as the pressure is released and two golden antlers grow upwards until they reach a size that would elicit envy in the majority of other cervines. Your sight too seems to shift, becoming a lot crisper but also able to discern a sort of aura around some things, though this is generally much less apparent around inanimate objects. No doubt your boosted senses will help you around the city just as they would the Ceryneian Hind while being hunted.";
				WaitLineBreak;
				say "     A particularly strong tickling feeling at the base of your spine makes you put your hand back, and you immediately feel a small, furry tail flicking around at your touch, though you also feel the firm, round buttock beneath it too. No doubt it will be enticing for others, especially should you be bent over. Despite this being a boon from Artemis, you get the impression that another goddess in particular may have had some influence on how this transformation has affected you. Briefly you wonder of the transformation has reached completion, especially as you now look like a svelte anthro deer with an impressive rack of antlers, when you feel stirring from your groin and watch as [if player is herm]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls and an invitingly damp black-lipped vulva nestled behind[else if player is male]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls[else if player is female]the lips of your vulva become black and puff outwards slightly, a small amount of fluid leaking and lubricating your entrance[end if].";
				say "     Confident that your metamorphosis is complete this time, you admire your new form from the top of your golden antlers to the tips of your bronze hooves. Not only do you look good, but you feel infused with power, suggesting that the changes go well beyond your physical self. With that in mind, you stow the Ceryneian Antler back in your pack and prepare to resume your usual activities.";
				now TailName of Player is "Anthro Ceryneian Deer";
				now TailSpeciesName of Player is "Ceryneian Deer";
				now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
				now SkinName of Player is "Anthro Ceryneian Deer";
				now SkinSpeciesName of Player is "Ceryneian Deer";
				now Skin of Player is "dappled brown-furred";
				now FaceName of Player is "Anthro Ceryneian Deer";
				now FaceSpeciesName of Player is "Ceryneian Deer";
				now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
				now BodyName of Player is "Anthro Ceryneian Deer";
				now BodySpeciesName of Player is "Ceryneian Deer";
				now Body of Player is "graceful in appearance, though wiry muscles flex beneath your skin suggesting that there is hidden strength. You have long delicate arms and hands, capped with bronze fingertips, not dissimilar to the Hind of Ceryneia herself, and with proper hooves instead of feet at the ends of your legs, once again, bronze and gleaming";
				attributeinfect "Anthro Ceryneian Deer";
				now CockName of Player is "Anthro Ceryneian Deer";
				now CockSpeciesName of Player is "Ceryneian Deer";
				now Cock of Player is "pitch-black equine";
				TraitGain "Ceryneian Blessed - Anthro" for Player;
			else if calcnumber is 2: [Feral]
				LineBreak;
				say "     With the quadrupedal deer in mind, you feel your body begin to shift, beginning with your fingers and toes before spreading from there. Your hands and feet toughen and appear to become gleaming bronze before shifting into cloven hooves, while a layer of dappled brown fur begins to grow from above them and spread up your limbs. As your legs, both front and back, lengthen and become more slender, you are forced to adopt a quadrupedal posture as your bones shift and your muscles become more dense, especially around your shoulders and hips, though outwardly you don't seem to be any more bulky, being left looking graceful but with the occasional ripple of muscle visible through your dappled brown fur with each movement as you become accustomed to no longer being bipedal.";
				say "     Your face draws out into a slender snout with a damp wet nose at the end and you immediately notice your sense of smell has improved, able to pick up the body odor of potential threats or the succulent scent of fresh fruit from who-knows-where. Your ears shrink back into your head before elongating again, narrow and able to reflexively twitch towards sound. An intense pressure builds in the top of your head before it is finally released as two golden antlers grow upwards until they reach a size that would elicit envy in the majority of other cervines. Your sight too seems to shift, becoming a lot crisper but also able to discern a sort of aura around some things, though this is generally much less apparent around inanimate objects. No doubt your boosted senses will help you around the city just as they would the Ceryneian Hind while being hunted.";
				WaitLineBreak;
				say "     A particularly strong tickling feeling at the base of your spine makes you look over your back to see a small, furry tail flicking around above your firm, round rump. No doubt it will be enticing for others, especially the [']predators['] of the city. Despite this being a boon from Artemis, you get the impression that another goddess in particular may have had some influence on how this transformation has affected you. Briefly you wonder of the transformation has reached completion, especially as you now look like a svelte feral deer with an impressive rack of antlers, when you feel stirring from your groin and watch with difficulty as [if player is herm]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls. You also sense an invitingly damp black-lipped vulva beneath your anus[else if player is male]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls[else if player is female]the lips of your vulva become black and puff outwards slightly, a small amount of fluid leaking and lubricating your entrance[end if].";
				say "     Confident that your metamorphosis is complete this time, you admire your new form as best you can from the top of your golden antlers to the tips of your bronze hooves. Not only do you look good, but you feel infused with power, suggesting that the changes go well beyond your physical self. With that in mind, you stow the Ceryneian Antler back in your pack, your front hooves apparently able to form digits when necessary, and prepare to resume your usual activities.";
				now TailName of Player is "Feral Ceryneian Deer";
				now TailSpeciesName of Player is "Ceryneian Deer";
				now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
				now SkinName of Player is "Feral Ceryneian Deer";
				now SkinSpeciesName of Player is "Ceryneian Deer";
				now Skin of Player is "dappled brown-furred";
				now FaceName of Player is "Feral Ceryneian Deer";
				now FaceSpeciesName of Player is "Ceryneian Deer";
				now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
				now BodyName of Player is "Feral Ceryneian Deer";
				now BodySpeciesName of Player is "Ceryneian Deer";
				now Body of Player is "graceful in appearance, though wiry muscles flex beneath your skin suggesting that there is hidden strength. You have four long delicate legs, capped with bronze hooves, not dissimilar to the Hind of Ceryneia herself. When it becomes necessary, you fore-hooves seem to mold into fingers, shifting back as soon as you have completed the task";
				attributeinfect "Feral Ceryneian Deer";
				now CockName of Player is "Feral Ceryneian Deer";
				now CockSpeciesName of Player is "Ceryneian Deer";
				now Cock of Player is "pitch-black equine";
				TraitGain "Ceryneian Blessed - Feral" for Player;
			else if calcnumber is 3: [Taur]
				LineBreak;
				say "     With the deer-taur in mind, you feel your body begin to shift, beginning with your hands and spreading from there. Your fingers toughen and appear to become gleaming bronze, while a layer of dappled brown fur begins to grow from the rest of your hand and up your arms. It continues to spread until it reaches your feet, which compact themselves until they form cloven hooves and cause you to lose your balance. Falling over, you lie on the ground as the transformation continues, your torso seeming to elongate and a new pair of legs, similar in appearance to your other ones, rapidly forming until your body is that of a taur. Tentatively standing up again, you watch as your legs lengthen and become more slender, your muscles becoming more dense, especially around your shoulders and hips, though outwardly you don't seem to be any more bulky, your lower half looking especially graceful compared to the majority of centaurs but there is still the occasional ripple of muscle visible through your dappled brown fur with each movement as you become accustomed to no longer being bipedal.";
				say "     Your face draws out into a slender snout with a damp wet nose at the end and you immediately notice your sense of smell has improved, able to pick up the body odor of potential threats or the succulent scent of fresh fruit from who-knows-where. Your ears shrink back into your head before elongating again, narrow and able to reflexively twitch towards sound. An intense pressure builds in the top of your head and you immediately put your hands up to feel as the pressure is released and two golden antlers grow upwards until they reach a size that would elicit envy in the majority of other cervines. Your sight too seems to shift, becoming a lot crisper but also able to discern a sort of aura around some things, though this is generally much less apparent around inanimate objects. No doubt your boosted senses will help you around the city just as they would the Ceryneian Hind while being hunted.";
				WaitLineBreak;
				say "     A particularly strong tickling feeling at the base of your spine makes you look over your back to see a small, furry tail flicking around above your firm, round rump. No doubt it will be enticing for others, especially the [']predators['] of the city. Despite this being a boon from Artemis, you get the impression that another goddess in particular may have had some influence on how this transformation has affected you. Briefly you wonder of the transformation has reached completion, especially as you now look like a svelte deer-taur with an impressive rack of antlers, when you feel stirring from your groin and watch with difficulty as [if player is herm]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls. You also sense an invitingly damp black-lipped vulva beneath your anus[else if player is male]your shaft swells to be similar to what you might imagine on a draft horse, before becoming pitch black and an immaculate, sinfully-soft, white-furred sheath forms around it with a matching scrotum protecting your churning balls[else if player is female]the lips of your vulva become black and puff outwards slightly, a small amount of fluid leaking and lubricating your entrance[end if].";
				say "     Confident that your metamorphosis is complete this time, you admire your new form as best you can from the top of your golden antlers to the tips of your bronze hooves. Not only do you look good, but you feel infused with power, suggesting that the changes go well beyond your physical self. With that in mind, you stow the Ceryneian Antler back in your pack and prepare to resume your usual activities.";
				now TailName of Player is "Ceryneian Deer-taur";
				now TailSpeciesName of Player is "Ceryneian Deer";
				now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
				now SkinName of Player is "Ceryneian Deer-taur";
				now SkinSpeciesName of Player is "Ceryneian Deer";
				now Skin of Player is "dappled brown-furred";
				now FaceName of Player is "Ceryneian Deer-taur";
				now FaceSpeciesName of Player is "Ceryneian Deer";
				now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
				now BodyName of Player is "Ceryneian Deer-taur";
				now BodySpeciesName of Player is "Ceryneian Deer";
				now Body of Player is "graceful in appearance, though wiry muscles flex beneath your skin suggesting that there is hidden strength. Your lower half has four long delicate legs, capped with bronze hooves, not dissimilar the Hind of Ceryneia herself, but being a deer-taur, you still have a more humanoid upper body, complete with hands";
				attributeinfect "Ceryneian Deer-taur";
				now CockName of Player is "Ceryneian Deer-taur";
				now CockSpeciesName of Player is "Ceryneian Deer";
				now Cock of Player is "pitch-black equine";
				TraitGain "Ceryneian Blessed - Taur" for Player;
			StatChange "Strength" by 6;
			StatChange "Dexterity" by 8;
			StatChange "Stamina" by 6;
			StatChange "Intelligence" by 4;
			StatChange "Perception" by 6;
			StatChange "Charisma" by 6;
			stop the action;

An everyturn rule:
	if "Ceryneian Blessed - Anthro" is listed in traits of Player:
		if TailName of Player is not "Anthro Ceryneian Deer":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the Ceryneian Antler returns your body to a proper form, your short deer tail reforming behind you. Its return proving that its power is stronger than your more recent infection.";
			now TailName of Player is "Anthro Ceryneian Deer";
			now TailSpeciesName of Player is "Ceryneian Deer";
			now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
		if SkinName of Player is not "Anthro Ceryneian Deer":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of brown fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dappled softness once again.";
			now SkinName of Player is "Anthro Ceryneian Deer";
			now SkinSpeciesName of Player is "Ceryneian Deer";
			now Skin of Player is "dappled brown-furred";
		if FaceName of Player is not "Anthro Ceryneian Deer":
			say "A feeling of dysphoria grows within your head and your face begins to shift and warp, its external appearance at odds with your internal identity. Grunting and huffing, you feel the familiar pressure of the golden antlers growing from the top of your head along with the accompanying release when they have fully reformed. It is only when you are able to see the auras again that your mind settles again.";
			now FaceName of Player is "Anthro Ceryneian Deer";
			now FaceSpeciesName of Player is "Ceryneian Deer";
			now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
		if BodyName of Player is not "Anthro Ceryneian Deer":
			say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of an anthro Ceryneian deer.";
			now BodyName of Player is "Anthro Ceryneian Deer";
			now BodySpeciesName of Player is "Ceryneian Deer";
			now Body of Player is "graceful in appearance, though wiry muscles flex beneath your skin suggesting that there is hidden strength. You have long delicate arms and hands, capped with bronze fingertips, not dissimilar to the Hind of Ceryneia herself, and with proper hooves instead of feet at the ends of your legs, once again, bronze and gleaming";
			attributeinfect "Anthro Ceryneian Deer";
		if CockName of Player is not "Anthro Ceryneian Deer":
			now CockName of Player is "Anthro Ceryneian Deer";
			now CockSpeciesName of Player is "Ceryneian Deer";
			now Cock of Player is "pitch-black equine";
	else if "Ceryneian Blessed - Feral" is listed in traits of Player:
		if TailName of Player is not "Feral Ceryneian Deer":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the Ceryneian Antler returns your body to a proper form, your short deer tail reforming behind you. Its return proving that its power is stronger than your more recent infection.";
			now TailName of Player is "Feral Ceryneian Deer";
			now TailSpeciesName of Player is "Ceryneian Deer";
			now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
		if SkinName of Player is not "Feral Ceryneian Deer":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of brown fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dappled softness once again.";
			now SkinName of Player is "Feral Ceryneian Deer";
			now SkinSpeciesName of Player is "Ceryneian Deer";
			now Skin of Player is "dappled brown-furred";
		if FaceName of Player is not "Feral Ceryneian Deer":
			say "A feeling of dysphoria grows within your head and your face begins to shift and warp, its external appearance at odds with your internal identity. Grunting and huffing, you feel the familiar pressure of the golden antlers growing from the top of your head along with the accompanying release when they have fully reformed. It is only when you are able to see the auras again that your mind settles again.";
			now FaceName of Player is "Feral Ceryneian Deer";
			now FaceSpeciesName of Player is "Ceryneian Deer";
			now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
		if BodyName of Player is not "Feral Ceryneian Deer":
			say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of a feral Ceryneian deer.";
			now BodyName of Player is "Feral Ceryneian Deer";
			now BodySpeciesName of Player is "Ceryneian Deer";
			now Body of Player is "graceful in appearance, though wiry muscles flex beneath your skin suggesting that there is hidden strength. You have four long delicate legs, capped with bronze hooves, not dissimilar to the Hind of Ceryneia herself. When it becomes necessary, you fore-hooves seem to mold into fingers, shifting back as soon as you have completed the task";
			attributeinfect "Feral Ceryneian Deer";
		if CockName of Player is not "Feral Ceryneian Deer":
			now CockName of Player is "Feral Ceryneian Deer";
			now CockSpeciesName of Player is "Ceryneian Deer";
			now Cock of Player is "pitch-black equine";
	else if "Ceryneian Blessed - Taur" is listed in traits of Player:
		if TailName of Player is not "Ceryneian Deer-taur":
			say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the Ceryneian Antler returns your body to a proper form, your short deer tail reforming behind you. Its return proving that its power is stronger than your more recent infection.";
			now TailName of Player is "Ceryneian Deer-taur";
			now TailSpeciesName of Player is "Ceryneian Deer";
			now Tail of Player is "Your backside has a deer's tail over it, fluffy and cute with soft cream along the underside. The rest of your ass is quite curvy, your tail hiding nothing.";
		if SkinName of Player is not "Ceryneian Deer-taur":
			say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of brown fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dappled softness once again.";
			now SkinName of Player is "Ceryneian Deer-taur";
			now SkinSpeciesName of Player is "Ceryneian Deer";
			now Skin of Player is "dappled brown-furred";
		if FaceName of Player is not "Ceryneian Deer-taur":
			say "A feeling of dysphoria grows within your head and your face begins to shift and warp, its external appearance at odds with your internal identity. Grunting and huffing, you feel the familiar pressure of the golden antlers growing from the top of your head along with the accompanying release when they have fully reformed. It is only when you are able to see the auras again that your mind settles again.";
			now FaceName of Player is "Ceryneian Deer-taur";
			now FaceSpeciesName of Player is "Ceryneian Deer";
			now Face of Player is "that of a deer, with magnificent golden antlers on top of your head and an almost otherworldly glow to your eyes";
		if BodyName of Player is not "Ceryneian Deer-taur":
			say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of a Ceryneian deer-taur.";
			now BodyName of Player is "Ceryneian Deer-taur";
			now BodySpeciesName of Player is "Ceryneian Deer";
			now Body of Player is "your limbs grow, becoming long and graceful with bronze-like fingers on your slender hands, and gleaming hooves replacing your feet. Additionally, your torso seems to elongate and bend while a similar pair of legs form, eventually leaving you as a taur. Despite your graceful appearance, you feel your muscles strengthening beneath your skin, compact and not overly visible externally";
			attributeinfect "Ceryneian Deer-taur";
		if CockName of Player is not "Ceryneian Deer-taur":
			now CockName of Player is "Ceryneian Deer-taur";
			now CockSpeciesName of Player is "Ceryneian Deer";
			now Cock of Player is "pitch-black equine";

Greek Mythos ends here.
