Version 2 of Desperate Bunny by Nuku Valente begins here.

"Adds a situation to Flexible Survival with a needy, but uninfectious, rabbit."

Section 1 - The Situation

Needy Rabbit Girl is a situation.

when play begins:
	add Needy Rabbit Girl to badspots of girl;
	add Needy Rabbit Girl to badspots of furry;

NGRP is a number that varies.
Lastrabbitfuck is a number that varies. Lastrabbitfuck is usually 250.
rabbitmulticock is a number that varies. rabbitmulticock is usually 0.
rabbitfucked is a number that varies. Rabbitfucked is usually 0.
rabbitsister is a number that varies. Rabbitsister is usually 0.

Rabbitfucking is an action applying to nothing.

understand "fuck sandra" as rabbitfucking;
understand "fuck rabbit" as rabbitfucking;

check rabbitfucking:
	if Sandra is not visible, say "Who?" instead;

Carry out rabbitfucking:
	rabbitfuck;

To rabbitfuck:
	if lastrabbitfuck - turns is less than 8:
		say "She flushes gently, 'It has not been long enough since last time. Even a girl needs to recharge a little, you animal you.' She leans in to kiss your cheek softly, but does not proceed with intimacy.";
		stop the action;
	now lastrabbitfuck is turns;
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	if rabbitsister is greater than 0 and facename of player is not "Rabbit Girl":
		say "'Oh your ears!' she exclaims, approaching and cooing at you. She snuggles firmly, then leans in to kiss, pressing lips tightly for a moment before you feel her sharp teeth sinking into your lip. Brief pain flares before her infection spreads to you rapidly, regaining your rabbit ears.";
		now face of player is "set of two long white rabbit ears twitching above your head, looking odd compared to your normal";
		now facename of player is "Rabbit Girl";
	if rabbitsister is greater than 1 and tailname of player is not "Rabbit Girl":
		say "Sandra frowns as she notices your lack of rabbit tail. She grabs you suddenly and hauls you across your lap. Without word or warning, she slaps your bottom firmly, and begins to spank you on the spot. Her stinging blows make your ass warm and red even as it begins to change, slowly regaining that lost rabbit tail. When it is completely restored, she waves a finger at you, 'And don[apostrophe]t you go losing it again.'";
		now tailname of player is "Rabbit Girl";
		now tail of player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
	say "She starts to strip naked in front of you, exposing the smooth flesh of her skin to your hungry eyes. She only has fur in a few places, across her short tail, long ears, and covering her large pouting vulva. She smiles, running hands across her six breasts, starting at the small B cups and working up towards her hefty Ds as she waits for you. Catching up to her, and feeling ready yourself, you start to follow, exposing your [skin of player] body to her. She eyes you appraisingly...";
	if the thirst of the player is greater than 50:
		say "Sandra frowns at you, 'You look like you haven't had a drink in over a day.' She grabs for your face and buries you against a firm breast, teat brushing against your lips as she lays back with you. Feeling quite thirsty, you have no good reason to deny her and begin to gulp up  the thick cream that pours out at command of your firm suckles. You nuzzle your [skin of player] face against the life giving breast, filling your belly with sweet cream as the rabbit pets and coos at you encouragingly. When your thirst has abated somewhat, she gently pushes you back, 'Now where were we...'";
		decrease thirst of player by 15;
	if the cocks of the player is greater than 0:
		let multicocks be 0;
		if cocks of player is greater than 1:
			if rabbitmulticock is 0:
				now response1 is "She salivates a little as she eyes your multiple rods, 'I never played with someone like that. I bet it would feel great...' she says, mostly to herself, the thick musk of her permeating the room with her lust, rump wriggling. ";
			otherwise:
				now rabbitmulticock is 1;
				now response1 is "She salivates a little as she eyes your multiple rods, 'I am so happy to see those! And they look happy to see me.' she says, mostly to herself, the thick musk of her permeating the room with her lust, rump wriggling. ";
			increase lust by 2;
			now multicocks is 1;
		let response2 be "";
		let response3 be "";
		if cock length of player is less than 5:
			now response2 is "She seems dissapointed in the length of your member, ears wilting a little, 'I guess beggars should not be choosers...'";
		otherwise if cock length of player is less than 8:
			now response2 is "She reaches to brush her soft fingers across your throbbing member, 'A little on the small side for me, but that looks just delicious,' she purrs at you with a smile, her scent thickening with desire.";
			increase lust by 1;
		otherwise if cock length of player is less than 12:
			now response2 is "Her eyes go wide as she measures the length of your cock, mentally, then with her lusty fingers, 'Oh, god, you are just perfect. You must get all the ladies, don[apostrophe]t you?' She titters softly, rubbing her curvacous front to you, tail wiggling behind her.";
			increase lust by 2;
		otherwise:
			now response2 is "She gasps with amazement as your [cock size desc of player] [cock of player] equipment is exposed to her, clapping a hand over her face before she turns deep red, 'Damn! I... I am not sure I can even take that, but I want to try, oh I want to try!'";
			increase lust by 2;
			now oversized is 1;
		if cock width of player is less than 3:
			now response3 is " She lets out a sigh as she wraps your cock easily in her small hand, 'So skinny.'";
		otherwise if cock width of player is less than 6:
			now response3 is " Her hands slowly wander over your [skin of player] chest as she leans in closer, sweet breath shared with you. A hand squeezes at your [cock of player] shaft as she hmms, 'A little skinny...'";
			increase lust by 1;
		otherwise if cock width of player is less than 10:
			now response3 is " She trembles as she tries to wrap your cock in her small hands and barely manages it, 'What a stud...' she sighs out, almost dizzy with craving.";
			increase lust by 2;
		otherwise:
			now response3 is " She snorts with astonishment as she gapes at your crotch, 'I don[apostrophe]t know how I[apostrophe]ll stuff that into me, but let[apostrophe]s get to trying!'";
			increase lust by 2;
			now oversized is 1;
		say "[response1][response2][response3][line break]";
		if lust is greater than 2:
			if oversized is 1 and multicocks is 1:
				say "She shakes her head quickly, 'Too big, too many', she says, mostly to herself, grabbing for your [cocks of player] poles, rubbing herself against their [cock size desc of player] [cock of player] lengths with her smooth flesh, kissing over them and purring. She swings a leg over, letting one shaft run along her back while the rest thrust up along her front, hands stroking at you in firm long strokes as she rocks her body slowly, flicking tail teasing the huge shaft under her.[line break][line break]She grabs for one of your hand, drawing it to her topmost, heaviest, swells. She guides you to press them together in soft strokes as she reaches for a cock and guides it up into the channel her body provides naturally, pressing between each set of breasts in a warm ridge of firm breast flesh. She arches her back, seeming to get off just as much with the contact as your excited cocks are. As she rocks herself against you, you can feel your [ball size] swelling and churning with seed, ready to reward her for her work.[line break][line break]She rocks her hips forward, grinding her erect clit and dripping folds against the cock that runs against and along her soft breasts, her back rubbing delightfully along the other as her hands work to keep all of your overabundant sexual flesh pleased at once. You can't hold back any further, [ball size] clenching, then spraying. Sandra squeaks appreciatively, grabbing a cock firmly as the fluid pushes up through it, trapping it a moment as she hurriedly dismounts you, cum already spurting everywhere. She manages to make it to the head of the [cock of player] pole, still grabbing it firmly, and seals her lips around the tip before allowing it to burst powerfully, making her cheeks puff out, then her belly, streams of seed running down her chin and across her chest as she guzzles in powerful, desperate, motions.[line break][line break]When the climax ebbs from you, she sinks, gasping for breath, but looking satisfied.";
			otherwise if oversized is 1:
				say "Sandra licks her lips as she looks at your oversized loins, reaching to rub eagerly at you before she clambers up against you, pressing your [cock size desc of player] [cock of player] pole against her large, sopping, lips. She wriggles and squirms, trying to get the whole of your meat into her shuddering, desperate, form, but can never get the whole thing. This doesn[apostrophe]t stop her from trying as hard as she can, grabbing at your [cock of player] dick and stroking it with her warm hands as she pivots and writhes against you. The sheer effort of her motions has you panting with lust as your cock sings pleasure up your spine. All too soon, you can feel yourself releasing into her, making her belly surge round with great gouts of juices. She cries out, flopping back and catching herself, hands behind her back, propped at an odd angle as your shaft, only partially buried in her, twitches massively, bulges of your veins showing as you inject your fertile cum into her waiting depths. Sweat sheens on your [skin of player] flesh as you feel dizzy with the climax.";
			otherwise if multicocks is 1:
				say "Sandra stares at your multiple members a moment with lust before she turns around and presents her rump to you then sits back. Those shapely cheeks descend at you before settling in your lap just in front of your [cock of player] cocks. She slowly rubs back, teasing at them with her soft, twitching, tail, as she looks at you over her shoulder. You grab for her, squeezing her heavy upper breasts and drawing a happy little squeak of delight as you begin to roll and knead the sensitive flesh. She rises up against you, cock brushing against her ass, then catching against her large, thick, lips. Her honey is flowing thickly, trailing down your [cock of player] shaft on contact in a warm trickle. You press up excitedly, but she raises against it, softly scolding as she lines up two of your dicks, getting the second to press securely against her tight pucker. With a nod from her, you draw her to yourself, impaling her on your [cock size desc of player] poles until she is seated firmly against you, shuddering powerfully.[line break][line break]Her hands grasp at your own as they explore her curvy front, roaming from breast to breast as she rises and falls against those [cock of player] cocks, wet slapping sounds filling the room as she grows tense. Her soft moans become louder before hitting a fever pitch, small form trembling against yours as her body tightens powerfully around you. Your [ball size] clench before you start to blast into her in thick blasts of fertile seed, filling bowels and womb at once. Your erect members bump one another in their powerful twitches inside the rabbit girl as she presses tightly to you, not allowing any to escape her hungry form. Her ears go back and down suddenly, brushing at your [facename of player] face lightly, 'I think I[apostrophe]m spoiled on regular fucking.' she whispers lightly, panting and glistening with sweat.";
			otherwise:
				say "Sandra rolls over onto all fours, looking somehow natural in the position. Her short tail wags over her ass invitingly as she riggles the rump towards you, 'Come on, don[apostrophe]t keep a gal waiting.'[if charisma of player is greater than 10] Despite her invitation, you move in with your face first, licking over her furry folds. The fur is downy soft, and her flesh is wet with arrousal. She gasps, then begins to give little whimpering moans as you explore her body with your hungry tongue. Your hands grab at her ass, pulling it against yourself as she nibble at her thick labia and nuzzle into the sensitive flesh. She feels large enough to take a cow, but the dense muscle of the passage keeps it clenched tight around your invading tongue as she gives a sharp wail, surrendering sweet honey for you. [end if][line break]You rise up, licking your lips, and slip in over her from behind. With your [cock of player] cock at the ready, you ease it into her cunt, amazed at how well the thick muscles of her sex grip and flex around you. You sink into her in a smooth thrust, and it feels like you're already pistoning with how powerfully her cunt pulls at you. She bumps her ass against your crotch as she sighs, 'Come on...' she urges, and you comply, starting to rock, slowly at first, but faster with every satisfying push, your dick vanishes into her squelching, hungry, depths, spurting thick juices across your crotch as her strangely intoxicating scent washes over you. You lose track of time as you settle on her back and grab at her many titted from, caressing those pear shaped soft organs as you buck your hips up against her, rocking her with your passion.[line break]Pressed so close, you can feel her body trembling, and her tail twitching against your [skin of player] belly as she hits peak again and again with your hard rutting. Your balls clench, then explode deep into her body, filling her with hot jets of seed as she goes rigid, then suddenly swears as her face goes red with pleasure. You rest with her, cuddling gently as you both come down from your highs.";
			increase morale of player by 10;
			if lust of player is less than 50, increase lust of player by 15;
			if libido of player is greater than 20, decrease libido of player by 20;
			if rabbitfucked is 0:
				now rabbitfucked is 1;
				increase score by 5;
			otherwise:
				if sandra is in rabbit den:
					say "Finished and getting dressed, you feel a hand tugging at you and turn to Sandra, 'Look... Being a rabbit makes me kind of nervous, but I'm not infectious, right? I mean, god that was a stupid way to put it. I like you, ok? I want to come with you, please?";
					say "Do you let her?";
					if player consents:
						add "water bottle" to invent of bunker;
						add "water bottle" to invent of bunker;
						add "food" to invent of bunker;
						move sandra to Bunker;
						move player to bunker;
						say "'Thank you!' she cries, pressing her abundant front into your side, clinging warmly as she follows you back to the bunker, tail wagging the entire way. When you arrive, you see that she somehow trailed a suitcase of belongings, and she makes herself at home quickly. She even adds two bottles of water to your bunker supplies and a small package of dried meat.";
						increase score by 5;
						now the rabbit den is not known;
						follow turnpass rule;
					otherwise:
						say "'Oh... well.. ok, well, you know where to find me,' she sighs out and settles on her cot, watching you.";
		otherwise:
			say "She crosses her arms and sighs softly, 'Look, I do have standard, don[apostrophe]t let the rabbit thing fool you. You are just too puny for me.' With that she turns away and snubs you entirely. How rude!";
			now lastrabbitfuck is 250;
		try looking;
	otherwise:
		if cunts of player is less than 1:
			say "'Uh, hon? No offense or nothing but you have nothing to play with. Fucking someone without any of that just feels wierd to me, ok? Sorry.'";
			now lastrabbitfuck is 250;
			stop the action;
		if rabbitsister is 0:
			say "Sandra moves up and kisses you on a cheek, 'No nookie yet hon. We have to become sisters first. Are you ready?'";
			say "Let her proceed?";
			if player consents:
				now rabbitsister is 1;
			otherwise:
				say "'Well, let me know when you change your mind,' says Sandra as she moves to grab a book.";
				now lastrabbitfuck is 250;
				stop the action;
			say "She hikes up her dress, revealing her huge pussy. The vulva is about three inches long, and she reaches down to parts those thick lips wetly with two fingers, as a third finger dips inside, rubbing around slowly. She tenses and shudders with the intense feel of it, but does not linger for long, bringing out her, now glistening, finger and holding it in front of your face. The musky fluid smells good, no, great, intoxicating your senses. Without thinking much about it, you flick your tongue over it. As the sweet substance is swallowed, prickles run over your [skin of player] skin. Your head tingles intensely as your ears begin to go warm. Sandra giggles as she watches you, then pulls out a mirror quickly, letting you watch. Your ears are gaining a coat of white fur and moving up to the top of your head rapidly. They grow long and sensitive, new sounds reaching you. Even Sandra's excited heartbeat seems to softly tick in those great furry limbs.[line break][bold type]YOUR PERCEPTION HAS INCREASED BY 2[roman type]";
			increase perception of player by 2;
			now face of player is "set of two long white rabbit ears twitching above your head, looking odd compared to your normal";
			now facename of player is "Rabbit Girl";
		if rabbitsister is 1:
			say "'Are you ready for the next step? We'll need something goopy and slick.'";
			say "Let her proceed?";
			if player consents:
				if glob of goo is owned:
					let number be 0;
					repeat with Q running through invent of the the player:
						increase number by 1;
						if q matches the regular expression printed name of glob of goo:
							remove entry number from invent of the player;
							break;
					now rabbitsister is 2;
					say "'You have just the right thing,' she says in a complimenting tone as she takes your jar of goo and pops it open. She slathers it across her hands then has you turn around. Her soft hands run across your back, working under clothes. The goo is warm thanks to her own heat, leaving slick trails over your body as she works down, and grabs your bottom, 'No one is a rabbit without a tail', she chastises, starting to rub firmly at the base of your spine, tingling growing. A finger strays, by accident, perhaps, though unlikely, towards your unguarded pucker, slipping in all too easily with its coating of goo. You arch back against her as she starts to explore you without shame, testing your elasticity boldly. Perhaps it is the goo infection helping, but she manages two fingers, then three, pumping against your shuddering form as you rock in place, your own dewy folds growing hot as pleasure builds inside you.[line break][line break]Your spine suddenly develops a kink, like a terrible lower back ache that grows more intense even as Sandra continues to stimulate your suddenly flexible sphincter. With an ecstatic wail of relief, the pain breaks with a wet noise as a rabbit's tail comes into fluffy fruition against Sandra's other rubbing hand. Sandra holds you gently as you recover, pressing her warm curves to your back and withdrawing her fingers from within you. 'I would ask you to lick again, but even I know that would be nasty.' She gives an odd expression, then laughs, moving away from you to clean off her hands.";
					now tailname of player is "Rabbit Girl";
					now tail of player is "You have a short white rabbit's tail above a shapely ass. It twitches when you're excited, wagging back and forth.";
					increase dexterity of player by 1;
					say "[bold type]YOUR DEXTERITY HAS INCREASED BY 1[roman type]";
					increase score by 5;
				otherwise:
					say "'You need something goopy and slick,' she reminds.";
					now lastrabbitfuck is 250;
					stop the action;
			otherwise:
				say "'Well, let me know when you change your mind,' says Sandra as she moves to grab a book.";
				now lastrabbitfuck is 250;
				stop the action;
		otherwise:
			if ( gestation of child is not 0 or child is born ) and sandra is not in bunker:
				say "'Oh, sister, you need my help!' exclaims Sandra as she comes up to you.";
				if child is born:
					say "She looks over your [bodyname of child] child and reaches to pet them lightly, then hug them close, 'Hello, my... you grew up fast. I will help take care of you.'";
				otherwise:
					say "She rubs over your belly softly, almost purring, 'You will be a mother soon. I am so excited!'";
				say "Sandra insists on returning with you, and moves into the bunker without delay.";
				increase score by 5;
				add "water bottle" to invent of bunker;
				add "water bottle" to invent of bunker;
				add "food" to invent of bunker;
				move sandra to Bunker;
				move player to bunker;
				now the rabbit den is not known;
				follow turnpass rule;
			otherwise:
				say "'Hello sister,' she says, smiling. 'Oh, sorry, I'm not in the mood for that.'";
			now lastrabbitfuck is 250;



After resolving a needy rabbit girl, try looking;

Instead of Resolving a Needy Rabbit Girl:
	if ngrp is 0:
		say "Drifting about the city streets is a woman. She is wearing a long skirt and a jean jacket over a bright yellow blouse. Sprouting from her shoulder length, brown, hair are two long white rabbit ears. She doesn't look feral, and is picking around through the rubble as if searching for something. One of her great ears suddenly lifts and she looks directly at you a moment, wide eyed, then she flees before you can say anything. How odd.";
		increase ngrp by 1;
		stop the action;
	if ngrp is 1:
		say "You spot that rabbit girl again and duck low so she doesn't see you, hopefully. You creep up closer to have a look at her. She's bent over, picking up something from the ground. From a tear in the seat of her skirt, an upturned rabbit tail flicks back and forth energetically.";
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 12:
			say "You call out gently to the woman and she turns to face you once more. She looks ready to flee but you hurriedly explain you mean no harm. Cautiously, she begins to relax, but does not approach you.";
		otherwise:
			say "You call out gently to the woman, but when she tuns that panicked gaze on you, you fail to think of anything convincing to say, and she flees off into the ruins.";
			stop the action;
		if the cocks of the player is greater than 0:
			say "As you approach her, slowly, you speak in gentle tones. She seems to be relaxing a little bit. When you get within twelve feet, you see that her eyes have wandered down, not meeting your gaze, instead she's looking at your belly, or groin. When you reach easy conversational distance, she grabs at your hand, 'I thought I would die alone in this city!' she gasps out, 'I can[apostrophe]t even tell you how happy I am to see you.'";
			now battleground is "Outside";
			choose row with a area of battleground in the Table of random critters; 
			follow cock descr rule;
			say "You ask her if she has been infected, and she nods. 'My rabbit bit me and I changed, but not as much as some of the people I have seen. Have you seen those [name entry]s? Crazy right?' She presses to your front as she talks, letting her shapely front compress against you. You can feel she has become quite endowed, six breasts of decreasing size nudging against your body, making your [cock size desc of player] [cock of player] cock stiffen lightly.";
			say "Do you follow your urges?";
			if player consents:
				say "As if she could detect the decision being made in your eyes, she reaches for your groin, rubbing slowly as she gets a smile. 'Well since you ask,' which you had not yet, 'Yes.' She grabs at a hand and guides you into a basement, 'My home,' she explains before turning to you.";
				rabbitfuck;
				say "[bold type]You now know how to navigate to the rabbit den[roman type].";
			otherwise:
				say "She looks clearly dissapointed, and crosses her arms, 'I thought you were the kind of man to help me, but I guess I was wrong. Or maybe you're shy? Look, you[apostrophe]re nice. Here[apostrophe]s my address, ok? Come visit any time.";
			now Rabbit den is known;
			increase score by 1;
			now needy rabbit girl is resolved;
			stop the action;
		otherwise:
			say "You approach whispering soft things to her and she permits you to come up to her. Something about her expression seems dissapointed, but it fades fast. She reaches for your hand, 'It[apostrophe]s been so long since I talked to anyone, or even saw anyone that looked human.' she murmurs, 'I just feel so lonely. Can I hold you?'";
			say "Do you let her?";
			if player consents:
				say "She wraps her arms around you and is soon hugging to you quietly. Her breasts, now pressed against your front, feel warm and soft. There are too many of them, six gently rubbing against your [skin of player] chest. Her hands slowly dip, reaching for your ass for a squeeze as she looks up into your eyes, 'I am so... lonely.' she whispers, 'Will you be my sister?'";
				say "Do you let her continue?";
				if player consents:
					say "She slowly lies you down with a smile, looking quite relieved at your consent. She has you take off your clothes, then puts her hands on her hips, looking you over, 'What?' she asked, flashing a grin, 'You thought we were going to make out in the middle of the street? Get real. Come on!' she waves excitedly, and barely waits for you to stand back up again before she leads you hurriedly through the devestated city to a small basement door. She fishes out a key and has the door open quickly, leading you inside.";
					move the player to Rabbit Den;
					now the rabbit den is known;
					increase the score by 1;
					now Needy Rabbit Girl is Resolved;
				otherwise:
					say "She looks embarrassed, then frustrated. She bites her bottom lip, then sniffles, 'Fine then, I can make it on my own!' and she defiantly marches away.";
					now Needy Rabbit Girl is resolved;
					stop the action;
			otherwise:
				say "She looks embarrassed, then frustrated. She bites her bottom lip, then sniffles, 'Fine then, I can make it on my own!' and she defiantly marches away.";
				now Needy Rabbit Girl is resolved;
				stop the action;
			
Rabbit Den is a room. It is fasttravel. It is private.

The description of Rabbit Den is "Not a literal rabbit den, a basement actually. It is warm and dark in here. You can see books piled in messy stacks, and a small cot set to the side. It seems whomever lives here is stocked for the long haul, with small bottles of water and packaged food up on a shelf. There is a soft, musky, scent in the air.";
Sandra is a woman.
The description of Sandra is "A mostly human female, if you didn't count the rabbit ears, six breasts, and that cute little white tail that sways behind her. She is usually wearing a yellow blouse, jean jacket, and a long red skirt. Her feet are clad in sneakers, well worn.";
Sandra is in Rabbit Den.
The conversation of Sandra is { "Did I mention my name is Sandra yet? I can be a ditz sometimes about that.", "It is so nice having someone around to talk with.", "Do you think someone will come rescue us?", "I hope my rabbit is ok. I mean, yea, it did kind of bite me and turn me into a crazy rabbit lady, but he is still my pet.", "You smell nice. God that sounded wierd, sorry.", "Hello there!" }

When play ends:
	if Sandra is in the Bunker:
		if hp of the player is greater than 0:
			if humanity of the player is less than 10:
				say "Sandra remains a loyal friend and affectionate lover to you for the rest of your days, remaining at your side despite your loss of humanity.  She remains with you, tending to your needs, all of them, as best she is able.  She does not permit you to predate on unchanged humans, tackling you to the ground when the urge becomes too strong and fucking you into a cooperative stupor.  Could anyone ask for a better friend?  ";
			otherwise:
				say "     Sandra remains a loyal friend and affectionate lover to you for the rest of your days, remaining at your side after you are all rescued from the infected city.  ";
			if cocks of the player is greater than 0:
				say "Eventually, she grows round and plump, and bears you a child.  The child emerges with rabbit ears, [one of]male[or]female[at random], and adorable.  The child grows up loving the both of you and is raised with fierce protectiveness.";
				increase score by 5;
			otherwise:
				say "[line break]";
		
Desperate Bunny ends here.
