Version 1 of Feline Gymnast by Guest Writers begins here.
[A kinky, flexible anthro feline herm]
[- Originally Authored By: SomeFur -]

[Potential ideas list]
[Loss scenes]
[footjob scene w/ high dexterity = mutual footjob, less roughness]
[Allow option to lick feet during footjob (accepting/denying multiple times makes it permanent), resulting in more/less extreme domination]
[Victory Scenes]
[M/F/H - Get oral (herm picks which gentals)]
[H - Add option to riding her to make her suck you off at the same time]
[M/F/H/N - Get rimmed (and jerked/fingered if possible) - not for less anal]
[M/F/H/N - Ride anally, option for oral - not for less anal]

"Adds a kinky, flexible anthro feline herm to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Feline Gymnast" } to infections of hermaphrodite;
	add { "Feline Gymnast" } to infections of furry;
	add { "Feline Gymnast" } to infections of Felinelist; [list of feline infections]

to say felinegymnastdesc:
	setmongender 5; [creature is herm]
	say "     Walking along, you notice a young woman doing some rather extreme stretches using a nearby bench. Her back is facing you at the moment, but you can still make out very distinct features. She is covered head to toe in luxurious blue fur, complete with cat-like ears on the top of her head. She is wearing some sort of very tight fitting leotard, complete with a hole torn for her long tail to poke out of. As you approach, her ears perk up, and she whips around to face you. With her front now facing you, you can see the rest of her face. While still human in shape, it is covered in the same rich blue fur as the rest of her body. Two piercing green eyes follow your gaze downwards as your eyes move down the rest of her body. Two small breasts barely show themselves, even with the tight uniform. Your eyes move further down her sleek body until you notice an odd bulge at the crotch of her leotard... Just below that, you can make out the start of a cameltoe before your staring is interrupted.";
	say "     'If you're going to stare so much, would you like me to put on a show? Just take a seat over there...' she teases, walking towards you.";

[Loss scenes. Uses a random number to pick one. Herms use 5 for getting fucked and Females use 3 for it so a clean range of numbers can be used.
	1 - Anal (All w/ more anal, M/F with normal, disabled with less anal)
	2 - Oral (All)
	3 - Footjob (M/H), Get fucked (F)
	4 - Fuck her (M/H)
	5 - Get fucked (H)]
[Note: Uses anallevel: 1=no anal, 2=you will do her butt, 3=50/50 she rims and does your butt instead of 2]

to say losetofelinegymnast:
	say "     You let out one last, pained groan as you slump onto the ground in front of the bench, too battered to move.";
	let cattysceneindex be a number;
	[Herm - can get any scene]
	if Player is herm:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 5;
		else:
			now cattysceneindex is a random number between 2 and 5;
	[Male - Gets a footjob for 3]
	else if Player is male:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 4;
		else:
			now cattysceneindex is a random number between 2 and 4;
	[Female - Gets penised for 3]
	else if Player is female:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 3;
		else:
			now cattysceneindex is a random number between 2 and 3;
	[Genderless - Can get oral or anal (if more/normal)]
	else:
		if anallevel > 1:
			now cattysceneindex is a random number between 1 and 2;
		else:
			now cattysceneindex is 2;
	[Now actually say the scene]
	if cattysceneindex is 1:
		if anallevel is 3 and a random chance of 1 in 2 succeeds:
			say "[felinelosemoreanal]";
		else if Player is male:
			say "[felinelosenormalanal]";
		else:
			say "[felineloseoral]";
	else if cattysceneindex is 2:
		say "[felineloseoral]";
	else if cattysceneindex is 3 and Cock Count of Player < 1:
		say "[felinelosefemale]";
	else if cattysceneindex is 3:
		say "[felinelosefoot]";
	else if cattysceneindex is 4:
		say "[felinelosevaginal]";
	else if cattysceneindex is 5:
		say "[felinelosefemale]";
	infect "Feline Gymnast"

[Anal scene with "more anal"
Summary: Playful licking, then rimming, then player gets anal]
to say felinelosemoreanal:
	say "     Grinning mischievously, the cat-like girl kneels down next to you, removing your clothing. She appraises your now naked form, [if Player is male]giving your cock some playful strokes [end if]as she suddenly gets an idea, rolling you onto your stomach. You feel her lie down on top of you as your butt is tickled by her whiskers. Her smooth tongue makes a few playful licks around your lower back and thighs. With a giggle, she grabs your cheeks, spreading them. You let out a startled gasp as she licks your now exposed anus. Giggling even more at your surprise, she pushes her face further between your cheeks, her whiskers tickling you as they move in with her. She slowly circles your pucker with her tongue, making light presses at it every once in a while. You can't help but moan at the odd sensations. Just as you were starting to enjoy it, she pulls her face out of your ass and stands up. Looking back, you give her a pleading look to continue.";
	say "     'Aw, does my little [if bodyname of Player is listed in infections of felinelist]kitty[else]slut[end if] enjoy having their ass toyed with?' You [if Libido of Player > 75]nod, too aroused to think of denying it[else]blush, looking away as you try to hide the enjoyment you got[end if]. Letting out another giggle, she grabs your hips, pulling you onto all fours. 'Well, it was fun to play with, but I bet that ass of yours is even more fun to be inside,' the lusty cat says as she starts to rub her slick penis against your pucker. Now lubricated from her copious amounts of precum, her barbed penis easily slides into your pucker, the barbs further increasing the pleasure. You both moan as she bends over, nipping at your neck and ears while slowly pumping at you. She reaches one of her arms around you, [if Player is male]gently stroking your [cock of Player] penis[else if Nipple Count of Player > 0 and Breast Size of Player > 0]caressing your [breast size desc of Player] breasts, teasingly pulling at your nipples[else if Breast Size of Player > 0]caressing your [breast size desc of Player] breasts[else]rubbing up and down your torso with her furred hand[end if]. After drawing a few more moans from you, she straightens up, putting both hands on your ass as she starts fucking you harder and faster. [if Player is male]Your [cock size desc of Player] cock bounces around with the ferocity of her thrusts. [end if]With a loud groan, followed by a yell, you feel your bowels fill with a warm liquid. [if Player is male]She slows down, but keeps fucking your ass until you feel your own orgasm approaching. With one last, lustful groan, your balls churn as they deposit their [Cum Load Size of Player] load onto the ground below you[else]She keeps pounding at your ass as you feel your own orgasm building. With a long, drawn out moan, you're pushed past your limit as your thighs grow wet with your own juices[end if]. Looking back, you watch her pull out of you as globs of her semen drip out of your ass onto the ground.";
	say "     'Isn't it wonderful to cum without touching your [if Player is male]cock?'[else if Player is female]cunt?'[else]... um... I actually don't know how you get off like that,'[end if] she says, giving your ass a playful smack before going on her way, leaving you panting on the ground.";

[Anal scene for "normal anal"
Summary: (M/H) get ridden anally, she sucks or fingers herself]
to say felinelosenormalanal:
	[TODO: also bad...]
	say "     The small kitty is on top of you in a flash, fiddling with your gear and clothes. Unable to do anything about the situation, she makes short work of exposing your [bodydesc of Player] body. 'Now then, what should we do with you?' she ponders, giving a fake quizzical look. This quickly turns into a wide grin as she sits down, still fully clothed, onto your cock. She leans back, shifting forward a bit so you slide between her small ass cheeks. [if Cock Length of Player > 15]She swishes her tail back and forth, rubbing against the stretch of your penis poking out past her butt. [end if]It doesn't take much of this rubbing to get your member to full attention. With it ready for action, she lines it up with her tail, pushing it through the torn hole in her leotard and up against her anus. After prepping herself with some of your precum, she slowly pushes herself onto your [cock size desc of Player] cock. She groans, lowering herself until she [if Cock Length of Player > 20]can't fit any more of you inside[else]rests on your lap[end if].";
	if a random chance of 2 in 3 succeeds:
		say "     The thin feline pulls her cock out of her leotard, revealing its pink, barbed shape, soaked with her precum. With amazing flexibility, she bends forward and starts licking it clean. Obviously extremely aroused, she begins moving up and down your [cock of Player] penis. As she rises, she keeps her head in the same position, thrusting into her mouth. The sight of her sucking herself off, and the slow, tight pumps on your dick make you moan in pleasure, already getting close to an orgasm. The hermaphrodite riding you must be close as well, because she picks up the pace, slamming her ass down onto your thighs and then swallowing her barbed shaft as she thrust upwards. She suddenly straightens back up, crying in pleasure as cum bursts out of her pink penis, splattering all over your [breast size desc of Player] [if Breast Size of Player > 0]breasts[else]chest[end if] and face. With her tight ass wringing your [cock size desc of Player] cock, you can't hold back much longer either, and pump your [Cum Load Size of Player] load into her bowels.";
	else:
		say "     The thin feline pulls her cock out of her leotard, revealing its pink, barbed shape, soaked with her precum. She starts to stroke it slowly with one of her furry hands, moaning as a large drop of pre makes its way out. With her other hand, she lifts her tiny balls out of the way and pushes a finger into her leaking folds. Turned on by the show above you, you find yourself quite close to your limit. Your partner stops masturbating, placing her hands on the ground next to you, giving her more leverage to ride you wildly. Unable to keep up with herself, you hear a cry of pleasure, followed by warm wads of her cum splattering your face. Startled by her yelling, and further stimulated by her now squeezing ass, you quickly follow, spurting your [Cum Load Size of Player] load into her.";
	say "     Both of you groan as she lifts herself off of your sensitive tool. 'Have you ever had an orgasm without touching yourself? It's quite an experience. Maybe I'll let you try it some other time,' she promises, walking away from you[if Cock Length of Player > 20] with a little less grace than usual[end if].";

[Oral scene
Summary: random vaginal/penis oral, will give oral to men/herms]
to say felineloseoral:
	say "     As you lie on the ground, the furry gymnast steps over you, standing over your head. You can see the underside of her leotard, soaked with sexual fluids, as it's lowered towards your face. She stops just before reaching it, forcing you to smell her strong odor. 'It's no fun getting myself off, so I wait for cuties like you to stop by and help.' She fumbles around at your crotch as if searching for something. [if Player is male]Judging from the giggling you hear coming from your crotch, she found what she was looking for. Standing erect from the arousal her musk is bringing you, you feel furry hands free your cock from any clothing impeding it. 'Well, what a lovely find,' she says, circling a finger around the tip. 'I wonder how badly it needs to be released[else]You hear a sigh of disappointment from your groin. 'Hmm... I thought not. Well, perhaps we can fix your lack of equipment with some work[end if]...' she remarks, ominously.";
	if a random chance of 1 in 2 succeeds:
		say "     [if Player is male]'I bet it's just as needy as my cock. Maybe if you help the poor thing out, I'll give you a nice reward...'[else]'Why don't you start with my cock? I'll be sure to reward you if you do well.'[end if] Before you can think of saying yes or no, she slips her leotard to the side, letting her erect, barbed penis free before pressing it to your lips. With the clothing out of the way, her scent is far too powerful, driving you crazy. With your lust skyrocketing, you gladly open for her feline penis, and you both moan as it slides into your mouth. Finding the position difficult, you bob your head back and forth clumsily, but your efforts seem to be working as she grasps onto your [if Player is male]cock[else]thighs[end if], moaning. Her shaft begins to twitch in your mouth, and you double your efforts to get the kitty off. [if Player is male]Losing her self-control, she starts stroking your cock, licking up any pre that comes out of the tip. Wanting even more, she practically swallows your cock in one motion. You give a stifled moan as she sucks you off with as much ferocity as you give her. She draws her head off of your penis for a moment to tease you a bit. [end if]'Oh, keep that up and you'll get a nice, creamy reward!' Apparently not wanting you to waste any of this reward, she puts all of her weight onto you. Unable to move your head anymore, you massage her throbbing pink cock with your tongue[if Player is male] as she puts your shaft back into her greedy mouth[end if]. Moments later, your efforts pay off, as her penis gives one mighty twitch before filling your mouth with her cum. [if Player is male]She lifts her head off of your cock, yelling in pleasure. Keeping her word, she grabs your [cock size desc of Player] shaft with her paws, pumping you until you reach your own orgasm. [end if]'Wasn't that a delicious [if Player is male]and relieving [end if]treat?' she says through her panting. Swallowing your treat, you lie back in exhaustion from the fight and sex. The blue kitty turns around, licking some of the mess off of your face before smiling at you and leaving.";
	else:
		say "     '[if Player is male]I bet it's just as needy as my pussy. Why don't you help my poor little cunt out, and I'll think about a reward for you[else]Why don't you give me some relief, and I'll see about getting you some proper equipment[end if],' she says before shoving her leotard aside, revealing her dripping folds. The scent is overpowering with it out of the way, and you find yourself almost rising up the last few inches to get a taste. This turns out to be unnecessary, though, as she lowers herself to your waiting lips. Your first few licks get pleased moans of approval from the kitty above you. Her fluids taste slightly sweet, and begin to flow out of her cunt after a few more licks. Unable to control herself, she begins stroking her cock as you continue to lap at her delicious folds. With the combined pleasure, it isn't long before you hear a scream of pleasure along with the feeling of warm liquid covering your [breast size desc of Player] chest. She gets up, giggling at the sight of your wet face. [if Player is male]'I thought of a reward for you! Your face is soaked, so I'll help you clean it off!'[else]'You're absolutely soaked. A few more rounds like that and I'll be surprised if you don't get the proper [']equipment['],'[end if] she says before licking your face clean. 'That was delicious. Be sure to come back!' you hear as she stands up and walks away from your exhausted body.";
		if Libido of Player < 60:
			now Libido of Player is 60;

[Female scene
Presents a list of options to the player]
to say felinelosefemale:
	say "     The lithe little gymnast walks over to you, giggling every once in a while as she starts removing your clothing. With the last shred of fabric removed, she presses herself against your [bodydesc of Player], [bodytype of Player] body. Her breasts rub around your [breast size desc of Player] mounds, drawing a moan from you. Deciding that it means you're ready, she draws back, kneeling between your legs. 'Has this little [if bodyname of Player is listed in infections of Felinelist]kitty[else]girl[end if] been keeping up with her stretches?' she asks, grabbing your hips and pulling them up with her as she stands. You don't have any time to answer as she pushes her face towards yours, bending your spine in ways it probably shouldn't be bent.";
	if dexterity of Player > a random number between 12 and 20:
		say "     Somehow, your spine doesn't break as she locks her lips with yours. After a brief kiss, she keeps your legs pressed in place, your [cunt size desc of Player] pussy positioned over your head as she moves around you. Now standing over your head, she lowers herself onto your face, dripping a mixture of sexual fluids from her excited genitals onto you. She presses her face into your waiting folds, lapping at your practically gushing liquid. Surprised at your readiness, she giggles, standing up and removing her tight leotard. Without anything to hold it back, drips of fluids fall onto your face from her pussy, hovering over your head. You watch as she pushes her cock into you agonizingly slowly. She gasps as she bottoms out, clearly enjoying what you have to offer, and loses all restraint as she begins thrusting into you wildly. Within minutes, the cat on top pushes past her limit, releasing a rather thick load inside of you. You moan, so close to release, but the feline above you doesn't seem interested in getting you off right now. From this angle, you can only watch as her balls pulse, pushing everything she has into you. When they finally slow down, she quickly pulls out, pushing you close to the edge again. A glob of your mixed fluids falls on your face, unexpectedly triggering an orgasm with its intense smell. With your [cunt size desc of Player] cunt pulsing, even more fluids find their way into your face before the sleek woman flips your legs back onto the ground. Out of breath, and still battered from the fight, you lie there as your kitty partner drops down next to you, licking your face clean. 'That was fun! Keep practicing those stretches and come back another time, OK?'[impregchance]";
	else:
		say "     You yell in pain as a few bones crackle and pop under the stress. The blue furred woman looks at you with a disappointing stare. 'You need to practice stretching, otherwise it will be hard to have fun.' She stands over your chest, sitting down as she pulls aside her leotard to reveal her set of genitals. 'I have something that might help you with those harder ones...' she says, beginning to stroke her light pink, feline penis. Feminine juices begin flowing down your chest as she rubs faster and faster, moaning as she masturbates over you. She cries out in pleasure as ropes of cum fall onto your face and chest. 'Let's get this rubbed in. Wouldn't want any of it to go to waste!' Her hands massage your face and [if Breast Size of Player > 0]breasts[else]chest[end if], working her semen into you. 'Be sure to come back later, after some practice!' she teases, hopping off of you and walking away.";

[Footjob scene
Summary: rubbing, then very rough rubbing, but no release for the player (+libido)]
to say felinelosefoot:
	say "     The slender woman giggles, retracting her claws. She walks over to where you lie, standing above your battered body. She places a foot on your chest, asserting her dominance over you. 'How do you expect to win with such a clumsy body?' she taunts, pressing more of her weight onto her foot. Thankfully, she takes her foot off of your [breast size desc of Player] chest before it becomes painful. The cat-like girl props your body up against the bench in a sitting position. Offering no resistance to her, she then pulls down your pants, revealing your [cock size desc of Player] penis, smiling mischievously as it hardens slightly. The lean kitty stands back up, and presses her foot against your tool. Thankfully, her feet are covered in the same soft fur, so it is pleasant, but the light strokes don't offer much stimulation. As if reading your mind, she presses more firmly, locking your cock between her foot and your stomach. She doesn't stop, however, and continues to rub and press even more roughly until you wince in pain. She backs off slightly, smiling at your apparent discomfort. 'Aw, was that too rough? Maybe I would be gentler if someone could return the favor...' Wanting her to lighten up, you reach for the bulge in her leotard, only to have your hands swatted away. 'No no no. Return it in the same way,' she chides. 'Well, perhaps another time. Be sure to practice stretching! Maybe next time you can reach me with your feet and get a nice reward.' Having said that, she releases her foot from your cock and bounces away, leaving your poor member aroused and hurt.";
	if Libido of Player < 60:
		now Libido of Player is 60;

[Vaginal ride scene
Summary: player gets ridden, she arches backwards to face them]
to say felinelosevaginal:
	say "     Eyeing you hungrily, the thin cat woman jumps onto your chest, making you moan in pain. Grinning at your discomfort, she begins undressing you, rubbing every part of your body she exposes. You moan as she plays with your [breast size desc of Player] chest, becoming aroused from the touch of her soft, blue fur. She stops suddenly, and spins around so her back is facing you. Unsure of what she is planning, you feel furry hands wrap around your [cock of Player] penis as it begins to stiffen from the stimulation. Giggling slightly, she pushes aside her leotard, revealing her small pussy. Grabbing your cock with one hand, she guides it into her folds, [if Cock Length of Player > 12]wincing as your large cock stretches her[else]humming with pleasure as she sinks onto you[end if]. As teasing as she was, she can't hold herself back from riding your shaft wildly. Unable to resist, you begin thrusting your hips back up into her, causing her to stop. She puts her hands above her head and leans backwards, grabbing your arms and extending her claws, rather painfully, into your skin, causing you to wince in pain. When you open your eyes back up, you're staring into her upside down face. 'Don't move a muscle, you naughty [if Player is female]girl[else]boy[end if].' She slowly retracts her claws. Apparently, the odd position doesn't hinder her ability to fuck you senseless, as she picks up the pace right where she left off. As if trying to make you move, she starts moaning loudly, slowing her pace every once in a while to tease your poor cock. Continuing like this for several minutes, the feline begins to breathe heavily, slamming against your rock hard member even harder. You try to hold back an orgasm, fearing what she might do to you if she drew blood just for moving, but when she is driven over the edge, the sensation of her cunt pulsing against you is too much, and you pump your [Cum Load Size of Player] load into her waiting womb. Panting from the exhaustion of being beaten and ridden, you can't do anything other than lie where you fell. The upside down face in front of you grins. 'That was a close one. Maybe next time you can cum before me so I can punish you,' she taunts, pulling herself off of your cock and walking away with a slight bounce in her step.";

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
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride her";
		now description entry is "have her fuck your pussy";
		now sortorder entry is 2;
	if Player is male:
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
			if Player consents:
				now sextablerun is 1;
				now lastfuck of Leonard is turns;
				if title entry is "Ignore":
					say "[felinewinignore]";
				else if title entry is "Give oral":
					say "[felinewingiveoral]";
				else if title entry is "Ride her":
					say "[felinewinvagride]";
				else if title entry is "Fuck her":
					say "[felinewinvagfuck]";
				wait for any key;
		else:
			say "Invalid Option.";

[Victory scene - Give oral
Player is given the option to:
y - suck her cock, getting aroused by her taste + smell
n - lick her cunt, getting aroused by her taste + smell if the player has a penis]
to say felinewingiveoral:
	say "Would you like to suck her cock or eat her out? (Y for cock, N for pussy)[line break]";
	[Suck her off - players with a cock or pussy will masturbate (cock takes priority)]
	if Player consents:
		say "     You eye the bulge in her leotard, throbbing even as she lies defeated. Deciding she could use some relief, you kneel down over her crotch, rubbing her needy bulge with one of your hands. It pulses and twitches, sensitive even through the layer of clothing. Moving closer, you push aside the tight fabric, making her penis and small orbs available to you. Moving closer to them, you smell the buildup of fluids that was happening behind her clothing. The scent is overpowering and arousing, making [if Player is male]your [cock of Player] penis harden in anticipation[else if Player is female]your cunt slick with need[else]you anticipate what you're about to do even more[end if]. You bring your face right next to those cute balls of hers, giving each a few licks before moving upwards.";
		say "     With small licks, you work your way up her shaft, catching several dollops of pre on your tongue. It tastes rather unfamiliar, but does drive you deeper into lust. It takes every ounce of self-control not to shove her entirety in your mouth immediately. Straining against your arousal, you tease her further, kissing around the tip and sucking on some of the barbs. With each little tease, even more of the clear fluid leaks out of her cock and finds its way into your mouth. It quickly becomes too much, and you wrap your lips around the tip of her cock, pushing forward until your nose is buried in her luxurious coat of fur. She lets out a long moan as several more spurts of precum drip out into your throat. Driven crazy by lust, you [if Player is male]grab your own cock and begin to furiously stroke it as you [else if Player is female]shove a few fingers into your needy cunt and begin fingering yourself furiously as you [end if]begin working her shaft at an amazing pace.";
		say "     Despite all of the prior teasing, the lust-filled cat girl manages to hold on for a while, constantly moaning under you. The combination of her powerful scent and arousing pre do a number on your own restraint, and before long you're moaning onto her cock as and orgasm hits you like a wave. [if Player is male]Frantically stroking your [cock size desc of Player] cock, you release a [Cum Load Size of Player] load onto the ground. [else if Player is female]Your cunt clenches around your fingers, dripping your own fluids onto the ground below. [end if]Your moaning around her barbed shaft is enough to trigger her own orgasm, flooding your mouth with her delicious cream. Letting your mouth fill up with it, you slide off of her cock and go up to give her a kiss. She gladly returns it, and you give her the treat she just poured into your mouth. You tell her to swallow, and she does so enthusiastically, even licking up some of the dribbles around your mouth afterwards. Satisfied with the result of your encounter, you readjust your clothing and gear before leaving the blue gymnast panting on the bench.";
	[Eat her out - players with a cock become aroused and masturbate]
	else:
		say "     Your eyes wander to the almost painfully tight cameltoe, soaking with fluids. Deciding she could blow off some steam, you tell her to kneel on the bench and present herself to you. 'Of course, master,' she says before climbing onto the bench and spreading her thighs for you. Moving behind her, you slide her leotard out of your way, and are greeted with her powerful, feminine scent. [if Player is male]Responding to the wondrous smell, your cock becomes uncomfortably hard, making you pull it out of your clothing. [end if]Drawn closer by the odor, you give a few teasing licks and nibbles to the inside of her thighs, eliciting needful moans from the now-submissive kitty. With a veritable river of juices coming from her cunt, you decide the little bit of teasing you did was enough and after some begging from her you give a long lick to her lips. The waterfall coming from her pussy is slightly sweet, making you drive your tongue into her for more[if Player is male]. Precum begins leaking out of your cock from the taste of her juices. You reach down unconsciously and begin stroking yourself, unbelievably turned on by this[end if].";
		say "     Moaning uncontrollably, it doesn't take very long for the furry gymnast to climax under your licks and kisses. You are greeted with even more fluids soaking your face. [if Player is male]The gush of liquid helps push you over the edge as you orgasm, spurting your [Cum Load Size of Player] load onto the ground below. [end if]You order the thin woman to turn around and clean you up. She eagerly rises her face to yours, licking up all of her juices from your face. Satisfied with her work, you readjust your clothes and gear before leaving her to catch her breath.";

[Victory scene - Ride her cock vaginally
Make the currently submissive gymnast do all the work while you kneel over her]
to say felinewinvagride:
	say "     You eye the crotch of her leotard, soaked with precum. Deciding not to pass up the opportunity, you walk over to the gymnast. Wanting to make the kitty work for the release she desperately needs, you decide to have her do all of the work, and tell her to strip. She gladly obliges, removing the tight fabric astonishingly fast. The poor girl's crotch is absolutely soaked with fluids from both genitals, almost reaching her bellybutton and covering the front of her thighs. Now unhindered by fabric, her cock twitches about, releasing even more globs of pre that roll down its barbed length.";
	say "     While she lies there panting for release, you kneel over her cock, taking your time to admire her restraint. You reach down and grab her barbed shaft, stroking it across your folds. With each pass, it throbs, oozing precum into your [cunt size desc of Player] cunt. You lean down to her face, putting your mouth right to her ear and whispering, 'Fuck me.' Suddenly regaining all the strength she lost in the fight, you let out a [if Cunt Depth of Player < 4]pained[else]lustful[end if] groan as she slides her pink cock [if Cunt Depth of Player < 8]almost all the way [end if]into you. Despite wanting to wildly fuck her back, you keep yourself in control, hovering over her, which forces her to thrust up into you. Sensing that you won't be making things any easier, she puts her hands over her head and adjusts her feet, putting herself into some sort of upside down crawl. Her efforts work spectacularly, as she gains enough leverage to start bouncing you with each of her powerful thrusts. Unfortunately, with her having been pent up for so long, she can't keep up the pace for long before you feel her feline penis give its last throbs inside you, releasing a torrent of her seed.";
	say "     Upset that she couldn't hold on until you got your own release, you give the slutty cat a playful slap. 'Did I say you could come? Now you're going to have to help clean up the mess you made,' you threaten, pulling off of her barbed cock and shoving your [cunt size desc of Player] pussy into her face. Without needing to be told again, she begins to greedily lick all of her cum out of you. Delighted by how skilled she is at this, you start scratching behind her ears, encouraging her to make your cum soaked cunt the cleanest she can. Listening to your every word, she dives her tongue into you, making you moan. With this new knowledge of your weak spot, she drives her tongue in and out, licking everything she can inside your pussy. From the previous fucking and the new feeling of her surprisingly human tongue, you soon shudder with an orgasm. Rising off of her face, you see that it's covered in an erotic mixture of her cum and your feminine fluids. You give one final order for her to clean herself and head off. As you turn around to get one last look, you see the furry girl use one hand to wipe her face, licking the mixture of fluids as she strokes her cock.";

[Victory scene - Fuck her vaginally
Have her split on the bench and fuck her]
to say felinewinvagfuck:
	say "     Wanting to explore some interesting positions, you tell the now-submissive kitty to show you some poses. Sensing just what you want, she goes through a few seemingly bone breaking poses, all of them showing off her assets. At one point, she gets onto the bench, splitting her legs across it with her back towards you. You quickly order her to stay still, and she can only look behind in apprehension as you walk up to her. Her tail flicks wildly, which is rather annoying, so you grab it and put it up to her face. 'Hold onto this like a good kitty.' You swat her hand away as she reaches for it and make a biting motion. She quickly opens her mouth, allowing you to put her tail in, and holds it with her teeth. One annoyance out of the way, you look at your second one: her leotard. It would be rather difficult to get off in this position, so you decide to just extend the tear for her tail down a bit further. Now exposed, drips of her fluids begin to leak out of the hole.";
	say "     Not wanting to waste any more time, you lean over the cat girl, putting your hands on the back of the bench next to hers. You rub your erect [cock size desc of Player] shaft against her waiting folds, coating it with the waterfall of liquid. Preparations complete, you make one agonizingly slow thrust into her. She lets out a moan, muffled by the furry tail in her mouth. As easy as it was to slip into her, it's almost painfully tight inside. As if reading your mind, her walls ease up on your [cock of Player] cock, letting you thrust in and out with much more ferocity. The furry gymnast gives out continuous groans at your treatment, letting out one final, loud one as her walls clench around you again. The sensation nearly drives you over the edge as well. That's when the powerful scent of her cum hits you, driving you mad with lust. You start to rapidly fuck her sopping wet pussy once again, ignoring the nearly painful sensation of her pulsing walls. You don't hold on for very long, depositing your [Cum Load Size of Player] load into her waiting womb.";
	say "     Satisfied with your work, you pull out of the slutty cat. You tell her to clean up and begin to go on your way. She immediately dips her head between her thighs and laps at any stray cum. As you turn around to leave, you see her start lapping at the pool of cum she left on the bench.";

to say felinewinignore:
	say "     You decide to leave well enough alone.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Feline Gymnast"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The gymnast leaps at you, but instead of hitting you, she vaults over you, slashing at your back.[or]She slashes quickly at any part of you she can reach.[at random]";
	now defeated entry is "[beatthefelinegymnast]"; [ Text when monster loses. ]
	now victory entry is "[losetofelinegymnast]"; [ Text when monster wins. ]
	now desc entry is "[felinegymnastdesc]";
	now face entry is "very human, except for the furry pair of cat ears"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "very thin, but with [one of]smooth[or]toned[or]sleek[at random] muscles. Your hands and feet, while retaining their human shape, now have retractable claws where your fingernails were"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "[one of]rich[or]dark[or]luxurious[at random] blue fur. It feels soft against your"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "You have a long tail covered in a lovely shade of blue swaying behind you, helping you keep your balance."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]light pink, feline[or]barbed, feline[or]cat-like[at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "it becomes thinner and much more womanly. Your scalp feels odd as two furry feline ears pop out of your head"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "a sudden weight is lifted from your shoulders. Looking down, you notice you have become much thinner, and your muscles have a much smoother tone to them"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "luxurious blue fur begins growing over your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel your body shift forwards to accommodate for some added weight. Looking back you notice a long, cat-like tail growing, swaying to help you regain your lost balance"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "small bumps form on it, protruding out into odd barbs. Its color shifts to a brighter shade of pink as flesh grows around the base, forming a sheath that it eventually settles down into"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 15;
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 64;
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 1; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]thin[or]svelte[or]lithe[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
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
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Endings

[when play ends:
	if bodyname of Player is "Feline Gymnast":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]
Feline Gymnast ends here.
