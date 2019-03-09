Version 5 of Fang by Prometheus begins here.
[Originally by Stripes]
[Version 5.3 - Fang (alpha & beta) SBL special scenes]
[Version 5.4 - Variables added and moved from Stripes to Prometheus]

"Adds Fang the Feral Wolf to the Flexible Survival game"

[ HP of Fang                                 ]
[ 0 - not found                              ]
[ 1 - at Library                             ]
[ 2 - locked as Beta                         ]
[ 3 - Alpha w/Sandra                         ]
[ 4 - Alpha w/o Sandra                       ]
[ 100 - Fang refused                         ]

[ Libido of Fang (Sandra)                    ]
[ 0 - normal                                 ]
[ 1 - watched once                           ]
[ 2 - watched twice (closed)                 ]
[ 3 - joined in (open)                       ]
[ even = sex                                 ]
[ odd = oral                                 ]
[ 5 - dominance scene                        ]
[ 6+ - done it often                         ]
[ 8, rolled back to 6                        ]

[ hunger of Fang                             ]
[ 0 - Twins not born                         ]
[ 1 - Impregnated player with twins          ]
[ 2 - Lux born                        ]
[ 3 - Umbra Born                       ]

Section 1 - Fang the Feral Wolf

Table of GameCharacterIDs (continued)
object	name
Fang	"Fang"

Fang is a man.
[Physical details as of game start]
ScaleValue of Fang is 3. [human sized]
SleepRhythm of Fang is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Fang is 1. [One cock]
Cock Length of Fang is 10. [10 Inches]
Cock Width of Fang is 10.
Testes of Fang is 2. [Two balls]
Cunts of Fang is 0. [No pussy]
Cunt Length of Fang is 0. [No Cunt]
Cunt Width of Fang is 0. [No Cunt]
Breasts of Fang is 2. [2 nipples]
Breast Size of Fang is 0. [Flat at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Fang is false. [can not take oversized members without pain]
Sterile of Fang is false.
PlayerMet of Fang is false.
PlayerRomanced of Fang is false.
PlayerFriended of Fang is false.
PlayerControlled of Fang is false.
PlayerFucked of Fang is false.
OralVirgin of Fang is false.
Virgin of Fang is true.
AnalVirgin of Fang is false.
PenileVirgin of Fang is false.
SexuallyExperienced of Fang is true.
MainInfection of Fang is "Feral Wolf".
The description of Fang is "[fangdesc]".
The conversation of Fang is { "Grrrr!" }.
libido of Fang is usually 0.		[represents status w/fucking Sandra - saved]
lust of Fang is usually 0.		[tracks sex w/Fang in this play through (controls Sandra variations)]
FangWS is a number that varies.
FangToy is a truth state that varies. FangToy is usually false.
[See Feral Wolf file for collecting Fang.]

the scent of the Fang is "[if HP of Fang is 3 or HP of Fang is 4]The scent of your alpha wolf is strong and exciting[else]The scarred wolf has an arousing male scent[end if].".

to say fangdesc:
	project the Figure of Fang_face_icon;
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Fang], Libido: [libido of Fang], Lust: [lust of Fang], FangWS: [FangWS], FangToy: [FangToy] <- DEBUG[line break]";
	if HP of Fang is 3 or HP of Fang is 4:
		say "     The feral wolf creature is now prowling around freely in the Library, unchained and without a collar. Your beastly wolf has a mix of black and dark gray fur that blends into the shadows as he stands on watch. Fang looks quite assertive as he patrols, his bright, yellow eyes shining with confidence in his new position as the alpha wolf. He's seems bigger now, having grown larger since asserting himself over you. And this size growth doesn't seem to be limited to just his body. His sheath and balls are also plumper and fuller, proper for a virile alpha such as he. You feel a rush of excitement as you look at him, your alpha wolf, feral instincts making you want to submit to him again.";
	else:
		say "     The feral wolf creature seems to be doing better in his new home. He is looking more confident and strong as he sits obediently on watch, clearly adjusting well to his improved position as your beta. His fur is a mix of black and dark gray fur that blends into the shadows as he watches the door with his bright, yellow eyes. You are pleased with how he's turning out so far. He's not made a mess around the Library and remains on his long, rope leash. The fact that he cleverly unties and reties its anchoring point to get around when you're not looking doesn't bother you very much, as the fact he still wears it shows he recognizes your authority as his [if player is male]master[else]mistress[end if][if FangToy is true and a random chance of 1 in 3 succeeds][one of]Fang has his doggy dick toy stuffed in his muzzle, happily working his tongue over it[or]Fang has the playtoy Sandra gave him on the ground between his paws and is giving it a few casual licks[or]Fang's red dildo toy is on the floor beneath him. He's idly rubbing his own hard cock against it, dribbling getting it slick with wolf pre[at random][end if].";

Instead of conversing the Fang:
	project the Figure of Fang_face_icon;
	if HP of Fang is 3 or HP of Fang is 4:
		say "     The wolf creature listens attentively as you tell him what happening out in the city while you stroke and scritch your lupine master.";
	else:
		say "     The wolf creature listens attentively as you speak to him.";


Section 2 - Sexxxings

the fuckscene of Fang is "[sexwithFang]";

to say sexwithFang:
	project the Figure of Fang_face_icon;
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if lastfuck of Fang - turns < ( 9 - HP of Fang ):
		say "     Fang got off fairly recently, so you'd probably have a better time with him if you give him a little longer to recover.";
	else if HP of Fang is 3:
		say "[fangalphasex]";
		infect "Feral Wolf";
		now lastfuck of Fang is turns;
	else if HP of Fang is 4:
		say "[fangalphasex2]";
		infect "Feral Wolf";
		now lastfuck of Fang is turns;
	else if player is not neuter:
		say "     What kind of fun were you looking to have with your big, bad wolf?";
		wait for any key;
		say "[fangsex]";
		now lastfuck of Fang is turns;
	else:
		say "     Lacking any sexual organs of your own, you content yourself with snuggling the wolf and scritching his ears. He nuzzles you in return and licks your face.";
		if HP of Fang is 3 or HP of Fang is 4:
			infect "Feral Wolf";
			now lastfuck of Fang is turns;


to say fangsex:
	setmonster "Feral Wolf";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck wolf cock";
	now sortorder entry is 1;
	now description entry is "In the mood to taste the big wolf cock?";
	[]
	choose a blank row in table of fucking options;
	if player is female:
		now title entry is "Wolf mating";
	else:
		now title entry is "Anal";
	now sortorder entry is 5;
	now description entry is "Let Fang mount you.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Wolf tongue";
		now sortorder entry is 2;
		now description entry is "Put your wolf's tongue to use.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Mount Fang";
		now sortorder entry is 3;
		now description entry is "Mount the big wolf to show him who's alpha.";
		if bodyname of player is "Skunkbeast Lord" and player is pure:
			choose a blank row in table of fucking options;
			now title entry is "SBL fuck";
			now sortorder entry is 4;
			now description entry is "Vent your skunkbeast urges by fucking Fang.";
	[]
	if libido of fang > 2 and lastfuck of Sandra - turns >= ( 9 - HP of Fang ) and Sandra is in the Bunker:
		choose a blank row in table of fucking options;
		now title entry is "Fang and Sandra";
		now sortorder entry is 5;
		now description entry is "See if Sandra wants to play with the big, bad wolf again.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Suck wolf cock":
					say "[fangsex1]";
				else if nam is "Wolf tongue":
					say "[fangsex2]";
				else if nam is "Wolf mating" or nam is "Anal":
					say "[fangsex3]";
				else if nam is "Mount Fang":
					say "[fangsex4]";
				else if nam is "Fang and Sandra":
					say "[fangsandrasex]";
				else if nam is "SBL fuck":
					say "[fangsex5]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;


to say fangsex1:		[suck wolf cock]
	say "     Watching the powerful form of the wolf move around as he paces by the door, you catch sight of his large sheath and swollen balls. Licking your lips, you decide you'd like a taste of the big wolf's thick seed. You walk over and pet his head, scritching his ears. His ears perk up at the show of affection and nuzzles at your hand, licking your fingers. Reaching down with your other hand, you slip it underneath him and start rubbing his warm maleness, getting a rumble of pleasure from the large wolf. He almost seems to smile as he rolls over onto his back, baring himself to you as his swelling cock starts to slip free. His red shaft pokes from his sheath, growing longer and fuller as you start stroking it.";
	say "     Leaning down, you brush your tongue over the tip of his pointed glans, getting a taste of his dribbling precum. It has a strong, virile taste that excites you and, taking a deep breath, you plunge your mouth down over that throbbing prick. Licking and sucking lustfully, you rub at his growing knot and full balls. The wolf releases growls of pleasure and thrusts lightly into your mouth as his paws gently grip you. You move yourself over a little, bringing your groin above his face, allowing the wolf's tongue to play over your [if cocks of player > 1]leaking cocks[else if cocks of player is 1]throbbing cock[end if][if player is herm] and [end if][if player is female]dripping cunt[sfn][else if player is neuter]tight asshole[end if]. Kneading the wolf's balls, you almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat[if player is not neuter], pushing you to orgasm as well with his tongue[end if]. Sliding off the spent shaft, you lick your lips for the excess which flowed out, your belly warm with your wolf pet's semen.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	NPCSexAftermath Player receives "OralCock" from Fang;

to say fangsex2:		[pussy licked by Fang]
	say "     Watching your wolf guard on watch, you decide to satisfy a growing itch in your loins. Taking a seat on one of the desks, you whistle to him, exposing your wet pussy to the large lupine. With almost a grin on his wolfish face, Fang pads over to you and nuzzles your thigh. Stroking his head, you tell the wolf you want to enjoy that big, long tongue of his and he obediently (and eagerly) sets to work licking at your dripping snatch. Moaning in pleasure as that long tongue plays over and into your cunt, you stroke his head and rub his ears. His lupine tongue is able to dive deep into you, making your vaginal walls quiver in delight as it glides over them. The feral wolf lavishes attention upon you, licking your pussy and lapping up your juices. Feeling your climax coming, you moan encouragement to the wolf, who licks all the faster and deeper, pushing you hard over the edge. His fur tickles your thighs as he presses his muzzle to your crotch, washing his warm breath over your soft petals as he laps up your sweet waters. Panting and warm with the afterglow, you scritch the sexy creature's ears.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	NPCSexAftermath Fang receives "OralPussy" from Player;

to say fangsex3:		[fucked by Fang]
	if player is impreg_able and hunger of Fang is 0:
		add "Fang's Mate" to feats of player;
		now hunger of Fang is 1;
	say "     Watching the powerful form of the wolf move around as he paces by the door, you find yourself looking to satisfy a growing urge within you. Deciding to use your wolf pet to fill that need, you walk over and pet his head, scritching his ears. His ears perk up at the show off affection and nuzzles at your hand, licking your fingers. Putting aside your pack and clothes, he almost seems to smile and his cock starts to swell and slide from his sheath. Bracing yourself against a desk, you lean over and call the wolf to you, ordering him to start licking you. His tongue dives in right away, slathering your [if player is female]crotch and sliding into your cunt in an effort to please his alpha and earn his reward[else]pucker and pressing his slobbery tongue into it to get you ready[end if].";
	say "     After a few minutes of very pleasurable attention by his lupine tongue that makes your [if player is female]pussy quiver and cum in ecstasy[else]asshole relaxed and slick[end if], you decide he's done well and call him up to mount you. Obeying his alpha, he leaps onto your back, bracing his front paws beside your hands on the desk and drives his penis into you. His wolf cock spreads your slathered [if player is female]cunt[else]anus[end if] open and he starts thrusting into you. You press back into his thrusts and urge him to take you harder and faster, like the wild beast he is. You order him to fuck you hard, to show his alpha what a strong male he is, to [if player is female]breed[else]screw[end if] you like the animal he is. He licks and nips at your neck, growling softly as he obeys and starts pounding his feral body against yours. You moan and growl in pleasure beneath him, enjoying the rough fucking from your pet. His throbbing, leaking cock pumps into you again and again, filling your whole body with ecstasy with each push into you. As his swollen knot finally pops into you, he howls in pleasure and unleashes his hot, thick seed into you[if player is female] in an effort to breed you[else], filling your bowels with his hot load[end if]. When his knot finally goes down and he hops off of you, you give his ears a scritch, tell him how well he did and let him give you a few licks to clean the leaking excess before gathering up your stuff and getting back to other matters.[impregchance]";
	now libido of player is ( ( libido of player * 2 ) / 5 );
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Fang;
	else:
		NPCSexAftermath Player receives "AssFuck" from Fang;

to say fangsex4:		[assfuck Fang]
	say "     Deciding to remind the big wolf that you're in charge, you stroke your throbbing cock and call with big wolf over. Noticing your erection, the wolf comes over obediently and starts licking at it, slathering his slobbering tongue all over it. You stroke his head and rumble in pleasure, only stopping him once you're good and slick. Ordering him to turn, you get him to raise his tail for you, ears dipped and cowed before his strong alpha. Climbing atop the big wolf, you line yourself up with his tight pucker and sink yourself into him. He releases a soft growl and whimpers a little, but submits to you and takes it. You nibble his ear and whisper what a good guard he's been and how pleased you are with him. You pound your cock into him firmly, adding how happy you are with his tight ass and that's such a good beta for bending over and taking his alpha's cock. Reaching around, you wrap your hand around his shaft, finding it hard and throbbing, enjoying the good, hard fuck he's getting. Pumping hard and fast, you get him to howl under you as you thrust hard into his ass and unleash your hot cum, painting his insides with your seed, claiming him once more as yours. The wolf's semen sprays onto the floor, forming a large puddle of thick, white wolfcum.";
	now libido of player is ( ( libido of player * 2 ) / 5 );
	NPCSexAftermath Fang receives "AssFuck" from Player;

to say fangsex5:		[assfuck Fang]
	say "     Deciding to sate your skunkbeast urges by mounting the wolf, you stride over to him. With your enlarged body, you're easily able to push him over. He gives a submissive whine and, noticing your midnight black erection, starts licking over it. You give an appreciative rumble ";
	if skrp is 1:
		say "and your added skunk girl head chirrs happily. She directs the beta wolf to lick and suck your [cock size desc of player] cock and balls[if HP of Fang is 2], which he does obediently[else], which he obeys reluctantly[end if].";
	else:
		say ", allowing the beta wolf to lick and suck your [cock size desc of player] cock and balls.";
	say "     Once you're good and slick with his saliva, you pull your throbbing back and press the wolf down beneath you. Your strong, mephit body is able to stand over him and you press your pulsing rod against him. Knowing what's coming, the wolf's ears dip and he gives a soft whimper, but keeps his tail raised for his beastly alpha. He releases a soft growl as you push your ebon rod into him, spreading his tight pucker [if cock length of player > 20]very wide[else if cock length of player > 10]wide[else]open[end if] as you fuck him. Your first few thrusts are restrained, giving the wolf a chance to adjust, but you don't hold back after that, letting your bestial urges set a fast and rough pace.";
	if skrp is 1:
		say "     That animalistic corner of your mind is quite pleased to be, as your co-inhabitor teases Fang, 'fucking one of the forest wolves' and 'staking territory for the skunks'. Fang can only give a soft whimper at this and dips his ears lower even as he keeps his tail raised and feet planted firmly so his strange alpha can keep pounding him.";
	else:
		say "     That animalistic corner of your mind is quite pleased to be fucking one of the forest wolves, dominating a member of your territorial rivals. Fang, like a good beta to his strange alpha, keeps his tail raised and feet planted firmly as you pound into him.";
	say "     Your scent grows strong in the air and clings to the wolf for some time after you're done with him. And by the time you're done, you've cum hard a few times. Having drained your mephit balls into the cowed wolf, you've once again staked your position over him. The wolf, also having enjoyed the bestial mating by his alpha that's left him sated and sore, has left several sticky stains on the floor.";
	now libido of player is libido of player / 2;
	NPCSexAftermath Fang receives "AssFuck" from Player;


Section 3 - Fang and Sandra

instead of going up from Bunker while ( lastfuck of Sandra - turns > 15 and Sandra is in the Bunker and Fang is in the Grey Abbey Library and lastfuck of Fang - turns > 7 and libido of Fang < 2 and ( HP of Fang is 1 or HP of Fang is 2 ) ):
	now lastfuck of Sandra is turns;
	now lastfuck of Fang is turns;
	move player to Grey Abbey Library;
	project the Figure of Fang_face_icon;
	say "     As you're preparing to head back out, you catch sight of Sandra slipping through the door to the Library[if libido of Fang is 1] again. Once again, there's[else]. There's[end if] something furtive about her actions and so you remain quiet and follow out shortly after her. Outside in the library, you stay hidden among the stacks, watching her move towards the big wolf on guard[if the number of booked people > 1]. They are alone in here right now, or at least so they think[end if][if libido of Fang is 1]. With a few quiet whispers,[else]. It becomes clear what she's after when[end if] she puts her arms around him and starts stroking his cock, getting the big, feral wolf hard. After a little teasing and some slobbery kisses from the lupine's tongue, she moves onto all fours and waves her rump for him.";
	say "     'Oh, take me, you big beast! I want to be fucked like an animal!' the usually shy and quiet bunny cries out as the wolf's moving atop her. It seems she's becoming more lustful with her time waiting in the bunker, giving into her hidden lusts more and more. Clearly the rabbit girl is much kinkier than she lets on. You grin as you watch the wolf's cock spreading the bunny's wet, dripping folds before pounding and thrusting into her like a wild, feral wolf. Getting quite aroused by the erotic display before you, you rub your hands over your body.";
	say "     [bold type]Shall you head over to join them [if libido of Fang is 1]this time [end if]or remain watching quietly?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Join them.";
	say "     ([link]N[as]n[end link]) - Watch.";
	if player consents:
		say "     Wanting to join in on the fun, you slip out of the shadows and quietly approach the pair. As you move up close, you get a better view of that throbbing cock slipping into the bunnygirl's wet folds again and again. Once right behind them, you grab the wolf's balls, telling him to keep fucking that horny bunny. Sandra squeaks in embarrassment but doesn't stop pushing herself back into each of Fang's thrusts. You slide your hand over the wolf's balls to tease her pussy as it slides over his cock. 'I... it's... oh, gods! He's just such a sexy animal,' she moans as her excitement only builds at being caught beneath the feral wolf.";
		if player is male:
			say "     Your cock throbs with excitement as you watch the two going at it.";
			say "     [bold type]Wanting to take part, would you prefer to mount the wolf or give the horny bunny some cock to suck?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Mount the wolf.";
			say "     ([link]N[as]n[end link]) - Get sucked.";
			if player consents:
				say "[fangsandramount]";
			else:
				say "[fangsandrasuck]";
		else if player is female:
			say "     Your pussy quivers with excitement as you watch the two going at it.";
			say "     [bold type]Wanting to take part, would you prefer to lick at their cock and snatch or have the horny wolf lick your needy pussy (N)?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Lick at their cock and snatch.";
			say "     ([link]N[as]n[end link]) - Get licked.";
			if player consents:
				say "[fangsandralick]";
			else:
				say "[fangsandratongue]";
		else:						[neuter]
			say "[fangsandralick]";
		say "     When you're done and the wolf's knot has gone down enough to pop free, you get the wolf to lick her dripping snatch clean, enjoying the show of her squirming with Fang's tongue stuffed into her overflowing pussy. You play with the bunny's tits, nursing some milk from them until she cums several more times. Smiling in your arms, panting after her wild time with you both, Sandra gives you a kiss. 'Fang's out here on his own, standing guard for us. I wanted... I just... I felt he should get a little reward,' she says softly. You slip a pair of fingers into her pussy, teasing her clit, asking if that's all. The bunny girl moans and nibbles her lip. 'Oh, who am I kidding? He's just such a big, powerful wolf. It was just so [']wrong[']; I had to have him.' The wolf grins and licks her muzzle, making her smile and kiss him in return. After some further cuddling, you let her up so she can slip back into the bunker before anyone comes looking for her. 'Maybe we could do this again sometime,' Sandra says softly to you, before running quickly back inside.";
		now libido of Fang is 3;
		PlayerDrink 15;
		now libido of player is libido of player / 4;
	else:
		say "     Deciding you'd prefer to watch the show, you remain in the shadows of the bookshelves[if player is male] and stroke your throbbing meat[else if player is female] and finger your feminine folds[end if]. The bunny is getting pounded good and hard by your guard wolf, his thick knot pressing at her wet lips each time, trying to push fully in. Sandra paws at the ground whimpering and moaning a lot, but is clearly loving having the big, bad wolf atop her. Growling, the wolf takes the nape of her neck between his teeth and drives hard into her, forcing his knot into her and tying with her. His cock throbs and his balls twitch, clearly pumping his rich seed into her. She releases a long, satisfied moan as her belly fills with wolfcum[if player is male]. You pump a hand quickly over your cock, stifling your moans as you spray a large puddle of cum onto the floor at the sight of their mating[end if][if player is female]. You drive several fingers into your twat, soaking your crotch and hand in your feminine juices until they dribble between your fingers[end if]. Their wild mating done, Fang snuggles up with Sandra, licking and kissing the bunny girl until his knot finally goes down. Once released, the rabbit gets up quickly, wipes away the dribbling cum from her slit and sneaks back into the bunker. You wait in the shadows for a while before slipping out, acting as if you had just emerged from the bunker[if libido of Fang is 0]. You do give Fang a scritch on the ears as you go past him[else if libido of Fang is 1]. The wolf seems to grin at you as you come out and he makes a show of slowly licking his cock. You get the feeling that the wolf knew you were watching him fuck the horny bunny[end if].";
		increase libido of Fang by 1;
		NPCSexAftermath Sandra receives "PussyFuck" from Fang;

to say fangsandralick:
	say "     Still stroking the bunny's snatch, you lean down and nuzzle under the wolf's large balls. Close up, you can see the bunny's cunt gripping and pulling at the wolf's cock each time he withdraws, her body not wanting to release it. You press your face in there, licking and kissing at that slick, juicy flesh. You run your tongue over them both, then move in to focusing on the bunny's swollen clit, licking and sucking it hard as the wolf's knot tries to push into her. After several hard pushes, it pops in and Sandra cries out in delight. 'Oh yes,' she cries, 'Gimme that knot, you wild wolf!' You can feel the wolf's balls tense up and see his cock swell a little further as his hot load gushes into the horny bunny he's tied with so he can fill her with his semen. As you're licking at them, lapping up the escaping overflow of jizz, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her[if player is male], and it become too much for you to hold back longer and soon enough you're emptying your balls onto the floor as you pump your cock hard[else if player is female], and it become too much for you to hold back longer and soon enough you're cumming hard with several fingers buried in your own snatch[else] and can't help but smile a little[end if].";
	NPCSexAftermath Sandra receives "PussyFuck" from Fang;
	NPCSexAftermath Player receives "OralCock" from Fang;
	NPCSexAftermath Player receives "OralPussy" from Sandra;

to say fangsandrasuck:
	say "     Moving in front of them, you bring your throbbing cock towards Sandra's muzzle. Fang, taking the bunny's nape in his neck, makes her moan loudly and you slide your cock into her open muzzle. The bunny licks and sucks hungrily at it while getting fucked by the wolf creature. You run your hands over her head, stroking her ears as you tell her how sexy she looks like that, having a big, feral wolf fucking her. She blushes brightly at her ears and cheeks, but is clearly turned on by it and pushes hard back into his thrusts. A few more thrusts as you hear the pop of the wolf's knot pushing into her wet cunt, tying them together so he can fill her with his semen. As you pump your cock into her eager muzzle, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough you're emptying your balls down her throat.";
	NPCSexAftermath Sandra receives "PussyFuck" from Fang;
	NPCSexAftermath Sandra receives "OralCock" from Player;

to say fangsandramount:
	say "     Moving in behind Fang, you get your throbbing cock lined up with his tailhole, then drive it into him as he thrusts into the bunny. Fang releases a soft whimper, but takes your cock easily enough in his experienced hole. Sandra, meanwhile, moans loudly as this forces the wolf's knot into her, tying them together. 'Oh yes,' she cries, 'Gimme that knot, you wild wolf!' You can feel Fang's tailhole clenching around you as his ballsack pulls up and his hot load sprays into the eager rabbit. You pound away at his ass, making sure the wolf cums long and hard to give Sandra every single drop of his thick seed. Imagining the bunny girl stuffed with wolf cum or even better, growing cubs inside her, becomes too much for you to hold back longer and soon enough you're emptying your balls into the wolf as well.";
	NPCSexAftermath Sandra receives "PussyFuck" from Fang;
	NPCSexAftermath Fang receives "AssFuck" from Player;

to say fangsandratongue:
	say "     Moving in front of them, you bring your dripping cunt to Fang's muzzle. The wolf needs no prompting and dives his tongue into your crotch, licking at your pussy before diving his tongue into you. His lupine tongue slides around inside you, lapping up your aroused juices as you watch them fucking. 'Oh, that looks so hot,' the bunny moans between increasingly hard thrusts. 'I've got to give that tongue a try sometime.' Excited by your juices, the wolf pounds at the bunny harder and harder until he manages, with a pop, to push his knot into her and tie them together so he can fill her with his semen. 'Oh yes,' she cries, 'Gimme that knot, you wild wolf!' As the wolf licks at you, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough cumming hard as well, soaking the wolf's muzzle.";
	NPCSexAftermath Sandra receives "PussyFuck" from Fang;
	NPCSexAftermath Fang receives "OralPussy" from Player;

to say fangsandrasex:
	now lastfuck of Sandra is turns;
	now lastfuck of Fang is turns;
	increase lust of Fang by 1;
	say "     Recalling that you haven't spent time with Sandra in a while, you lead Fang over to one of the side rooms before poking your head in the bunker long enough to call the bunny girl over[if ( number of booked people + number of bunkered people ) > 4 and libido of Fang > 5]. The others smile, having picked up on what's going on, but saying nothing as she heads out to join you[else if ( number of bunkered people + number of booked people ) > 4]. The others inside glance over for a moment, but largely ignore the brief intrusion and the bunny girl's exit[else]. The bunny girl exits the bunker to come join you[end if]. Once in the side room, the bunny girl [if libido of Fang > 5]grins playfully and[else]blushes a little to find Fang there, but[end if] rushes over to hug the big wolf around the neck. You slip off your pack and clothes, smiling to see that Sandra's already got her paw at the wolf's hard cock. Clearly she's been looking forward to this as much as your guard wolf has.";
	WaitLineBreak;
	if lust of Fang is 3 and HP of Fang is 1:			[3rd threesome w/Fang in this playthrough w/basic Fang]
		say "     As Sandra strokes the wolf's cock, she spreads his precum over it, getting it nice and slick. 'Mmm... would you like a turn under this sexy beast? I'd love to see you bent over for this big wolf[if player is not female] and taking it up the ass. That'd be really hot,'[else], getting bred as his bitch. That'd be really sexy,'[end if] she moans, fingering herself. Looking at that throbbing, red cock, you find yourself tempted by the idea of letting the wolf ravage you as he did with Sandra. Fang, as if sensing your momentary lapse in control, moves up to you and begins trying to mount you. Shall you let him (Y) or reassert your dominance (N) ?";
		if player consents:
			say "[fangsub]";
			now HP of Fang is 3; [Fang becomes alpha]
			now XP of Alexandra is 0;
			now vmusedone of Fang is false; [Open for fresh musings]
			now libido of player is libido of player / 2;
			infect "Feral Wolf";
		else:
			say "     Momentarily tempted by sexy bunny's offer, you manage to shake it off and grab the wolf roughly by the neck. 'No Fang, I'm the alpha and that's the way it stays,' you growl, forcing him to the floor. He growls a little in frustration, but you hold him firm. 'Don't you get uppity because Sandra lets you fuck her. I'm still the one on top here,' you add grabbing his balls firmly, making him whine and dip his ears. 'I merely let you because she enjoys it, not because you deserve to be anything more than beta.'";
			if player is herm:
				say "     It seems Fang will need a reminder of his place beneath you. Being both male and female, there are options open to you. Would you prefer to fuck the wolf (Y) or ride his lupine cock (N)?";
				if player consents:
					say "[fangdomfuck]";
				else:
					say "[fangdomride]";
			else if player is male:
				say "[fangdomfuck]";
			else:
				say "[fangdomride]";
			now HP of Fang is 2; [Fang locked into beta-mode]
			now libido of player is libido of player / 4;
			if thirst of player > 50, decrease thirst of player by 10;
	else if ( lust of Fang is 4 or lust of Fang is 0 ) and HP of Fang is 2 and FangToy is false:
		say "     As Sandra strokes the wolf's cock with one bunny paw, she pulls out a large dildo out of a small bag she's brought this time. 'Mmm... I was thinking about what you'd said before and thought it might be nice to give the big wolf here a toy to play with,' she says with a grin as she passes it to you. You look over the rather canid-looking sextoy made of red latex with a knot and pointed tip like that of a dog or wolf. After looking it over and then back to Sandra, the bunny girl blushes a little. 'It's... ah... from my personal collection. It was one of my personal favorites before I became a rabbit. But Fang can have it now since I've got the real thing to play with.' And with that, Sandra rolls onto her back under the wolf and stuffs his large, lupine cock into her eager muzzle.";
		say "     Looking between the wolf and the bunny, you find yourself presented with a few options.";
		if player is male:
			say "     [bold type]Shall you use the toy on Fang while fucking Sandra or would you prefer to use the toy on Sandra while Fang licks you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Use the toy on Fang, fuck Sandra.";
			say "     ([link]N[as]n[end link]) - Use the toy on Sandra, get licked by Fang.";
			if player consents:
				say "[fangsandratoy1]";
			else:
				say "[fangsandratoy2]";
		else:
			say "     [bold type]Shall you use the toy on Fang while playing with Sandra's pussy or would you prefer to use the toy on Sandra while you get Fang to you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Use the toy on Fang, play with Sandra's pussy.";
			say "     ([link]N[as]n[end link]) - Use the toy on Sandra, get Fang to lick you.";
			if player consents:
				say "[fangsandratoy3]";
			else:
				say "[fangsandratoy2]";
		say "[fangsandracloser1]";
		now FangToy is true;
	else if libido of Fang is odd:
		say "     After playing with the wolf's cock for a bit, she takes a seat in one of the chairs with her legs apart. Showing off her large snatch, the bunny girl holds her wet folds open, offering herself to the wolf's long tongue. 'Come on, you big beast, eat the poor bunny up!' Needing no further invitation, the feral wolf's muzzle is nosing at her dripping cunt right away. You move to Fang's side, stroking his back and taking over tending to his cock while you watch the show. After a few playful sniffs and teasing brushes of his tongue-tip, he dives right in, slathering his long tongue all over it. Soon the licking over those ample folds turn into dives inside her vagina to lap up her juices, exciting the bunny further[if libido of fang is 3]. 'Oh yes! Good boy! I wish I'd thought of this sooner[else]. 'Oh yes! Nice and deep, you animal[end if]!' she moans and cries out lustfully, gripping the arms of the chair tightly to steady herself.";
		say "     Still pumping at the wolf's cock, you scritch his ears, telling him what a fine job he's doing. Now that they're going at it rather strong, it's time for you to join in this threesome.";
		if player is male:
			say "     [bold type]Shall you mount the wolf or give the horny bunny some cock to suck?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Mount the wolf.";
			say "     ([link]N[as]n[end link]) - Give the horny bunny some cock to suck.";
			if player consents:
				say "[fangsandramount2]";
			else:
				say "[fangsandrasuck2]";
		else:
			say "     [bold type]Shall you suck the wolf off or get some wolf tongue action as well?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Suck the wolf off.";
			say "     ([link]N[as]n[end link]) - Get some wolf tongue action.";
			if player consents:
				say "[fangsandralick2]";
			else:
				say "[fangsandratongue2]";
		say "[fangsandracloser1]";
	else:
		say "     Spreading the wolf's pre across his cock, she gets it nice and glistening before moving onto all fours and raising her rump to him. 'Come on, you big beast,' she moans quietly. 'Take this poor bunny girl and faaahhh!' Her request turns into a loud, lustful moan as Fang mounts her mid-sentence, sinking his feral cock into her pussy. You pat the wolf's back and rub his heavy balls against the bunny's pussy as he thrusts into her again and again, as if to show her what's coming. 'Mmm... yes,' the usually quiet bunny girl cries out as the wolf keeps pounding into her like a wild animal, 'fuck me hard, you sexy creature. Ravage your bunny prey... mmm...'";
		say "     You slip your fingers to the bunny's wet folds, caressing them as your wolf's cock slides in and out. Now that they're going at it rather strong, it's time for you to join in this threesome. Shall you ";
		if player is male:
			say "     [bold type]Shall you mount the wolf or give the horny bunny some cock to suck?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Mount the wolf.";
			say "     ([link]N[as]n[end link]) - Give the horny bunny some cock to suck.";
			if player consents:
				say "[fangsandramount]";
			else:
				say "[fangsandrasuck]";
		else:
			say "     [bold type]Shall you lick at their cock and snatch or have the horny wolf lick your needy pussy?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Lick at their cock and snatch.";
			say "     ([link]N[as]n[end link]) - Have the horny wolf lick your needy pussy.";
			if player consents:
				say "[fangsandralick]";
			else:
				say "[fangsandratongue]";
		say "[fangsandracloser1]";


to say fangsandramount2:
	say "     Moving in behind Fang, you get your throbbing cock lined up with his tailhole, then push it into his tight pucker. Fang releases a soft whimper, but takes your cock easily enough in his experienced hole and doesn't let up at all with his licking. Sandra, meanwhile, moans loudly as this presses the wolf's muzzle forward, bumping his nose against her clit and driving his tongue even deeper into her. She rubs her bunny paws over his ears and head, rolling her hips in the chair as she gets increasingly loud in her lustful moaning as she climaxes. With your paw around the wolf's cock, you squeeze and pump it while you pound away at his ass, making sure the wolf cums long and hard. Feeling his throbbing, pulsing penis in your hand as his balls spread their load across the floor, you can hold back no longer and blast your seed into the wolf's bowels, claiming him once more as your own.";
	NPCSexAftermath Fang receives "OralPussy" from Sandra;
	NPCSexAftermath Fang receives "AssFuck" from Player;
	wait for any key;

to say fangsandrasuck2:
	say "     Moving over beside Sandra, you bring your throbbing cock to the bunny's muzzle. Eyes closed as she enjoys the lustful licking, she doesn't notice you there until you let your erection brush across her muzzle. Seeing it there, the takes it quickly in her paw and starts licking and sucking at it, moaning around your meaty shaft as the wolf's tongue keeps going at her. Whining a little at the lack of attention to his over-aroused cock, Sandra manages to reach out with one of her long bunny feet and starts caressing it against the wolf's throbbing shaft. Clearly pleased by the renewed attention to his erection, he licks at her with added vigor, making her squirm all the more in her seat, cumming repeatedly. You rub your hands over her long ears and cute muzzle.";
	say "     By the time you cum as well, she's had another orgasm from the wolf's lapping tongue. She guzzles down your [if cock width of player > 9]ample [end if]load, then quickly pushes you away. Startled a little by her suddenness, you stumble back a couple of steps. But this gives you a clear view as Sandra dives under the Fang, grabbing his cock and pulling it to her muzzle, sucking him as she squeezes his knot and balls. The big wolf howls, draining his balls into the cum-hungry bunny as he pounds it into her smiling muzzle, leaving her nice and full with two loads of semen.";
	NPCSexAftermath Fang receives "OralPussy" from Sandra;
	NPCSexAftermath Sandra receives "OralCock" from Player;
	wait for any key;

to say fangsandralick2:
	say "     Lowering yourself down under the wolf, you run your tongue slowly over his throbbing, red cock and are rewarded with a spurt of pre across your face. Clearly quite excited from the bunny's juices, you enjoy the rumble of pleasure he releases as you slide your mouth down over his pointed glans. You let your lips slide slowly down his throbbing member, enjoying his strong, virile taste. You can hear Sandra's cries growing more excited as she cums loudly and you bring one hand between your legs to finger yourself quickly. Kneading the wolf's balls with your free hand, you take his full length in and almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat. You moan wetly around his spurting meat, orgasming as you rub at your clit while sucking of the big wolf. Sliding off his spent shaft, you lick your lips for the overflowing cum and rub your belly, enjoying the warmth of your pet's semen inside it.";
	NPCSexAftermath Fang receives "OralPussy" from Sandra;
	NPCSexAftermath Player receives "OralCock" from Fang;
	wait for any key;

to say fangsandratongue2:
	say "     Pulling up a chair, you move in beside Sandra. Patting the wolf's head, you draw his attention to your waiting pussy and he obediently switches over to licking at you. He dives right into it, too excited for any teasing first and you moan in pleasure. Sandra emits a little whine of disappointment as the tongue disappears, but moans happily as you lean over and start playing with her breasts. Too excited to resist you lesbian advances, she moans lustfully and kisses you. You slide your tongue into the bunny's muzzle, playing it across hers and over her large incisors. She wriggles in delight as you tease her nipples while Fang's tongue returns to her pussy. The wolf switches back and forth between you both, lavishing attention upon your cunts until you're both moaning and screaming in orgasm in each other's arms.";
	say "     Fang sits back on his haunches and whines softly, his red cock engorged and throbbing with need. Grinning at one another, you both slide onto the floor and take his maleness in your hands. You play your fingers across his cock, knot and balls. He rumbles happily and pants, watching you both kissing each other passionately, resulting in you both getting painted with streaks of while wolf semen across your lovely bodies as he cums with a howl.";
	NPCSexAftermath Fang receives "OralPussy" from Player;
	NPCSexAftermath Fang receives "OralPussy" from Sandra;
	wait for any key;

to say fangsandratoy1:
	say "     Moving in between the pair, you take Fang's new toy and scritch the wolf's ears. Bringing it to his muzzle, you tell him to start licking it because he'll be getting it soon. His ears dip a little but he obediently sets to work on it, slathering his tongue all over it to get it slick for some fun. From his obvious zeal, it appears that there's lingering traces of Sandra's juices still on it. Once you deem it ready, you place it under the wolf's tail and press the pointed tip of the red toy against his back passage. He pauses briefly in his thrusts into the eager bunny's muzzle and you can see her peaking out from under him to watch as you start easing it into your beta's backside.";
	say "     When you see Sandra latch her muzzle back onto the wolf's cock, you start pumping the canine dildo into the wolf's ass. This sets the wolf to resume thrusting into the bunny girl's muzzle, making her moan happily. Catching sight of her spread legs and the wet puss between them, you shift over a little further, and with a little stretching, manage to keep working the toy into Fang's bottom while getting your cock lined up with the bunny's pussy as well. When you sink your cock into her, you set her into even more avid sucking of Fang's meaty cock. The action becomes wild and fast, with the wolf flooding the rabbit's muzzle with his cum, then Sandra's orgasm causing her pussy to quiver around your pulsing shaft before finally you cum, spilling your seed in the lusty bunny's cunt.";
	NPCSexAftermath Fang receives "AssDildoFuck" from Player;
	NPCSexAftermath Sandra receives "OralCock" from Fang;
	NPCSexAftermath Sandra receives "PussyFuck" from Player;

to say fangsandratoy2:
	say "     Moving in between the pair, you take brush Fang's new toy across the bunny's wet folds, making her shiver and moan in pleasure. You move your hand to Fang's ears and scritch them, telling him how you're going to get his new toy ready for him. The wolf grins and licks your cheek as watches you brush the dildo's pointed tip across the bunny's clit before sinking it into her. The toy, while bigger than a normal man's cock, slides into the bunny girl's enlarged cunt with ease, clearly part of the reason why she's willing to part with it now. But she still squirms and moans, pushing her hips up needfully to try and get more of it into her.";
	say "     Once you set up a nice rhythm with working the toy into the bunny's juicy cunt, you start guiding Fang's muzzle down to your crotch. The wolf obediently slides his tongue over your [if cocks of player > 1 and player is female]throbbing cocks and wet folds[else if cocks of player is 1 and player is female]throbbing cock and wet folds[else if cocks of player > 1]throbbing cocks[else if cocks of player is 1]throbbing cock[else]wet folds[end if]. The wolf's long, slobbery tongue works you all over, attentively lavishing attention onto your groin in his effort to please his alpha. Soon you're moaning and writhing in nearly as much delight as the bunny girl next to you. The action becomes wild and fast, with the bunny crying out in ecstasy as she cums, soaking her crotch, the toy and your hand in her juices. Her sucking gets even more emphatic as well, setting the wolf to drain his balls down her throat. Getting to watch all of this while that tongue slides over your loins sets you off as well, cumming hard.";
	say "     After popping the canine toy's knot out of the bunny's cunt, you bring it to Fang's muzzle, telling him to lick his new toy clean. He does so avidly, working his tongue all over it to get the bunny's tasty juices. Sandra, having slid out from under the wolf, moves in to join him, sharing in a mix of licks on the toy and slobbery, lupine kisses with her beastly lover until it's all clean.";
	NPCSexAftermath Sandra receives "OralCock" from Fang;
	NPCSexAftermath Sandra receives "PussyDildoFuck" from Player;
	if player is female:
		NPCSexAftermath Fang receives "OralPussy" from Player;
	if player is male:
		NPCSexAftermath Fang receives "OralCock" from Player;

to say fangsandratoy3:
	say "     Moving in between the pair, you take Fang's new toy and scritch the wolf's ears. Bringing it to his muzzle, you tell him to start licking it because he'll be getting it soon. His ears dip a little but he obediently sets to work on it, slathering his tongue all over it to get it slick for some fun. From his obvious zeal, it appears that there's lingering traces of Sandra's juices still on it. Once you deem it ready, you place it under the wolf's tail and press the pointed tip of the red toy against his back passage. He pauses briefly in his thrusts into the eager bunny's muzzle and you can see her peaking out from under him to watch as you start easing it into your beta's backside.";
	say "     When you see Sandra latch her muzzle back onto the wolf's cock, you start pumping the canine dildo into the wolf's ass. This sets the wolf to resume thrusting into the bunny girl's muzzle, making her moan happily. Catching sight of her spread legs and the wet puss between them, you bring your free hand over to it and slide your fingertips across her folds. Sandra puts a paw at your crotch to return the favor, and when you sink a few fingers into her, you set her into even more avid sucking of Fang's meaty cock. The action becomes wild and fast, with the wolf flooding the rabbit's muzzle with his cum, then Sandra's orgasm causing her pussy to quiver around your pumping digits and you both cum in quick succession, soaking your crotches in feminine juices.";
	NPCSexAftermath Fang receives "AssDildoFuck" from Player;
	NPCSexAftermath Sandra receives "OralCock" from Fang;

to say fangsandracloser1:
	say "     After it's all over, you're left snuggling Sandra in your arms, playfully running your fingers over her body as Fang gives you each some slobbery licks to your sticky crotches. He tends to you both diligently, cleaning up his horny bunny lover and his alpha. Again, you tease Sandra about what a kinky bunny she is, coming out here to play with a wild beast, knowing how much that excites her. She blushes a little, but grins and nods. '[one of]He's just such a big, sexy animal,[or]I just can't help myself,[or]I just want him to ravage me so bad,[or]I can hardly wait to play with him again[or]It's so deliciously [']wrong['] that I can't help but give myself up to the sexy beast,[or]I'm his slutty rabbit prey,[in random order]' she says with an excited giggle. Fang nuzzles at her face, giving her a slobbery lick that turns into a kiss with the wolf's tongue in the bunny's muzzle[if thirst of player > 50]. As they kiss, you nuzzle at the bunny's ample bosom, nursing at her nipple for some refreshing milk to quench your thirst with a quick drink[end if]. After some more cuddling, you let her up so she can slip back into the bunker before anyone comes looking for her. 'Let me know when you'd like to do this again, sweety,' Sandra says softly to you, before running quickly back inside.";
	increase libido of fang by 1;
	if libido of fang is 8, now libido of fang is 6;
	now libido of player is libido of player / 4;
	if thirst of player > 50, decrease thirst of player by 10;
	wait for any key;


Section 5 - Fang Dominance

Chapter 1 - w/Sandra

to say fangsub:
	if player is impreg_able and hunger of Fang is 0:
		add "Fang's Mate" to feats of player;
		now hunger of Fang is 1;
	say "     With a moan, you lower yourself onto all fours, offering yourself to the wolf. He growls and climbs atop you, rubbing his stiff member against your rear, leaking precum onto you. Sandra grins happily and rubs her paw over the wolf's shaft, helping to guide it to your ";
	if player is female:
		say "wet cunt. She rubs a paw over your pussy's lips, spreading them open. 'I knew you couldn't resist him. He's just such a wild beast.' She lets his pointed glans slide over your wet folds, teasing you further. 'Beg to be his bitch. It'll feel so good to say it,' she moans, still caressing your spread folds. You nod and cry out for Fang to take you, to use you like his bitch. Fang growls and pounds his hips forward, pulling it from Sandra's grip and driving it hard and fast into your cunt. As he does, he growls one word softly in your ear. 'Mine!'";
		WaitLineBreak;
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon. The large wolf growls and nips at your neck. Sandra, not content to merely watch, rubs the wolf's ballsack against your leaking pussy as if to show you what's in store for you. But you don't need the reminder, your eager body longing more and more for the feral wolf's hot seed inside you so he can claim you. The bunny girl leans in, licking at the wolf's knot and your stretched folds as Fang tries to tie with you. With a paw between her legs[if player is male] and the other on your throbbing shaft[end if], she moans about how sexy you both look right now.";
		WaitLineBreak;
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch. He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your womb with his strong, dominant seed. You cum again from the pleasure of giving yourself over to him and receiving his cum. It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		NPCSexAftermath Player receives "PussyFuck" from Fang;
		WaitLineBreak;
		say "     Sandra, having cum as well a few times while fingering herself, continues licking, cleaning away the little cum that's escaped around his knot. 'Doesn't that feel so good? Having given yourself over to the sexy beast?' she says, rubbing your stuffed tummy. You can only nod, too overcome in pleasure to speak. Fang seems to grin and licks your cheek. You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much. When the knot softens and pops free, the bunny girl eagerly laps up the overflowing semen as Fang moves his penis over you, cocking one leg. Shall you let him mark you (Y=WS) or just lick him clean (N=No Way)?";
	else:
		say "tight asshole. She rubs a paw over your puckered hole, spreading her pussy juices onto it. 'I knew you couldn't resist him. He's just such a wild beast.' She lets his pointed glans slide across your anus, slathering it with his precum as well to prepare you further. 'Beg to be his bitch. It'll feel so good to say it,' she moans, fingering your hole and spreading the slick juices inside. You nod and cry out for Fang to take you, to use you like his bitch. Fang growls and pounds his hips forward, pulling it from Sandra's grip and driving it hard and fast into your rear. As he does, he growls one word softly in your ear. 'Mine!'";
		WaitLineBreak;
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon. The large wolf growls and nips at your neck. Sandra, not content to merely watch, rubs the wolf's ballsack against your ass as if to show you what's in store for you. But you don't need the reminder, your eager body longing more and more for the feral wolf's hot seed inside you so he can claim you. The bunny girl leans in, licking at the wolf's knot and your stretched pucker as Fang tries to tie with you. With a paw between her legs and the other on your throbbing shaft, she moans about how sexy you both look right now.";
		WaitLineBreak;
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch. He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your bowels with his strong, dominant seed. You cum again from the pleasure of giving yourself over to him and receiving his cum. It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		NPCSexAftermath Player receives "AssFuck" from Fang;
		WaitLineBreak;
		say "     Sandra, having cum as well a few times while fingering herself, continues licking, cleaning away the little cum that's escaped around his knot. 'Doesn't that feel so good? Having given yourself over to the sexy beast?' she says, rubbing your stuffed tummy. You can only nod, too overcome in pleasure to speak. Fang seems to grin and licks your cheek. You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much. When the knot softens and pops free, the bunny girl eagerly laps up the overflowing semen as Fang moves his penis over you, cocking one leg. Shall you let him mark you (Y=WS) or lick him clean (N=No Way)?";
	if player consents:		[WS with Fang]
		now FangWS is 1; [WS content opened]
		say "     Seeing what's about to happen, Sandra gives you a last lick before moving back to watch as Fang's cock twitches, then unleashes a yellow stream of urine onto your chest. You moan submissively as the wolf's strong scent fills your nose and washes over you. 'Oh, that is so nasty,' the bunny girl says, all while fingering herself frantically. Her other paw reaches over to grab Fang's penis, guiding it to spray down your body and over your groin, then back up towards your face. As she's spraying your face, she tells you to open wide for your master, which you do obediently. The wolf's piss is strong and acrid, but tastes deliciously of your new alpha as well, so it pleases you do drink it down for him.";
		say "     Once Fang's bladder is drained over and into you, Sandra suggests you suck the last of it from his cock, which you also do. He rumbles in pleasure at your obedient acceptance of his mark, releasing some last few dribbles down your throat. You lick his spent shaft clean and release it only to get a passionate kiss from the bunny girl with her tongue diving into your mouth. She makes a bit of a face at the strong taste, but still grins. 'When I met you, I knew you'd be fun, but I didn't expect you to be such a kinky slut,' she says with a grin, grabbing her stuff and heading back into the bunker.";
	else:				[No WS with Fang]
		now FangWS is 2; [WS content blocked]
		say "     Not pleased at the prospect of being marked by the wolf, you lean forward and take his cock into your mouth, licking and sucking lustfully to get him aroused enough to focus on his need to cum again. Rubbing a hand over the bunny girl's ears, you moan softly around your mouthful of wolf cock as she keeps licking up the cum leaking from you. You work your mouth over the wolf's hard rod until he blasts another thick load, this time down your throat. You lick his spent shaft clean and release it only to get a passionate kiss from the bunny girl with her tongue diving into your mouth. After breaking the kiss, she smiles, enjoying the lingering flavor of wolf cum as she grabs her stuff and heads back into the bunker.";
	wait for any key;

to say fangdomfuck:
	say "     Deciding the wolf needs a good lesson to remind him that his place is beneath you, you keep him pinned down and climb atop him. He whimpers softly, but raises his tail as you slide your hard cock under it. He squirms a little, so you grip his neck harder and drive your shaft into his tailhole, spreading it open. Sandra, watching the surprise dominance fight, moans in pleasure as she watches you fuck the big wolf, fingering her pussy wildly.";
	WaitLineBreak;
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you pound away at him. 'You get fucked when I say you do. You top when I say you do. And if you forget that again, I'll go out there and find a strap-on for Sandra and we'll take turns pounding you until you're nothing but a slutty omega bitch,' you snarl, giving Sandra a wink and a grin that Fang can't see. Sandra smiles and replies, 'That sounds really hot, too.' The bunny girl, finding that mental image enjoyable, fingers herself all the faster. Fang, meanwhile, whimpers submissively and starts pushing into your thrusts, accepting his place beneath you with a soft rumble of 'You are alpha.' You relax your grip of him, but keep pounding him hard and fast, until finally you cum hard, blasting your load into his bowels and the wolf cums hard in response, staining the floor with another puddle of sticky cum.";
	WaitLineBreak;
	say "     Pleased with his submission to you again, you scritch his ears and ease your cock from his ass. He pads around and nuzzles you both, giving you affectionate licks on the cheek before dipping his head and licking your cock clean while you rub his ears. As he's cleaning up Sandra, you kiss the bunny and play with her bosom[if thirst of player > 50]. You wrap your lips around one of her perky nipples and take a quick drink of her milk while she moans in delight at the attention, saying again how sexy it was to see you do that[end if]. When Fang's got her cleaned up, you let her slip back into the bunker while you tie Fang back by the door.";
	NPCSexAftermath Fang receives "AssFuck" from Player;

to say fangdomride:
	if player is impreg_able and hunger of Fang is 0:
		add "Fang's Mate" to feats of player;
		now hunger of Fang is 1;
	say "     Deciding the wolf needs to be shown who's in charge, you push him roughly over onto his back. His feral legs squirm in the air as you hold him there and climb atop him, keeping a grip on his balls to rein him in while the other grips his throat. You grind your pussy down over his cock, teasing his throbbing shaft and leaking your juices over it, but you keep him from thrusting into you. Sandra, watching the surprise dominance fight, moans in pleasure as she watches rubbing against the big wolf's cock, fingering her pussy wildly.";
	WaitLineBreak;
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you slide your aroused pussy across this throbbing penis. 'You get fucked when I say you do. You top when I say you do. And if you forget that again, I'll go out there and find a strap-on for Sandra and we'll take turns pounding you until you're nothing but a slutty omega bitch,' you snarl, giving Sandra a wink and a grin that Fang can't see. Sandra smiles and replies, 'That sounds really hot, too.' The bunny girl, finding that mental image enjoyable, fingers herself all the faster. Fang, meanwhile, whimpers submissively and tilts his head back, baring his throat to you, accepting him place beneath you with a soft rumble of 'You are alpha.' You shift your position and slide slowly down his cock, your cunt quivering in delight after having the thick wolf cock so tantalizingly close.";
	WaitLineBreak;
	say "     You ride him hard and fast, needing this almost as much as he does after all that teasing. His hard shaft throbs inside you, leaking precum into your hot pussy. You knead the wolf's ballsack and push yourself down hard onto his knot, pushing it into you. 'These are mine,' you growl as you fondle his balls. 'And I'm going to take what I want from them when I want,' you rumble, clamping your pussy down firmly around his knot, enjoying his lustful howl as he blasts his thick semen into you, filling your womb with his load. Sandra, fingering herself frantically during all this, cumming repeatedly. Panting for breath, you nibble along the wolf's throat while waiting for his knot to go down.[impregchance]";
	NPCSexAftermath Player receives "PussyFuck" from Fang;
	WaitLineBreak;
	say "     Pleased with his submission to you again, you scritch his ears and ease yourself off his spent shaft. He pads around and nuzzles you both, giving you affectionate licks on the cheek before dipping his head and licking your leaking pussy clean while you rub his ears. As he's cleaning up Sandra, you kiss the bunny and play with her bosom[if thirst of player > 50]. You wrap your lips around one of her perky nipples and take a quick drink of her milk while she moans in delight at the attention, saying again how sexy it was to see you do that[end if]. When Fang's got her cleaned up, you let her slip back into the bunker while you tie Fang back by the door.";

to say fangalphasex:
	if the remainder after dividing lust of Fang by 3 is 0:
		say "[fangalphaoral]";
	else if the remainder after dividing lust of Fang by 3 is 1:
		say "[fangalphafucked]";
	else if the remainder after dividing lust of Fang by 3 is 2:
		say "[fangalphatrio]";
	increase lust of fang by 1;

to say fangalphatrio:
	say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath. He rumbles softly and bumps you away with his head, then nips at your rear, sending you off towards the bunker while he strides over the side room. Recalling that it has been some time since Sandra joined you both, you conclude that must be what your alpha desires. You poke your head in the bunker long enough to call the bunny girl over[if ( number of booked people + number of bunkered people ) > 3]. The others smile, having picked up on what's going on, but saying nothing as she heads out to join you[else]. The bunny girl exits the bunker to come join you[end if]. Once in the side room, the bunny girl grins playfully and rushes over to hug the big wolf around the neck. You slip off your pack and clothes, smiling to see that Sandra's already got her paw at the wolf's hard cock. Clearly she's been looking forward to this as much as the big wolf has.";
	WaitLineBreak;
	if the remainder after dividing libido of Fang by 3 is 2:
		say "     After playing with the wolf's cock for a bit, she takes a seat in one of the chairs with her legs apart. Showing off her large snatch, the bunny girl holds her wet folds open, offering herself to the wolf's long tongue. 'Come on, you big beast, eat the poor bunny up!' Needing no further invitation, the feral wolf's muzzle is nosing at her dripping cunt right away. You move to Fang's side, stroking his back and taking over tending to his cock while you watch the show. After a few playful sniffs and teasing brushes of his tongue-tip, he dives right in, slathering his long tongue all over it. Soon the licking over those ample folds turn into dives inside her vagina to lap up her juices, exciting the bunny further. 'Oh yes! Nice and deep, you animal!' she moans and cries out lustfully, gripping the arms of the chair tightly to steady herself.";
		WaitLineBreak;
		say "     As you watch the strong wolf eating out his bunny prey, you sit there playing with yourself. As if noticing your inattentiveness, Fang pauses in his licking to growl at you, cocking his leg to show his throbbing meat. Needing no further instructions from your alpha, you lower yourself under the wolf. You run your tongue slowly over his engorged, red cock and are rewarded with a spurt of pre across your face. Clearly quite excited from the bunny's juices, you enjoy the rumble of pleasure he releases as you slide your mouth down over his pointed glans. You let your lips slide slowly down his throbbing member, savoring his strong, virile taste. You can hear Sandra's cries growing more excited as she cums loudly and you bring one hand between your legs to [if player is male]stroke[else]finger[end if] yourself quickly. Kneading the wolf's oversized balls with your free hand, you take his full length in and almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat. You moan wetly around his spurting meat, orgasming as you [if player is male]pump at your hard rod[else]rub at your clit[end if] while sucking on your alpha's maleness. Sliding off his spent shaft, you lick your lips for the overflowing cum and rub your belly, enjoying the warmth of your master's semen inside it.";
		NPCSexAftermath Player receives "OralCock" from Fang;
		NPCSexAftermath Fang receives "OralPussy" from Sandra;
	else if the remainder after dividing libido of Fang by 3 is 0:
		say "     Spreading the wolf's pre across his cock, she gets it nice and glistening before moving onto all fours and raising her rump to him. 'Come on, you big beast,' she moans quietly. 'Take this poor bunny girl and faaahhh!' Her request turns into a loud, lustful moan as Fang mounts her mid-sentence, sinking his oversized cock into her wanton pussy. You pat the wolf's back and rub his heavy balls against the bunny's pussy as he thrusts into her again and again, as if to show her what's coming. 'Mmm... yes,' the usually quiet bunny girl cries out as the wolf keeps pounding into her like a wild animal, 'Fuck me hard, you sexy creature. Ravage your bunny prey... mmm...'";
		WaitLineBreak;
		say "     You slip your fingers to the bunny's wet folds, caressing them as your alpha's cock slides in and out. Now that they're going at it rather strong, it's best you join this threesome as well. Still stroking the bunny's snatch, you lean down and nuzzle under the wolf's bloated balls. Close up, you can see the bunny's cunt gripping and pulling at the wolf's cock each time he withdraws, her body not wanting to release it. You press your face in there, licking and kissing at that slick, juicy flesh. You run your tongue over them both, then move in to focusing on the bunny's swollen clit, licking and sucking it hard as the wolf's knot tries to push into her. After several hard pushes, it pops in and Sandra cries out in delight. 'Oh yes,' she cries, 'Gimme that knot, you wild wolf!' You can feel Fang's balls tense up and see his cock swell a little further as his hot load gushes into the horny bunny he's tied with so he can fill her with his semen. As you're licking at them, lapping up the escaping overflow of jizz, you imagine the bunny girl stuffed with your alpha's cum or even better, growing cubs inside her[if player is male], and it become too much for you to hold back longer and soon enough you're emptying your balls onto the floor as you pump your cock hard[else if player is female], and it become too much for you to hold back longer and soon enough you're cumming hard with several fingers buried in your own snatch[else] and can't help but smile a little[end if].";
		NPCSexAftermath Sandra receives "PussyFuck" from Fang;
		NPCSexAftermath Player receives "OralPussy" from Sandra;
		NPCSexAftermath Player receives "OralCock" from Fang;
	else if the remainder after dividing libido of Fang by 3 is 1:
		if player is impreg_able and hunger of Fang is 0:
			add "Fang's Mate" to feats of player;
			now hunger of Fang is 1;
		say "     After letting Sandra stroke his cock for a bit, spreading his precum across that red shaft, Fang pads over to you and nudges you over onto all fours. Clearly Fang, having played with the bunny the last few times, wants to have his way with you again while the bunny watches. You moan softly in anticipation and strip yourself as you move into position for your lupine master. He growls and climbs atop you, rubbing his large, stiff member against your rear, leaking precum onto you. Sandra grins happily and rubs her paw over the wolf's shaft, helping to guide it to your [if player is female]wet cunt. She rubs a paw over your pussy's lips, spreading them open[else]tight asshole. She rubs a paw over your puckered hole, spreading her pussy juices onto it before spreading your cheeks[end if] as Fang sinks into you. 'Mmm... that's a good bitch,' she moans, stroking your stuffed tummy. 'Let that big wolf fuck you like an animal.' The wolf grips his front paws around you and pounds away at you hard and fast, making your stretched hole squeeze tightly around him. 'My bitch,' Fang rumbles softly in your ear, which sends a shiver of delight down your spine.";
		WaitLineBreak;
		say "     You moan lustfully as the wolf ravages you like the beast he is, taking you with wild abandon. The large wolf growls and nips at your neck. Sandra, not content to merely watch, rubs the wolf's oversized ballsack against your [if player is female]leaking pussy[else]ass[end if] while your eager body longs more and more for the hot, virile seed of your alpha held within those full orbs. The bunny girl leans in, licking at the wolf's knot and your stretched [if player is female]folds[else]pucker[end if] as Fang tries to tie with you. With a paw between her legs[if player is male] and the other on your throbbing shaft[end if], she moans louder and louder. 'You look so hot with a wolf cock stuffed inside you. You're just a horny slut like me, aren't you? Letting this big, feral wolf fuck you like his bitch.'";
		WaitLineBreak;
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch. The wolf's cock and knot, much larger now than when you'd first met him, stretches your [if player is female]cunt[else]hole[end if] wide and stuffs you full. He growls and takes the nape of your neck in his teeth as he pounds his knotted cock in short, fast thrusts. His hot load blasts deep inside you, flooding your [if player is female]womb[else]bowels[end if] with his strong, dominant semen. You cum again from the pleasure of submitting to your alpha again and receiving his seed. Sandra, having cum several times while watching the show, continues licking at that embedded knot, leaking away the little cum that's escaped around it. Most of it thankfully remains locked inside you, filling your belly with the warmth of your master's cum.[impregchance]";
		if player is female:
			NPCSexAftermath Player receives "PussyFuck" from Fang;
		else:
			NPCSexAftermath Player receives "AssFuck" from Fang;
	WaitLineBreak;
	say "     After it's all over, Fang steps back from his two playmates and rolls onto his side, putting his slick, hard cock on display for you both. Still sticky with his cum after the recent fun, you and Sandra lick your lips at the sight of it and move in to lavish attention upon it. Together, you stroke and caress his balls and knot as your tongue play over his throbbing member. You lick the lupine cum from every square centimeter of it, not wanting to let that strong, virile tasting fluid go to waste. As you finish up with licking it, you and the bunny girl take turns sucking on it while rubbing those throbbing orbs. ";
	if the remainder after dividing libido of Fang by 3 is 2:
		say "Having already guzzled down a big load of the wolf's cum, you let Sandra finish him off, filling her belly as well with Fang's virile seed as he howls in pleasure.";
	else if a random chance of 1 in 2 succeeds:
		say "You and Sandra playfully fight over the wolf's cock, pulling out all the stops while his rod is in your mouth to be the one to get his seed. In the end, you're rewarded with hot pulses of lupine seed down your throat, filling your belly with your alpha's delicious, virile cum as he howls in pleasure.";
	else:
		say "You and Sandra playfully fight over the wolf's cock, pulling out all the stops while his rod is in your mouth to be the one to get his seed. In the end, she's the winner, sucking down his hot load and filling her belly with it as Fang howls in pleasure.";
	WaitLineBreak;
	say "     You cuddle with Sandra in your arms, playfully talking about how much you both enjoy letting the big wolf have his way with you and how sexy it is to see one of you under the wild beast. While you talk, you both stroke the wolf's thick fur and kiss one another, enjoying your time together. Eventually, Sandra has to head back and you need to get back to your other tasks, so you both are given slobbery kisses from Fang before heading out of the reading room.";
	increase libido of fang by 1;
	if libido of fang is 8, now libido of fang is 5;
	now libido of player is libido of player / 4;
	wait for any key;

Chapter 2 - w/o Sandra	[Only available if 'girl' is banned, removing Sandra from the game]

instead of going up from Bunker while ( lastfuck of Fang - turns >= 24 and HP of Fang is 1 and girl is banned) and player is not neuter:	[ignored for 3+ days]
	now lastfuck of Fang is turns;
	project the Figure of Fang_face_icon;
	say "     After stepping from the bunker and closing the heavy door, you are pounced upon by something. As you start to struggle, you are surprised to find that it's Fang atop you. From his growls and the hard cock rubbing against you, you surmise that the wolf's not playing around. It's been some time since you've given the beast some attention and it looks like he's intent on satisfying his lusts with you whether you like it or not. As his throbbing shaft grinds against you while he tries to get a better grip on you, the scent from the powerful beast is quite enticing. It could be fun to just give in and let the big wolf have his way with you.";
	say "     [bold type]Shall you let him or reassert your dominance?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let him.";
	say "     ([link]N[as]n[end link]) - Reassert your dominance.";
	if player consents:
		say "[fangsub2]";
		now HP of Fang is 4; [Alpha Fang w/o Sandra]
		now XP of Alexandra is 0;
		now vmusedone of Fang is false; [Open for fresh musings]
		now libido of player is libido of player / 2;
		infect "Feral Wolf";
	else:
		say "     Momentarily tempted by idea of submitting to the wolf, you manage to shake it off and grab the wolf roughly by the neck. 'No Fang, I'm the alpha and that's the way it stays,' you growl, forcing him to the floor. He growls a little in frustration, but you hold him firm. 'Don't you get uppity because I made you wait. I'm still the one on top here,' you add grabbing his balls firmly, making him whine and dip his ears. 'I have more important things to deal with than you. Just because you're guarding the place doesn't mean you're in charge, beta.'";
		if player is herm:
			say "     It seems Fang will need a reminder of his place beneath you. Being both male and female, there are options open to you. Would you prefer to fuck the wolf (Y) or ride his lupine cock (N)?";
			if player consents:
				say "[fangdomfuck2]";
			else:
				say "[fangdomride2]";
		else if player is male:
			say "[fangdomfuck2]";
		else:
			say "[fangdomride2]";
		now HP of Fang is 2; [Fang locked into beta-mode]
		now libido of player is libido of player / 4;

to say fangsub2:
	if player is impreg_able and hunger of Fang is 0:
		add "Fang's Mate" to feats of player;
		now hunger of Fang is 1;
	say "     With a moan, you lower yourself onto all fours, offering yourself to the wolf. He growls and climbs atop you, rubbing his stiff member against your rear, leaking precum onto you. You, with the help of the aggressive wolf's teeth, quickly pull off your pack and clothes so his throbbing cock can bump against your ";
	if player is female:
		say "wet cunt. Fang's sharp fangs nip at your shoulders as he drives himself hard and fast into your pussy. As he does, he growls one word softly in your ear. 'Mine!'";
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon. The large wolf growls possessively and nips at your neck. You can feel his heavy balls slapping against your clit and your eager body longs more and more for the feral wolf's hot seed inside you. You grow increasingly aroused by the idea of letting this wolf claim you, simply submitting yourself to being his. You can feel his swelling knot pressing at your stretched folds as Fang tries to tie with you.";
		WaitLineBreak;
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him to make you his bitch. He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your womb with his strong, dominant seed. You cum again from the pleasure of giving yourself over to him and receiving his cum. It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		NPCSexAftermath Player receives "PussyFuck" from Fang;
		say "     The wild wolf fills you with so much cum that it starts to overflow, some managing to escape around his knot to flow down your thighs. It feels so good, having given yourself up to the sexy beast. Fang seems to grin and licks your cheek. You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much. When the knot softens and pops free, the wolf has you roll onto your back. He eagerly laps up the overflowing semen and moves his slick, dripping penis over you with one leg cocked.";
	else:
		say "tight asshole. Fang's sharp fangs nip at your shoulders as he drives himself hard and fast into your rear. As he does, he growls one word softly in your ear. 'Mine!'";
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon. The large wolf growls possessively and nips at your neck. You can feel his heavy balls slapping against yours and your eager body longs more and more for the feral wolf's hot seed inside you. You grow increasingly aroused by the idea of letting this wolf claim you, simply submitting yourself to being his. You can feel his swelling knot pressing at your stretched pucker as Fang tries to tie with you.";
		WaitLineBreak;
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him to make you his bitch. He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your bowels with his strong, dominant seed. You cum again from the pleasure of giving yourself over to him and receiving his cum. It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		NPCSexAftermath Player receives "AssFuck" from Fang;
		say "     The wild wolf fills you with so much cum that it starts to overflow, some managing to escape around his knot to flow over your balls and down your thighs. It feels so good, having given yourself up to the sexy beast. Fang seems to grin and licks your cheek. You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much. When the knot softens and pops free, the wolf has you roll onto your back, then cocks his leg and points his dripping cock towards you.";
	say "     [bold type]Shall you let him mark you or will you lick him clean instead?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get marked (WS).";
	say "     ([link]N[as]n[end link]) - Lick him clean.";
	if player consents:		[WS with Fang]
		now FangWS is 1; [WS content opened]
		say "     You stretch yourself out beneath the wolf, watching as Fang's cock twitches, then unleashes a yellow stream of urine onto your chest. You moan submissively as the wolf's strong scent fills your nose and washes over you. The warmth of the fresh piss flowing over you is strangely exciting and you are pleased as he sprays down your body and over your groin, then back up towards your face. As he's spraying your face, you close your eyes and open wide for your master. The wolf's piss is strong and acrid, but tastes deliciously of your new alpha as well, so it pleases you do drink it down for him. Once Fang's bladder is drained over and into you, he bumps his spent shaft against your lips, getting you to take it into your mouth. He rumbles in pleasure at your obedient acceptance of his mark, releasing some last few dribbles down your throat. You lick his spent shaft clean then stretch out in the wet puddle, soaking in the scent of your new alpha as he pads off to return to his post.";
	else:				[No WS with Fang]
		now FangWS is 2; [WS content blocked]
		say "     Not pleased at the prospect of being marked by the wolf, you lean forward and take his cock into your mouth, licking and sucking lustfully to get him aroused enough to focus on his need to cum again. As you do this, he bring his muzzle to your groin and clears away the excess cum, letting the rest linger inside you as a reminder that you're his now. But you lavish attention on his lupine penis, cleaning away the semen and juices covering it and sucking him until he blows another load down your throat. Sated, for now, the wolf leaves you there on the floor, stuffed wonderfully full of his seed and covered in your new alpha's scent.";
		NPCSexAftermath Player receives "OralCock" from Fang;
	wait for any key;


to say fangdomfuck2:
	say "     Deciding the wolf needs a good lesson to remind him that his place is beneath you, you keep him pinned down and climb atop him. He whimpers softly, but raises his tail as you slide your hard cock under it. He squirms a little, so you grip his neck harder and drive your shaft into his tailhole, spreading it open. With him properly pinned and stuffed, you fuck the big wolf hard and fast.";
	WaitLineBreak;
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you pound away at him. 'You get fucked when I say you do. You top when I say you do. And if you forget that again, I'll go out there and find the tightest cock ring I can and I won't even let you cum unless I- say- so-!' you snarl, punctuating those final words with hard thrusts of your cock into him. 'I'll make you my slutty, omega bitch and then leave you with blue balls for weeks on end.' Fang whimpers submissively and starts pushing into your thrusts, accepting him place beneath you with a soft rumble of 'You are alpha.' You relax your grip of him, but keep pounding him hard and fast, until finally you cum hard, blasting your load into his bowels and the wolf cums hard in response, staining the floor with another puddle of sticky cum.";
	WaitLineBreak;
	say "     Pleased with his submission to you again, you scritch his ears and ease your cock from his ass. He pads around and nuzzles you, giving you affectionate licks on the cheek before dipping his head and licking your cock [if player is female]and cunt[end if] clean while you rub his ears. Deciding to have a little more fun, you grab the wolf's head and drive your shaft into his fanged muzzle, ordering him to suck you off. The wolf dips his ears and whines softly, finding the task difficult with his lupine muzzle, but does his best for his alpha. He is soon rewarded with a messy blast of your hot semen down his throat, which he laps up and swallows down obediently. Satisfied, you scritch his ears and let him resume his post.";
	NPCSexAftermath Fang receives "AssFuck" from Player;

to say fangdomride2:
	if player is impreg_able and hunger of Fang is 0:
		add "Fang's Mate" to feats of player;
		now hunger of Fang is 1;
	say "     Deciding the wolf needs to be shown who's in charge, you push him roughly over onto his back. His feral legs squirm in the air as you hold him there and climb atop him, keeping a grip on his balls to rein him in while the other grips his throat. You grind your pussy down over his cock, teasing his throbbing shaft and leaking your juices over it, but you keep him from thrusting into you. With him properly pinned, you grind down onto him, further taunting the aroused wolf.";
	WaitLineBreak;
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you slide your aroused pussy across this throbbing penis. 'You get fucked when I say you do. You top when I say you do. And if you forget that again, I'll go out there and find tightest cock ring I can and I won't even let you cum unless I- say- so-!' you snarl, slapping your dripping pussy against the wolf's swollen balls to emphasize those final words. 'I'll make you my slutty, omega bitch and then leave you with blue balls for weeks on end.' Fang whimpers submissively and tilts his head back, baring his throat to you, accepting his place beneath you with a soft rumble of 'You are alpha.' You shift your position and slide slowly down his cock, your cunt quivering in delight after having the thick wolf cock so tantalizingly close.";
	WaitLineBreak;
	say "     You ride him hard and fast, needing this almost as much as he does after all that teasing. His hard shaft throbs inside you, leaking precum into your hot pussy. You knead the wolf's ballsack and push yourself down hard onto his knot, pushing it into you. 'These are mine,' you growl as you fondle his balls. 'And I'm going to take what I want from them when I want,' you rumble, clamping your pussy down firmly around his knot, enjoying his lustful howl as he blasts his thick semen into you, filling your womb with his load. Panting for breath, you nibble along the wolf's throat while waiting for his knot to go down.[impregchance]";
	NPCSexAftermath Player receives "PussyFuck" from Fang;
	WaitLineBreak;
	say "     Pleased with his submission to you again, you scritch his ears and ease yourself off his spent shaft. He pads around and nuzzles you, giving you affectionate licks on the cheek before dipping his head and licking your leaking pussy clean while you rub his ears. Deciding to have a little more fun, you grab the wolf's head and press his muzzle to your cunt, ordering him to lick it all up. The wolf dips his ears obediently and sets his tongue to work, diving it into your hot, sticky muff. His long, lupine tongue feels wonderful inside you and soon you're cumming again as he licks up as much of the load he filled you with as he can get. Satisfied, you scritch his ears and let him resume his post.";

to say fangalphasex2:
	if lust of Fang is even:
		say "[fangalphaoral]";
	else:
		say "[fangalphafucked]";
	increase lust of fang by 1;


Chapter 3 - Alpha Sex

to say fangalphaoral:
	say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath. He rumbles softly and rolls onto his side, pressing your face to his maleness as his red cock starts to slide from his furred sheath. You moan softly as his strong scent floods your nose and you start licking at his swelling shaft, letting it slide directly from its furry home into your mouth. Your tongue plays over it as the big wolf presses his paws at your back urging you to suck your alpha harder and you eagerly do so. You tease yourself with one hand and move the other to his hefty balls, stroking and kneading them, eager for their virile seed. He rocks his hips, thrusting into your mouth and down your throat until he finally cums with a howl, almost choking you with a flood of thick, rich wolf cum. The taste of your alpha's semen fills your senses and you moan wetly around the spurting shaft, cumming hard as you [if player is male]stroke yourself off[else]finger your pussy wildly[end if]. His orgasm done and his balls drained into his slutty beta, he gets up and pads off, leaving you on the floor with a tummy full of wolf cum and reeking of his scent.";
	increase libido of player by 15;
	decrease humanity of player by 3;
	NPCSexAftermath Player receives "OralCock" from Fang;

to say fangalphafucked:
	if bodyname of player is "Skunkbeast Lord" and the player is pure:
		say "[fangalphafuckedSBL]";
	else:
		if player is impreg_able and hunger of Fang is 0:
			add "Fang's Mate" to feats of player;
			now hunger of Fang is 1;
		say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath. He rumbles softly and nudges you to move onto all fours. You moan softly in anticipation and strip off your clothes and pack. Once in position, the wolf comes up behind you and sniffs at you [if player is female]pussy and [end if]rear, as if checking what his slutty pet's been up to out in the city. He [one of]growls and nips at your thigh[or]slides his tongue across your [if player is female]wet folds and [end if]between your cheeks[or][if player is female]dives his cock into your pussy to lap at your juices[else]slathers his tongue over your waiting pucker[end if][at random] before climbing atop you. The pointed tip of his enlarged shaft bumps against you once before finding your eager hole and sinking into you, making you both growl lustfully.";
		WaitLineBreak;
		say "     He pounds into you hard and fast while your needy [if player is female]cunt[else]hole[end if] grips and squeezes around that feral wolf cock. You moan about how strong your big alpha is, how virile, how you are his bitch to use. Clearly pleased by your words, he licks at your cheek before taking the nape of your neck in his teeth and fucking you even harder, slamming his swollen knot against your sore [if player is female]pussy[else]anus[end if] until it stretches open enough to let that oversized knot pop in and tie with you. Fang howls triumphantly when this happens, unleashing a hot rush of semen into you, filling your [if player is female]womb[else]tummy[end if] with his ample load as he drains his large, virile balls into you. You writhe beneath him in ecstasy, cumming hard as well from taking your master's seed. When his knot goes down, he pops his cock from you, letting his excess semen flow out to soak your crotch, leaving the scent of it upon you to be a reminder to you and others that you belong to him now.[impregchance]";
		now libido of player is ( ( libido of player * 4 ) / 5 );
		decrease humanity of player by 3;
		if player is female:
			NPCSexAftermath Player receives "PussyFuck" from Fang;
		else:
			NPCSexAftermath Player receives "AssFuck" from Fang;
		say "[fangwscontent]";

to say fangalphafuckedSBL:
	say "     You snuggle up to your big alpha wolf and nuzzle under him, your dark nose twitching as it catches the scent of his aroused manhood. Finding that hard wolfcock, you start by licking all over it before taking it into your muzzle. You suck on his leaking cock and lap up his precum until the dominant would gives a firm growl. Knowing what's wanted of you, you slip off your gear and raise your big, fluffy tail. The virile wolf mounts your [if skrp is 0]bestial form and gives your shoulder a nip[else]tauric form and gives your side a nip, causing the skunk head at the base of your torso to moan[end if]. After a few thrusts that spread his precum across your furry behind, he gets lined up and pushes that lupine cock into your [if player is female][cunt size desc of player] pussy[else]black ring[end if].";
	say "     The feral wolf fucks you with considerable zeal, enjoying dominating the master of the forest skunks. The thought of the skunk girls seeing you like this, submissive plaything to one of their territorial rivals makes you blush beneath your fur[if skrp is 1]. Your mephit co-inhabitor teases you about it between her lustful moans[end if]. The wolf's lupine rod drives into you again and again as he continues to nip and play-bite you, reinforcing his dominance. Your [if player is female]juicy cunt[else]tight hole[end if] grips and squeezes around that lupine cock every time it's pushed into you. Your virile alpha slams his swollen knot against your sore [if player is female]pussy[else]anus[end if] until it stretches open enough to let that oversized knot pop in and tie with you. Fang howls triumphantly when this happens, unleashing a hot rush of semen into you, filling your [if player is female]womb[else]tummy[end if] with his ample load as he drains his large, plump balls into you. You [if skrp is 1]and your lower skunk head [end if]release a chirring moan as you feel your lupine master filling you with his gooey seed.";
	say "     When his knot goes down, he pops his cock from you only to drive it back into you and start fucking you again. He ends up taking you several times, relishing asserting his dominance over you. By the time he's finally done, your [if player is female]womb is completely stuffed[else]belly is heavy[end if] with his lupine cum[if player is male] and you've drained your own balls uselessly across the floor beneath you[else if player is female] and your crotchfur is soaked and sticky with his semen and your female juices[end if]. When he does dismount, you can barely stagger a few steps before collapsing onto your side to recover. You release a sated moan while his excess semen flows out of your stretched and gaping hole. Its scent lingers upon you for some time, overpowering even that of your mighty skunkbeast form.";
	now libido of player is ( ( libido of player * 2 ) / 3 );
	decrease humanity of player by 5;
	if player is female:
		NPCSexAftermath Player receives "PussyFuck" from Fang;
	else:
		NPCSexAftermath Player receives "AssFuck" from Fang;
	infect "Feral Wolf";

to say fangwscontent:
	if FangWS is 0:
		say "     As Fang pads off, you notice his cock still stiff and leaking between his legs as he pads towards the door to slip outside. Surmising that he must be slipping out to mark his territory around the outside of the library, an idea pops into your head to have the wolf mark something else that belongs to him.";
		say "     [bold type]Shall you tempt the wolf to come back and claim you again?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes (WS).";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			now FangWS is 1;
			say "     You stretch out on your back and whine softly to the wolf. You rub your hands over your body, putting yourself on display for him. Getting the picture, the wolf seems to grin and pads back to you and, standing beside you, cocks one leg. His stiff, red cock twitches before spraying out his acrid urine, soaking your body and face, marking you as his territory. You moan as the hot fluid flows over you, even catching some on your tongue as you wallow in your submission to the beast. Once he's done marking you, he pads off, leaving you soaked and reeking of the wolf's strong scent.";
			decrease humanity of player by 10;
			increase libido of player by 10;
		else:
			now FangWS is 2;
			say "     You manage to resist the impulse, a little surprised at how low you've allowed yourself to sink, yet somehow not feeling any regrets about it. You are quite happy with your place beneath the sexy wolf, especially so right now as you have a nice, warm load of wolf spunk filling you.";
	else if FangWS is 1 and a random chance of 2 in 5 succeeds:
		say "     Fang looks back at you as he's padding off and returns to your side. Cocking his leg up, you see his cock aimed at you and twitching. Knowing what's coming, you ";
		if a random chance of 1 in 2 succeeds:
			say "lean forward and take his cock in your mouth, licking and sucking the remaining cum from it. Moments later the delicious flavor of wolf spunk is washed away by the strong taste of his urine flowing into your mouth. You gulp it down eagerly, happily submitting yourself to the wolf's needs. Despite the acrid sting, you find the harsh liquid quite pleasing, its flavor rich with your alpha's scent. Once he's almost drained his bladder, he pulls his cock back, letting the last of it spray across your chest, once again marking you as his territory.";
		else:
			say "stretch out, moaning softly in anticipation. Moments later, you're rewarded by the hot spray of the wolf's urine over your [bodytype of player] body as the large wolf rumbles a firm 'Mine' as he marks you. It is strong and acrid, but rich with his scent. You run your hands over yourself, spreading the hot fluid as it splashes onto your chest and then over your face. You open your mouth, catching a sample on your tongue. After sending the last few spurts over your groin, Fang leaves you like that, thoroughly soaked in his piss, reeking of his strong scent, and quite pleased to have been claimed as his once more.";
		increase libido of player by 5;
		decrease humanity of player by 3;


Chapter 4 - Alpha Fang and Candy

an everyturn rule:
	if ( HP of Fang is 3 or HP of Fang is 4 ) and Fang is booked and Fang is visible and lastCandyfucked - turns >= 12 and Candy is bunkered and ( libido of Fang is 7 or libido of Fang is 6 or ( lust of Fang >= 2 and girl is banned ) ) and lust of Candy is 0 and coonstatus is 2:
		now lust of Candy is 1;
		now lastCandyfucked is turns;
		now lastfuck of Fang is turns;
		say "     As you're adjusting your gear, you hear the door to the bunker open. Glancing over, you spot Candy sashaying out. He smiles and waves at you, giving his tail a playful flick. 'I'm going to borrow your big, bad wolf, sweetie[if HP of Fang is 3]. Sandra spilled the beans to me about how much fun she's been having, so I thought I'd give the big boy a test drive[else]. You mentioned how much fun you'd been having with him, so I thought I'd give the big boy a test drive[end if]. I hope you don't mind.' And with that said, he continues over to Fang. He seems hesitant to approach the big wolf for only a moment before moving up to offer himself to the wolf.";
		say "     [bold type]It seems like things are about to get started here. Do you want to stick around?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			now lust of Candy is 2;
			project the figure of Fang_Candy_icon;
			say "     Sliding your gear aside for the moment, you shift in your seat to better view the upcoming show. You watch as Candy chats briefly with the large wolf before sliding down his panties and moving onto all fours. With a flick of his tail, he flashes his bare ass at you, raising his skirt. Fang strides around the coon, sniffing at him with increasing interest, then licks under his tail. He seems to find the coon's cotton candy flavor interesting and lashes his tongue over the proffered tailhole. The coon releases some girlish moans as the long, broad tongue laps at his asshole and even slips into it a little.";
			say "     Once he's gotten his playmate ready, Fang moves atop him, nudging his throbbing wolf cock against the coon's back door before slowly sliding in into him. Candy releases a sensual moan of delight and pushes back, easily taking the wolf's big girth into his practiced hole. His bubble bottom bounces with each thrust of his feral lover.";
			if player is male:
				say "     Enjoying the impromptu show, you take your cock in hand and slowly stroke yourself, sliding over your [cock of player] dick. As you watch the pair continue to go at it, precum dribbles down your length, allowing you to get nice and slick[if player is female]. Your free hand moves down to your pussy, slipping a few fingers into it to pleasure your female sex as well[else]. Your free hand moves down to your balls, rubbing over them for further pleasure[end if]. With such a sexy show, you start to moan softly in pleasure, getting quite excited rather quickly. Your pace settles to match that of the powerful wolf banging away quickly at the girly coon's ass.";
			else:
				say "     Enjoying the impromptu show, you slide a hand between your legs and slide them across your pussy, teasing yourself. As your fingers get damp from your juices, you push [if cunt width of player > 3]a trio of fingers[else if cunt width of player > 1]a pair of fingers[else]a finger[end if] into your needy hole. Your other hand teases at your clit and sensitive folds while you fingerfuck yourself while watching the pair. With such a sexy show, you start to moan softly in pleasure, getting quite excited rather quickly. Your pace settles to match that of the thick wolf cock sinking into the girly coon's ass.";
			WaitLineBreak;
			say "     Fang's setting a fast pace, pounding hard and deep into the coon, who happily takes the vigorous pounding with moans and chirrs of delight. The powerful beast's jaws latch onto Candy's dress, tugging hard on it and drives his cock hard into the coon, pushing to stretch his accommodating hole open around his knot. The coon's pink hole spreads open and slides over the knot with a particularly loud moan and Candy cums hard, blasting his seed onto the floor in a wave of cotton candy scent as they become tied. You can see Fang's ballsack tighten up and twitch, knowing he's pumping his ample load deep into the needy coon's butt. Seeing the pair reach the climax of their fucking, you masturbate furiously and cum hard, [if player is male]blasting your seed across the ground[else]soaking your hands and crotch in your juices[end if].";
			say "     After a delay while the wolf's knot goes down (during which Candy strokes himself off again), Fang climbs off the coon and pops his knot free. Some wolf cum flows from the coon's stuffed hole before he clamps it shut to keep the rest of the warm treat inside himself and gets up. He looks rather scruffy and wild-eyed after their romp and the shoulder of his outfit is torn from the rough fucking he received. You get up slowly, concerned the girly coon may have regressed further and ask if he's okay as you shift into a fighting stance.";
			WaitLineBreak;
			say "     'Aieee! My dress!' Candy shrieks, spotting the torn shoulder as your words prompt him to check himself. He immediately slides it off, pausing only a moment to tease his nipples and straighten his fur. He turns angrily to face Fang, who's starting to move back to his usual spot. 'You big brute,' the coon shrieks and whaps the wolf with his dress. 'Bad dog.' With that, he turns around quickly, snatches up his panties and strides back towards the bunker. At the door, he gives a little giggle, swishes his tail up to show his creamy bottom and goes inside. Fang, who was stunned by the swat, seems to grin at the final teasing peek and relaxes, laying down and licking his messy cock clean.";
			if libido of player > 60, decrease libido of player by ( ( libido of player - 60 ) / 4 );
			NPCSexAftermath Candy receives "AssFuck" from Fang;
		else:
			say "     Grabbing your pack, you toss the rest of the stuff back into it and head into the bunker to give the two some privacy. You putter around in there for a while, Candy eventually returning. His fur is rather scruffy and his dress has got a tear in it. He's got a wild look in his eyes that you haven't seen since his time at the hospital and snarls a little[if the number of bunkered people > 3]. The others seem a little concerned at this and you[else]. You[end if] get up slowly, concerned the girly coon may have regressed further and shift into a fighting stance.";
			say "     'Aieee! My dress!' Candy shrieks, spotting the torn shoulder. He immediately slides it off, pausing only a moment to tease his nipples and straighten his fur. He runs over to grab his little sewing kit and gets to work repairing his outfit, clearly making a show of grumbling about [']such brutish behavior['] and the like between commenting about how the wolf was [']at least a good fuck['] and [']quite the beast in the sack[']. As this goes on, Candy recounts his romp in increasingly graphic detail and you slip back into the library.";
	else if ( HP of Fang is 3 or HP of Fang is 4 ) and Fang is booked and Fang is visible and lastCandyfucked - turns >= 12 and Candy is bunkered and ( libido of Fang is 7 or libido of Fang is 6 or ( lust of Fang >= 2 and girl is banned ) ) and lust of Candy is 2 and coonstatus is 2:
		now lust of Candy is 3;
		now lastfuck of Fang is turns;
		project the Figure of Fang_face_icon;
		say "     As you're taking a break, you hear the door to the bunker open. Glancing over, you spot Candy sashaying out again. He smiles and waves to you, giving his tail a big swish. 'I'll be borrowing your big, bad wolf again, hon. I've decided the best way he can repay me for nearly ruining my outfit is with another fucking. I hope you don't mind.' And with that said, he continues over to Fang. This time, he pulls off his dress and tosses it across the librarian's desk.";
		say "     With growing interest, you decide to stick around again and watch as he hesitates for a moment, but plunges on ahead as he eyes the wolf's large package with obvious lust. Fang, with growing interest and growing erection, watches him draw near before getting up and padding towards him, intent on mounting the coon again, but Candy stops him.";
		say "     'Ah-ah, tough guy. This time I'm going to get what I want before letting you mount me, you big brute,' he says with his usual flamboyant confidence and taking hold of Fang's canine erection. He strokes over it with his skillful paw, soon leaning in to lick and suck at it as well. Soon he's bobbing his head over it and pushing the large wolf to roll over to he can deep-throat him. Fang's tongue hangs from his mouth as he pants with a big, lupine grin on his face. From your vantage point, you get to watch the wolf's ballsack twitch as he pumps his hot load down the coon's throat and Candy swallows it all down.";
		WaitLineBreak;
		say "     After his tasty treat, Candy moves overtop of the wolf, not giving him a moment to recover. The coon, clearly intent on getting fucked after the arousing blow job, moves atop of Fang and presses his rear down onto the still hard wolf cock. You watch as that pink pucker is spread open by the throbbing red meat of Fang's lupine cock. The coon's paws run through the wolf's gray fur and drives himself hard down onto his cock again and again. Fang, having just cum, is oversensitive and whimpers despite bucking his hips in an attempt to fuck the coon all the harder.";
		say "     Fang howls and Candy moans loudly as he pushes himself down onto the large knot, his well-practiced hole stretching open to accommodate the thick meaty bulge. As you watch, Candy splatters his pink cum across the wolf's chest as you watch Fang's balls unleashing a second load, this time into the coon's sexy ass.";
		WaitLineBreak;
		say "     Candy, seeming much more in control of himself than last time, eases off the wolf once his knot goes down with a wet pop. The coon giggles and stretches, giving a slow twirl so both you and Fang can get a peek at his creamy hole. He sashays back to the librarian's desk, smooths out his fur and slides his candy striper uniform back on. Always eager to be the center of attention, he makes a big show of this. It's not until he's almost done and starts giggling loudly that your eyes are drawn back to notice a decidedly pink-furred Fang. The wolf, noticing this undignified change for a powerful alpha, growls and starts scratching and nipping at his own coat, making the coon giggle all the more.";
		say "     'Oh, honey, don't be like that. I think you look simply [italic type]faaahbulous[roman type] in pink,' he laughs. Fang huffs indignantly and keeps scratching at it until his proper gray color is restored. He then storms outside and sniffs the air, clearly searching for a female to mount and dominate to improve his disposition. Candy bounds merrily back into the bunker, swinging past you to run his fluffy tail across your body as he does[if player is male]. 'You should come snuggle with me sometime soon, hon. Grumpy there may be well hung, but you're much nicer company,' he says with a smile[end if].";
		NPCSexAftermath Candy receives "OralCock" from Fang;
		NPCSexAftermath Candy receives "AssFuck" from Fang;


Section 6 - The Rivalry

ffrivalry is a number that varies.

an everyturn rule:
	if the player is in the Grey Abbey Library and ( HP of Fang is 3 or HP of Fang is 4 ) and felinoid companion is tamed:
		increase ffrivalry by 1;
		let num be a random number between 5 and 20;
		if num >= ffrivalry and Felinoid companion is the companion of the player:
			project the Figure of Fang_face_icon;
			say "[one of]Fang locks his steely gaze on Klauz and growls softly.[or]Klauz rubs up against you, pushing you away from Fang in a possessive manner.[or]The felinoid at your side growls at Fang.[or]Your felinoid companion and your alpha wolf growl and snap at one another from a few feet away for a minute.[or]Your alpha wolf and the felinoid exchange angry glares at one another and possessives stares at you.[or]Fang growls at Klauz as he moves between you and him. They glare at each other like that for a few moments before breaking off, both clearly angry at the other's presence near you.[or]The feral wolf and large felinoid growl and hiss at one another as they circle around you like you're some kind of prize.[at random]";
			now ffrivalry is 0;


Section 7 - Endings

when play ends:
	if Fang is in the Grey Abbey Library and HP of Fang is not 3 and HP of Fang is not 4:			[ Fang the guard wolf ]
		if humanity of player < 10:
			say "     Having had his alpha succumb to the infection, Fang leaves behind his rope leash and heads back into the city to find his fortune elsewhere.";
		else:
			say "     When the military comes, you worry about how they'll react to Fang. He's been quite loyal and not caused any trouble, but his bestial form distresses the soldiers. As the squad leader moves up to tell you the wolf can't come, Fang pads quietly in front of you and sits down. Clearing his throat, he starts talking with some difficulty. In anticipation of this moment, it's clear to you he's spent some time among the library stacks reading in preparation. With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to plead his case well enough to join you. While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building. You quietly pat the wolf's head before going along to show them the rest of the place. Needing no more recognition, his tail wags once and he sits patiently waiting to join you in your new life as you home's loyal guardian and your secret lover.";
			if Sandra is in the bunker:
				say "     Sandra, thankful to the big wolf for helping to keep everyone safe in the bunker, is always very kind to the big wolf when she comes to visit. Often, during visits or get-togethers at your place, you'll find that the bunny's quietly slipped away. Always knowing where you'll find her, you'll check and see her safely beneath the big wolf, getting his large, red cock stuffed into her cunt. The bunny's tummy grows large after one of these visits and she eventually gives birth to a pair of wolf cubs with bunny ears and a tail. These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";
	else if HP of Fang is 3 or HP of Fang is 4:				[ alpha Fang ]
		if bodyname of player is "Feral Wolf":
			[ see Feral Wolf file for this ending ]
			now tempnum is 0;
		else:
			if humanity of player < 10:
				if HP of Fang is 3:
					say "     Having succumbed to another infection, Fang has lost his slutty bitch and, having no more reason to stay, leaves the bunker. With his newfound confidence, he forms a small pack of his own[if ColleenAlpha is 0]. Taking Sandra with him, he leads her off to be his special bunny fucktoy, a role that she enjoys greatly. She bears him many quick-footed pups who become runners for the pack, chasing down prey so the stronger wolves can catch them and take them down[end if].";
				else if HP of Fang is 4:
					say "     Having succumbed to another infection, Fang has lost his slutty bitch and, having no more reason to stay, leaves the bunker. With his newfound confidence, he forms a small pack of his own.";
			else:
				say "     When the military comes, you worry about how they'll react to Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. His bestial form distresses the soldiers, but you do your best to appease them. As the squad leader tries to move you out of the way, telling you the wolf can't come, Fang pads confidently in front of you growls for him to let you go. Clearing his throat, he starts talking with some difficulty. In anticipation of this moment, it's clear your clever master has spent some time among the library stacks reading in preparation. With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to articulate clearly his points and that he WILL be going with you. While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building. You hug your wonderful alpha's head before going along to show them the rest of the place. He gives your cheek a lick and ignores the soldiers guarding him as inconsequential, having impressed their alpha, and strides back to his favorite resting spot to await departure.";
				if bodyname of player is "Felinoid" and felinoid companion is tamed:
					[ see Felinoid Companion file for this ending ]
					now tempnum is 0;
				else if Felinoid companion is tamed and player is female:
					say "     At the military's camp, Fang and Klauz are given a quick examination, but somehow manage to avoid closer scrutiny. You suspect the one female aid who left their examination room with a rather musky scent on her played a part in it somehow[if lust of Fang > ( level of Felinoid companion - 6 )]. Fang seems particularly pleased with himself[else if lust of Fang < ( level of Felinoid companion - 6 )]. The felinoid seems particularly pleased with himself[else]. They both seem particularly pleased with themselves[end if] as well, but that may just have been your imagination. Regardless, given how bad things are getting the city, they don't get around to fully testing your seemingly obedient pair of companions, accepting your word that they're loyal guardians you found and nothing more.";
					if lust of Fang > ( level of Felinoid companion - 6 ):			[Fang victor]
						say "     After your release from the military, you settle into your new life with the two of them coming along. They snap and growl at one another, but things remain civil enough at first. In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so. You accept your role readily, having become the wolf's fucktoy. But one day, Klauz takes exception to this and the two have a great fight that devastates your living room. In the end, your alpha wolf is victorious and forces the big feline to submit to him as well.";
						say "     The big wolf celebrates his victory by mounting you while the felinoid is left to watch, breeding you with a loud howl. Once finished with you, he forces the male cat to lick his cock clean, which he does reluctantly at first. Over time, Fang trains him well, keeping his lustful urges reined in around you though several other females are drawn in by Klauz's musk. The wolf generously allows the cat to breed some of them, turning them into a small harem of felinoid females to keep him satisfied and spread his cubs into the area. The others he keeps for himself, giving the big wolf a sizable stable of bitches among the local women. Even as these wolf and felinoid cubs spread out, they always respect Fang's ownership of you.";
					else if lust of Fang < ( level of Felinoid companion - 6 ):	[felinoid victor]
						say "     After your release from the military, you settle into your new life with the two of them coming along. They snap and growl at one another, but things remain civil enough at first. In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so. You accept your role readily, having become the wolf's fucktoy. But one day, Klauz takes exception to this and the two have a great fight that devastates your living room. In the end, your felinoid companion is victorious and forces the big wolf to submit to him as well.";
						say "     Klauz celebrates his victory by mounting you while the wolf is left to watch, breeding you with a powerful roar. Once finished with you, he forces himself onto the defeated wolf, fucking him as well. ";
						if hermaphrodite is banned:
							say "As you watch, Fang is fucked repeatedly until he's made submissive to the stronger cat. Klauz trains the wolf well, always making sure the wolf knows his place beneath him. Fang may still be your alpha wolf, but Klauz owns you both now.";
						else:
							say "As you watch, Fang gains a wet, bitch pussy to go along with his cock and balls and is then bred by the victorious Klauz. The felinoid trains the wolf well, breeding cubs in both your bellies. Fang may still be your alpha wolf, but Klauz owns you both now.";
						say "     The strong musk of the powerful cat lingers on you, making you very alluring to others, man and woman alike, allowing you to bring them back to your place. There, the big feline has his way with them, turning them into lustful female felinoids for him to breed. You are forced to move a couple of times before you finally settle down someplace to stay for good, you and your companion settling in happily, while a strange explosion of pregnant female felinoids hits the area.";
					else:		[evenly matched]
						say "     After your release from the military, you settle into your new life with the two of them coming along. They snap and growl at one another, but things remain civil enough at first. In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so. You accept your role readily, having become the wolf's fucktoy. But one day, Klauz takes exception to this and the two have a great fight that devastates your living room. In the end, your two are evenly matched and must eventually relent in their conflict and share you.";
						say "     And share you they do. You are fucked back and forth for the rest of the day by the two of them, as if the new competition is one to see who can outlast the other and fuck you more times. Again, it seems like they're evenly matched and the two gain a grudging respect for each other even as your belly is bloated fuller and fuller of their animal seed and you eventually pass out before a winner is decided.";
						say "     From that point on, the two get along much better, sharing you. Their combined musk lingers on you and is a very powerful and alluring aphrodisiac, drawing in men and women alike. Following their orders, you entice numerous people back to your place while living your normal life. There, the felinoid and wolf have their way with them, ravaging them lustfully until they become horny females, wolves or felinoids, for them to breed. Before long, thanks to their powerful allure, every family in the neighborhood soon has at least one felinoid or wolf member in their household. You, like all those they share, become pregnant with felinoid-wolf hybrid cubs who go on to form a new and powerful race that spreads much further thanks to its physical might and alluring scent.";
				else:
					say "     After your release from the military, you settle into your new life with Fang coming along. In public, he's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so. You accept your role readily, having become the wolf's fucktoy.";
			if Sandra is in the bunker and humanity of player >= 10:
				say "     Sandra, thankful to the big wolf for helping to keep everyone safe in the bunker, is always very kind to the big wolf when she comes to visit. Often, during visits or get-togethers at your place, you'll find that the bunny's quietly slipped away. Always knowing where you'll find her, you'll check and see her safely beneath your alpha, getting his large, red cock stuffed into her cunt. The bunny's tummy grows large after one of these visits and she eventually gives birth to a pair of wolf cubs with bunny ears and a tail. These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";

[Connection summary: Fang's endings have ties to: Feral Wolf, Sandra, Felinoid companion]

Fang ends here.
