Version 5 of Fang by Stripes begins here.
[Version 5 - Alpha Fang w/o Sandra]

"Adds Fang the Feral Wolf to the Flexible Survival game"

Section 1 - Fang the Feral Wolf

Fang is a person.
The description of Fang is "[fangdesc]";
The conversation of Fang is { "Grrrr!" }.
lastFangfucked is a number that varies.  lastFangfucked is normally 555.
libido of Fang is normally 0.		[represents status w/fucking Sandra - saved]
lust of Fang is normally 0.		[number of threesomes w/Sandra in this play through]
[See Feral Wolf file for collecting Fang.]

instead of sniffing the Fang:
	if hp of Fang is 3 or hp of Fang is 4:
		say "The scent of your alpha wolf is strong and exciting.";
	otherwise:
		say "The scarred wolf has an arousing male scent.";

to say fangdesc:
	if hp of Fang is 3 or hp of Fang is 4:
		say "     The feral wolf creature is now prowling around freely in the Library, unchained and without a collar.  Your beastly wolf has a mix of black and dark grey fur that blends into the shadows as he stands on watch.  You feel a rush of excitement as you look at him, your alpha wolf, feral instincts making you want to submit to him again.";
	otherwise:
		say "     The feral wolf creature seems to be doing better in his new home.  Looking more confident and strong as he sits obediently on watch.  His fur is a mix of black and dark grey fur that blends into the shadows as he watches the door with his bright, yellow eyes.  You are pleased with how he's turning out so far.  He's not made a mess around the Library and remains on his long, rope leash.  The fact that he cleverly unties and reties its anchoring point to get around when you're not looking doesn't bother you very much, as the fact he still wears it shows he recognizes your authority as his [if cocks of player > 0]master[otherwise]mistress[end if].";

Instead of conversing the Fang:
	if hp of Fang is 3 or hp of Fang is 4:
		say "     The wolf creature listens attentively as you tell him what happening out in the city while you stroke and scritch your lupine master.";
	otherwise:
		say "     The wolf creature listens attentively as you speak to him.";


Section 2 - Sexxxings

instead of fucking the Fang:
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if lastFangfucked - turns is less than ( 9 - hp of Fang ):
		say "     Fang got off fairly recently, so you'd probably have a better time with him if you give him a little longer to recover.";
	otherwise if hp of Fang is 3:
		say "[fangalphasex]";
		infect "Feral Wolf";
		now lastFangfucked is turns;
	otherwise if hp of Fang is 4:
		say "[fangalphasex2]";
		infect "Feral Wolf";
		now lastFangfucked is turns;
	otherwise if cocks of player > 0 or cunts of player > 0:
		say "     What kind of fun were you looking to have with your big, bad wolf?";
		wait for any key;
		say "[fangsex]";
		now lastFangfucked is turns;
	otherwise:
		say "     Lacking any sexual organs of your own, you content yourself with snuggling the wolf and scritching his ears.  He nuzzles you in return and licks your face.";
		if hp of Fang is 3 or hp of Fang is 4:
			infect "Feral Wolf";
			now lastFangfucked is turns;


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
	if libido of fang > 2 and lastrabbitfuck - turns >= ( 9 - hp of Fang ) and Sandra is in the Bunker :
		choose a blank row in table of fucking options;
		now title entry is "Fang and Sandra";
		now sortorder entry is 5;
		now description entry is "See if Sandra wants to play with the big, bad wolf again.";
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
		otherwise if nam is "Fang and Sandra":
			say "[fangsandrasex]";
		wait for any key;

to say fangsex1:		[suck wolf cock]
	say "     Watching the powerful form of the wolf move around as he paces by the door, you catch sight of his large sheath and swollen balls.  Licking your lips, you decide you'd like a taste of the big wolf's thick seed.  You walk over and pet his head, scritching his ears.  His ears perk up at the show of affection and nuzzles at your hand. licking your fingers.  Reaching down with your other hand, you slip it underneath him and start rubbing his warm maleness, getting a rumble of pleasure from the large wolf.  He almost seems to smile as he rolls over onto his back, baring himself to you as his swelling cock starts to slip free.  His red shaft pokes from his sheath, growing longer and fuller as you start stroking it.";
	say "     Leaning down, you brush your tongue over the tip of his pointed glans, getting a taste of his dribbling precum.  It has a strong, virile taste that excites you and, taking a deep breath, you plunge your mouth down over that throbbing prick.  Licking and sucking lustfully, you rub at his growing knot and full balls.  The wolf releases growls of pleasure and thrusts lightly into your mouth as his paws gently grip you.  You move yourself over a little, bringing your groin above his face, allowing the wolf's tongue to play over your [if cocks of player > 1]leaking cocks[otherwise if cocks of player is 1]throbbing cock[end if][if cocks of player > 0 and cunts of player > 0] and [end if][if cunts of player > 1]dripping cunts[otherwise if cunts of player is 1]dripping cunt[otherwise if cunts of player is 0 and cocks of player is 0]tight asshole[end if].  Kneading the wolf's balls, you almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat[if cocks of player > 0 or cunts of player > 0], pushing you to orgasm as well with his tongue[end if].  Sliding off the spent shaft, you lick your lips for the excess which flowed out, your belly warm with your wolf pet's semen.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say fangsex2:		[pussy licked by Fang]
	say "     Watching your wolf guard on watch, you decide to satisfy a growing itch in your loins.  Taking a seat on one of the desks, you whistle to him, exposing your wet pussy to the large lupine.  With almost a grin on his wolfish face, Fang pads over to you and nuzzles your thigh.  Stroking his head, you tell the wolf you want to enjoy that big, long tongue of his and he obediently (and eagerly) sets to work licking at your dripping snatch.  Moaning in pleasure as that long tongue plays over and into your cunt, you stroke his head and rub his ears.  His lupine tongue is able to dive deep into you, making your vaginal walls quiver in delight as it glides over them.  The feral wolf lavishes attention upon you, licking your pussy and lapping up your juices.  Feeling your climax coming, you moan encouragement to the wolf, you licks all the faster and deeper, pushing you hard over the edge.  His fur tickles your thighs as he presses his muzzle to your crotch, washing his warm breath over your soft petals as he laps up your sweet waters.  Panting and warm with the afterglow, you scritch the sexy creature's ears.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say fangsex3:		[fucked by Fang]
	say "     Watching the powerful form of the wolf move around as he paces by the door, you find yourself looking to satisfy a growing urge within you.  Deciding to use your wolf pet to fill that need, you walk over and pet his head, scritching his ears.  His ears perk up at the show off affection and nuzzles at your hand, licking your fingers.  Putting aside your pack and clothes, he almost seems to smile and his cock starts to swell and slide from his sheath.  Bracing yourself against a desk, you lean over and call the wolf to you, ordering him to start licking you.  His tongue dives in right away, slathering your [if cunts of player > 0]crotch and sliding into your cunt in an effort to please his alpha and earn his reward[otherwise]pucker and pressing his slobbery tongue into it to get you ready[end if].";
	say "     After a few minutes of very pleasurable attention by his lupine tongue that makes your [if cunts of player > 0]pussy quiver and cum in ecstasy[otherwise]asshole relaxed and slick[end if], you decide he's done well and call him up to mount you.  Obeying his alpha, he leaps onto your back, bracing his front paws beside your hands on the desk and drives his penis into you.  His wolf cock spreads your slathered [if cunts of player > 0]cunt[otherwise]anus[end if] open and he starts thrusting into you.  You press back into his thrusts and urge him to take you harder and faster, like the wild beast he is.  You order him to fuck you hard, to show his alpha what a strong male he is, to [if cunts of player > 0]breed[otherwise]screw[end if] you like the animal he is.  He licks and nips at your neck, growling softly as he obeys and starts pounding his feral body against yours.  You moan and growl in pleasure beneath him, enjoying the rough fucking from your pet.  His throbbing, leaking cock pumps into you again and again, filling your whole body with ecstasy with each push into you.  As his swollen knot finally pops into you, he howls in pleasure and unleashes his hot, thick seed into you [if cunts of player > 0]in an effort to breed you[otherwise], filling your bowels with his hot load[end if].  When his knot finally goes down and he hops off of you, you give his ears a scritch, tell him how well he did and let him give you a few licks to clean the leaking excess before gathering up your stuff and getting back to other matters.";
	say "[impregchance]";
	now libido of player is ( ( libido of player * 2 ) / 5 );

to say fangsex4:		[assfuck Fang]
	say "     Deciding to remind the big wolf that you're in charge, you stroke your throbbing cock and call with big wolf over.  Noticing your erection, the wolf comes over obediently and starts licking at it, slathering his slobbering tongue all over it.  You stroke his head and rumble in pleasure, only stopping him once you're good and slick.  Ordering him to turn, you get him to raise his tail for you, ears dipped and cowed before his strong alpha.  Climbing atop the big wolf, you line yourself up with his tight pucker and sink yourself into him.  He releases a soft growl and whimpers a little, but submits to you and takes it.  You nibble his ear and whisper what a good guard he's been and how pleased you are with him.  You pound your cock into him firmly, adding how happy you are with his tight ass and that's such a good beta for bending over and taking his alpha's cock.  Reaching around, you wrap your hand around his shaft, finding it hard and throbbing, enjoying the good, hard fuck he's getting.  Pumping hard and fast, you get him to howl under you as you thrust hard into his ass and unleash your hot cum, painting his insides with your seed, claiming him once more as yours.  The wolf's semen sprays onto the floor, forming a large puddle of thick, white wolfcum.";
	now libido of player is ( ( libido of player * 2 ) / 5 );


Section 3 - Fang and Sandra

instead of going outside from Bunker while ( lastrabbitfuck - turns > 15 and Sandra is in the Bunker and Fang is in the Grey Abbey Library and lastFangfucked - turns > 7 and libido of Fang < 2 and ( hp of Fang is 1 or hp of Fang is 2 ) ):
	now lastrabbitfuck is turns;
	now lastfangfucked is turns;
	move player to Grey Abbey Library;
	say "     As you're preparing to head back out, you catch sight of Sandra slipping through the door to the Library[if libido of Fang is 1] again.  Once again, there's[otherwise].  There's[end if] something furtive about her actions and so you remain quiet and follow out shortly after her.  Outside in the library, you stay hidden among the stacks, watching her move towards the big wolf on guard[if Onyx is in Grey Abbey Library or Snow is in Grey Abbey Library].  They are alone in here right now, or at least so they think[end if][if libido of Fang is 1].  With a few quiet whispers,[otherwise].  It becomes clear what she's after when[end if] she puts her arms around him and starts stroking his cock, getting the big, feral wolf hard.  After a little teasing and some slobbery kisses from the lupine's tongue, she moves onto all fours and waves her rump for him.";
	say "     'Oh, take me, you big beast!  I want to be fucked like an animal!' the usually shy and quiet bunny cries out as the wolf's moving atop her.  It seems she's becoming more lustful with her time waiting in the bunker, giving into her hidden lusts more and more.  Clearly the rabbit girl is much kinkier than she lets on.  You grin as you watch the wolf's cock spreading the bunny's wet, dripping folds before pounding and thrusting into her like a wild, feral wolf.  Getting quite aroused by the erotic display before you, you rub your hands over your body.  Shall you head over to join them [if libido of Fang is 1]this time [end if](Y) or remain watching quietly (N)?";
	if the player consents:
		say "     Wanting to join in on the fun, you slip out of the shadows and quietly approach the pair.  As you move up close, you get a better view of that throbbing cock slipping into the bunnygirl's wet folds again and again.  Once right behind them, you grab the wolf's balls, telling him to keep fucking that horny bunny.  Sandra squeaks in embarrassment but doesn't stop pushing herself back into each of Fang's thrusts.  You slide your hand over the wolf's balls to tease her pussy as it slides over his cock.  'I... it's... oh, gods! He's just such a sexy animal,' she moans as her excitement only builds at being caught beneath the feral wolf.";
		if cocks of player > 0:
			say "     Your cock throbs with excitement as you watch the two going at it.  Wanting to take part, would you prefer to mount the wolf (Y) or give the horny bunny some cock to suck (N)?";
			if the player consents:
				say "[fangsandramount]";
			otherwise:
				say "[fangsandrasuck]";
		otherwise if cunts of player > 0:
			say "     Your pussy quivers with excitement as you watch the two going at it.  Wanting to take part, would you prefer to lick at their cock and snatch (Y) or have the horny wolf lick your needy pussy (N)?";
			if the player consents:
				say "[fangsandralick]";
			otherwise:
				say "[fangsandratongue]";
		otherwise:						[neuter]
			say "[fangsandralick]";
		say "     When you're done and the wolf's knot has gone down enough to pop free, you get the wolf to lick her dripping snatch clean, enjoying the show of her squirming with Fang's tongue stuffed into her overflowing pussy.  You play with the bunny's tits, nursing some milk from them until she cums several more times.  Smiling in your arms, panting after her wild time with you both, Sandra gives you a kiss.  'Fang's out here on his own, standing guard for us.  I wanted... I just... I felt he should get a little reward,' she says softly.  You slip a pair of fingers into her pussy, teasing her clit, asking if that's all.  The bunny girl moans and nibbles her lip.  'Oh, who am I kidding?  He's just such a big, powerful wolf.  It was just so [']wrong[']; I had to have him.'  The wolf grins and licks her muzzle, making her smile and kiss him in return.  After some further cuddling, you let her up so she can slip back into the bunker before anyone comes looking for her.  'Maybe we could do this again sometime,' Sandra says softly to you, before running quickly back inside.";
		now libido of Fang is 3;
		decrease thirst of player by 15;
		if thirst of player < 0, now thirst of player is 0;
		now libido of player is libido of player / 4;
	otherwise:
		say "     Deciding you'd prefer to watch the show, you remain in the shadows of the bookshelves[if cocks of player > 0] and stroke your throbbing meat[otherwise if cunts of player > 0] and finger your feminine folds[end if].  The bunny is getting pounded good and hard by your guard wolf, his thick knot pressing at her wet lips each time, trying to push fully in.  Sandra paws at the ground whimpering and moaning a lot, but is clearly loving having the big, bad wolf atop her.  Growling, the wolf takes the nape of her neck between his teeth and drives hard into her, forcing his knot into her and tying with her.  His cock throbs and his balls twitch, clearly pumping his rich seed into her.  She releases a long, satisfied moan as her belly fills with wolfcum[if cocks of player > 0].  You pump a hand quickly over your cock, stifling your moans as you spray a large puddle of cum onto the floor at the sight of their mating[end if][if cunts of player > 0].  You drive several fingers into your twat, soaking your crotch and hand in your feminine juices until they dribble between your fingers[end if].  Their wild mating done, Fang snuggles up with Sandra, licking and kissing the bunny girl until his knot finally goes down.  Once released, the rabbit gets up quickly, wipes away the dribbling cum from her slit and sneaks back into the bunker.  You wait in the shadows for a while before slipping out, acting as if you had just emerged from the bunker[if libido of Fang is 0].  You do give Fang a scritch on the ears as you go past him[otherwise if libido of Fang is 1].  The wolf seems to grin at you as you come out and he makes a show of slowly licking his cock.  You get the feeling that the wolf knew you were watching him fuck the horny bunny[end if].";
		increase libido of Fang by 1;

to say fangsandralick:
	say "     Still stroking the bunny's snatch, you lean down and nuzzle under the wolf's large balls.  Close up, you can see the bunny's cunt gripping and pulling at the wolf's cock each time he withdraws, her body not wanting to release it.  You press your face in there, licking and kissing at that slick, juicy flesh.  You run your tongue over them both, then move in to focusing on the bunny's swollen clit, licking and sucking it hard as the wolf's knot tries to push into her.  After several hard pushes, it pops in and Sandra cries out in delight.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  You can feel the wolf's balls tense up and see his cock swell a little further as his hot load gushes into the horny bunny he's tied with so he can fill her with his semen.  As you're licking at them, lapping up the escaping overflow of jizz, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her[if cocks of player > 0], and it become too much for you to hold back longer and soon enough you're emptying your balls onto the floor as you pump your cock hard[otherwise if cunts of player > 0], and it become too much for you to hold back longer and soon enough you're cumming hard with several fingers buried in your own snatch[otherwise] and can't help but smile a little[end if].";

to say fangsandrasuck:
	say "     Moving in front of them, you bring your throbbing cock towards Sandra's muzzle.  Fang, taking the bunny's nape in his neck, makes her moan loudly and you slide your cock into her open muzzle.  The bunny licks and sucks hungrily at it while getting fucked by the wolf creature.  You run your hands over her head, stroking her ears as you tell her how sexy she looks like that, having a big, feral wolf fucking her.  She blushes brightly at her ears and cheeks, but is clearly turned on by it and pushes hard back into his thrusts.  A few more thrusts as you hear the pop of the wolf's knot pushing into her wet cunt, tying them together so he can fill her with his semen.  As you pump your cock into her eager muzzle, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough you're emptying your balls down her throat.";

to say fangsandramount:
	say "     Moving in behind Fang, you get your throbbing cock lined up with his tailhole, then drive it into him as he thrusts into the bunny.  Fang releases a soft whimper, but takes your cock easily enough in his experienced hole.  Sandra, meanwhile, moans loudly as this forces the wolf's knot into her, tying them together.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  You can feel Fang's tailhole clenching around you as his ballsac pulls up and his hot load sprays into the eager rabbit.  You pound away at his ass, making sure the wolf cums long and hard to give Sandra every single drop of his thick seed.  Imagining the bunny girl stuffed with wolf cum or even better, growing cubs inside her, becomes too much for you to hold back longer and soon enough you're emptying your balls into the wolf as well.";

to say fangsandratongue:
	say "     Moving in front of them, you bring your dripping cunt to Fang's muzzle.  The wolf needs no prompting and dives his tongue into your crotch, licking at your pussy before diving his tongue into you.  His lupine tongue slides around inside you, lapping up your aroused juices as you watch them fucking.  'Oh, that looks so hot,' the bunny moans between increasingly hard thrusts.  'I've got to give that tongue a try sometime.'  Excited by your juices, the wolf pounds at the bunny harder and harder until he manages, with a pop, to push his knot into her and tie them together so he can fill her with his semen.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  As the wolf licks at you, you imagine the bunny girl stuffed with wolf cum or even better, growing cubs inside her, and it become too much for you to hold back longer and soon enough cumming hard as well, soaking the wolf's muzzle.";

to say fangsandrasex:
	now lastrabbitfuck is turns;
	increase lust of Fang by 1;
	say "     Recalling that you haven't spent time with Sandra in a while, you lead Fang over to one of the side rooms before poking your head in the bunker long enough to call the bunny girl over[if ( number of booked people + number of bunkered people ) > 3 and libido of Fang > 5].  The others smile, having picked up on what's going on, but saying nothing as she heads out to join you[otherwise if ( number of bunkered people + number of booked people ) > 3].  The others inside glance over for a moment, but largely ignore the brief intrusion and the bunny girl's exit[otherwise].  The bunny girl exits the bunker to come join you[end if].  Once in the side room, the bunny girl [if libido of Fang > 5]grins playfully and[otherwise]blushes a little to find Fang there, but[end if] rushes over to hug the big wolf around the neck.  You slip off your pack and clothes, smiling to see that Sandra's already got her paw at the wolf's hard cock.  Clearly she's been looking forward to this as much as your guard wolf has.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if lust of Fang is 3 and hp of Fang is 1:			[3rd threesome w/Fang in this playthrough w/basic Fang]
		say "     As Sandra strokes the wolf's cock, she spreads his precum over it, getting it nice and slick.  'Mmm... would you like a turn under this sexy beast.  I'd love to see you bent over for this big wolf[if cunts of player is 0] and taking it up the ass.  That'd be really hot,'[otherwise], getting bred as his bitch.   That'd be really sexy,'[end if] she moans, fingering herself.  Looking at that throbbing, red cock, you find yourself tempted by the idea of letting the wolf ravage you as he did with Sandra.  Fang, as if sensing your momentary lapse in control, moves up to you and begins trying to mount you.  Shall you let him (Y) or reassert your dominance (N) ?";
		if the player consents:
			say "[fangsub]";
			now hp of Fang is 3;			[Fang becomes alpha]
			now libido of player is libido of player / 2;
			infect "Feral Wolf";
		otherwise:
			say "     Momentarily tempted by sexy bunny's offer, you manage to shake it off and grab the wolf roughly by the neck.  'No Fang, I'm the alpha and that's the way it stays,' you growl, forcing him to the floor.  He growls a little in frustration, but you hold him firm.  'Don't you get uppity because Sandra lets you fuck her.  I'm still the one on top here,' you add grabbing his balls firmly, making him whine and dip his ears.  'I merely let you because she enjoys it, not because you deserve to be anything more than beta.'";
			if cocks of player > 0 and cunts of player > 0:
				say "     It seems Fang will need a reminder of his place beneath you.  Being both male and female, there are options open to you.  Would you prefer to fuck the wolf (Y) or ride his lupine cock (N)?";
				if the player consents:
					say "[fangdomfuck]";
				otherwise:
					say "[fangdomride]";
			otherwise if cocks of player > 0:
				say "[fangdomfuck]";
			otherwise:
				say "[fangdomride]";
			now hp of Fang is 2;			[Fang locked into beta-mode]
			now libido of player is libido of player / 4;
			if thirst of player > 50, decrease thirst of player by 10;
	otherwise if libido of Fang is odd:
		say "     After playing with the wolf's cock for a bit, she takes a seat in one of the chairs with her legs apart.  Showing off her large snatch, the bunny girl holds her wet folds open, offering herself to the wolf's long tongue.  'Come on, you big beast, eat the poor bunny up!'  Needing no further invitation, the feral wolf's muzzle is nosing at her dripping cunt right away.  You move to Fang's side, stroking his back and taking over tending to his cock while you watch the show.  After a few playful sniffs and teasing brushes of his tongue-tip, he dives right in, slathering his long tongue all over it.  Soon the licking over those ample folds turn into dives inside her vagina to lap up her juices, exciting the bunny further[if libido of fang is 3].  'Oh yes!  Good boy!  I wish I'd thought of this sooner[otherwise].  'Oh yes!  Nice and deep, you animal[end if]!' she moans and cries out lustfully, gripping the arms of the chair tightly to steady herself.";
		say "     Still pumping at the wolf's cock, you scritch his ears, telling him what a fine job he's doing.  Now that they're going at it rather strong, it's time for you to join in this threesome.  Shall you ";
		if cocks of player > 0:
			say "mount the wolf (Y) or give the horny bunny some cock to suck (N)?";
			if the player consents:
				say "[fangsandramount2]";
			otherwise:
				say "[fangsandrasuck2]";
		otherwise:
			say "suck the wolf off (Y) or get some wolf tongue action as well (N)?";
			if the player consents:
				say "[fangsandralick2]";
			otherwise:
				say "[fangsandratongue2]";
		say "[fangsandracloser1]";
	otherwise:
		say "     Spreading the wolf's pre across his cock, she gets it nice and glistening before moving onto all fours and raising her rump to him.  'Come on, you big beast,' she moans quietly. 'Take this poor bunny girl and faaahhh!'  Her request turns into a load, lustful moan as Fang mounts her mid-sentence, sinking his feral cock into her pussy.  You pat the wolf's back and rub his heavy balls against the bunny's pussy as he thrusts into her again and again, as if to show her what's coming.  'Mmm... yes,' the usually quiet bunny girl cries out as the wolf keeps pounding into her like a wild animal, 'fuck me hard, you sexy creature.  Ravage your bunny prey... mmm...'";
		say "     You slip your fingers to the bunny's wet folds, caressing them as your wolf's cock slides in and out.  Now that they're going at it rather strong, it's time for you to join in this threesome.  Shall you ";
		if cocks of player > 0:
			say "mount the wolf (Y) or give the horny bunny some cock to suck (N)?";
			if the player consents:
				say "[fangsandramount]";
			otherwise:
				say "[fangsandrasuck]";
		otherwise:
			say "lick at their cock and snatch (Y) or have the horny wolf lick your needy pussy (N)?";
			if the player consents:
				say "[fangsandralick]";
			otherwise:
				say "[fangsandratongue]";
		say "[fangsandracloser1]";


to say fangsandramount2:
	say "     Moving in behind Fang, you get your throbbing cock lined up with his tailhole, then push it into his tight pucker.  Fang releases a soft whimper, but takes your cock easily enough in his experienced hole and doesn't let up at all with his licking.  Sandra, meanwhile, moans loudly as this presses the wolf's muzzle forward, bumping his nose against her clit and driving his tongue even deeper into her.  She rubs her bunny paws over his ears and head, rolling her hips in the chair as she gets increasingly loud in her lustful moaning as she climaxes.  With your paw around the wolf's cock, you squeeze and pump it while you pound away at his ass, making sure the wolf cums long and hard.  Feeling his throbbing, pulsing penis in your hand as his balls spread their load across the floor, you can hold back no longer and blast your seed into the wolf's bowels, claiming him once more as your own.";
	wait for any key;

to say fangsandrasuck2:
	say "     Moving over beside Sandra, you bring your throbbing cock to the bunny's muzzle.  Eyes closed as she enjoys the lustful licking, she doesn't notice you there until you let your erection brush across her muzzle.  Seeing it there, the takes it quickly in her paw and starts licking and sucking at it, moaning around your meaty shaft as the wolf's tongue keeps going at her.  Whining a little at the lack of attention to his over-aroused cock, Sandra manages to reach out with one of her long bunny feet and starts caressing it against the wolf's throbbing shaft.  Clearly pleased by the renewed attention to his erection, he licks at her with added vigour, making her squirm all the more in her seat, cumming repeatedly.  You rub your hands over her long ears and cute muzzle.";
	say "     By the time you cum as well, she's had another orgasm from the wolf's lapping tongue.  She guzzles down your [if cock width of player > 9]ample [end if]load, then quickly pushes you away.  Startled a little by her suddenness, you stumble back a couple of steps.  But this gives you a clear view as Sandra dives under the Fang, grabbing his cock and pulling it to her muzzle, sucking him as she squeezes his knot and balls.  The big wolf howls, draining his balls into the cum-hungry bunny as he pounds it into her smiling muzzle, leaving her nice and full with two loads of semen.";
	wait for any key;

to say fangsandralick2:
	say "     Lowering yourself down under the wolf, you run your tongue slowly over his throbbing, red cock and are rewarded with a spurt of pre across your face.  Clearly quite excited from the bunny's juices, you enjoy the rumble of pleasure he releases as you slide your mouth down over his pointed glans.  You let your lips slide slowly down his throbbing member, enjoying his strong, virile taste.  You can hear Sandra's cries growing more excited as she cums loudly and you bring one hand between your legs to finger yourself quickly.  Kneading the wolf's balls with your free hand, you take his full length in and almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat.  You moan wetly around his spurting meat, orgasming as you rub at your clit while sucking of the big wolf.  Sliding off his spent shaft, you lick your lips for the overflowing cum and rub your belly, enjoying the warmth of your pet's semen inside it.";
	wait for any key;

to say fangsandratongue2:
	say "     Pulling up a chair, you move in beside Sandra.  Patting the wolf's head, you draw his attention to your waiting pussy and he obediently switches over to licking at you.  He dives right into it, too excited for any teasing first and you moan in pleasure.  Sandra emits a little whine of disappointment as the tongue disappears, but moans happily as you lean over and start playing with her breasts.  Too excited to resist you lesbian advances, she moans lustfully and kisses you.  You slide your tongue into the bunny's muzzle, playing it across hers and over her large incisors.  She wriggles in delight as you tease her nipples while Fang's tongue returns to her pussy.  The wolf switches back and forth between you both, lavishing attention upon your cunts until you're both moaning and screaming in orgasm in each other's arms.";
	say "     Fang sits back on his haunches and whines softly, his red cock engorged and throbbing with need.  Grinning at one another, you both slide onto the floor and take his maleness in your hands.  You play your fingers across his cock, knot and balls.  He rumbles happily and pants, watching you both kissing each other passionately, resulting in you both getting painted with streaks of while wolf semen across your lovely bodies as he cums with a howl.";
	wait for any key;

to say fangsandracloser1:
	say "     After it's all over, you're left snuggling Sandra in your arms, playfully running your fingers over her body as Fang gives you each some slobbery licks to your sticky crotches.  He tends to you both diligently, cleaning up his horny bunny lover and his alpha.  Again, you tease Sandra about what a kinky bunny she is, coming out here to play with a wild beast, knowing how much that excites her.  She blushes a little, but grins and nods.  '[one of]He's just such a big, sexy animal,[or]I just can't help myself,[or]I just want him to ravage me so bad,[or]I can hardly wait to play with him again[or]It's so deliciously [']wrong['] that I can't help but give myself up to the sexy beast,[or]I'm his slutty rabbit prey,[in random order]' she says with an excited giggle.  Fang nuzzles at her face, giving her a slobbery lick that turns into a kiss with the wolf's tongue in the bunny's muzzle[if thirst of player > 50].  As they kiss, you nuzzle at the bunny's ample bosom, nursing at her nipple for some refreshing milk to quench your thirst with a quick drink[end if].  After some more cuddling, you let her up so she can slip back into the bunker before anyone comes looking for her.  'Let me know when you'd like to do this again, sweety,' Sandra says softly to you, before running quickly back inside.";
	increase libido of fang by 1;
	if libido of fang is 8, now libido of fang is 6;
	now libido of player is libido of player / 4;
	if thirst of player > 50, decrease thirst of player by 10;
	wait for any key;


[ hp of Fang			]
[ 0 - not found			]
[ 1 - at Library			]
[ 2 - locked as Beta		]
[ 3 - Alpha w/Sandra		]
[ 4 - Alpha w/o Sandra		]
[ 100 - Fang refused		]

[ Libido of Fang (Sandra)	]
[ 0 - normal			]
[ 1 - watched once		]
[ 2 - watched twice (closed)	]
[ 3 - joined in (open)		]
[ even = sex			]
[ odd = oral			]
[ 5 - dominance scene		]
[ 6+ - done it often		]
[ 8, rolled back to 6		]


Section 5 - Fang Dominance

Chapter 1 - w/Sandra

to say fangsub:
	say "     With a moan, you lower yourself onto all fours, offering yourself to the wolf.  He growls and climbs atop you, rubbing his stiff member against your rear, leaking precum onto you.  Sandra grins happily and rubs her paw over the wolf's shaft, helping to guide it to your ";
	if cunts of player > 0:
		say "wet cunt.  She rubs a paw over your pussy's lips, spreading them open.  'I knew you couldn't resist him.  He's just such a wild beast.'  She lets his pointed glans slide over your wet folds, teasing you further.  'Beg to be his bitch.  It'll feel so good to say it,' she moans, still caressing your spread folds.  You nod and cry out for Fang to take you, to use you like his bitch.  Fang growls and pounds his hips forward, pulling it from Sandra's grip and driving it hard and fast into your cunt.  As he does, he growls one word softly in your ear.  'Mine!'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon.  The large wolf growls and nips at your neck.  Sandra, not content to merely watch, rubs the wolf's ballsac against your leaking pussy as if to show you what's in store for you.  But you don't need the reminder, your eager body longing more and more for the feral wolf's hot seed inside you so he can claim you.  The bunny girl leans in, licking at the wolf's knot and your stretched folds as Fang tries to tie with you.  With a paw between her legs[if cocks of player > 0] and the other on your throbbing shaft[end if], she moans about how sexy you both look right now.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch.  He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your womb with his strong, dominant seed.  You cum again from the pleasure of giving yourself over to him and receiving his cum.  It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Sandra, having cum as well a few times while fingering herself, continues licking, cleaning away the little cum that's escaped around his knot.  'Doesn't that feel so good?  Having given yourself over to the sexy beast?' she says, rubbing your stuffed tummy.  You can only nod, too overcome in pleasure to speak.  Fang seems to grin and licks your cheek.  You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much.  When the knot softens and pops free, the bunny girl eagerly laps up the overflowing semen.  She gives you both hugs and repeats how sexy that was to watch before grabbing her stuff and heading back into the bunker.";
		wait for any key;
	otherwise:
		say "tight asshole.  She rubs a paw over your puckered hole, spreading her pussy juices onto it.  'I knew you couldn't resist him.  He's just such a wild beast.'  She lets his pointed glans slide across your anus, slathering it with his precum as well to prepare you further.  'Beg to be his bitch.  It'll feel so good to say it,' she moans, fingering your hole and spreading the slick juices inside.  You nod and cry out for Fang to take you, to use you like his bitch.  Fang growls and pounds his hips forward, pulling it from Sandra's grip and driving it hard and fast into your rear.  As he does, he growls one word softly in your ear.  'Mine!'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon.  The large wolf growls and nips at your neck.  Sandra, not content to merely watch, rubs the wolf's ballsac against your ass as if to show you what's in store for you.  But you don't need the reminder, your eager body longing more and more for the feral wolf's hot seed inside you so he can claim you.  The bunny girl leans in, licking at the wolf's knot and your stretched pucker as Fang tries to tie with you.  With a paw between her legs and the other on your throbbing shaft, she moans about how sexy you both look right now.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch.  He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your bowels with his strong, dominant seed.  You cum again from the pleasure of giving yourself over to him and receiving his cum.  It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Sandra, having cum as well a few times while fingering herself, continues licking, cleaning away the little cum that's escaped around his knot.  'Doesn't that feel so good?  Having given yourself over to the sexy beast?' she says, rubbing your stuffed tummy.  You can only nod, too overcome in pleasure to speak.  Fang seems to grin and licks your cheek.  You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much.  When the knot softens and pops free, the bunny girl eagerly laps up the overflowing semen.  She gives you both hugs and repeats how sexy that was to watch before grabbing her stuff and heading back into the bunker.";
		wait for any key;

to say fangdomfuck:
	say "     Deciding the wolf needs a good lesson to remind him that his place is beneath you, you keep him pinned down and climb atop him.  He whimpers softly, but raises his tail as you slide your hard cock under it.  He squirms a little, so you grip his neck harder and drive your shaft into his tailhole, spreading it open.  Sandra, watching the surprise dominance fight, moans in pleasure as she watches you fuck the big wolf, fingering her pussy wildly.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you pound away at him.  'You get fucked when I say you do.  You top when I say you do.  And if you forget that again, I'll go out there and find a strap-on for Sandra and we'll take turns pounding you until you're nothing but a slutty omega bitch,' you snarl, giving Sandra a wink and a grin that Fang can't see.  Sandra smiles and replies, 'That sounds really hot, too.'  The bunny girl, finding that mental image enjoyable, fingers herself all the faster.  Fang, meanwhile, whimpers submissively and starts pushing into your thrusts, accepting him place beneath you with a soft rumble of 'You are alpha.'  You relax your grip of him, but keep pounding him hard and fast, until finally you cum hard, blasting your load into his bowels and the wolf cums hard in response, staining the floor with another puddle of sticky cum.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Pleased with his submission to you again, you scritch his ears and ease your cock from his ass.  He pads around and nuzzles you both, giving you affectionate licks on the cheek before dipping his head and licking your cock clean while you rub his ears.  As he's cleaning up Sandra, you kiss the bunny and play with her bosom[if thirst of player > 50].  You wrap your lips around one of her perky nipples and take a quick drink of her milk while she moans in delight at the attention, saying again how sexy it was to see you do that[end if].  When Fang's got her cleaned up, you let her slip back into the bunker while you tie Fang back by the door.";

to say fangdomride:
	say "     Deciding the wolf needs to be shown who's in charge, you push him roughly over onto his back.  His feral legs squirm in the air as you hold him there and climb atop him, keeping a grip on his balls to rein him in while the other grips his throat.  You grind your pussy down over his cock, teasing his throbbing shaft and leaking your juices over it, but you keep him from thrusting into you.  Sandra, watching the surprise dominance fight, moans in pleasure as she watches rubbing against the big wolf's cock, fingering her pussy wildly.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you slide your aroused pussy across this throbbing penis.  'You get fucked when I say you do.  You top when I say you do.  And if you forget that again, I'll go out there and find a strap-on for Sandra and we'll take turns pounding you until you're nothing but a slutty omega bitch,' you snarl, giving Sandra a wink and a grin that Fang can't see.  Sandra smiles and replies, 'That sounds really hot, too.'  The bunny girl, finding that mental image enjoyable, fingers herself all the faster.  Fang, meanwhile, whimpers submissively and tilts his head back, baring his throat to you, accepting him place beneath you with a soft rumble of 'You are alpha.'  You shift your position and slide slowly down his cock, your cunt quivering in delight after having the thick wolf cock so tantalizingly close.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You ride him hard and fast, needing this almost as much as he does after all that teasing.  His hard shaft throbs inside you, leaking precum into your hot pussy.  You knead the wolf's ballsac and push yourself down hard onto his knot, pushing it into you.  'These are mine,' you growl as you fondle his balls.  'And I'm going to take what I want from them when I want,' you rumble, clamping your pussy down firmly around his knot, enjoying his lustful howl as he blasts his thick semen into you, filling your womb with his load.  Sandra, fingering herself frantically during all this, cumming repeatedly.  Panting for breath, you nibble along the wolf's throat while waiting for his knot to go down.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Pleased with his submission to you again, you scritch his ears and ease yourself off his spent shaft.  He pads around and nuzzles you both, giving you affectionate licks on the cheek before dipping his head and licking your leaking pussy clean while you rub his ears.  As he's cleaning up Sandra, you kiss the bunny and play with her bosom[if thirst of player > 50].  You wrap your lips around one of her perky nipples and take a quick drink of her milk while she moans in delight at the attention, saying again how sexy it was to see you do that[end if].  When Fang's got her cleaned up, you let her slip back into the bunker while you tie Fang back by the door.";

to say fangalphasex:
	if the remainder after dividing lust of Fang by 3 is 0:
		say "[fangalphaoral]";
	otherwise if the remainder after dividing lust of Fang by 3 is 1:
		say "[fangalphafucked]";
	otherwise if the remainder after dividing lust of Fang by 3 is 2:
		say "[fangalphatrio]";
	increase lust of fang by 1;

to say fangalphatrio:
	say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath.  He rumbles softly and bumps you away with his head, then nips at your rear, sending you off towards the bunker while he strides over the side room.  Recalling that it has been some time since Sandra joined you both, you conclude that must be what your alpha desires.  You poke your head in the bunker long enough to call the bunny girl over[if ( number of booked people + number of bunkered people ) > 3].  The others smile, having picked up on what's going on, but saying nothing as she heads out to join you[otherwise].  The bunny girl exits the bunker to come join you[end if].  Once in the side room, the bunny girl grins playfully and rushes over to hug the big wolf around the neck.  You slip off your pack and clothes, smiling to see that Sandra's already got her paw at the wolf's hard cock.  Clearly she's been looking forward to this as much as the big wolf has.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if the remainder after dividing libido of Fang by 3 is 2:
		say "     After playing with the wolf's cock for a bit, she takes a seat in one of the chairs with her legs apart.  Showing off her large snatch, the bunny girl holds her wet folds open, offering herself to the wolf's long tongue.  'Come on, you big beast, eat the poor bunny up!'  Needing no further invitation, the feral wolf's muzzle is nosing at her dripping cunt right away.  You move to Fang's side, stroking his back and taking over tending to his cock while you watch the show.  After a few playful sniffs and teasing brushes of his tongue-tip, he dives right in, slathering his long tongue all over it.  Soon the licking over those ample folds turn into dives inside her vagina to lap up her juices, exciting the bunny further.  'Oh yes!  Nice and deep, you animal!' she moans and cries out lustfully, gripping the arms of the chair tightly to steady herself.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As you watch the strong wolf eating out his bunny prey, you sit there playing with yourself.  As if noticing your inattentiveness, Fang pauses in his licking to growl at you, cocking his leg to show his throbbing meat.  Needing no further instructions from your alpha, you lower yourself under the wolf.  You run your tongue slowly over his throbbing, red cock and are rewarded with a spurt of pre across your face.  Clearly quite excited from the bunny's juices, you enjoy the rumble of pleasure he releases as you slide your mouth down over his pointed glans.  You let your lips slide slowly down his throbbing member, savouring his strong, virile taste.  You can hear Sandra's cries growing more excited as she cums loudly and you bring one hand between your legs to [if cocks of player > 0]stroke[otherwise]finger[end if] yourself quickly.  Kneading the wolf's balls with your free hand, you take his full length in and almost choke as he cums, spraying a torrent of thick, rich wolfcum into your mouth and down your throat.  You moan wetly around his spurting meat, orgasming as you [if cocks of player > 0]pump at your hard rod[otherwise]rub at your clit[end if] while sucking on your alpha's maleness.  Sliding off his spent shaft, you lick your lips for the overflowing cum and rub your belly, enjoying the warmth of your master's semen inside it.";
	otherwise if the remainder after dividing libido of Fang by 3 is 0:
		say "     Spreading the wolf's pre across his cock, she gets it nice and glistening before moving onto all fours and raising her rump to him.  'Come on, you big beast,' she moans quietly. 'Take this poor bunny girl and faaahhh!'  Her request turns into a load, lustful moan as Fang mounts her mid-sentence, sinking his feral cock into her pussy.  You pat the wolf's back and rub his heavy balls against the bunny's pussy as he thrusts into her again and again, as if to show her what's coming.  'Mmm... yes,' the usually quiet bunny girl cries out as the wolf keeps pounding into her like a wild animal, 'fuck me hard, you sexy creature.  Ravage your bunny prey... mmm...'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You slip your fingers to the bunny's wet folds, caressing them as your alpha's cock slides in and out.  Now that they're going at it rather strong, it's best you join this threesome as well.  Still stroking the bunny's snatch, you lean down and nuzzle under the wolf's large balls.  Close up, you can see the bunny's cunt gripping and pulling at the wolf's cock each time he withdraws, her body not wanting to release it.  You press your face in there, licking and kissing at that slick, juicy flesh.  You run your tongue over them both, then move in to focusing on the bunny's swollen clit, licking and sucking it hard as the wolf's knot tries to push into her.  After several hard pushes, it pops in and Sandra cries out in delight.  'Oh yes,' she cries, 'Gimme that knot, you wild wolf!'  You can feel Fang's balls tense up and see his cock swell a little further as his hot load gushes into the horny bunny he's tied with so he can fill her with his semen.  As you're licking at them, lapping up the escaping overflow of jizz, you imagine the bunny girl stuffed with your alpha's cum or even better, growing cubs inside her[if cocks of player > 0], and it become too much for you to hold back longer and soon enough you're emptying your balls onto the floor as you pump your cock hard[otherwise if cunts of player > 0], and it become too much for you to hold back longer and soon enough you're cumming hard with several fingers buried in your own snatch[otherwise] and can't help but smile a little[end if].";
	otherwise if the remainder after dividing libido of Fang by 3 is 1:
		say "     After letting Sandra stroke his cock for a bit, spreading his precum across that red shaft, Fang pads over to you and nudges you over onto all fours.  Clearly Fang, having played with the bunny the last few times, wants to have his way with you again while the bunny watches.  You moan softly in anticipation and strip yourself as you move into position for your lupine master.  He growls and climbs atop you, rubbing his stiff member against your rear, leaking precum onto you.  Sandra grins happily and rubs her paw over the wolf's shaft, helping to guide it to your [if cunts of player > 0]wet cunt.  She rubs a paw over your pussy's lips, spreading them open[otherwise]tight asshole.  She rubs a paw over your puckered hole, spreading her pussy juices onto it before spreading your cheeks[end if] as Fang sinks into you.  'Mmm... that's a good bitch,' she moans, stroking your stuffed tummy.  'Let that big wolf fuck you like an animal.'  The wolf grips his front paws around you and pounds away at you hard and fast, making your stretched hole squeeze tightly around him.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You moan lustfully as the wolf ravages you like the beast he is, taking you with wild abandon.  The large wolf growls and nips at your neck.  Sandra, not content to merely watch, rubs the wolf's ballsac against your [if cunts of player > 0]leaking pussy[otherwise]ass[end if] while your eager body longs more and more for the hot seed of your alpha held within those full orbs.  The bunny girl leans in, licking at the wolf's knot and your stretched [if cunts of player > 0]folds[otherwise]pucker[end if] as Fang tries to tie with you.  With a paw between her legs[if cocks of player > 0] and the other on your throbbing shaft[end if], she moans louder and louder.  'You look so hot with a wolf cock stuffed inside you.  You're just a horny slut like me, aren't you?  Letting this big, feral wolf fuck you like his bitch.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him again to make you his bitch.  He growls and takes the nape of your neck in his teeth as he pounds his knotted cock in short, fast thrusts.  His hot load blasts deep inside you, flooding your [if cunts of player > 0]womb[otherwise]bowels[end if] with his strong, dominant semen.  You cum again from the pleasure of submitting to your alpha again and receiving his seed.  Sandra, having cum several times while watching the show, continues licking at that embedded knot, leaking away the little cum that's escaped around it.  Most of it thankfully remains locked inside you, filling your belly with the warmth of your master's cum.[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     After it's all over, Fang steps back from his two playmates and rolls onto his side, putting his slick, hard cock on display for you both.  Still sticky with his cum after the recent fun, you and Sandra lick your lips at the sight of it and move in to lavish attention upon it.  Together, you stroke and caress his balls and knot as your tongue play over his throbbing member.  You lick the lupine cum from every square centimeter of it, not wanting to let that strong, virile tasting fluid go to waste.  As you finish up with licking it, you and the bunny girl take turns sucking on it while rubbing through throbbing orbs";
	if the remainder after dividing libido of Fang by 3 is 2:
		say ".  Having already guzzled down a big load of the wolf's cum, you let Sandra finish him off, filling her belly as well with Fang's virile seed as he howls in pleasure.";
	otherwise if a random chance of 1 in 2 succeeds:
		say ".  You and Sandra playfully fight over the wolf's cock, pulling out all the stops while his rod is in your mouth to be the one to get his seed.  In the end, you're rewarded with hot pulses of lupine seed down your throat, filling your belly with your alpha's delicious, virile cum as he howls in pleasure.";
	otherwise:
		say ".  You and Sandra playfully fight over the wolf's cock, pulling out all the stops while his rod is in your mouth to be the one to get his seed.  In the end, she's the winner, sucking down his hot load and filling her belly with it as Fang howls in pleasure.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You cuddle with Sandra in your arms, playfully talking about how much you both enjoy letting the big wolf have his way with you and how sexy it is to see one of you under the wild beast.  While you talk, you both stroke the wolf's thick fur and kiss one another, enjoying your time together.  Eventually, Sandra has to head back and you need to get back to your other tasks, so you both are given slobbery kisses from Fang before heading out of the reading room.";
	increase libido of fang by 1;
	if libido of fang is 8, now libido of fang is 5;
	now libido of player is libido of player / 4;
	wait for any key;

Chapter 2 - w/o Sandra	[Only available if 'girl' is banned, removing Sandra from the game]

instead of going outside from Bunker while ( lastFangfucked - turns >= 24 and hp of Fang is 1 and girl is banned):	[ignored for 3+ days]
	now lastFangfucked is turns;
	say "     After stepping from the bunker and closing the heavy door, you are pounced upon by something.  As you start to struggle, you are surprised to find that it's Fang atop you.  From his growls and the hard cock rubbing against you, you surmise that the wolf's not playing around.  It's been some time since you've given the beast some attention and it looks like he's intent on satisfying his lusts with you whether you like it or not.  As his throbbing shaft grinds against you while he tries to get a better grip on you, the scent from the powerful beast is quite enticing.  It could be fun to just give in and let the big wolf have his way with you.  Shall you let him (Y) or reassert your dominance (N)?";
	if the player consents:
		say "[fangsub2]";
		now hp of Fang is 4;			[Alpha Fang w/o Sandra]
		now libido of player is libido of player / 2;
		infect "Feral Wolf";
	otherwise:
		say "     Momentarily tempted by idea of submitting to the wolf, you manage to shake it off and grab the wolf roughly by the neck.  'No Fang, I'm the alpha and that's the way it stays,' you growl, forcing him to the floor.  He growls a little in frustration, but you hold him firm.  'Don't you get uppity because I made you wait.  I'm still the one on top here,' you add grabbing his balls firmly, making him whine and dip his ears.  'I have more important things to deal with than you.  Just because you're guarding the place doesn't mean you're in charge, beta.'";
		if cocks of player > 0 and cunts of player > 0:
			say "     It seems Fang will need a reminder of his place beneath you.  Being both male and female, there are options open to you.  Would you prefer to fuck the wolf (Y) or ride his lupine cock (N)?";
			if the player consents:
				say "[fangdomfuck2]";
			otherwise:
				say "[fangdomride2]";
		otherwise if cocks of player > 0:
			say "[fangdomfuck2]";
		otherwise:
			say "[fangdomride2]";
		now hp of Fang is 2;			[Fang locked into beta-mode]
		now libido of player is libido of player / 4;

to say fangsub2:
	say "     With a moan, you lower yourself onto all fours, offering yourself to the wolf.  He growls and climbs atop you, rubbing his stiff member against your rear, leaking precum onto you.  You, with the help of the aggressive wolf's teeth, quickly pull off your pack and clothes so his throbbing cock can bump against your ";
	if cunts of player > 0:
		say "wet cunt.  Fang's sharp fangs nip at your shoulders as he drives himself hard and fast into your pussy.  As he does, he growls one word softly in your ear.  'Mine!'";
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon.  The large wolf growls possessively and nips at your neck.  You can feel his heavy balls slapping against your clit and your eager body longs more and more for the feral wolf's hot seed inside you.  You grow increasingly aroused by the idea of letting this wolf claim you, simply submitting yourself to being his.  You can feel his swelling knot pressing at your stretched folds as Fang tries to tie with you.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him to make you his bitch.  He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your womb with his strong, dominant seed.  You cum again from the pleasure of giving yourself over to him and receiving his cum.  It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		say "     The wild wolf fills you with so much cum that it starts to overflow, some managing to escape around his knot to flow down your thighs.  It feels so good, having given yourself up to the sexy beast.  Fang seems to grin and licks your cheek.  You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much.  When the knot softens and pops free, the wolf has you roll onto your back.  He eagerly laps up the overflowing semen and brings his slick, dripping cock over your lips.  You eagerly take your new alpha's hard rod into your mouth, licking and sucking at it.  He only clears away the excess cum, letting the rest linger inside you as a reminder that you're his now.  But you lavish attention on his lupine penis, cleaning away the semen and juices covering it and sucking him until he blows another load down your throat.  Sated, for now, the wolf leaves you there on the floor, stuffed wonderfully full of his seed and covered in your new alpha's scent.";
	otherwise:
		say "tight asshole.  Fang's sharp fangs nip at your shoulders as he drives himself hard and fast into your rear.  As he does, he growls one word softly in your ear.  'Mine!'";
		say "     You moan lustfully as the wolf thrusts into you hard and fast, over and over again, taking you with wild abandon.  The large wolf growls possessively and nips at your neck.  You can feel his heavy balls slapping against yours and your eager body longs more and more for the feral wolf's hot seed inside you.  You grow increasingly aroused by the idea of letting this wolf claim you, simply submitting yourself to being his.  You can feel his swelling knot pressing at your stretched pucker as Fang tries to tie with you.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As Fang's knot pops fully into you, you groan loudly and cum hard, begging him to make you his bitch.  He growls another soft, but firm, 'Mine!' in your ear before taking the nape of your neck in his teeth and pounding his knotted cock in short, fast thrusts as he blasts his hot load deep inside you, flooding your bowels with his strong, dominant seed.  You cum again from the pleasure of giving yourself over to him and receiving his cum.  It may just be your imagination, but it feels as if his load is bigger, the wolf stronger and more virile than you once believed.[impregchance]";
		say "     The wild wolf fills you with so much cum that it starts to overflow, some managing to escape around his knot to flow over your balls and down your thighs.  It feels so good, having given yourself up to the sexy beast.  Fang seems to grin and licks your cheek.  You know that your relationship with the wolf has changed, but you can't help but feel pleased about it, having enjoyed your place beneath him so much.  When the knot softens and pops free, the wolf has you roll onto your back.  He brings his slick, dripping cock over your lips and eagerly take the hard rod into your mouth, licking and sucking at it.  You can feel the warmth of his hot seed lingering inside you, reminding you that you're his now.  You lavish attention on his lupine penis, cleaning away the semen and juices covering it and sucking him until he blows another load down your throat.  Sated, for now, the wolf leaves you there on the floor, stuffed wonderfully full of his seed and covered in your new alpha's scent.";

to say fangdomfuck2:
	say "     Deciding the wolf needs a good lesson to remind him that his place is beneath you, you keep him pinned down and climb atop him.  He whimpers softly, but raises his tail as you slide your hard cock under it.  He squirms a little, so you grip his neck harder and drive your shaft into his tailhole, spreading it open.  With him properly pinned and stuffed, you fuck the big wolf hard and fast.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you pound away at him.  'You get fucked when I say you do.  You top when I say you do.  And if you forget that again, I'll go out there and find the tightest cock ring I can and I won't even let you cum unless I- say- so-!' you snarl, punctuating those final words with hard thrusts of your cock into him.  'I'll make you my slutty, omega bitch and then leave you with blue balls for weeks on end.'  Fang whimpers submissively and starts pushing into your thrusts, accepting him place beneath you with a soft rumble of 'You are alpha.'  You relax your grip of him, but keep pounding him hard and fast, until finally you cum hard, blasting your load into his bowels and the wolf cums hard in response, staining the floor with another puddle of sticky cum.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Pleased with his submission to you again, you scritch his ears and ease your cock from his ass.  He pads around and nuzzles you, giving you affectionate licks on the cheek before dipping his head and licking your cock [if cunts of player > 0]and cunt[end if] clean while you rub his ears.  Deciding to have a little more fun, you grab the wolf's head and drive your shaft into his fanged muzzle, ordering him to suck you off.  The wolf dips his ears and whines softly, finding the task difficult with his lupine muzzle, but does his best for his alpha.  He is soon rewarded with a messy blast of your hot semen down his throat, which he laps up and swallows down obediently.  Satisfied, you scritch his ears and let him resume his post.";

to say fangdomride2:
	say "     Deciding the wolf needs to be shown who's in charge, you push him roughly over onto his back.  His feral legs squirm in the air as you hold him there and climb atop him, keeping a grip on his balls to rein him in while the other grips his throat.  You grind your pussy down over his cock, teasing his throbbing shaft and leaking your juices over it, but you keep him from thrusting into you.  With him properly pinned, you grind down onto him, further taunting the aroused wolf.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'You be a good beta now and submit to your alpha,' you growl in his ear as you slide your aroused pussy across this throbbing penis.  'You get fucked when I say you do.  You top when I say you do.  And if you forget that again, I'll go out there and find tightest cock ring I can and I won't even let you cum unless I- say- so-!' you snarl, slapping your dripping pussy against the wolf's swollen balls to emphasize those final words.  'I'll make you my slutty, omega bitch and then leave you with blue balls for weeks on end.'  Fang whimpers submissively and tilts his head back, baring his throat to you, accepting him place beneath you with a soft rumble of 'You are alpha.'  You shift your position and slide slowly down his cock, your cunt quivering in delight after having the thick wolf cock so tantalizingly close.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You ride him hard and fast, needing this almost as much as he does after all that teasing.  His hard shaft throbs inside you, leaking precum into your hot pussy.  You knead the wolf's ballsac and push yourself down hard onto his knot, pushing it into you.  'These are mine,' you growl as you fondle his balls.  'And I'm going to take what I want from them when I want,' you rumble, clamping your pussy down firmly around his knot, enjoying his lustful howl as he blasts his thick semen into you, filling your womb with his load.  Panting for breath, you nibble along the wolf's throat while waiting for his knot to go down.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Pleased with his submission to you again, you scritch his ears and ease yourself off his spent shaft.  He pads around and nuzzles you, giving you affectionate licks on the cheek before dipping his head and licking your leaking pussy clean while you rub his ears.  Deciding to have a little more fun, you grab the wolf's head and press his muzzle to your cunt, ordering him to lick it all up.  The wolf dips his ears obediently and sets his tongue to work, diving it into your hot, sticky muff.  His long, lupine tongue feels wonderful inside you and soon you're cumming again as he licks up as much of the load he filled you with as he can get.  Satisfied, you scritch his ears and let him resume his post.";

to say fangalphasex2:
	if lust of Fang is even:
		say "[fangalphaoral]";
	otherwise:
		say "[fangalphafucked]";
	increase lust of fang by 1;


Chapter 3 - Alpha Sex

to say fangalphaoral:
	say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath.  He rumbles softly and rolls onto his side, pressing your face to his maleness as his red cock starts to slide from his furred sheath.  You moan softly as his strong scent floods your nose and you start licking at his shaft, letting it slide directly from its furry home into your mouth.  Your tongue plays over it as the big wolf presses his paws at your back urging you to suck your alpha harder and you eagerly do so.  You tease yourself with one hand and move the other to his hefty balls, stroking and kneading them, eager for their virile seed.  He rocks his hips, thrusting into your mouth and down your throat until he finally cums with a howl, almost choking you with a flood of thick, rich wolf cum.  The taste of your alpha's semen fills your senses and you moan wetly around the spurting shaft, cumming hard as you [if cocks of player > 0]stroke yourself off[otherwise]finger your pussy wildly[end if].  His orgasm done and his balls drained into his slutty beta, he gets up and pads off, leaving you on the floor with a tummy full of wolf cum and reeking of his scent.";
	increase libido of player by 15;
	decrease humanity of player by 3;

to say fangalphafucked:
	say "     You snuggle up to your big alpha wolf and nuzzle him while moving a hand to stroke his warm sheath.  He rumbles softly and nudges you to move onto all fours.  You moan softly in anticipation and strip off your clothes and pack.  Once in position, the wolf comes up behind you and sniffs at you [if cunts of player > 0]pussy and [end if]rear, as if checking what his slutty pet's been up to out in the city.  He [one of]growls and nips at your thigh[or]slides his tongue across your [if cunts of player > 0]wet folds and [end if]between your cheeks[or][if cunts of player > 0]dives his cock into your pussy to lap at your juices[otherwise]slathers his tongue over your waiting pucker[end if][at random] before climbing atop you.  His pointed tip bumps against you once before finding your eager hole and sinking into you, making you both growl lustfully.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     He pounds into you hard and fast while your needy [if cunts of player > 0]cunt[otherwise]hole[end if] grips and squeezes around that feral wolf cock.  You moan about how strong your big alpha is, how virile, how you are his bitch to use.  Clearly pleased by your words, he licks at your cheek before taking the nape of your neck in his teeth and fucking you even harder, slamming his swollen knot against your sore [if cunts of player > 0]pussy[otherwise]anus[end if] until it stretches open enough to let that knot pop in and tie with you.  Fang howls triumphantly when this happens, unleashing a hot rush of semen into you, filling your [if cunts of player > 0]womb[otherwise]tummy[end if] with his ample load.  You writhe beneath him in ecstasy, cumming hard as well from taking your master's seed.  When his knot goes down, he pops his cock from you, letting his excess semen flow out to soak your crotch, leaving the scent of it upon you to be a reminder to you and others that you belong to him now.";
	wait for any key;
	now libido of player is ( ( libido of player * 4 ) / 5 );
	decrease humanity of player by 3;


Section 6 - The Rivalry

ffrivalry is a number that varies.

an everyturn rule:
	if the player is in the Grey Abbey Library and ( hp of Fang is 3 or hp of Fang is 4 ) and felinoid companion is the companion of player:
		increase ffrivalry by 1;
		if a random number between 5 and 20 >= ffrivalry:
			say "[one of]Fang locks his steely gaze on your felinoid companion and growls softly.[or]Your felinoid companion rubs up against you, pushing you away from Fang in a possessive manner.[or]The felinoid at your side growls at Fang.[or]Your felinoid companion and your alpha wolf growl and snap at one another from a few feet away for a minute.[or]Your alpha wolf and the felinoid exchange angry glares at one another and possessives stares at you.[or]Fang growls at the felinoid as he moves between you and him.  They glare at each other like that for a few moments before breaking off, both clearly angry at the other's presence near you.[or]The feral wolf and large felinoid growl and hiss and one another as they circle around you like you're some kind of prize.[at random]";
			now ffrivalry is 0;


Section 7 - Endings

when play ends:
	if Fang is in the Grey Abbey Library and hp of Fang is not 3 and hp of Fang is not 4:			[ Fang the guard wolf ]
		if humanity of player < 10:
			say "     Having had his alpha succumb to the infection, Fang leaves behind his rope leash and heads back into the city to find his fortune elsewhere.";
		otherwise:
			say "     When the military comes, you worry about how they'll react to Fang.  He's been quite loyal and not caused any trouble, but his beastial form distresses the soldiers.  As the squad leader moves up to tell you the wolf can't come, Fang pads quietly in front of you and sits down.  Clearing his throat, he starts talking with some difficulty.  In anticipation of this moment, it's clear to you he's spent some time among the library stacks reading in preparation.   With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to plead his case well enough to join you.  While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building.  You quietly pat the wolf's head before going along to show them the rest of the place.  Needing no more recognition, his tail wags once and he sits patiently waiting to join you in your new life as you home's loyal guardian and your secret lover.";
			if Sandra is in the bunker:
				say "     Sandra, thankful to the big wolf for helping to keep everyone safe in the bunker, is always very kind to the big wolf when she comes to visit.  Often, during visits or get-togethers at your place, you'll find that the bunny's quietly slipped away.  Always knowing where you'll find her, you'll check and see her safely beneath the big wolf, getting his large, red cock stuffed into her cunt.  The bunny's tummy grows large after one of these visits and she eventually gives birth to a pair of wolf cubs with bunny ears and a tail.  These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";
	otherwise if hp of Fang is 3 or hp of Fang is 4:				[ alpha Fang ]
		if bodyname of player is "Feral Wolf":
			[ see Feral Wolf file for this ending ]
			now tempnum is 0;
		otherwise:
			if humanity of player < 10:
				if hp of Fang is 3:
					say "     Having succumbed to another infection, Fang has lost his slutty bitch and, having no more reason to stay, leaves the bunker.  With his newfound confidence, he forms a small pack of his own[if coleenalpha is 0].  Taking Sandra with him, he leads her off to be his special bunny fucktoy, a role that she enjoys greatly.  She bears him many quick-footed pups who become runners for the pack, chasing down prey so the stronger wolves can catch them and take them down[end if].";
				otherwise if hp of Fang is 4:
					say "     Having succumbed to another infection, Fang has lost his slutty bitch and, having no more reason to stay, leaves the bunker.  With his newfound confidence, he forms a small pack of his own.";
			otherwise:
				say "     When the military comes, you worry about how they'll react to Fang.  Secretly your lupine alpha, you keep that fact hidden when speaking to the military.  His beastial form distresses the soldiers, but you do your best to appease them.  As the squad leader tries to move you out of the way, telling you the wolf can't come, Fang pads confidently in front of you growls for him to let you go.  Clearing his throat, he starts talking with some difficulty.  In anticipation of this moment, it's clear your clever master has spent some time among the library stacks reading in preparation.   With his clearly rational arguments (albeit cribbed from the philosophy section), he's able to articulate clearly his points and that he WILL be going with you.  While two soldiers remain with guns trained on him, the rest of the squad moves on to inspect and search the rest of the building.  You hug your wonderful alpha's head before going along to show them the rest of the place.  He gives your cheek a lick and ignores the soldiers guarding him as inconsequential, having impressed their alpha, and strides back to his favourite resting spot to await departure.";
				if bodyname of player is "Felinoid" and felinoid companion is tamed:
					[ see Felinoid Companion file for this ending ]
					now tempnum is 0;
				otherwise if Felinoid companion is tamed and cunts of player > 0:
					say "     At the military's camp, Fang and the felinoid are given a quick examination, but somehow manage to avoid closer scrutiny.  You suspect the one female aid who left their examination room with a rather musky scent on her played a part in it somehow[if lust of Fang > level of Felinoid companion].  Fang seems particularly pleased with himself[otherwise if lust of Fang < level of Felinoid companion].  The felinoid seems particularly pleased with himself[otherwise].  They both seem particularly pleased with themselves[end if] as well, but that may just have been your imagination.  Regardless, given how bad things are getting the city, they don't get around to fully testing your seemingly obedient pair of companions, accepting your word that they're loyal guardians you found and nothing more.";
					if lust of Fang > level of Felinoid companion:			[Fang victor]
						say "     After your release from the military, you settle into your new life with the two of them coming along.  They snap and growl at one another, but things remain civil enough at first.  In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so.  You accept your role readily, having become the wolf's fucktoy.  But one day, your felinoid companion takes exception to this and the two have a great fight that devastates your living room.  In the end, your alpha wolf is victorious and forces the big feline to submit to him as well.";
						say "     The big wolf celebrates his victory by mounting you while the felinoid is left to watch, breeding you with a loud howl.  Once finished with you, he forces the male cat to lick his cock clean, which he does reluctantly at first.  Over time, Fang trains him well, keeping his lustful urges reined in around you though several other females are drawn in by the felinoid's musk.  The wolf generously allows the cat to breed some of them, turning them into a small harem of felinoid females to keep him satisfied and spread his cubs into the area.  The others he keeps for himself, giving the big wolf a sizable stable of bitches among the local women.  Even as these wolf and felinoid cubs spread out, they always respect Fang's ownership of you.";
					otherwise if lust of Fang < level of Felinoid companion:	[felinoid victor]
						say "     After your release from the military, you settle into your new life with the two of them coming along.  They snap and growl at one another, but things remain civil enough at first.  In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so.  You accept your role readily, having become the wolf's fucktoy.  But one day, your felinoid companion takes exception to this and the two have a great fight that devastates your living room.  In the end, your felinoid companion is victorious and forces the big wolf to submit to him as well.";
						say "     The felinoid celebrates his victory by mounting you while the wolf is left to watch, breeding you with a powerful roar.  Once finished with you, he forces himself onto the defeated wolf, fucking him as well";
						if hermaphrodite is not banned:
							say ".  As you watch, Fang gains a wet, bitch pussy to go along with his cock and balls and is then bred by the victorious felinoid.  The felinoid trains the wolf well, breeding cubs in both your bellies.  Fang may still be your alpha wolf, but the felinoid owns you both now.";
						otherwise:
							say ".  As you watch, Fang is fucked repeatedly until he's made submissive to the stronger cat.  The felinoid trains the wolf well, always making sure the wolf knows his place beneath him.  Fang may still be your alpha wolf, but the felinoid owns you both now.";
						say "     The strong musk of the powerful cat lingers on you, making you very alluring to others, man and woman alike, allowing you to bring them back to your place.  There, the big feline has his way with them, turning them into lustful female felinoids for him to breed.  You are forced to move a couple of times before you finally settle down someplace to stay for good, you and your companion settling in happily, while a strange explosion of pregnant female felinoids hits the area.";
					otherwise:		[evenly matched]
						say "     After your release from the military, you settle into your new life with the two of them coming along.  They snap and growl at one another, but things remain civil enough at first.  In public, Fang's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so.  You accept your role readily, having become the wolf's fucktoy.  But one day, your felinoid companion takes exception to this and the two have a great fight that devastates your living room.  In the end, your two are evenly matched and must eventually relent in their conflict and share you.";
						say "     And share you they do.  You are fucked back and forth for the rest of the day by the two of them, as if the new competition is one to see who can outlast the other and fuck you more times.  Again, it seems like they're evenly matched and the two gain a grudging respect for each other even as your belly is bloated fuller and fuller of their animal seed and you eventually pass out before a winner is decided.";
						say "     From that point on, the two get along much better, sharing you.  Their combined musk lingers on you and is a very powerful and alluring aphrodisiac, drawing in men and women alike.  Following their orders, you entice numerous people back to your place while living your normal life.  There, the felinoid and wolf have their way with them, ravaging them lustuflly until they become horny females, wolves or felinoids, for them to breed.  Before long, thanks to their powerful allure, every family in the neighbourhood soon has at least one felinoid or wolf member in their household.  You, like all those they share, become pregnant with felinoid-wolf hybrid cubs who go on to form a new and powerful race that spreads much further thanks to its physical might and alluring scent.";
				otherwise:
					say "     After your release from the military, you settle into your new life with Fang coming along.  In public, he's passed off as your guard wolf, but privately he remains your alpha and fucks you like his sexy bitch whenever it pleases him to do so.  You accept your role readily, having become the wolf's fucktoy.";
			if Sandra is in the bunker and humanity of player >= 10:
				say "     Sandra, thankful to the big wolf for helping to keep everyone safe in the bunker, is always very kind to the big wolf when she comes to visit.  Often, during visits or get-togethers at your place, you'll find that the bunny's quietly slipped away.  Always knowing where you'll find her, you'll check and see her safely beneath your alpha, getting his large, red cock stuffed into her cunt.  The bunny's tummy grows large after one of these visits and she eventually gives birth to a pair of wolf cubs with bunny ears and a tail.  These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";

[Connection summary: Fang's endings have ties to: Sandra, Felinoid companion]

Fang ends here.