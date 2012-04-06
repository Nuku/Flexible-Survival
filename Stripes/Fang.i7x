Version 2 of Fang by Stripes begins here.
"Adds Fang the Feral Wolf to the Flexible Survival game"

Section 1 - Fang the Feral Wolf

Fang is a person.
The description of Fang is "[fangdesc]";
lastFangfucked is a number that varies.  lastFangfucked is normally 555.
libido of Fang is normally 0.
[See Feral Wolf file for collecting Fang.]

instead of sniffing the Fang:
	say "The scarred wolf has an arousing male scent.";

to say fangdesc:
	say "     The feral wolf creature seems to be doing better in his new home.  Looking more confident and strong as he sits obediently on watch.  His fur is a mix of black and dark grey fur that blends into the shadows as he watches the door with his bright, yellow eyes.  You are pleased with how he's turning out so far.  He's not made a mess around the Library and remains on his long, rope leash.  The fact that he cleverly unties and reties its anchoring point to get around when you're not looking doesn't bother you very much, as the fact he still wears it shows he recognizes your authority as his [if cocks of player > 0]master[otherwise]mistress[end if].";

Instead of conversing the Fang:
	say "     The wolf creature listens attentively as you speak to him.";


Section 2 - Sexxxings

instead of fucking the Fang:
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if lastFangfucked - turns is less than 8:
		say "     Fang got off fairly recently, so you'd probably have a better time with him if you give him a little longer to recover.";
	otherwise if cocks of player > 0 or cunts of player > 0:
		say "     What kind of fun were you looking to have with your big, bad wolf?";
		wait for any key;
		say "[fangsex]";
		now lastFangfucked is turns;
	otherwise:
		say "     Lacking any sexual organs of your own, you content yourself with snuggling the wolf and scritching his ears.  He nuzzles you in return and licks your face.";

to say fangsex:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Suck wolf cock";
	now sortorder entry is 1;
	now description entry is "In the mood to taste the big wolf cock?";
	now toggle entry is fangsexy rule;
	choose a blank row in table of fucking options;
	if cunts of player > 0:
		now title entry is "Wolf mating";
	otherwise:
		now title entry is "Anal";
	now sortorder entry is 4;
	now description entry is "Let Fang mount you.";
	now toggle entry is fangsexy rule;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Wolf tongue";
		now sortorder entry is 2;
		now description entry is "Put your wolf's tongue to use.";
		now toggle entry is fangsexy rule;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Mount Fang";
		now sortorder entry is 3;
		now description entry is "Mount the big wolf to show him who's alpha.";
		now toggle entry is fangsexy rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the fangsexy rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if nam is "Suck wolf cock":
			say "[fangsex1]";
		otherwise if nam is "Wolf tongue":
			say "[fangsex2]";
		otherwise if nam is "Wolf mating" or nam is "Anal":
			say "[fangsex3]";
		otherwise if nam is "Mount Fang":
			say "[fangsex4]";
		wait for any key;

to say fangsex1:
	say "     Watching the powerful form of the wolf move around as he paces by the door, you catch sight of his large sheath and swollen balls.  Licking your lips, you decide you'd like a taste of the big wolf's thick seed.  You walk over and pet his head, scritching his ears.  His ears perk up at the show of affection and nuzzles at your hand. licking your fingers.  Reaching down with your other hand, you slip it underneath him and start rubbing his warm maleness, getting a rumble of pleasure from the large wolf.  He almost seems to smile as he rolls over onto his back, baring himself to you as his swelling cock starts to slip free.  His red shaft pokes from his sheath, growing longer and fuller as you start stroking it.";
	say "     Leaning down, you brush your tongue over the tip of his pointed glans, getting a taste of his dribbling precum.  It has a strong, virile taste that excites you and, taking a deep breath, you plunge your mouth down over that throbbing prick.  Licking and sucking lustfully, you rub at his growing knot and full balls.  The wolf releases growls of pleasure and thrusts lightly into your mouth as his paws gently grip you.  You move yourself over a little, bringing your groin above his face, allowing the wolf's tongue to play over your [if cocks of player > 1]leaking cocks[otherwise if cocks of player is 1]throbbing cock[end if][if cocks of player > 0 and cunts of player > 0] and [end if][if cunts of player > 1]dripping cunts[otherwise if cunts of player is 1]dripping cunt[otherwise if cunts of player is 0 and cocks of player is 0]tight asshole[end if].  Kneading the wolf's balls, you almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat[if cocks of player > 0 or cunts of player > 0], pushing you to orgasm as well with his tongue[end if].  Sliding off the spent shaft, you lick your lips for the excess which flowed out, your belly warm with your wolf pet's semen.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say fangsex2:
	say "     Watching your wolf guard on watch, you decide to satisfy a growing itch in your loins.  Taking a seat on one of the desks, you whistle to him, exposing your wet pussy to the large lupine.  With almost a grin on his wolfish face, Fang pads over to you and nuzzles your thigh.  Stroking his head, you tell the wolf you want to enjoy that big, long tongue of his and he obediently (and eagerly) sets to work licking at your dripping snatch.  Moaning in pleasure as that long tongue plays over and into your cunt, you stroke his head and rub his ears.  His lupine tongue is able to dive deep into you, making your vaginal walls quiver in delight as it glides over them.  The feral wolf lavishes attention upon you, licking your pussy and lapping up your juices.  Feeling your climax coming, you moan encouragement to the wolf, you licks all the faster and deeper, pushing you hard over the edge.  His fur tickles your thighs as he presses his muzzle to your crotch, washing his warm breath over your soft petals as he laps up your sweet waters.  Panting and warm with the afterglow, you scritch the sexy creature's ears.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say fangsex3:
	now lastFangfucked is turns;
	say "     Watching the powerful form of the wolf move around as he paces by the door, you find yourself looking to satisfy a growing urge within you.  Deciding to use your wolf pet to fill that need, you walk over and pet his head, scritching his ears.  His ears perk up at the show off affection and nuzzles at your hand, licking your fingers.  Putting aside your pack and clothes, he almost seems to smile and his cock starts to swell and slide from his sheath.  Bracing yourself against a desk, you lean over and call the wolf to you, ordering him to start licking you.  His tongue dives in right away, slathering your [if cunts of player > 0]crotch and sliding into your cunt in an effort to please his alpha and earn his reward[otherwise]pucker and pressing his slobbery tongue into it to get you ready[end if].";
	say "     After a few minutes of very pleasurable attention by his lupine tongue that makes your [if cunts of player > 0]pussy quiver and cum in ecstacy[otherwise]asshole relaxed and slick[end if], you decide he's done well and call him up to mount you.  Obeying his alpha, he leaps onto your back, bracing his front paws beside your hands on the desk and drives his penis into you.  His wolf cock spreads your slathered [if cunts of player > 0]cunt[otherwise]anus[end if] open and he starts thrusting into you.  You press back into his thrusts and urge him to take you harder and faster, like the wild beast he is.  You order him to fuck you hard, to show his alpha what a strong male he is, to [if cunts of player > 0]breed[otherwise]screw[end if] you like the animal he is.  He licks and nips at your neck, growling softly as he obeys and starts pounding his feral body against yours.  You moan and growl in pleasure beneath him, enjoying the rough fucking from your pet.  His throbbing, leaking cock pumps into you again and again, filling your whole body with ecstacy with each push into you.  As his swollen knot finally pops into you, he howls in pleasure and unleashes his hot, thick seed into you [if cunts of player > 0]in an effort to breed you[otherwise], filling your bowels with his hot load[end if].  When his knot finally goes down and he hops off of you, you give his ears a scritch, tell him how well he did and let him give you a few licks to clean the leaking excess before gathering up your stuff and getting back to other matters.";
	say "[impregchance]";
	now libido of player is ( ( libido of player * 2 ) / 5 );

to say fangsex4:
	say "     Deciding to remind the big wolf that you're in charge, you stroke your throbbing cock and call with big wolf over.  Noticing your erection, the wolf comes over obediently and starts licking at it, slathering his slobbering tongue all over it.  You stroke his head and rumble in pleasure, only stopping him once you're good and slick.  Ordering him to turn, you get him to raise his tail for you, ears dipped and cowed before his strong alpha.  Climbing atop the big wolf, you line yourself up with his tight pucker and sink yourself into him.  He releases a soft growl and whimpers a little, but submits to you and takes it.  You nibble his ear and whisper what a good guard he's been and how pleased you are with him.  You pound your cock into him firmly, adding how happy you are with his tight ass and that's such a good beta for bending over and taking his alpha's cock.  Reaching around, you wrap your hand around his shaft, finding it hard and throbbing, enjoying the good, hard fuck he's getting.  Pumping hard and fast, you get him to howl under you as you thrust hard into his ass and unleash your hot cum, painting his insides with your seed, claiming him oncemore as yours.  The wolf's semen sprays onto the floor, forming a large puddle of thick, white wolfcum.";
	now libido of player is ( ( libido of player * 2 ) / 5 );


Section 3 - Fang and Sandra

instead of going outside from Bunker while ( lastrabbitfuck - turns > 15 and Sandra is in the Bunker and Fang is in the Grey Abbey Library and lastFangfucked - turns > 7 and libido of Fang < 2 ):
	now lastrabbitfuck is turns;
	now lastfangfucked is turns;
	move player to Grey Abbey Library;
	say "     As you're preparing to head back out, you catch sight of Sandra slipping through the door to the Library[if libido of Fang is 1] again.  Once again, there's[otherwise].  There's[end if] something furtive about her actions and so you remain quiet and follow out shortly after her.  Outside in the library, you stay hidden among the stacks, watching her move towards the big wolf on guard[if Onyx is in Grey Abbey Library or Snow is in Grey Abbey Library].  They are alone in here right now, or at least so they think[end if][if libido of Fang is 1].  With a few quiet whispers,[otherwise].  It becomes clear what she's after when[end if] she puts her arms around him and starts stroking his cock, getting the big, feral wolf hard.  After a little teasing and some slobbery kisses from the lupine's tongue, she moves onto all fours and waves her rump for him.";
	say "     'Oh, take me, you big beast!  I want to be fucked like an animal!' the usually shy and quiet bunny cries out as the wolf's moving atop her.  It seems she's becoming more lustful with her time waiting in the bunker, giving into her hidden lusts more and more.  Clearly the rabbit girl is much kinkier than she lets on.  You grin as you watch the wolf's cock spreading the bunny's wet, dripping folds before pounding and thrusting into her like a wild, feral wolf.  Getting quite aroused by the erotic display before you, you rub your hands over your body.  Shall you head over to join them [if libido of Fang is 1]this time [end if](Y) or remain watching quietly (N)?";
	if the player consents:
		say "     Wanting to join in on the fun, you slip out of the shadows and quietly approach the pair.  As you move up close, you get a better view of that throbbing cock slipping into the bunnygirl's wet folds again and again.  Once right behind them, you grab the wolf's balls, telling him to keep fucking that horny bunny.  Sandra squeeks in embarassment but doesn't stop pushing herself back into each of Fang's thrusts.  You slide your hand over the wolf's balls to tease her pussy as it slides over his cock.  'I... it's... oh, gods! He's just such a sexy animal,' she moans as her excitement only builds at being caught beneath the feral wolf.";
		if cocks of player > 0:
			say "     Your cock throbs with excitement as you watch the two going at it.  Wanting to take part, would you prefer to mount the wolf (Y) or give the horny bunny some cock to suck (N)?";
			if the player consents:
				say "     Moving in behind Fang, you get your throbbing cock lined up with his tailhole, then drive it into him as he thrusts into the bunny.  Fang releases a soft whimper, but takes your cock easily enough in his experienced hole.  Sandra, meanwhile, moans loudly as this forces the wolf's knot into her, tying them together.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  You can feel Fang's tailhole clenching around you as his ballsac pulls up and his hot load sprays into the eager rabbit.  You pound away at his ass, making sure the wolf cums long and hard to give Sandra every single drop of his thick seed.  Imagining the bunny girl stuffed with wolf cum or even better, growing cubs inside her, becomes too much for you to hold back longer and soon enough you're emptying your balls into the wolf as well.";
			otherwise:
				say "     Moving in front of them, you bring your throbbing cock towards Sandra's muzzle.  Fang, taking the bunny's nape in his neck, makes her moan loudly and you slide your cock into her open muzzle.  The bunny licks and sucks hungrily at it while getting fucked by the wolf creature.  You run your hands over her head, stroking her ears as you tell her how sexy she looks like that, having a big, feral wolf fucking her.  She blushes brightly at her ears and cheeks, but is clearly turned on by it and pushes hard back into his thrusts.  A few more thrusts as you hear the pop of the wolf's knot pushing into her wet cunt, tying them together so he can fill her with his semen.  As you pump your cock into her eager muzzle, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough you're emptying your balls down her throat.";
		otherwise if cunts of player > 0:
			say "     Your pussy quivers with excitement as you watch the two going at it.  Wanting to take part, would you prefer to lick at their cock and snatch (Y) or have the horny wolf lick your needy pussy (N)?";
			if the player consents:
				say "[fangsandralick]";
			otherwise:
				say "     Moving in front of them, you bring your dripping cunt to Fang's muzzle.  The wolf needs no prompting and dives his tongue into your crotch, licking at your pussy before diving his tongue into you.  His tongue tongue slides around inside you, lapping up your aroused juices as you watch them fucking.  'Oh, that looks so hot,' the bunny moans between increasingly hard thrusts.  'I've got to give that tongue a try sometime.'  Excited by your juices, the wolf pounds at the bunny harder and harder until he manages, with a pop, to push his knot into her and tie them together so he can fill her with his semen.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  As the wolf licks at you, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough you're emptying your balls down her throat.";
		otherwise:						[neuter]
			say "[fangsandralick]";
		say "     When you're done and the wolf's knot has gone down enough to pop free, you get the wolf to lick her dripping snatch clean, enjoying the show of her squirming with Fang's tongue stuffed into her overflowing pussy.  You play with the bunny's tits, nursing some milk from them until she cums several more times.  Smiling in your arms, panting after her wild time with you both, Sandra gives you a kiss.  'Fang's out here on his own, standing guard for us.  I wanted... I just... I felt he should get a little reward,' she says softly.  You slip a pair of fingers into her pussy, teasing her clit, asking if that's all.  The bunny girl moans and nibbles her lip.  'Oh, who am I kidding?  He's just such a big, powerful wolf.  It was just so [']wrong[']; I had to have him.'  The wolf grins and licks her muzzle, making her smile and kiss him in return.  After some further cuddling, you let her up so she can slip back into the bunker before anyone comes looking for her.  'Maybe we could do this again sometime,' Sandra says softly to you, before running quickly back inside.";
		now libido of Fang is 3;
		decrease thirst of player by 15;
		if thirst of player < 0, now thirst of player is 0;
		now libido of player is libido of player / 4;
	otherwise:
		say "     Deciding you'd prefer to watch the show, you remain in the shadows of the bookshelves[if cocks of player > 0] and stroke your throbbing meat[otherwise if cunts of player > 0] and finger your feminine folds[end if].  The bunny is getting pounded good and hard by your guard wolf, his thick knot pressing at her wet lips each time, trying to push fully in.  Sandra paws at the ground whimpering and moaning a lot, but is clearly loving having the big, bad wolf atop her.  Growling, the wolf takes the nape of her neck between his teeth and drives hard into her, forcing his knot into her and tying with her.  His cock throbs and his balls twitch, clearly pumping his rich seed into her.  She releases a long, satisfied moan as her belly fills with wolfcum[if cocks of player > 0].  You pump a hand quickly over your cock, stiffling your moans as you spray a large puddle of cum onto the floor at the sight of their mating[end if][if cunts of player > 0].  You drive several fingers into your twat, soaking your crotch and hand in your feminine juices until they dribble between your fingers[end if].  Their wild mating done, Fang snuggles up with Sandra, licking and kissing the bunny girl until his knot finally goes down.  Once released, the rabbit gets up quickly, wipes away the dribbling cum from her slit and sneaks back into the bunker.  You wait in the shadows for a while before slipping out, acting as if you had just emerged from the bunker[if libido of Fang is 0].  You do give Fang a scritch on the ears as you go past him[otherwise if libido of Fang is 1].  The wolf seems to grin at you as you come out and he makes a show of slowly licking his cock.  You get the feeling that the wolf knew you were watching him fuck the horny bunny[end if].";
	increase libido of Fang by 1;

to say fangsandralick:
	say "     Still stroking the bunny's snatch, you lean down and nuzzle under the wolf's large balls.  Close up, you can see the bunny's cunt gripping and pulling at the wolf's cock each time he withdraws, her body not wanting to release it.  You press your face in there, licking and kissing at that slick, juicy flesh.  You run your tongue over them both, then move in to focusing on the bunny's swollen clit, licking and sucking it hard as the wolf's not tries to push into her.  After several hard pushes, it pops in and Sandra cries out in delight.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  You can feel the wolf's balls tense up and see his cock swell a little further as his hot load gushes into the horny bunny he's tied with so he can fill her with his semen.  As you're licking at them, lapping up the escaping overflow of jizz, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her[if cocks of player > 0], and it become too much for you to hold back longer and soon enough you're emptying your balls onto the floor as you pump your cock hard[otherwise if cunts of player > 0], and it become too much for you to hold back longer and soon enough you're cumming hard with several fingers buried in your own snatch[otherwise] and can't help but smile a little[end if].";

[ Libido of Fang (Sandra)	]
[ 0 - normal			]
[ 1 - watched once		]
[ 2 - watched twice (closed)	]
[ 3 - joined in (open)		]


Section 4 - Endings

when play ends:
	if Fang is in the Grey Abbey Library:			[ Fang the guard wolf ]
		if humanity of player < 10:
			say "     Having had his alpha succumb to the infection, Fang leaves behind his rope leash and heads back into the city to find his fortune elsewhere.";
		otherwise:
			say "     When the military comes, you worry about how they'll react to Fang.  He's been quite loyal and not caused any trouble, but his beastial form distresses the soldiers.  As the squad leader moves up to tell you the wolf can't come, Fang pads quietly in front of you and sits down.  Clearing his throat, he starts talking with some difficulty.  In anticipation of this moment, it's clear to you he's spent some time among the library stacks reading in preparation.   With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to plead his case well enough to join you.  While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building.  You quietly pat the wolf's head before going along to show them the rest of the place.  Needing no more recognition, his tail wags once and he sits patiently waiting to join you in your new life as you home's loyal guardian and your secret lover.";
			if Sandra is in the bunker:
				say "     Sandra, thankful to the big wolf for helping to keep everyone safe in the bunker, is always very kind to the big wolf when she comes to visit.  Often, during visits or get-togethers at your place, you'll find that the bunny's quietly slipped away.  Always knowing where you'll find her, you'll check and see her safely beneath the big wolf, getting his large, red cock stuffed into her cunt.  The bunny's tummy grows large after one of these visits and she eventually gives birth to a pair of wolf cubs with bunny ears and a tail.  These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";


Fang ends here.