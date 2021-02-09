Version 1 of Nathaniel by Omen begins here.

[Section 1 - The Sword in the Stone                ]
[Section 2 - The Campsite                          ]
[Section 3 - Video tape recording                  ]
[Section 4 - Looking for the Brothers              ]

[Nathaniel HP = resolution states                  ]
[HP 0 = Sword is unblessed                         ]
[HP 1 = Sword has been blessed                     ]
[HP 2 = Nathan found sword, has not met the player ]

Section 1 - The Sword in the Stone

Table of GameEventIDs (continued)
Object	Name
The Sword in the Stone	"The Sword in the Stone"

The Sword in the Stone is a situation.
ResolveFunction of The Sword in the Stone is "[ResolveEvent The Sword in the Stone]".
Sarea of The Sword in the Stone is "Forest".

when play begins:
	add The Sword in the Stone to badspots of MaleList;
	add The Sword in the Stone to badspots of IncestList;
	add The Sword in the Stone to badspots of NonconList;

NathanielHP is a number that varies. NathanielHP is usually 0.

to say ResolveEvent The Sword in the Stone (while demonologist is tamed and player is male):
	say "     As you wander through the forest, you find a old beaten path that leads deeper into the woods. Following this path, you enter into a section of woods that feels almost magical. The air temperature drops to that of a chilly morning, a slight frost forming over nearby folliage. Emerging from the dense overgrowth, you see a resplendent longsword sticking inside of a rock in the center of a clearing ahead of you. Letting out a relieved sigh, you begin to make your way to the clearing. The sword looks beautiful, glinting in the faint light that makes it through the canopy. You now stand infront of the sword, what do you do?";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Try to pull the sword out of the stone.";
	say "     ([link]N[as]n[end link]) - Begin the ritual to call the sword's owner.";
	if player consents:
		say "     Grabbing the hilt of this sword, you squat down and prepare to lift with all your might. Sadly, the sword doesn't budge. You sigh in defeat, the knowledge that you are not the chosen one stings your pride. What do you do now?";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Clearly there's been some kind of mistake, leave for now and try again later.";
		say "     ([link]N[as]n[end link]) - Begin the ritual to call the sword's true owner.";
			if player consents:
				say "     You leave the area for now, determined that one day you will lift that sword! Though you can't shake the feeling that maybe it's not meant for you.";
			else:
				say "     Recalling what the book told you, you set up some candles in a concentric circle around the sword. Once that's settled, you strip off your pants and start playing with your cock. Pinching your own nipple, you reimagine the vision of the past you witnessed inside the catacombs. You try to focus on the man's thick cock when it was embedded in your asshole, stretching you wide as he began to orgasm. Rocking your hips back and forth as you swear you can feel long and thick pulses of cum splash against your prostate. Imagining the man giving your ass a firm slap as he finishes cumming in your man hole is enough to send you over the edge. You aim carefully, coating the sword at the hilt and letting it drip downwards. You groan as your balls start to feel empty and your skin tingles as a strange magic envelops you. You look excitedly over at the candles but they are not lit. Frowning, you wonder what you have done wrong.";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - The book did state that these men are depraved, maybe the sword needs something extra (WS).";
				say "     ([link]N[as]n[end link]) - Confused, you pick up the candles and head back to contemplate things.";
				if player consents:
					say "     [if WSlevel is 3]With a content sigh, you begin to empty your bladder on command with practiced ease. You smile as you hose down the sword, spraying it from top to bottom. A candle suddenly lights up, followed by another, and another until they are all lit. You chuckle as the spell compeltes but drain the rest of your bladder for good measure.[else] You look left and right and see that the coast is clear. Blushing a little, you relax your bladder and begin to spray your piss onto the sword. You feel dirty as you do so, but for some reason it feels right. A candle suddenly lights up, followed by another, and another until they are all lit. You look down in surpise and quickly finish up your buisness.[end if] Now that the ritual is complete, you decide to wait around for a bit to see if it has a immediate effect. After an hour or so, you decide to leave and check back later".;
					now The Sword in the Stone is resolved;
					now The Campsite is active;
					now NathanielHP is 1;
				else:
					say "     You leave the area for now, maybe you'll try to summon the owner later.";
	else:
		say "     Recalling what the book told you, you set up some candles in a concentric circle around the sword. Once that's settled, you strip off your pants and start playing with your cock. Pinching your own nipple, you reimagine the vision of the past you witnessed inside the catacombs. You try to focus on the man's thick cock when it was embedded in your asshole, stretching you wide as he began to orgasm. Rocking your hips back and forth as you swear you can feel long and thick pulses of cum splash against your prostate. Imagining the man giving your ass a firm slap as he finishes cumming in your man hole is enough to send you over the edge. You aim carefully, coating the sword at the hilt and letting it drip downwards. You groan as your balls start to feel empty and your skin tingles as a strange magic envelops you. You look excitedly over at the candles but they are not lit. Frowning, you wonder what you have done wrong.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - The book did state that these men are depraved, maybe the sword needs something extra (WS).";
		say "     ([link]N[as]n[end link]) - Confused, you pick up the candles and head back to contemplate things.";
		if player consents:
			say "     [if WSlevel is 3]With a content sigh, you begin to empty your bladder on command with practiced ease. You smile as you hose down the sword, spraying it from top to bottom. A candle suddenly lights up, followed by another, and another until they are all lit. You chuckle as the spell compeltes but drain the rest of your bladder for good measure.[else] You look left and right and see that the coast is clear. Blushing a little, you relax your bladder and begin to spray your piss onto the sword. You feel dirty as you do so, but for some reason it feels right. A candle suddenly lights up, followed by another, and another until they are all lit. You look down in surpise and quickly finish up your buisness.[end if] Now that the ritual is complete, you decide to wait around for a bit to see if it has a immediate effect. After an hour or so, you decide to leave and check back later".;
			now The Sword in the Stone is resolved;
			now The Campsite is active;
			now NathanielHP is 1;
		else:
			say "     You leave the area for now, maybe you'll try to summon the owner later.";

Section 2 - The Campsite

Table of GameEventIDs (continued)
Object	Name
The Campsite	"The Campsite"

The Campsite is a situation.
ResolveFunction of The Campsite is "[ResolveEvent The Campsite]".
The Campsite is inactive.
Sarea of The Campsite is "Forest".

to say ResolveEvent The Campsite
	say "     You're wandering through the forest when you come across a destroyed campsite. There is a small firepit with what looks to be marshmallows on some sticks. Most of them are burned as if they were left to sit near the fire for too long. You come across two finely made backpacks near the remains of the tent, they look be be designed for hiking. Most of the stuff has been looked through already, but based on the clothing it looks like there were two men at this campsite, one very short and the other very tall. After some digging, you come across some IDs that depict the two men. The first appears to be from the college, he's a tall handsome graduate student with well styled shoulder length hair and a short neatly trimmed beard that goes by the name Nathaniel. The black hair really stands out well on his pale skin. The other is a younger man with a cheerful expression, with platinum blond hair that's short on the sides and long on top that goes by the name Owen. He also has pale white skin, and checking again they both have the same striking ice blue eyes. The younger man's ID It looks to be a temporary university ID, perhaps he was here for orientation or some kind of event.";
	say "     One final search of the bag yields a camera, tough the screen is cracked. Given the hiking gear, you suspect the cause might have been dropping it accidentally. It does have a tape in it so you pop it out and add it to your backpack. Putting the bag down, you turn your attention to what remains of the tent. The canvas is well made and mostly intact, it doesn't look like anything ripped into it from the outside. You pull the canvas away so that you can see what is inside the collapsed tent. It's surprisingly difficult to move, something is weighing it down. Once you finished moving it to the side it becomes clear what was causing the trouble. The bottom of the tent has been utterly destroyed and is covered in jizz [if WSlevel is 3] and piss if the smell is anything to go by[end if], leaving a trail of fluid behind the top portion of the tent that you dragged away.";
	WaitLineBreak;
	say "     You stand there in awe for a moment, there is so much spooge that you could fill a bathtub. You step closer to the puddle of spooge, nearly slipping as you walk into a small pit in the ground. Who sets up camp in a pit? You wonder to yourself as you get closer to the scene of the crime. You grab a nearby stick and try to poke into the spooge and try to scrape things off the bottom, only to realize that the spoogue is nearly three feet deep. But that's not all, you notice that the hole in the ground is deeper at one end and more shallow at the other. It's like something hit it at a angle. You dig around a bit in the deep part of the hole and manage to drag something up towards the surface. Something dark and slimy emerges from the pool of spooge giving you a minor scare before you realize its an object and not a person.";
	say "     Grabbing it, you manage to pull it up further until its entirely out of the pool. You wipe some of the black stuff up with a stick and examine it more closely. It smells, looks, and acts like cum would if it were black and at least twice as viscous. [if player is kinky]Couragously, you dip your finger into the black goop and bring it into your mouth for a taste. You can't help but moan, it's still hot and tastes heavenly. You find yourself absentmindely collecting more and consuming it to your hearts content. Eventually you gather your senses and continue exploring the scene.[end if]You manage to clean off some of the cum on this object and determine that its a sleeping bag. You're just about to put the bag aside, but find something else stuck in the middle of the sleeping bag. You pick up part of the fabric and slowly remove it from the black cum. To your horror and arousal, it appears to be a fairly small red jockstrap with the band broken on the backside.";
	WaitLineBreak;
	say "     You connect the pieces, a hole in the ground at a angle filled with jizz, where a bedroll once was, and lastly a broken jockstrap. You suspect that someone was in the tent, sleeping on their stomach when someone or something entered the tent. Whatever it was, it fucked the person hard enough to make a small crater and demolish most of the tent. The perpetrator seemed to grab the back of the jockstrap and use it to pull the ass closer to him during the fuck, until the clothing broke under the pressure. A sense of dread hits you, and you grab a larger stick to check the hole once again for anything more. To your releif, there is no body stuck somewhere in the pool of jizz. You think to yourself, what could have had the strength to do something like this and who or what has black cum? Suddenly you feel very alone, with a shudder you decide to leave the campsite before whatever did that damage returns. Maybe you should give the video tape a look, it might have some clues.";
	say "     [bold type]Hiker Boys Tape has been added to your tape inventory![roman type][line break]";
	add "Hiker Boys Tape" to tapes of Player; [added tape to Core Mechanics/Tape Inventory.i7x]
	now The Campsite is resolved;

Section 3 - Tape - Hiker Boys Tape

to say ResolveEvent HikerBoysTape:
	say "     At the beginning of the tape, you see the face of a handsome young man with platinum blonde hair and striking ice blue eyes, who is currently looking down at the camera with a furrowed brow. He appears to be in his late teens, maintaining a smooth and youthful face. A few expensive looking earings decorate one his ears, giving a slightly punkish look to him. His shoulders are quite muscular and from what you can tell he's wearing a black tank top, though most of his torso is off the screen. 'Is this this on? Oh, I got it!' A brief flash of a cocky grin crosses the screen before the camera is moved and pointed outside a car window. The scenery is beautiful as the car drives up a winding road in the mountains. The large water reservoir can be seen on the horizon, just above the imposing dam. The morning sunlight glints beautifully on the surface of the lake and on the small layer of frost covering the nearby trees. The camera pans up and over the lake onto the mountains which are covered in snow simply due to the elevation.";
	say "     You hear a chuckle from someone else, followed by a smooth but deep voice, 'Good timing, we just got to the scenic parts.' The camera pans over the front wind shield before settling on the driver. This man could be a model, he's quite tall and very musuclar. A stylish leather jacket adorns his chest, though left open to reveal a simple t-shirt with a logo of the college wrestling team. The fabric is pulled taught over his body, putting his musculature on full display. His large thighs stretch the trendy ripped jeans, leaving little to the imagination. The young man seems to adjust the camera slight, centering the view on the large bulge in the mans pants. 'Yup, definately a good view.' The younger man comments cheekily, though the older man doesn't appear to notice the shenanigans.";
	WaitLineBreak;
	say "     The driver takes his eyes off the road for a moment, reaching over ruffle the younger man's hair. 'Just wait till we get to the house,' he says with a smile. Getting a better look at the older man's face, you place him at mid to late twenties which would fit that college graduate student ID card you found earlier. He has a neatly trimmed very short beard, clearly well kept and frames his face nicely. His thick black hair is tied neatly into a pony tail, which reachs to just bellow his muscular shoulders. You notice he has the same ice blue eyes as the younger man. Not to be wholly irresponsible, the driver turns his attension back to the road.";
	say "     'I can't believe mum and dad bought you a house up here, the younger man says";
	say "     The older man rubs his head sheepishly, 'Me either to be honest, buisness must really be booming to spend this kind of money. I know its suppose to be a gift for getting into grad school but it really seems excessive. Normal people get a nice dinner and a present that fits in a box.'";
	say "     'Thanks for letting me stay with you Nathan. Honestly, I'm surprised that want to see me after break,' the younger man says with a slightly quite voice.";
	say "     'Lil'bro, don't fret about it, you destroyed the competition. Most of the other contestents already went home, I'm positive the ones that are still here are going to get a offer after the break. Now's the time to relax and that's just what we're going to do,' Nathan says as they pull up to the house. It's very large, almost a mansion, sitting in a small cove by the lake's edge. A light snow falls down upon the nearby area, giving a wintery feeling to the estate. 'Let's unpack, but grab your camping gear, there's a really nice spot a short hike up the mountain. And make sure to bring a jacket,' he finishes with a authorative tone.'";
	say "     'Sir, yes Sir!' The younger man gives a faux salute as he turns off the camera.";
	WaitLineBreak;
	say "     The tape starts to play again, depicting what appears to be a mountain trail that leads up the mountain side. The younger man is humming contently as Nathan consults a map. A slight movement catches your eye in the corner of the camera, somewhere in the sky. You're not alone, as the camera pans towards that area of the sky. He adjusts the zoom to get a better look at the creature in the sky. 'Whoa, sick! Is that a dragon!?' the younger man exclaims with wonder. Nathan gives a confused look to his younger brother, before looking in the same direction and letting out a gasp. A thundering roar perices the sky as a large creature dives towards the two men. The camera begins to tumble, it looks like Nathan just tackled his younger brother into the nearby brushes. Curses can be heard from both men as wonder is replaced by fear. The distinct sound of the creature landing nearby causes both to break out into a sprint down the mountainside.";
	say "     The camera shakes heavily as the two run from the mythical creature. Fortunately, the two men are quite fit and the roars become softer as they put distance between them and dragon. The younger man lets out a yelp as he slips and starts to tumble down the mountainside. Somewhere in the distance, Nathan lets out a breaty 'Owen!' The younger man continues to tumble, letting out gasps as he hits the ground. Eventually he comes to a stop, groaning loudly as he attempts to pick himself up. Nathan catches up to Owen and quickly pulls him into some nearby brush. Nathan covers Owen's mouth softly with one hand, indicating they need to be quite. It doesn't take long for a gust of wind to blow by them as the dragon circles the area. A few minutes pass before the creature gives up the search, flying back up the mountain.";
	WaitLineBreak;
	say "     'Are you alright?' Nathan asks softly.";
	say "     'No, my leg hurts a lot. I'm not sure I can walk on it,' Owen responds with shakey breath. Nathan appears to pull out a phone, but lets out a curse after examining it briefly.";
	say "     'There's no signal up here and we can't go back up the mountain while that thing is up there. Climb on and we'll head back down into the woods.' Nathan turns his bag around so that its on his chest, and sits down in front of his younger brother. Owen fiddles with the camera and the screen fades to black.";
	say "     The camera turns on again, late into the night staring out into the woods from inside of a tent. Nathan is just finishing up rebandaging Owen's leg, tossing some soiled bandages to the side. The handsome man's face is marred with concern. The camera shakes a little bit as Nathan stands up and begins to grab a few things. 'I won't be gone long, I'm getting worried about your leg and I want to see if I can find some place with reception nearby. I thought I saw a clearing a little ways back, it won't take too long, maybe an hour. Just try to get some sleep okay buddy?'";
	say "     'Please stay safe,' Owen mumbles, 'we've seen so many monsters in the forest.'";
	say "     Nathan smiles and ruffles Owen's hair once more, 'I'll be fine, just stay inside the tent for me okay?' Owen nods in response and shifts uncomfortablely as he watches his brother leave eyesight. A few minutes pass before Owen sets the camera down, and squirms out of his clothing. It takes some time to gingerly remove his pants, but the kid is quite flexible and manages to complete the task without disrupting the bandages. This leave him in nothing but a tight red jockstrap. He turns over onto his stomach and pulls up the covers of the sleeping bag. As an afterthought, Owen picks up the camera and puts it in the bag near the door to the tent. It seems he forgot to turn it off, the video displays nothing but a black screen but you can still hear the wind in the background.";
	WaitLineBreak;
	say "     You fast forward about an hour before you hear something and see a brightness enter the tent. Rewinding a bit to play it from the beginning. The tent zipper opens and closes, followed by someone putting somethings down. Among them, you swear you hear something metallic get placed softly near the backpack. A soft light fills the tent for a moment, accompanied by a soft but strange buzzing sound. Shortly after the light fades, your the soft sound of kisses followed by a quite slurping sound. Owen appears to moan softly in his sleep. Another few minutes later, you hear the distinct sound of pants being unbuckled followed by a shift in the sleeping bag. A deep, but content sigh fills the tent as you hear Owen let out a few gasps and begin to struggle. 'Shhh, little bro, big bro's got you. Just relax and take a deep breath,' Nathan says with a sultry tone you have never heard him use before.";
	say "     'Oh fuck! You... you're so big, like I... oh god,' Owen whimpers.";
	say "     'It will fit, I promise. You're practically pulling me in as we speak. Your ass is so fucking tight, so nice to look at framed in that slutty red jock. Tell me little bro, do all gymnasts wear this or are you just extra slutty?' The question is accompanied by the sharp sound of the jockstraps eleastic band hitting taught skin and a subsequent moan.";
	say "     'I... choose to... wear them because... I... really... like... dick!' the younger man says loudly, though seems to be having difficult talking. 'Oh god... it's so big... big bro your... stretching me... so good. Holy Fuck! Are those real... how can... they be so big... so heavy?'";
	say "     'I knew you'd like my balls babe, and I'll be giving you everything in them. I hope you like it rough,' he says while simultaneously giving a hard thrust releasing a loud sound has hips meet a firm ass.";
	say "     'Fuck yes big bro! Rape my hole! I've wanted you to use me for fucking years! Oh god yes...' The sound of skin meeting skin gets louder and more frequent, as the two set up a brutal pace that shows no sign of stopping.";
	say "     This time its Nathan that lets out a long deep moan, 'Damn babe, already meeting my thrusts. I've gotta say, You. Are. One. Of. A. Kind.' He says in tandem with each thrust. Much to your displeasure, a warning sign for battery life comes up on the tape recording. The sounds of their sinful union and vulgar statements continue right up till the tape stops playing and you suspect well afterwards too. You're left horny and with many questions, perhaps you should explore the forest some more.";
	increase libido of player by 30.
	now NathanielHP is 2;
	now Looking for the Brothers is active;

Section 4 - Looking for the Brothers

Table of GameEventIDs (continued)
Object	Name
Looking for the Brothers	"Looking for the Brothers"

Looking for the Brothers is a situation.
ResolveFunction of Looking for the Brothers is "[ResolveEvent Looking for the Brothers]".
Looking for the Brothers is inactive.
Sarea of Looking for the Brothers is "Forest".

LookingForTheBrothersResolution is a number that varies. LookingForTheBrothersResolution is usually 0.

to say ResolveEvent Looking for the Brothers
	if LookingForTheBrothersResolution is 0:
		say "     As you look for the two brothers, you come across a small field where some of the grass has been burned. Reaching down to the blackened ash, you run your fingers through it, finding it has the consistency of a fine sand and feels warm to the touch. You search the area for additional clues and come across signs of a fight. Following this trail leads you to a small field with a prone figure in the center. Looking around for a moment, you make sure the area is clear before heading closer to the man. It appears to be a knight who has fallen in combat, he's unconscious but otherwise stable with a few bruises here and there. Some of his clothing also looks a bit singed, notably the clothing in the crotch area exposing his sizable manhood and now gaping hole. He seems to be resting peacefully at the moment despite his current state of health.";
		say "     Kneeling down next to the man gives you a better view of the sexual activity that occured following the fight. His torso and face are smattered with cum and a black substance similiar to what you found at the tent. You rub a finger through the black substance and taste it once again, its as heavenly as you remember but tastes slightly different. Unlike the cum you tasted at the campsite, this cum is rather hot as if it was recently shot out of nice cock. Oddly, you find the knights cock is also covered in black cum, though there is white cum there as well. You assume the white cum belongs to the knight and give his cock a little squeeze just to be sure. surprisingly, its black cum that leaks out of his cock and a quick taste confirms its the same that covers the torso of the knight.";
		WaitLineBreak;
		say "     Continuing down past his cock, you find a rather devistated hole. It's gaping open maybe four or five inches, with a deluge of black spooge leaking out into a fairly large puddle beneath him. [if player is kinky]It's not hard to fit your hand inside his bum and you reach in a bit further to see how much damage was done. His hole twitches around your arm but it seems incredibly weak, whoever did this to him wore him out completely. You continue to push in all the way up to your elbow before you start encountering some resistance, the knight starts to moan as the pressure increases. Smirking to yourself mischievously for a moment before deciding to give the poor man a break and pull out your hand. Based on the cum that coats your hand, he was only about half full with the other half leaked out onto the ground.[else]His hole seems to twitch, as if wanting to close but being too weak to do so. You look down into the asshole and find that its only about half full, with the rest of it spilled out onto the ground. You wipe a finger over the rim of his asshole, collecting a bit of the spooge there and bring it to your mouth.[end if] You taste the cum, moaning a bit at the flavor of the warm juices. This one definately reminds you off the cum puddle at the campsite. Taking pitty on the fallen warrior, you gently move him over to a more secluded area of the forest so he can recover in peace before heading back. This didn't answer many questions, perhaps you should try looking some more.";
		now LookingForTheBrothersResolution is 1;
	elseif LookingForTheBrothersResolution is 1:

Nathaniel ends here.
