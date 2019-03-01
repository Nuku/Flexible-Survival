Version 2 of Lusty Skunk by Nuku Valente begins here.
[Version 2.1 - Relocated to new Urban Forest area.]

"Adds a situation to Flexible Survival with a sticky skunkette."


Section 1 - The Situation

Table of GameEventIDs (continued)
Object	Name
Lusty Skunk	"Lusty Skunk"

Lusty Skunk is a situation.
The sarea of Lusty Skunk is "Forest".

skrp is a number that varies. skrp is usually -1.
Lastskunkfuck is a number that varies. Lastskunkfuck is usually 250.
skunkmulticock is a number that varies. skunkmulticock is usually 0.
skunkfucked is a number that varies. skunkfucked is usually 0.
skunksister is a number that varies. skunksister is usually 0.
skunkspot is a number that varies. skunkspot is usually 0.


After resolving a Lusty Skunk, try looking;

Skunkform is an action applying to nothing.

To Skunkform:
	if skunkbeaststatus is 1:
		[puts Skunkbeast Lord as lead monster]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Skunkbeast Lord":
				now monster is y;
				break;
		now bodyname of player is "Skunkbeast Lord";
		now tailname of player is "Skunkbeast Lord";
		now body of player is body entry;
		now tail of player is tail entry;
		attributeinfect;
	else:
		now body of player is "somewhat shapely, but could pass for normal - at least from the waist up. Below that, you're dramatically transformed, having the head of a female skunk morph protruding from your groin, looking around, talking, and generally making nice. The black and white furred skunk paws for feet are also a hint that something is amiss. Strangely, your upper body is that of a human, melding into a furry lower half smoothly. Your ass has been replaced with a whole body of a skunk, with wide back hips that conceal your genitals, now riding far behind you. Your lower body is powerful looking, with large claws at the end of the back feet";
		now tail of player is "You have a broad, striped, skunk tail.";
		now bodyname of player is "Skunk Taur";
		now tailname of player is "Skunk Taur";
		now scalevalue of player is 4;
		now bodydesc of player is "tauric";
		now bodytype of player is "[one of]mephit[or]skunk-like[or]mustelid[at random]";
		now SleepRhythm of player is 0;


Instead of Resolving a Lusty Skunk:
	if skrp is -1:
		say "You notice a crudely drawn sign, posted in the grass. 'Beware Double Skunks. If you cherish your privacy, turn away now.'";
		say "Do you want to proceed?";
		if player consents:
			now skrp is 0;
		else:
			now lusty skunk is resolved;
			say "You turn and walk away from the area, making a note not to wander back into it later. Phew, good thing you saw that sign.";
	if skrp is 1:
		say "You happen across another skunk hybrid. A shapely female human form perched on a skunk lower frame, two faces both smiling at you. Without a word, they prance up and embrace you. Any desire you had to avoid them fades like mist before the morning sun as their hands eagerly explore your form. Your body grows warm and tingly as it remembers the form they want, reaffirming your strange, new, nature with gentle coos of affection and familial bond.";
		skunkform;
		if player is male:
			if cock length of player < 9:
				say "Her hands roam you as she circles around you, reaching behind your hind legs to caress your [cock size desc of player] manhood gently, 'Too small for me,' she chides, 'I want to feel it, but bigger.' She leans in behind you, kissing your [short ball size] balls and nuzzling into your sensitive loins a moment before she comes back around you, her shapely ass waving temptingly, denied though it is.";
			else if cock length of player > 19:
				say "Appreciative paws find your [cock size desc of player] [cock of player] equipment, stroking it gently as she rubs up alongside you, 'You are such a big boy. A little too big, even for me, but I bet we could satisfy another way,' she whispers to you before slowly rolling you onto your back. You would expect laying flat on your back to be uncomfortable for your new body, but the union of your upper and lower bodies proves to be flexible, allowing you to lay flat gracefully. She is straddling you with all four lower legs, rubbing the soft, warm, fur of her belly along your male meat, sending shivers of pleasure through your altered body from the ticklish sensations.";
				WaitLineBreak;
				say "Her lower paws tuck in and grasp at your mighty tool, pulling at it slowly as her hips grind up against you lustfully. [if cocks of player > 1]Your extra male meat is left to run along her sides, stimulated as she ruts against you, stroking with fur even as her dexterous paw works at one. [end if]She makes soft affectionate sounds as her tail flutters in the air, then curls back. You can feel your [short ball size] orbs being rubbed against firmly, encouraging them to release their increasingly urgent load.";
				WaitLineBreak;
				say "You can hold it no longer. Rising your hips against her, burying cock into her plush belly fur[if cock length of player > 26] and emerging beyond[end if], you groan, then grasp at the ground as your balls lift and you give her what she wanted, spraying her and yourself with thick gushes of your fertile gift. She begins to vibrate on top of you, rumbling with satisfaction. Even as you pant for breath, she rises from you, and begins to lick you clean, holding you still with one paw. Her gentle touches has you drifting to sleep, soothed with the wonderful presence.";
				WaitLineBreak;
				say "When you awaken, she is gone, but left a note, saying she hopes to run into you again, and she hopes she can fit you better. A little series of hearts follows the letter.";
			else:
				say "She nuzzles into your chest lightly with a soft purr like sound, 'I want you in all the best ways,' she rumbles out as she turns. Her lower face laps at your legs before it is too far away, her tauric bulk warm and soft as it brushes against you. Her tail sweeps into view, lifting up over her back and exposing her weeping cunt and tight ass to your eyes, 'Go on,' she coos as she wriggles that buttocks at you. Your new instincts have you clambering up on top of her without further delay, grasping at her lower midsection to draw her back eagerly to be impaled.";
				if cocks of player > 1:
					say "You line up a second [cock size desc of player] spear to her exposed ass, sinking it in along with the one burrowing deliciously into her grasping love tunnel. Her back arches and she squeals at the double penetration, looking over her shoulder with some wonderment at you. You lean forward, stealing a kiss and drawing her back all the more firmly[if cocks of player > 2]. The rest of your man meat runs up along her lower belly, fur tickling intensely as it gets stroked with every motion against her[end if].";
				WaitLineBreak;
				say "Her cries are a chorus, singing in duet as you take her, filling spread folds to her obvious delight as she dances against you. Her back legs shuffle, plunging herself back with your forward rocks and pulling away again as you draw back, forcing your [cock of player] equipment to plunder her all the more powerfully as she grows warmer and wetter by the moment. Your [short ball size] orbs slap up against her meaty buttocks as your motions grow more violent with mutually shared passions.";
				WaitLineBreak;
				say "Your lower head dips forward, lapping at the dripping fluids of your union and shouting encouragements to you even as the tension becomes all too much to bear. Your balls clench, and your meat jumps. The double skunk under you shudders in completion as you begin to fill her with long ropes of seed. She leans back, grabbing for your hands and drawing them towards her breasts. Even as post coital lethargy tugs at you, you squeeze and caress over her chest, snuggling with her and enjoying the tight spasms of her cunt around you.";
				WaitLineBreak;
				say "She quietly pulls forward from you, leaving you to stand on your own paws. Her folds glisten with shared fluids, your seed largely trapped within her curvy form. She blows you a kiss and moves to trot away without another word. '[one of]Sex as a guy is pretty damn fun.[or]I wonder if she will become a mother, that would make us both daddies.[or]One of these days I'm going to get you long enough to suck you off myself.[at random],' says your lower head, breaking the silence.";
	if skrp is 0:
		if bodyname of player is "Skunkbeast Lord":		[automatic for Skunkbeast Lord]
			say "You hear a strange sound like a wounded animal and go to have a peek. A mutant skunk is laying on her back, beckoning to you. Her breasts are heaving and her eyes somewhat dilated. She seems unaware of anything except that you are present, and she wants you. The air is heavy with a thick animal musk and a puddle spreads from between her sopping wet thighs. Her vulva are distended and swollen, unusually large on her curvy form, capable of taking a horse, but thick and muscled enough to clench around any man, you imagine. She gestures for you to come closer, and your skunkbeast instincts take over without hesitation. You scramble towards her, shedding whatever clothes you have remaining as you go, practically leaping into her embrace, rubbing your bestial body against hers lustfully.";
			say "[doubleskunk]";
		else:
			say "You hear a strange sound like a wounded animal and go to have a peek. A mutant skunk is laying on her back, beckoning to you. Her breasts are heaving and her eyes somewhat dilated. She seems unaware of anything except that you are present, and she wants you. The air is heavy with a thick animal musk and a puddle spreads from between her sopping wet thighs. Her vulva are distended and swollen, unusually large on her curvy form, capable of taking a horse, but thick and muscled enough to clench around any man, you imagine. She makes a soft whine and beckons. Do you accept her invitation?";
			if player consents:
				say "You approach the skunk, her soft paws already reaching to undo any clothing you have remaining, purring and cooing at you with joy now that you have consented.";
				say "[doubleskunk]";
			else:
				say "You turn tail and flee the strange sight, glancing over your shoulder as you go to make sure she does not pursue. Fifteen minutes later, you slow down and recompose yourself. It seems you got away from the strange mutant, for now.";


to say doubleskunk:		[separated to edit and remove 'stop the action']
	if 0 is 0:		[yes]
		if player is male:
			say "Her soft paws stray down between your thighs to grasp at your [cock size desc of player] [cock of player] shaft and gently stroke it to its full length as she slowly pivots beneath you. Her huge tail drapes up over her back, exposing her ass and pouting nethers to you. Thin streams of honey leak from those thick pouting lips, running down her thighs as she slowly shakes her rump back and forth invitingly. The smell is overpowering in her heat, repulsing and attracting at once in a powerful, if confusing, clash of instincts.";
			WaitLineBreak;
			if cocks of player > 1:
				say "Your cocks know what they want. You line them up against her and push forward, sinking one achingly hard member into the tight pucker of her ass while another slips deeply into her welcoming cunt, lubricant squirting out as you shove in, running down your [skin of player] thighs. [if cocks of player > 2]Your other [cock of player] cocks slip up along her front, rubbing against fur as they go, caressed by her warm pelt and one of her hands, straying down to tease and pull at them. [end if]You draw back, her entire body shivering in tune to your movements like a violin's strings. You can feel her body clenching, desperate for your cocks, which you give, plunging deep into her willing, wailing, form. As you start to develop a steady thumping pattern, her tail raises, brushing against your chest with every thrust. [if cocks of player > 2]Her hand teases and pulls incessantly at your exposed meat, making you tremble with extra pleasure as she works you higher and higher with skilled strokes. [end if]You can feel your [short ball size] balls tensing, ready to release, and you redouble your efforts to please this creature under you.";
			else:
				say "Following your increasingly strong instincts, you plunge your [cock of player] dick into her waiting passage. With a wet squelch, her honey pot overflows with her expectant fluids, gushing back against you even as you thrust as deep as you can into her tight warmth. Your hands grip into her fleshy hips, pressing against her in sharp, deep, motions, making her body quake and jiggle with every forceful meeting. She looks you in the eyes, filled with an expression between utter lust and some deep affection. Her furry legs wrap around your hips as best she can, drawing you in against her as you rut with her so eagerly, filling her with your desperate virility. Suddenly, she pushes at you, and twists. Athletically, she spins about, drawing free from your now glistening member just long enough to get into a bestial position and raise her tail.[line break][line break]You are quick to slam home into that welcoming tunnel, reaching around to grab at her luscious breasts as your [short ball size] balls sway under you with each powerful union of your pleasured bodies, your voices rising together as climax rushes close.";
			WaitLineBreak;
			say "Just as your muscles contract in climax, a wet warmth splatters across your front. She sprayed you! Revulsion barely registers as your body locks in climactic pleasure, filling her greedy womb with your seed even as the warmth spreads. She presses back firmly, and abruptly sharp tingles run through everywhere that your bodies meet. With a sudden spasm, you feel her try to pull away, but get drawn back. She moans whorishly as she writhes back against you. Your man meat throbs powerfully as where you end and she begins starts to become blurred, flowing into one another, cock flesh leaving nothing but bulged flesh against her. In a fit of panic, you push against her, trying to get away, but she doesn't budge, your hands coming off of her sticky. Fearing of losing them, you wrench them away even as a second climax ripples through your tingling lower body. You can feel your [short ball size] orbs clenching, filling her with seed as your forms twine and flow together. Her rump pushes back into yours, through it. Instead of pain, only an increasing, dizzying, euphoria, breath short as you change.";
			WaitLineBreak;
			if a random chance of 1 in 3 succeeds:
				say "Your legs seem to flow into her own, and your man meat kisses the air wetly, springing from her to bob angrily, free. A glance shows that your equipment now dangles beneath her as if it were her own, her hips and your own rapidly becoming the same thing as she moans and pushes back against you, surrendering her body eagerly to fuel the changes. You consider drawing away, trying to make another bid for freedom, but even as the thought forms, orgasm wracks your form. Your shared equipment sprays wildly across the ground as she wails in delight. Time becomes as fuzzy as your bodies as you fall across her, panting for breath that won't come. Your hands can feel her swollen belly and heavy breasts as she snuggles against you, but it seems harder and harder to reach as time goes on.";
				WaitLineBreak;
				if skunkbeaststatus is 1:
					say "The sensations start to fade, and with it, fear and curiosity build rapidly. You draw yourself upright and look down to see what's going on, only to find yourself looking at your humanoid torso covered in black and white fur, and a face. The skunk's snout looks up at you from your groin, smiling blissfully. Looking quickly behind you, you see you have retained your skunkbeast form as well, with it now forming the back half of what has become a tauric form attached to an anthropomorphic skunk torso. You're a large, tauric skunkbeast, with all your equipment tucked under your back crotch, and your front occupied by your co-inhabitor.";
					say "'It's ok,' she suddenly says, 'You are not hurt, and I'm ok too.' Easy for her to say! You feel like you should be freaking out, but something keeps you calm, and then it becomes clear. She shares her emotions with you, gently soothing your fears, reassuring your injured ego. 'We are one now. I am happy to be part of you. Mmm... this a fine, powerful body we have,' she purrs. 'We should go, explore. We have so much to do.' She does not say what she wants to do, happy to help you with whatever you are doing. 'Oh, one thing. There are others of me around here, if we can find them. They like to play, and can help us a little, if we get changed.";
				else:
					say "The sensations start to fade, and with it, fear and curiosity build rapidly. You draw yourself upright and look down to see what's going on, to find yourself looking at black and white furred legs, and a face. The skunk's snout looks up at you from your groin, smiling blissfully. Looking quickly behind you, you see the skunkette's sexy form is now larger and attached to your ass. You're a tauric skunk, with all your equipment tucked under your back crotch, and your front occupied by your co-inhabitor. 'It's ok,' she suddenly says, 'You are not hurt, and I'm ok too.' Easy for her to say! You feel like you should be freaking out, but something keeps you calm, and then it becomes clear. She shares her emotions with you, gently soothing your fears, reassuring your injured ego. 'We are one now. I am happy to be part of you. We should go, explore. We have so much to do.' But she does not say what she wants to do, happy to help you with whatever you are doing. 'Oh, one thing. There are others of me around here, if we can find them. They like to play, and can help us a little, if we get changed.";
				now skrp is 1;
				add "Skunkbeast Lord" to infections of Taurlist;
				[scale up the Skunkbeast Lord by 1]
				repeat with y running from 1 to number of filled rows in Table of Random Critters:
					choose row y in Table of Random Critters;
					if name entry is "Skunkbeast Lord":
						increase scale entry by 1;
						break;
				skunkform;
			else:
				say "Suddenly, she peels free with a loud wet noise. She wobbles in place, fur glistening with sweat and cum. A hand on her swollen belly, she staggers off while you stand, stunned and dizzy. As feelings return to your limbs, you look down at yourself. You seem largely unchanged, somehow, though you are sure something changed, inside. You still feel good and tingly as you wander back towards safer areas, wondering if you're sad or happy to have escaped that skunk.";
		else if cunts of player < 1:
			say "She paws at you softly a moment, exploring you quietly a moment before she rubs between your vacant legs. Disappointed, she draws you in for a slow kiss, but then wriggles away, whining as she wanders off in search of someone better equipped.";
		else:
			say "She draws you tight against herself, hugging, rubbing slowly along your sides and back quietly a moment before rolling you right onto your back with surprising strength. She slips over you, nuzzling along your [skin of player] thighs. Her wet nose presses to your swollen labia, lapping softly with her warm wet tongue. She tastes you, then delves slowly, rough texture pressing into your yielding tunnel as a paw reaches under you, lifting your rump against her snout even as a finger wriggles slowly into your back door, exploring your depths as eagerly as her tongue delves into your sopping wet tunnel. Your body shudders with paralyzing pleasure, a sharp cry of pleasure as she nuzzles firmly against your [cunt size desc of player] passage, your body yielding painlessly, stretching a little as she seems to bury most of snout into your body.";
			if cunts of player > 1:
				say "She raises a free hand and teases it along a secondary slit, slowly teasing it before slipping a finger in, then a second, quickly spreading you as her paw presses firmly and deeply into your body, causing a new spike of bliss to burn its way through your body. She manages to get her forearm into you even as she licks at you from the inside, the tingling suddenly growing warm and deep.";
			if a random chance of 1 in 3 succeeds:
				say "Her face suddenly vanishes, a monstrous bulge appearing in your lower belly as she slips into you right up to the neck. Pleasure overwhelms your senses as her triumphant cry reaches your ears, muffled through your own flesh. Her body swings around even as her shoulders begin to flow powerfully up against you, merging with your legs with tingling spikes of erotic fulfillment. Her thoughts softly caress against your own, stifling the rising urge to panic within you as two become one. You get the urge to stand, and clumsily pull yourself up even as your legs become black and white furred, skunk like. You wobble awkwardly, about to fall back with your new lover's body pulling at you, when her own feet push down and balances you.";
				WaitLineBreak;
				if skunkbeaststatus is 1:
					say "Her form bulks up behind you, matching you better as you revert to your skunkbeast form, but now altered into some kind of skunkbeast taur. Your humanoid body is that of an anthropomorphic skunk joined atop your skunkbeast body, making you even larger than before. With a soft, wet, noise, the skunk girl's face pushes free of your front. She takes a sharp breath, then looks up at you from what would be the groin of your torso. 'We are so pretty,' she sighs out. A part of you agrees, the other part, repulsed. But, at least for now, you are stuck with it. 'Oh, there are others here, like me. We can play with them, and they can fix us, if we get changed,' she explains, smiling brightly. 'I am so happy I met you. This is such a big, powerful body we have,' she purrs. 'I know we'll have so much fun together.' A little confused, you move back for safer grounds, your new body carrying you easily.";
				else:
					say "Her form bulks up behind you, matching you better as you become a skunk taur, at least from the hips downwards. With a soft, wet, noise, her face pushes free of your front. She takes a sharp breath, then looks up at you from what would be the groin of your torso. 'We are so pretty,' she sighs out. A part of you agrees, the other part, repulsed. But, at least for now, you are stuck with it. 'Oh, there are others here, like me. We can play with them, and they can fix us, if we get changed,' she explains, smiling brightly. 'I am so happy I met you. I know we'll have so much fun together.' A little confused, you move back for safer grounds, your new body carrying you easily.";
				now skrp is 1;
				add "Skunkbeast Lord" to infections of Taurlist;
				[scale up the Skunkbeast Lord by 1]
				repeat with y running from 1 to number of filled rows in Table of Random Critters:
					choose row y in Table of Random Critters;
					if name entry is "Skunkbeast Lord":
						increase scale entry by 1;
						break;
				skunkform;
			else:
				say "Your entire lower body throbs with strange pleasure as she seems desperate to push herself into you from every direction, but even as your body trembles with fresh delight, it feels like she hit a wall. She draws back an inch from all your entrances, your body tugged as if she were stuck in you, but she pulls firmly, slowly parting from you in a long low squelch, body hot and tingling and your consciousness threatening to fail as she pops free. Leaving you panting and wet with your own lubricants and sweat, she rises. With a last blown kiss, she saunters into the wasteland, broad tail waving behind her.";


[For endings, see the 'Skunkbeast Lord' file by Stripes.]


Lusty Skunk ends here.
