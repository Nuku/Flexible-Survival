Version 1 of Nadia by Wahn begins here.
[ Version 1.0 - NPC setup as commissioned by Watcher - Wahn ]
[ Version 1.1 - Character relocation - Luneth               ]

"Adds an NPC named Nadia to the Flexible Survival game"

[ HP states of Nadia (localisation)                                                 ]
[   0: never met her                                                                ]
[   1: met her, brought her into the library                                        ]
[   2: Nadia in the library, Lost Chick quest given                                 ]
[   3: Nadia in the library, Lost Chick quest given, First Rescue attempt failed    ]
[   4: Nadia in the library, Lost Chick quest completed                             ]
[   5: Nadia in the library, Lost Chick quest completed, Feathered Cloak awarded    ]
[  99: player turned her away                                                       ]

[ NadiaDescription (progress in her looks/character)                                ]
[  1: Maiden                                                                        ]
[  2: Young Mother                                                                  ]
[  3: Mother                                                                        ]
[  4: Proud Mother                                                                  ]
[  5: Matriarch                                                                     ]
[  6: Fertility Goddess                                                             ]

[ NadiaFertilityCounter (number of eggs laid and fertile pills given)               ]
[ NadiaChickCounter (number of hatched offspring)                                   ]
[ NadiaPregCounter1 (progress of her first pregnancy)                               ]
[ NadiaPregCounter2 (progress of her second pregnancy)                              ]
[ NadiaPregCounter2 (progress of her third pregnancy)                               ]

[ NadiaPregVisibility (how big she currently is)                                    ]
[  0: not pregnant                                                                  ]
[  1: just started a simple pregnancy                                               ]
[  2: either halfway into a simple pregnancy or two started at the same time        ]
[  3: egg ready to lay for single pregnancy                                         ]
[  4: even bigger than a single ready to lay, second egg on the way                 ]
[  5: one egg ready to lay, two more on the way                                     ]

[ npcNadiaint (npc-Nadia-interaction state) = ABCDEFGHIJKLMN                        ]
[ Character A - Denise Interaction: (NadiaChar-A)                                   ]
[   0: Nothing happened                                                             ]
[   1: met and talked with Denise                                                   ]
[ Character B - Icarus Interaction: (NadiaChar-B)                                   ]
[   0: Nothing happened                                                             ]
[   1: nursed subby Icarus                                                          ]
[ Character C - Amy Interaction: (NadiaChar-C)                                      ]
[   0: Nothing happened                                                             ]
[   1: had a play-date with Amy                                                     ]
[ Character D - Tehuantl Interaction: (NadiaChar-D)                                 ]
[   0: Nothing happened                                                             ]
[ Character E - Felinoid Interaction: (NadiaChar-E)                                 ]
[   0: Nothing happened                                                             ]
[ Character F - Fang Interaction: (NadiaChar-F)                                     ]
[   0: Nothing happened                                                             ]
[ Character G - Elijah Interaction: (NadiaChar-G)                                   ]
[   0: Nothing happened                                                             ]
[ Character H - Exotic Bird Interaction: (NadiaChar-H)                              ]
[   0: Nothing happened                                                             ]
[   1: met the bird and sang with him                                               ]
[ Character I - Player in AvianPred Form Interaction: (NadiaChar-I)                 ]
[   0: Nothing happened                                                             ]
[   1: Player had sex with Nadia as an avian predator                               ]
[ Character J - Chick Interaction: (NadiaChar-J)                                    ]
[   0: Nothing happened                                                             ]
[   1: Green Thumb Event (2 chicks)                                                 ]
[   2: Green Thumb Event II                                                         ]
[   3: Beauty Treatment Event (>10 chicks)                                          ]
[ Character K - Unassigned Interaction: (NadiaChar-K)                               ]
[ Character L - Unassigned Interaction: (NadiaChar-L)                               ]
[ Character M - Unassigned Interaction: (NadiaChar-M)                               ]

Section 1 - Nadia, the bird of paradise

Table of GameCharacterIDs (continued)
object	name
Nadia	"Nadia"

Nadia is a woman. The HP of Nadia is normally 0.
The description of Nadia is "[NadiaDesc]".
The conversation of Nadia is { "Mew!" }.

NadiaDescription is a number that varies. NadiaDescription is usually 1.
NadiaFertilityCounter is a number that varies. NadiaFertilityCounter is usually 0.
NadiaChickCounter is a number that varies. NadiaChickCounter is usually 0.
NadiaPregCounter1 is a number that varies.
NadiaPregCounter2 is a number that varies.
NadiaPregCounter3 is a number that varies.
NadiaPregVisibility is a number that varies.
GreenTumbTurn is a number that varies.
NadiaintCounter is a number that varies.
lastNadiaSpotted is a number that varies. lastNadiaSpotted is normally 500.

NadiaChar-A is a text that varies. NadiaChar-A is normally "0". [Denise]
NadiaChar-B is a text that varies. NadiaChar-B is normally "0". [Icarus]
NadiaChar-C is a text that varies. NadiaChar-C is normally "0". [Amy]
NadiaChar-D is a text that varies. NadiaChar-D is normally "0". [Tehuantl]
NadiaChar-E is a text that varies. NadiaChar-E is normally "0". [Felinoid]
NadiaChar-F is a text that varies. NadiaChar-F is normally "0". [Fang]
NadiaChar-G is a text that varies. NadiaChar-G is normally "0". [Elijah]
NadiaChar-H is a text that varies. NadiaChar-H is normally "0". [Exotic Bird]
NadiaChar-I is a text that varies. NadiaChar-I is normally "0". [Avian Player]
NadiaChar-J is a text that varies. NadiaChar-J is normally "0". [Chicks]
NadiaChar-K is a text that varies. NadiaChar-K is normally "0". [unassigned]
NadiaChar-L is a text that varies. NadiaChar-L is normally "0". [unassigned]
NadiaChar-M is a text that varies. NadiaChar-M is normally "0". [unassigned]

An everyturn rule: [pregnancy progress every turn]
	if NadiaPregCounter1 is 1: [time to give birth]
		say "[NadiaEggBirth]";
	if NadiaPregCounter1 > 0: [she's pregnant, so let's recalculate her looks]
		say "[NadiaPregVisibilityUpdate]";
	if NadiaPregCounter1 > 1:
		decrease NadiaPregCounter1 by 1;
	if NadiaPregCounter2 > 1:
		decrease NadiaPregCounter2 by 1;
	if NadiaPregCounter3 > 1:
		decrease NadiaPregCounter3 by 1;

to say NadiaEggBirth: [time to give birth]
	now NadiaPregCounter1 is 0; [empty place for an egg]
	if player is in Garden View:
		if NadiaPregCounter2 is 0:
			if NadiaDescription is 1 or NadiaDescription is 2:
				say "     [NadiaMaidenBirthingText]";
			else if NadiaDescription is 3 or NadiaDescription is 4:
				say "     [NadiaMotherBirthingText]";
			else: [description 5 and 6]
				say "     [NadiaMatriarchBirthingText]";
			WaitLineBreak;
			say "     [NadiaSinglePregBirthing]";
		if NadiaPregCounter2 > 0: [second running pregnancy becomes first]
			if NadiaDescription is 1 or NadiaDescription is 2:
				say "     [NadiaMaidenBirthingText]";
			else if NadiaDescription is 3 or NadiaDescription is 4:
				say "     [NadiaMotherBirthingText]";
			else: [description 5 and 6]
				say "     [NadiaMatriarchBirthingText]";
			WaitLineBreak;
			say "     [NadiaMultiPregBirthing]";
			now NadiaPregCounter1 is NadiaPregCounter2; [pregnancy progress of the 2nd pregnancy transferred to 1st as it's the next one to pop out]
			now NadiaPregCounter2 is 0; [clearing the variable]
		if NadiaPregCounter3 > 0: [third running pregnancy becomes second]
			now NadiaPregCounter2 is NadiaPregCounter3; [pregnancy progress of the 3nd pregnancy transferred to 2st as it's second in line]
			now NadiaPregCounter3 is 0; [clearing the variable]
	else:
		say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should back to the library and check with Nadia.";
		if NadiaPregCounter2 > 0: [second running pregnancy becomes first]
			now NadiaPregCounter1 is NadiaPregCounter2; [pregnancy progress of the 2nd pregnancy transferred to 1st as it's the next one to pop out]
			now NadiaPregCounter2 is 0; [clearing the variable]
		if NadiaPregCounter3 > 0: [third running pregnancy becomes second]
			now NadiaPregCounter2 is NadiaPregCounter3; [pregnancy progress of the 3nd pregnancy transferred to 2st as it's second in line]
			now NadiaPregCounter3 is 0; [clearing the variable]
	increase NadiaChickCounter by 1;
	increase NadiaFertilityCounter by 1;
	if NadiaDescription < 6: [she's not reached Goddess stage yet]
		say "[NadiaDescriptionUpdate]"; [checks progression to the next stage]
	say "[NadiaPregVisibilityUpdate]"; [to give her non-pregnant looks]

to say NadiaMaidenBirthingText:
	say "     'It's time,' Nadia says between gasps. 'I can feel the shell hardening!' Fortunately, since Nadia never strays too far from her nest, it's easy to lead her back to it and she lies down on one of the softer cushions with her wings spread, anticipating the egg's arrival.";
	say "     'It hurts!' Nadia whimpers. 'It hurts...' Yet she bravely forges on, chest heaving, talons gripping the ground tightly as bit by bit, the egg is nudged from her womb, through her tunnel and out into the world. Tears well up in Nadia's eyes and seep into her feathers, but she doesn't scream or curse, instead bearing the pain with an immense inner strength, letting out a huge gasp as the egg finally crowns and leaves her body. The laying complete, having taken an hour or so, she struggles to push herself upright, wiping tears of pain and love alike from her eyes.";

to say NadiaMotherBirthingText:
	say "     'It's time,' Nadia says between gasps. 'I can feel the shell hardening!' Fortunately, since Nadia never strays too far from her nest, it's easy to lead her back to it and she lies down on one of the softer cushions with her wings spread, anticipating the egg's arrival.";
	say "     At least the laying isn't too hard on her now. The effort still clearly tires her out, the avian puffing and panting in time with the throbbing of her womb as her body prepares to release the fully-developed egg, but she doesn't look like she's in serious pain. The laying takes about half an hour, the egg eventually crowning and sliding free of her pussy to land on one of the cushions of her nest.";

to say NadiaMatriarchBirthingText:
	say "     'It's time,' Nadia says between gasps. 'I can feel the shell hardening!' Fortunately, since Nadia never strays too far from her nest, it's easy to lead her back to it and she lies down on one of the softer cushions with her wings spread, anticipating the egg's arrival.";
	say "     The laying happens almost as soon as Nadia wills it to, her strong, experienced womb pushing down with immense strength, visibly pulsing with its efforts. Painlessly and effortlessly, the egg slips through her slick tunnel and between her massive hips to emerge into the world.";

to say NadiaSinglePregBirthing:
	say "     The moment the egg is clear of her body, it starts to rock and shake, a faint tapping coming from within. Nadia croons, bending her own head down to tap at the eggshell from the other side with her beak. Soon enough cracks, appear and widen before the eggshell finally splits, spilling a small chick into Nadia's arms, still damp with egg fluids. Humming softly, Nadia cradles the newborn to her breast to nurse, the chick painlessly gripping her nipple with the tip of their beak. Fluffy down falls to the floor as the chick suckles greedily, growing and gaining their colorful young adult plumage in a matter of moments. At last, they pop free, and Nadia gives her new chick a soft pat on the head before setting them down.";
	say "     Her empty belly, though, is quickly receding back to its original flat state, and she considers it sadly for a moment before looking up at you with an expectant smile. 'I'm still feeling broody. Please don't make me wait too long, okay?'";

to say NadiaMultiPregBirthing:
	say "     The moment the egg is clear of her body, it starts to rock and shake, a faint tapping coming from within. Nadia croons, bending her own head down to tap at the eggshell from the other side with her beak. Soon enough cracks, appear and widen before the eggshell finally splits, spilling a small chick into Nadia's arms, still damp with egg fluids. Humming softly, Nadia cradles the newborn to her breast to nurse, the chick painlessly gripping her nipple with the tip of their beak. Fluffy down falls to the floor as the chick suckles greedily, growing and gaining their colorful young adult plumage in a matter of moments while at the same time easing the pressure within Nadia's breasts, which are no longer leaking.";
	say "     The remaining contents of Nadia's womb slip downward and press against her hips, taking advantage of the recently vacated space even as her belly slowly shrinks to fit them snugly. Nadia rubs the new curves of her belly longingly, then turns to you and chirps, a smile on a her beak. 'I love it that I can lay and still be pregnant. Please keep me filled and bred, so I won't ever have to go empty and sad, okay?'";

to say NadiaDescriptionUpdate: [basic description update]
	if NadiaFertilityCounter > 29:
		now NadiaDescription is 6;
	else if NadiaFertilityCounter > 17:
		now NadiaDescription is 5;
	else if NadiaFertilityCounter > 9:
		now NadiaDescription is 4;
	else if NadiaFertilityCounter > 4:
		now NadiaDescription is 3;
	else if NadiaFertilityCounter > 1:
		now NadiaDescription is 2;
	else:
		now NadiaDescription is 1;

to say NadiaPregVisibilityUpdate: [pregnancy description update]
	now NadiaPregVisibility is 0; [variable reset]
	if NadiaPregCounter1 > 0: [has to be pregnant for anything to be visible]
		if NadiaPregCounter1 < 13: [1st pregnancy egg ready to pop out]
			increase NadiaPregVisibility by 3;
		else if NadiaPregCounter1 < 25: [1st pregnancy egg getting bigger]
			increase NadiaPregVisibility by 2;
		else if NadiaPregCounter1 < 37: [1st pregnancy egg still small]
			increase NadiaPregVisibility by 1;
		if NadiaPregCounter2 > 0: [2nd pregnancy egg gives some size increase]
			increase NadiaPregVisibility by 1;
		if NadiaPregCounter3 > 0: [3rd pregnancy egg gives some size increase]
			increase NadiaPregVisibility by 1;

instead of sniffing Nadia: [how she smells]
	if (HP of Nadia is 0 or HP of Nadia is 99): [not yet met or refused]
		say "ERROR-Nadia-001S: She should not be around yet anywhere where players can smell her.";
	else:
		if NadiaDescription is 6:
			say "     Nadia's scent is heavenly and heady, speaking of the numerous lives that've been shaped in her womb as it spills forth from her person. You can't quite place words to the divine fragrance she exudes, warm and floral as always with a hint of incense, but changed somehow - and then you realize that she smells not merely of life, but of spring, of regrowth, warmth, calm...and breeding.";
		else if NadiaDescription is 5:
			say "     Nadia smells like life itself. It's hard to put any other name to the heady, vaguely floral scent that hints of love and desire, of pain and pleasure alike. It surrounds her entire avian form, but is thickest about her cunt, yet another signal of her body's desire to bear even more life than it already has.";
		else if NadiaDescription is 4:
			say "     Inexplicably, a warm, floral fragrance trails Nadia wherever she goes, reminding you of a sun-lit field of flowers. It's just the nanites, right?";
		else if NadiaDescription is 3:
			say "     A faint aroma is detectable as it rises from Nadia's feathers, sweet but not cloying, pleasant but not overwhelming.";
		else if NadiaDescription is 2:
			say "     Having cleaned herself up somewhat since her arrival, Nadia smells cleaner now, a breath of fresh air compared to some of the mustier areas of the library.";
		else if NadiaDescription is 1:
			say "     Nadia smells like damp feathers, with a hint of sweat.";

to say NadiaDesc: [how she looks]
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Nadia], NADIADESCRIPTION: [NadiaDescription], NADIAFERTILITYCOUNTER: [NadiaFertilityCounter], NADIACHICKCOUNTER: [NadiaChickCounter], PREG1COUNTER: [NadiaPregCounter1], PREG2COUNTER: [NadiaPregCounter2], PREG3COUNTER: [NadiaPregCounter3], NADIAPREGVISIBILITY: [NadiaPregVisibility] <- DEBUG[line break]";
	if (HP of Nadia is 0 or HP of Nadia is 99): [not yet met or refused]
		say "ERROR-Nadia-001L: She should not be around yet anywhere where players can see her.";
	else:
		if NadiaDescription is 6:
			say "     Nadia is now a veritable goddess, a wellspring of life. Having exceeded all expectations, even her own, it's quite impossible to imagine how she can appear any more fecund than she already is. With how readily and enthusiastically her body has adapted to the immense number of impregnations and births she's gone through despite her petite form - resulting in lush, fertile hips and sumptuous, firm breasts beyond imagination - she looks practically fit to be worshipped, her entire body swaying erotically with every step she takes. The crimson, wavy waterfall of her hair cascades freely down to the back of her knees, and each and every one of her feathers are brilliant and beautiful, glowing with their own inner radiance.";
			say "     Despite spending much of her time in and around her nest, Nadia's limbs and thighs are toned, and her wings have grown broader and more powerful, draped about her like a cloak of many colors when they're folded about her back. Her generous, tantalizing nipples are now constantly stiff, and her slick, sensitive cunt is swollen with heat and fertility even when she's pregnant. Nadia looks absolutely blissful and croons maternally as she rubs her belly, suggestive of the hypertrophied womb and ovaries that lie beneath, ever ready to be bred with more eggs.";
			say "     Nadia's mere presence in the library is a ray of light in this broken world, a blossom in a garden choked with weeds. Just looking at her in the little world of her nest makes you feel warm and peaceful inside.";
		else if NadiaDescription is 5: [basic appearance]
			say "     Finally in full blossom, the exquisite flower that is Nadia is practically unrecognizable from the frightened, washed-out creature you brought back to the library. Her feathers resplendent in color, her flowing crimson hair and tail-feathers working together to reach the floor in one unbroken line, she manages to add a splash of color to the library all by herself - and her blissful face doesn't hurt, either. Full, firm breasts promise adequate nursing for the next generation she easily ushers into the world by virtue of her massive hips that force wide her stance, and her pussy has finally joined her nipples in exposing themselves, puffy, wet and eager to be bred over and over again.";
			say "     Truly a mother in every sense of the word now, Nadia seems to exude an aura of calm and peace when she ventures from her nest, even when she's not crooning or singing. Perhaps when all this is over, there will be hope for the future in a nanite-torn world, but for now, you must struggle in your own way, and Nadia in hers.";
		else if NadiaDescription is 4:
			say "     Having grown into a fine figure of motherhood, Nadia is now everything the phrase implies, her nipples and areolae fully visible now that the feathers on her chest have thinned to better cover her still-growing breasts, her hips generous and motherly as the avian expects her next clutch of eggs - and their subsequent hatching.";
			say "     Her feathers are now vivid hues of blue, green and yellow against red, and her mere presence seems to brighten up the dull confines of the library against the nanite apocalypse going on outside. Whatever that had been nurtured within her nest - now coated with her own down[if NadiaChickCounter > 0] and that of her chicks[end if] - she's brought it out into the world to be shared.";
		else if NadiaDescription is 3:
			say "     Looking over Nadia, she certainly could be compared to a flower in partial blossom - something to be appreciated, but with the promise of more to come. Repeated pregnancies have caused her breasts to swell to the point where her light pink nipples are clearly visible from under her feathers, with the hint of areolae, and her hips have widened even further in anticipation of even more eggs, the outline of her pussy tantalizingly there-but-not-there under her feathers.";
			say "     She's ditched the ribbon completely and grown her hair out to the small of her back, her crimson locks swaying in time with her equally long tail-feathers whenever she ventures from her nest in search of reading material amidst the stacks of the library, or perhaps for bits and pieces to satisfy her nesting instinct. Happier now and her feathers more colorful, especially near her wingtips, the faint maternal humming of Nadia's wordless singing often accompanies her wherever she goes.";
		else if NadiaDescription is 2:
			say "     Nadia has now settled down somewhat within the library, the nest she's built suited better to her personal comforts after some adjustments. Noticing you approach, she looks up and gives you a small smile, then turns back to her reading. She's certainly getting more used to having talons instead of fingers.";
			say "     She still wears no clothing, although you notice that the outlines of her nipples are now pushing out from under her feathers, and her hips are now better-proportioned. The red ribbon that once held her hair up has come partially undone, allowing locks of her crimson hair to spill out onto her feathers, which although still pale look less washed-out than they did when she first arrived.";
		else if NadiaDescription is 1:
			say "     Having escorted Nadia back from where she was holed up in Fairhaven College, you take a little while to look over her. Being transformed into a bird of paradise has left her with feathers of every hue and stripe on a mostly red coat, although they look pretty pale and washed-out, perhaps due to the stressful conditions she was trapped in until recently. In addition to her feathers, she's kept her shoulder-length hair, a deep, vivid crimson that she keeps tied up with a red ribbon. It's the only article of clothing she now wears, having deemed her feathers enough to protect her modesty - which is largely true, especially considering her small breasts and girlish hips. Jutting from between her shoulder blades, her wings are wide and strong, although she keeps them folded about her body protectively most of the time.";
			say "     Following some strange instinct, Nadia's gathered a number of cushions and other furniture from around the library's second floor to form a nest of sorts about her, sorting through everything with the talons that've replaced her hands and feet and building a little refuge from the madness out in the city. Yet the avian looks a little sad - there has to be some way to cheer her up and bring warmth and color into her person.";
		if NadiaPregVisibility is 5: [pregnancy appearance]
			say "     Nadia's pregnancy is now positively monstrous, her feathers stretched thin over her gently pulsing belly, her breasts issuing forth constant trickles of milk from the sheer pressure of being so full. Heavy to the point where she can only walk a short distance before running out of breath, she keeps everything she needs - food, reading materials, the occasional box of tissues she's managed to scavenge up - within easy reach of her nest.";
			say "     Addled from the hormones and nanites coursing through her system, Nadia now spends a good deal of her time staring off into space - unable to think straight, her tongue hanging out of her open beak as she pants in a mixture of bliss and pleasure alike.";
		else if NadiaPregVisibility is 4:
			say "     The weight of Nadia's belly, far too big to be anything but multiples, slows her down a little in her daily tasks, even with the nanites['] aid. It juts out hugely in front of her, and she's probably lost sight of her feet long ago. Still, it doesn't seem to bother her any, though, and neither do the steady dribble of milk that escapes from her nipples - if anything, her gravid, encumbered state only adds a certain elegance to her movements, counter-intuitive as it sounds.";
		else if NadiaPregVisibility is 3:
			say "     Cradling her heavily swollen belly with one hand, Nadia doesn't seem to notice you as she gently tests one of her swollen breasts with the other. Droplets of milk ooze from her nipple, and she watches in rapt fascination as it soaks her feathers. A gentle warmth exudes from Nadia's person, and she coos gently every now and then as she feels the life within her squirm and shift.";
		else if NadiaPregVisibility is 2:
			say "     Her belly is curved slightly outwards with the results of your recent breeding between the two of you, and her breasts look a little heavier than normal. Somehow, you feel a sudden urge to protect her. Nadia happily fusses over her growing pregnancy, clearly anticipating what's to come.";
		else if NadiaPregVisibility is 1:
			say "     Currently, she's resting in her nest, looking pleased with herself and her talons clasped over her lower belly. Would that you have such peace, or trust in the bunker to defend you as securely as she trusts in her nest.";
		if NadiaChickCounter > 29:
			say "     Nadia's massive brood of [NadiaChickCounter] chicks brings her immense joy. The eldest of the little horde have already moved out from the library and have begun reclaiming nearby buildings and rooftops for their own, remaining in close contact with their mother, while the rest remain under Nadia's wing to help her care for the steady stream of new additions to their huge family. The broody bird herself has little need to do anything personally anymore, with her numerous chicks serving as her hands, eyes and ears, and when not caring for her brood is more than content to focus on the important job of being pregnant and laying...over and over and over again, with no end in sight.";
		else if NadiaChickCounter > 10: [chick appearance]
			say "     Nadia's [NadiaChickCounter] chicks are a colorful, cheerful lot in their bright plumage, an even mix of boys and girls. The older ones are now mature enough to run errands like keeping the nest clean, running out into the city for whatever their mother desires, and caring for their younger siblings, taking a load off her hands. Nadia herself keeps everything in her little world well-organized, while tending to, playing with and reading to the younger chicks from the many books in the library.";
		else if NadiaChickCounter > 1:
			say "     Nadia's [NadiaChickCounter] chicks are a colorful, cheerful lot in their bright plumage, an even mix of boys and girls. Despite their constant vying for her attention, she has boundless energy when it comes to dealing with them all, tirelessly keeping them fed, watered, disciplined and entertained.";
		else if NadiaChickCounter is 1:
			say "     Nadia's single chick is the apple of her eye, and she keeps the little fellow well-wrangled and within sight most of the time. Despite having no one to show her the ins and outs of parenting, she's doing quite well, embracing her awakened maternal instincts to fill the gaps in her education.";

instead of conversing the Nadia: [talking to her]
	if (HP of Nadia is 0 or HP of Nadia is 99): [not yet met or refused]
		say "ERROR-Nadia-001T: She should not be around yet anywhere where players can talk to her.";
	else:
		if NadiaDescription is 6: [Fertility Goddess]
			if NadiaPregCounter1 > 0:
				say "     [one of]Nadia giggles. 'Even I'm a little surprised at how many little ones I've been able to be a mother to. I just keep on popping them out, don't I?'[or]'I feel like one of those fertility goddesses now,' Nadia says happily. 'I've proved myself more than capable for the part, don't you think?'[or]'Of course I love all my children. There's more than enough to go around. How do I remember all their names? I just do, don't ask.'[or]Nadia closes her eyes and chirps longingly as she rubs her pregnant belly. 'I don't even need to think about it now. It just keeps happening, feels so natural - and I love it that way.'[or]'I love you all, my little ones,' Nadia murmurs to herself in her sleep, her wings draped protectively about the next in line for her growing brood. 'You are the light of my world.'[at random]";
			else:
				say "     [one of]Nadia giggles. 'Even I'm a little surprised at how many little ones I've been able to be a mother to. I just keep on popping them out, don't I?'[or]'I feel like one of those fertility goddesses now,' Nadia says happily. 'I've proved myself more than capable for the part, don't you think?'[or]'Of course I love all my children. There's more than enough to go around. How do I remember all their names? I just do, don't ask.'[or]Nadia cozies herself up to you, her familiar need clear in the subtle shifts of her scent and her faint panting.[or]'Ooh...' Nadia whimpers. 'Just plant your seed in your garden already, please...I always feel so horribly empty when not growing another life in me...'[at random]";
		else if NadiaDescription is 5: [Matriarch]
			if NadiaPregCounter1 > 0:
				say "     [one of]Nadia says 'I don't regret bringing so many lives into this world, ruined as it is. If things are ever going to be better, then we have to try instead of giving up hope.'[or]Nadia chirps 'Looking at my brood, I think there's hope for the future. Aren't they all so adorable?'[or]Nadia says nothing and nuzzles you with her beak, leaning in to drape her brilliantly colored wings about you.[or]Nadia closes her eyes and sighs blissfully. 'No matter how many lives I bring into this world, each one is always a new experience.'[or]'Don't worry about me,' Nadia says, cradling her belly. 'They come so easily now. I feel like this is my destiny.'[at random]";
			else:
				say "     [one of]Nadia says 'I don't regret bringing so many lives into this world, ruined as it is. If things are ever going to be better, then we have to try instead of giving up hope.'[or]Nadia chirps 'Looking at my brood, I think there's hope for the future. Aren't they all so adorable?'[or]Nadia says nothing and nuzzles you with her beak, leaning in to drape her brilliantly colored wings about you.[or]Nadia says nothing, instead fixing your gaze with her wide, pleading eyes and rubbing her empty womb, clearly aching to be pregnant once more.[or]Nadia giggles as you approach, and beckons you to her side. 'Are you going to plant your seed in your garden of children today? I promise to bear plenty of fruit.'[at random]";
		else if NadiaDescription is 4: [Proud Mother]
			if NadiaPregCounter1 > 0:
				say "     [one of]Nadia says 'We'll be rescued soon, I know we will. We've got to keep up hope, it's all that's keeping us going, isn't it?'[or]Nadia says 'I'm probably not the best judge of if I look more beautiful of late, but I certainly feel more beautiful.'[or]Nadia says wonderingly 'Whenever did my feathers grow so long and colorful? It must have crept up on me when I wasn't looking.'[or]Nadia chirps and nibbles at you tenderly. 'Thank you for planting your seed in me again.'[or]Nadia says 'It does hurt sometimes when my chicks grow big and kick the wrong way, but I usually find it quite ticklish.'[at random]";
			else:
				say "     [one of]Nadia says 'We'll be rescued soon, I know we will. We've got to keep up hope, it's all that's keeping us going, isn't it?'[or]Nadia says 'I'm probably not the best judge of if I look more beautiful of late, but I certainly feel more beautiful.'[or]Nadia says wonderingly 'Whenever did my feathers grow so long and colorful? It must have crept up on me when I wasn't looking.'[or]Nadia's eyes brighten the moment she sees you, her talons already halfway to her dripping cunt before she catches herself and smiles.[or]Nadia sighs 'Oh God, just breed me already, fill me with an egg - or even better, two or three. I'm not sure how much more emptiness I can take.'[at random]";
		else if NadiaDescription is 3: [Mother]
			if NadiaPregCounter1 > 0:
				say "     [one of]Nadia says 'The thought that all these children's books will never be used makes me a little sad.'[or]'I'm finding more energy to do things these days,' Nadia chirps. 'I don't know exactly why, but I'm sure it's all thanks to you.'[or]Nadia says 'My classmates used to tease me, saying I dreamed of being a baby factory. Well, I got my dream and they didn't, so there.'[or]Nadia hums softly, singing to the lives growing inside of her.[or]Nadia says 'I don't know how many chicks I'll be having by the end of this, and I don't care. The more, the merrier.'[at random]";
			else:
				say "     [one of]Nadia says 'The thought that all these children's books will never be used makes me a little sad.'[or]'I'm finding more energy to do things these days,' Nadia chirps. 'I don't know exactly why, but I'm sure it's all thanks to you.'[or]Nadia says 'My classmates used to tease me, saying I dreamed of being a baby factory. Well, I got my dream and they didn't, so there.'[or]'I'm looking much more like a mother now,' Nadia says with a happy chirp. 'But if I'm going to look the part, could you help me get the role?'[or]'My mother told me I'd eventually fill out, but I didn't quite expect it to happen like this,' Nadia says, leaning back in her nest. 'But my body knows what it wants, and so do I.'[at random]";
		else if NadiaDescription is 2: [Young Mother]
			if NadiaPregCounter1 > 0:
				say "     [one of]Nadia says 'The library has so many fascinating things to read. I could spend the rest of my life here doing just that.'[or]Nadia says 'I love most flowers, but since all this started only horrid things have been growing in the campus gardens. Vines and tentacles and whatnot.'[or]Nadia says 'I should've resisted my parents more, but they insisted that I go to college 'for my own good'. Well, I guess it turned out for the best. Life's odd that way.'[or]'I think I'm getting used to this,' Nadia says as she pats her belly. 'That's a good thing, because I'm hoping there are many more eggs to come.'[or]'I feel so warm and good all over.'[at random]";
			else:
				say "     [one of]Nadia says 'The library has so many fascinating things to read. I could spend the rest of my life here doing just that.'[or]Nadia says 'I love most flowers, but since all this started only horrid things have been growing in the campus gardens. Vines and tentacles and whatnot.'[or]Nadia says 'I should've resisted my parents more, but they insisted that I go to college 'for my own good'. Well, I guess it turned out for the best. Life's odd that way.'[or]Nadia says 'Is it just me, or is my body changing?'[or]'Could you please... breed me?' Nadia asks shyly. 'My body wants...I mean, I want to feel a child growing inside of me...'[at random]";
		else if NadiaDescription is 1: [Maiden]
			if NadiaPregCounter1 > 0:
				say "     [one of]'Thank you for letting me stay here,' Nadia says. 'I don't think there's a single safe space on campus any more, not that I want to check.'[or]Nadia asks 'You don't mind if I rearrange some of the furniture to make myself comfortable, do you?'[or]Nadia says 'While I was trapped, there was a locked medicine cabinet in the same room. I don't know why, but just looking at some of the pills inside made me hungry - I think they were labelled 'fertile 9h'. Thank goodness the glass was shatter-proof, or...well, I don't know what I'd have done.'[or]Nadia rubs her belly with her talons. 'Oh, I'm happy...but I'd be lying if I said I didn't feel a little scared.'[or]Nadia says 'I'm finally going to fulfill my dream of being a mother, thanks to you.'[at random]";
			else:
				say "     [one of]'Thank you for letting me stay here,' Nadia says. 'I don't think there's a single safe space on campus any more, not that I want to check.'[or]Nadia asks 'You don't mind if I rearrange some of the furniture to make myself comfortable, do you?'[or]Nadia says 'While I was trapped, there was a locked medicine cabinet in the same room. I don't know why, but just looking at some of the pills inside made me hungry - I think they were labelled 'fertile 9h'. Thank goodness the glass was shatter-proof, or...well, I don't know what I'd have done.'[or]'I was an only child, and wanted a big family of my own.' She looks up at you. 'I still do.'[or]'Would you please...ohh,' Nadia half-chirps, half whimpers, then lowers her head in embarrassment, trembling all over. 'My body, it wants...please...'[at random]";

Section 2 - Fucking Nadia

Instead of fucking the Nadia:
	if (HP of Nadia is 0 or HP of Nadia is 99): [not yet met or refused]
		say "ERROR-Nadia-001F: She should not be around yet anywhere where players can fuck her.";
	else:
		if (lastfuck of Nadia - turns < 6):
			say "     'Give me a moment, please,' Nadia says from within the confines of her nest, panting slightly. 'As much as I'd like to be bred again, I need some time to recover.'";
		else if player is not male:
			say "     Nadia looks askance, crestfallen. 'As much as I'm indebted to you, I can't do that. Not that I have anything against it, but I just don't swing that way.'";
			say "     It seems that breeding is more important to Nadia than fucking is - she'll probably be far more receptive to your advances if you do possess a cock.";
		else:
			say "     [NadiaSexMenu]";
			now lastfuck of Nadia is turns;

to say NadiaSexMenu:
	blank out the whole of table of fucking options;
[
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the beautiful bird blow you.";
		now toggle entry is NadiaSex rule;
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the beautiful bird eat you out.";
		now toggle entry is NadiaSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Eat Nadia out";
	now sortorder entry is 3;
	now description entry is "Give the beautiful bird some oral attention.";
	now toggle entry is NadiaSex rule;
]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the beautiful bird's pussy with your cock.";
		now toggle entry is NadiaSex rule;
	if (player is male and bodyname of player is listed in infections of Avianpredlist and NadiaDescription > 3 and NadiaChar-I is "1"):
		choose a blank row in table of fucking options;
		now title entry is "Fly with her (and fuck her)";
		now sortorder entry is 5;
		now description entry is "Chase Nadia in the air outside and breed her.";
		now toggle entry is NadiaSex rule;
	let TestingActive be 0;
	if (TestingActive is 1):
		choose a blank row in table of fucking options;
		now title entry is "TESTING: Add 10 chicks to her counter";
		now sortorder entry is 6;
		now description entry is "+10 ChickCounter";
		now toggle entry is NadiaSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the NadiaSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have her blow your cock"):
			say "[NadiaSex1]";
		else if (nam is "Have her lick your pussy"):
			say "[NadiaSex2]";
		else if (nam is "Eat Nadia out"):
			say "[NadiaSex3]";
		else if (nam is "Fuck her pussy"):
			if (NadiaChar-I is "0" and bodyname of player is listed in infections of Avianpredlist and NadiaDescription > 3 and NadiaPregCounter1 is 0):
				say "[NadiaSex5]";
				now NadiaChar-I is "1";
			else:
				say "[NadiaSex4]";
		else if (nam is "Fly with her (and fuck her)"):
			say "[NadiaSex5]";
		else if (nam is "TESTING: Add 10 chicks to her counter"):
			increase NadiaChickCounter by 10;
			increase NadiaFertilityCounter by 10;
			say "[NadiaDescriptionUpdate]"; [checks progression to the next stage]
		wait for any key;
	now lastfuck of Nadia is turns;

to say NadiaSex1: [Have her blow your cock]
	say "     <Blowjob>";

to say NadiaSex2: [Have her lick your pussy]
	say "     <PlayersPussyEatingSex>";

to say NadiaSex3: [Eat Nadia out]
	say "     <PussyEatingSex>";

to say NadiaSex4: [Fuck her pussy]
	if NadiaPregCounter1 > 0 and NadiaPregVisibility > 1: [pregnant sex]
		if NadiaDescription is 1 or NadiaDescription is 2: [pregnant maiden sex]
			if NadiaPregVisibility is 5 or NadiaPregVisibility is 4:
				say "     Nadia Breeding Error - She shouldn't be carrying this many eggs at this point.";
			else if NadiaPregVisibility is 3 or NadiaPregVisibility is 2:
				say "     Nadia gets up to greet you as you step into her nest - and doesn't resist as you force her down onto her hands and knees, instead sliding a nearby cushion under her baby bump for support. Now that the beautiful bird's on all fours, you kneel and slide your hands down from her breasts down to her sides and then to that pert bottom of hers, pushing apart her tail-feathers to reveal the damp feathers about her folds. She shivers in anticipation, her body responding to the impending fucking despite already packing eggs.";
				say "     'I-I'm not so sure I should be doing this when I'm so big,' Nadia says quietly as you line yourself up. 'Will it hurt my egg when-' her protest is cut short and quickly forgotten as you thrust into the broody bird, eliciting a gasp and moan. Her talons click against the floor of her nest as she grabs for purchase, nestling into the cushion and squirming as she tries to find a position that won't squash her pregnant belly under her weight.";
				WaitLineBreak;
				say "     Thankfully, it doesn't take long for her to get comfortable, and Nadia trills and squawks as you go slowly, taking breaks to spank her small ass with the flat of your hand in between bouts of slamming into her. The pain only seems to encourage her, though, and you have a little time to wonder just how much she can feel under her feathers before backs up against you eagerly, intending to take as much of your shaft as she can into herself. With such enthusiasm, it doesn't take long for you to send your load crashing into her womb - hopefully, the growing chick won't mind.";
				say "     Spent and sated, Nadia falls forward off you, landing on the cushions on her side, her feathers damp and glistening with sexual fluids. She lies there for a good long while even after you've gotten back on your feet, staring into space and panting with her tongue hanging out of her beak, and you feel it'd probably be best if you left her alone to recover.";
		else if NadiaDescription is 3 or NadiaDescription is 4: [pregnant mother sex]
			if NadiaPregVisibility is 5 or NadiaPregVisibility is 4:
				say "     Massively pregnant, Nadia struggles to rise as you enter her nest, levering herself up with her arms, and you easily lift her and set her against one of the couches she's moved over from the library's study area. The broody bird flaps and chirps, realizing your intentions as you begin to undress. Her warm, sweet scent intensifies as she dreams of another egg inside her, never mind that she looks more than fit to pop.";
				say "     'I'm so big already...' Nadia chirps, but her protest is half-hearted, and she eagerly goes along with you as you begin stroking her breasts and belly, feeling her chicks within her kick at your touch. 'They recognize you, you know.'";
				WaitLineBreak;
				say "     You don't reply, instead continuing to caress her fecund assets, and Nadia's words turn to groans as milk drips freely from her tender breasts. Realizing that getting her on all fours won't help now - her hugely swollen and distended belly simply won't fit under her any more - you ease her backwards onto the couch, spreading her wings out against the back before kneeling before her.";
				say "     Huge as her belly is, Nadia can't see what you're doing down there - but she can very much feel it, feathers turning from damp to glistening wet as you reach through the fluffy layers and finger her stretchy walls. She squawks and pants, begging you to fuck her properly already, but she's in no position to argue, weighed down as she is by the burden of the multiple lives in her womb. It's all Nadia can do to click her beak at you while her femcum oozes down the couch and drips onto the floor, and she whimpers helplessly, desperate to be filled but with no means of making it happen on her own time.";
				WaitLineBreak;
				say "     At last, you decide you've had enough foreplay and clamber up on the couch, knocking Nadia over on her back onto the soft cushions. Seeing that her nesting and breeding instincts are finally about to be sates, the broody bird enthusiastically spreads her legs as you kneel between them and take her there on the couch. Cries turn to squawks as you slam into her repeatedly, her firm breasts and belly bouncing up and down, her usually well-preened feathers matted and damp all over with exertion and sexual fluids. Nadia's warm, stretchy walls feel as good around your cock as they did around your fingers, and they're a delight to pound against, the both of you consumed by exquisite sensations.";
				say "     Eventually, Nadia can't take it any more, screeching a few dissonant notes as her orgasm takes you over the edge as well, and you spray your seed into her overfilled womb. Collapsing back into the couch, her wings bent about her protectively, Nadia pants and heaves as she feels your cum wash over her unlaid eggs, her eyes glassy and staring into space, her mind addled by the sheer pleasure of it all. Realizing that she's not going to be very responsive for a while, you slowly withdraw from her, stopping to give your broody bird a kiss and pat on the belly before moving off.";
			else if NadiaPregVisibility is 3 or NadiaPregVisibility is 2:
				say "     Being visibly pregnant already, Nadia no longer bothers with her mating song as you step up and embrace her, but makes up for it by nipping and cooing at you as the two of you make out. The heat of her body beneath her feathers is arousing and calming all at once, and the warmth is only more intense about her swollen womb - growing even more so as you lean into her amidst light touches and caresses, pushing the beautiful, broody bird further and further back into her nest until she collapses onto all fours under your dominance, panting and chirping as she begs to be bred and stuffed, both with your cock and even more eggs than she's already carrying.";
				say "     Taking things slowly, you let your hands roam all over Nadia's changed body, eliciting soft, pleasured whimpers from her as your hands travel over her breasts and the swell of her womb, feeling the gentle shifting of your offspring beneath her skin and feathers. Unable to wait any longer, she pushes away your hands, making pitiful, urgent noises in the back of her throat, a desperately needy and off-key song in her soprano voice.";
				WaitLineBreak;
				say "     Still, you make her wait agonizingly long, teasing her as you take your time savoring her warm, gentle scent, her pitiful singing becoming louder and more urgent until you finally shove your meat deep into her, shutting her up by way of slamming her from behind. Nadia rocks back and forth under you with her eyes closed, her pregnant belly and heavy breasts swaying pendulously under her, her femcum drenching the feathers about her crotch and thighs in streams and spurts. Her insides quiver as her body readies itself to receive your seed, which eventually comes by way of an enormous spray, and her belly fills out a little more as you drain your balls into her, hopefully seeding yet another egg within her fecund confines.";
				say "     Spent and sated, Nadia falls forward off you, landing on the cushions on her side, her feathers damp and glistening with sexual fluids. She lies there for a good long while even after you've gotten back on your feet, staring into space and panting with her tongue hanging out of her beak, and you feel it'd probably be best if you left her alone to recover.";
		else: [pregnant matriarch/goddess sex]
			if NadiaPregVisibility is 5 or NadiaPregVisibility is 4:
				say "     'Ohhh...I don't think I've much more space left in me for another egg,' Nadia says with a quiet giggle as she watches you approach her and undress. 'But I'll try and make some, anyway.'";
				say "     It's hard for Nadia to move around, massively gravid as she is, but her enthusiasm and need give her more than enough strength. She's still stunning, her long hair reaching all the way down to the base of her tail like a crimson waterfall, flowing outwards from her along with her tail-feathers as she leans back into a nearby pile of cushions, displaying the colors on her wings even as she spread-eagles her legs. You don't go straight for her cunt, though, instead taking it slowly and reaching for her ample chest. Your hands can each only grasp a little less than half of her massive mounds at a time, but her breasts are so full the slightest touch sends spurts of milk out from her nipples.";
				say "     Nadia pants wantonly, her mind lost in bliss as you milk her. Life-giving fluid flows freely from her nipples, thick and rich, drenching her feathers before running off her body and pooling on the ground of her nest. It's a little while before her breasts are finally drained, and she moans and squirms in place as they slowly begin to refill before your eyes, giving her no small amount of pleasure. Within mere moments, they're as heavy and engorged as they were when you'd started, and milk resumes dribbling from her nipples at a steady pace.";
				WaitLineBreak;
				say "     'Enough...' she says, leaning back to catch her breath. 'Put another chick in me, if you can...'";
				say "     Unable to see much of you past the massive mound of her pregnancy - and not caring very much, anyway - Nadia lets her head fall back and relinquishes all conscious control over to you, although her body knows what it wants and is firmly determined to give it the best chances of happening. The broody bird wails as you line yourself up and enter her, even her impassioned cries now sounding like song - there is no tune, no melody, but the notes sound strangely familiar, as if you've heard them somewhere long ago...";
				WaitLineBreak;
				say "     ...But you're in the here and now with Nadia rocking herself against you, desperately trying to get herself even more knocked up than she already is, if such a thing is even possible. Her strong, experienced walls milk you greedily, demanding every drop of seed your balls have on offer. You're not sure if you could withdraw even if you wanted to, and it's hard to even think of it now with her insides gripping and kneading away of their own accord. Unable to withstand such an assault, your shaft empties your load deep inside Nadia, she herself orgasming as her insides squeeze and clench to quickly channel your cum to her womb.";
				say "     At last, you've enough presence of mind to remove yourself from Nadia, the beautiful bird falling into the mound of cushions with a dazed look on her face. She stares at you, her eyes glassy for a good minute or so before they snap back into focus, and she begins to croon and coo wordlessly, rubbing her belly with her talons as her chicks squirm and kick within her. She smiles up at you, feebly fluttering her wings, and you smile back at your beautiful, fruitful garden of children before turning to leave and get dressed.";
			else if NadiaPregVisibility is 3 or NadiaPregVisibility is 2:
				say "     Seeing you approach with a twinkle in your eye, Nadia's scent changes from one reminiscent of spring and sunshine...to one of fertility and fucking, coming thick and heady from between her legs. The broody bird presses her long wings close to her body and eagerly falls to all fours, looking up at you pleadingly while you remove your clothes. Being already pregnant, she doesn't sing her mating song, but instead coos and chirps deliriously, her mind fogged by the thought of more eggs growing within her.";
				say "     Taking things slowly, you kneel by Nadia's side and let your hands roam all over her curvaceous form, marveling at her brilliant, colorful beauty and how excellently she's adapted to motherhood. Nadia chirps, finding your gentle touch keenly pleasurable as you trace your fingers across her engorged breasts and the warm, fertile garden of her womb, your chicks growing strong and healthy inside her, and the beautiful bird shivers as the palm of your hand runs back and forth across her baby bump, the sheer pleasure that simple motion commands cumulating in a messy outpouring of sexual fluids from her cunt even before you've entered her. You do this a couple more times, Nadia's cries becoming more impassioned with each orgasm that shakes through her body, her usually well-preened feathers absolutely ruined by the slick puddle of femcum she's kneeling in.";
				WaitLineBreak;
				say "     At last, you decide to grant Nadia's desire to be bred, and grabbing her hips to steady yourself, you sink yourself into her warm, elastic depths. Tears run down her face, but they're not ones of pain as her well-lubricated passage reacts instantly to your presence, a faint sucking sensation gripping your shaft as you're rapidly coaxed to climax whether you like it or not. You don't need that much effort on your part - a thrust here, a grope of her tender breasts there, and with a final clench of her insides she sends you over the edge, blasting your cum into her. Nadia moans at the sensation of being filled even further, her head low between her arms, and climaxes once more before sinking onto her side straight into the mess the both of you've created on the ground.";
				say "     'You always make me feel so warm and good inside...I'm sure this'll take,' she pants, her breasts heaving in and out. 'Still, I've got to clean up later...'";
	else:[non-pregnant or invis-pregnant sex scenes]
		if NadiaDescription is 1 or NadiaDescription is 2:
			say "     'Thank you,' Nadia says shyly. 'I know I need to be bred... I have to be bred...'";
			say "     While Nadia still looks somewhat drab and girlish, she nevertheless makes an earnest effort to be enticing as she leads you to her nest. Her breasts are a little more developed than when you'd rescued her, but they still look small when cupped in her talons. Nadia chirps a few notes, looking at you hopefully, then undoes the ribbon in her hair, shaking out her crimson locks.";
			say "     'I'm ready,' she says shyly, leaning back on the cushions and waiting for you to remove your clothes before reaching up gripping your shoulders for support.";
			WaitLineBreak;
			say "     Nadia's passage is tight for all the wrong reasons, and she cries in equal parts pain and pleasure as you take her in her nest, her wings flapping and fluttering as you thrust deep into her and force her resisting body to adapt to your presence. Tears well up in her eyes as you continue to fuck her, her body confused at how something it desperately desires can also hurt so much - in a bid to take her mind off the painful part of being bred, you caress her breasts and dig in her feathers for her nipples, finding them easily enough. Teasing them between thumb and finger, you feel them swell and stiffen, Nadia gasping and squirming under you as she feels it too, now whimpering less and groaning more.";
			say "     At last, you can't hold back any further. Balls churning, you thrust as far as you can into Nadia and paint her insides with your hot seed. She squawks as she climaxes too, her talons digging into your collarbone, her belly swelling a little with your load. Panting, she lets go of your shoulders and collapses back onto the cushions while you withdraw, patting her bloated womb and marveling at the sensation of your cum within her.";
		else if NadiaDescription is 3 or NadiaDescription is 4:
			say "     Eager to be able to finally fill the aching emptiness within her, Nadia beckons you to her nest with a talon, the calming character of the faint floral scent that surrounds her changing to... something else as she squirms in her nest, rocking her hips suggestively at you. Whatever it is, it's certainly making your member stiffen and throb as you draw closer - and the expectant look in her eyes grows as she opens her beak and begins to sing, perhaps partly driven by her surfacing avian instincts. Her voice doesn't quite sound like anything you've ever heard before, alluring and mesmerizing, and she reaches up and pulls you down onto her shapely figure and generous breasts, your cock already painfully stiff by the time her song ends.";
			say "     'I've been practicing,' Nadia says with a giggle as you circle her nipples with a finger. 'I'll perfect my mating song, just for you. Now... fill me with plenty of chicks, pretty please? I want... I need to feel their lives growing within me...'";
			WaitLineBreak;
			say "     Well, that's certainly an invitation. Nadia's slick, warm passage teases the tip of your erect cock and you plunge in without hesitation, sinking hilt-deep into the broody bird's depths. Not too big, not too small, but just right. Not to be outdone, she seeks to impale herself upon you as hard as you've thrust into her, and you return in kind, the two of you going harder and faster until Nadia is whimpering and chirping, her breeding instincts taking over as she oozes femcum all over your groin. Her shapely, firm breasts bounce against her chest as you pound her repeatedly, and you find yourself wondering what it would be like if they were nice and full of milk... and her womb full of eggs, just like she wanted.";
			say "     'Harder!' she gasps between moans and squawks. 'Please, harder!' You do your best to fulfill her request, feeling her pulsing walls against your throbbing cock. Nadia is the first to orgasm, squirming under you and flapping her wings against empty air, and you follow suit soon after, firing off burst after burst of seed into her.";
			say "     Nadia's scent of arousal still lingers in the air, but is starting to return to her usual faint floral aroma as the two of you separate reluctantly and lie awhile in her nest to recover. Murmuring and crooning, the broody bird cradles the swell of her belly, bloated with your seed, then drapes her colorful wings about the both of you as she snuggles in close to sleep.";
		else: [matriarch/goddess]
			say "     At the mere suggestion of breeding, Nadia's large eyes light up and she rises from her nest, flapping her wings in her haste to stand up and cross over to you. Even from where you stand, you can see that her nipples are swelling and the feathers about her crotch are rapidly turning from damp to drenched with femcum as her body agrees with her, her nether folds growing swollen and dripping in anticipation of being bred. Nadia steps up to your side, her motherly hips swaying in sync with her long hair and tail-feathers, and leans her body against yours.";
			say "     'It's been too long since I've last felt full,' she croons, rubbing her flat stomach. The heady, floral scent of her arousal is overwhelming. 'Far too long. You shouldn't let your garden go unused for too long, you know. Plant some chicks in me, now... please...'";
			WaitLineBreak;
			say "     No words are needed after that. Nadia has perfected her mating song - your ears swear they hadn't heard the same thing your mind says it has, but the effect it has on your cock is unmistakable. It's a little hard to think straight with Nadia's unearthly, mesmerizing soprano voice echoing in against the corners of the little world she's carved out in the library, but her talons on your cock are enough to guide you back to her nest. There, she finally lets the song fade and leans back against a pile of cushions with her wings half-folded, and spreads her legs, looking up at you with her beak open in anticipation.";
			say "     And so you indulge her. Nadia's warm, impossibly elastic walls clench tight about your cock as you enter her, cradling it within their depths and giving you a good taste of the warm comfort your offspring grow in. Throbbing and pulsing, they milk your member expertly, seeking to wrest from you every drop of seed you're good for. The beautiful, broody bird cries out as you pound her eagerly, her moaning turning into animal chirping and squawking as her more avian instincts surface in her passion. At last, she can hardly take any more of the exquisite sensations and cries out once more in orgasm, femcum oozing out onto the base of your shaft, her insides clenching tight as you too come and paint her insides with your load. A strange but incredibly pleasurable feeling comes over your cock as Nadia's insides work away, scooping up every last drop of your fertile seed and bringing it to her womb to be planted.";
			WaitLineBreak;
			say "     After it's all over, the two of you lie in her nest for a long while to recover from your orgasms, Nadia gently nuzzling at you with her beak. 'Wait for the harvest,' she says. 'I promise it'll be good.'";
	if NadiaPregCounter1 is 0: [not already preggers]
		now NadiaPregCounter1 is 38; [she gets knocked up for sure - 38 turns till birth]
	else if NadiaFertilityCounter > 4 and NadiaPregCounter2 is 0 or NadiaPregCounter3 is 0: [allowing multiple pregnancies after her 4th egg/pill + a slot free as 2nd or 3rd pregnancy]
		let NadiaPregChance be a random number from 1 to 20;
		if NadiaFertilityCounter > 17: [matron stage]
			if NadiaPregChance > 5: [75% chance]
				if NadiaPregCounter2 is 0:
					now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
				else:
					now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]
		else: [mother stage]
			if NadiaPregChance > 10: [50% chance]
				if NadiaPregCounter2 is 0:
					now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
				else:
					now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]

to say NadiaSex5: [flying and fucking]
	if NadiaPregVisibility < 2:
		say "     Nadia chirrups as you approach her nest, rubbing her flat belly with a hopeful expression, but her expression turns to one of urgent desire as she notices your avian form. She stands there, eyes growing glassy as instincts awaken and gears turn in her mind, then reluctantly, she steps out of her nest to melt against you, her feathers tickling yours as she explores your body with her own, testing your muscles as they flex under your skin, her body eagerly telling her that you would make for prime breeding in your new shape. This goes on for a moment, Nadia's body getting perceptibly hotter under her feathers, until she looks up at you, consumed by worshipful adoration.";
		say "     She presses her beak against yours, then realizes that she doesn't quite have the ability to go about kissing anyone anymore and settles for shyly nuzzling her beak against your face. 'Oh, hello. It's a little musty in here - why don't we go outside for a little while? Get some fresh air? We won't go very far, I promise.' Looking at Nadia's face, it's clear that she intends more than just some exercise, and since you were going to give her what she wanted anyway...";
		WaitLineBreak;
		say "     You agree to Nadia's little adventure, and she claps like a little girl being handed her favorite toy. 'Catch me!' she squeals, dashing over to one of the windows and throwing it open. She's gone in a flash, wings beating as you hurry after her and throw yourself into the air. The ensuing chase is short and exhilarating - Nadia barely manages to retain her lead, ducking and swerving through the air, her broad colorful wings keeping her aloft and ahead but not by so much that you can't eventually catch her. Inadvertently or otherwise, you catch the occasional hint of her tantalizing cunt, and it makes your victory all the more sweeter when you catch her mid-flight and force her down onto the roof of one of the skyscrapers in the high-rise district.";
		say "     Nadia sings sweetly as she lands softly on the concrete roof, her blood pumping and heart hammering as she squirms under you, belly-down. The notes of her mating song carry out into the air and you spread your wings, catching the winds as you spread Nadia's legs and ram yourself into her. It's cold so high up even with your feathers keeping you warm, but Nadia is so warm and gooey inside that you find yourself thrusting as deep as you can into her feminine depths, her body more than eager to accept your virile presence within her. The broody bird struggles to finish her mating song, but her notes steadily turn to incomprehensible squawks and squeals as she revels in being bred, the chase only having served to arouse her even further. She whimpers excitedly as you rough her up a little to work off the heat of the chase, pulling her head and torso back by her lustrous hair and kneading her breasts one at a time. Dribbles of milk ooze from her teats even when she's not pregnant, staining the ground underneath her, joining the puddle of sexual fluids that's oozing from around your shaft and dripping from her body.";
		WaitLineBreak;
		say "     Finally, you can't take it any longer. The heat of the chase has soundly worked its way into the base of your shaft and it explodes into Nadia, her cunt clenching tight to ensure that not one drop is wasted when it could go towards growing another child in her. Moaning and chirping, she pushes herself off the ground with her hands, perhaps vaguely aware of the fact that she should be back in her nest to brood and lay the life that's no doubt taken root inside her, but falls back with a whimper. You gently coax Nadia into your embrace, reassuring the broody bird that you'll protect her out here and that nothing will happen to her nest and brood while she's away and also taking the opportunity to suck at her nipples.";
		say "     'Bad!' she says halfheartedly. 'That's for the children...mmm...oh...' Soothed, she chirps happily and snuggles up against you, her feathers still slick in spots from your recent exertions.";
		if NadiaPregCounter1 is 0: [not already preggers]
			now NadiaPregCounter1 is 38; [she gets knocked up for sure - 38 turns till birth]
		else if NadiaFertilityCounter > 4 and NadiaPregCounter2 is 0 or NadiaPregCounter3 is 0: [allowing multiple pregnancies after her 4th egg/pill + a slot free as 2nd or 3rd pregnancy]
			let NadiaPregChance be a random number from 1 to 20;
			if NadiaFertilityCounter > 17: [matron stage]
				if NadiaPregChance > 5: [75% chance]
					if NadiaPregCounter2 is 0:
						now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
					else:
						now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]
			else: [mother stage]
				if NadiaPregChance > 10: [50% chance]
					if NadiaPregCounter2 is 0:
						now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
					else:
						now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]
	else if NadiaPregVisibility < 4:
		say "     Nadia looks a little uncertain at your suggestion. With the way her eyes are glinting and her breath quickening, it's not hard to see that she's finding your avian form quite attractive, but at the same time she's getting a little too gravid to be cavorting around the city. At last, the impasse is broken by a kick from within Nadia's pregnant belly, making her smile. Seems like someone's called the tiebreaker vote.";
		say "     'I don't think I can fly right now,' she says as she waddles over and carefully leans into you, snuggling the firm mounds of her baby bump and milk-filled breasts against your warmth. Nadia's breath comes in quick, deep gouts as she inhales your scent, her pulse quickening beneath her skin and most prominent about her womb. Her own scent deepens, becoming thick with arousal, and your swelling, throbbing meat brushes against the inside of her thighs, causing her to whimper with arousal. It's a little while before she has enough sense to form words again, 'but I think something can be arranged.'";
		WaitLineBreak;
		say "     Nadia clings to you all the way to the spiral stairwell that leads to the abbey's roof, nuzzling, cooing and petting away as she salves her instincts that yes, you indeed are quite the virile male, capable of seeding more chicks within her. Getting her up the ladder and through the hatch to the roof is a little tricky but not impossible, and when she's finally lying out in the open - tired, heat-flushed and swollen with eggs - that your colorful, broody bird looks so delectably vulnerable and unable to resist you if you took her right now, not that she would try, anyway.";
		say "     The fresh air out on the library rooftop does little to dissipate the smell of arousal that hangs heavy over the both of you, and it's not hard to snuggle up to Nadia and nip at her milk-filled breasts the way one of her chicks would, feeling her nipples swell under your beak as they prepare to be milked. Nadia cheeps plaintively as her maternal instincts kick in strongly, trying to cuddle you the same way she would one of her own brood. Nevertheless, you keep her stretched out on her side as you suckle, a constant reminder of who's who here. Nadia's milk is warm and delicious, with a rich aftertaste - it's not hard to see why all her chicks grow so strong and healthy. There's a lot of it and you drink your fill, Nadia herself an endless fount of life. When you're finally done, you wipe your beak in her generous cleavage, and gently cup her breasts in your hands, feeling them churn and throb as they rapidly refill. It's no surprise that Nadia's breasts end up a little bigger than they were before, her constantly adapting body changing itself to better suit her role as a mother.";
		WaitLineBreak;
		say "     Easing Nadia onto her knees, her pregnant belly supported in her lap, you tell Nadia it's her turn now, and thrust your cock in her face, already glistening with precum. Nadia looks a little pouty at the idea of perfectly good seed being wasted, but you pat her on the head and tell her you'll pull out beforehand and fill her up properly before finishing. That simple promise breaks any inhibitions the broody bird has, and she eagerly stuffs as much of your length as she can into her beak - it's a little rough, but she doesn't have teeth and the workings of her tongue more than makes up for it. Nadia leans back with the effort of sucking you off, her eyes closed in wonder and concentration, and it's only when you feel your balls beginning to churn that you pull out, strings of precum glistening as they fall away from Nadia's beak. There's barely enough time to tip her forward onto all fours and ram your pulsating shaft into her from behind before you blast into her, great gouts of seed entering her already filled womb and swelling it a little further. Her wings beat at the air as she finally orgasms with a squawk, the familiar, rhythmic contractions of her slick tunnel making sure no drop of your cum is wasted.";
		say "     Nadia doesn't want to let go of you at first, savoring the all too brief sensation of you inside her, but eventually relents and snuggles up to your side, rubbing the swell of her belly eagerly. Hopefully, this'll mean another chick will start growing inside her...if it makes her all the more pliable to doing this again, all the better.";
		if NadiaFertilityCounter > 4 and NadiaPregCounter2 is 0 or NadiaPregCounter3 is 0: [allowing multiple pregnancies after her 4th egg/pill + a slot free as 2nd or 3rd pregnancy]
			let NadiaPregChance be a random number from 1 to 20;
			if NadiaFertilityCounter > 17: [matron stage]
				if NadiaPregChance > 5: [75% chance]
					if NadiaPregCounter2 is 0:
						now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
					else:
						now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]
			else: [mother stage]
				if NadiaPregChance > 10: [50% chance]
					if NadiaPregCounter2 is 0:
						now NadiaPregCounter2 is 38; [38 turns till birth as 2nd pregnancy]
					else:
						now NadiaPregCounter3 is 38; [38 turns till birth as 3rd pregnancy]
	else:
		say "     Nadia appears quite nervous at the prospect, patting her monstrously swollen belly. 'I'm sorry,' she says. 'I just don't feel like leaving my nest right now...why don't we stay in here and cuddle a bit?' She spreads her wings invitingly, looking quite hopeful, and you get the distinct feeling that she intends to do more than cuddle, if you accept. It seems like her nesting instincts are demanding that she stay confined and grounded - it's probably not best to push her at the moment.";

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Bird Troubles	"Bird Troubles"

Bird Troubles is a situation. The level of Bird Troubles is 5. [meeting event in which you can take her home]
The sarea of Bird Troubles is "Campus".
when play begins:
	add Bird Troubles to badspots of girl;

Instead of resolving a Bird Troubles:
	say "     The science faculty of Fairhaven College, once a place that churned out graduates for local organizations like Trevor Labs and the City Hospital, now lie largely abandoned since the outbreak. The teaching laboratories occupy one block near the back of the building, and it's there you find yourself as you wander the campus, examining a couple of trucks parked by a loading dock. The trucks are empty, long looted of anything that might have been valuable, but what catches your attention is a potential entrance into the faculty building by way of a number of shutters and doors set into the rear of the loading dock.";
	say "     These must be the back entrances to the labs, though which bulky materiel is loaded. Perhaps there's something useful remaining inside - after all, the city has been full of surprises so far. Most of the loading bays are shuttered and locked, but there's a door in the back which has been blocked by a fallen length of thick steel piping that's caught between two others to form a bar of sorts, wedging shut the outward-opening door. It's thick, riddled with claw marks and slightly bent, but isn't too heavy to lift and you're in before too long.";
	WaitLineBreak;
	say "     Behind the door is a long corridor doors leading to individual laboratories on either side, a draft carrying air in from the small windows set high into the walls. Looking through the glass windows separating them from the corridors proper, most of the specimens have died from thirst and starvation in the cages, an unhappy end even for lab animals. Yet in one of them, the cages have been thrown open - not forced, but thrown - and there's someone collapsed on the ground inside! Carefully, you ease open the door and peer inside, holding your breath.";
	say "     Face-down on the ground is a bird-woman, her figure thin and scrawny, her hands and feet now talons. Her feathers are a dull, muted shade of various colors, her crimson hair is messy and unkempt, and her tail-feathers are long and sweeping, reaching down to her calves. The wings that jut from between her shoulder blades are bent at entirely unnatural angles, much like pictures of pigeon roadkill you've seen. Perhaps in a different time and place she could have been truly beautiful, but right now that beauty is just broken, not unlike a cracked mirror.";
	WaitLineBreak;
	say "     Roused by your footsteps as you approach, she raises her head and scrambles to her feet, whimpering and shielding herself with her hands until she realizes you're not a threat - and you're equally relieved that she isn't one, either.";
	say "     'Someone came,' the bird-woman says, slumping her shoulders. 'Someone finally came. Who knows how long I spent trying to break down that door, that and the front entrance - I was beginning to wonder if this was how I would die, trapped and alone...I watched the animals die one by one from hunger in their cages, but I didn't dare to let them go...wondering if I would end up like them...'";
	WaitLineBreak;
	say "     Well, at least she's not going to be dying now. You ask for her name, and she nods. 'My name is Nadia. I'm...' she looks down at her talons, seeming fit to burst into tears at any time. '...I was a student here. Are those things still out there? I've lost count of how many days I've spent trapped in these laboratories.";
	say "'Do you have somewhere I could go?' she asks hopefully. 'I...I can't stay here anymore, and I don't think there's anywhere that's safe on campus, not after hearing some of the noises that go on outside all day and night.' ";
	if player consents:
		LineBreak;
		say "     'My full name is Nadia Sokolova,' the bird-woman explains as she limps after you through the city and back to the library. 'But just call me Nadia, if you will. I'm an education major, or at least, I was before all this started. I was hoping... well, there's no harm in saying it if I'm going to be staying with you, am I? We have to trust each other.";
		say "     'I didn't want to go to college - didn't see the value in it when there aren't really any classes on how to be a wife and mother. What I wanted to do was to raise a family, then maybe later there would be time for everything else, but everyone pressured me to go, said I had no ambition, that I shouldn't...' she chokes back tears. 'I eventually gave in when my mother told me I could earn my Mrs. degree while studying as well, and I'd hoped that picking out education would let me work with children when I graduated.";
		WaitLineBreak;
		say "     'When all this started, I was passing by the science faculty on the way to class - most of the professors and my classmates had turned into horrid furry things and Greeks or something, and while one of them took my clothes, they didn't manage to take me. After that, I didn't dare make a run for the dorms, nor did I dare shout for help, so I holed up in a cluster of the natural sciences labs. I didn't expect the door to get blocked like that while I was inside, I'd finished all the snacks the lab techs left in their offices, and I was so hungry, so...'";
		say "     It's a while until she gets over her embarrassment. 'There were a couple of exotic birds on loan from the zoo, you see. They were too pretty for me to let them just die, and they were so friendly, never tried to bite or claw me or anything, unlike some of the other animals. There was a whole bunch of juicy fruit in one of the freezers for them, so I fed them and kept them alive while trapped in there. The fruit was clearly marked as not for people, but there wasn't anything left, so...' she ruffles her feathers. 'I ended up like this, and I keep on getting these strange urges, like I need to... um... anyways, I opened their cages shortly before you found me. The window was too small for me to fit through, but at least they're free now.'";
		WaitLineBreak;
		say "     With that, Nadia finishes her story and looks about the library, her gaze falling on the staircase to the second floor. Drawn by some invisible force, she heads upstairs with you following, and after looking about the library's second floor, begins pulling cushions off the sofa and arranging them in a circular pattern on an empty spot on the floor. You watch her for a few moments before finally realizing that she's building a nest thanks to her avian instincts, a suspicion that's confirmed by her flopping straight into the middle of the small pile and nestling down with no small satisfaction.";
		say "     'Thank you for letting me stay here,' she chirps. 'It's the first time since this mess started that anything's happened to give me hope. I was watching, waiting for so long, afraid to call for help yet desperately hoping someone would come before I died... and you did. Again, thank you so much.'";
		move Nadia to Garden View;
		move player to Garden View;
		now HP of Nadia is 1;
		now NadiaChar-A is "0";
		now NadiaChar-B is "0";
		now NadiaChar-C is "0";
		now NadiaChar-D is "0";
		now NadiaChar-E is "0";
		now NadiaChar-F is "0";
		now NadiaChar-G is "0";
		now NadiaChar-H is "0";
		now NadiaChar-I is "0";
		now NadiaChar-J is "0";
		now NadiaChar-K is "0";
		now NadiaChar-L is "0";
		now NadiaChar-M is "0";
		[Testing Fertile Pills]
		[increase carried of fertile pill by 50;]
		now Resolution of Bird Troubles is 1; [recruited Nadia]
	else:
		LineBreak;
		say "     Tears begin to well up in Nadia's eyes. 'I'm sorry,' she says. 'I shouldn't have asked - of course you don't have anywhere to go, let alone let me stay. They're everywhere now, aren't they? I suspected as much, after all these days alone. There's nothing left to hope for. Thank you for saving my life, but goodbye.' With that, she speeds away from you. You shout and give chase, but she's gone by the time you round the corner to the now-opened door, with not even a feather left in sight.";
		now HP of Nadia is 99; [refused her]
		now Nadia is nowhere;
		now Resolution of Bird Troubles is 99; [refused Nadia]
	now Bird Troubles is resolved;

Lost Chick is a situation. The level of Lost Chick is 5. Lost Chick is inactive.
The sarea of Lost Chick is "Campus".

when play begins:
	add Lost Chick to badspots of girl; [female gymnasts]

Instead of resolving a Lost Chick:
	if HP of Nadia is 2: [first attempt]
		say "     Remembering Nadia's words, you decide to keep an eye out for her missing chick while exploring the college campus. Most of the small grocery stores that serviced the students living on-campus have long been looted, as have the cafeteria storerooms, but if Nadia's suspicions were right then the little one wouldn't have been very interested in finding anything on the empty shelves anyway. Still, you wander about a little while longer, and it's then that you're rewarded with the faint sound of a brief squawk and set out in that direction.";
		say "     Indeed, a flash of color greets you as you round a corner - one of Nadia's brood is perched on a high ledge, below which a trio of feline gymnasts prowl continuously, occasionally eyeing the colorful avian and trying various ways and means of getting up that seriously suggests that they must have failed the first round of tryouts. Nevertheless, they keep on trying to get at their prize despite their constant failures - those must have been some truly tenacious girls when they were human.";
		say "     It would have been a comical sight, really, if it weren't your daughter who was perched so high up. The trio of feline gymnasts aren't exactly very successful in their repeated attempts to get at her, leaving her in no immediate danger, but they are preventing her from making an escape. The occasional angry shriek or kick keeps them down - it's a wonder that more mutants haven't been drawn by the spectacle.";
		LineBreak;
		say "     Vera flutters as you approach, quickly recognizing you. 'Daddy, help!'";
		LineBreak;
		say "     [LostChickFight]";
	else if HP of Nadia is 3: [repeat attempt]
		say "     Making your way back to where you last saw Nadia's missing chick, a flash of color greets you as you round a corner - Vera is still perched on a high ledge, below which the trio of feline gymnasts prowl continuously, occasionally eyeing the colorful avian and trying various ways and means of getting up. Looks like they're totally focused on their prize despite and just won't stop till they have her - those must have been some truly tenacious girls when they were human.";
		say "     It would have been a comical sight, really, if it weren't your daughter who was perched so high up. The trio of feline gymnasts aren't exactly very successful in their repeated attempts to get at her, leaving her in no immediate danger, but they are preventing her from making an escape. The occasional angry shriek or kick keeps them down - it's a wonder that more mutants haven't been drawn by the spectacle.";
		LineBreak;
		say "     Vera flutters as you approach, quickly recognizing you. 'Daddy, help!'";
		LineBreak;
		say "     [LostChickFight]";

to say LostChickFight:
	challenge "Feline Gymnast";
	if fightoutcome >= 20:[lost / fled]
		say "[LostChickLose]";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     The feline gymnast stumbles away from you, immediately replaced by the next one.";
		challenge "Feline Gymnast";
		if fightoutcome >= 20:[lost / fled]
			say "[LostChickLose]";
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     That's two down, but another catgirl still remains and jumps you with a hiss.";
			challenge "Feline Gymnast";
			if fightoutcome >= 20:[lost / fled]
				say "[LostChickLose]";
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     With a yowl, the last of the feline gymnasts turns tail and flees, allowing Vera to flutter down and embrace you by way of thanks. Your daughter feels almost as warm and good as Nadia does, and it's probably only a matter of time until she's as beautiful as her mother. Thankfully, the trip back to the library is uneventful, and Vera has the good graces to remain silent, too. You're about a couple blocks away from the library when the sound of Nadia's singing echoes off the derelict buildings to your ears, and you take your daughter by the hand and quicken your pace. Just how long has she been calling and waiting?";
				LineBreak;
				move player to Garden View;
				LineBreak;
				say "     Upon seeing you return with Vera in tow, Nadia rises, gives Vera a hug, and then proceeds to sit the chick in her nest and give her a good scolding, her voice rising to the occasional angry chirrup. '...And there is a reason, young lady, that I always ask that you stick in pairs when you go out. Did it have to take something like this to happen and your father having to go out and rescue you before the lesson is driven home? I don't think...'";
				WaitLineBreak;
				say "     This looks like it's going to go on for a while, but Nadia shoots a pleading look at you, clearly asking you to stay. It's a little while before the lecture's over, though, and the broody bird finishes the little stretch of mother-daughter time with a stern '...and you may think you're smart, dear, but what you're lacking in is wisdom. There's a reason I ask you to do things in certain ways. Now, you may not agree with the reason, but there's one nonetheless. Now, I have a few things to discuss with your father, so leave us be for the moment.'";
				say "     After Vera's left, Nadia urges you to sit down beside her and explain your side of the story, rubbing her feathery body against yours as you recount driving off the feline gymnasts. Her scent changes as you tell your tale, gaining an edge of arousal, and she lets out a sound that's halfway between a chirp and a chuckle. 'Oh, I knew those three. Tryhards, always thinking that if they made the team they'd be popular just like that. Can't say I cared much for them...but I can say I care a lot more for you.' She runs her talons across your body, her fingers trembling as she does so. 'A quality father, a quality mate...' she giggles. '...And quality seed. Since you're so good with children, why don't you go rest a little, and then we can make some more? Don't keep me waiting too long, okay?' With that, she rubs up against you one last time, humming pleasantly in the back of her throat, then turns to other matters.";
				now Lost Chick is resolved;
				now Resolution of Lost Chick is 1; [rescuted her]
				now HP of Nadia is 4;

to say LostChickLose:
	now Resolution of Lost Chick is 2; [lost]
	say "     Having being driven off by the trio of felines, you look up once more to find the situation having reverted to being as much as it was when you'd arrived - what some might call an impasse. You'll probably need to take a little time to catch your breath and regroup before trying again.";

instead of trading the fertile pill when the current action involves the Nadia: [giving her fertility pills]
	say "     The moment you draw the fertile pill out of your pocket, Nadia perks up in her nest and looks around, her beak slightly open, her wings flapping slightly as she sniffs the air. At last, her eyes fall upon the pill in your palm and something in the back of her mind clicks, her gaze turning from searching to begging as she pants gently, inhaling deep of a scent only she can sense. 'Please...may I have it?' she croons.";
	LineBreak;
	say "     Do you let the broody bird have the pill? (Y/N) ";
	if player consents:
		LineBreak;
		say "     Chirping with delight, Nadia grabs the fertile pill out of the air with her talons as you toss it to her. You're worried that she might devour it as-is, but she easily rips apart the foil package and tosses it aside before popping the pill into her beak and swallowing. Crooning softly, the broody bird settles back into her nest to wait for it to work, and work it does.";
		decrease carried of fertile pill by 1;
		if NadiaPregCounter1 is 0:[not pregnant yet]
			say "     Slowly, Nadia begins to moan softly as a gentle warmth gathers in her lower belly and begins to spread out to the rest of her body. Unable to control herself, the bird of paradise rubs her breasts as they grow bigger and firmer, milk glands and ducts within developing to better feed future chicks she will bear. The rest of her body is not forgotten - her hips widen a little, the bone structure shifting to better allow eggs through. Not to be left out, her pussy grows wet as it becomes more prominent, her thickening lips advertising her newfound boost in fertility.";
			say "     The transformation complete, Nadia sinks back into her nest with a contented sigh with her wings splayed out. She looks happier, her body more motherly and elegant, the myriad colors on her body more vibrant. A good time for her to be bred, in fact, and she looks eager enough.";
			increase NadiaFertilityCounter by 1;
			if NadiaDescription < 6: [she's not reached goddess stage yet]
				say "[NadiaDescriptionUpdate]"; [checks progression to the next stage]
		else: [pregnant]
			if NadiaPregCounter2 > 0:
				if NadiaPregCounter2 > 12:
					decrease NadiaPregCounter2 by 12;
				else:
					now NadiaPregCounter2 is 1;
			if NadiaPregCounter3 > 0:
				if NadiaPregCounter3 > 13:
					decrease NadiaPregCounter3 by 12;
				else:
					now NadiaPregCounter3 is 2;
			if NadiaPregCounter1 > 12: [not yet ready to lay the egg]
				if NadiaPregVisibility is 4:
					say "     With a faint gurgle, Nadia's womb expands once more, her chicks squirming within her as the drug-fueled nanites force them to grow and mature. The broody bird's belly is massive at this point, but doesn't stop growing until it fills most of her lap, her skin stretched thin and taut.";
					say "     Engorged to their fullest, Nadia's breasts rub heavily against her belly as they grow further out and down, the dripping milk from her now dark-brown nipples turning into trickles, seeping into her feathers as she cries out in orgasm again, feminine juices bursting from her cunt and soaking her nest as the effects of the pill fade.";
					say "     'I... I...' Nadia gasps, her eyes glazed, her thoughts addled as the pleasure ebbs ever so slightly. 'I feel so warm and full...'";
				else if NadiaPregVisibility is 3:
					say "     Fueled by the fertile pill, Nadia's belly surges forward and outward in an impressive growth spurt. Whimpering in unrestrained pleasure, the broody bird squirms in her nest, lost for words as the weight of her chicks forces her belly to drop downwards. The deep pink of both her exposed nipples and areolae darken to a light brown as they swell, the former becoming a little thicker than a human thumb.";
					say "     Pushed through the size of the third trimester, Nadia looks fit to lay any moment - but the growth doesn't stop, instead carrying her well past overdue territory to the point where there's no doubt that she's carrying multiples. Her breasts, too, are swollen and tender to the point where they're finally feeling the effects of gravity, droplets of milk oozing from her nipples at a steady pace, dampening her feathers.";
					say "     As the growth finally abates, Nadia chirps and croons, folding her wings about herself protectively. One of her hands cradles the swell of her womb, while the other reaches for the dampened feathers about her pussy. Giving in to her desires, the pregnant avian gives sinks back into her nest as she masturbates, albeit with some difficulty owing to her condition.";
				else if NadiaPregVisibility is 2:
					say "     As you watch, Nadia's belly grows in earnest, her nanites working furiously to usher the new life growing within her into the world all that sooner. The pill's effects push her size clear through the second trimester and into the beginning of the third - her belly button rises closer and closer to the swell of her womb, and she giggles as it finally pops out, flapping at the air with her wings as she adjusts her balance to cope with her newfound weight.";
					say "     Not to be outdone, Nadia's breasts have swelled even larger, filling with life-giving milk. Yet they remain high and firm, and Nadia tests them gently as the pill's effects fade, chirping and cooing as she rubs her talons against them.";
					say "     'Being pregnant is wonderful in and of itself,' she says happily, her eyes glazed and distant. 'But feeling my chicks blossom this quickly in my womb...I want this to go on forever.'";
				else if NadiaPregVisibility is 1:
					say "     Humming to herself, Nadia places her talons on her flat belly and begins to massage herself, looking up every now and then to make sure you're watching. Her efforts are rewarded as her waist grows into a small baby bump, curving gently outwards, and her eyes brighten as her breasts swell slightly to match the life within her womb. Eventually, the pill's effects wear off, and she beckons you forward to nibble at your cheek with her beak. 'Thank you. That's for letting me skip all the boring parts and get to the good stuff,' she says with a chirp of pleasure.";
				decrease NadiaPregCounter1 by 12;
			else: [ready to lay the egg]
				if NadiaPregCounter2 is 0:
					say "     Humming a lullaby to herself, Nadia cradles her expanding belly with both hands as the pill's effects cause her third trimester to pass in a matter of minutes. Tilting her head as she catches your eye, she coos gently and winks, keeping her pleasant demeanor - up to the point where her belly suddenly stops growing and her expression turns to one of shock. A damp patch on her feathers is spreading outwards from her pussy, and it isn't cum.";
				else:
					say "     You wait to see if Nadia can actually get any bigger than the monstrous size she already is - and she does, if only a little as one of her chicks finally grows to full term within her, rounding her out beautifully. Suddenly, though, her addled expression turns to one of alarm, and she struggles to push herself upright.";
					say "     'Hurry!' she calls out to you. 'I-I felt the shell harden, I'm going to lay now!'";
				say "[NadiaEggBirth]";
			say "[NadiaPregVisibilityUpdate]"; [after pregnancy progression or birth]
	else:
		say "     Nadia whimpers, tears gathering in her large, black eyes, but sinks back into the soft confines of her nest. It's a little hard not to feel a twinge of pity for her, but you do have your reasons.";

instead of going up from Grey Abbey Library while (Nadia is in Garden View and Exotic Bird is tamed and companion of player is Exotic Bird and NadiaChar-H is "0"):
	move player to Garden View;
	say "     Seeing the exotic bird on your shoulder, Nadia lets out a girlish trill of sheer delight. 'It's so pretty!' She warbles a few notes and the bird obediently flaps over to her, landing on her wrist, and she takes it back into her nest to fuss over it as if it were her very own child. Chirpy is only more than happy to be in Nadia's presence, cozying up to the bird-woman and preening her feathers. As Nadia pets and coos at the exotic bird, you notice the similarity in their colorful plumage and can't help but wonder if the birds that she'd been caring for while trapped were similar, if not of the same species as the one that's now your pet. She did say they'd been on loan from the zoo, after all...";
	say "     It's a while before Nadia is done with her little affectionate display, and she sings another few notes before throwing Chirpy off her wrist, your pet flapping through the air to return to your shoulder. Thoroughly content and a lot happier than she was a few moments ago, Nadia gives you a small, shy smile before retreating back into the confines of her nest.";
	now NadiaChar-H is "1";

instead of going up from Grey Abbey Library while (Nadia is in Garden View and Gryphoness is tamed and companion of player is Gryphoness) and (NadiaChar-A is "0") and (NadiaChickCounter > 0 or NadiaPregCounter1 > 0):
	move player to Garden View;
	say "     As you enter the library's second floor, you leave Denise a little way away as you go and check in with Nadia to make sure she's all right, while the gryphoness passes the time by leaning against one of the second story railings and singing to herself.";
	say "     At the sound of Denise's singing, Nadia perks up from within her nest and eyes the gryphoness, her interest clearly sparked by the gryphoness's talents. Seeing that introductions are in order, you invite Denise over and introduce the two of them. The two quickly launch into an animated discussion over music and singing in particular, with the two of them comparing their tastes in music. The two are quite similar, although Nadia prefers soothing or upbeat tunes as opposed to Denise's lonely, haunting songs, and dislikes much of contemporary music, finding much of it too jarring for her tastes.";
	say "     The conversation mostly stays on topic at first, although you catch Nadia giving Denise's cock the occasional embarrassed glance as they discuss the possibility of a recital and perhaps singing a duet some time in the future. Inevitably, though, the discussion slowly turns from music to their experiences of being fucked and bred by you. As with their vocal talents, although the two avians are in general consensus, they don't quite agree on the finer points, with Denise preferring the former and Nadia favoring the latter. Still, with all the talk on the details of your exploits with each of them and the two avian breeders giggling as they compare notes, you decide it's probably best to leave them be for now and come back a little later when they're done.";
	now NadiaChar-A is "1";

instead of going up from Grey Abbey Library while (Nadia is in Garden View and Icarus is in Grey Abbey Library and HP of Icarus < 50 and HP of Icarus > 0 and NadiaDescription > 3 and NadiaChar-B is "0") and (NadiaChickCounter > 0 or NadiaPregCounter1 > 0):
	move player to Garden View;
	say "     As you walk up to the library's second floor, you're treated to a curious sight. Icarus isn't in his usual place in the rafters - instead, your little bird-slut is in Nadia's nest, a spot of blue amongst red, and he's suckling from her, the sight of a full-grown adult doing just that a little odd even in these times, especially when Nadia usually reserves her generous bounty for her own. Nadia, on the other hand, doesn't seem to mind, mothering the chaffinch and cradling him in her lap as if he were just a big baby. Neither of them seem to notice you as you step closer, and it's not until you're close enough to hear Nadia's soft murmurings that you realize what this is all about.";
	say "     'Pain is not necessarily bad,' she whispers to Icarus as the chaffinch continues to nurse from her ample breasts. 'Each and every one of my brood was brought into the world with pain... and I love them all. At first, there was pain in the breeding, pain in the birthing, and now...I don't regret a single moment of it. Suffering changes us... sometimes for the better.'";
	say "     Swallowing hard, you wonder if she knows how he got some of his scars, and if she'd be so calm if she did. It seems like you're not going to get much out of them for the moment, and you decide to leave them be until they're done.";
	now NadiaChar-B is "1";

instead of going up from Grey Abbey Library while (Nadia is in Garden View and HP of Nadia is 1 and NadiaChickCounter > 9):
	move player to Garden View;
	say "     Stepping up to the library's second floor, you're greeted by the familiar sight of Nadia's nest - and the unfamiliar sight of her not in it. Instead, she's leaning against one of the open windows, singing a few notes every now and then into the city, her voice carrying out amongst the buildings. It's as if she's looking for something, but although she hurriedly waves you over the moment she sees you, you're clearly not the source of her agitation.";
	say "     'Have you seen Vera while out in the city?' she asks you worriedly. 'Silly girl went out to check one of the older stores down by the campus, and hasn't come back yet. I told her not to go, especially all on her own, but I suppose she was curious about how her mother used to live. Her wings aren't strong enough for her to fly very much yet, so I'm worried that she can't make it back safely and may be stuck out there...'";
	say "     Admittedly, it's a little hard to remember just which of Nadia's chicks is which, especially when the broody bird keeps on adding to their number, but it shouldn't be too hard to find one of them when avians, especially ones as colorful as birds of paradise, aren't exactly a common sight on the campus. You agree to keep an eye out for her lost chick when you're in the area; Nadia nods and turns back to the window, calling out every now and then in the hope that her lost daughter will return to her.";
	now Lost Chick is active; [event open now]
	now HP of Nadia is 2; [quest given]

instead of going up from Grey Abbey Library while (Nadia is in Garden View and NadiaDescription is 6 and NadiaPregVisibility is 5 and NadiaChickCounter > 19 and HP of Nadia is 4):
	move player to Garden View;
	say "     As you climb up the stairs to the library's second floor, Nadia waves you over, and leaves her nest to meet you halfway. Her enormously pregnant state weighs her down considerably and she's huffing and out of breath by the time she standing in front of you, but she still manages a smile and presents you with a soft, colorful bundle, which when unfolded turns out to be a feathered cloak, glimmering faintly with a rainbow sheen of colors as it catches the light of the library.";
	say "     'I sewed my own feathers into it,' Nadia says shyly. 'I had some spare time and the children brought me something useful, so I didn't want the material to go to waste. Besides, I wanted to thank you for saving Vera. Try it on, won't you?'";
	say "     It's hard to deny Nadia when she's looking so bright and hopeful, and you pull on the cloak about your body - it fits you perfectly, and you feel all warm and protected as it hangs about your shoulders, like a mother's embrace. All in all, it's very well-made, and she's obviously worked on this for a while.";
	WaitLineBreak;
	say "     'It's okay,' Nadia says when you thank her and begin leading her back to her nest. 'It's not much, compared to what you've done for me - given me a place to stay, and fathered so many beautiful children. I just want to feel this good forever...'";
	say "     Setting Nadia back in her nest, you decide to grant her wish and reach for her feathered body. The broody bird shivers as you rub your hand back and forth across the stretched flesh of her belly in broad, gentle strokes, the steady pulsing of her womb's thick, strong muscles growing more intense as you work your way towards her glistening cunt, although you don't actually finger her. The broody bird whimpers and pants as a familiar damp patch spreads outwards in the feathers between her legs, and her chicks start to kick and squirm energetically within her, too. As you draw out your ministrations, Nadia chirrups happily as her enormous belly trembles in a small growth spurt, rounding out by two to three inches over the course of a minute. Her breasts engorge a little more, and the outpouring of milk from her dark nipples grows.";
	WaitLineBreak;
	say "     'Ooh, I didn't know I could do that all on my own,' she says with a giggle, trying to get more comfortable as her eggs drop further into her hips, the next in line pressing more urgently against her cervix as it inches closer to the moment of laying. Beckoning you closer, Nadia nuzzles at you with her beak. 'I know I couldn't before, but it's hard to keep track when my body's changed so much, tried so hard to be not just your mate, but a mother to all my chicks as well. And it's all thanks to you.'";
	say "     Indeed, it's hard to deny that Nadia has changed drastically since coming to the library, both in outlook and body, and she spends the next few moments snuggling her petite form up against you, her warm feathers leaving behind much of her floral scent as they brush against you. She says nothing, closing her eyes and making small, happy noises in the back of her throat, content to just lie about and feel warm. Drawn by their mother's maternal crooning, some of Nadia's younger chicks join in the cuddle as well, and there's space enough for all of them as she takes each and every one into her embrace.";
	WaitLineBreak;
	say "     It's a little while later that you wake up and slowly disentangle yourself from the warm cocoon of fluff, careful not to wake any of Nadia's sleeping chicks gathered all around her as you gather up the cloak in your arms. Nadia herself is fast asleep with her youngest chick in her arms, doing what she does best, surrounded by everyone and everything she loves, a warm, happy mother goddess to her enormous brood.";
	increase carried of feathered cloak by 1;
	now HP of Nadia is 5;

instead of navigating Grey Abbey Library while (Nadia is in Garden View and NadiaChickCounter > 1 and NadiaChar-J is "0"):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "     Upon your return to the library, you notice that someone's added a couple of potted plants next to the doorway and across from the stairwell - you quickly step back, but relax when you realize that they aren't horrible mutants, but just plain ordinary plants, as far as their outward appearance goes. There are a couple of more common veggies - tomatoes and various peppers on stakes, as well as a few leafy greens, but about a third of the pots are filled with colorful flowers. It's over one of these tropical blossoms that you find Nadia kneeling, humming softly to herself as she tends to its wilted leaves and petals, her chicks watching on interestedly.";
	say "     'Oh, hello!' she chirps, seeing you arrive. 'I was taking the chicks out for a walk some time ago when I came across some of these in a backyard. They were in pretty bad shape when I took them in, but at least they've perked up some now. A little water, a little mulch and care, and they'll just be as good as new. It's a pity the library doesn't have any planters for them to have a proper home, though. I looked up what some of them were in the library books, and they're apparently called birds of paradise, just like me. I can only hope they turn out even prettier than they are.'";
	say "     Right now, it would be sensible for Nadia to plant just veggies considering the apocalypse and all, but she seems so happy tending to all the plants... and beside, if she's as good a gardener as she claims to be, then the harvest should be good enough to spare her a few indulgences, right?";
	now NadiaChar-J is "1";
	now	GreenTumbTurn is turns;

instead of navigating Grey Abbey Library while (NadiaChar-J is "1" and (GreenTumbTurn - turns > 12)):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "     Stepping into the library, you're greeted by a whiff of fresh air, as opposed to the usual musty old-book smell that pervades the library's atmosphere. The reason for that soon becomes clear after a cursory examination of the second floor: in addition to her nest, Nadia has placed a number of potted plants here and there to give some color to the library's rather droll interior, adding to those which she'd already saved the first time around. She's got a fairly good sense of design, you've to admit. Probably that nesting instinct at work again, and beside, you're not the one sating Nadia's desires for interior redecoration - she's roped her chicks into doing the heavy lifting.";
	say "     The results of Nadia's care have indeed been quite drastic. Most of the rescued plants have perked up magnificently, saved from the verge of drying out, and although most of them are growing at a far faster rate than they ought to be, that's the only thing off about the otherwise harmless plants. The veggies are green, the flowers are more colorful now, and Nadia's tending to a particularly bright blossom, taking a moment to savor its fragrance.";
	WaitLineBreak;
	say "     'I've been trying to teach the children proper gardening,' Nadia says, turning to you as you approach. She's got a trowel in her grasp - you wonder if it's been scavenged from somewhere - but appears prefer digging in the dirt with her hands by far, her avian talons quite suited to the job. 'They aren't as good at it as I am, but they're getting there.'";
	say "     Gently, you urge Nadia to set down the trowel and gather up her petite form in a warm hug. Nadia cheeps as she snuggles against you, enjoying the warmth and feel of your body, then reluctantly pulls away. 'Mm, that felt nice. It's odd,' Nadia says, fluffing her feathers. 'Ever since becoming a pretty bird, I can't taste anything spicy. Just tried a few of the chili peppers, and they just tasted sweet. Strange, right? But I suppose it's nothing to get too worried about - if I started worrying about that, I'd have to start worrying about this.' She runs her talons over the firm curves of her avian body. 'But enough about me. Let me help you with that...'";
	WaitLineBreak;
	say "     That said, Nadia calls over one of her chicks and presses an armful of fresh veggies into your hands. 'I'm not exactly a big fan of raw vegetables, but it's not as if there's a stove in here, is there? In any case, do enjoy the fruits of the harvest. There's more than enough for everyone.' She giggles a little at some private joke, then gives you a wave before turning back to her work.";
	say "     ([bold type]3 food gained[roman type])";
	increase carried of food by 3;
	now NadiaChar-J is "2";

instead of navigating Grey Abbey Library while (Nadia is in Garden View and NadiaDescription > 3 and NadiaChickCounter > 9 and NadiaChar-J is "2"):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "     As you enter the library, you notice birdsong wafting down from the second floor; it seems that Nadia's particularly pleased about something today. Stepping upstairs to investigate, you're greeted by the sight of Nadia snuggled in her nest as she's being pampered. Two of Nadia's daughters are brushing her hair and wings, easing out tangles and ruffled feathers, while she herself preens her colorful plumage in a particularly birdlike manner. Nadia makes happy, contented noises in the back of her throat as her daughters preen and pamper her, and they only grow more so as she opens her eyes and notices you staring at her.";
	say "     'Oh! Welcome back. Say hello to your father, girls,' she says with a giggle, and shakes bits of fluff from her beak. 'Don't mind us - I'm just trying to look my best for you, after all. I'd ask you to join in, if you'd like, but that would ruin the surprise. Please come back later when we're finished and I'll show you just how prettied up I can be, okay?'";
	say "     It certainly looks like it takes a lot of work for Nadia to look as good as she does all the time now, especially considering the state she's often left in after you're bred her. Thinking about it, it must certainly be quite some effort to get her all cleaned up after each session...";
	now NadiaChar-J is "3";


Table of Game Objects (continued)
name	desc	weight	object
"feathered cloak"	"A long feathered cloak, covered in many colorful feathers shimmering in the light. It's a present from Nadia for her mate - you."	1	feathered cloak

feathered cloak is equipment.
It is not temporary.
The AC of feathered cloak is 20. [not all that protective - it's a cloak after all]
The effectiveness of feathered cloak is 85. [long, and flashy which distracts enemies a bit]
The placement of feathered cloak is "body".
The descmod of feathered cloak is "A beautiful cloak bearing a rainbow of shimmering feathers makes you look very regal and colorful.".
The scent of feathered cloak is "The feathered cloak smells of Nadia - mostly like a heavenly floral perfume, although with a hint of something or the other that's rather arousing.".
The slot of feathered cloak is "body".

Section 4 - Endings

when play ends:
	if HP of Nadia > 0 and HP of Nadia < 99: [player brought her in]
		if humanity of player < 10:
			say "     When you fail to return to the library, Nadia holds out hope until the very last, only deigning to leave with the military when they evacuate people from the city. Later, when the military is doing one final sweep of the city, a small troop of soldiers checks the now-empty library and bunker for any remaining evacuees.";
			say "     They don't find anyone, but what they do find is Nadia's empty nest with a broad-leafed, tropical plant in a pot in its middle. The plant is still vibrant and blooming despite having been left indoors for some time now, displaying brilliant flowers in varying shades of red, orange and yellow, and a faint floral scent hangs in the air. The soldiers are strangely moved by the sight - enough that they take the plant along with them when they leave.";
		else: [player char sane]
			if NadiaChickCounter is 0 and NadiaPregCounter1 is 0:
				say "     When the military evacuates the city, Nadia parts amicably with you, thanking you once more for letting her stay in the library until the rescue arrived.";
				say "     Her reason for doing so soon becomes clear. Settling down in a large country house with a fellow avian mutant who's far more willing to indulge her breeding and nesting urges than you were, Nadia proceeds to pop out a steady stream of children over the coming years. Her ever-growing brood spreads out across the countryside, reclaiming and working much of the damaged land left in the wake of the nanite outbreak and putting it to good use. Mutants willing to put in a honest day's work are afforded food and shelter at any one of her many offspring's farms, and this saves a good number of them from starvation in the lean times that follow the outbreak.";
				say "     The two of you still keep in touch, and she invites you over for dinner every so often, referring to the grand country home she and her husband have restored as her 'nest', a distinct improvement from the ring of cushions and furniture she'd occupied back at the library. It's at one of these dinners that you look at Nadia - with her body filled out and motherly from repeated pregnancies and with more on the way, surrounded by those she loves and who love her - and can't help but agree she was right to hold out hope till the end.";
			else: [at least some sex went on]
				if NadiaDescription is 1 or NadiaDescription is 2:
					say "     When the military evacuates the city, Nadia decides to stick with you, unwilling to part with such a fine mate.";
					say "     Nadia's vocal talents draws much interest amongst lovers of the classical scene. While her tendency to be constantly pregnant limits the scope of her public performances, many drop by for a private one, or even just to hear her sing lullabies to her chicks.";
					say "     Although Nadia's often willing to sing to calm others, she reserves the soft, arousing tones of her mating song only for you. Her body gradually adapts itself more fully to motherhood, growing more beautiful with each egg laid, and this only pleases the crowds more, paying great sums to have the exquisite bird sing for them. Yet at the height of her fame, Nadia chooses to quit the scene and settle down with you more firmly and concentrate on growing her brood. Her loss is keenly felt by the community of classical singers, but in the end they agree it's her decision to do so.";
				else if NadiaDescription is 3 or NadiaDescription is 4:
					say "     When the military evacuates the city, Nadia decides to stick with you, unwilling to part with such a fine mate or leave her chicks fatherless.";
					say "     Banking on her love of flowers, Nadia and her chicks start up a family business growing a wide variety of beautiful blossoms for sale, either as-is or distilled into wonderful floral scents. The latter proves to be highly popular with mutants who wish to hide their musks and heats, avoiding social upsets and aiding in one's concentration, and there is no shortage of prospective customers. Rumors abound that she reserves the best of her perfume recipes for her own personal use, but no one has ever actually seen her using any, even though her signature floral scent is unmistakable the moment she steps into the room.";
					say "     However, Nadia's greatest love is always for her brood. Once the business is off the ground, Nadia leaves its day-to-day running to her children, and instead focuses her effort on giving them more brothers and sisters. You, on your part, are more than willing to regularly plant your seed within the fertile confines of her womb and keep her well-stuffed with plenty of eggs, ensuring that she will never have to feel empty inside ever again.";
				else if NadiaDescription is 5:
					say "     When the military evacuates the city, Nadia decides to stick with you, unwilling to part with such a fine mate or leave her chicks fatherless. Her impressively fertile and motherly features draw comment from some of the soldiers, clearly awestruck by the sheer vibrancy of her colorful beauty, but she makes it clear she's only going to be breeding with you.";
					say "     In the days to come, Nadia's passion for children overflows, the passing of the immediate danger seeming to stoke her breeding and nesting urges even more. She's ever quick to remind you to keep her pregnant and fruitful, and she puts her education to good use in wrangling both her massive brood and young students. When not teaching classes, attending to daily chores or otherwise occupied, the beautiful, broody bird simply lies about much most of the time with her talons caressing her belly, delighting in the sheer sensation of being filled to the absolute brim with growing lives.";
					say "     On their part, Nadia's flock of children travel outward from her nest and across the country, caring for the lost, orphaned and abandoned and bringing them a small portion of their mother's love and hope. Their efforts make them well-recognized in some parts of the country, and help save many from despair in the dark times that immediately follow the outbreak.";
				else if NadiaDescription is 6:
					say "     When the military evacuates the city, Nadia decides to stick with you, unwilling to part with the father of her enormous brood. Her impressively maternal and fecund body draws comment from some of the soldiers when they're not kept busy with taking stock of her numerous children, but she makes it clear she only has eyes for you. It doesn't help that some of the more unhinged survivors seem to think of her as some kind of goddess, causing quite a bit of embarrassment for her before the two of you are finally cleared.";
					say "     In the days to come, Nadia simply concentrates on being a good mate to you, and an equally excellent mother to her ever-growing brood - a full time job, to be sure. Ensuring that you always keep her filled and happy with eggs, the broody bird's infectious aura of hope and happiness prevails wherever you go, and you never want for a coffee and hot meal in the morning prepared by your fertile goddess's hands. Nadia's body only continues to grow more bountiful with each birth - her generous features make her quite the envy of some other mutants, but she takes it all in her innocent good humor. Nadia takes up a bit of gardening on the side, too, and it seems that everything she tends to, be it fruit, veggies or flowers, seems to grow exceptionally well. Word gets about that she can make flowers grow on barren earth just by having walked across it, but she laughs off the rumors as just that.";
					say "     In time, Nadia's numerous children fan out across the country, helping other mutants cope with their changes and spreading their mother's love and warmth to others. There's always at least one or two of them visiting at any given time, and the gifts they keep on sending back are more than enough for you to live off on if you so desired.";

Nadia ends here.
