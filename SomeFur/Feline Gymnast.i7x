Version 1 of Feline Gymnast by SomeFur begins here.
[A kinky, flexible anthro feline herm]

[Potential ideas list]
[Loss scenes]
[footjob scene w/ high dexterity = mutual footjob, less roughness]
[Allow option to lick feet during footjob (accepting/denying multiple times makes it permanent), resulting in more/less extreme domination]
[Victory Scenes]
[M/F/H - Get oral (herm picks which gentals)]
[H - Add option to riding her to make her suck you off at the same time]
[M/F/H/N - Get rimmed (and jerked/fingered if possible) - not for less anal]
[M/F/H/N - Ride anally, option for oral - not for less anal]

"Adds a kinky, flexible anthro feline herm to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Feline Gymnast" } to infections of hermaphrodite;
	add { "Feline Gymnast" } to infections of furry;
	add { "Feline Gymnast" } to infections of Felinelist;		[list of feline infections]

[Loss scenes. Uses a random number to pick one. Herms use 5 for getting fucked and Females use 3 for it so a clean range of numbers can be used.
	1 - Anal (All w/ more anal, M/F with normal, disabled with less anal)
	2 - Oral (All)
	3 - Footjob(M/H), Get fucked (F)
	4 - Fuck her (M/H)
	5 - Get fucked (H)]
[Note: Uses anallevel  1=no anal, 2=you will do her butt, 3=50/50 she rims and does your butt instead of 2]
to say losetofelinegymnast:
	say "     You let out one last, pained groan as you slump onto the ground in front of the bench, too battered to move.";
	let cattysceneindex be a number;
	[Herm - can get any scene]
	if cocks of player > 0 and cunts of player > 0:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 5;
		otherwise:
			now cattysceneindex is a random number between 2 and 5;
	[Male - Gets a footjob for 3]
	otherwise if cocks of player > 0:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 4;
		otherwise:
			now cattysceneindex is a random number between 2 and 4;
	[Female - Gets penised for 3]
	otherwise if cunts of player > 0:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 3;
		otherwise:
			now cattysceneindex is a random number between 2 and 3;
	[Genderless - Can get oral or anal(if more/normal)]
	otherwise:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 2;
		otherwise:
			now cattysceneindex is 2;
	[Now actually say the scene]
	if cattysceneindex is 1:
		if anallevel is 3 and a random chance of 1 in 2 succeeds:
			say "[felinelosemoreanal]";
		otherwise if cocks of player > 0:
			say "[felinelosenormalanal]";
		otherwise:
			say "[felineloseoral]";
	otherwise if cattysceneindex is 2:
		say "[felineloseoral]";
	otherwise if cattysceneindex is 3 and cocks of player < 1:
		say "[felinelosefemale]";
	otherwise if cattysceneindex is 3:
		say "[felinelosefoot]";
	otherwise if cattysceneindex is 4:
		say "[felinelosevaginal]";
	otherwise if cattysceneindex is 5:
		say "[felinelosefemale]";
	infect "Feline Gymnast"

[Anal scene with "more anal"
Summary: Playful licking, then rimming, then player gets anal]
to say felinelosemoreanal:
	say "     Grinning mischievously, the cat-like girl kneels down next to you, removing your clothing. She appraises your now naked form, [if cocks of player > 0]giving your cock some playful strokes [end if]as she suddenly gets an idea, rolling you onto your stomach. You feel her lie down on top of you as your butt is tickled by her whiskers. Her smooth tongue makes a few playful licks around your lower back and thighs. With a giggle, she grabs your cheeks, spreading them. You let out a startled gasp as she licks your now exposed anus. Giggling even more at your surprise, she pushes her face further between your cheeks, her whiskers tickling you as they move in with her. She slowly circles your pucker with her tongue, making light presses at it every once in a while. You can't help but moan at the odd sensations. Just as you were starting to enjoy it, she pulls her face out of your ass and stands up. Looking back, you give her a pleading look to continue.";
	[Is 'their' acceptable singular genderless?... is there already something to say these?]
	say "     'Aw, does my little [if bodyname of player is listed in infections of felinelist]kitty [otherwise]slut [end if]enjoy having their ass toyed with?' [if libido of player > 75]You nod, too aroused to think of denying it[otherwise]You blush, looking away as you try to hide the enjoyment you got[end if]. Letting out another giggle, she grabs your hips, pulling you onto all fours. 'Well, it was fun to play with, but I bet that ass of yours is even more fun to be inside' the lusty cat says as she starts to rub her slick penis against your pucker. Now lubricated from her copious amounts of precum, her barbed penis easily slides into your pucker, the barbs further increasing the pleasure. You both moan as she bends over, nipping at your neck and ears while slowly pumping at you. She reaches one of her arms around you, [if cocks of player > 0]gently stroking your [cock of player] penis[otherwise if breast size of player > 0]caressing your [breast size desc of player] breasts, teasingly pulling at your nipples[otherwise]rubbing up and down your torso with her furred hand[end if]. After drawing a few more moans from you, she straightens up, putting both hands on your ass as she starts fucking you harder and faster. [if cocks of player > 0]Your [cock size desc of player] cock bounces around with the ferocity of her thrusts. [end if]With a loud groan, followed by a yell, you feel your bowels fill with a warm liquid. [if cocks of player > 0]She slows down, but keeps fucking your ass until you feel your own orgasm approaching. With one last, lustful groan, your balls churn as they deposit their [cum load size of player] load onto the ground below you. [otherwise]She keeps pounding at your ass as you feel your own orgasm building. With a long, drawn out moan, you're pushed past your limit as your thighs grow wet with your own juices. [end if]Looking back, you watch her pull out of you as globs of her semen drip out of your ass onto the ground.";
	say "     'Isn't it wonderful to cum without touching your [if cocks of player > 0]cock?' [otherwise if cunts of player > 0]cunt?' [otherwise]... um... I actually don't know how you get off like that.' [end if]she says, giving your ass a playful smack before going on her way, leaving you panting on the ground.";

[Anal scene for "normal anal"
Summary: (M/H) get ridden anally, she sucks or fingers herself]
to say felinelosenormalanal:
	[TODO: also bad...]
	say "     The small kitty is on top of you in a flash, fiddling with your gear and clothes. Unable to do anything about the situation, she makes short work of exposing your [bodydesc of player] body. 'Now then, what should we do with you?' she ponders, giving a fake quizzical look. This quickly turns into a wide grin as she sits down, still fully clothed, onto your cock. She leans back, shifting forward a bit so you slide between her small ass cheeks. [if cock length of player > 15]She swishes her tail back and forth, rubbing against the stretch of your penis poking out past her butt. [end if]It doesn't take much of this rubbing to get your member to full attention. With it ready for action, she lines it up with her tail, pushing it through the torn hole in her leotard and up against her anus. After prepping herself with some of your precum, she slowly pushes herself onto your [cock size desc of player] cock. She groans, lowering herself until she [if cock length of player > 20]can't fit any more of you inside[otherwise]rests on your lap[end if].";
	if a random chance of 2 in 3 succeeds:
		say "     The thin feline pulls her cock out of her leotard, revealing its pink, barbed shape, soaked with her precum. With amazing flexibility, she bends forward and starts licking it clean. Obviously extremely aroused, she begins moving up and down your [cock of player] penis. As she rises, she keeps her head in the same position, thrusting into her mouth. The sight of her sucking herself off, and the slow, tight pumps on your dick make you moan in pleasure, already getting close to an orgasm. The hermaphrodite riding you must be close as well, because she picks up the pace, slamming her ass down onto your thighs and then swallowing her barbed shaft as she thrust upwards. She suddenly straightens back up, crying in pleasure as cum bursts out of her pink penis, splattering all over your [breast size desc of player][if breast size of player > 1] breasts [otherwise] chest [end if]and face. With her tight ass wringing your [cock size desc of player] cock, you can't hold back much longer either, and pump your [cum load size of player] load into her bowels.";
	otherwise:
		say "     The thin feline pulls her cock out of her leotard, revealing its pink, barbed shape, soaked with her precum. She starts to stroke it slowly with one of her furry hands, moaning as a large drop of pre makes its way out. With her other hand, she lifts her tiny balls out of the way and pushes a finger into her leaking folds. Turned on by the show above you, you find yourself quite close to your limit. Your partner stops masturbating, placing her hands on the ground next to you, giving her more leverage to ride you wildly. Unable to keep up with herself, you hear a cry of pleasure, followed by warm wads of her cum splattering your face. Startled by her yelling, and further stimulated by her now squeezing ass, you quickly follow, spurting your [cum load size of player] load into her.";
	say "     Both of you groan as she lifts herself off of your sensitive tool. 'Have you ever had an orgasm without touching yourself? It's quite an experience. Maybe I'll let you try it some other time.' she promises, walking away from you[if cock length of player > 20] with a little less grace than usual[end if]."

[Oral scene
Summary: random vaginal/penis oral, will give oral to men/herms]
to say felineloseoral:
	say "     As you lie on the ground, the furry gymnast steps over you, standing over your head. You can see the underside of her leotard, soaked with sexual fluids, as it's lowered towards your face. She stops just before reaching it, forcing you to smell her strong odor. 'It's no fun getting myself off, so I wait for cuties like you to stop by and help.' She fumbles around at your crotch as if searching for something. [if cocks of player > 0]Judging from the giggling you hear coming from your crotch, she found what she was looking for. Standing erect from the arousal her musk is bringing you, you feel furry hands free your cock from any clothing impeding it. 'Well, what a lovely find' she says, circling a finger around the tip. 'I wonder how badly it needs to be released...' [otherwise]You hear a sigh of disappointment from your groin. 'Hmm... I thought not. Well, perhaps we can fix your lack of equipment with some work...' [end if]she remarks, ominously.";
	if a random chance of 1 in 2 succeeds:
		say "     '[if cocks of player > 0]I bet it's just as needy as my cock. Maybe if you help the poor thing out, I'll give you a nice reward...'[otherwise]'Why don't you start with my cock? I'll be sure to reward you if you do well.[end if] Before you can think of saying yes or no, she slips her leotard to the side, letting her erect, barbed penis free before pressing it to your lips. With the clothing out of the way, her scent is far too powerful, driving you crazy. With your lust skyrocketing, you gladly open for her feline penis, and you both moan as it slides into your mouth. Finding the position difficult, you bob your head back and forth clumsily, but your efforts seem to be working as she grasps onto your [if cocks of player > 0]cock[otherwise]thighs[end if], moaning. Her shaft begins to twitch in your mouth, and you double your efforts to get the kitty off. [if cocks of player > 0]Losing her self control, she starts stroking your cock, licking up any pre that comes out of the tip. Wanting even more, she practically swallows your cock in one motion. You give a stifled moan as she sucks you off with as much ferocity as you give her. She draws her head off of your penis for a moment to tease you a bit. [end if]'Oh, keep that up and you'll get a nice, creamy reward!' Apparently not wanting you to waste any of this reward, she puts all of her weight onto you. Unable to move your head anymore, you massage her throbbing pink cock with your tongue[if cocks of player > 0] as she puts your shaft back into her greedy mouth[end if]. Moments later, your efforts pay off, as her penis gives one mighty twitch before filling your mouth with her cum. [if cocks of player > 0]She lifts her head off of your cock, yelling in pleasure. Keeping her word, she grabs your [cock size desc of player] shaft with her paws, pumping you until you reach your own orgasm.[end if] 'Wasn't that a delicious [if cocks of player > 0]and relieving [end if]treat?' She says through her panting. Swallowing your treat, you lie back in exhaustion from the fight and sex. The blue kitty turns around, licking some of the mess of of your face before smiling at you and leaving.";
	otherwise:
		say "     [if cocks of player > 0]'I bet it's just as needy as my pussy. Why don't you help my poor little cunt out, and I'll think about a reward for you.' [otherwise]'Why don't you give me some relief, and I'll see about getting you some proper equipment' [end if]she says before shoving her leotard aside, revealing her dripping folds. The scent is overpowering with it out of the way, and you find yourself almost rising up the last few inches to get a taste. This turns out to be unnecessary, though, as she lowers herself to your waiting lips. Your first few licks get pleased moans of approval from the kitty above you. Her fluids taste slightly sweet, and begin to flow out of her cunt after a few more licks. Unable to control herself, she begins stroking her cock as you continue to lap at her delicious folds. With the combined pleasure, it isn't long before you hear a scream of pleasure along with the feeling of warm liquid covering your [breast size desc of player] chest. She gets up, giggling at the sight of your wet face. [if cocks of player > 0]'I thought of a reward for you! Your face is soaked, so I'll help you clean it off!'[otherwise]'You're absolutely soaked. A few more rounds like that and I'll be surprised if you don't get the proper [']equipment['].' [end if]She says before licking your face clean. 'That was delicious. Be sure to come back!' you hear as she stands up and walks away from your exhausted body.";
		if libido of player < 60:
			now libido of player is 60;

[Female scene
Presents a list of options to the player]
to say felinelosefemale:
	say "     The lithe little gymnast walks over to you, giggling every once in a while as she starts removing your clothing. With the last shred of fabric removed, she presses herself against your [bodydesc of player], [bodytype of player] body. Her breasts rub around your [breast size desc of player] mounds, drawing a moan from you. Deciding that it means you're ready, she draws back, kneeling between your legs. 'Has this little [if bodyname of player is listed in infections of Felinelist]kitty[otherwise]girl[end if] been keeping up with her stretches?' she asks, grabbing your hips and pulling them up with her as she stands. You don't have any time to answer as she pushes her face towards yours, bending your spine in ways it probably shouldn't be bent.";
	if dexterity of player > a random number between 12 and 20:
		say "     Somehow, your spine doesn't break as she locks her lips with yours. After a brief kiss, she keeps your legs pressed in place, your [cunt size desc of player] pussy positioned over your head as she moves around you. Now standing over your head, she lowers herself onto your face, dripping a mixture of sexual fluids from her excited genitals onto you. She presses her face into your waiting folds, lapping at your practically gushing liquid. Surprised at your readiness, she giggles, standing up and removing her tight leotard. Without anything to hold it back, drips of fluids fall onto your face from her pussy, hovering over your head. You watch as she pushes her cock into you agonizingly slowly. She gasps as she bottoms out, clearly enjoying what you have to offer, and loses all restraint as she begins thrusting into you wildly. Within minutes, the cat on top pushes past her limit, releasing a rather thick load inside of you. You moan, so close to release, but the feline above you doesn't seem interested in getting you off right now. From this angle, you can only watch as her balls pulse, pushing everything she has into you. When they finally slow down, she quickly pulls out, pushing you close to the edge again. A glob of your mixed fluids falls on your face, unexpectedly triggering an orgasm with its intense smell. With your [cunt size desc of player] cunt pulsing, even more fluids find their way into your face before the sleek woman flips your legs back onto the ground. Out of breath, and still battered from the fight, you lie there as your kitty partner drops down next to you, licking your face clean. 'That was fun! Keep practicing those stretches and come back another time, OK?'[impregchance]";
	otherwise:
		say "     You yell in pain as a few bones crackle and pop under the stress. The blue furred woman looks at you with a disappointing stare. 'You need to practice stretching, otherwise it will be hard to have fun'. She stands over your chest, sitting down as she pulls aside her leotard to reveal her set of genitals. 'I have something that might help you with those harder ones...' she says, beginning to stroke her light pink, feline penis. Feminine juices begin flowing down your chest as she rubs faster and faster, moaning as she masturbates over you. She cries out in pleasure as ropes of cum fall onto your face and chest. 'Let's get this rubbed in. Wouldn't want any of it to go to waste!' Her hands massage your face and [if breast size of player > 0]breasts[otherwise]chest[end if], working her semen into you. 'Be sure to come back later, after some practice!' she teases, hopping off of you and walking away.";
	
[Footjob scene
Summary: rubbing, then very rough rubbing, but no release for the player (+libido)]
to say felinelosefoot:
	say "     The slender woman giggles, retracting her claws. She walks over to where you lie, standing above your battered body. She places a foot on your chest, asserting her dominance over you. 'How do you expect to win with such a clumsy body?' she taunts, pressing more of her weight onto her foot. Thankfully, she takes her foot off of your [breast size desc of player] chest before it becomes painful. The cat-like girl props your body up against the bench in a sitting position. Offering no resistance to her, she then pulls down your pants, revealing your [cock size desc of player] penis, smiling mischievously as it hardens slightly. The lean kitty stands back up, and presses her foot against your tool. Thankfully, her feet are covered in the same soft fur, so it is pleasant, but the light strokes don't offer much stimulation. As if reading your mind, she presses more firmly, locking your cock between her foot and your stomach.  She doesn't stop, however, and continues to rub and press even more roughly until you wince in pain. She backs off slightly, smiling at your apparent discomfort. 'Aw, was that too rough? Maybe I would be gentler if someone could return the favor...' Wanting her to lighten up, you reach for the bulge in her leotard, only to have your hands swatted away. 'No no no. Return it in the same way.' she chides. 'Well, perhaps another time. Be sure to practice stretching! Maybe next time you can reach me with your feet and get a nice reward.' Having said that, she releases her foot from your cock and bounces away, leaving your poor member aroused and hurt.";
	if libido of player < 60:
		now libido of player is 60;

[Vaginal ride scene
Summary: player gets ridden, she arches backwards fo face them]
to say felinelosevaginal:
	say "     Eyeing you hungrily, the thin cat woman jumps onto your chest, making you moan in pain. Grinning at your discomfort, she begins undressing you, rubbing every part of your body she exposes. You moan as she plays with your [breast size desc of player] chest, becoming aroused from the touch of her soft, blue fur. She stops suddenly, and spins around so her back is facing you. Unsure of what she is planning, you feel furry hands wrap around your [cock of player] penis as it begins to stiffen from the stimulation. Giggling slightly, she pushes aside her leotard, revealing her small pussy. Grabbing your cock with one hand, she guides it into her folds, [if cock length of player > 12]wincing as your large cock stretches her[otherwise]humming with pleasure as she sinks onto you[end if]. As teasing as she was, she can't hold herself back from riding your shaft wildly. Unable to resist, you begin thrusting your hips back up into her, causing her to stop. She puts her hands above her head and leans backwards, grabbing your arms and extending her claws, rather painfully, into your skin, causing you to wince in pain. When you open your eyes back up, you're staring into her upside down face. 'Don't move a muscle, you naughty [if cunts of player > 0]girl[otherwise]boy[end if]'. She slowly retracts her claws. Apparently, the odd position doesn't hinder her ability to fuck you senseless, as she picks up the pace right where she left off. As if trying to make you move, she starts moaning loudly, slowing her pace every once in a while to tease your poor cock. Continuing like this for several minutes, the feline begins to breathe heavily, slamming against your rock hard member even harder. You try to hold back an orgasm, fearing what she might do to you if she drew blood just for moving, but when she is driven over the edge, the sensation of her cunt pulsing against you is too much, and you pump your [cum load size of player] load into her waiting womb. Panting from the exhaustion of being beaten and ridden, you can't do anything other than lie where you fell. The upside down face in front of you grins. 'That was a close one. Maybe next time you can cum before me so I can punish you.' she taunts, pulling herself off of your cock and walking away with a slight bounce in her step.";

[victory scenes:
Allow player to pick from the following scenes:
M/F/H/N - Give oral
F/H - Ride her vaginally
M/H - Vaginal]

to say beatthefelinegymnast:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Ignore";
	now description entry is "leave the kinky gymnast alone";
	now sortorder entry is 10;
	choose a blank row in table of fucking options;
	now title entry is "Give oral";
	now description entry is "bury your face in her crotch";
	now sortorder entry is 1;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride her";
		now description entry is "have her fuck your pussy";
		now sortorder entry is 2;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now description entry is "fuck her vaginally";
		now sortorder entry is 3;
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to the number of filled rows in the table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if player consents:
				now sextablerun is 1;
				now lastfuck of Leonard is turns;
				if title entry is "Ignore":
					say "[felinewinignore]";
				otherwise if title entry is "Give oral":
					say "[felinewingiveoral]";
				otherwise if title entry is "Ride her":
					say "[felinewinvagride]";
				otherwise if title entry is "Fuck her":
					say "[felinewinvagfuck]";
		otherwise:
			say "Invalid Option.";

[Victory scene - Give oral
Player is given the option to:
y - suck her cock, getting aroused by her taste + smell
n - lick her cunt, getting aroused by her taste + smell if the player has a penis]
to say felinewingiveoral:
	say "Would you like to suck her cock or eat her out? (Y for cock, N for pussy)[line break]";
	[Suck her off - players with a cock or pussy will masturbate (cock takes priority)]
	if player consents:
		say "     You eye the bulge in her leotard, throbbing even as she lies defeated. Deciding she could use some relief, you kneel down over her crotch, rubbing her needy bulge with one of your hands. It pulses and twitches, sensitive even through the layer of clothing. Moving closer, you push aside the tight fabric, making her penis and small orbs available to you. Moving closer to them, you smell the buildup of fluids that was happening behind her clothing. The scent is overpowering and arousing, making [if cocks of player > 0]your [cock of player] penis harden in anticipation[otherwise if cunts of player > 0]your cunt slick with need[otherwise]you anticipate what you're about to do even more[end if]. You bring your face right next to those cute balls of hers, giving each a few licks before moving upwards.";
		say "     With small licks, you work your way up her shaft, catching several dollops of pre on your tongue. It tastes rather unfamiliar, but does drive you deeper into lust. It takes every ounce of self control not to shove her entirety in your mouth immediately. Straining against your arousal, you tease her further, kissing around the tip and sucking on some of the barbs. With each little tease, even more of the clear fluid leaks out of her cock and finds its way into your mouth. It quickly becomes too much, and you wrap your lips around the tip of her cock, pushing forward until your nose is buried in her luxurious coat of fur. She lets out a long moan as several more spurts of precum drip out into your throat. Driven crazy by lust, you [if cocks of player > 0]grab your own cock and begin to furiously stroke it as you [otherwise if cunts of player > 0]shove a few fingers into your needy cunt and begin fingering yourself furiously as you [end if]begin working her shaft at an amazing pace.";
		say "     Despite all of the prior teasing, the lust filled cat girl manages to hold on for a while, constantly moaning under you. The combination of her powerful scent and arousing pre do a number on your own restraint, and before long you're moaning onto her cock as and orgasm hits you like a wave. [if cocks of player > 0]Frantically stroking your [cock size desc of player] cock, you release a [cum load size of player] load onto the ground. [otherwise if cunts of player > 0] Your cunt clenches around your fingers, dripping your own fluids onto the ground below. [end if]Your moaning around her barbed shaft is enough to trigger her own orgasm, flooding your mouth with her delicious cream. Letting your mouth fill up with it, you slide off of her cock and go up to give her a kiss. She gladly returns it, and you give her the treat she just poured into your mouth. You tell her to swallow, and she does so enthusiastically, even licking up some of the dribbles around your mouth afterwards. Satisfied with the result of your encounter, you readjust your clothing and gear before leaving the blue gymnast panting on the bench.";
	[Eat her out - players with a cock become aroused and masturbate]
	otherwise:
		say "     Your eyes wander to the almost painfully tight cameltoe, soaking with fluids. Deciding she could blow off some steam, you tell her to kneel on the bench and present herself to you. 'Of course, master' she says before climbing onto the bench and spreading her thighs for you. Moving behind her, you slide her leotard out of your way, and are greeted with her powerful, feminine scent. [if cocks of player > 0]Responding to the wondrous smell, your cock becomes uncomfortably hard, making you pull it out of your clothing. [end if]Drawn closer by the odor, you give a few teasing licks and nibbles to the inside of her thighs, eliciting needful moans from the now submissive kitty. With a veritable river of juices coming from her cunt, you decide the little bit of teasing you did was enough and after some begging from her you give a long lick to her lips. The waterfall coming from her pussy is slightly sweet, making you drive your tongue into her for more[if cocks of player > 0]. Precum begins leaking out of your cock from the taste of her juices. You reach down unconsciously and begin stroking yourself, unbelievably turned on by this[end if].";
		say "     Moaning uncontrollably, it doesn't take very long for the furry gymnast to climax under your licks and kisses. You are greeted with even more fluids soaking your face. [if cocks of player > 0]The gush of liquid helps push you over the edge as you orgasm, spurting your [cum load size of player] load onto the ground below. [end if]You order the thin woman to turn around and clean you up. She eagerly rises her face to yours, licking up all of her juices from your face. Satisfied with her work, you readjust your clothes and gear before leaving her to catch her breath.";

[Victory scene - Ride her cock vaginally
Make the currently submissive gymnast do all the work while you kneel over her]
to say felinewinvagride:
	say "     You eye the crotch of her leotard, soaked with precum. Deciding not to pass up the opportunity, you walk over to the gymnast. Wanting to make the kitty work for the release she desperately needs, you decide to have her do all of the work, and tell her to strip. She gladly obliges, removing the tight fabric astonishingly fast. The poor girl's crotch is absolutely soaked with fluids from both genitals, almost reaching her bellybutton and covering the front of her thighs. Now unhindered by fabric, her cock twitches about, releasing even more globs of pre that roll down its barbed length.";
	say "     While she lies there panting for release, you kneel over her cock, taking your time to admire her restraint. You reach down and grab her barbed shaft, stroking it across your folds. With each pass, it throbs, oozing precum into your [cunt size desc of player] cunt. You lean down to her face, putting your mouth right to her ear and whisper 'Fuck me'. Suddenly regaining all the strength she lost in the fight, you let out a [if cunt length of player < 4]pained [otherwise]lustful [end if]groan as she slides her pink cock [if cunt length of player < 8]almost all the way [end if]into you. Despite wanting to wildly fuck her back, you keep yourself in control, hovering over her, which forces her to thrust up into you. Sensing that you won't be making things any easier, she puts her hands over her head and adjusts her feet, putting herself into some sort of upside down crawl. Her efforts work spectacularly, as she gains enough leverage to start bouncing you with each of her powerful thrusts. Unfortunately, with her having been pent up for so long, she can't keep up the pace for long before you feel her feline penis give its last throbs inside you, releasing a torrent of her seed.";
	say "     Upset that she couldn't hold on until you got your own release, you give the slutty cat a playful slap. 'Did I say you could come? Now you're going to have to help clean up the mess you made.' You threaten, pulling off of her barbed cock and shoving your [cunt size desc of player] pussy into her face. Without needing to be told again, she begins to greedily lick all of her cum out of you. Delighted by how skilled she is at this, you start scratching behind her ears, encouraging her to make your cum soaked cunt the cleanest she can. Listening to your every word, she dives her tongue into you, making you moan. With this new knowledge of your weak spot, she drives her tongue in and out, licking everything she can inside your pussy. From the previous fucking and the new feeling of her surprisingly human tongue, you soon shudder with an orgasm. Rising off of her face, you see that it's covered in an erotic mixture of her cum and your feminine fluids. You give one final order for her to clean herself and head off. As you turn around to get one last look, you see the furry girl use one hand to wipe her face, licking the mixture of fluids as she strokes her cock.";

[Victory scene - Fuck her vaginally
Have her split on the bench and fuck her]
to say felinewinvagfuck:
	say "     Wanting to explore some interesting positions, you tell the now submissive kitty to show you some poses. Sensing just what you want, she goes through a few seemingly bone breaking poses, all of them showing off her assets. At one point, she gets onto the bench, splitting her legs across it with her back towards you. You quickly order her to stay still, and she can only look behind in apprehension as you walk up to her. Her tail flicks wildly, which is rather annoying, so you grab it and put it up to her face. 'Hold onto this like a good kitty.' You swat her hand away as she reaches for it and make a biting motion. She quickly opens her mouth, allowing you to put her tail in, and holds it with her teeth. One annoyance out of the way, you look at your second one: her leotard. It would be rather difficult to get off in this position, so you decide to just extend the tear for her tail down a bit further. Now exposed, drips of her fluids begin to leak out of the hole.";
	say "     Not wanting to waste any more time, you lean over the cat girl, putting your hands on the back of the bench next to hers. You rub your erect [cock size desc of player] shaft against her waiting folds, coating it with the waterfall of liquid. Preparations complete, you make one agonizingly slow thrust into her. She lets out a moan, muffled by the furry tail in her mouth. As easy as it was to slip into her, it's almost painfully tight inside. As if reading your mind, her walls ease up on your [cock of player] cock, letting you thrust in and out with much more ferocity. The furry gymnast gives out continuous groans at your treatment, letting out one final, loud one as her walls clench around you again. The sensation nearly drives you over the edge as well. That's when the powerful scent of her cum hits you, driving you mad with lust. You start to rapidly fuck her sopping wet pussy once again, ignoring the nearly painful sensation of her pulsing walls. You don't hold on for very long, depositing your [cum load size of player] load into her waiting womb.";
	say "     Satisfied with your work, you pull out of the slutty cat. You tell her to clean up and begin to go on your way. She immediately dips her head between her thighs and laps at any stray cum. As you turn around to leave, you see her start lapping at the pool of cum she left on the bench.";

to say felinewinignore:
	say "     You decide to leave well enough alone.";

to say felinegymnastdesc:
	say "     Walking along, you notice a young woman doing some rather extreme stretches using a nearby bench. Her back is facing you at the moment, but you can still make out very distinct features. She is covered head to toe in luxurious blue fur, complete with cat-like ears on the top of her head. She is wearing some sort of very tight fitting leotard, complete with a hole torn for her long tail to poke out of. As you approach, her ears perk up, and she whips around to face you. With her front now facing you, you can see the rest of her face. While still human in shape, it is covered in the same rich blue fur as the rest of her body. Two piercing green eyes follow your gaze downwards as your eyes move down the rest of her body. Two small breasts barely show themselves, even with the tight uniform. Your eyes move further down her sleek body until you notice an odd bulge at the crotch of her leotard... Just below that, you can make out the start of a cameltoe before your staring is interrupted.";
	say "      'If you're going to stare so much, would you like me to put on a show? Just take a seat over there...' she teases, walking towards you.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feline Gymnast";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The gymnast leaps at you, but instead of hitting you, she vaults over you, slashing at your back.[or]She slashes quickly at any part of you she can reach.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthefelinegymnast]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetofelinegymnast]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[felinegymnastdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "very human, except for the furry pair of cat ears";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "very thin, but with [one of]smooth[or]toned[or]sleek[at random] muscles. Your hands and feet, while retaining their human shape, now have retractable claws where your fingernails were";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]rich[or]dark[or]luxurious[at random] blue fur. It feels soft against your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long tail covered in a lovely shade of blue swaying behind you, helping you keep your balance.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]light pink, feline[or]barbed, feline[or]cat-like[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it becomes thinner and much more womanly. Your scalp feels odd as two furry feline ears pop out of your head";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "a sudden weight is lifted from your shoulders. Looking down, you notice you have become much thinner, and your muscles have a much smoother tone to them";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "luxurious blue fur begins growing over your body";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel your body shift forwards to accommodate for some added weight. Looking back you notice a long, cat-like tail growing, swaying to help you regain your lost balance.";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "small bumps form on it, protruding out into odd barbs. Its colour shifts to a brighter shade of pink as flesh grows around the base, forming a sheath that it eventually settles down into";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 15;                     [ These are now the creature's stats... ]
	now dex entry is 18;                     [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14;                     [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both";                 [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 64;                      [ The monster's starting hit points. ]
	now lev entry is 12;                     [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;                    [ Monster's average damage when attacking. ]
	now area entry is "Campus";   [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                    [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;              [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;               [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;                  [ Number of breasts the infection will give a player. ]
	now breast size entry is 1;              [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;         [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                    [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;              [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4;               [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;                  [ Target libido the infection will rise towards. ]
	now loot entry is "";                    [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;               [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;                    [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]thin[or]svelte[or]lithe[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";              [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;            [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;       [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;           [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";        [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

[when play ends:
	if bodyname of player is "Feline Gymnast":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]
Feline Gymnast ends here.
