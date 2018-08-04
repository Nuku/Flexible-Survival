Version 1 of Darius by Wahn begins here.
[Version 1 - New Character]


Section 1 - Events

after going to Darius's Crib while (HP of Darius is 0 and Darius is in Darius's Crib):
	say "     Entering the apartment, you are greeted by an anthro dalmatian, who grins broadly as he sees you. 'Hey there, I'm Darius. Want a fix? I got some primo stuff laid out over here.'";
	now HP of Darius is 1; [player knows his name]

after going to Entrance to the Red Light District while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	say "     Arriving at the street corner, you see an anthro dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Oi there! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the though guy attitute of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]

instead of navigating Entrance to the Red Light District while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	say "[NavCheck Entrance to the Red Light District]";
	if NavCheckReturn is false, stop the action;
	move player to Entrance to the Red Light District;
	say "     Arriving at the street corner, you see an anthro dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Oi there! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the though guy attitute of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]	

Joe Tales 1 is a situation.
The sarea of Joe Tales 1 is "Nowhere".

after going to Darius's Crib while (Joe Tales 1 is not resolved and a random chance of 1 in 3 succeeds and HP of Darius > 0):
	say "     As you enter the short hallway to Darius's dingy apartment, you hear voices from ahead. Peeking into the room, it becomes clear that the dalmatian has another visitor right now. A towering doberman is standing next to Darius, sporting a ripped physique with a V shaped torso. He is dressed in little but a bandanna around his neck and a flimsy pair of shorts with a broad belt at the top. The outline of his weighty cock is very clearly visible through the fabric. Both canines are holding bottles of beer in their hands. As Darius's visitor takes a swallow from his, barks from what sounds like puppies come from the apartment next door, through the hole that has been knocked into the connecting wall. 'Man, you're one lucky dude Dar. Just grabbing yourself a bitch right from the street and having all the tail you need at home, all the time.' The spotted canine laughs and grins at his buddy, 'What can I say Tyke, you just gotta know how to pick em. Hannah is a great bitch, even if she started out as a dude. But not for long once she felt my dick of course.'";
	say "      The doberman's eyes go wide and he makes a choking sound as his beer goes the wrong way, then coughs and gapes at Darius. 'You lucky dog! So she just switched to a babe right away? I'm still not used to how things work these days. Or maybe they don't do so for everyone. Bitches haven't been all that plentiful for myself I have to say.' Tyke is silent for a few seconds, then adds, 'For example, when things were just starting out with all this shit, an Asian dude crossed my path one morning. I thought I'd just threaten him a little bit and get his money, try out my new bod, but nope, even though he was just a human, he threw down and we tussled. Had crazy moves and all that shit, that guy. And the weirdest part was - he kept rubbing my junk as he passed me. Then he kicked my paws out from under me and before I know it, the freaky faggot was ramming his ass down my dick!'";
	WaitLineBreak;
	say "     Tyke grumbles as Darius lets out a full-throated laugh and murmurs, 'Yeah yeah, you're lucky we're friends. What am I supposed to do if most people I run into a flaming faggots who just want to ride my cock? I'm not gay or anything, but some of them admittedly do have some sweet holes on them.' A visible twitch goes through the cock barely contained by Tyke's shorts, prompting Darius to comment, 'Seriously? Chubbing up for the love of your life?' The dobie gives him a punch in the shoulder and replies, 'Oh please! Just saying that the dude had a tight ass that really milked my cock. And a huge ego too - 'Joe Arashi wins again!' he shouted, raising his arms and posing as if people were taking photos of him bouncing on my cock and being blasted full of nut-milk. Bastard splattered me with his come too, then pulled off my dick and just strutted away.'";
	say "     Darius looks at the other canine thoughtfully and smirks. 'Wait, he just stayed human? Man, I think you're shooting blanks or something. Hannah turned right before my eyes in just a few moments. And you know that she's a fully working bitch. I've got enough puppies to prove it.' The large doberman replies, 'Nope, that's not it. I left my share of dobie converts out there over the last little while.' 'Yeah, all dudes who sucked you off I bet,' Darius bursts out in amusement. 'Okay, fuck this. I'll go find myself a bitch right now! Can't call me a fag if I drag a preggers puppy machine here, can you?!' Tyke scoffs and grumbles at his buddy, then stomps out of the apartment, passing you without a glance and throwing the front door shut behind him as he leaves.";
	now Joe Tales 1 is resolved;


Section 2 - NPC

Darius is a man.
The description of Darius is "[DariusDesc]".
The conversation of Darius is { "<This is nothing but a placeholder!>" }.
The scent of Darius is "     Leaning forward to get a sniff of Darius, you find yourself grabbed by the back of your head and pulled in against his chest, burying your nose between the bulging pecs on the tall canine. He chuckles as you can't help but sniff his masculine aroma, with the slight scent of his sweat made oh so very tempting by pheromones that tell you that this is a top dog.".

to say DariusDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Darius] <- DEBUG[line break]";
	say "     Darius is a proud specimen of an anthro canine, tall and well-built with broad shoulders and a muscled torso. The man clearly knows this quite well, as he happily shows off by keeping his chest bare, a baggy pair of jeans the only article of fabric on his body. Aware of the fact that you're checking him out, he even flexes a little, making the firm bulges of his pecs and bicep twitch suggestively while grinning broadly. Then he lets a hand wander up to his neck, casually stroking along the heavy gold chain he wears, as if to boast that he can afford such accessories.";

an everyturn rule:
	if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
		if player is in Darius's Crib and Darius is in Darius's Crib:
			say "     'Getting kinda late,' the dalmatian drug dealer says with a glance at a wall clock, then shoos you out of his apartment. 'Come back tomorrow if you want anything,' he says to you, then pushes the apartment building's front door shut behind you. The lock is still busted, so you could just walk back in, but no doubt Darius will take the time to pack away all his goods before he enjoys himself with his bitches.";
			wait for any key;
			move player to Boundary Street East;
		now Darius is nowhere;
	[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Darius sleeps]
	[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Darius sleeps in]
	else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
		if player is in Darius's Crib:
			say "     Walking into the room through the broken wall of the apartment next door, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			move Darius to Darius's Crib;
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		if player is in Darius's Crib:
			say "     The muscular dalmatian strolls into the kitchen and grabs a can-opener from a drawer, then explains, 'Gotta feed Hannah and my other little bitches.' With a grin on his face, he vanishes through the hole in the wall into the apartment next door, returning a little while later with a big can of [one of]ravioli[or]pineapple[or]peaches[or]beans[or]breakfast meat[or]sausages[or]apple sauce[at random] for himself. Grabbing some plastic cutlery from an industrial sized pack of it, the anthro canine hungrily chows down, eventually throwing the remnants of his meal into a large trashcan and belching in satisfaction.";
	else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
		if player is in Darius's Crib:
			say "     Grabbing a porno mag from a pile in one of his shelves, Darius casually saunters over to his couch and sits back on it, paging through his entertainment and jerking off in an unhurried pace. He doesn't seem to care that you're right there in the room with him and just goes to town, right until the eventual messy finish that adds some more stains to the throw rug in front of the couch.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		if player is in Darius's Crib:
			say "     'I'm gonna go out for a while,' Darius calls over towards the hole into the next apartment and gets some barks in reply. Then he turns to you and shoos you out of his place of business, pushing the apartment building's front door shut behind you. The lock is still busted, so you could just walk back in, but not before Darius packs his goods away. A short while later, he comes out and walks down the street.";
			wait for any key;
			move player to Boundary Street East;
		else if player is in Entrance to the Red Light District:
			if HP of Darius is 0: [never seen before]
				say "     An anthro dalmatian comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. 'Oi there! I'm Darius,' he calls out to you in greeting, unconcerned about any hostile intent on your part. Looking at the though guy attitute of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
				now HP of Darius is 1;
			else:
				say "     Darius comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. The anthro dalmatian looks unconcerned about any creatures that might come along and get any ideas for him. Looking at the though guy attitute of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
		move Darius to Entrance to the Red Light District;
	else if TimekeepingVar is 2 or TimekeepingVar is -6:
		if HP of Darius is 0: [never seen before]
			if player is in Darius's Crib:
				say "     Coming into this place from outside, an anthro dalmatian grins broadly as he finds you waiting for him. 'Hey there, I'm Darius. Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if player is in Boundary Street East:
				say "     An anthro dalmatian comes strolling down the street from the west in an unhurried tempo, then stops for a second to say, 'Hey there, I'm Darius. You look like you could use some of my goods. Wanna come in and buy something?' He doesn't wait for a reply and simply enters an apartment building in the southeast, leaving you to decide if you want to follow after him.";
			else if player is in Entrance to the Red Light District:
				say "     Darius pushes himself off the wall he was leaning against and walks off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
			now HP of Darius is 1;
		else:
			if player is in Darius's Crib:
				say "     Coming into his place from outside, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if player is in Boundary Street East:
				say "     Darius comes strolling down the street from the west in an unhurried tempo, then enters his apartment building in the southeast, giving you a casual nod as he passes you.";
			else if player is in Entrance to the Red Light District:
				say "     Darius pushes himself off the wall he was leaning against and walks off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
		move Darius to Darius's Crib;

Section 3 - Conversation

instead of conversing the Darius:
	say "[DariusTalkMenu]";

to say DariusTalkMenu:
	LineBreak;
	say "     What do you want to talk about with Darius?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 1;
	now description entry is "Make Darius tell you about his background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about the red light district";
	now sortorder entry is 2;
	now description entry is "Make Darius tell you about the area";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about what he sells";
	now sortorder entry is 3;
	now description entry is "Get some info on the drugs Darius got on offer";
	[]	
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
				now sextablerun is 1;
				if (nam is "Ask him about himself"):
					say "[DariusTalk1]";
				else if (nam is "Talk about the red light district"):
					say "[DariusTalk2]";
				else if (nam is "Ask about what he sells"):
					say "[DariusTalk3]";
				wait for any key;
				say "[DariusTalkMenu]";
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the muscular dalmatian, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say DariusTalk1: [himself]
	say "     Darius shrugs as you ask him about himself. 'No big story to tell, really. I'm a black dude from the hood. Been doing fairly well before all this shit started. Solid customer base, right stuff to sell. Of course, half the fuckers vanished early in the outbreak, turned into who knows what, and the supply dried up. But there are new goods to have too, and some of it is some primo shit! You should have a look at my inventory sometime too.' Nodding to him, you chat a little longer, then turn your attention back to the matter of survival in this fallen city.";

to say DariusTalk2: [red light distrct]
	say "     Darius shrugs as you ask him about the red light district. 'Nothing much to say, dawg. This is my neighbourhood, been living in the area all my life. Things have always been rather wild hereabouts. More so now, with people actually having fur and showing their claws and teeth. But don't you think it was all sunshine and rainbows before. It always was a place where the strong and tough survive and get to the top.'";

to say DariusTalk3: [drugs]
	say "     As you quietly ask him about the stuff he sells, Darius grins at you and says, 'The regular kinds of pick-me-ups are kinda hard to get, what with the chaos and the quarantine, but I can offer you all new products. Great stuff, definitively. You'll be surprised what people can cook up out of some of the things that grow or wander the streets these days. [']Bliss['] will really get your blood boiling, and the [']PowerUp['] tablets make you feel like you're a rhino or something. As for the baggies of [']Pixie Dust['] - they're not for snorting, no. Actual magic I got from a special little dude. Or not so little, if he wants to be. That's the effect the dust has.'";

Section 4 - Fucking

instead of fucking the Darius:
	say "[SexWithDarius]";

to say SexWithDarius:
	if (lastfuck of Darius - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Yo bitch, don't get greedy. I'm saving some of this spunk for Hannah, by breeding bitch,' the dalmatian barks out amusedly. Then he turns away from you, not really interested in sex right now.";
	else: [ready for sex]
		say "     As you walk up to Darius, calmly crosses his arms in front of his chest and smirks. 'So, couldn't resist the chance to be with a real man for a change, eh?'";
		wait for any key;
		say "[DariusSexMenu]";

to say DariusSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Darius off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Present yourself for fucking";
	now sortorder entry is 2;
	now description entry is "Ask him to give you some love with his red rocket";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 3;
		now description entry is "Tell the dalmatian you wanna ride his ass";
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
				now sextablerun is 1;
				if (nam is "Offer a BJ"):
					say "[DariusSex1]";
				if (nam is "Present yourself for fucking"):
					say "[DariusSex2]";
				if (nam is "Ask to fuck him"):
					say "[DariusSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the muscular dalmatian, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say DariusSex1: [oral]
	if player is female: [female + herm]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'Wanna wrap your lips around this thick piece of meat, babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to worship me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius steps up before you can even think of replying, sliding his arm around your chest to pull you into a demanding kiss. His tongue explores your mouth while he keeps you tightly pressed against his chest and grinds his erection lightly against your thigh. 'Wanna get started on it, sweetcheeks?' Darius adds after a little while, nodding down to the throbbing shaft between the two of you, its pointed tip already dripping beads of pre-cum. You follow his suggestion, guided down to your knees by a hand on your shoulder. Seen at eye-level, the drug dealer's prick is quite a weighty piece of man-meat, and the full orbs of his balls tempt you into cupping them, followed by some gentle fondling.";
		WaitLineBreak;
		say "     'Yeaahhh! Just like that!' the large male grunts in satisfaction as you lean in to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, not really pushing you to anything (yet?), but definitively giving some light encouragement to keep working on his cock. Wrapping your fingers around his shaft makes quite sure that you have his full attention, and you stroke up and down slowly, drawing a content moan from your horny partner. Glancing up, you meet the eyes of the dalmatian and see him pant in lustful heat, enjoying your touch. His muzzle opens for a deeper grunt as you then slip your lips over the tip of his cock and start sucking, together with pumps along his length by your hand. He is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that Darius enjoys himself quite a bit.";
		say "     The dominant male leaves you to worship his dick at your own pace for a while, but eventually you feel his hand wander down from the top of your head to cupping its back, giving him a more secure grip. He starts to push you deeper onto his long schlong, murmuring under his breath how great your lips feel. Darius goes further with every new push into your mouth, inching his way down the length of his cock until finally, your nose is buried in the fur of his crotch and his cock in the tight confines of your throat. He holds you tight against his crotch for a second, then allows you to pull back and take a breath, followed by another go. Sliding in and out, the spotted canine all too soon abandons such niceties, as his libido rises to higher and higher levels and the need to fuck supplants any other.";
		WaitLineBreak;
		say "     'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, revelling in the sensation of being deep-throated by a receptive female. The tenor of his voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		WaitLineBreak;
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Sorry babe, I guess I got a little carried away at the end.' Seems like that's the only apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	else: [male + neuter]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'You're just a typical cock-gobbling fag, aren't you? Damn man-whores just can't resist this mighty prick!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'Fine by me. On your knees, fucker!' With that said, the big man clamps both of his hands on your shoulders and shoves you down into a submissive position before him. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you find yourself face to face with Darius's furry crotch. Weighty balls with irregular black spots on them swing before your eyes as the man shoves his jeans the rest of the way down, then kicks them off.";
		say "     The anthro dog's many canine teeth show in an impressive line-up as he gives you a human-like grin, then grabs the top of your head and shoves you against his crotch and the cock-head just pushing out from his sheath. With Darius's tight grip not giving you much choice of the matter, your face is rubbed up and down against his manhood. You find your nose buried against the hairy sack of his balls most of the time, breathing in the masculine musk of the aggressive male. 'Open up you lil['] fag,' he growls demandingly at you and pulls your head back, then smacks the by now fully erect cock against your forehead. From there, it leaves a trail of pre-cum down as he brushes his dickhead over your skin in a show of dominance. The pointy tip of the canine shaft wanders down between your eyes, then along one side of your nose and finally arrives at your lips, bringing with it the first taste of his pre.";
		WaitLineBreak;
		say "     It doesn't really matter why you open your mouth - to reply, or simply to obey the horny dog - Darius shoves his hard prick between your lips right away as you do, barking in satisfaction as he buries his bone in a warm and tight cave. Shifting his grip so that your head is clamped between two strong-fingered paws, the large canine proceeds to fuck your mouth in a rapid tempo, mercilessly pounding in and out and with his balls slapping against your chin with every harsh thrust. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, revelling in the sensation of being deep-throated by a gay cock-sleeve.";
		say "     In fact, he only really lets you pull back when you are already beginning to see stars, reluctantly giving in to the weakening patter of your hands against his thighs and allowing for hasty gulps of air before he goes back to more rapid face-fucking. 'Yeah, that's right boy! Take my big dick!' he growls harshly as he makes use of you, the tenor of his voice soon gaining a definite air of urgency. His weighty balls smack against your face ever faster as the big male really takes out all the stops, then rams in all the way with a forceful thrust and starts to unload his balls down your throat. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		WaitLineBreak;
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Got a nice fuckhole, faggot! So much that I got a bit carried away, hah. Whoops, I guess.' Seems like that's the only hint of apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	now lastfuck of Darius is turns;

to say DariusSex2: [ask to be fucked]
	setmonster "Dalmatian";
	if player is female: [female + herm]
		say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'So you wanna feel my hard shaft all the way up there babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to milk my cock me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius lets himself fall back on his sofa, coming to sit in a broad-legged fashion that allows open access to his erection. 'Why don't you come here and give it a good lick, sweetcheeks?' the muscular canine calls out to you, nodding down to the throbbing shaft with its pointed tip already dripping beads of pre-cum. You quickly pull off what equipment and clothes you have, dropping it all on your way over to the waiting male. As you get on your knees and see it at eye level, the drug dealer's prick stands straight and erect waiting for you, and you can't help but want to touch it. Fingers wandering over the weighty piece of man-meat and the furry orbs of his balls, you cup and fondle the large man eagerly.";
		WaitLineBreak;
		say "     Leaning forward a little, Darius hooks a paw-hand behind your head and pulls you towards his crotch a gentle but firm pressure until your nose bumps into his erection. 'Yeaahhh! Just like that!' the large male grunts in satisfaction as you obediently start to slide to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, encouraging you to keep lapping at his manhood and getting it nice and wet with spit. Darius enjoys being serviced by you for a little while, then eventually slides his hands under your armpits pulling up up and towards him. Halfway on top of the sitting male, you're drawn into a hungry bout of making out with him, with the canine's long tongue exploring your mouth eagerly. Meanwhile, his hands touch and stoke your body, until you find yourself lifted and held aloft by strong arms, which then spread your legs as Darius lowers your crotch towards his.";
		say "     The dominant male grins broadly as his erect shaft bumps the naked skin of your inner thighs, followed by sliding along towards the by now drippingly wet gash of your pussy. 'Take it, baby!' Darius grunts in satsfaction as his manhood nudges your nether lips apart, then slides right in as he pulls you down on the cock. The canine shaft is hot and hard, rubbing some very sensitive spots and driving you wild as the horny drug dealer fills you to the brim. 'Ride me!' comes Darius's next command and he bounces you on his lap, making you gasp at the sensation of him moving inside you. After that taste of feeling his thick prick, you can't help but keep pumping your hips up and down all of your own, eager to be fucked by him.";
		WaitLineBreak;
		say "     With a grunt of satisfaction, Darius leans back on his couch and interlaces his fingers behind his head, perfectly happy to let you do all the work. Not that you're complaining, as you're well-filled by his large doggie cock no matter what, feeling its sides rub and stretch your inner walls. 'Not bad, you sexy bitch, but how about you flex that pussy around my cock a little? Work those muscles!' One of his hands reaches out to grip the side of your body, stroking it encouragingly as he keeps your eyes locked to his with a demanding stare. Wanting to please the large male, you tighten your muscles and do your best to milk his dick inside your pussy, which earns you a satisfied growl from Darius. 'Fucking ace! That's more like it! Work that pussy baby!' The dalmatian is enjoying himself quite a bit now, and before long, you can feel the base of his cock start to swell, the beginning of a typical canine knot.";
		say "     Not at all one to take things slow - or ask permission - Darius thrusts his hips up hard a second later while pulling down on your hips with both his hands on your hips. You can't help but let out a startled yelp as he pops his knot into your pussy with that single savage shove. The pain of his entrance is quickly outweighed by the amazing sensation of fullness and his still growing bulge stretching your inner walls around itself. Of course this doesn't mean that he is content with simply putting it in, and the powerful male grinds his hips against you, his dickhead bumping your deepest insides while the knot tugs against your pucker from the inside every time he pulls back even just minutely. After a few more deeply penetrating thrusts, Darius lets out an urgent bark and hammers into with all his might one last time, then his cock starts to erupt into you. Spurt after spurt of rich canine seed is shot deep into your insides, its countless little swimmers starting their search for an egg to merge with.";
		WaitLineBreak;
		say "     Grunting and panting in lust, Darius's whole body trembles and twitches with every further shot of cum that that he is depositing deep inside you, happily breeding your already filled womb. When he eventually winds down a little from the lengthy and quite volumnious orgasm, the dalmatian puts his hand on your stomach and gives it a gentle rub. ";
		if player is impreg_now: [player is already pregnant]
			say "'Too bad you're already having some buns in the oven, babe. I'd really love to add a few pups to the count. Be sure to come back to me when it's time to start a new litter!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of fucking off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		else:
			say "'Let's hope it takes, babe. I'wanna see you swollen with my pups! To be really sure, you'll just have to come back fore more! Gonna put a litter in you for sure!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of fucking off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		say "[fimpregchance]";
		if player is male: [herms]
			say "     'Oh. Yeah...' he murmurs someshat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples but completely ignoring the erect cock of your own shaft. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the finall distance to where you want to go, and soon you can feel yourself getting quite close. 'I don't mind a girl with some extra, but you better not cum on me!' the dalmatian warns you and waits for you to grasp your cock and aim it to the side before he goes on to rub your pleasure-button with his thumb. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur and splattering the couch next to Darius with your own cum.";
		else:
			say "     'Oh. Yeah...' he murmurs someshat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples[if player is male] but completely ignoring the erect cock of your own shaft[end if]. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the finall distance to where you want to go, and soon you can feel yourself getting quite close. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur.";
	else:
		say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'You're just a typical cock-hungry fag, aren't you? Damn man-whore, what makes you think I'd dirty my cock by sticking it up your ass?' Shaking his head with a scrunched-up nose, the dalmatian is about to turn away when you bring up that he doesn't actually have to stick it [italic type]in[roman type] your ass to have some fun. He could just fuck the crack of your ass, kinda similar to a titjob. Raising one eyebrow and giving you an amused look, Darius replies, 'Yo fuckhole, you really are desperate to feel a real man against your body, ain't that right? Fine, I'll fuck your whiny ass! You better be clean down there, or we'll have some words.' Eager to get it on with the dominant dog, you [SelfStripCrotch], then turn around and demonstratively spread your cheeks for Darius.";
		say "     The dalmatian sniffs the air in your direction and then grunts, 'You'll do, slut!' Right after that, he gives your ass a meaty slap and calls out, 'On your knees, faggot!' As you get down on the stained throw-rug in front of Darius's couch, feeling the spots of dried cum in the fabric against your naked skin, the drug dealer moves up close behind you. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you see his jeans fly to the side, kicked off by the powerful male. Something warm and firm touches the top of your shoulder a second later: the anthro dog's dick, with a reddish skin color and pointy tip. He casually grinds against your upper body for a moment, including rubbing his weighty balls against the back of your shoulder, then soon gives you a shove that sends you falling forward, catching yourself on all fours.";
		WaitLineBreak;
		say "     Darius is on top of you before you really have a chance to react, one of his strong hands pushing down on the middle of your back. Face-planting on the carpet, you find your cheek pressed into it[if player is submissive] and your arousal soaring as the canine man puts you down like the submissive slut you are[else] and some annoyance at the harsh treatment rise in you[end if]. Your eyes are still trying to focus on the peanut (or is it a pistachio?) lying just at the end of your nose when you feeel Darius's breath against your ear. 'You asked for it, bitch boy! Now stay like that! Present your fuckhole like any good slut would, or I'll kick you out on the street naked!' Chuckling and licking your cheek in a possessive way, Darius then pushes himself up while bracing on your back, then takes his hand away. Even though you're no longer forced into position, you stay as you are, waiting for what the dominant male will do with you.";
		say "     'Shake that booty!' he commands, and you obey, earning you a laugh from the dalmatian. His erection gets slapped against both your buttocks, switching up between them several times, then finally slots into place right between them, resting hotly in the crack of your ass. You can feel it leaking pre-cum on the small of your back, then your asscrack itself as Darius pulls backwards and liberally rubs his fluids over your skin with his dickhead. Soon, his strong hands grasp the sides of your hips and the dalmatian begins to thrust back and forth in the now well-lubed groove of your butt. 'You don't feel half bad, for a faggotty buttslut,' Darius tells you with a grunt in between the pants and lusty growls he makes as he grinds into you. He clearly is enjoying himself quite a bit if the dripping mess he's making of your behind is any indication. That doggy cock is leaking a lot of pre!";
		WaitLineBreak;
		say "     In between the regular humping, Darius also loves to really slam into your ass from time to time, a move that would have driven him balls deep if he had actually been fucking your hole. Now, there still is a satisfying slap as his crotch and swinging balls meet your buttocks, but the main effect his thrust has on you is that it pushes you a little across the carpet every time, since you can't really brace yourself in the [']ass up, head down['] position you're in. This goes so far that you eventually find yourself bumping against the front of the drug dealer's old couch, with it finally stopping you from getting any more rug-burn than you already have. Darius doesn't seem to care much either way, a short glimpse over your shoulder reveals that he's panting heavily as he humps your ass, eyes closed as he imagines one hot bitch or other.";
		say "     The grunts of the muscular canine do take on a bit of additional urgency as he continues to grind into your crack, interspersed with muttered words along the lines of, 'Yeah baby! Take it! Fucking hot bitch! You like the feel of my cock, don'tcha!' Soon after, things come to an explosive creshendo when Darius fingers clamp extra tight on your hips and he hammers against your ass with even greater force and his cock explodes with a geyser of cum! A heavy splurt hits the back of your head and you can feel his knot swell up between your buttocks. It rubs the sides of your asscrack with its rounded curve as Darius continues to cum, all over your back, head and even the side of the couch. The grunting canine grips your shoulder tightly as he falls forward in the grasp of his orgasm, panting with each further shot of creamy seed that paints you white.";
		WaitLineBreak;
		say "     When Darius's orgasm eventually winds down, the dalmatian looks down at you and comments, 'Damn, what a mess. Gotta admit that you were more fun than I'd thought, fag. That ass of yours felt like a really juicy pair of tits on my shaft.' Chuckling, he stands up and takes a few steps to the side to pick up his jeans. As Darius shakes it out and prepares to get dressed, he throws you a short glance and adds, 'Hey, you should wipe yourself off, or rub it in, or whatever you freaks do. Can't have a filthy man-slut stretched out in the middle of my place. Got a rep to maintain, ya see?' With that said, he looks away, not really interested in your naked form now that he's gotten his rocks off.";
	now lastfuck of Darius is turns;

to say DariusSex3: [ask to fuck him]
	say "     As you step up to the large canine and say that you want to fuck him, Darius bursts out with an amused chuckle and shakes his head in disbelief. 'Are you tripping on something, dude? I don't swing that way! Even if I did, I wouldn't just lift my tail for any horny bastard waltzing in here.' Waving his hand dismissively at you, he gives you an unimpressed stare, then raises one eyebrow. 'So, what now? I want some action, slut! And don't embarrass yourself with stupid offers again.'";



Darius ends here.