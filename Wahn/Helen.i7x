Helen by Wahn begins here.

[ HP states of Helen                                             ]
[   0: hasn't been brought to the bunker yet                     ]
[   1: no sex with either Fang or the Felinoid                   ]
[  10: got fucked only by Fang                                   ]
[  11: got fucked only by the Felinoid                           ]
[  12: got fucked by both Fang and the Felinoid                  ]
[ thirst states of Helen                                         ]
[   0: Starting State - not pregnant                             ]
[   1: invisibly pregnant                                        ]
[   2: visibly pregnant                                          ]
[ libido states of Helen                                         ]
[   0: Starting State - not pregnant                             ]
[   1: pregnant by the player                                    ]
[   2: pregnant by Fang                                          ]
[   3: pregnant by the Felinoid                                  ]
[   4: pregnant by Kara                                          ]
[   5: pregnant by Ares                                          ]
[   6: pregnant by Carl                                          ]
[   7: pregnant by Sandman                                       ]
[ lust of Helen                                                  ]
[   0: hasn't had sex with the player                            ]
[   1: had sex with the player once                              ]
[   2: awesomeness message                                       ]
[   3: awesomer upgrade                                          ]
[   4: awesomer sex                                              ]
[   5: awesomer sex continues                                    ]
[   6: offer for tattoo                                          ]
[   7: tattoo received                                           ]
[ HelenPregnant - timer since impregnation                       ]

Chapter 1 - Helen Basics

Table of GameCharacterIDs (continued)
object	name
Helen	"Helen"

Helen is a woman.
ScaleValue of Helen is 3. [human sized]
Cock Count of Helen is 0.
Cock Length of Helen is 0.
Ball Size of Helen is 0.
Ball Count of Helen is 0.
Cunt Count of Helen is 1.
Cunt Depth of Helen is 9.
Cunt Tightness of Helen is 4.
Nipple Count of Helen is 2.
Breast Size of Helen is 3.
TwistedCapacity of Helen is false.
Sterile of Helen is false.
[Basic Interaction states as of game start]
PlayerMet of Helen is false.
PlayerRomanced of Helen is false.
PlayerFriended of Helen is false.
PlayerControlled of Helen is false.
PlayerFucked of Helen is false.
OralVirgin of Helen is true.
Virgin of Helen is true.
AnalVirgin of Helen is true.
PenileVirgin of Helen is true.
SexuallyExperienced of Helen is false.
MainInfection of Helen is "Human".

Description of Helen is "[HelenDesc]".
Conversation of Helen is { "Woof." }.
LastHelenTalk is a number that varies. LastHelenTalk is usually 555.
HP of Helen is usually 0.
HelenPregnant is a number that varies.

to say HelenDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Helen], LUST: [lust of Helen], LIBIDO: [Libido of Helen], THIRST: [thirst of Helen], PREGTIMER: [HelenPregnant] <- DEBUG[line break]";
	project the Figure of Helen_naked_icon;
	if lust of Helen < 3:
		say "     Originally one of Mike's dogs, Helen is now a young human of about nineteen. She has long black hair and a slender physique, with some muscles on her arms and legs. A pretty face completes the image of a beautiful woman - but no matter what she looks like - there's still only a dog's mind behind her eyes, so she walks on all fours and only uses barks and growls as communication. She watches you attentively, eager to follow the commands of her master. ";
		if thirst of helen is 2:
			if Libido of Helen is:
				-- 1:
					say "Her belly shows a slight bulge, the result of your previous coupling.";
				-- 2:
					say "Her belly shows a slight bulge, the result of her mating with Fang.";
				-- 3:
					say "Her belly shows a slight bulge, the result of her mating with Klauz.";
				-- 4:
					say "Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session.";
				-- 5:
					say "Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park.";
				-- 6:
					say "Her belly shows a slight bulge, the result of her previous mating with Carl here in the library.";
				-- 7:
					say "Her belly shows a slight bulge, the result of her mating with that sandman on the beach.";
		if lust of Helen is 2:
			say "You are quite pleased by having such a loyal and obedient pet, but you can't help musing that there might be something you could give the young woman that would make her even [if carried of awesomer fruit > 0][link]awesomer[as]give awesomer fruit to Helen[end link][else]awesomer[end if]";
		say ".";
	else if lust of Helen is 3:
		say "     Originally one of Mike's dogs, Helen is now a young human female of about nineteen. Her beautiful body is fit and toned with a narrow waist and lovely breasts, and her skin possesses a light, even tan. Her attractive face is framed by long, black hair that goes down past her shoulders in stylish waves that never seems to have a hair out of place. All in all, she's a very attractive woman, but inside she's still a loyal and obedient dog. [if thirst of Helen is 2 and Libido of Helen is 1]Her belly shows a slight bulge, the result of your previous coupling[else if thirst of Helen is 2 and Libido of Helen is 2]Her belly shows a slight bulge, the result of her mating with Fang[else if thirst of Helen is 2 and Libido of Helen is 3]Her belly shows a slight bulge, the result of her mating with Klauz[else if thirst of Helen is 2 and Libido of Helen is 4]Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session[else if thirst of Helen is 2 and Libido of Helen is 5]Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park[else if thirst of Helen is 2 and Libido of Helen is 6]Her belly shows a slight bulge, the result of her previous mating with Carl here in the library[end if].";
		say "     She has started to act a little differently since you gave her that strange fruit though. Sometimes, it's as simple as her giving you a more human smile than a canine one when she looks at you. She seems to listen more attentively and her barks aren't as loud and excited. Other times, she's trying to pick up her various dog toys with her hands. You've even spotted her trying to stand on her hind legs as a begging dog would all on her own. When she notices you watching, she barks happily and waits attentively for the commands of her master.";
	else:
		say "     Originally one of Mike's dogs, Helen is now a young human female of about nineteen. Her beautiful body is fit and toned with a narrow waist and plump breasts, and her skin possesses a light, even tan. Her lovely face is framed by long, black hair that goes down past her shoulders in stylish waves that never seems to have a hair out of place. All in all, she's a very attractive woman, but inside she's still a loyal and obedient dog. [if thirst of Helen is 2 and Libido of Helen is 1]Her belly shows a slight bulge, the result of your previous coupling[else if thirst of Helen is 2 and Libido of Helen is 2]Her belly shows a slight bulge, the result of her mating with Fang[else if thirst of Helen is 2 and Libido of Helen is 3]Her belly shows a slight bulge, the result of her mating with Klauz[else if thirst of Helen is 2 and Libido of Helen is 4]Her belly shows a slight bulge, the result of her mating with Kara during the tattooing session[else if thirst of Helen is 2 and Libido of Helen is 5]Her belly shows a slight bulge, the result of her mating with Ares during your walk in the park[else if thirst of Helen is 2 and Libido of Helen is 6]Her belly shows a slight bulge, the result of her previous mating with Carl here in the library[end if].";
		if lust of Helen is 7:
			say "     Wearing nothing, the only adornment she has is the detailed tattoo she received when visiting Kara. Starting at her neck is a detailed collar of deep black with red spikes added to it. Attached to the collar is a bone-shaped tag done in golden yellow and with 'Good girl' written on it in cursive writing. Also attached to it is a pink leash that hangs down from her neck, draping across her bosom and hanging down her side. Just a few inches before reaching the handhold, the pink darkens to red before switching into rainbow banding, ending in a purple loop [']resting['] against her left thigh. The whole tattoo is very detailed, looking quite real and seeming to have depth and curving naturally despite only being drawn into her skin.";
		say "     The unexpected effects of the fruit seem to have largely settled down with her becoming smarter and able to recognize and use her human body. She still has a thoroughly canine mind and is as loyal and obedient as ever, if not more so. While she is able to walk upright a little unsteadily, she still much prefers to go on all fours. Interspersed between her normal, canine antics, she will sometimes flip through some of the books, mainly children's books. She seems to find those with color pictures particularly fascinating. She has a short vocabulary of words, though usually sticks to more canine sounds, especially when she's having fun or having fun having sex. Having a canine perspective on the world, she has no human shame and is as sexually open as ever despite her much more human capacity for reason.";

instead of conversing Helen:
	project the Figure of Helen_naked_icon;
	if lust of Helen < 3:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her and talk with her. Or rather to her - as she still only has the mind of a dog and mostly replies with 'Woof?', 'Woof.' and 'Woof!'";
	else if lust of Helen is 3:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her and talk with her. Or rather to her, though she seems to be listening to you more attentively than she has in the past, almost as if she can understand you. Certainly her barks of response seem more varied and coincide with points you bring up.";
	else:
		say "     Calling Helen to you from wherever she was patrolling in the library, you sit down on the cot you put in here for her. She [one of]snuggles up at your feet[or]rests her head in your lap[at random] and listens to you talk. She doesn't say much and mostly barks in response, but will occasionally use one of her spoken words instead. Usually, it's 'Master' or 'Friend' or 'Sex', those being her favorites, though you've heard her use at least a couple dozen and seems to have no problem understanding you.";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if LastHelenTalk - turns > 8:
		SanBoost 5;
		now LastHelenTalk is turns;
	if Resolution of Spreading Flowers is 4:
		say "[HelenSFHarvest]"; [On Joanna's file]

instead of sniffing Helen:
	say "     Helen has a nice smell, fresh and feminine[if thirst of Helen > 0]. There's a slight undertone to it, hinting at her being pregnant[end if].";


Chapter 2 - Helen Sex Menu

Instead of fucking Helen:
	project the Figure of Helen_naked_icon;
	if (lastfuck of Helen - turns < 5):
		say "     Helen still seems a bit worn out from the last fun-time. Let her rest a bit more...";
	else if lust of Helen is 3:
		say "[AwesomerHelenSex0]";
	else if lust of Helen is 5 and a random chance of 3 in 5 succeeds and Player is not neuter:
		say "[AwesomerHelenSex1]";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Lick Helen's pussy";
		now sortorder entry is 1;
		now description entry is "Give her a blowjob.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have her suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blowjob.";
		[]
		if Player is not neuter and lust of Helen >= 4:
			choose a blank row in table of fucking options;
			now title entry is "69 with Helen";
			now sortorder entry is 3;
			now description entry is "Share oral pleasures with your human dog pet.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Helen's pussy";
			now sortorder entry is 4;
			now description entry is "Fill the human dog's pussy with your cock.";
		[]
		if (Player is male and Felinoid Companion is tamed and (HP of Helen is 11 or HP of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Klauz";
			now sortorder entry is 5;
			now description entry is "Hot sex with Klauz fucking Helen.";
		[]
		if (Player is male and Fang is in the Grey Abbey Library and Fang is Male and (HP of Helen is 10 or HP of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Helen & Fang";
			now sortorder entry is 6;
			now description entry is "Hot sex with Fang fucking Helen.";
		[]
		if (Player is female and Felinoid Companion is tamed and (HP of Helen is 11 or HP of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Helen & Klauz";
			now sortorder entry is 7;
			now description entry is "Hot sex with Klauz fucking Helen.";
		[]
		if (Player is female and Fang is in the Grey Abbey Library and Fang is Male and (HP of Helen is 10 or HP of Helen is 12) ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Helen & Fang";
			now sortorder entry is 8;
			now description entry is "Hot sex with Fang fucking Helen.";
		[]
		if Player is not neuter and lust of Helen is 6 and HP of Kara > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get Helen a tattoo";
			now sortorder entry is 10;
			now description entry is "Bring Helen to Kara to get a tattoo.";
		[]
		if (HP of Ares > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Helen and Ares for a walk";
			now sortorder entry is 11;
			now description entry is "Go pick up Ares from Mike's kennel and take him and Helen for a walk.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Take Helen for a walk to the beach";
		now sortorder entry is 12;
		now description entry is "Go for a walk to the beach with Helen.";
		[]
		if Resolution of Spreading Flowers > 4:
			choose a blank row in table of fucking options;
			now title entry is "Take Helen to Joanna for some fun";
			now sortorder entry is 12;
			now description entry is "Bring her along for some fun with the plant-girl.";
		[]
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
					if nam is "Lick Helen's pussy":
						say "[HelenSex1]";
					else if (nam is "Have her suck your cock"):
						say "[HelenSex2]";
					else if (nam is "69 with Helen"):
						say "[HelenSex8]";
					else if (nam is "Take Helen's pussy"):
						say "[HelenSex3]";
					else if (nam is "Male threesome with Helen & Klauz"):
						say "[HelenSex4]";
					else if (nam is "Male threesome with Helen & Fang"):
						say "[HelenSex5]";
					else if (nam is "Female threesome with Helen & Klauz"):
						say "[HelenSex6]";
					else if (nam is "Female threesome with Helen & Fang"):
						say "[HelenSex7]";
					else if (nam is "Get Helen a tattoo"):
						say "[AwesomerHelenSex2]";
					else if (nam is "Take Helen and Ares for a walk"):
						say "[AresHelenWalk]";
					else if (nam is "Take Helen for a walk to the beach"):
						say "[HelenBeachWalk]";
					else if (nam is "Take Helen to Joanna for some fun"):
						say "[HelenHarvest]"; [On Joanna's file]
					if lust of Helen is 0:
						now lust of Helen is 1;
					else if lust of Helen is 1:
						say "     Looking over the doggedly loyal young woman, you can't help but smile, quite pleased with how good a pet she is. Now, perhaps there's a way to make her even awesomer...";
						now lust of Helen is 2;
					else if lust of Helen is 4:
						increase lust of Helen by 1;
					now lastfuck of Helen is turns;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the human dog, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

An everyturn rule:
	if Helen is in the Grey Abbey Library and thirst of Helen > 0:
		if HelenPregnant is 36:
			now thirst of Helen is 2; [visible pregnancy]
		increase HelenPregnant by 1;


Chapter 3 - Helen Sex Scenes

to say HelenSex1: [player licks her]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, happy to get her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if]. 'Good dog' you say as you crouch down beside her, patting her head and stroking her shoulders. Your hands stray lower and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	say "     You push softly against her so she lies on her side, then back, legs spread to expose her ready pussy to you. Smiling, you go on to fondle her, then lean down to run your tongue over her nether lips. She [if lust of Helen >= 4]moans 'Good master' and yips while rubbing her hands lightly across your shoulders[else]gives you pleased moans and yips[end if], getting louder and louder as you stick your tongue into her and do your best to orally please her. It's not too much longer before she orgasms, body shuddering as her pussy starts squirting femcum. You lick some of it up, rubbing the rest into her skin. Giving your dog a last quick belly-rub and fondle of her breasts, you stand back up and turn back to everyday survival[if lust of Helen >= 4] while she runs off to rummage around in the stacks some more[end if].";
	NPCSexAftermath Player receives "OralPussy" from Helen;

to say HelenSex2: [she sucks the player]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, happy to get her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if]. 'Good dog' you say as you crouch down beside her, patting her head and stroking her shoulders. Your hands stray lower and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Helen, who gives you a happy yip, then starts licking.";
	say "     She runs her talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in her mouth. As Helen starts giving you a pretty nice blowjob, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with her teeth and uses her tongue to caress your cock as she bobs up and down on it";
	if lust of Helen < 4:
		say ". With her eager sucking, it doesn't take much longer until the need to cum rises in your balls.";
	else if lust of Helen < 7:
		say ". With her increased awareness, she's become more responsive and even more eager in her cock-sucking.";
		WaitLineBreak;
		say "     She even tries to use her hands a little, rubbing your balls or stroking your shaft as she sucks on your glans. She's still a little unsure in using her hands, but she's certainly improving now that she's discovered they can be used to pleasure her loving master. With her eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	else:
		say ". With her increased awareness, she's become more responsive and even more eager in her cock-sucking.";
		WaitLineBreak;
		say "     She even makes use of her hands a little, rubbing your balls or stroking your shaft as she sucks on your glans. She's still improving with using her hands, but her attentiveness to your instructions is quickly paying off. With her eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	say "     Moaning, you grab Helen's head and do a few deep thrusts with your hips, your cock deep in her throat as it starts shooting a huge load. Pumping blast after blast directly into her stomach, you hold her head against your crotch, then pull back a moment later to let her get some air. She quickly goes back to work, catching the last spurts of cum with her mouth, then puts her lips around your cock-head, softly sucking as it goes down[if lust of Helen >= 4]. When she finally releases your cock, she smiles a very human smile up at you. 'Master tasty,' she says, licking her lips[end if].";
	NPCSexAftermath Helen receives "OralCock" from Player;

to say HelenSex3: [her pussy fucked]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, happy to get her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' she asks eagerly[end if]. 'Good dog' you say as you crouch down beside her, patting her head and stroking her shoulders. Your hands stray lower and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	say "     Quickly stripping off your clothes, get on the cot and kneel behind your waiting human dog. Running your hands down her body, you take some time to fondle her breasts, then stroke the soft skin of her hips and ass. Rubbing her pussy with your fingers again, you feel how moist and ready she is, your cock aching in anticipation as you move its tip into position against her Stroking Helen's soft skin and hearing her animal-like needful noises, you push forward and slide your manhood into her body. Her pussy is incredibly warm and tight - no wonder, with only Mike having been in there before you. You take a moment to appreciate the tight grip her inner passage as you bottom out, then start fucking her, with Helen panting and yipping in lust as you slide in and out[if lust of Helen >= 4]. 'Good master,' she moans, pressing her rear back into your thrusts[end if]. She likes getting fucked a lot, with her body producing copious amounts of femcum to lube your coupling.";
	WaitLineBreak;
	if lust of Helen > 4:
		if a random chance of 3 in 5 succeeds:
			say "     You run your hands over her sexy body, caressing her lovely skin[if lust of Helen >= 7] and running your fingers along her collar tattoo[end if] as you lean over top of her. This draws added moans and yips of pleasure from her and she pushes herself back into your thrusts, her pussy squeezing along your shaft as you fuck her like a dog. You play with her breasts and finger her clit while fucking her, whispering in her ear what a good girl she is.";
		else:
			say "     After running your hands over her sexy body, you pause in your thrusting to get her to lay on her back. She giggles a little at what seems an unnatural position to her, but welcomes you into her arms as you get your cock lined up again and push into her wanton hole again. She lavishes you with licks and kisses while running her hands across your back[if lust of Helen < 7] almost as if she were petting you[else], stroking and caressing your [bodydesc of Player] body with growing adeptness[end if]. Between the kisses you share, you whisper to her what a good girl she is.";
	say "     Helen's moans build up into a crescendo, echoing loudly through the library as she orgasms. You yourself are not far behind and soon give a deep moan as your balls start twitching and send spurt after spurt of cum to fill Helen's womb. With your cock delivering your seed into her, you pull Helen's upper body against your chest, and give her a deep kiss. Then, after your last shot, you pull her down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Helen >= 4]. 'Mmm... Master fuck Helen good,' she mumbles softly, snuggling up to you lovingly[end if][if lust of Helen >= 7] as you kiss along the tattooed collar ringing her neck[end if].";
	NPCSexAftermath Helen receives "PussyFuck" from Player;
	if thirst of Helen is 0: [not pregnant]
		now thirst of Helen is 1; [pregnant]
		now Libido of Helen is 1; [...by the player]
		now HelenPregnant is 1; [pregnancy timer]

to say HelenSex4: [Player fucks the felinoid as he shafts Helen]
	say "     Accompanied by Klauz, you walk over to the cot you put up here in the library for Helen. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with her? Sure.' With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She hesitates for a second as she sees the felinoid, then continues walking closer, happy to get her master's attention. Soon she's standing on all fours next to you. 'Good dog' you say as you crouch down beside her, patting her head and stroking her smooth skin and pert breasts. Klauz immediately joins you on Helen's other side, rubbing the side of his furred body against your dog's naked form. The effects of his touch and heady musk take effect almost immediately, with Helen's breathing becoming quicker as she pants in lust and her pussy gets moist and ready for sex.";
	say "     Circling around to her backside, the felinoid licks Helen's crotch with his rough tongue a few times. Then he moves further up, licking over the arched back of your human dog and continuing to her neck. Standing over the smaller human, his belly-fur touching Helen's back, Klauz is now in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crotch until he soon finds Helen's swollen pussy lips and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	LineBreak;
	say "     [bold type]What would you like to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Helen blow you and feed her your load.";
	say "     ([link]N[as]n[end link]) - Fuck and come in Klauz's ass.";
	if Player consents: [sucked by Helen]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [Cock of Player] hard-on and stroke it a few times before holding it out for Helen. Your obedient dog immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum on a direct path towards her stomach. Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		NPCSexAftermath Helen receives "OralCock" from Player;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives the large cat the last nudge over the edge. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Helen's womb with his seed. Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants spread his scent over all of your human pet's body.";
		NPCSexAftermath Helen receives "PussyFuck" from Klauz;
	else: [fucking the Felinoid]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [Cock of Player] hard-on and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab Klauz's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Helen for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostate, and soon your big cat is purring in satisfaction and fucking Helen again.";
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her female juices literally dripping on the library floor and creating a small puddle, that gives the large cat the last nudge over the edge. Klauz gives a deep rumble of satisfaction vibrating in his throat as he fills Helen up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute. After a moment of just holding on to the large feline and catching your breath, you pull out and watch Klauz's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Helen's cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Helen cuddling up to the felinoid's soft and warm belly fur. Purring as loud as an idling motor, the big cat starts licking her sweaty human skin. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
		NPCSexAftermath Helen receives "PussyFuck" from Klauz;
		NPCSexAftermath Klauz receives "AssFuck" from Player;
	if Fang is in the Grey Abbey Library and Fang is Male:
		LineBreak;
		if HP of Fang is 1 or HP of Fang is 2: [Omega Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Helen closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		else if HP of Fang is 3 or HP of Fang is 4: [Alpha Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else: [Beta Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is bonding with Xerxes before he has had a chance to. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex5: [Player fucks Fang as he shafts Helen]
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Helen' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then say 'Here girl, I got something for you.' Helen eagerly dashes over, then licks your balls and cock a bit before taking it into her mouth. Quite good at blowing cock, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet blows you, Fang moves up behind her and sniffs Helen's pussy, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Helen's throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Helen's human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Helen and feed her your load.";
		say "     ([link]N[as]n[end link]) - Fuck and come in Fang's ass.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum on a direct path towards her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her pussy make her gush femcum to drip down on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to go down and allow them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else: [fucking Fang]
			LineBreak;
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [Cock of Player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
			NPCSexAftermath Fang receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Omega Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what Klauz has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must be your imagination you tell yourself as you doze off...";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Helen and the dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen's crotch, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's ready pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Helen makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Helen eagerly licks your balls and cock a bit before taking it into her mouth. She delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Helen and feed her your cum.";
		say "     ([link]N[as]n[end link]) - Wait your turn at filling her pussy.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum on a direct path towards her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to her nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else: [fucking Helen]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move over to Helen's nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and sealing the deal of dominance and submission.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Helen's hole and sits down on the floor nearby, curling up to lick himself clean. With Helen's pussy still gaping a bit and dripping femcum and your Alpha's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Helen and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Helen and move over to her cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
			NPCSexAftermath Helen receives "PussyFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - filling Helen again to make her his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
	else if (HP of Fang is 5): [Beta Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your friend hot and ready to go, you give a quick whistle to summon Helen and the dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen's crotch, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's ready pussy. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing the wolf penetrate Helen makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Helen eagerly licks your balls and cock a bit before taking it into her mouth. She delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Helen's head to stop from losing it right then and there. Cock resting for a moment in her throat, you take a deep breath, then slowly pull out and take a step back. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Get blown by Helen and feed her your cum.";
		say "     [link](2)[as]2[end link] - Wait your turn at filling her pussy.";
		say "     [link](3)[as]3[end link] - Fuck and come in Fang's ass.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow, [link]2[end link] to leave it or [link]3[end link] to avoid this area.";
		if calcnumber is 1:
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Helen immediately goes for it, taking your hard length into her mouth and starts bobbing up and down on it. You give a deep moan as she keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Helen's hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in her throat and shoot spurt after spurt of cum on a direct path towards her stomach.";
			say "     Breathing heavily, you stand still as Helen softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to her nearby cot and sit down to watch the rest of your Beta's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them.";
			say "     With the powerful wolf once again demonstrating his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else if calcnumber is 2: [fucking Helen]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move over to Helen's nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Helen's hole and sits down on the floor nearby, curling up to lick himself clean. With Helen's pussy still gaping a bit and dripping femcum and your friend's seed, you quickly get on top of her and ram your erection home. Even stretched by Fang's shaft, she's still nicely tight and feeling your strong wolf's cum filling her hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Helen and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Helen and move over to her cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
			NPCSexAftermath Helen receives "PussyFuck" from Player;
		else: [Fucking Fang]
			LineBreak;
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [Cock of Player] shaft into him with one deep thrust. After giving a surprised yelp at the sudden anal invasion, Fang stops for a second and looks back to ensure that it is indeed you penetrating him. His assumption correct, he accepts being fucked eagerly, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and she shudders as the feelings coursing through her body reach their peak. Her pussy literally drips with female juices, leaving a small puddle beneath her on the library floor. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate.";
			NPCSexAftermath Helen receives "OralCock" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
			NPCSexAftermath Fang receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry message - Beta Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - filling Helen again to make her his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex6: [female player and felinoid + Helen]
	say "     Accompanied by Klauz, you walk over to the cot you put up here in the library for Helen. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with her? Sure.'";
	say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She hesitates for a second as she sees the felinoid, then continues walking closer, happy to get her mistress's attention. Soon she's standing on all fours next to you. 'Good dog' you say as you crouch down beside her, patting her head and stroking her shoulders and muscular back. Klauz immediately joins you on Helen's other side, rubbing the side of his furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Helen's breathing becoming quicker as she pants in lust and her pussy starts to get wet.";
	WaitLineBreak;
	say "     Circling around to her backside, the felinoid licks Helen's crotch with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to her neck. Standing over the smaller human, his belly-fur touching Helen's back, Klauz is now in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Helen's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside her vagina, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	LineBreak;
	say "     [bold type]What would you like to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Helen lick your pussy.";
	say "     ([link]N[as]n[end link]) - Slide under her to 69 as she's fucked.";
	if Player consents: [licked by Helen]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then sit with spread legs in front of Helen. Your human dog has a bit of a pleasantly zoned out expression on her face, panting and grunting in lust as she's fucked. Following her mistress's orders is deeply ingrained in her though, so she immediately starts lapping at your pussy when you pull her head to it and say 'Helen - lick me!' Soon breathing heavily from your rising lust at your pet's oral attention, you rapidly move towards orgasm. Before much longer, her wriggling tongue in your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Klauz ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
		NPCSexAftermath Helen receives "OralPussy" from Player;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give the large cat fucking her the last nudge towards his climax too. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Helen insides with his seed. Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her, and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
		NPCSexAftermath Helen receives "PussyFuck" from Klauz;
	else: [69 with Helen]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of Klauz, then over the smooth skin of your human dog, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen. Your human dog has a bit of a pleasantly zoned out expression on her face, panting and grunting in lust as she is being fucked. Her swollen vagina is getting spread by the felinoid's invading member right in front of you, and you just have to raise your head a bit to be able to lick her and your other pet's slick shaft and furry balls.";
		say "     Reaching down to Helen's shoulders, you pull her down towards your pussy and order her to lick you. As the human dog obediently does so, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Klauz ruts wth Helen with untamed abandon, growling and panting with his deep thrusts.";
		NPCSexAftermath Helen receives "OralPussy" from Player;
		NPCSexAftermath Player receives "OralPussy" from Helen;
		WaitLineBreak;
		say "     Even though the felinoid is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give the large cat fucking her the last nudge towards his climax too. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Helen insides with his seed. Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Helen with him. Stretched out comfortably on the floor, the felinoid holds Helen against his warm belly fur with his front paws around her, and starts licking her sweaty back. Looks as if he's actively trying to infect her, or at least wants to spread his scent over all of your human pet's body.";
		NPCSexAftermath Helen receives "PussyFuck" from Klauz;
	if Fang is in the Grey Abbey Library and Fang is Male: [rivalry messages]
		LineBreak;
		if HP of Fang is 1 or HP of Fang is 2: [Omega Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Helen closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		else if HP of Fang is 3 or HP of Fang is 4: [Alpha Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is getting pussy he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else: [Beta Fang]
			if HP of Helen is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Looks like he's not happy that the big cat is bonding with Helen before he has had a chance to. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Helen a hostile stare. Seeing the felinoid fuck someone he had counted as his packmate doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex7: [Female Player with Fang & Helen]
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Helen' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Helen, the dog in the buck-naked body of a young woman immediately rushing to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here girl, I got something for you.' Helen eagerly dashes over and sniffs your crotch, then starts lapping out the juices dripping out of your vagina. Quite good with her tongue, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet licks you, Fang moves up behind her and sniffs Helen butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and holding Helen's head tight against your crotch to get her tongue in deeper you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Helen's human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's waiting vagina. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting oral as you watch Fang mounting your human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Helen as you don't want to cross the finish line just yet. Now having his mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human pussy below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Helen body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy licking by Helen.";
		say "     ([link]N[as]n[end link]) - Crawl under her for some 69 action.";
		if Player consents: [licked by Helen]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you put your hands on Helen's head and pull her against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking her tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until her oral attention to your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else: [69 with Helen]
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen - where your human dog immediately greets you by licking your pussy, making you moan in lust.";
			say "     As the human dog laps away at your genitals, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     Even though the feral wolf is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give Fang the last nudge towards his climax too. A loud howl of satisfaction fills the room as Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			LineBreak;
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Player receives "OralPussy" from Helen;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		if felinoid companion is tamed: [rivalry messages - Omega Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if HP of Helen is 12:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what Klauz has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Helen. The dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen's butt, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's vagina. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Helen makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here girl, I got something for you.' and step up to Helen. The human dog is exuberantly happy to serve her mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with her tongue, this dog turned human teenager.";
		say "     Getting oral as you watch your alpha mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Helen as you don't want to cross the finish line just yet. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human pussy below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Helen body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy licking by Helen.";
		say "     ([link]N[as]n[end link]) - Crawl under her for some 69 action.";
		if Player consents: [licked by Helen]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you put your hands on Helen's head and pull her against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking her tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until her oral attention to your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else: [69 with Helen]
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen - where your human dog immediately greets you by licking your pussy, making you moan in lust.";
			say "     As the human dog laps away at your genitals, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     Even though the feral wolf is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give Fang the last nudge towards his climax too. A loud howl of satisfaction fills the room as Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			LineBreak;
			say "     That should strengthen the hierarchy in the pack quite nicely. With both your powerful Alpha and submissive human dog pet still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Player receives "OralPussy" from Helen;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		if felinoid companion is tamed: [rivalry messages - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - mounting Helen again to make her his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
	else if (HP of Fang is 5): [Beta Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your friend hot and ready to go, you give a quick whistle to summon Helen. The dog in the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand before you and licks your hand in greeting as you stroke her head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of her, she then turns her backside to the wolf, taking a secure stance and spreads her legs a bit further.";
		say "     With a satisfied growl Fang moves up behind her and sniffs Helen's butt, then jumps up and mounts her human body, front legs around her chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Helen's vagina. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing the wolf penetrate Helen makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here girl, I got something for you.' and step up to Helen. The human dog is exuberantly happy to serve her mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with her tongue, this dog turned human teenager.";
		say "     Getting oral as you watch your friend mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Helen as you don't want to cross the finish line just yet. Now having her mouth free, Helen gives lustful pants and yips as Fang drives his shaft into her. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human pussy below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Helen body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy licking by Helen.";
		say "     ([link]N[as]n[end link]) - Crawl under her for some 69 action.";
		if Player consents: [licked by Helen]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you put your hands on Helen's head and pull her against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking her tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until her oral attention to your vagina drives you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them.";
			say "     With the powerful wolf once again demonstrating his dominant position, this worked out well. He and Helen still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else: [69 with Helen]
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Helen - where your human dog immediately greets you by licking your pussy, making you moan in lust.";
			say "     As the human dog laps away at your genitals, you respond in kind, teasing her clit with the tip of your tongue. Getting oral pleasure while you watch Helen being fucked up close and personal has an invigorating effect on you, driving your arousal through the roof in short order. Before much longer, her wriggling tongue in your vagina takes you over the edge, moaning loudly and holding Helen's head tight against your crotch where she happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Fang ruts with Helen with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     Even though the feral wolf is a quite virile male, everyone's stamina has its limits. When Helen suddenly gives a pleased yip and orgasms, her twitching vaginal muscles give Fang the last nudge towards his climax too. A loud howl of satisfaction fills the room as Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as the feelings from her vagina make her come. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them.";
			LineBreak;
			say "     That should strengthen the hierarchy in the pack quite nicely. With both your powerful wolf and submissive human dog pet still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Helen receives "OralPussy" from Player;
			NPCSexAftermath Player receives "OralPussy" from Helen;
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		if felinoid companion is tamed: [rivalry messages - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Helen is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - taking Helen away from Fang and mounting her himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Helen is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Helen a calculating look. Seems almost like he's up to something - mounting Helen again to make her his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say HelenSex8: [69 with Helen]
	say "     You step beside the cot you put in here for her and whistle to call Helen. The dog with the buck-naked body of a young woman immediately rushes to you from where she was patrolling through the long rows of bookshelves in the library. She comes to stand beside you, happy to get her master's attention[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' she says with a wide grin[end if]. 'Good dog' you say as you crouch down beside her, patting her head and stroking her shoulders. Your hands stray lower and under her [if lust of Helen >= 7]tattooed [end if]body, cupping her shapely breasts and fondling them before moving on to her moist pussy. Helen gives you a pleased yip, dripping female juices over your fingers as you spread her lips. Patting the cot, you tell her 'Up here, girl' and reward her with some more stroking as she obeys.";
	say "     Moving onto the cot alongside her, you get her to raise her thigh and expose her ready pussy to you. Smiling, you brush your fingers lightly across her folds, causing her to shiver and yip in pleasure. Seeing more juices leaking from her ready cunt, you dive in, pressing your lips to her nether-lips and pushing your tongue into her. She tastes delightfully juicy, her feminine cum rich and flavorful with a pleasant sweetness to it, making you eager for more. You tease a finger across her clit and work your tongue to please your good girl.";
	WaitLineBreak;
	if Player is male:
		say "     With your erect shaft in front of her face, she knows what to do and sets herself to licking and kissing at it. Her soft lips and playful tongue are a delight across your sensitive manhood, quickly coaxing dribbles of precum from it. Seeing this, she plunges her mouth over your shaft and sucks greedily at your cock, her well-trained mouth working hard to please her loving master. Her hands [if lust of Helen >= 7]glide across[else]grope at[end if] your thighs and ballsack, [if lust of Helen >= 7]pawing at[else]rubbing[end if] your orbs as they prepare to give her the tasty treat she so desires.";
	else:
		say "     With your wet pussy in front of her face, she knows what to do and sets herself to licking and kissing at it. Her soft lips and playful tongue are a delight across your sensitive folds, quickly getting you wet and dripping as well. Seeing this, she plunges her tongue into your cunt and laps away, her well-trained mouth working hard to please her loving master. Her hands [if lust of Helen >= 7]glide across[else]grope at[end if] your thighs and stroke your folds, finding your clit and [if lust of Helen >= 7]returning[else]trying her best to return[end if] the attention you're giving hers.";
	say "     With your human doggy pleasuring you orally while you're enjoying that sweet, delicious taste of her cunt, it is not too long before you feel your excitement building out of control. You cum with a loud groan and dive your tongue deep into her, lapping up her juices as she orgasms in response[if Player is male]. You pump your [Cum Load Size of Player] load into the young woman's mouth, feeding your seed to her[else]. Your sweet waters soak her face, which she laps up and drinks down with lustful eagerness[end if]. When you're both done cumming, she turns around on the cot, snuggles up with you. She licks and kisses at your face, sharing your taste with hers[if Libido of Helen >= 4]. 'Mmm... tasty Master. Helen love.'[else].[end if]";
	NPCSexAftermath Helen receives "OralPussy" from Player;
	NPCSexAftermath Player receives "OralPussy" from Helen;

to say HelenBeachWalk:
	say "     You glance over to Helen and see her slumped on the ground in a corner, a bored look on her face. Deciding that she has been a good pet who deserves a reward, you call her over to you. Hearing the voice of her master, the young woman's head perks up and she eagerly rushes over to you on all fours. You lean forward to greet the human dog as she barks in greeting and licks your hands, then ask if she wants to go for a walk. Helen's body trembles with unspent energy as she hears those words and the canine turned human-dog skips and bounces around your feet eagerly, barking and whining in anticipation[if lust of Helen >= 4 and a random chance of 2 in 5 succeeds]. 'Master walk!' she exclaims with a beaming grin[end if]. After patting her head and giving the naked body of your pet a stroke or two, you leave the library with your pet in tow.";
	now RandomGenNumber is a random number from 1 to 3;
	if RandomGenNumber is:
		-- 1:
			say "     The walk to the beach is pretty dull with the only notable event being an infected anthro pigeon sitting on the porch of an apartment building muttering about how this world 'ain't right anymore' - all the while glaring at you... and what appears to be a naked young woman walking along on all fours beside you. Helen does not even notice the avian's attention, instead focusing on a nearby fire hydrant. Although the trained dog is pretty good at staying close to your side, she takes the occasional stop to take in the new smells.";
		-- 2:
			say "     While walking to the beach you come across a group of chipmunk infected individuals excavating a ruined convenience store. Helen barks in a friendly manner as soon as she sees them, her muscles tensing to chase one down - but she remembers her training and stays by your side despite her urges. Nevertheless, the pint-sized scavengers panic and rush towards cover, with one of them calling out in a nervous tone, 'We don't want any trouble... please leave!' Given their diminutive frame it must be natural for them to perceive any larger infected as a potential threat. Telling the scavengers that you're just moving through, you pet Helen and praise her for being a good dog, then walk on with her in tow.";
		-- 3:
			say "     Walking towards the beach you see an anthro beaver that is busy boarding up the windows of a mostly intact shoe store. Given just how many infected now have talons, hooves, or paws, it makes sense that a shoe store would not be a target for scavenging, and thus a pretty solid location for shelter. Helen woofs at the sound of the hammer pounding the nails. The hunched over rodent pauses their work and looks at Helen. Raising a quizzical eyebrow, the beaver stares at the human-looking canine before going back to hammering in more nails. Giving you a friendly greeting the furry craftsman says, 'Can't say I've ever seen something like this before. But hey - if you're peaceful and it works for you, do your own thing.' Turning his attention back to his work, the beaver start pounding nails into a new board while humming a tune.";
	WaitLineBreak;
	say "     Your trip eventually takes you to the beach plaza. It is quite lively for this time of [if daytimer is day]day[else]night[end if], with many infected socializing all around the boardwalk. The sounds of the waves crashing against the beach and the numerous conversations happening nearby makes it a bit harder to hear Helen's happy barks. It is impossible to not stand out somewhat with a human-looking canine walking by your side, yet most individuals are too concerned with their own affairs to pay more than a few seconds of attention to you. An anthro red fox in Bermuda shorts from the nearby church politely waves at you then continues to sweep the floor.";
	say "     Following your companion down a few steps onto the beach itself, you watch her scamper over the sand. Obviously enjoying herself, Helen runs in circles around you as you start to walk towards the ocean, then along the beach at the edge of the high tide zone. The wet sand feels soft as it squishes beneath your feet. Meanwhile, Helen exuberantly dashes into the water and starts to play around in the surf, then even doggy paddles out into the deeper water as you throw a stick for her to fetch. A couple of nearby infected chuckle at the amusing sight but leave you be to play with your human-looking pet.";
	WaitLineBreak;
	say "     After tiring herself out frolicking in the surf a bit longer, Helen heads back over towards you and proudly drops the stick at your feet, shaking herself vigorously to get any remaining water off her body. The seawater on Helen's long black hair gets sent flying everywhere, splashing you as well as some other beach-goers. A small family of anthro ocelots that got most of the spray thankfully takes this with amusement and the parents even chat a little with you while their teenage son pets Helen. She pants loudly and gladly basks in the attention with a content look in her eyes. The boy cops a feel or two of her shapely breasts, but you just give a mental shrug and indulge him - what's the harm, after all. Helen certainly seems to like it.";
	say "     Suddenly you hear a loud commotion coming from a part of the beach not too far off. You turn your gaze to see ";
	now RandomGenNumber is a random number from 1 to 3;
	if RandomGenNumber is:
		-- 1:
			say "a large anthro St. Bernard on one knee proposing to his petite Chihuahua boyfriend. The tiny canine tears up and nods his head vigorously. Smiling the large canine hugs his new tiny fiancée. Nearby infected clap and cheer to celebrate the occasion. ";
		-- 2:
			say "a slender lagomorph male that is gleefully running over the sand with a couple of bikini tops in his hands. Some topless women are chasing after him, shouting obscenities at the fleeing swimsuit stealer, their large breasts jiggling with every step. A number of male infected cheer him on and thank him for the sight, to the chagrin of their female partners. ";
		-- 3:
			say "an intense volleyball game between a team of hulked-up hammerheads facing off against a group slender otters. The captain of the hammerheads sternly barks some commands to his teammates while the otters playfully tease their opponents. The competition is quite intense but it ends after the otter captain delivers a powerful spike. ";
	say "Your moment of being distracted ends when a startled bark coming from nearby makes you turn around again - to see a beach stud seemingly made completely from human-shaped sand thrusting his shaft into Helen's pussy. He must just have walked up to her and started fucking. Being held by the hips as she is taken from behind, the human-looking canine lets out a few confused growls and aroused moans. Yet based on the lack of resistance that Helen puts up to getting pounded by the studly sandman it seems that the sandy Lothario is skilled with his technique. 'How do you like it babe? I know the reason you are walking around on all fours stark naked was to attract a hottie like me,' boasts the sandy Don Juan.";
	WaitLineBreak;
	say "     [bold type]You can't help but feel the urge to knock some of that arrogance out of the guy. The nerve of just mounting Helen without asking on this otherwise fairly civil beach...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Watch Helen get fucked by the sandy Adonis.";
	say "     ([link]N[as]n[end link]) - Knock the guy out and take care of Helen's needs yourself.";
	if Player consents:
		say "     Your voyeuristic side winning out, you relax your stance and take a few steps to have the best view of the action. Looks pretty hot how the toned male slides his shaft in and out of Helen's cunt! Meanwhile, the human dog turns her head to look at you, a questioning look on her face[if lust of Helen >= 4] as she asks, 'Master like?' [else]. [end if]She stares intently as if seeking your approval for her current state. Patting the young woman on the head, you give her the reassurance she needs to give herself fully to enjoying her new suitor. Letting out a full-throated moan, Helen's pussy starts dripping with a hearty amount of fem-cum, soaking the sandy phallus slides in and out of her.";
		say "     Grunting in lust, the beach stud slides one hand over Helen's thigh[if lust of Helen >= 7] and runs his fingers along the loop of her leash tattoo[end if], followed by moving on to human canine's clit. Stimulating the clit with some skillful hand movements, the sandy beach lover is able to get your pet to wiggle her hips and yip enthusiastically. A broad smile on his face, the sandman Lothario looks at you and says in between thrusts, 'You're lucky to have a pet like this, her pussy is amazing!' Shifting the angle a little with each new moment of pounding into her, the sandman's shaft finds a sensitive point which sends Helen into a state of ecstatic pleasure. Her tongue hangs out the side of her mouth and the young woman [if lust of Helen >= 4]moans, 'Feels so good...'[else]barks happily.[end if]";
		WaitLineBreak;
		say "     Reacting to the sounds of pleasure uttered by Helen, the hunky male increases the tempo of his pounding against her crotch, hammering deep into her again and again. It only takes a little longer of being jack-hammered for the transformed former canine to orgasm - with her barking, pawing at the ground and the inner muscles of your pet squeezing the beach hunk's cock tightly. 'Fuck! I'm gonna come!' the sandman shouts out loud and pulls his magnificent cock out of Helen in a deluge of femcum from between her nether lips. Seeing the shaft before he wraps his fingers around it and starts to jerk frantically, you notice that it is darker than the rest of him - soaked through and through with Helen's juices no doubt.";
		say "     It takes just a few heartbeats for the guy to finish himself off, grunting loudly as he starts to pump out a significant amount of creamy cum all over your panting pet's buttocks, lower back and even up to her neck with one or two powerful spurts. The two of them ride out their respective orgasms together, with Helen dripping more femcum onto the sand and him creaming her, both of them panting to regain their breaths after such exertions. Meanwhile, you plan ahead a little and go find an abandoned blue beach towel, then start wiping the cum off your human dog as you return. Who knows what would sniff after her if you tried to go back home with her covered in the sandy stud's seed...";
		WaitLineBreak;
		say "     Having taken a moment to put his speedo back on, the sandman strolls back to your side and smirks broadly. 'Look how happy your girl is. That's how you can tell she got a proper beach loving, hah! Be sure to bring the cutie by some more in the future!' With that said, he walks away with an extra spring in his step. Man, the things one can see and meet on the beach these days... sexy, arousing things. Smiling yourself, you then guide your black-haired beauty over to an abandoned umbrella, sitting down for a while to rest with her. After you take a seat on one of the beach towels underneath the umbrella, Helen nuzzles her head onto your lap.";
		say "     The two of your lie there for a short while, enjoying the sounds of the waves crashing against the shore. When Helen seems rejuvenated enough, you decide to return to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks, 'Did you two have a fun time at the beach?' Contented, your youthful pet barks a happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. The look on Helen's face seems very appreciative of the walk you took her on.";
		CreatureSexAftermath "Helen" receives "PussyFuck" from "Sandman";
		if thirst of Helen is 0: [not pregnant]
			now thirst of Helen is 1; [pregnant]
			now Libido of Helen is 1; [...by the sandman]
			now HelenPregnant is 1; [pregnancy timer]
	else:
		say "     With his attention focused on Helen, the sandman is too distracted to notice you. Irritated that the sand-yellow Casanova would try something like this to your pet, you deliver a fierce blow to the back of his head. Stunned by this attack the smooth-talker and stealth fucker is easily pushed away from your startled pet. Delivering a couple more strikes to the stupefied hunk, you are able to chase him off easily, with him grumbling while readjusting his speedo. Wanting to make sure the sandman didn't do any harm to the youthful human canine, you take her over to a nearby abandoned umbrella. Based on the pink beach towels, feminine sunglasses, and the lime green dildo inside one of the beach bags, it seems like a couple of ladies set out for an extra fun day at the beach.";
		say "     Examining Helen, you see no damage done to her. However, your beautiful pet seems incredibly turned on. She pants in an erotic manner, lowering her front and raising her ass, wiggling it towards you while whimpering for a good fucking. Moving backwards a little, she soon is rubbing up against your crotch. [if Player is male]Your cock starts to harden with each rocking motion[else]Your crotch is quite sensitive to Helen's rocking motions[end if]. Stripping off any gear, you then encourage Helen to keep going, your libido inflamed by the sexy pet's antics.";
		if Player is male: [male/herm]
			say "     Once you are fully erect, you begin to insert your cock into your pet's needy cunt. She moans softly as her pussy tightly grips your shaft. One thing's for sure - you are glad to be the one feeling this instead of the sandman. Grunting in lust, you begin to thrust into your human dog. The thrusts are aided by a healthy amount of femcum that she is producing. Once you bottom out inside her, she bucks her hips, showing how eager she is to get pounded. Not wanting to let your pet's expectations down you continue to push your dick as deep as you can with every thrust. Leaning forward you grab the black haired beauty's shapely breasts and softy circle the nipples. Spasms rock Helen's legs as she feels this new sensation, yipping happily.";
			say "     Speeding up the pace of your thrusts, you ask her if this feels good. With a loud bark[if lust of Helen >= 4] and a swift utterance of 'Yes!'[end if], it seems you have your reply. The sensation of Helen's pussy clenching around your manhood as you hammer into her encourages you to pick up the pace. Soon both you and your slender companion are on the verge of orgasming. Placing your hands on her hips, you slide into her all the way and grind against the young woman's body, stimulating her with eager attention. This quickly pushes Helen over the edge and she comes with a happy bark, covering your dick in her juices. The sensation of her inner muscles trembling around your shaft is too good to resist and just a few heartbeats later, your balls twitch as you unleash a heavy load deep within your trained pet's tight cunt.";
			WaitLineBreak;
			say "     Painting the human dog's pussy white, you stake your claim on her body and lean over her, hands moving to caress her breasts as you do so. She hums in satisfaction at her master's touch as well as the throbbing pulse of more and more cum into her depths. Together, the two of you ride out your respective orgasms, openly panting, moaning and touching right there in the open. After a moment, you hear some chuckling and moaning from another towel not too far off - seems like you acquired some spectators who are stroking themselves as they watch. But then... who cares? Sated, you pull your [Cock of Player] penis out of Helen's well-stuffed hole and take a second to just lie back and rest on the beach towels.";
			NPCSexAftermath Helen receives "PussyFuck" from Player;
			say "     When Helen and you seem rejuvenated enough to travel, you decide to return to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks 'Did you two have a fun time at the beach?' Contented, your youthful pet barks a muted happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. She soon walks over to one of her common resting places, circles a couple of times, then lies down. The look on Helen's face seems very appreciative of the walk you took her on.";
			if thirst of Helen is 0: [not pregnant]
				now thirst of Helen is 1; [pregnant]
				now Libido of Helen is 1; [...by the player]
				now HelenPregnant is 1; [pregnancy timer]
		else:
			say "     Pulling the lime green dildo out of the bag, you place it close to Helen's face. The curious transformed canine starts sniffing the sex toy and on smelling the scent of the previous owner's female juices, she starts to lap the shaft and the tip. After a couple of laps you then begin to guide the human-like shaft between her lips. Initially Helen is a little nervous, but as you use your unoccupied hand to rub the lips of her pussy and her clit, she soon relaxes. Although initially wary, she is soon bobbing her head forwards and backwards on the sex toy, you can feel her tongue swirling around the rod. It doesn't take long before she is deep-throating the phallus.";
			say "     When the pole seems like it is nice and wet, you pull it from your companion's maw and move around her to set it against the young woman's dripping wet pussy. Grunting softly as you insert the decently sized sex toy inside her, Helen turns her head to look back at you, whining softly in a plea to push deeper. Happy to fulfill your obedient companion's request, you start to thrust the rod in and out of her. Moaning and yipping, she arches her back and rocks her hips to meet your movements. While thrusting the dildo you use your other hand to explore Helen's body - switching up between cupping her breasts, grabbing her firm booty[if lust of Helen >= 7], running your fingers down the rope of her leash tattoo[end if], and rubbing her clit.";
			WaitLineBreak;
			say "     Your transformed canine companion enjoys your touch greatly by the way she moans and barks. Based on the way her eyes are closed and her tongue hangs out the corner of her mouth, it seems she is getting close to climaxing after a little while. Picking up the pace you shift the angle of your thrusting to hit a sensitive spot and go to town, using both hands to push in and out of her. A muscle spasm on her right leg is the first sign of her orgasm, then she lets out a long and satisfied moan. As you pull the dildo from her cunt, a large amount of femcum gushes forth. Feeling a little worn out you lie down on surprisingly soft towel and rest for a second. Grateful for what you did, Helen gives your hand a couple of licks before nuzzling up against your side.";
			NPCSexAftermath Helen receives "PussyDildoFuck" from Player;
			say "     When Helen and you seem rejuvenated enough to travel, you decide to return to the abbey. While walking back through the beach plaza you see the fox in the Bermuda shorts again, smiling he asks, 'Did you two have a fun time at the beach?' Contented, your youthful pet barks a muted happy reply. Softly chuckling the fox says, 'I'll take that as a yes,' he then bids you a fond farewell as you leave the plaza. It is an uneventful walk back to the Abbey. She soon walks over to one of her common resting places, circles a couple of times, then lies down. The look on Helen's face seems very appreciative of the walk you took her on.";

Chapter 4 - Helen + Fang/Felinoid

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Helen_Klauz_Encounter1"	Helen_Klauz_Encounter1	"[EventConditions_Helen_Klauz_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Helen_Klauz_Encounter1"	Helen_Klauz_Encounter1	"[EventConditions_Helen_Klauz_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Helen_Klauz_Encounter1:
	if (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (HP of Helen is 1 or HP of Helen is 10) and felinoid companion is tamed) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Helen_Klauz_Encounter1	"Helen_Klauz_Encounter1"

Helen_Klauz_Encounter1 is a situation.
ResolveFunction of Helen_Klauz_Encounter1 is "[ResolveEvent Helen_Klauz_Encounter1]".
Sarea of Helen_Klauz_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Helen_Klauz_Encounter1:
	say "[LibraryEntry_NavOrWalk]";
	say "you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Helen. Going to have a look, you find your dog turned teenage human standing on all fours in the midst of a loose reading group of chairs, her looks following the movements of Klauz. The large feline weaves his way between the chairs with flowing movements, circling Helen and from time to time veering closer to rub the side of his head or furred body against her naked form. Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent.";
	LineBreak;
	say "     [bold type]Knowing the felinoid's wily ways, you can guess what he intends to do. How do you react?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Just let things play out between Klauz and Helen.";
	say "     ([link]N[as]n[end link]) - Shoo the cat away from your human dog and tell her to avoid Klauz.";
	if Player consents:
		LineBreak;
		say "     Soon any doubts about getting this close to any cat are forgotten and Helen rubs up against Klauz, licking his muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Helen's pussy, then licks over her female parts with his wide tongue. Several licks later, the felinoid moves further up, running his tongue over the human back of your dog and then her neck.";
		say "     Standing over the smaller human, his belly-fur touching Helen's back, Klauz is now in the perfect position to fuck her. Lowering his hind legs a bit, the feline rubs his spined cock up and down the inside of the human-dog's legs until he soon finds Helen's tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show. After quite a while of hot and heavy fucking, Helen's moans rise up to a loud pleased yip, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying his hard cock all the way in Helen's pussy and holding still, filling her up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks Klauz's cock clean, then joins him on the floor, snuggling up against his warm fur.";
		NPCSexAftermath Helen receives "PussyFuck" from Klauz;
		LineBreak;
		say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
		if HP of Helen is 10:
			now HP of Helen is 12;
		else:
			now HP of Helen is 11;
		now lastfuck of Helen is turns;
		if thirst of Helen is 0: [not pregnant]
			now thirst of Helen is 1; [pregnant]
			now Libido of Helen is 3; [...by the Felinoid]
			now HelenPregnant is 1; [pregnancy timer]
	else:
		say "     Stepping in, you shoo the felinoid away from Helen, then take your human dog to the side and try to explain to her that Klauz is to be avoided. The young woman looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, she seems to understand.";
	now Helen_Klauz_Encounter1 is resolved;


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Helen_Fang_Encounter1"	Helen_Fang_Encounter1	"[EventConditions_Helen_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Helen_Fang_Encounter1"	Helen_Fang_Encounter1	"[EventConditions_Helen_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Helen_Fang_Encounter1:
	if (Helen is in the Grey Abbey Library and lastfuck of Helen - turns > 5 and (HP of Helen is 1 or HP of Helen is 11) and Fang is in the Grey Abbey Library and Fang is Male and HP of Fang < 6 and lastfuck of Fang - turns > 7) and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Helen_Fang_Encounter1	"Helen_Fang_Encounter1"

Helen_Fang_Encounter1 is a situation.
ResolveFunction of Helen_Fang_Encounter1 is "[ResolveEvent Helen_Fang_Encounter1]".
Sarea of Helen_Fang_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Helen_Fang_Encounter1:
	say "[LibraryEntry_NavOrWalk]";
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling. Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like the question of hierarchy among your pets just got solved.";
		LineBreak;
		say "     [bold type]Knowing that this won't stay nonsexual much longer, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Decide not to interfere, and let them establish their status to each other peacefully.";
		say "     ([link]N[as]n[end link]) - Shoo the wolf away from your human dog and tell her to avoid Fang.";
		if Player consents:
			LineBreak;
			say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. Quite a hot little show you're getting here.";
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			LineBreak;
			say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
			if HP of Helen is 11:
				now HP of Helen is 12;
			else:
				now HP of Helen is 10;
			if thirst of Helen is 0: [not pregnant]
				now thirst of Helen is 1; [pregnant]
				now Libido of Helen is 2; [...by Fang]
				now HelenPregnant is 1; [pregnancy timer]
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else:
			say "     Stepping in, you shoo Fang away from Helen, then take your human dog to the side and try to explain to her that the wolf is to be avoided. The young woman looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, she seems to understand.";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "you notice that Fang isn't in sight at any of his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling. Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Helen to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Helen seems to be readily accepting the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft.  After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		LineBreak;
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
		if HP of Helen is 11:
			now HP of Helen is 12;
		else:
			now HP of Helen is 10;
		if thirst of Helen is 0: [not pregnant]
			now thirst of Helen is 1; [pregnant]
			now Libido of Helen is 2; [...by Fang]
			now HelenPregnant is 1; [pregnancy timer]
		NPCSexAftermath Helen receives "PussyFuck" from Fang;
	else if (HP of Fang is 5): [Beta Fang]
		say "you notice that Fang isn't in sight at any of his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary. Then you hear movement from further back in the rows of bookshelves. Hoping to find your guard, you hurry over - to find Fang standing in a mildly threatening pose in front of Helen, who looks to the ground, then rolls over and bares her breasts and moist pussy. Your Beta gives a satisfied murmur and goes to stand over the dog-turned-teenage-human, allowing Helen to lick his muzzle. Looks like Fang wants to include her in the pack too, though her canine behavior despite her lack of fur seems to confuse the wolf slightly. Helen seems to be readily accepting of the submissive role, pleased for a sense of belonging and never having shown any desire for dominance anyway.";
		LineBreak;
		say "     [bold type]Knowing that this won't stay nonsexual much longer, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Decide not to interfere, and let them establish their status to each other peacefully.";
		say "     ([link]N[as]n[end link]) - Shoo the wolf away from your human dog and tell her to avoid Fang.";
		if Player consents:
			LineBreak;
			say "     With a commanding growl, Fang pokes Helen in the side with his muzzle, making her roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Helen's pussy in one deep thrust. Licking and lightly nipping Helen's neck, he pounds into her with an animal's ferocity. Your human-dog pet gives loud moans of lust as she is penetrated deeply again and again and you can see her rock backwards to get more of that wolf shaft inside her. Quite a hot little show you're getting here.";
			say "     The sound of flesh slapping against flesh fills this corner of the library, interspersed with growls, moans, and encouraging comments from Fang to his new pack-member. A feeling of pride fills you that you have such a devoted beta who wants to personally form bonds with those he thinks suitable to be part of your pack. Helen seems to appreciate his personal attention too if her dripping cunny is anything to go by, her juices steadily splashing upon the floor as the wolf's shaft forces it out. Eventually, Fang does one especially deep thrust that pops his knot inside Helen, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and her body shudders as she orgasms, giving lust-filled moans and whimpers. Deep inside her, Fang's cock pulses with burst after burst of wolf cum, filling her womb and cementing the pack bond between the two of them.";
			LineBreak;
			say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
			if HP of Helen is 11:
				now HP of Helen is 12;
			else:
				now HP of Helen is 10;
			if thirst of Helen is 0: [not pregnant]
				now thirst of Helen is 1; [pregnant]
				now Libido of Helen is 2; [...by Fang]
				now HelenPregnant is 1; [pregnancy timer]
			NPCSexAftermath Helen receives "PussyFuck" from Fang;
		else:
			say "     Stepping in, you shoo Fang away from Helen, then take your human dog to the side and try to explain to her that the wolf is to be avoided. The young woman looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, she seems to understand.";
	now Helen_Fang_Encounter1 is resolved;

Chapter 5 - Awesomer Helen

instead of trading the awesomer fruit when the current action involves the Helen:
	if lust of Helen < 2:
		say "     Aren't you jumping the gun a little?";
	else if lust of Helen is 2:
		say "     Looking over at the young woman with the mind of a dog, you can't help but smile at what a fine pet she's turned out to be. Deciding to see if you might make her even awesomer, you pull out the strange fruit you found and call her over. Hearing you call for her, she comes rushing over on all fours with a happy bark, panting with a big doggy smile on her face. You pet the young woman's head and scritch her ears.";
		say "     Holding out the shiny fruit, you give it a little shake and her eyes lock on it. 'Does my good girl want a treat?' Helen bounds around you and barks excitedly. Telling her to sit, she obediently plops down onto her rear, sitting attentively. Running her through a few other tricks, you rub her head again, call her a good girl again and give her the fruit.";
		say "     Laying down on the floor, she gives the fruit a sniff and pants happily. Pressing the large fruit between her balled-up hands as if they were paws, she fumbles to keep it in place as she takes big bites out of it. As she consumes its juicy flesh, subtle changes start to occur. Her body, already quite beautiful, becomes even lovelier while her skin gains a nice, even tan and loses any imperfections. Her waist gets a little tighter and her breasts swell without any sag. Her hair, previously unkempt grows out longer and gains beautiful waves to it. As she's finishing off the fruit, she's moved to sitting and holding the fruit in her hands. After gulping down the last bite, she licks her fingers clean and then gives you a rather human smile before barking happily and dashing off on all fours. As she goes off, the view has you fairly certain that her pussy lips have grown a little.";
		now lust of Helen is 3;
	else:
		say "     You've already done that.";

to say AwesomerHelenSex0:
	say "     In the mood to have some more fun with your human dog, you take a quick look around the room but don't spot her. Calling out to her, she barks happily from somewhere off among the shelves before running over to you on all fours. As she comes over, you can see she's got a book in her mouth. Worried that she might be damaging it, you take it from her and she looks up with a human smile on her pretty face. Looking at the book you're taken, you see that it's a children's book on dogs. She barks excitedly and you try to steady yourself. 'Were you... reading this?' you finally manage to ask, to which she nods excitedly - another human mannerism. She then slaps one of her hands on the picture of a dog on the book's cover before pressing that hand to her chest. In your surprise, you drop the book and Helen whines softly at your reaction. Taking your hand in hers, she presses it onto her head. Scritching the concerned young woman's head, you kneel down and pull her into a hug. 'Such a clever girl you are,' you say and she barks happily to have pleased you.";
	say "     Running your hands over her body, your excitement leads you to caressing her lovely bosom before dipping down to rub her wet cunt. 'I think you deserves a reward for being such a clever girl.' She gives a happy bark and kisses you, giving you a mix of slobbery doggy licks and human kisses while fumbling her hands across your body";
	if Player is male:
		say ". Reaching down, she puts a hand on your hard shaft and rubs it in return. She is a little rough at first, but with a little prompting from you, she lightens her touch and does much better. She listens attentively to your instructions and tries her best to follow them. And while she's a little clumsy with her hands, she is very eager to please you.";
		WaitLineBreak;
		say "     Once you're both good and worked up, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy lips have indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, your cock is in front of her face and she grins happily. This is a trick she knows well and she quickly sets to licking and then sucking at her master's cock in return. Well-trained at this task, she works her mouth and tongue over your pulsing shaft in an effort to please you. Without prompting, she even ventures to put a hand on your ballsack and gently rubs at it. With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavorful with a pleasant sweetness to it. Lapping up that delicious honey is enough to set you off, pumping your hot seed into her waiting mouth before she swallows it down, not releasing your shaft until you're spent.";
		NPCSexAftermath Player receives "OralPussy" from Helen;
		NPCSexAftermath Helen receives "OralCock" from Player;
	else if Player is female:
		say ". Reaching down, she puts a hand between your legs and rubs your pussy in return. She tries to imitate your motions, but is a little rough at first. With a little prompting from you, she lightens her touch. And while she's a little clumsy with her hands, she is very eager and does her best to copy what you're doing.";
		WaitLineBreak;
		say "     Once you're both wet and dripping between your legs, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy has indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, your cunt is in front of her face and she grins happily. This is a trick she knows well and she quickly sets to licking across your juicy folds and then lapping into your vagina in return. Well-practiced at this task, she works her tongue into you in an effort to please you. Without prompting, she even ventures to rub a finger at your clit in an effort to pleasure you. With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavorful with a pleasant sweetness to it. Lapping up that delicious honey is enough to set you off, soaking her face in your hot juices for her to lap up. She makes sure to lick you clean, wanting to get every drop.";
		NPCSexAftermath Player receives "OralPussy" from Helen;
		NPCSexAftermath Helen receives "OralPussy" from Player;
	else:
		say ". Reaching down, she puts a hand between your legs and rubs at your bare crotch with a sad little whine. She ends up reaching around and grabbing your ass instead and kneading it. She is a little rough at first, but with a little prompting from you, she lightens her touch and does much better. And while she's a little clumsy with her hands, she is very eager to please you.";
		WaitLineBreak;
		say "     Once you've gotten her wet and dripping between her legs, you get the young woman to lie down and you move alongside her. Now that you're in a position to get a good look at it, you can see that her pussy lips have indeed grown larger and puffier, with a very enticing scent. Her wet folds are very lovely and inviting. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from bottom to top before swirling it over her clit. You then slowly lower your lips against her nether-lips and dive your tongue in so you can eat out your clever, loyal pet.";
		say "     With you laying beside her, she's left faced with your bare crotch. After giving it a few soft licks, her tongue trails down and around and she sniffs. Soon enough, she's nuzzling at your rear and letting her tongue rub against your asshole. Your moan in response prompts her to continue and she works her wet tongue against your pucker[if anallevel > 1] and eventually wriggling it into your rear[end if]. Without prompting, she even teases a finger against your lubed up hole and pushes it into you in an effort to pleasure you further. With all the excitement, the young woman is quickly pushed to orgasm and her pussy is soon gushing juices across your tongue. Even the taste of it seems better, rich and flavorful with a pleasant sweetness to it. Lapping up that delicious honey is very arousing and you lick along her thighs to clean up every last drop of your lustful pet's sweet waters.";
		NPCSexAftermath Player receives "OralPussy" from Helen;
	WaitLineBreak;
	say "     After the fun's over, she then moves around to snuggle up against you. After some more kisses, she nuzzles her head under your chin so she can rest against you. You stroke the obedient young woman and scritch her head as she starts to fall asleep. As she's drifting off, she mumbles 'Master friend...' softly, starting you fully awake again. You are left staring down at the sleeping female in your arms, your mind reeling with confused thoughts. With people all around turning in animals and mindless creatures, here is a dog who's only becoming more and more human. After laying there for a long time and getting neither answers nor rest, you slowly disentangle yourself from Helen and, after putting a blanket over your sleeping pet, you head off to try and deal with a world that seems even more topsy-turvy than before.";
	increase lust of Helen by 1;

to say AwesomerHelenSex1:
	say "     Wanting to play with your awesome human dog again, you head over to her cot and call out for her. She gives a happy bark and a cry of 'Master!' before running over to you on all fours, damp pussy dripping onto the floor. She's got another book with, though she's at least holding it in one hand this time. She hops up onto the cot beside you, drops the book in your lap and wraps hers arms around your waist. You're a little surprised to see that it is an art book focused on tattooing. It is filled with numerous photos of body art of all kinds, from simple pieces to body-wide works of grand detail. She stares in fascination at the colorful photos as you flip through several pages of the book while petting the young woman.";
	say "     Seeing how looking at the images has gotten her quite wet, you reach over and finger her pussy with your free hand. 'Do you like those, girl? Did you want one?'";
	say "     She barks happily and licks your cheek. 'Helen want.' When you flip to photos of tattooing being done, you tell her that it does hurt and ask her again. 'Helen want,' she asserts again. 'Good girl sit,' she adds with a grin, pointing to the person receiving the tattoo. Unable not to smile at her eagerness, you ruffle her hair and scritch her ears, telling her you'll see about getting her once you find an opportunity to do so[if tattoo parlor is unknown], adding that it may have to wait until you leave the city[end if]. She gives you another rush of licks and kisses. 'Good Master. Love Master.'";
	if Player is male:
		say "     Once the bout of kisses ends, she nuzzles between your legs and goes eagerly for your cock, licking and sucking at it. She's gotten better at using her hands by this point, stroking and rubbing your stiff maleness[if Player is female] and damp pussy[end if], very eager to show you how happy she is with you. The young woman listens attentively as you give her instructions to improve her technique, gradually getting better at using those fingers of hers to further please you while her mouth sucks you off.";
		say "     You stroke her head and scritch her ears, telling her what a good girl she is. Though that's not all you're stroking. Still having your hand on between her legs, you've set aside the book and are now pumping a pair of fingers into her cunny, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong orgasm that pumps your [Cum Load Size of Player] load into her mouth and down her throat by the time you're finally done. After having finished you off, she bends around and shamelessly licks herself like a dog while you watch her tongue herself to orgasm. Having gotten your permission to eventually get a tattoo and those tasty treats to fill her tummy, she stretches out on her back and rubs her [if Ball Size of Player > 6]bloated[else if Ball Size of Player > 5]stuffed[else]full[end if] belly with a happy grin on her beautiful face.";
		NPCSexAftermath Helen receives "OralCock" from Player;
	else if Player is female:
		say "     Once the bout of kisses ends, she nuzzles between your legs and goes eagerly for your pussy, licking excitedly at it. She's gotten better at using her hands by this point, stroking and rubbing your sensitive folds, very eager to show you how happy she is with you. The young woman listens attentively as you give her instructions to improve her technique, gradually getting better at using those fingers of her to further please you while eating you out.";
		say "     You stroke her head and scritch her ears, telling her what a good girl she is. Though that's not all you're stroking. Still having your hand on between her legs, you've set aside the book and are now pumping a pair of fingers into her cunny, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong series orgasm that soaks her face in your juices by the time you're finally done. After having finished you off, she bends around and shamelessly licks herself like a dog while you watch her tongue herself to orgasm. Having gotten your permission to eventually get a tattoo and those tasty treats to enjoy, she stretches out on her back and licks her lips, rubbing a hand to gather up the sticky mix of your female cum and hers so she can suck it from his fingers as well.";
		NPCSexAftermath Helen receives "OralPussy" from Player;
	increase lust of Helen by 1;

to say AwesomerHelenSex2:
	say "     Remembering your promise to your loyal pet, you gather your gear and stand by her cot. Calling her over, she gives a happy bark and comes up, expecting more playtime with her master, but finding you fully equipped and ready to go out into the city. She gives a little whine of disappointment, but sits down on her haunches and looks up at you obediently. After rubbing her head and giving her some scritches, you lean down and ask her if she's ready to get her tattoo. She grins happily and presses her lips to yours in a passionate kiss as her answer. Grinning down at her, you pat her head and tell her to come along and to stay right by your side the whole time. While the naked human does draw some attention from the mutants around, they thankfully leave you alone. And while the activity and sexy sights of the city's red light district catch your pet's attention, she remains steadfastly by your side. Your journey to the tattoo parlor is largely uneventful save for a couple of mutants who offer to trade for your pet, but thankfully accept your refusal and move on.";
	say "     When you go inside, Kara smiles and greets you before looking over the newcomer. 'And who do we have here?' she asks you, her hyena mind quickly assessing that Helen is your subordinate. 'This here is Helen, my pet. She's been a good girl and so we're here to get her a tattoo,' you tell her before looking down at the object of your conversation. Helen is quite excited, looking all around the room and shifting around with barely contained enthusiasm. Of everything in the room, Kara draws her attention the most. Rubbing her head, she settles down momentarily. 'Helen, this is my friend Kara. She's going to give you your tattoo,' you say, patting her side as a signal she can go. She heads over to the hyena on all fours and looks up at her with a happy smile on her lovely face.";
	WaitLineBreak;
	say "     'Doggy friend! Helen tattoo,' she says cheerfully, nosing at Kara's crotch and starts licking her sheath. Already starting to poke out from the sight of the sexy young woman, her cock stiffens further and is soon buried in your pet's mouth. She moans softly and rubs a paw over her head. 'I'm a hyena you silly... Ngg... friendly girl, isn't she?' she adds to you and you can't help but smile.";
	say "     While she's getting an introductory blow job from the dog-minded young woman, you fill her in on the basics of the situation. As you talk, you take a seat and enjoy the show, watching the lovely woman work that throbbing hyena cock with her mouth and putting her increasing manual talents to work as well. She's clearly very eager to please this new friend who's going to give her a tattoo and does her very best, working Kara's cock, knot, sheath, balls and pussy with great enthusiasm until she growls and pulls Helen's face forward, locking that knot of hers in her mouth and feeding her load to the eager woman while hot juices run down her thighs from her fingering her pussy to orgasm as well. Once she manages to pop her lips around her knot, she smiles up at the hyena happily.";
	NPCSexAftermath Helen receives "OralCock" from Kara;
	WaitLineBreak;
	say "     'Now, I am quite busy and I'm not really sure if I've got the time to do a tattoo,' Kara says with a grin. Helen, not picking up on her teasing, whines softly and her shoulders sag in disappointment. '...but for such a good doggy, I'm sure I can make the time.' This perks your pet right back up and she bounds around on all fours before jumping up and kissing the hyena with several quick licks before diving her tongue into her muzzle. She moans and pats her until she settles down enough to drop back down. She then hops eagerly into the tattooing chair, her enthusiasm barely contained. The hyena turns to you and asks if either of you had anything particular in mind and you shake your head, telling her to do whatever your pet wants as long as it's nothing too crazy. Grinning happily, Kara pulls out a book of samples and flips through it, showing one to your pet. 'Do you like this one? I think it's just right for a good girl like you,' she says, scritching her ear. Helen barks happily and nuzzles into the scritches, clearly pleased with her choice.";
	say "     As the hyena is getting her equipment ready, she starts looking through some inks and sets them aside. Seeing that it's mostly browns and blacks she's examining, Helen barks up with a call of 'color!' Kara arches her brow and asks what color she'd like, at which point she seems struck with indecision, pointing at colors at random, regardless of how poorly they'd go together. You pat her side, tell her to settle down and add that perhaps the professional should pick a few nice colors. She seems happy with this and settles back down. You stick around long enough to make sure that she's settled once the tattooing starts. She whimpers a little at the pain of it, but sits still like the good girl she is, letting the hyena do her work. Having told you it'd take a while, you give your pet a kiss before head off to scout around a bit. You even manage to find a bit of food while out. You leave some of it for Kara as payment for her work and tuck the rest away in your pack.";
	ItemGain food by 1;
	WaitLineBreak;
	say "     When you get back, Kara's got her lying back on a table and is finishing up something on her left thigh. Taking your seat, you watch the hyena's rear sway as she works. With such a view, you can't help but notice the damp folds of her pussy. When Kara shifts position briefly, you're gives you a good view of Helen's cunny as well with some cum leaking out of it. It seems the two took a break to have some more fun while you were out. Finishing up, she sets aside the needle and smears some lotion across the young woman's side. 'All done, doggy,' she says, running a paw through her lush hair. 'Now be a good girl and show your master your nice tattoo.'";
	NPCSexAftermath Helen receives "PussyFuck" from Kara;
	say "     Helen hops up off the table and heads over to you. She struggles a bit to stand up so she can look herself over in the wall mirror while displaying her new tattoo for you. Around her neck is a tattoo of a dog collar with red studs and a golden, bone-shaped tag. The tag even has 'Good girl' drawn onto it in smooth cursive. Attached to the collar is also a pink leash that hangs down from his neck and across her breast before hanging down her side. It curves very realistically against her skin all the way down to her hip, leaving the loop [']resting['] against her bare thigh. The last couple of inches before the loop has the leash darkening to red before being banded with a rainbow of colors to further brighten it up.";
	WaitLineBreak;
	say "     The tattoo looks very realistic and the leash seems to drape naturally across your pet's body as if it's really there, like it belongs there. Surprised and impressed by the level of work that Kara's put into the piece, being far more than you'd expected, you thank her very much for it with a lustful kiss and grope. Helen, clearly pleased as well, happily turns around in front of the mirror and gingerly touches her rapidly healing skin. After the two of you properly show your thanks to the talented hyena, leaving her wet, sticky and thoroughly satisfied, you head back with your loyal pet at your right side, her head held high as she walks alongside you so her new tattoo can be on display.";
	if thirst of Helen is 0: [not pregnant]
		now thirst of Helen is 1; [pregnant]
		now Libido of Helen is 4; [...by Kara]
		now HelenPregnant is 1; [pregnancy timer]
	WaitLineBreak;
	increase score by 50;
	increase lust of Helen by 1;
	follow the turnpass rule;

Helen ends here.