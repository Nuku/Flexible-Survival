Version 6 of Desperate Bunny by Nuku Valente begins here.
[ Version 1.0 - Unknown content - Unknown author                                ]
[ Version 2.0 - Placed in Nuku Valente folder, unknown changes - Nuku Valente   ]
[ Version 3.0 - Sandra and Colleen interaction - Stripes                         ]
[ Version 3.1 - Fang-specific ending - Stripes                                  ]
[ Version 4.0 - Added sex menu - Stripes                                        ]
[ Version 4.1 - Added 69 option - Stripes                                       ]
[ Version 5.0 - Sandra Overhaul - Blue Bishop                                   ]
[ Version 5.1 - Added earea to Rabbit Den - Wahn                                ]
[ Version 6.0 - Extensive writing cleanup - Song                                ]

"Adds a situation to Flexible Survival with a needy, but noninfectious, rabbit."

Section 0 - Variables

NGRP is a number that varies.
rabbitmulticock is a number that varies. rabbitmulticock is usually 0.
rabbitfucked is a number that varies. rabbitfucked is usually 0.
rabbitsibling is a number that varies. rabbitsibling is usually 0. [ 1 started, 2 first part, 3 second part (fetch toy), 4 toy fetched (waiting for sex), 5 final stage (player dominant), 6 final stage (player submissive)]
lust of Sandra is 555.
sangenreg is a truth state that varies. sangenreg is usually false. [false = female, true = male]
sanreq is an action applying to nothing.

Section 1 - The Situation

Table of GameEventIDs (continued)
Object	Name
Needy Rabbit Girl	"Needy Rabbit Girl"

Needy Rabbit Girl is a situation.

when play begins:
	add Needy Rabbit Girl to BadSpots of FemaleList;
	add Needy Rabbit Girl to BadSpots of FurryList;

After resolving a Needy Rabbit Girl, try looking;

Instead of Resolving a Needy Rabbit Girl:
	if ngrp is 0:
		say "     Drifting about the city streets is a woman. She is wearing a long skirt and a jean jacket over a bright yellow blouse. Sprouting from her brown, shoulder-length hair are two long white rabbit ears. She doesn't look feral, and she is picking around through the rubble as if searching for something. One of her great ears suddenly lifts. She looks directly at you for a moment, wide eyed, then flees before you can say anything. How odd.";
		increase ngrp by 1;
		stop the action;
	if ngrp is 1:
		say "     You spot that rabbit girl again and duck low so she doesn't see you, hopefully. You creep up closer to have a look at her. She's bent over, picking up something from the ground. From a tear in the seat of her skirt, an upturned rabbit tail flicks back and forth energetically.";
		let bonus be (( Charisma of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "     [bold type]You roll 1d20([diceroll])+[bonus]: [diceroll + bonus]/12[roman type], ";
		increase diceroll by bonus;
		if diceroll > 12:
			say "You call out gently to the woman and she turns to face you once more. She looks ready to flee, but you hurriedly explain you mean no harm. Cautiously, she begins to relax, but does not approach you.";
		else:
			say "You call out gently to the woman, but when she turns that panicked gaze on you, you fail to think of anything convincing to say, and she flees off into the ruins.";
			stop the action;
		if Player is male:
			say "     As you approach her, slowly, you speak in gentle tones. She seems to be relaxing a little bit. When you get within twelve feet, you see that her eyes have wandered down, no longer meeting your gaze. Instead she's looking at your belly, or groin. When you reach easy conversational distance, she grabs at your hand. 'I thought I would die alone in this city!' she gasps out. 'I can't even tell you how happy I am to see you.'";
			now battleground is "Outside";
			choose row with a area of battleground in the Table of Random Critters;
			follow cock descr rule;
			say "     You ask her if she has been infected, and she nods. 'My rabbit bit me and I changed, but not as much as some of the people I have seen. Have you seen those [Name entry]s? Crazy, right?' She presses to your front as she talks, letting her shapely fore compress against you. You can feel she has become quite endowed, six breasts of decreasing size nudging against your body, making your [cock size desc of Player], [Cock of Player] cock stiffen lightly.";
			say "     Do you follow your urges?";
			if Player consents:
				say "     As if she could detect the decision being made in your eyes, she reaches for your groin, rubbing slowly as a smile forms on her muzzle. 'Well, since you asked,' which you had not yet, 'Yes.' She grabs at a hand and guides you into a basement. 'My home,' she explains before turning to you.";
				say "     [sexwithSandra]";
				say "[bold type]You now know how to navigate to the rabbit den[roman type].";
			else:
				say "     She looks clearly disappointed and crosses her arms. 'I thought you were the kind of man to help me, but I guess I was wrong. Or maybe you're shy? Look, you're nice. Here's my address, ok? Come visit any time.";
			now Rabbit den is known;
			increase score by 1;
			now Needy Rabbit Girl is resolved;
			now Resolution of Needy Rabbit Girl is 1; [male/herm player got invite to Sandra's den]
			stop the action;
		else:
			say "     You approach the bunny, whispering soft things to her, and she permits you to walk closer. Something about her expression seems disappointed, but it fades fast. She reaches for your hand. 'It's been so long since I talked to anyone, or even saw anyone that looked human,' she murmurs. 'I just feel so lonely. Can I hold you?'";
			say "     Do you let her?";
			if Player consents:
				say "     She wraps her arms around you and is soon hugging to you quietly. Her breasts, now pressed against your front, feel warm and soft. There are too many of them, six gently rubbing against your [Skin of Player] chest. Her hands slowly dip below, reaching for your ass and giving it a squeeze as she looks up into your eyes. 'I am so... lonely,' she whispers. 'Will you be my sister?'";
				say "     Do you let her continue?";
				if Player consents:
					say "     She slowly lies you down with a smile, looking quite relieved at your consent. She has you take off your clothes, then puts her hands on her hips, looking you over. 'What?' she asks, flashing a grin. 'You thought we were going to make out in the middle of the street? Get real. Come on!' She waves excitedly and barely waits for you to stand back up again before she leads you hurriedly through the devastated city to a small basement door. She fishes out a key and has the door open quickly, leading you inside.";
					move player to Rabbit Den;
					now Rabbit Den is known;
					now rabbitsibling is 1;
					increase the score by 1;
					now Resolution of Needy Rabbit Girl is 2; [player sisterified]
					now Needy Rabbit Girl is Resolved;
				else:
					say "     The bunny looks embarrassed, then frustrated. She bites her bottom lip and sniffles. 'Fine then, I can make it on my own!' she says before defiantly marching away.";
					now Resolution of Needy Rabbit Girl is 3; [player refused sistership]
					now Needy Rabbit Girl is resolved;
					stop the action;
			else:
				say "     She looks embarrassed, then frustrated. She bites her bottom lip, then sniffles, 'Fine then, I can make it on my own!' and she defiantly marches away.";
				now Resolution of Needy Rabbit Girl is 3; [player refused sistership]
				now Needy Rabbit Girl is resolved;
				stop the action;


Section 2 - Rabbit Den

Table of GameRoomIDs (continued)
Object	Name
Rabbit Den	"Rabbit Den"

Rabbit Den is a room. It is fasttravel. It is private.
earea of Rabbit Den is "Outside".

The description of Rabbit Den is "     Not a literal rabbit den, a basement actually. It is warm and dark in here. You can see books piled in messy stacks, and a small cot has been set to the side. It seems whoever lives here is stocked for the long haul, with small bottles of water and packaged food up on a shelf. There is a soft, musky scent in the air.".

the scent of Rabbit Den is "     This basement hidey-hole has a soft, musky scent in the air. It smells of female rabbit, heather and clover."


Section 3 - Sandra the Bunny Girl

Table of GameCharacterIDs (continued)
object	name
Sandra	"Sandra"

Sandra is a woman.
ScaleValue of Sandra is 3. [roughly human sized]
Cock Count of Sandra is 0.
Cock Length of Sandra is 0.
Ball Size of Sandra is 0.
Ball Count of Sandra is 0.
Cunt Count of Sandra is 1.
Cunt Depth of Sandra is 12.
Cunt Tightness of Sandra is 6.
Nipple Count of Sandra is 2.
Breast Size of Sandra is 4.
[Basic Interaction states as of game start]
TwistedCapacity of Sandra is false. [can not take oversized members without pain]
Sterile of Sandra is false.
PlayerMet of Sandra is false.
PlayerRomanced of Sandra is false.
PlayerFriended of Sandra is false.
PlayerControlled of Sandra is false.
PlayerFucked of Sandra is false.
OralVirgin of Sandra is false.
Virgin of Sandra is false.
AnalVirgin of Sandra is true.
PenileVirgin of Sandra is true.
SexuallyExperienced of Sandra is true.
MainInfection of Sandra is "Anthro Rabbit".

The icon of Sandra is Figure of sandy_icon.
The description of Sandra is "     A mostly human female, if you don't count the rabbit ears, six breasts, and that cute little white tail that sways behind her. She is usually wearing a yellow blouse, jean jacket, and a long red skirt. Her feet are clad in sneakers, well worn.".
Sandra is in Rabbit Den.
The conversation of Sandra is { "Moved!" }

Instead of conversing the Sandra:
	say "[sandtalk][line break]";

sangr is a text that varies. sangr is usually "[one of]sister[or]sis['][at random]".

to say sandtalk:
	if rabbitsibling is 0 and a random chance of 1 in 2 succeeds:
		say "     Approaching Sandra, she suddenly seems a little bashful.";
		say "     'Oh! Hey, hon. This may seem a little odd to ask...' As she brings up the request, she begins to blush. 'But I get real lonely sometimes. Maybe you could... be my sibling?' Beyond the literal meaning of this request, you also figure she want to change you to look more like her as well.";
		if Player consents:
			sangenderquery;
			now rabbitsibling is 1;
		else:
			say "     'Oh, okay!' She turns a deeper shade of red. 'It's no problem, I won't bring it up again.'";
	else:
		if rabbitsibling > 0 and a random chance of 1 in 10 succeeds:
			say "     '[one of]If calling you [sangr] is no longer feels right[or]Remember, if you ever want me to stop calling you [sangr][stopping], just make a [bold type]Request[roman type].";
		else:
			say "     [one of]'Did I mention my name is Sandra yet? I can be sometimes a ditz about that.'[or]'It's so nice having someone around to talk with.'[or]'Do you think someone will come rescue us?'[or]'I hope my rabbit is ok. I mean, yeah, he did kind of bite me and turn me into a crazy rabbit lady, but he's still my pet.'[or]'You smell nice. God that sounded weird, sorry.'[or]'Hello there!'[at random]";

to sangenderquery:
	say "     'Oh, thank you!' She seems very giddy over you agreeing to these terms. 'Alright, so";
	if Breast Size of Player > 0:
		say "... Sister would be most appropriate, right?'";
		if Player consents:
			say "     'Right! It can be hard to tell sometimes these days.'";
			now sangr is "[one of]sister[or]sis['][at random]";
			now sangenreg is false;
		else:
			say "     'Oh, sorry! It can be hard to tell sometimes these days.'";
			now sangr is "brother";
			now sangenreg is true;
	else:
		say "... Brother would be most appropriate, right?'";
		if Player consents:
			say "     'Right! It can be hard to tell sometimes these days.'";
			now sangr is "brother";
			now sangenreg is true;
		else:
			say "     'Oh, sorry! It can be hard to tell sometimes these days.'";
			now sangr is "[one of]sister[or]sis['][at random]";
			now sangenreg is false;
	say "     'Alright, [sangr] it is! Thank you so much!' Giggling, she closes in to wrap her arms around you, no doubt giddy at the prospect of having you as one of her kin.";
	say "     'If you ever change your mind, feel free to make a [bold type]Request[roman type]. Next time we have fun, we'll get started!'";

understand "request sandra" as sanreq.
understand "request of sandra" as sanreq.
understand "request from sandra" as sanreq.

check sanreq:
	if Sandra is not visible, say "That's not a verb I recognize." instead;

carry out sanreq:
	if rabbitsibling is 0:
		say "     You have nothing to request of Sandra.";
	else:
		say "     'You want me to see you as [if sangenreg is false]male[else]female[end if]?'";
		if Player consents:
			if sangenreg is true:
				now sangr is "[one of]sister[or]sis['][at random]";
				now sangenreg is false;
			else:
				now sangr is "brother";
				now sangenreg is true;
			say "     'Alright, [sangr] it is, then!'";
		else:
			say "     'No problem!'";

the scent of Sandra is "     Sandra smells of female rabbit, with hints of heather and clover in her scent[if HP of Sandra is 3]. You can smell Colleen's scent upon her as well[end if][if Libido of Fang > 3]. Fang's scent lingers a little upon her as well[end if]."

the fuckscene of Sandra is "[sexwithSandra]".

to say sexwithSandra:
	if lastfuck of Sandra - turns < 8:
		say "     She flushes gently. 'It has not been long enough since last time. Even a girl needs to recharge a little, you animal you.' She leans in to kiss your cheek softly, but does not proceed with intimacy.";
	else if rabbitsibling > 0 and rabbitsibling < 5:
		say "[sandrasex2]";
	else if Player is neuter:
		say "     'Uh, hon? No offense or anything, but you have nothing to play with. Fucking someone without any of that just feels weird to me, ok? Sorry.'";
	else if HP of Sandra is 0 and player is male:
		say "[sandrasex_leadin]";
		say "[sandrasex1]";
	else:
		say "[sandrasexmenu]";


to say sandrasexmenu:
	if HP of Sandra is 3:
		say "     Colleen's ears perk up as she notices you heading over to the bunny's bunk. It seems the perceptive puppy's picked up on your intent and has taken an interest in the upcoming show";
		if lastfuck of Colleen - turns < 4:
			say ". The husky girl rolls onto her back and slides a paw between her legs, seemingly content to watch what she hopes will be a nice show.";
		else:
			say ". The husky girl whines softly and wags her tail, turning to flash her wet pussy at you. It seems like [if ColleenCollared > 0]your slutty pet[else]the stray bitch[end if] would enjoy some time with you as well.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Sex up the bunny";
		now sortorder entry is 1;
		now description entry is "Offer the bunny a good dicking";
	if HP of Sandra is 3 and lastfuck of Colleen - turns < 4:
		choose a blank row in table of fucking options;
		now title entry is "Threesome w/Colleen";
		now sortorder entry is 10;
		now description entry is "Invite the husky to join you";
	if HP of Philip is 2 and lastfuck of Philip - turns < 6:
		choose a blank row in table of fucking options;
		now title entry is "Threesome w/Philip";
		now sortorder entry is 11;
		now description entry is "Partake in piggy cock together";
	choose a blank row in table of fucking options;
	now title entry is "Cunnilingus";
	now sortorder entry is 2;
	now description entry is "Eat the bunny girl out";
	if Player is male or ( player is female and rabbitsibling >= 2 ):
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 3;
		now description entry is "Have a sexy 69 with the bunny cutie";
	if rabbitsibling > 0 and rabbitsibling < 5:
		choose a blank row in table of fucking options;
		now title entry is "Rabbit Kin Induction";
		now sortorder entry is 4;
		now description entry is "Undergo the process of being changed to be like Sandra";
	else if rabbitsibling > 4:
		choose a blank row in table of fucking options;
		now title entry is "Rabbit Sister Fun";
		now sortorder entry is 4;
		now description entry is "Have some toy fun with your rabbit sister";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Sex up the bunny":
					say "[sandrasex_leadin]";
					say "[sandrasex1]";
				else if nam is "Threesome w/Colleen":
					say "[sandraColleentrio]";
				else if nam is "Threesome w/Philip":
					say "[sandraphiliptrio]";
				else if nam is "Cunnilingus":
					say "[sandrasex_leadin]";
					say "[sandrasex3]";
				else if nam is "69":
					say "[sandrasex_leadin]";
					say "[sandrasex4]";
				else if nam is "Rabbit Kin Induction":
					say "[sandrasex2]";
				else if nam is "Rabbit Sister Fun":
					say "[sandrasex_leadin]";
					say "[sandrasex5]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	LineBreak;
	[clear the screen and hyperlink list;][unnecessary?]


to say sandrasex_leadin: [devnote: amend]
	if rabbitsibling > 0:
		if rabbitsibling > 1 and TailName of Player is not "Rabbit Girl":
			if rabbitsibling is 5:
				say "     'Oh...' Sandra frowns as she notices your lack of rabbit tail. 'We should probably fix that, [sangr]. Shall we?'";
				if Player consents:
					say "     Complying with her, she pulls you closer. Softly fondling between your legs, you feel her irreverent touch probe and tease you. Over time, your ass begins to change, reverting once more to that familiar rabbit tail. Once finished, she sets you back up. 'There we go, good as new!'";
					now TailName of Player is "Rabbit Girl";
					now tail of Player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
				else:
					say "     'Hmpf, alright...' She seems a little cross about your refusal, but she obliges it for the time being.";
			else:
				say "     Sandra frowns as she notices your lack of rabbit tail. She grabs you suddenly and hauls you across her lap[if scalevalue of Player > 3], a feat particularly amusing given your impressive size[end if]. Without word or warning, she slaps your bottom firmly and begins to spank you on the spot. Her stinging blows make your ass warm and red even as it begins to change, slowly regaining that lost rabbit tail. When it is completely restored, she waves a finger at you. 'And don't you go losing it again, [if rabbitsibling is 6]little [end if][sangr].'";
				now TailName of Player is "Rabbit Girl";
				now tail of Player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
		say "     She starts to strip naked in front of you, exposing the smooth flesh of her skin to your hungry eyes. She only has fur in a few places, across her short tail, long ears, and covering her large, pouting vulva. She smiles, running her hands across her six breasts, starting at the small B cups and working up towards her hefty Ds as she waits for you. Catching up to her, and feeling ready yourself, you start to follow, exposing your [Skin of Player] body to her. She eyes you appraisingly...";
	if thirst of Player > 50:
		say "     Sandra frowns at you. 'You look like you haven't had a drink in over a day[if rabbitsibling > 0], [sangr][end if].' She grabs for your face and buries you against a firm breast, teat brushing against your lips as she lays back with you. Feeling quite thirsty, you have no good reason to deny her and begin to gulp up the thick cream that pours out at command of your firm suckling. You nuzzle your [Skin of Player] face against the life-giving breast, filling your belly with sweet cream as the rabbit pets and coos at you encouragingly. When your thirst has abated somewhat, she gently pushes you back. 'Now where were we...'";
		PlayerDrink 15;


to say sandrasex1: [fuck the bunny]
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	if Player is male:
		let multicocks be 0;
		if Cock Count of Player > 1:
			if rabbitmulticock is 0:
				now response1 is "     She salivates a little as she eyes your multiple rods. 'I never played with someone like that. I bet it would feel great...' she says, mostly to herself, her thick musk permeating the room as she wriggles her rump.";
				now rabbitmulticock is 1;
			else:
				now response1 is "     She salivates a little as she eyes your multiple rods. 'I am so happy to see those! And they look happy to see me,' she says, mostly to herself, her thick musk permeating the room as she wriggles her rump.";
			increase lust by 2;
			now multicocks is 1;
		let response2 be "";
		if Cock Length of Player < 5:
			say "     She crosses her arms and sighs softly, 'Look, I do have standards, don't let the rabbit thing fool you. You are just too puny for me.' With that, she turns away and snubs you entirely. How rude!";
		else:
			if Cock Length of Player < 8:
				now response2 is "     She reaches to brush her soft fingers across your throbbing member. 'A little on the small side for me, but that looks just delicious,' she purrs at you with a smile, her scent thickening with desire.";
				increase lust by 2;
			else if Cock Length of Player < 12:
				now response2 is "     Her eyes go wide as she measures the length of your cock mentally, then with her lusty fingers. 'Oh, god, you are just perfect. You must get all the ladies, don't you?' She titters softly, rubbing her curvaceous front to you, tail wiggling behind her.";
				increase lust by 2;
			else:
				now response2 is "     She gasps with amazement as your [cock size desc of Player], [Cock of Player] equipment is exposed to her, clapping a hand over her face before she turns deep red. 'Damn! I... I am not sure I can even take that, but I want to try, oh I want to try!'";
				increase lust by 2;
				now oversized is 1;
			say "[response1][response2][line break]";
			if oversized is 1 and multicocks is 1:
				say "     She shakes her head quickly. 'Too big, too many,' she says, mostly to herself, grabbing for your [Cock Count of Player] poles, rubbing herself against their [cock size desc of Player], [Cock of Player] lengths with her smooth flesh, kissing over them and purring. She swings a leg over, letting one shaft run along her back while the [if Cock Count of Player > 2]rest thrust[else]other thrusts[end if] up along her front, hands stroking at you in firm, long motions as she rocks her body slowly, flicking tail teasing the huge shaft behind her.";
				say "     She grabs for one of your hands, drawing it to her topmost, heaviest mounds. She guides you to press them together in soft strokes as she reaches for a cock and guides it up into the channel her body provides naturally, pressing between each set of breasts in a warm ridge of firm breastflesh. She arches her back, seeming to get off from the contact just as much as your excited cocks are. As she rocks herself against you, you can feel your [Ball Size Adjective of Player] [Balls] swelling and churning with seed, ready to reward her for her work.";
				say "     She rocks her hips forward, grinding her erect clit and dripping folds against the cock that runs against and along her soft breasts, her back rubbing delightfully along the other as her hands work to keep all of your overabundant sexual flesh pleased at once. You can't hold back any further, [Ball Size Adjective of Player] [Balls] clenching, then spraying. Sandra squeaks appreciatively, grabbing a cock firmly as the fluid pushes up through it, trapping it a moment as she hurriedly dismounts you, cum already spurting everywhere. She manages to make it to the head of the [Cock of Player] pole, still grabbing it firmly, and seals her lips around the tip before allowing it to burst powerfully, making her cheeks puff out, then her belly, streams of seed running down her chin and across her chest as she guzzles in powerful, desperate motions.";
				say "     When the climax ebbs from you, she sinks, gasping for breath, but looking satisfied.";
			else if oversized is 1:
				say "     Sandra licks her lips as she looks at your oversized loins, reaching to rub eagerly at you before she clambers up against you, pressing your [cock size desc of Player], [Cock of Player] pole against her large, sopping wet lips. She wriggles and squirms, trying to slide the entirety of your meat into her shuddering, desperate form, but she never manages to take the whole thing.";
				say "     This doesn't stop her from trying as hard as she can, grabbing at your [Cock of Player] dick and stroking it with her warm hands as she pivots and writhes against you. The sheer effort of her motions has you panting with lust as your cock sings pleasure up your spine. All too soon, you can feel yourself releasing into her, making her belly surge round with great gouts of juices.";
				say "     She cries out, flopping back and catching herself, hands behind her back, propped at an odd angle as your shaft, only partially buried in her, twitches massively, bulges of your veins showing as you spill your fertile cum into her waiting depths. Sweat sheens on your [Skin of Player] flesh, and you feel slightly dizzy from the sheer force of your climax.";
			else if multicocks is 1:
				say "     Sandra stares lustfully at your multiple members for a moment before she turns around and presents her rump to you, then sits back. Those shapely cheeks descend on you before settling in your lap just in front of your [Cock of Player] cocks. She slowly rubs back, teasing them with her soft, twitching tail as she looks at you over her shoulder. You grab for her, squeezing her heavy upper breasts and drawing a happy little squeak of delight as you begin to roll and knead the sensitive flesh. She rises up against you, cock brushing against her ass, then catching against her large, thick lips.";
				say "     Her honey is flowing thickly, trailing down your [Cock of Player] shaft on contact in a warm trickle. You press up excitedly, but she raises against it, softly scolding as she lines up [if Cock Count of Player > 2]two[else]both[end if] of your dicks, getting the second to press securely against her tight pucker. With a nod from her, you draw her to yourself, impaling her on your [cock size desc of Player] poles until she is seated firmly against you, shuddering powerfully.";
				say "     Her hands grasp at your own as they explore her curvy front, roaming from breast to breast as she rises and falls against those [Cock of Player] cocks, wet slapping sounds filling the room as she grows tense. Her soft moans become louder before hitting a fever pitch, small form trembling against yours as her body tightens powerfully around you. Your [Ball Size Adjective of Player] [Balls] clench before you start to release into her with thick blasts of fertile seed, filling bowels and womb at once. Your erect members bump one another in their powerful twitches inside the rabbit girl as she presses tightly to you, not allowing any to escape her hungry form. Her ears go back and down suddenly, brushing at your [FaceName of Player] face lightly. 'I think I'm spoiled on regular fucking,' she whispers lightly, panting and glistening with sweat.";
			else:
				say "     Sandra rolls over onto all fours, looking somehow natural in the position. Her short tail wags over her ass invitingly as she wriggles the rump towards you. 'Come on, don't keep a gal waiting[if charisma of Player > 10].' Despite her invitation, you move in with your face first, licking over her furry folds. The fur is downy soft, and her flesh is wet with arousal. She gasps, then begins to give little whimpering moans as you explore her body with your hungry tongue. Your hands grab at her ass, pulling it against yourself as you nibble at her thick labia and nuzzle into the sensitive flesh. She feels large enough to take a cow, but the dense muscle of the passage keeps it clenched tight around your invading tongue as she gives a sharp wail, surrendering sweet honey for you.[else].'[end if]";
				say "     You rise up, licking your lips, and slip in over her from behind. With your [Cock of Player] cock at the ready, you ease it into her cunt, amazed at how well the thick muscles of her sex grip and flex around you. You sink into her in a smooth thrust, and it feels like you're already pistoning with how powerfully her cunt pulls at you. She bumps her ass against your crotch as she sighs. 'Come on...' she urges, and you comply, starting to rock, slowly at first, but faster with every satisfying push. Your dick vanishes into her squelching, hungry depths, spurting thick juices across your crotch as her strangely intoxicating scent washes over you. You lose track of time as you settle on her back and grab at her many-titted from, caressing those soft, pear-shaped organs as you buck your hips against her, rocking her with your passion.";
				say "     Pressed so close, you can feel her body trembling and her tail twitching against your [Skin of Player] belly as she hits her peak again and again beneath your hard rutting. Your balls clench, then explode deep into her body, filling her with hot jets of seed as she goes rigid, then suddenly swears as her face goes red with pleasure. You rest with her, cuddling gently as you both come down from your highs.";
			if Libido of Player > 20, decrease Libido of Player by 20;
			if rabbitfucked is 0:
				now rabbitfucked is 1;
				increase morale of Player by 10;
				increase score by 5;
			else:
				if Sandra is in rabbit den:
					say "     Finished and getting dressed, you feel a hand tugging at you and turn to Sandra. 'Look... Being a rabbit makes me kind of nervous, but I'm not infectious, right? I mean, god that was a stupid way to put it. I like you, ok? I want to come with you, please?'";
					say "     Do you let her?";
					if Player consents:
						add "water bottle" to invent of bunker;
						add "water bottle" to invent of bunker;
						add "food" to invent of bunker;
						move Sandra to Bunker;
						move player to bunker;
						now HP of Sandra is 1;
						if ColleenAlpha > 0 or ColleenCollared > 0 or ColleenSlut > 0, now lust of Sandra is turns;
						now lust of Philip is turns; [starts availability counter on Philip + Sandra]
						say "     'Thank you!' she cries, pressing her abundant front into your side, clinging warmly as she follows you back to the bunker, tail wagging the entire way. When you arrive, you see that she somehow trailed a suitcase of belongings, and she makes herself at home quickly. She even adds two bottles of water to your bunker supplies and a small package of dried meat.";
						increase score by 5;
						now Rabbit Den is not known;
						follow turnpass rule;
					else:
						say "     'Oh... well... ok, well, you know where to find me.' She sighs out and settles on her cot, watching you.";
			now lastfuck of Sandra is turns;
		[try looking;]

rabbitified is a truth state that varies. rabbitified is usually false.

to say sandrasex2: [become bunny siblings]
	if rabbitsibling is 1:
		say "     Sandra moves up and kisses you on a cheek. 'No nookie just yet, [sangr]. We have to make this official! Are you ready?'";
		say "     Let her proceed?";
		if Player consents:
			now rabbitsibling is 2;
		else:
			say "     'Well, let me know when you're ready to get started,' Sandra says as she moves to grab a book.";
			now lastfuck of Sandra is 250;
			stop the action;
		say "     She hikes up her dress, revealing her huge pussy. The vulva is about three inches long, and she reaches down to part those thick lips wetly with two fingers. A third finger dips inside, rubbing around slowly. She tenses and shudders from the intense feel of it, but does not linger for long, bringing out her now-glistening finger and holding it in front of your face. The musky fluid smells good - no, great - intoxicating your senses.";
		say "     Without thinking much about it, you flick your tongue over it. As the sweet substance is swallowed, prickles run over your [Skin of Player] skin. Your head tingles intensely as your ears begin to go warm. Sandra giggles as she watches you, then pulls out a mirror quickly, letting you watch. A large pair of white rabbit ears gradually begins to sprout from your head, replacing what old ones you might've had. They grow long and sensitive, new sounds reaching you. Even Sandra's excited heartbeat seems to softly tick in those great furry limbs.";
		say "[bold type]Your perception has increased by 1![roman type][line break]";
		increase perception of Player by 1;
		now rabbitified is true;
		[now Face of Player is "set of two long white rabbit ears twitching above your head, looking odd compared to your normal";
		now FaceName of Player is "Rabbit Girl";]
	else if rabbitsibling is 2:
		say "     'Are you ready for the next step? There's rumor of a certain [bold type]gooey[roman type] creature in the [bold type]sewers[roman type] that allows for certain people who aren't normally infectious to more easily spread their appearance to others. We'll probably need that, if you can nab some of the stuff.'";
		say "     Check to see if you have any?";
		if Player consents:
			if glob of goo is owned:
				decrease carried of glob of goo by 1;
				now rabbitsibling is 3;
				say "     'You have just the right thing,' she says in a complimenting tone as she takes your jar of goo and pops it open. She slathers it across her hands, then has you turn around. Her soft hands run across your back, working under clothes. The goo is warm thanks to her own heat, leaving slick trails over your body as she works down and grabs your bottom.";
				say "     'No one's a rabbit without a tail,' she chastises, starting to rub firmly at the base of your spine, tingling growing. A finger strays - by accident, perhaps, though unlikely - towards your unguarded pucker, slipping in all too easily with its coating of goo. You arch back against her as she starts to explore you without shame, testing your elasticity boldly. Perhaps it is the slick goo helping, but she manages two fingers, then three, pumping against your shuddering form as you rock in place[if Player is herm], your [Cock of Player] length[smn] throbbing and dewy folds growing hot as pleasure builds inside you[else if Player is male], your [Cock of Player] length[smn] throbbing as pleasure builds inside you[else], your dewy folds growing hot as pleasure builds inside you[end if].";
				say "     Your spine suddenly develops a kink, like a terrible lower back ache that grows more intense even as Sandra continues to stimulate your suddenly flexible sphincter. With an ecstatic wail of relief, the pain breaks with a wet noise as a rabbit's tail comes into fluffy fruition against Sandra's other rubbing hand. Sandra holds you gently as you recover, pressing her warm curves to your back and withdrawing her fingers from your rear.";
				say "     'I would ask you to lick again, but even I know that would be nasty.' She gives an odd expression, then laughs, moving away from you to clean off her hands. You eventually get up and start acclimating to the change. Upon returning, Sandra says, 'There's just one final phase and everything is set! I guess you could say it's more of a formality, but who says formality can't be fun?'";
				say "     'I think that's as much as I can do, but it feels like we're missing something in order for this to feel complete, you know?' Pondering over the notion, you imagine you'll have to figure it out for yourself. Perhaps a [bold type]lewd toy[roman type] of some sort is what she's looking for? Searching for something exactly appropriate is very unlikely in this mess of a city, so perhaps you should find a [bold type]store[roman type] that sells them?";
				now TailName of Player is "Rabbit Girl";
				now tail of Player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
				increase dexterity of Player by 1;
				say "[bold type]Your dexterity has increased by 1![roman type][line break]";
				increase score by 10;
				now lastfuck of Sandra is turns;
			else:
				say "     Having nothing of the sort in your possession, you decide to leave it at that for now, Sandra letting you off to go attend to your own matters.";
				now lastfuck of Sandra is 250;
				stop the action;
		else:
			say "     'Alright. Let me know when you're ready to continue,' Sandra says as she moves to grab a book.";
			now lastfuck of Sandra is 250;
			stop the action;
	else if rabbitsibling is 3:
		say "     'Hello [sangr],' she says, smiling. 'I'm still not sure how to finish this. You can probably tell I'm not very experienced with this kind of thing! If you run into anything out there, let me know!'";
		now lastfuck of Sandra is 250;
		stop the action;
	else if rabbitsibling is 4:
		say "     Presenting the carrot-shaped toy to Sandra, the rabbit girl quickly goes wide-eyed and flush.";
		say "     'Oh my, it's... Perfect!' Grinning widely and still blushing, she takes it from you and wobbles it around enthusiastically. 'I sent you off to find something fun, but I didn't expect a treat like this!' After looking it over in greater detail, she begins to ponder for a moment before returning her attention to you.";
		say "     'This is the best gift, but, hm, I wonder... Is it for me, or for you, [sangr]?' Grinning slyly at you, you imagine she'd greatly enjoy being rammed by the thing, but you could just as well be on the receiving end of it. Shall you be pitching the toy? Otherwise, you'll be catching it.";
		if Player consents:
			now rabbitsibling is 5;
			say "     You make you intent clear by taking the oversized rod from Sandra, gesturing for her to lay down. Eagerly, she obliges, laying down to expose the excited, already-slick lips of her oversized cunt.";
			say "     'Don't hold back, [sangr]. I can take it!' Considering your options, you could take the most obvious point of entry. Shall you? Otherwise, you'll surprise the rabbit girl by forcing it down her ass.";
			if Player consents:
				say "     Carefully, you press the toy's orange, pointed tip between her supple folds, quickly slicked by her heady honey. The lady moans out softly as you begin, gently fondling her many tits as she's made to take each successive, ridged inch of the twisted carrot's substantive girth.";
				say "     Throbbing pussy tightening around the intrusion, it nonetheless greedily obliges being so readily flooded by its increasingly wide girth. Watching her getting off as you begin to force the majority of its length in and out of her slick hole is more that enough to arouse yourself as well[if Player is male], [cock size desc of Player] cock[smn] standing hard, exposed to the open air[else if Player is female], [cunt size desc of Player] cunt[sfn] oozing down to stain the floor along with hers[else] in spite of your lack of outlet[end if].";
				say "     'Oh, someone's enjoying this little game!' Happily, Sandra reaches over to reciprocate your attendance, [if Cock Count of Player > 1]wrapping a hand around one of your dicks to softly stroke[else if Player is male]wrapping a hand around your dick to softly stroke[else if Player is female]moving a hand between your thighs to softly fondle[else]moving a hand to softly fondle[end if] you as you persist, the wet sound of your continued plunging into the lady's eager depths filling the air.";
				say "     The two of you lost in a dizzying haze of sweat-slicked lust, it's not long before she begins to cry out in bliss, driving you to shove the entire length of the toy down her throbbing cunt, compelled to keep her at the very height of ecstasy[if Player is male]. In turn, she continues to pump you at a feverish pace until you finally orgasm as well, painting her with your [Cum Load Size of Player] load[else if Player is female]. In turn, she continues to stroke you at a feverish pace until you finally orgasm a swell, staining the floor with your honey[end if].";
			else:
				say "     Carefully, you press the toy's orange, pointed tip past her tight, unsuspecting ring, quickly forced to oblige it. The lady groans out loudly as you begin, writhing and fondling herself as she's made to take each successive, ridged inch of the twisted carrot's substantive girth.";
				say "     Throbbing asshole tightening around the intrusion, it offers quite a bit of resistance as it's flooded by the thing's increasingly wide girth. Watching her getting off as you begin to force the majority of its length in and out of her slick hole is more that enough to arouse yourself as well[if Player is male], [cock size desc of Player] cock[smn] standing hard, exposed to the open air[else if Player is female], [cunt size desc of Player] cunt[sfn] oozing down to stain the floor along with hers[else] in spite of your lack of outlet[end if].";
				say "     'Oh, someone's being very naughty!' Happily, Sandra reaches over to reciprocate your attendance, [if Cock Count of Player > 1]wrapping a hand around one of your dicks to softly stroke[else if Player is male]wrapping a hand around your dick to softly stroke[else if Player is female]moving a hand between your thighs to softly fondle[else]moving a hand to softly fondle[end if] you as you persist, the wet sound of your continued plunging into the lady's eager depths filling the air";
				now tempnum is 0;
				if Player is male:
					say ". You figure you can make better use of your tool[smn] on her still-exposed pussy. Shall you?";
					if Player consents:
						say "     Eagerly, you position yourself such that she'll ride[if Cock Count of Player > 1] one of[end if] your cock[smn] and the toy in tandem. Plunging your [cock size desc of Player] rod through her honey-drenched lips, the rabbit girl moans out loudly, eager to accept the bliss of being penetrated so thoroughly.";
						now tempnum is 1;
				else:
					say ".";
				say "     The two of you lost in a dizzying haze of sweat-slicked lust, it's not long before she begins to cry out in bliss, driving you to plunge the entire length of the toy down her throbbing ring, compelled to keep her at the very height of ecstasy[if tempnum is 1]. Subsequently, her throbbing, wet hole is enough to make you orgasm as well, flooding her womb with your [Cum Load Size of Player] load[else if Player is male]. In turn, she continues to pump you at a feverish pace until you finally orgasm as well, painting her with your [Cum Load Size of Player] load[else if Player is female]. In turn, she continues to stroke you at a feverish pace until you finally orgasm as well, staining the floor with your honey[end if].";
			say "     As things slowly start to cool down, the two of you catching your breath, you eventually pull the toy [if tempnum is 1]and yourself free of her hole, the wet sound of their[else]free of her hole, the wet sound of its[end if] departure loudly filling the air. Eventually, she takes the toy from you and starts to clean it off, along with herself.";
			say "     'W-...Whew, what a ride! I'm going to keep my hands on this bad boy";
		else:
			now rabbitsibling is 6;
			say "     Making your intent clear, you move to prepare yourself for Sandra. Grinning slyly, the lady softly fondles your [bodytype of Player] form as you properly expose yourself before her. Carefully, she feels your crotch up and gets a good gauge for her angle of approach.";
			say "     'Oh, this'll be fun~!' The [if scalevalue of Player > 3]smaller [end if]rabbit girl giggles to herself as she begins to prepare you, forcing a finger past ";
			if Player is not female:
				say "your tight anal ring. She methodically massages your soft inner-flesh, sending jolts of searing pleasure up your spine. You stretch to accommodate her digits [if scalevalue of Player > 3 or player is twistcapped]easily[else]with a little work[end if], anal ring relaxing as she continues to explore your depths. In her second hand, she casually fondles the carrot-shaped tool, tongue moving to caress its substantive length in meager lubrication for its inevitable use.";
				say "     Concluding her preparation, Sandra pulls the carrot-shaped toy out of her mouth again, now coated in a sheen of slick saliva. Her hand withdraws from your rear, only to be replaced by the tip of that exotic rod, gradually shoving its way through your supple hole. A soft moan forced to escape your lips, you're made to take more and more of its distinctive, ridged length, even as its tapered girth becomes increasingly wide.";
				say "     'Ha, I think somebody's enjoying themselves!' she teases you, then begins to force the core of the length in and out of your eager hole, causing you to writhe and twitch with every thrust. Aroused by the thorough penetration[if Cock Count of Player > 1], your [cock size desc of Player] dicks bob against the open air, staining the ground and your underside with precum and inviting her to grab one and casually stroke you off[else if Player is male], your [cock size desc of Player] dick bobs against the open air, staining the ground and your underside with precum and inviting her to grab it and casually stroke you off[else] in spite your lack of outlet, she casually strokes you in reassurance, helping soothe your trembling form[end if]. The wet sound of her continued abuse fills the air for what seems like a blissful eternity, your sweat-slicked body quickly becoming exhausted from all the methodical attention.";
				say "     Finally, you cry out in bliss[if Player is male], your cock[smn] sputtering your strained, [Cum Load Size of Player] load all over the ground[end if]. Sandra releases her grasp on the toy, allowing your ass to clench around it for more stimulation while she fondles herself excitedly. With one final push, she forces the large toy [if scalevalue of Player > 3 or player is twistcapped]entirely down your hole, barely able to keep a hold on it[else]as far down as she can[end if], squeezing all the ecstasy she can out of you until you finally collapse, completely spent.";
			else:
				say "the supple folds of[if Cunt Count of Player > 1] one of[end if] your cunt[sfn]. She methodically massages your soft inner-flesh, sending jolts of searing pleasure up your spine. You stretch to accommodate her digits [if Cunt Depth of Player > 11]easily[else]with a little work[end if], the initial tension gradually fading as she explores your needy depths. In her second hand, she casually fondles the carrot-shaped tool, tongue moving to caress its substantive length in meager lubrication for its inevitable use.";
				say "     Concluding her preparation, Sandra pulls the carrot-shaped toy out of her mouth again, now coated in a sheen of slick saliva. Her hand withdraws from your folds, only to be replaced by the tip of that exotic rod, gradually shoving its way through your slick, eager pussy. A soft moan forced to escape your lips, you're made to take more and more of its distinctive, ridged length, even as its tapered girth becomes increasingly wide.";
				say "     'Ha, I think somebody's enjoying themselves!' she teases you, then begins to force the core of the length in and out of your eager hole, causing you to writhe and twitch with every thrust. Aroused by the thorough penetration, [if Cock Count of Player > 1]your [cock size desc of Player] dicks bob against the open air, staining the ground and your underside with precum and inviting her to grab one and casually stroke you off[else if Player is male]your [cock size desc of Player] dick bobs against the open air, staining the ground and your underside with precum and inviting her to grab it and casually stroke you off[else]your throbbing hole further slickens it with your honey, driving her to fondle herself at the sight[end if]. The wet sound of her continued abuse fills the air for what seems like a blissful eternity, your sweat-slicked body quickly becoming exhausted from all the methodical attention.";
				say "     Finally, you cry out in bliss[if Player is male], your cock[smn] sputtering your strained, [Cum Load Size of Player] load all over the ground[end if]. Sandra releases her grasp on the toy, allowing your pussy to clench around it for more stimulation while she fondles herself excitedly. With one final push, she forces the large toy [if Cunt Depth of Player > 11]entirely down your cunt, barely able to keep a hold on it[else]as far down as she can[end if], squeezing all the ecstasy she can out of you until you finally collapse, completely spent.";
			say "     Left to wallow briefly in your own lust-addled haze, the rabbit girl is still riding high on her own bliss, clearly getting off on seeing the toy rammed down you as it is. When your lusts eventually simmer down, she reaches over and pulls the toy free of you, the loud, wet sound of its liberation filling the air.";
			say "     'That was fun! I think I'll enjoy using this bad boy on my... [if scalevalue of Player < 4]little[else]'little'[end if] [sangr] again in the future";
		say "!' Once everyone's taken care of, she stows the item away with the rest of her possessions";
		if Sandra is in Bunker:
			say ", and you go about your business once more.";
		else:
			say ". 'You know, I think it's probably best if I move in with you! Makes it easier to find me, and this place isn't nearly as safe as it used to be.' Agreeing with her, the two of you help pack up her stuff and head off to the bunker.";
		LineBreak;
		say "     While the ritual seemed to be mostly ceremony, you can't help but feel slightly changed by the event[if rabbitsibling is 6], and Sandra seems to have been affected as well[end if].";
		StatChange "Dexterity" by 1;
		StatChange "Stamina" by 1;
		now lastfuck of Sandra is turns;
		increase score by 25;
		if Sandra is not in Bunker:
			WaitLineBreak;
			increase score by 5;
			add "water bottle" to invent of bunker;
			add "water bottle" to invent of bunker;
			add "food" to invent of bunker;
			move Sandra to Bunker;
			move player to bunker;
			now HP of Sandra is 1;
			if ColleenAlpha > 0 or ColleenCollared > 0 or ColleenSlut > 0, now lust of Sandra is turns;
			now lust of philip is turns; [starts availability counter on Philip + Sandra]
			now Rabbit Den is not known;
			follow turnpass rule;
	else:
		if ( gestation of Child is not 0 or child is born ) and Sandra is not in Bunker:
			say "     'Oh, [sangr], you need my help!' Sandra exclaims as she comes up to you.";
			if child is born:
				say "     She looks over your [BodyName of child] child and reaches to pet them lightly, then hug them close. 'Hello! My... you grew up fast. I will help take care of you.'";
			else:
				say "     She rubs over your belly softly, almost purring, 'You will be a parent soon. I'm so excited!'";
			say "     Sandra insists on returning with you and moves into the bunker without delay.";
			increase score by 5;
			add "water bottle" to invent of bunker;
			add "water bottle" to invent of bunker;
			add "food" to invent of bunker;
			move Sandra to Bunker;
			move player to bunker;
			now HP of Sandra is 1;
			if ColleenAlpha > 0 or ColleenCollared > 0 or ColleenSlut > 0, now lust of Sandra is turns;
			now lust of philip is turns; [starts availability counter on Philip + Sandra]
			now Rabbit Den is not known;
			follow turnpass rule;
		now lastfuck of Sandra is 250;


to say sandrasex3:
	say "     Deciding to do something nice for the bunny girl this time around, you offer to eat out that big pussy of hers. She giggles happily at this and sits on the edge of her bunk with her legs spread wide. You kneel down between them and bury your face in her juicy muff. You start with some light licking and casual strokes of your fingertips across her wet folds, enjoying the soft sounds of pleasure of your bunny lover.";
	say "     As things heat up, you start licking into her wide channel for her flowing femcum while pumping a few fingers into her. You vary this up by teasing her clit and by taking slow licks across the whole of her pussy from bottom to top.";
	say "     Sandra moans and pants as her excitement builds, her hands rubbing over your head[if rabbitsibling > 1]. She ends up tugging lightly on your bunny ears, urging you for more[end if][if scalevalue of Player > 3]. You push several big fingers into her spacious vagina and fingerfuck her to a crashing orgasm[else]. You end up pushing the whole of your hand into her spacious vagina and fist her to a crashing orgasm[end if].";
	now lastfuck of Sandra is turns;


to say sandrasex4:
	say "     The bunny girl grins happy at the offer for mutual oral pleasure and makes room for you to join her on her cot. Laying on your sides, you get into position with your face buried between her thighs, giving you a perfect view of her large, dripping cunny.";
	say "     You're about to get started when she ";
	if Player is male:
		say "takes hold of your [if Cock Count of Player > 1]cocks and starts stroking and licking them[else]cock and starts stroking and licking it[end if][if a random chance of Libido of Player in 100 succeeds]. Not wanting to keep the eager rabbit waiting, you press your lips to her wet folds and drag your tongue across them. As eager as the bunny for it, you lavish attention upon her pussy with energetic zeal[else]. Rather than dive right into it like the eager rabbit, you instead start gradually with light caresses and brushes of your tongue across her wet folds. After teasing her like this for a while, which only gets her more excited and sucking on your [Cock of Player] penis harder, you give her clit a kiss and then dive into eating her out as eagerly as she's going down on you[end if].";
		say "     With an eager lover working hard to please you and earn their delicious reward, you're soon both panting and moaning between licks[if Cock Length of Player > 30]. With a great deal of effort, she's managed to somehow wedge a considerable portion of your [cock size desc of Player] manhood into her mouth and down her throat, bulging her out visibly[else if Cock Length of Player > 15]. With some effort, she's managed to stuff the whole of your [cock size desc of Player] cock into her mouth and down her throat[else]. By this point, she's taken the whole of your [cock size desc of Player] cock into her mouth and is licking and sucking firmly at it[end if][if Cock Count of Player > 1]. Her paws busily stroke and caress your other shaft[smn][end if].";
		say "     For your part, you're brushing your fingers over her puffy folds while your eat her juicy muff, paying particular attention to the bunny's love button. Your wild romp ends in a sticky, musky mess of orgasmic release that leaves you both panting on her cot and smelling strongly of sex for quite some time.";
	else:
		say "presses her muzzle to your [cunt size desc of Player] puss[yfn] and starts stroking your sensitive petals and licking at them with gusto[if a random chance of Libido of Player in 100 succeeds]. Not wanting to keep the eager rabbit waiting, you press your lips to her wet folds and drag your tongue across them. As eager as the bunny for it, you lavish attention upon her pussy with energetic zeal[else]. Rather than dive right into it like the eager rabbit, you instead start gradually with light caresses and brushes of your tongue across her wet folds. After teasing her like this for a while, which only gets her more excited and working her tongue even faster and deeper, you give her clit a kiss and then dive into eating her out as eagerly as she's going down on you[end if].";
		say "     With an eager lover working hard to please you and earn their delicious reward, you're soon both panting and moaning between licks. She's wriggling her tongue around inside your juicy cunny, clearly eager to have this chance to please her bunny sister while getting the same in return.";
		say "     Knowing well what pleases a girl, she is very attentive to your clit, always going back to kissing and sucking on it[if Cunt Count of Player > 1]. Her furry fingers busily stroke and caress your other puss[yfn], her tongue's focus shifting from back and forth between them[end if]. For your part, you're brushing your fingers over her puffy folds while your eat her juicy muff, paying particular attention to the bunny's love button. Your wild romp ends in a sticky, musky mess of orgasmic release that leaves you both panting on her cot and smelling strongly of sex for quite some time.";
	now lastfuck of Sandra is turns;

to say sandrasex5: [Post-transformation toy sex]
	say "     Offering to have some fun with the carrot-shaped toy, the rabbit girl grins as she goes to fetch it, quickly returning with the sizeable rod.";
	say "     '[one of]Oh boy[or]Mmm[or]Yes[or]Great[at random], [one of]let's get to planting this thing[or]time for some fun[or]time to bury the carrot[at random],[if rabbitsibling > 5] little[end if] [sangr]!' Giddy with anticipation, she ";
	if rabbitsibling is 5:
		say "hands you the thing before laying down to expose the excited, already-slick lips of her oversized cunt before you.";
		say "     '[one of]Don't hold back[or]Ram it down[or]I can take it[at random]!' Considering your options, you could take the most obvious point of entry. Shall you? Otherwise, you'll surprise the rabbit girl by forcing it down her ass.";
		if Player consents:
			say "     Carefully, you press the toy's orange, pointed tip between her supple folds, quickly slicked by her heady honey. The lady moans out softly as you begin, gently fondling her many tits as she's made to take each successive, ridged inch of the twisted carrot's substantive girth.";
			say "     Throbbing pussy tightening around the intrusion, it nonetheless greedily obliges being so readily flooded by its increasingly wide girth. Watching her getting off as you begin to force the majority of its length in and out of her slick hole is more that enough to arouse yourself as well[if Player is male], [cock size desc of Player] cock[smn] standing hard, exposed to the open air[else if Player is female], [cunt size desc of Player] cunt[sfn] oozing down to stain the floor along with hers[else] in spite your lack of outlet[end if].";
			say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]harder[or]more, more[or]don't stop[at random]!' Happily, Sandra reaches over to reciprocate your attendance, [if Cock Count of Player > 1]wrapping a hand around one of your dicks to softly stroke[else if Player is male]wrapping a hand around your dick to softly stroke[else if Player is female]moving a hand between your thighs to softly fondle[else]moving a hand to softly fondle[end if] you as you persist, the wet sound of your continued plunging into the lady's eager depths filling the air.";
			say "     The two of you lost in a dizzying haze of sweat-slicked lust, it's not long before she begins to cry out in bliss, driving you to shove the entire length of the toy down her throbbing cunt, compelled to keep her at the very height of ecstasy[if Player is male]. In turn, she continues to pump you at a feverish pace, until you finally orgasm as well, painting her with your [Cum Load Size of Player] load[else if Player is female]. In turn, she continues to stroke you at a feverish pace, until you finally orgasm a swell, staining the floor with your honey[end if].";
		else:
			say "     Carefully, you press the toy's orange, pointed tip past her tight, unsuspecting ring, quickly forced to oblige it. The lady groans out loudly as you begin, writhing and fondling herself as she's made to take each successive, ridged inch of the twisted carrot's substantive girth.";
			say "     Throbbing asshole tightening around the intrusion, it offers quite a bit of resistance as it's flooded by the thing's increasingly wide girth. Watching her getting off as you begin to force the majority of its length in and out of her slick hole is more that enough to arouse yourself as well[if Player is male], [cock size desc of Player] cock[smn] standing hard, exposed to the open air[else if Player is female], [cunt size desc of Player] cunt[sfn] oozing down to stain the floor along with hers[else] in spite your lack of outlet[end if].";
			say "     '[one of]Nng[or]Ah[or]Mmm[at random], [one of]so naughty[or]dirty little rabbit[or]you twisted beast[at random]!' Happily, Sandra reaches over to reciprocate your attendance, [if Cock Count of Player > 1]wrapping a hand around one of your dicks to softly stroke[else if Player is male]wrapping a hand around your dick to softly stroke[else if Player is female]moving a hand between your thighs to softly fondle[else]moving a hand to softly fondle[end if] you as you persist, the wet sound of your continued plunging into the lady's eager depths filling the air";
			now tempnum is 0;
			if Player is male:
				say ". You figure you can make better use of your tool[smn] on her still-exposed pussy. Shall you?";
				if Player consents:
					say "     Eagerly, you position yourself such that she'll ride[if Cock Count of Player > 1] one of[end if] your cock[smn] and the toy in tandem. Plunging your [cock size desc of Player] rod through her honey-drenched lips, the rabbit girl moans out loudly, eager to accept the bliss of being penetrated so thoroughly.";
					now tempnum is 1;
			else:
				say ".";
			say "     The two of you lost in a dizzying haze of sweat-slicked lust, it's not long before she begins to cry out in bliss, driving you to plunge the entire length of the toy down her throbbing ring, compelled to keep her at the very height of ecstasy[if tempnum is 1]. Subsequently, her throbbing, wet hole is enough to make you orgasm as well, flooding her womb with your [Cum Load Size of Player] load[else if Player is male]. In turn, she continues to pump you at a feverish pace, until you finally orgasm as well, painting her with your [Cum Load Size of Player] load[else if Player is female]. In turn, she continues to stroke you at a feverish pace, until you finally orgasm as well, staining the floor with your honey[end if].";
		say "     As things slowly start to cool down, the two of you catching your breath, you eventually pull the toy[if tempnum is 1] and yourself[end if] free of her hole, the wet sound of its departure loudly filling the air. Eventually, she takes the toy from you and starts to clean it off, along with herself.";
		say "     '[one of]W-whew[or]Heavens[or]Ahh[at random], [one of]what a rush[or]I'll be walking funny for a while[or]that never stops being fun[at random]";
	else:
		say "gently forces you to lay down on your back, softly fondling your[if scalevalue of Player > 3] larger,[end if] [bodytype of Player] form to properly expose yourself before her. Carefully, she feels your crotch up and gets a good gauge for her angle of approach.";
		say "     '[one of]Hmm[or]Tsk[or]Hmpf[at random], [one of]little [sangr] needs a good filling[or]I bet you like getting rammed by your bigger sister[or]I think my little [sangr] enjoys being their sister's plaything[at random]!' the [if scalevalue of Player > 3]smaller [end if]rabbit girl teases you as she begins preparations, forcing a finger past ";
		if Player is not female or (anallevel is 3 and a random chance of 2 in 3 succeeds):
			say "your tight anal ring. She methodically massages your soft inner-flesh, sending jolts of searing pleasure up your spine. You stretch to accommodate her digits [if scalevalue of Player > 3 or player is twistcapped]easily[else]with a little work[end if], anal ring relaxing as she continues to explore your depths. In her second hand, she casually fondles the carrot-shaped tool, tongue moving to caress its substantive length in meager lubrication for its inevitable use.";
			say "     Concluding her preparation, Sandra pulls the carrot-shaped toy out of her mouth again, now coated in a sheen of slick saliva. Her hand withdraws from your rear, only to be replaced by the tip of that exotic rod, gradually shoving its way through your supple hole. A soft moan forced to escape your lips, you're made to take more and more of its distinctive, ridged length, even as its tapered girth becomes increasingly wide.";
			say "     '[one of]Hmpf[or]Oh[or]Ah[at random], [one of]somebody looks like they're enjoying themselves[or]I bet you like that[or]the fun's just getting started[at random]!' she teases you, then begins to force the core of the length in and out of your eager hole, causing you to writhe and twitch with every thrust. Aroused by the thorough penetration[if Cock Count of Player > 1], your [cock size desc of Player] dicks bob against the open air, staining the ground and your underside with precum and inviting her to grab one and casually stroke you off[else if Player is male]your [cock size desc of Player] dick bobs against the open air, staining the ground and your underside with precum and inviting her to grab it and casually stroke you off[else] in spite of your lack of an outlet, she casually strokes you in reassurance, helping soothe your trembling form[end if]. The wet sound of her continued abuse fills the air for what seems like a blissful eternity, sweat-slicked body quickly becoming exhausted from all the methodical attention.";
			say "     Finally, you cry out in bliss[if Player is male], your cock[smn] sputtering your strained, [Cum Load Size of Player] load all over the ground[end if]. Sandra releases her grasp on the toy, allowing your ass to clench around it for more stimulation while she fondles herself excitedly. With one final push, she forces the large toy [if scalevalue of Player > 3 or player is twistcapped]entirely down your hole, barely able to keep a hold on it[else]as far down as she can[end if], squeezing all the ecstasy she can out of you until you finally collapse, completely spent.";
		else:
			say "the supple folds of[if Cunt Count of Player > 1] one of[end if] your cunt[sfn]. She methodically massages your soft inner-flesh, sending jolts of searing pleasure up your spine. You stretch to accommodate her digits [if Cunt Depth of Player > 11]easily[else]with a little work[end if], the initial tension gradually fading as she explores your needy depths. In her second hand, she casually fondles the carrot-shaped tool, tongue moving to caress its substantive length in meager lubrication for its inevitable use.";
			say "     Concluding her preparation, Sandra pulls the carrot-shaped toy out of her mouth again, now coated in a sheen of slick saliva. Her hand withdraws from your folds, only to be replaced by the tip of that exotic rod, gradually shoving its way through your slick, eager pussy. A soft moan forced to escape your lips, you're made to take more and more of its distinctive, ridged length, even as its tapered girth becomes increasingly wide.";
			say "     '[one of]Hmpf[or]Oh[or]Ah[at random], [one of]somebody looks like they're enjoying themselves[or]I bet you like that[or]the fun's just getting started[at random]!' she teases you, then begins to force the core of the length in and out of your eager hole, causing you to writhe and twitch with every thrust. Aroused by the thorough penetration, [if Cock Count of Player > 1]your [cock size desc of Player] dicks bob against the open air, staining the ground and your underside with precum and inviting her to grab one and casually stroke you off[else if Player is male]your [cock size desc of Player] dick bobs against the open air, staining the ground and your underside with precum and inviting her to grab it and casually stroke you off[else]your throbbing hole further slickens it with your honey, driving her to fondle herself at the sight[end if]. The wet sound of her continued abuse fills the air for what seems like a blissful eternity, sweat-slicked body quickly becoming exhausted from all the methodical attention.";
			say "     Finally, you cry out in bliss[if Player is male], your cock[smn] sputtering your strained, [Cum Load Size of Player] load all over the ground[end if]. Sandra releases her grasp on the toy, allowing your pussy to clench around it for more stimulation while she fondles herself excitedly. With one final push, she forces the large toy [if Cunt Depth of Player > 11]entirely down your cunt, barely able to keep a hold on it[else]as far down as she can[end if], squeezing all the ecstasy she can out of you until you finally collapse, completely spent.";
		say "     Left to wallow briefly in your own lust-addled haze, the rabbit girl is still riding high on her own bliss, clearly getting off on seeing the toy rammed down you as it is. When your lusts eventually simmer down, she reaches over and pulls the toy free of you, the loud, wet sound of its liberation filling the air.";
		say "     '[one of]That was fun[or]Oh, you[or]Silly rabbit[at random]! [one of]I like watching you writhe like that[or]You sure enjoy taking that carrot[or]The thing almost didn't want to come out[at random]";
	say "!' Once everyone's taken care of, she stows the item away with the rest of her possessions, freeing you to go about your business once more.";

Section 4 - Sandra and Colleen Interplay

An everyturn rule:
	if lust of Sandra - turns > 15 and HP of Sandra is 1 and ( ColleenAlpha > 0 or ColleenCollared > 0 or ColleenSlut > 0 ):
		now HP of Sandra is 2;
		now lastfuck of Colleen is turns;
		now lastfuck of Sandra is turns;
		if Player is in Bunker:
			say "     As you sit in the bunker for a moment's rest, you look over and spot Sandra playing with the Colleen the husky girl. Having found a ball somewhere, they're playing fetch. Colleen is clearly more at ease with infected people since her transition, and Sandra's become more relaxed after coming to the safety of the bunker. You smile as you watch their blossoming friendship.";
			say "     After playing around, the bunny girl scritches the husky's ears, then down her back and over her tummy as she rolls over. She doesn't seem to notice as Colleen wriggles around on her back, tongue hanging out as the husky positions herself so her breasts are being scritched. A little more rolling around and the bunny's paw moves down between the husky's legs. When she feels her paw is rubbing at the husky's wet snatch, the bunny freezes. Colleen whines softly and rubs her paws over Sandra's, getting her to resume stroking her wet folds.";
			say "     The horny husky wriggles on her back like a happy dog getting scritches, except it's a different itch being scratched. And when Colleen's muzzle finds its way under her skirt to lick her, she moans loudly as that doggy tongue delves into her, the bunny throwing herself into it as well. She spreads her legs and pulls up her skirt to give the husky better access while pumping a pair of fingers into her lover in return.";
			say "     They go at it for quite some time, not caring about who may be watching them in their lesbian tryst. They swap positions a few times, licking, kissing and fingering one another until they've cum so many times they finally pass out, exhausted and satisfied.";
			now HP of Sandra is 3;
			increase score by 10;

after going to Bunker while HP of Sandra is 2:
	now HP of Sandra is 3;
	say "     After entering the bunker and taking a look around, you spot Colleen resting with her head in Sandra's lap. The bunny girl is stroking the husky gently and you smile. It's good to see those two becoming more at ease. It takes you a little bit to notice that they both seem particularly happy and that the scent of female husky and bunny arousal hang in the air. And that's when it clicks that Sandra's blouse is open and her skirt is sitting beside her. After being out and seeing all the wanton sex and nudity in the city, it took you a moment to notice what must have been going on while you were out.";
	now lastfuck of Colleen is turns;
	now lastfuck of Sandra is turns;

to say sandraColleentrio:
	say "     You grin and motion for Colleen to join you, the husky girl padding over quickly on all fours. She dashes ahead of you and pounces into Sandra's lap, licking and lapping at her face before it turns into a kiss with that doggy tongue diving into the bunny girl's muzzle. You move up behind Sandra and put your arms around her, nibbling her ear and whispering that it's you. You run your paws over the bunny's body, sliding off her clothes. As you bare her soft fur, Colleen is there to nuzzle, lick or nip at her, getting her friend to moan in delight. Once she's naked, Colleen buries her muzzle between Sandra's legs and laps at her large pussy, giving you a moment to take off the last of your clothes as well.";
	say "     The bunny girl pushes Colleen's muzzle away and she turns to look at you, smiling and quite happy to spend a special moment with her two friends.";
	if rabbitsibling > 0 and ( FaceName of Player is "Husky Bitch" or FaceName of Player is "Husky Alpha" ):
		say "     She looks at your husky face and smiles, grinning to Colleen. 'Oh, I guess a husky face is pretty cute, too. Don't you think, sweetie?' she asks [if ColleenCollared > 0]your slutty pet[else]the horny stray[end if] as she scritches the doggy's ears.";
	else if rabbitsibling > 0 and ( FaceName of Player is not "Rabbit Girl" ):
		say "     'Oh your ears!' she exclaims, approaching and cooing at you. She snuggles firmly, then leans in to kiss, pressing lips tightly for a moment before you feel her sharp teeth sinking into your lip. Brief pain flares before her infection spreads to you rapidly, regaining your rabbit ears.";
		now Face of Player is "set of two long white rabbit ears twitching above your head, looking odd compared to your normal";
		now FaceName of Player is "Rabbit Girl";
	if rabbitsibling > 1 and ( TailName of Player is "Husky Bitch" or TailName of Player is "Husky Alpha" ):
		say "     Sandra runs a paw over your fluffy, husky tail. 'And a cute husky tail is nice and soft as well. I'll let you hang onto it for now,' she says, winking to Colleen[if ColleenCollared > 0]. Your husky pet[else]. The stray husky slut[end if] barks in agreement, winking back.";
	else if rabbitsibling > 1 and ( TailName of Player is not "Rabbit Girl" ):
		say "     Sandra frowns as she notices your lack of rabbit tail. She grabs you suddenly and hauls you across your lap. Without word or warning, she slaps your bottom firmly and begins to spank you on the spot. Her stinging blows make your ass warm and red even as it begins to change, slowly regaining that lost rabbit tail. When it is completely restored, she waves a finger at you. 'And don't you go losing it again.'";
		now TailName of Player is "Rabbit Girl";
		now tail of Player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	if thirst of Player > 50:
		say "     The bunny girl puts her arms around you and pulls your face into her ample bosom, pressing you against her firm breasts and brushing her nipple against your lips. 'You should take better care to drink enough out there, hon.' Feeling quite thirsty, you start to suckle from her breast, drinking down the milk it quickly starts giving you. There is a bark beside you and Colleen nuzzles against you, going for the other breast. 'Oh, and I know how much you like my milk, sweetie,' the bunny girl says, scritching the husky's ears. You both nurse from her bosom, filling your bellies with her sweet cream as the bunny pets and coos at you both encouragingly. After you've each had a good drink, she gently pushes you back.";
	if Player is male:
		say "[sctriomale]";
	else:
		say "[sctriofemale]";
	now lastfuck of Colleen is turns;

to say sctriomale:
	say "     Taking a seat on her bunk, you slide the bunny girl into your lap, rubbing your stiff length[smn] against her ass and fluffy tail. She moans softly as you tease her nipples while Colleen hops up to give her another doggy kiss. You grind against her softly-furred bottom, leaking precum onto her [if Cock Length of Player > 12]back[else]tail[end if] until you can't wait any longer and want more.";
	say "     Boosting her up, you get your cock[smn] into position and enjoy her needy moan into the kiss with the husky girl. While you lower her down, Colleen's paws move to help get you lined up. You can feel her wet pussy [if Cock Count of Player > 1]and tight tailhole [end if]pressed against your glans before spreading open, allowing you entrance into the busty bunny's beautiful body.";
	say "     Colleen breaks the kiss and drops back to the floor on all fours, burying her muzzle in Sandra's fluffy muff to nuzzle at your genitals. The cold, wet nose brushing against the bunny's clit makes her shiver before that warm, wet tongue sets to work. She laps at your thrusting cock and the bunny's quivering folds as you drive into her again and again. Bunny juices run down your shaft for the playful husky to lick up[if Cock Length of Player < 12 or Ball Size of Player < 10]. As your cock is not quite enough to fully satisfy the bunny's large pussy, the husky yips and slides a few fingers in as well, rubbing along your penis and the sensitive vaginal walls[end if].";
	say "     The bunny has a long and enjoyable ride in your lap, cumming several times from the combined action of her lustful friends. When finally it gets to be too much, you drive hard into her one last time and pump your hot load deep into her, earning one last moan and orgasm from Sandra, which Colleen is eager to lap up the juices and jizz from. Colleen, fingering herself with one paw, is sitting in an extensive puddle of her own juices, clearly having cum repeatedly as well. When your erection finally starts to soften, you slip Sandra off your lap. Colleen hops up onto her bunk to join her for a nap while you get up and head off quietly to take care of other matters.";

to say sctriofemale:
	say "     You slide to your knees between Sandra's legs and bury your muzzle in her fluffy muff, deciding you want a turn licking at those juicy lips. You slip a pair of fingers into her easily and listen to her moan in pleasure. You hear Colleen hop up onto the bunk beside the bunny. You catch her turning and presenting her pussy to the bunny out of the corner of your eye before Sandra presses your face back against her wet snatch. You get back to work, shifting a little as the bunny leans over to lick at the offered pussy for a while.";
	say "     You slide another finger, then another into those ample folds, eventually fisting the moaning bunny girl. You take a moment to glance back up and find Sandra pumping a rubber dog toy into Colleen's dripping pussy, making the husky girl whine and whimper in ecstasy. The rough texture and bumps on the chew bone stimulate the horny doggy girl greatly. Excited by the show, you pump your fingers into Sandra all the more and move your free hand down between your legs to drive a few fingers into your own snatch.";
	say "     Sandra notices your predicament and slides a fluffy bunny foot between your legs. She rubs the soft paw against your pussy and wriggles her toes against it[if Cunt Tightness of Player > 9]. Your wide pussy spreads open and allows her to work her large bunny foot into you, stimulating you further with her fluffy paw and wriggling digits[else]. She slips a fluffy digit into you, stimulating you even further[end if]. You three continue like this, all cumming several times before finally running out of steam and collapsing back to rest. Colleen and Sandra end up snuggled together on the bunk while you head off quietly to take care of other matters.";


Section 5 - Sandra and Philip Threesome

to say sandraphiliptrio:
	setmonster "Messy Pig";
	say "     Going over to Sandra, you make the suggestion to approach Philip for more sex as she's getting up to greet you. Your offer brings a smile to her face, derailing anything she was going to say with the prospect of getting some of the pudgy pig's juicy meat. You go over to him together and he grins and oinks happily, rolling over and offering his swelling manhood. The bunny girl's on her knees right away, stroking the big pig's cock, and she smiles up at you and offers for you to join her. Grinning happily, you get on your knees beside her and start licking and sucking alongside her. You take turns pushing that thick rod into your mouth while the other licks along its shaft or kisses the pig's messy balls. You and the bunny share sloppy kisses, your tongues heavy with the taste of the pig's cock as they slide against one another between exchanges of position. In your lustful eagerness, his dirty, musky scent doesn't bother either of you, if anything turning you on further.";
	if Player is female and a random chance of 1 in 2 succeeds:
		say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy girls out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your pussy lips open for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you, licking at the juices dripping from your stuffed cunt. And when the boar cums and his excess cum overflows your wet cunny, she's right there to lap it all up. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[fimpregchance]";
	else if Player is not female and pigfucked > 2 and anallevel > 1 and a random chance of 1 in 2 succeeds:
		say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two lovers out for his meat before choosing which will get it this time. Sandra's a little disappointed when he ends up moving in behind you, but happily spreads your ass cheeks for the big boar as he thrusts into you. As Philip grunts and oinks atop you, rutting you like a hog, the bunny girl's beneath you[if Player is male], sucking at your cock while kneading the boar's balls. And when the boar cums and you climax, she's right there to suck down your [Cum Load Size of Player] load and then lick the greasy excess leaking from your stuffed pucker[else], kneading Philip's balls while she watches his meaty log drive into your ass again and again. And when the boar cums and fills you with his hot cum, she's right there to lick the greasy excess from your stuffed pucker[end if]. When Philip pulls out, you all collapse into a sticky, sweaty heap in the mud.[mimpregchance]";
	else:
		say "     As much as the pig's enjoying the foreplay, he oinks that it's time to get porking. Moving it back, he gives it a few quick strokes, spurting some precum onto the two sexy lovers out for his meat before choosing which will get it this time. Sandra giggles happily as the big boar ends up moving behind her. She wiggles her cute bunny tail and reaches between her legs, spreading her pussy lips in a wanton display as Philip mounts her with a belching oink. As Philip grunts and oinks atop her, rutting her like a hog, you move underneath them to lick at that stuffed cunt of hers.";
		say "     Playing your tongue across those wide folds, you lick at both the bunny's juicy pussy and the boar's musky rod. The scent and taste of them both as they rut is very exciting and you lap up as much of it as you can[if Player is male]. With your [Cock of Player] cock beneath the bunny's muzzle, she latches onto it and suckles you to climax. Even as she's gulping down your load[else if Player is female]. With your [cunt size desc of Player] cunt beneath the bunny's muzzle, she stuffs a few fingers into you while working her tongue over your clit, driving you to climax. As she fingerfucks you[else]. With only your bare crotch beneath her muzzle, the muzzle licks and few fingers and stuffs them into your asshole instead to tease you. As she fingerfucks you[end if], Philip cums with a squeal and starts filling the horny bunny with his greasy seed. You lap up the excess leaking around his shaft along with the bunny's juices until you all collapse in a sticky, sweaty heap in the mud.";
	now lastfuck of Philip is turns;
	now lastfuck of Sandra is turns;


Section 6 - Endings

When play ends:
	if Sandra is in the Bunker:
		if Fang is in the Grey Abbey Library and HP of Fang is 3 and ColleenAlpha is 0 and humanity of Player < 10:
			[succumb: alpha Fang takes uncontested Sandra ]
			increase score by 0; [do nothing statement]
		else if HP of Player > 0:
			if humanity of Player < 10 and ColleenAlpha > 0:
				say "     Sandra ends up going off with Colleen, the dominant husky taking her to be the pack's bunny slut and to be bred full of adorable husky-bunny hybrid pups. On the rare occasions that her alpha allows her to spend time with you, the bunny tells you how much she is enjoying her new life, falling into her role as a plaything for the horny canines.";
			else if humanity of Player < 10:
				say "     Sandra remains a loyal friend and affectionate lover to you for the rest of your days, remaining at your side despite your loss of humanity. She remains with you, tending to your needs, all of them, as best she is able. She does not permit you to predate on unchanged humans, tackling you to the ground when the urge becomes too strong and fucking you into a cooperative stupor. Could anyone ask for a better friend?";
			else:
				say "     Sandra remains a loyal friend and affectionate lover to you for the rest of your days, remaining at your side after you are all rescued from the infected city[if HP of Sandra is 3]. Sandra visits with Colleen often as well, always looking forward to playing with the horny puppy[end if][if ColleenCollared > 0]. She even ends up adopting one of Colleen's many pups, raising him to be an obedient and loyal sex pet[end if].";
			if Player is male and BodyName of Player is "Siren":
				say "     The lovely bunny girl is particularly excited by your ability to deposit eggs into her and readily has you stuff her full of them on several occasions. She is particularly eager to do this around springtime, painting the eggs after she pushes them out and handing them out to others on Easter. Many young sirens join new families to further spread your infection thanks to Sandra's lustful efforts.";
				increase score by 25;
			else if Player is male:
				say "     Eventually, she grows round and plump, and bears you a child. The child emerges with rabbit ears, [one of]male[or]female[at random], and adorable. The child grows up loving the both of you and is raised with fierce protectiveness.";
				increase score by 5;
			else:
				LineBreak;

Desperate Bunny ends here.
