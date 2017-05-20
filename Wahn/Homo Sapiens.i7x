Version 1 of Homo Sapiens by Wahn begins here.
[Version 0.1 - new creature]

"Adds a primitive Homo Sapiens to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Homo Sapiens" } to infections of guy;

to say losetoHomoSapiens:
	if hp of player > 0: [player submits]
		say "     As you stop fighting and lower your hands, the young tribesman gives you a suspicious look, still holding his spear tightly as his eyes wander up and down over you, then look into yours. A moment later, he murmurs something in his own language, followed by the word 'Stay' in English - something he must have picked up, or be remembering from his old life before the nanites. Finally convinced that you really have given in, the athletic man leans his spear against a wall where it'll be ready for him to snatch up in a moment's notice, then steps up to inspect you closely.";
	otherwise: [player beaten]
		say "     As you collapse at his feet, the young tribesman gives you a suspicious look, still holding his spear tightly as his eyes wander up and down over you, then look into yours. A moment later, he murmurs something in his own language, followed by the word 'Stay' in English - something he must have picked up, or be remembering from his old life before the nanites. Finally convinced that you're not just trying to trick him, the athletic man leans his spear against a wall where it'll be ready for him to snatch up in a moment's notice, then steps up to inspect you closely.";
	if carried of food > 0:
		say "     Patting you down and rifling through your backpack, he's happy to find some food, which is quickly stuffed into his own bag. ";
		decrease carried of food by 1;
	otherwise:
		if carried of water bottle > 0:
			say "     Patting you down and rifling through your backpack, he's happy to find a bottle of clean water, which is quickly stuffed into his own bag. ";
			decrease carried of water bottle by 1;
		otherwise:
			say "     He grumbles a little as you neither have clean water or food on you, then drops your backpack on the ground. ";
	say "After finishing to search for spoils, the primitive tribesman turns his attention to you yourself, and the feeling of being undressed with his eyes quickly leads over to you being undressed by his hands, as the man decides he wants a closer look. Piece by piece, your clothing is pulled off and casually dropped, with his hands feeling you up, stroking your body and curves. Your captor's breathing starts to come a bit quicker as he likes what he sees, until eventually the last covering of your crotch falls away, leaving you completely naked before him.";
	WaitLineBreak;
	if cocks of player > 0:
		say "     Eying your crotch with interest, the young man reaches down to cup your balls, gently rolling them between his fingers for a moment, then sliding his hand up and down over your cock. He gives an appreciative comment in a husky voice and pinches one of your nipples, then gestures at the pile of your clothing on the floor. You're not quite sure what he wants for a moment, then he reaches around and gives your ass a tight squeeze before starting to undo his own clothes. There is a visible bulge in his pants that tells you this prehistoric stud wants to take your butt for a ride. Well, 'to the victor the spoils' - comes the old saying into your head seemingly all of its own, and you kneel down then get on all fours, ass raised for your captor.";
		say "     From your position on the ground, you look over your shoulder to watch the young tribesman strip, revealing his sun-bronzed skin and an athletic, lithely muscled body. Not as 'showy' as a bodybuilder, but there's definitively something to be said about his naturally fit look. An aroused expression comes over his face as he looks down at you and one hand quickly moves to his crotch to stroke a well-sized, uncut cock. A moment later, the handsome guy steps up behind you and crouches down, putting both hands on your buttcheeks. You feel your buttocks being spread, followed by the tribesman's warm breath against your skin. Then he can be heard gathering spit and lets it drip on your hole, to be rubbed in by his questing fingers - relaxing you a little before he pushes one of them inside. His digit slides deeper and deeper, probing around a bit before honing in on your prostate and rubbing against it.";
		WaitLineBreak;
		say "     You shudder in lust as the young man pushes your magic button, lowering your head and panting with closed eyes as you revel in each brush against your insides. Then suddenly, his finger is gone again and the tribesman's tongue pushes at your back door, lapping over it and poking in, all the while he adds more spit to get you as slick as possible. Hah, seems like this is one caveman who knows his way around with preparing an ass - he'd have to, coming from an era long, long before proper lube was invented. You tremble and shiver in pleasure at his ministrations for a few minutes more, then he stretches himself to cover your back and whispers some words you don't understand into your ear.";
		say "     But then, you don't really have to understand what he says - as the hot touch you feel against your pucker surely is not one of his fingers. With a lusty grunt, your captor pushes forward, sinking into the relaxed passage with his hard pole. Both of you pant and moan in unison as he slides deeper into you, stretching your insides around his well-sized cock and bumping very sensitive spots on the way. As he bottoms out, there is a very satisfied exclamation by your newest sexual partner, and he runs a hand down your front, gripping your own erection to jerk it as he starts to thrust. Seems like while this tough-guy caveman may be ready to fight you and steal (some) of your stuff, he's also decent enough to give you a reacharound.";
		WaitLineBreak;
		say "     With a thick cock sliding in and out of your ass and the caveman's balls slapping your ass in steadily increasing tempo, you have to admit to yourself that you don't mind losing to this man all that much. He certainly knows how to properly fuck someone - and jerk them off, as his hand on your shaft feels simply amazing. Hard thrusts against your raised ass and him moaning and grunting some sexy words, you pretty much forget that he took you by force and simply enjoy the moment. Sweaty, amazing sex with a prehistoric hunk - another thing you'd never have though possible before this whole nanite apocalypse began.";
		say "     Lust rises, then soars as the two of you grind against each other, and after you don't know how long of sexual bliss, the point of no return is finally reached. You gasp, then grunt deeply as your balls tingle and send forth their stored load in a frenzied rush, a first blast splashing over your cast-off clothes to soak into them, then another and another. As your asshole twitches and trembles around the invading cock balls-deep inside, it's no wonder that your partner is very close behind, shouting something unintelligible as he grinds against you and his manhood pulses, painting your insides white with his seed. You stay in that position as cum continues to spurt and flow, totally creaming your clothes and insides.[mimpregchance]";
		WaitLineBreak;
		say "     When things eventually wind down, you spend some more moments just like that, panting and leaning against each other, then the man pulls out of you and stands up. He says 'good' - seemingly one of the few English words he knows, then adds a few sentences in his own language while picking up his clothes and getting dressed. With a grin on his face, he waves goodbye to you, then stalks off deeper into the museum.";
	otherwise if cunts of player > 0:
		say "     Eying your crotch with interest, the young man reaches down to gently stroke over your slightly swollen nether lips, then pushes them apart a little and puts a finger at your opening. Sliding it inside, the tribesman rubs and fondles your pussy, searching out the most sensitive spots and lavishing them special attention. He gives an appreciative comment in a husky voice and pinches one of your nipples, then gestures at the pile of your clothing on the floor. It is not a big stretch to guess what he wants, especially as he pushes a second finger into you and uses them to stretch you a little, as if trying to prepare for pushing his hard cock into you. The visible bulge in his pants isn't a small one either, which tells you this prehistoric stud will likely be one hell of a ride. Well, 'to the victor the spoils' - comes the old saying into your head seemingly all of its own, and you crouch down, then lay back on the pile of clothes, legs spread for your captor.";
		say "     From your position on the ground, you watch the young tribesman strip, revealing his sun-bronzed skin and an athletic, lithely muscled body. Not as 'showy' as a bodybuilder, but there's definitively something to be said about his naturally fit look. An aroused expression comes over his face as he looks down at you and one hand quickly moves to his crotch to stroke a well-sized, uncut cock. A moment later, the handsome guy steps up to you and crouches down, reaching out with one hand to brush over your clit, the other slowly jerking his erection. You feel your pussy lips being spread as he then leans forward, getting down on all fours, followed by the tribesman's warm breath against your skin. He brings his head right between your legs and starts nibbling at your sensitive little clit while at the same time finger-fucking you, first with two, then three digits. Sliding deeper and deeper, he probes around in your love tunnel, then hones in to one especially sensitive spot and rubs against it.";
		WaitLineBreak;
		say "     You shudder in lust as the young man pushes your magic button, leaning back your head and panting with closed eyes as you revel in each brush against your insides. Then suddenly, his fingers are gone again and the tribesman's cockhead nudges your nether lips apart, sliding into you with the help of his female juices and your femcum as natural lube. You tremble and shiver in pleasure as he pushes more and more of the hard cock into your body. Soon, you feel the twin orbs of his balls pressing against your crotch as he bottoms out inside you. Stretching himself, the young man gives you an eager kiss on the mouth and whispers some words you don't understand into your ear.";
		say "     But then, you don't really have to understand - the throb of his prick inside you says it all. Pulling out most of the way, your captor proceeds to push forward again with a lusty grunt, sinking into the tight passage with his hard pole. Both of you pant and moan in unison as he thrusts deeper into you, stretching your insides around his well-sized cock and bumping very sensitive spots on the way. As his balls slap your crotch, there is a very satisfied exclamation by your newest sexual partner, and he runs a hand down your front, tweaking your nipples in appreciation before proceeding to caress your clit as he begins to fuck you with regular strokes. Seems like while this tough-guy caveman may be ready to fight you and steal (some) of your stuff, he's also a decent lover, taking care to make you enjoy the sex too.";
		WaitLineBreak;
		say "     With a thick cock sliding in and out of your moist pussy and the caveman's balls slapping your crotch in steadily increasing tempo, you have to admit to yourself that you don't mind losing to this man all that much. He certainly knows how to properly fuck someone - and stimulate them too, as his hand on your clit feels simply amazing. Hard thrusts against your raised ass and him moaning and grunting some sexy words, you pretty much forget that he took you by force and simply enjoy the moment. Sweaty, amazing sex with a prehistoric hunk - another thing you'd never have though possible before this whole nanite apocalypse began.";
		say "     Lust rises, then soars as the two of you grind against each other, and after you don't know how long of sexual bliss, the point of no return is finally reached. You gasp and moan as a pleasant energy spreads through your whole body, then culminates in a breathtaking orgasm that has you shouting in lust. Femcum floods your snatch and literally squirts out of it around the thrusting shaft of your caveman fucker, giving him a whole new level of sensations. As your now very slippery pussy twitches and trembles around the invading cock balls-deep inside, it's no wonder that your partner's climax follows very close behind your own. The young man shouts something unintelligible as he grinds against you and his manhood pulses, painting your insides white with his seed. Throb after throb of the virile human's seed is deposited into your womb, ready to go hunting for an egg to fight over and merge with.[impregchance]";
		WaitLineBreak;
		say "     When things eventually wind down, you spend some more moments just like that, panting and him lying on top of you, then the man pulls out and stands up. He says 'good' - seemingly one of the few English words he knows, then adds a few sentences in his own language while picking up his clothes and getting dressed. With a grin on his face, he waves goodbye to you, then stalks off deeper into the museum.";
	otherwise:
		say "     There is a gasp of indrawn breath as the tribesman sees that you neither have a penis nor a vagina, and he brings his hand down to your crotch, stroking over the smooth flesh of your genderless body. You can't help but moan at his touch, still sensitive even though you don't have any 'fun parts' down there, but the contact ends quickly as he realizes you don't have a hidden slit and internal genitalia either. With an unbelieving exclamation about yourself (you think), the young man draws back from you, shaking his head. He picks up his spear and walks away, leaving you standing alone and naked in between your scattered equipment.";
			
to say beatHomoSapiens:
	say "     You hit the primitive tribesman once more and he half-collapses to the ground, having to cling to his spear to catch himself. Breathing hard, the human male murmurs something and looks up at you, raising a hand as if in a plea to stop. Bracing himself on the ground with one hand, he shifts into kneeling, then sets down the spear while taking great care not to damage the obsidian tip. Sliding the weapon to the side with a definitive finality, making sure it is off the table, he starts saying some more words and opens the pouch he carries for you. Looks like he recognized defeat and feels that you are owed something by him - maybe compensation, or its him bying his freedom back. The pouch only contains some shaped rocks and primitive wooden tools, nothing all that interesting, though there are some strips of dried meat in there too.";
	say "     [line break]";
	say "     Do you take the (mammoth?) jerky ([link]Y[as]y[end link]), or do you demand a far more physical prize from the defeated young man ([link]N[as]n[end link])?";
	if the player consents:
		increase carried of mammoth jerky by 1;
		say "     [line break]";
		say "     The man nods as you relieve him of his food, then says a sentence or two before picking up his spear and getting up. Before you can say anything or intervene, he jogs off into the depth of the museum.";
	otherwise:
		say "     [line break]";
		say "     Smiling down at the young and muscular man, you push the pouch with its offered items to the side, instead pointing right at him. He gives you an interested once-over and says... something, then moves to undo the bone and leather fastenings of his clothes. You watch the young tribesman strip, revealing his sun-bronzed skin and an athletic, lithely muscled body. Not as 'showy' as a bodybuilder, but there's definitively something to be said about his naturally fit look. An aroused expression comes over his face as he looks at you, eager to pay you back this way, and one hand quickly moves to his crotch to stroke a well-sized, uncut cock.";
		say "     [line break]";
[
		say "     Will you make use of his mouth ([link]Y[as]y[end link]), or should someone get fucked here and now ([link]N[as]n[end link])?";
		if the player consents:
]
		if cocks of player > 0:
			say "     Quickly getting rid of your own clothes, you step closer to the kneeling guy and grab a handful of his dreadlocks, pulling his head to your crotch. His nose pressing against your balls, the tribesman instantly recognizes what you want and gets to work, lapping over the rounded orbs and moving his hands up to stroke your cock. Lapping and jerking you off, the kneeling human really gets you going, and you moan loudly while standing there with your hands on his head. Soon, he proceeds to pull back a little, pushing your hard cock down, then you feel the warm wetness of his mouth around your shaft. Lips stretching into a tight ring around your manhood, your former opponent plays his tongue over every sensitive bit of your cockhead, poking the cum-slit with its tip.";
			say "     After some quite nice moments of just having your cock played with, the man starts going down on you in earnest, bobbing up and down on your shaft while eagerly suckling on it. It is more than a little obvious that this isn't his first time in pleasing a man, as he proves quite adept at giving you the most pleasure he can. There might be something said about people just putting more effort into things in the time before the invention of television - or even writing - but given the fact that you're just getting an excellent blowjob, all that comes from your mouth is grunts and moans. Might also just be the case that you got into a fight with a happily gay or bisexual tribesmember - it doesn't really matter which, not for your rising libido and the urgent need to cum building in your balls.";
			WaitLineBreak;
			say "     Nose pressed into your pubes and your hard shaft tickling his tonsils, your partner soon also cups your balls and rolls them around teasingly. With a little squeeze that feels just right, he drives you over the edge completely and you give an explosive grunt as your whole body shudders and trembles, sending forth an eruption of cum into the primitive man's mouth. His lips clamp down tightly on your shaft and the muscled guy sucks you off with real dedication, making sure that not a drop is lost, swallowing it all. Man that feels great!";
			say "     Your partner keeps going, almost slurping each new spurt out of your cock as it comes. One might think that it is just his determination not to waste anything at all that is edible - but the content gleam in his eyes and the fact that the corners of his mouth are raised in a grin tell you that he also just really likes eating cum. Eventually when your orgasm finally subsides and you start feeling pretty sensitive, you push on his shoulders to get him off, and the young man removes his talented mouth after a last sharp suck. Still panting somewhat from the orgasm, you stumble back a few steps and brace yourself on a nearby wall while your cocksucker quickly gets dressed. He says 'good' - seemingly one of the few English words he knows, then adds a few sentences in his own language. With a grin on his face, he waves goodbye to you, then stalks off deeper into the museum.";
		otherwise if cunts of player > 0:
			say "     Quickly getting rid of your own clothes, you step closer to the kneeling guy and grab a handful of his dreadlocks, pulling his head to your crotch. His nose pressing against your nether lips, the tribesman instantly recognizes what you want and gets to work, lapping over the slightly swollen folds of your sex. Searching out the sensitive little clit under its hood and licking it, the kneeling human really gets you going, and you moan loudly while standing there with your hands on his head. Soon, he proceeds to pull back a little, slipping his fingers in between your pussy lips and feeling around for sensitive spots. Two fingers soon become three, only increasing the pleasure as you are stretched and fondled.";
			say "     After some quite nice moments of just having your pussy explored and played with, the man starts going down on you in earnest, bobbing his head up and down as he gives long licks over your pussy and extra tongue-wiggles at the end each time. With the special care he heaps on your clit, it is more than a little obvious that this isn't his first time in pleasing a woman, as he proves quite adept at giving you the most pleasure he can. There might be something said about people just putting more effort into things in the time before the invention of television - or even writing - but given the fact that you're just getting excellent oral sex, all that comes from your mouth is grunts and moans. It doesn't really matter, not for your rising libido and the urgent need to get off building inside you.";
			WaitLineBreak;
			say "     Nose pressed into your pubes and with your clittie between his lips, your partner soon also sneaks a hand up to your breasts, giving your nipples a teasing little pinch. And that is just what opens the floodgates on your orgasm, giving the last little push that drives you over the edge. With a breathless moan your whole body shudders and trembles, sending forth squirts of femcum to splash over the primitive man's face and mouth. He opens his mouth to catch what he can, then also licks up more from your crotch and himself with real dedication. It is a veritable tongue-bath that feels really great!";
			say "     Your partner keeps going, catching and slurping down virtually every little spurt from your pussy. One might think that it is just his determination not to waste anything at all that is edible - but the content gleam in his eyes and the fact that the corners of his mouth are raised in a grin tell you that he also just really likes eating femcum. Eventually when your orgasm finally subsides and you start feeling pretty sensitive, you push on his shoulders to get him off, and the young man removes his talented mouth after a last long lick. Still panting somewhat from the orgasm, you stumble back a few steps and brace yourself on a nearby wall while your cocksucker quickly gets dressed. He says 'good' - seemingly one of the few English words he knows, then adds a few sentences in his own language. With a grin on his face, he waves goodbye to you, then stalks off deeper into the museum.";
		otherwise:
			say "     As you start undoing your on clothes and your bare and sexless crotch is exposed, the tibesman murmurs something in a frightened tone. Before you can even start to explain about your perciliar state, he snatches up his clothes and spear to run, dashing deeper into the museum. Looks like this is one guy who gets a little freaked out by genderless people.";
[		
		otherwise:
			say "     [line break]";
			if cocks of player > 0:
				say "     Do you want to fuck him ([link]Y[as]y[end link]), or will you mount the hunky guy's hard shaft ([link]N[as]n[end link])?";
				if player consents:
					say "     [line break]";
					say "     Quickly getting rid of your own clothes, you step closer to the kneeling guy and grab a handful of his dreadlocks, pulling his head to your crotch. His nose pressing against your balls, the tribesman instantly recognizes what you want and gets to work, lapping over the rounded orbs and moving his hands up to stroke your cock. Lapping and jerking you off, the kneeling human really gets you going, and you moan loudly while standing there with your hands on his head. Soon, he proceeds to pull back a little, pushing your hard cock down, then you feel the warm wetness of his mouth around your shaft. Lips stretching into a tight ring around your manhood, your former opponent plays his tongue over every sensitive bit of your cockhead, poking the cum-slit with its tip.";
					say "     After some quite nice moments of just having your cock played with and getting it good and wet, you pull out of his mouth with a loud plop. As the young man looks up with a curious expression, you mime for him to turn around and reach down, squeezing his ass. There is a short chuckle from him and he gives your shaft an appreciative, slow jerk, then the primitive tribesman assumes a new position on all fours - or rather leaning forward on his knees, his chest on the ground while both arms reach to his well-rounded rear, pulling the tight buttcheeks of his ass apart. With a nice pink rosebud between his cheeks giving a very inviting wink at you, you're kneeling behind him in moments and slap your wet and shiny cock against his crack. The man says some words in a breathless moan as your cockhead starts to press in, followed by a lusty gasp when you penetrate, sinking into his welcoming depths.";
					WaitLineBreak;
					say "     Obviously far from a novice at getting his ass fucked the muscled tribesman knows just when to tense his inner muscles - well-developed as the rest of him as they are. Very tight, yet yielding, your newest sexual partner is quite an amazing fuck and you even have to stop for a few moments once or twice not to blow your load a little too quick. And you're not the only one that enjoys himself in this post-combat coupling, as your former opponent moans and gasps at you soon bottoming out inside him, your balls hitting his buttocks with a satisfying slap. Sliding an arm over his muscled back, then around the side of his body to tweak the hunk's nipples, you finally grope around to his crotch and easily find his rock-hard cock, just dripping with precum.";
					say "     As you proceed to hammer into your prehistoric stud's rear end, you jerk his dick at the same time, moving both of you to higher and higher arousal in short order. Shared gasps and moans fill the hallways of the museum, echoing between priceless artifacts as you share intimacy with a stone age human. Both of you are far too horny to even think about what all the noise might draw, but the [one of]ninja cat[or]monkey king[or]steam robot[or]roman soldier[or]indian scout[at random] that actually shows up to peek around the corner from the next room is perfectly happy to just masturbate to the show, unseen by you or your partner.";
					WaitLineBreak;
					say "     ";
				otherwise:
					say "     [line break]";
					say "     [AnalHomoSapiensRide]";
			otherwise:
					say "     [AnalHomoSapiensRide]";
				
]

to say HomoSapiensDesc:
	setmongender 3;
	say "     A muscular man steps into your sight, dressed in rough clothes created from tanned hides and furs while his feet are bare. The clothes are relatively simple, with pretty crude stitching and oblong pieces of bone threaded through loops as fasteners, but it nevertheless is clear that some effort went into making them. He's got a short beard on his face, as well as long hair hanging down his back, somewhat shaggy and forming natural dreadlocks. A spear tipped in a shiny splinter of obsidian rests in the man's hand, held with practiced ease. All in all, the perfect picture of a primitive tribesman from the early days of homo sapiens.";
	say "     While looking pretty much like a regular human, maybe a student playing LARP or historical reenactor, something screams at you to take him very seriously. There is a dangerous air around the young man, as if he's used to a hard life and making tough decisions. Like just right now, as he eyes you suspiciously and tries to gauge if he can take you. Calling out something in a long forgotten language, he charges you with his spear a second later.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Homo Sapiens";
	now attack entry is "[one of]The primitive tribesman feints with his spear, then kicks you as you dodge.[or]He whirls the spear around, using its end to whack you in the side.[or]Closing up with you, the man throws a punch that has you seeing stars for a moment.[at random]";
	now defeated entry is "[beatHomoSapiens]";
	now victory entry is "[losetoHomoSapiens]";
	now desc entry is "[HomoSapiensDesc]";
	now face entry is "human, with a short beard";
	now body entry is "that of an early homo sapiens, lean and muscled";
	now skin entry is "human, if pretty weather-beaten and tough";
	now tail entry is "You have a firm ass, with muscled buttocks.";
	now cock entry is "uncut, human";
	now face change entry is "it molds itself into the shape of a young man's, with a short beard sprouting over your chin and jaw";
	now body change entry is "it re-shapes itself into human form, with a lean build and tough muscles. Not so much the showy muscle-mass of a bodybuilder at that, but rather all the muscles that count for someone's survival, leaving your body hard and athletic";
	now skin change entry is "it becomes pretty tough and weather-beaten, somewhat hairy but still overall human";
	now ass change entry is "it grows firm and muscled";
	now cock change entry is "it grows into human-like shape, nicely thick and uncut in its natural state";
	now str entry is 14;              [ These are now the creature's stats... ]
	now dex entry is 18;              [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;              [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Male";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 55;               [ The monster's starting hit points. ]
	now lev entry is 8;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;             [ Monster's average damage when attacking. ]
	now area entry is "Museum";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;             [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;        [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;           [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;       [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;             [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;       [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;        [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;           [ Target libido the infection will rise towards. ]
	now loot entry is "mammoth jerky";[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;        [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]prehistoric[or]lean[or]muscled[or]rugged[or]athletic[at random]";
	now type entry is "[one of]Homo Sapiens[or]hominid[or]cromagnon[as decreasingly likely outcomes]";
	now magic entry is false;         [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;     [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;    [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"mammoth jerky"	"Several long strips of meat, carved from the flank of a mammoth and then dried to make them more durable."	1	mammoth jerky

instead of sniffing mammoth jerky:
say "The meat smells like... well, meat.";

mammoth jerky is a grab object.
the usedesc of mammoth jerky is "[mammoth jerky use]";

to say mammoth jerky use:
	say "Taking the mammoth jerky in hand, you start gnawing on it. It's pretty chewy - as dried meat is prone to be - and could use some seasoning or salt. Nevertheless, it has a certain primitive charme and you can't stop eating till the first strip is gone, then immediately start on the next. All in all you end up sated and feel like you just connected with your pre-historic ancestors.";
	decrease hunger of player by 20;
	if hunger of player < 0, now hunger of player is 0;
	infect "Homo Sapiens";

Section 4 - Endings

when play ends:
	if bodyname of player is "Homo Sapiens":
		if humanity of player is less than 10:
			say "     As you succumb fully to the nanites and the way you think is re-adjusted to what their jumbled programming deems right, you fall back into a more primitive mindset, befitting the early human tribes. Survival comes first - yours, then the tribe's - and if there is a need, you fight and take what is necessary to survive. Albeit a rather cut-throat outlook, it works - and you do survive the following days and weeks as part of the primitive tribe carving out a part of the museum as their territory. Things are... simpler, since your mind has no room for any second thoughts about something like cooking gryphon eggs or wearing the tanned fur of a jaguarman.";
			say "     When the military finally comes to evacuate your group of seemingly 'normal human survivors', there is a brutal clash as you wipe the floor with the soldiers, taking the women as spoils and initiating the bravest of them into the tribe, all of them quickly transformed to fit in. The rest is left naked at the entrance of the museum, to live or die as they will. When you turn to walk back down the corridor to tribal land, your thoughts are on enjoying yourself with the new members. You barely register the shouts and gasps from behind you as the other museum inhabitants and creatures coming by on the street pick off the defenseless naked men.";
		otherwise:
			say "     When rescue comes, you're poked and prodded a bit in a medical holding facility outside the city, then declared non-infectious and let go. Contrary to most other people who lived through the nanite plague in the city, you're still human in shape, so you have little problem re-integrating into regular society afterwards - although there are some instances where your primal instincts boil up strongly and you have to prove your self-control as not to fall into the no nonsense behaviour of a primitive tribesman looking out for his survival. Punching out people who steal your parking spot would be just a bit over the top. Still, some wild urges non-withstanding, you made it out of the whole nanite affair relatively well - with your humanity intact and a pretty well-toned body.";

Homo Sapiens ends here.
