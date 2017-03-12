Version 1 of Denise by Wahn begins here.

Denise is a woman. 
The description of Denise is "[DeniseDesc]".
The conversation of Denise is { "Mew!" }.

instead of sniffing Denise:
	if the remainder after dividing libido of gryphoness by 4 is 0:
		say "     Denise smells like a herm gryphoness, aroused and in heat.";
	otherwise if the remainder after dividing libido of gryphoness by 4 is 1:
		say "     Denise smells like an aroused herm gryphoness.";
	otherwise if the remainder after dividing libido of gryphoness by 4 is 2:
		say "     Denise smells like a pregnant herm gryphoness.";
	otherwise if the remainder after dividing libido of gryphoness by 4 is 3:
		say "     ERROR-Denise-3S: You should not able able to smell her right now.";

to say DeniseDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Gryphoness], LIBIDO: [libido of Gryphoness], DEXTERITY: [dexterity of Gryphoness] <- DEBUG[line break]";
	now tempnum is the remainder after dividing libido of gryphoness by 4;
	let T be ( libido of gryphoness / 4 );
	say "     Denise is a beautiful and striking example of the blue gryphons now living in this city. Being a creature out of legend, her form consists of wildly different parts - standing upright on the paw-feet of digitigrade legs, she has a long lion's tail and white-gold fur on her lower body and front up to the collarbone, whith everything above bearing bright blue feathers. Her feathered, but otherwise human-like arms end in hands that bear dangerous talons, and behind her back a proud set of fully functional wings gives her an imposing stature. Topping all of that is the avian head of a bird of prey, complete with a feathers in many shades of blue and a sharp beak.";
	say "     The sexual characteristics of the gryphoness are none less exceptional - and easily apparent, as she doesn't believe in wearing clothing anymore and seems to have lost all shyness of her former, human life. Thus, her well-sized breasts and hard nipples are in open view, as is the furry sheath between her legs that hides a knotted black cock. Further down, almost hidden below the hermaphrodite's sack and balls is her pussy, of which you catch enticing glimpses as Denise moves[if tempnum is 1]. She seems particularly pleased right now, having a kind of special glow to her fur and feathers[otherwise if tempnum is 2]. She has a full, rounded belly from a growing pregnancy within her[otherwise if tempnum is 3]. ERROR-Denise-3L: You should not be able to see Denise right now[end if][if T is 1]. Accompanying her for the moment is your gryphon child, a cute version of Denise in miniature[otherwise if T >= 2]. Accompanying her for the moment is a pair of your gryphlets, cute versions of Denise in miniature[end if].";
	say "     [line break]";
	say "     After you helped her earlier, Denise is staying with you in the library now, happy in her new nest right next to the railing of the upper floor. It consists of two sofas pushed to form a triangle with the railing, and innumerable pillows thrown in the space in between. She must have looted quite a bit of the surrounding neighbourhood to get that many. Having a golden feline lower body that blends beautifully with her blue avian upper body, she usually whistles happily as she leans on the railing to watch things going on below or just lays back in her warm and soft refuge with a good book.";

instead of conversing the Denise:
	say "What do you want to talk with Denise about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Her human self";
		now sortorder entry is 1;
		now description entry is "Ask the gryphoness about her past";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Being a gryphon";
		now sortorder entry is 2;
		now description entry is "Ask the gryphoness about what she thinks of her new form";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Her human self":
					say "[DeniseTalk1]";
				if nam is "Being a gryphon":
					say "[DeniseTalk2]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the gryphoness, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say DeniseTalk1:
	say "     As you ask her about the past, Denise mulls the question over for a moment, then says, ";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:     
			say "'Oh, my life wasn't anything special, really. You know, just normal. Finished high school, then moved out and got a job at a restaurant downtown. It wasn't being a famous singer like I had dreamed about, but I kinda liked working around people. And then... well, this happened.' Stretching forward one of her large blue wings, the transformed woman brushes it with her hands, straightening out several large feathers that got themselves out of arrangement. 'Can't say I ever saw this coming. Pretty neat though, once you get used to it.'";
		-- 2:
			say "'Not much to talk about on the side of family and friends, at least in the last year or so. Guess it's a relief now that my real besties left town to go to college out of state together. Wish I could have joined them, but... it's not easy if you're more or less on your own, no support at all from mom and... Greg. So Tiff and Jen moved to the San Francisco Art College, and I got an apartment and job here in the city.' Giving a very expressive shrug with her large wings, the gryphoness pulls her flexible beak into a calm smile, then adds, 'Well, that's life. You deal with what you get.'";
		-- 3:
			say "'I always loved to sing. Even was in the school choir. Music can take you anywhere in the whole world, or out of it. You just close your eyes and let the rhythm carry you with it.' Denise hums to herself and closes her eyes, then slowly spreads her wings and gives a half-beat with them, pushing herself up in the a little and then landing on digitigrade paw-pads with a somewhat embarrassed expression. 'Oh, er... oops. Sometimes I forget that I'm a gryphon now. Still, isnt't it  kinda funny that now that I'm not human anymore, I'm actually further along on my dreams - I was good, you see, but this new body is something else...' And with that, Denise suddenly breaks into song, quietly starting then building to higher and higher volume as she sings a hauntingly beautiful meldody, pitch-perfect with a songbird's skill.";
	
to say DeniseTalk2:
	say "     Looking down over herself, Denise chuckles and says, 'Yeah, it's really crazy how things can happen these days, hm? I mean, look at ";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:     
			say "these things!' She raises her hands, cupping the very generous curves of her breasts. Just below where the first feathers of her hybrid body start, they're still covered in a lioness['] short fur, craeting an image of two golen globes in Denise's hand. As she squeezes them, a tiny trickle of milk leaks out of the nipples on both. The young woman adds, 'I was always a bit... you know, flat, in the front. And now, it's beach ball season. Almost made me fall over on my face when I first changed.' Looking at Denise's well-sized - but far from enormous - breasts, you wonder for a second if you should tell her that there are actual creatures that do have beach ball sized mammaries these days, but before you can say anything, the gryphon herm continues, 'I've learned to milk myself, that feels absolutely amazing. And the milk is quite tasty too. You should try it sometime - I'd gladly let you drink directly from the tap.' With a sexy smile, she wiggles her chest a little, giving you an enticing display.";
		-- 2:
			say "these things!' She lifts and spreads her large wings, wiggling all their joints one by one as if to try every part of them out and convince herself that she actually truly has functional wings. 'I can fly! That's nothing short of amazing.' She raises a hand to look at the taloned fingers on it, then adds, 'Some things I could do without, of this shape, but the wings make it all worth it. Being stupid enough to fall for the 'free milk' trick, I mean. Hah.'";
		-- 3:
			say "what I've got down here. She reaches down to cup the pair of black-skinned balls dangling between her legs, just under the bulge of her sheath. 'It's plenty weird to suddenly have a cock, I can tell you that. Not that I... haven't tried it out, if I have to be honest. Stroking off really feels great! No wonder the guys in high school couldn't get enough of jacking off. Though I wonder if one can even compare my... equipment to a human's. Got a knot on it and all...";
			
to say DeniseTalk3:
	say "     C";

Instead of fucking the Denise:
	if(lastfuck of Denise - turns < 2):
		say "     Denise puts a hand on your chest, giggling lightly as she says, 'Oh dear - you're just insatiable. I like it. Give me one moment to catch my breath, then I'm game for more fun.'";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get a blowjob from Denise";
			now sortorder entry is 1;
			now description entry is "Let the gryphoness suck you off";
		[]
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Let Denise lick your pussy";
			now sortorder entry is 2;
			now description entry is "Let the gryphoness eat you out";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Denise off";
		now sortorder entry is 3;
		now description entry is "Go down on the gryphoness";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Eat Denise's pussy";
		now sortorder entry is 4;
		now description entry is "Go down on the gryphoness";
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Denise's ass";
			now sortorder entry is 5;
			now description entry is "Pound your dick into the sexy gryphoness";
		[]
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Let Denise fuck your pussy";
			now sortorder entry is 6;
			now description entry is "Get the gryphoness to use her strapping manhood on you";
		[]			
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Get a blowjob from Denise":
						say "[DeniseSex1]";
					if nam is "Let Denise lick your pussy":
						say "[DeniseSex2]";
					if nam is "Suck Denise off":
						say "[DeniseSex3]";
					if nam is "Eat Denise's pussy":
						say "[DeniseSex4]";
					if nam is "Fuck Denise's ass":
						say "[DeniseSex5]";
					if nam is "Let Denise fuck your pussy":
						say "[DeniseSex6]";
					wait for any key;
					now lastfuck of Denise is turns;
			otherwise if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the lioness, shaking your head slightly as she gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say DeniseSex1: [Denise sucks the player]
	say "     Moving over to Denise's nest, you quickly undress and climb over the back of one of the sofas forming the outer border of it, coming to sit on the comfortable couch in between piles of cushions. Spreading your legs, you hold up the [cock of player] shaft fully erect over your crotch, then wave it invitingly at the sexy gryphoness with a grin on your face. Almost instantly, she is on her knees between your legs, her flexible tongue licking over the hard cock, as she runs the edge of her flexible beak over it teasingly, causing you to moan in pleasure and run your hands through her feathers eagerly. Her expert tongue wraps around your cock even as her talons massage your balls lightly, showing just how eager she is for your tasty seed. Soon you are rewarding her efforts with an explosion of your fertile cream, which the happy gryphoness hungrily licks up before helping you to stand back up. As you climb out of the nest, you can't help but feel a satisfied grin spreading over your lips at just how readily Denise is fitting into the role of a gryphoness pet...";

to say DeniseSex2: [Denise licks player pussy]
	say "     Moving over to Denise's nest, you quickly undress and climb over the back of one of the sofas forming the outer border of it, coming to sit on the comfortable couch in between piles of cushions. Spreading your legs, slide your hand over your already a bit wet folds, rubbing the sensitive button of your clit for a moment, then demonstratively spread the swollen folds for Denise to see, a wide grin on your face. Almost instantly, she is on her knees between your legs, her flexible tongue licking over your nether lips while she strokes the flexible beak and soft feathers of her avian head against the inside of your thighs. You moan loudly and run your hands through her feathers in arousal, almost driven out of your mind by how expertly she takes care of your needs. It shows that she's been a woman all her life before becoming a herm gryphon - Denise just knows what makes a woman drip with wetness and squirm at every little touch. Soon you are rewarding her efforts with an explosion of your femcum squirting into her face, which the happy gryphoness hungrily licks up before helping you to stand back up. As you climb out of the nest, you can't help but feel a satisfied grin spreading over your lips at just how readily Denise is fitting into the role of a gryphoness pet...";

to say DeniseSex3: [Denise sucked off by the player]
	say "     Moving over to Denise's nest, you quickly undress and climb over the back of one of the sofas forming the outer border of it, coming to sit on the comfortable couch in between piles of cushions. As the sexy gryphoness comes up to you with lust in her eyes, she's immediately drawn into a tight embrace, with you making out with her eagerly. Arms around your rescued singer, you make out with her and let your hands wander over her shapely form, feeling muscles and curves under the feline fur and soft feathers. And then, you roll the two of you over, putting you on top of Denise as you lay lengthwise on the sofa, with her on her back and moaning into your mouth as you keep kissing for several more moments.";
	say "     Putting your hand on the half-hard cock already poking a little out of the gryphon herm's sheath, there is a little gasp as she remembers she's not simply a female anymore. An aroused groan quickly follows as you gently slide the protective skin up and down over her shaft - soon revealing the black-skinned cock fully as it hardens more and more. 'Yes, I... oooh...' Denise coos as you hold her maleness up, then scooch over on the sofa a little so you can lower your head to it. The gryphoness holds her breath as you look up at her past the knotted shaft before giving its head a first lick, making her shiver in pleasure and arousal.";
	say "     [WaitLineBreak]";
	say "     Sliding your lips over a hard gryphon cock, you eagerly go down on the beautiful creature. As you run your tongue over the erect shaft, tracing the veins and little bumps along its length, you can't help but feel glad that you followed Denise's siren song - leading to your original meeting and now finally having her here with you, as a happy gryphoness pet and companion. Bobbing up and down on her shaft, you busy your hands with gently cupping and rubbing her full balls, as well as the sensitive button of her clit over the herm's moist pussy. With this all-out assault on all the right pleasure-spots, your beautiful mate is reduced to little more than whimpering and panting in arousal at each little touch, allowing for a nice little game of seeing how you can make her squeak with a flick of your tongue, or brush of a finger.";
	say "     You take your time to playfully teaste and stroke Denise, tasting the sweet pre-cum that leak from her slit as she trembles in lust, then eventually have mercy on the wound up gryphoness and really go to work on her. Sliding your lips all the way down over her shaft - at least until they bump against her swollen bulge of a knot - you give her a skillfull blow-job, while at the same time fingering her pussy, two fingers buried deep and with your thumb rubbing her clit. It doesn't take long at all before this treatment pushes her breathless arousal over the top, and with a squawk of pure lust, the gryphoness bucks her hips up, driving the black cock all the way into your mouth as it starts to spurt her creamy load. Lips tightly stretched around the width of her knot, you revel in the warm feeling of gryphon cum shooting directly into your stomach, and wet femcum squirting all over your hands.";
	say "     [WaitLineBreak]";
	say "     Having gotten your pet gryphoness off in a mind-blowing orgasm, you pull away after she's done coming and lets her head fall back on the sofa, still breathing hard. A moment later, she pants, 'Thank you. That was... wow.' You just give her an affectionate grope, then decide to get back to the business of ensuring your survival in this crazy city. As you climb out of the nest, you can't help but feel a satisfied grin spreading over your lips at just how readily Denise is fitting into the role of a gryphoness pet...";

to say DeniseSex4: [Denise eaten out by the player]
	say "     Moving over to Denise's nest, you quickly undress and climb over the back of one of the sofas forming the outer border of it, coming to sit on the comfortable couch in between piles of cushions. As the sexy gryphoness comes up to you with lust in her eyes, she's immediately drawn into a tight embrace, with you making out with her eagerly. Arms around your rescued singer, you make out with her and let your hands wander over her shapely form, feeling muscles and curves under the feline fur and soft feathers. And then, you roll the two of you over, putting you on top of Denise as you lay lengthwise on the sofa, with her on her back and moaning into your mouth as you keep kissing for several more moments.";
	say "     Putting your hand on the half-hard cock already poking a little out of the gryphon herm's sheath, there is a little gasp as she remembers she's not simply a female anymore. An aroused groan quickly follows as you gently slide the protective skin up and down over her shaft - soon revealing the black-skinned cock fully as it hardens more and more. 'Yes, I... oooh...' Denise coos as you hold her maleness up, then scooch over on the sofa a little so you can lower your head to it. The gryphoness holds her breath as you look up at her past the knotted shaft before pushing it to flop on her stomach, then move further down to your real objective - the herm gryphon's moist pussy. As you give the sensitive little clit at the top of it a first lick, you make Denise her shiver in pleasure and arousal.";
	say "     [WaitLineBreak]";
	say "     Poking your tongue in between her nether lips, you eagerly go down on the beautiful creature. As you lap between her legs, tracing the edges of her pussy and dipping into the tight tunnel in between once or twice, you can't help but feel glad that you followed Denise's siren song - leading to your original meeting and now finally having her here with you, as a happy gryphoness pet and companion. Licking up and down over her pussy, you busy your hands with gently cupping and rubbing her full balls, as well as the hard pole of the herm's erect maleness, standing proud over her crotch. With this all-out assault on all the right pleasure-spots, your beautiful mate is reduced to little more than whimpering and panting in arousal at each little touch, allowing for a nice little game of seeing how you can make her squeak with a flick of your tongue, or brush of a finger.";
	say "     You take your time to playfully teaste and stroke Denise, tasting the sweet female juices that leak from between her nether lips as she trembles in lust, then eventually have mercy on the wound up gryphoness and really go to work on her. Burying your nose between her pussy lips, you push the tongue deep, probing her depths and teasing all new pleasure spots for her with the questing tip, while at the same time stroking her cock, squeezing the swollen bulge of her knot as you do so. It doesn't take long at all before this treatment pushes her breathless arousal over the top, and with a squawk of pure lust, the gryphoness bucks her hips up, thrusting the black cock between her legs up into the air just as it starts to spurt a heavy, creamy load all over her chest. Meanwhile, with your lips pressed agaimst her female sex, the first spurt of femcum hits you right in the mouth, and you eagerly drink what you can of the sweet nectar. You revel in the sensations of gryphon femcum filling your stomach, just as her still spurting cock leaks another trickle, this time all over your gripping hand.";
	say "     [WaitLineBreak]";
	say "     Having gotten your pet gryphoness off in a mind-blowing orgasm, you pull away after she's done coming and lets her head fall back on the sofa, still breathing hard. A moment later, she pants, 'Thank you. That was... wow.' You just give her an affectionate grope, then decide to get back to the business of ensuring your survival in this crazy city. As you climb out of the nest, you can't help but feel a satisfied grin spreading over your lips at just how readily Denise is fitting into the role of a gryphoness pet...";

to say DeniseSex5: [the player fucks Denise]
	if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		say "     Looking over at your increasingly lustful gryphon companion, you realize that she is staring back at you eagerly as well. You open your mouth to comment, only to have her shake her head slightly, before turning and dropping to all fours on the ground and looking back over her shoulder at you with a happy grin on her beak. The sight of her winking passage as her tail waves above her rear eagerly makes you pant in need as well, and glancing around you realize that it certainly wouldn[']t hurt anything to help your gryphon companion out with her own needs. Grinning eagerly, you quickly stalk over to her on your own leonine legs, your [cock of player] rod already ready and eager as you run your talons through the soft fur of her hips, making her shudder with desire. Reaching around her body, you pin her wings to her back as you lean over her, your taloned hands gripping her soft breasts eagerly as you rub your cock up against her damp pussy teasingly.";
		say "     She moans underneath you as your dominant positioning enhances her already strong submissive instincts, her own cock growing stiff as she pants and moans incoherently. Deciding to reward her submission, you slowly sink your cock into her all too eager body, her pussy lips parting easily for you as she continues to moan helplessly, her lust fogged mind obviously unable to form coherent sentences, or even coherent thought under your pleasurable assault on her body. Your pleasure growing not only from the wonderful sensations of her body engulfing and massaging your cock so eagerly, but with the dominant joy of reducing your companion to little more than a slutty little pet underneath you as well. You are hardly able to restrain your building pleasure as you thrust into her eager body, your hands teasing her breasts eagerly, each little moan of submission you draw out from the slutty gryphoness underneath you a victory all its own, as your pleasure builds higher and higher. Eventually you can[']t take it any more, and you are soon spilling your seed into her needy body, every pulse of your cock sending more and more of your dominant cum into her body to lay claim to her heat filled womb. Panting with exhaustion and a near overload of pleasure yourself, you pull out of her well fucked body, Denise collapsing on the spot as she pants mindlessly for a while, even while you try to reclaim the shreds of your own scattered wits. Eventually you both manage to haul yourselves up to continue on exploring the city, although from the looks Denise keeps sending you, she seems more eager than ever to explore being your submissive little pet again soon...";
		say "[deniseimpreg]";
	otherwise:
		say "     Looking over at your increasingly lustful gryphon companion, you realize that she is staring back at you eagerly as well. You open your mouth to comment, only to have her shake her head slightly, before turning and dropping to all fours on the ground and looking back over her shoulder at you with a happy grin on her beak. The sight of her winking passage as her tail waves above her rear eagerly makes you pant in need as well, and glancing around you realize that it certainly wouldn[']t hurt anything to help your gryphon companion out with her own needs. Grinning eagerly, you quickly stalk over to her, your [cock of player] rod already ready and eager as you run your fingers through the soft fur of her hips, making her shudder with desire. Reaching around her body, you pin her wings to her back as you lean over her, your hands gripping her soft breasts eagerly as you rub your cock up against her damp pussy teasingly.";
		say "     She moans underneath you as your dominant positioning enhances her already strong submissive instincts, her own cock growing stiff as she pants and moans incoherently. Deciding to reward her submission, you slowly sink your cock into her all too eager body, her pussy lips parting easily for you as she continues to moan helplessly, her lust fogged mind obviously unable to form coherent sentences, or even coherent thought under your pleasurable assault on her body. Your pleasure growing not only from the wonderful sensations of her body engulfing and massaging your cock so eagerly, but with the dominant joy of reducing your companion to little more than a slutty little pet underneath you as well. You are hardly able to restrain your building pleasure as you thrust into her eager body, your hands teasing her breasts eagerly, each little moan of submission you draw out from the slutty gryphoness underneath you a victory all its own, as your pleasure builds higher and higher. Eventually you can[']t take it any more, and you are soon spilling your seed into her needy body, every pulse of your cock sending more and more of your dominant cum into her body to lay claim to her heat filled womb. Panting with exhaustion and a near overload of pleasure yourself, you pull out of her well fucked body, Denise collapsing on the spot as she pants mindlessly for a while, even while you try to reclaim the shreds of your own scattered wits. Eventually you both manage to haul yourselves up to continue on exploring the city, although from the looks Denise keeps sending you, she seems more eager than ever to explore being your submissive little pet again soon...";
		say "[deniseimpreg]";
		
to say DeniseSex6:
	if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		say "     Moving over to Denise's nest, with every intention of getting fucked by her, you moan as you can feel your body heat up, and your pussy clench in need. Discarding clothes and gear as you go along, you're soon standing completely naked next to Denise's refuge. The presence of the virile gryphon herm nearby makes you feel incredibly horny and slutty as you rub your talons over your heat filled body. Denise notices your predicament almost immediately, and you can see her shared arousal as she comes over to you, running her tongue along the edges of her flexible beak. Though as tempting as having her lick you might be, your eyes are inevitably drawn to the thick gryphon cock poking out of the sheath between her leonine legs. Often more or less forgotten by the gryphoness, as she still has a female gender identity - no matter what her form. Still, the proud shaft is more than ready to be awoken by your taloned hand reaching out for it, then rubbing the half-hard shaft and cupping Denise's full balls.";
		say "     It doesn't take much more than a that touch and a bit of groping, together with your need-filled scent, and your gryphon companion is ready to fuck someone, hard. The sudden flare-up of her masculine urges overwhelms Denise and on almost pure instinct, she reaches out, wasting no time in moving around you and softly pushing you down onto all fours. Realizing what she has in mind, you can feel yourself growing even wetter, then lift your rear up for her. The handsome gryphon herm gladly takes your eager invitation and she fills your needy body up with her wonderful rod, the feel of her cock splitting you open and making you cry out in pleasure. Soon you are panting and begging for her to breed you like an animal, your talons digging into the ground in pleasure with each thrust of her thick cock into your tight passage.";
		say "     Panting and moaning just as eagerly as you are, it doesn[']t take long for the gryphon stud behind you to give you what your body so urgently needs, and you cry out in pleasure as Denise fills your heat filled womb with her seed. Eventually she softens and pulls out of your body, leaving you there kneeling on all fours on the ground with your head lowered as you try to recover your wits, something about the situation and your submissive positioning making you feel happy and content like a good little gryphon breeder should be...";
		say "     [ovichance]";
	otherwise:
		say "     Moving over to Denise's nest, with every intention of getting fucked by her, you moan as you can feel your body heat up, and your pussy clench in need. Discarding clothes and gear as you go along, you're soon standing completely naked next to Denise's refuge. The presence of the virile gryphon herm nearby makes you feel incredibly horny and slutty as you rub your hands over your own naked body. Denise notices your predicament almost immediately, and you can see her shared arousal as she comes over to you, running her tongue along the edges of her flexible beak. Though as tempting as having her lick you might be, your eyes are inevitably drawn to the thick gryphon cock poking out of the sheath between her leonine legs. Often more or less forgotten by the gryphoness, as she still has a female gender identity - no matter what her form. Still, the proud shaft is more than ready to be awoken by your hand reaching out for it, then rubbing the half-hard shaft and cupping Denise's full balls.";
		say "     It doesn't take much more than a that touch and a bit of groping, together with your need-filled scent, and your gryphon companion is ready to fuck someone, hard. The sudden flare-up of her masculine urges overwhelms Denise and on almost pure instinct, she reaches out, wasting no time in moving around you and softly pushing you down onto all fours. Realizing what she has in mind, you can feel yourself growing even wetter, then lift your rear up for her. The handsome gryphon herm gladly takes your eager invitation and she fills your needy body up with her wonderful rod, the feel of her cock splitting you open and making you cry out in pleasure. Soon you are panting and begging for her to breed you like an animal, your fingers trying to hold on to the floor with each thrust of her thick cock into your tight passage.";
		say "     Panting and moaning just as eagerly as you are, it doesn[']t take long for the gryphon stud behind you to give you what your body so urgently needs, and you cry out in pleasure as Denise fills your heat filled womb with her seed. Eventually she softens and pulls out of your body, leaving you there kneeling on all fours on the ground with your head lowered as you try to recover your wits, something about the situation and your submissive positioning making you feel happy and content like a good little breeding bitch for a proud gryphon should be...";
		say "     [ovichance]";

instead of going up from Grey Abbey Library while (Denise is in Grey Abbey 2F and lust of gryphoness > 0 and lust of gryphoness < 16 and knowpreg of gryphoness is 0):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: DENISE PREGNANCY SPOTTING [line break]";
	say "     As you come up the stairs, you look over at Denise and notice that her belly's starting to swell rounder. She smiles happily at you, running her paws over her growing pregnancy. It seems you successfully knocked her up recently.";
	now knowpreg of gryphoness is 1;

instead of going up from Grey Abbey Library while (Denise is in Grey Abbey 2F and the remainder after dividing libido of gryphoness by 4 is 3): [Denise is present and had a birth with the player being absent]
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: DENISE POST-BIRTH WALKIN [line break]";
	now tempnum is the remainder after dividing libido of gryphoness by 4;
	let T be ( libido of gryphoness / 4 );
	increase libido of gryphoness by 1;
	if T is 0: [first kid]
		increase weapon damage of gryphoness by 1;
		if knowpreg of gryphoness is 1:
			say "     As you come up the stairs, you look over at Denise and can't help but notice that her pregnant belly is gone. Back to her more slender self, she does have a larger pair of breasts. They are filled with milk for the cute gryphlet you see climb up from between the pillows of her nest a moment later. Denise and the little one come running up to you right away, joining all three of you in a hug. Your herm gryphon child is a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
		otherwise if knowpreg of gryphoness is 0:
			say "     As you come up the stairs, you look over at Denise and see her pat something between the many pillows of her nest. Hmm... did her breasts get a bit larger, you wonder, unsure if your eyes are deceiving you. Then suddenly, things become rather obvious as the cute gryphlet she cuddled climbs up into sight a moment later. It seems you knocked up the gryphoness and she went through her pregnancy and had her child in the short time you two were separated.";
			say "     When they notice you, Denise and the little one come running up to you right away, joining all three of you in a hug. Your herm gryphon child is a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
	otherwise if T is 1: [already got one kid]
		increase weapon damage of gryphoness by 1;
		if knowpreg of gryphoness is 1:
			say "     As you come up the stairs, you look over at Denise and can't help but notice that her pregnant belly is gone. Back to her more slender self, she does have a larger pair of breasts. They are filled with milk for the cute gryphlet you see climb up from between the pillows of her nest a moment later, soon to be followed by her older sibiling. Denise and the little ones come running up to you right away, joining all four of you in a hug. The new child looks much like her sibling did at that age, a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
		otherwise if knowpreg of gryphoness is 0:
			say "     As you come up the stairs, you look over at Denise and see her pat something between the many pillows of her nest. Hmm... did her breasts get a bit larger, you wonder, unsure if your eyes are deceiving you. Then suddenly, things become rather obvious as the cute gryphlet she cuddled climbs up into sight a moment later, soon followed by her older sibling peeking out of the nest too. It seems you knocked up the gryphoness and she went through her pregnancy and had her child in the short time you two were separated.";
			say "     When they notice you, Denise and the little one come running up to you right away, joining all four of you in a hug. The new child looks much like her sibling did at that age, a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
	otherwise if T >= 2: [got two or more kids]
		increase dexterity of gryphoness by 1;
		if knowpreg of gryphoness is 1:
			say "     As you come up the stairs, you look over at Denise and can't help but notice that her pregnant belly is gone. Back to her more slender self, she does have a larger pair of breasts. They are filled with milk for the cute gryphlet you see climb up from between the pillows of her nest a moment later, soon to be followed by her two older sibilings. Denise and the little ones come running up to you right away, joining all five of you in a hug. The new child looks much like her siblings did at that age, a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
			say "     Your little family reuinion goes on for several more moments, then the eldest sibling, by now almost fully grown to adulthood, decides to use the moment to announce that she's moving out. With another snuggle and nuzzle for all her gathered family members, the gryphon heads off into the city, using an open window to launch herself into the air. Denise calls after her, wishing her all the best in finding her fortune and a loving mate of her own.";
		otherwise if knowpreg of gryphoness is 0:
			say "     As you come up the stairs, you look over at Denise and see her pat something between the many pillows of her nest. Hmm... did her breasts get a bit larger, you wonder, unsure if your eyes are deceiving you. Then suddenly, things become rather obvious as the cute gryphlet she cuddled climbs up into sight a moment later, soon followed by her older siblings peeking out of the nest too. It seems you knocked up the gryphoness and she went through her pregnancy and had her child in the short time you two were separated.";
			say "     When they notice you, Denise and the little one come running up to you right away, joining all four of you in a hug. The new child looks much like her sibling did at that age, a cute version of Denise in miniature, with blue feathers and golden fur. She has a pretty face and a happy smile, just like her mother. You can't help but feel happy and proud at the sight of her.";
			say "     Your little family reuinion goes on for several more moments, then the eldest sibling, by now almost fully grown to adulthood, decides to use the moment to announce that she's moving out. With another snuggle and nuzzle for all her gathered family members, the gryphon heads off into the city, using an open window to launch herself into the air. Denise calls after her, wishing her all the best in finding her fortune and a loving mate of her own.";
	increase morale of player by 2;
	increase libido of gryphoness by 1; [tempnum increase from 3 to 4=0 - no second absentee birth message after this]
	now knowpreg of gryphoness is 0; [preg reset]
	

Denise ends here.

