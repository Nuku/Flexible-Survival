Fair Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the fair area."

Section 1 - floating balloons

Table of GameEventIDs (continued)
Object	Name
Floating Balloons	"floating balloons"
Floating Balloons	"Floating Balloons"

Floating Balloons is a situation.
ResolveFunction of Floating Balloons is "[ResolveEvent Floating Balloons]".
Sarea of Floating Balloons is "Fair".

to say ResolveEvent Floating Balloons:
	say "     Wandering through the cheerful midway of the fair, you hear a strange squeaking noise nearby. Looking all around, you finally look up and notice a bundle of balloons floating by over some of the carnival shops. The sight makes you blink for a minute, as you could almost swear that one of the balloons was shaped like a naked woman, and it was gesturing for help. Taking a second look, you note the balloons have floated out of sight for now, though the strange sight stays with you as you wander around the fair itself.";
	now Floating Balloons is resolved;

Section 2 - Game crazy

Table of GameEventIDs (continued)
Object	Name
Game Crazy	"Game crazy"
Game Crazy	"Game Crazy"

Game Crazy is a situation.
ResolveFunction of Game Crazy is "[ResolveEvent Game Crazy]".
Sarea of Game Crazy is "Fair".

to say ResolveEvent Game Crazy:
	say "     Wandering through the cheerful midway of the fair, you hear some shouting from nearby. Deciding to go take a look, you see what appears to be a young man frantically trying to win one of the fair games. You try to move closer and see what is going on, only to watch as the young man curses and throws down the little mallet, obviously frustrated with his failure. He glances around for a second, and tries to just grab one of the prizes and drag it out of the booth instead, and you watch in horrified fascination as his hands seem to sink into the giant stuffed dragon he tried to steal. The man screams and continues to curse, as his body seems to lengthen even as it shrinks, and before you know it he is hauled up into the booth by his stuck hands, and turns green and gold covered in plush dragon fur. By the time you reach the booth, the screaming has stopped and there are now two fancy plush dragons hanging in the prize area, as you stare at them you can swear one of them winked at you for a second. Shaking your head, you decide it's best not to touch anything you didn't win fairly in this crazy place.";
	now Game Crazy is resolved;

Section 3 - fair food cart

Table of GameEventIDs (continued)
Object	Name
Fair Food Cart	"fair food cart"
Fair Food Cart	"Fair Food Cart"

Fair Food Cart is a scavevent.
ResolveFunction of Fair Food Cart is "[ResolveEvent Fair Food Cart]".
Sarea of Fair Food Cart is "Fair".

to say ResolveEvent Fair Food Cart:
	say "     Wandering through the cheerful midway of the fair, you come across one of the fair food carts that seems to still be dispensing popcorn and fair food. Feeling slightly ambiguous about taking anything in this crazy place, you try some of the food, and when nothing bad seems to happen, take some of it with you. What is a fair without some fair food after all?";
	ItemGain food by 1;
	now fair food cart is resolved;

Section 4 - Happy silly feeling

Table of GameEventIDs (continued)
Object	Name
Happy Silly Feeling	"Happy silly feeling"
Happy Silly Feeling	"Happy Silly Feeling"

Happy Silly Feeling is a situation.
ResolveFunction of Happy Silly Feeling is "[ResolveEvent Happy Silly Feeling]".
Sarea of Happy Silly Feeling is "Fair".

to say ResolveEvent Happy Silly Feeling:
	say "     Wandering through the cheerful midway of the fair, you hear some squeaking from a nearby area. When you cautiously take a look, you see a group of three different latex animals involved in some kind of strange altercation. The squeaky fox appears to be ducking and squeaking out silly commentary, while the latex cat tries to slap some sense into the fox. Which is amusing enough, but when the large latex tiger starts banging their heads together indiscriminately, you can't help but giggle, at the absurd situation, and the looks on the two beasts smooshed together faces. You pause for a minute, afraid you might have attracted their attention, but the beasts spare you only a glance before they go back to their escalating argument, with more silly gestures and slapstick fighting. You find yourself laughing hilariously at the strange situation playing out in front of you, especially when one of them grabs a pie off one of the nearby food carts, and the food starts flying. Still chuckling, you leave the fight before any of the food can start flying your way, but the smile stays on your face for quite a while afterwards, and you feel much better about yourself.";
	SanBoost 25;
	now Happy Silly Feeling is resolved;

Section 5 - Flashing fair lights

Table of GameEventIDs (continued)
Object	Name
Flashing Fair Lights	"Flashing fair lights"
Flashing Fair Lights	"Flashing Fair Lights"

Flashing Fair Lights is a situation.
ResolveFunction of Flashing Fair Lights is "[ResolveEvent Flashing Fair Lights]".
Sarea of Flashing Fair Lights is "Fair".

to say ResolveEvent Flashing Fair Lights:
	say "     Wandering through the cheerful midway of the fair, you find yourself glancing up only to stop and stare, in the dim twilight lighting the brilliant flashing of the fair lights seems to be absolutely fascinating for a minute. With the strange music of the fair playing in your head, and the lights glittering and flashing in their cheerful pattern, you find yourself falling into a trance, the lights seeming to call out to something inside you. You eventually blink, and tear your gaze away, and stagger onwards, but for some reason your brain is full of images of you staying in the fair, working one of the booths, or being the furry plushie prize for some lucky winner at one of the booths. It is hard to even remember who you are for a bit, and you once more remind yourself just how dangerous this fair is, though it could be a fun place to stay...";
	SanLoss 20;
	now Flashing Fair Lights is resolved;

Section 6 - Salty taffy

Table of GameEventIDs (continued)
Object	Name
Salty Taffy	"Salty taffy"
Salty Taffy	"Salty Taffy"

Salty Taffy is a scavevent.
ResolveFunction of Salty Taffy is "[ResolveEvent Salty Taffy]".
Sarea of Salty Taffy is "Fair".

to say ResolveEvent Salty Taffy:
	say "     Wandering through the cheerful midway of the fair, you come across a stand selling old fashioned salt water taffy, the fresh sticky stuff set up on the counter with a sign next to them saying 'free samples'. Deciding to take a chance, you help yourself to one of the pieces of sticky candy. Chewing it as you go on your way, you find the salty and sweet treat to be a wonderful accompaniment to the fair itself. Unfortunately, though, the sticky stuff gums up your mouth and dries it out as you chew, and the salty part of the taste seems to make you even thirstier than before.";
	PlayerEat 6;
	LineBreak;
	say "[bold type]Your thirst has increased by 20![roman type][line break]";
	increase thirst of Player by 20;
	now Salty Taffy is resolved;

Section 7 - Prize winning toss

Table of GameEventIDs (continued)
Object	Name
Prize Winning Toss	"Prize winning toss"
Prize Winning Toss	"Prize Winning Toss"

Prize Winning Toss is a situation.
ResolveFunction of Prize Winning Toss is "[ResolveEvent Prize Winning Toss]".
Sarea of Prize Winning Toss is "Fair".

to say ResolveEvent Prize Winning Toss:
	say "     Wandering through the games area of the midway, staring at the shining and sparkling fair games, you eventually give in to temptation and try one of the tossing games, only to be surprised to find it is surprisingly hard, giving up you toss your last ring halfheartedly at the target and turn to leave, only to have to booth light up behind you. Looking backwards you see your last toss actually managed to make it onto the moving prize ring, and you actually won one of the lower tier prizes. Smiling at your lucky toss, you snag a pack of soda from the prize stack, and continue along your way, whistling along with the fair music.";
	ItemGain soda by 4;
	now Prize Winning Toss is resolved;

Section 8 - Sudden stampede

Table of GameEventIDs (continued)
Object	Name
Sudden Stampede	"Sudden stampede"
Sudden Stampede	"Sudden Stampede"

Sudden Stampede is a situation.
ResolveFunction of Sudden Stampede is "[ResolveEvent Sudden Stampede]".
Sarea of Sudden Stampede is "Fair".

to say ResolveEvent Sudden Stampede:
	say "     Wandering through the cheerful midway of the fair, you think you hear someone scream for a minute. Turning to look, you see someone run by down the other lane arms waving in the air as they obviously panic. Blinking you are about to call out, when you hear a rumbling noise over the carnival music, your mouth open you have no choice but to stare as a large stampede of plush prize animals follows after the screaming individual, everything from plush lions hunting, to giant teddy bears, and even some furry large snakes go charging down the lane, so intent on their target none of the seem to notice you. Closing your mouth with a snap, you definitely decide there isn't anything you can do to help someone that much in demand, you move along down the midway before they can circle back around..";
	now Sudden Stampede is resolved;

Section 9 - Strange barker

Table of GameEventIDs (continued)
Object	Name
Strange Barker	"Strange barker"
Strange Barker	"Strange Barker"

Strange Barker is a situation.
ResolveFunction of Strange Barker is "[ResolveEvent Strange Barker]".
Sarea of Strange Barker is "Fair".

to say ResolveEvent Strange Barker:
	say "     Wandering through the cheerful midway of the fair, you hear someone shouting out something, and move over to take a look, surprisingly you find a man covered in clown makeup standing in front of a ride shouting out its endorsements, in an attempt to tempt the nonexistent crowd inside, moving closer you try to talk to the man, only to be shouted at directly by the carnival barker. Regardless of what you do, his spiel doesn't seem to change any, and moving closer, you note that his feet seem to have become attached to the barkers stand, anchoring him there as he repeats his speech over and over again. Shuddering slightly at the strangeness of it all, you definitely decide not to try that ride.";
	now Strange Barker is resolved;

Section 11 - Ferris fun time

Table of GameEventIDs (continued)
Object	Name
Ferris Fun Time	"Ferris fun time"
Ferris Fun Time	"Ferris Fun Time"

Ferris Fun Time is a situation.
ResolveFunction of Ferris Fun Time is "[ResolveEvent Ferris Fun Time]".
Sarea of Ferris Fun Time is "Fair".

to say ResolveEvent Ferris Fun Time:
	say "     Wandering through the cheerful midway of the fair, you quickly find yourself in trouble as a number of the beasts that inhabit the fair seem to have found you. Realizing there are far too many for you to easily fight, you quickly flee down the shining and sparkling midway, while they give hot pursuit. Eventually taking a chance, you duck into one of the Ferris wheel cages, and slam the door shut, hoping they won't find you. To your surprise the wheel starts up again right away, swinging you up and away from your pursuers, and giving you a great view of the fair itself, as you go higher you can see the entire ruined skyscape of the city spread out before you, and the ominous smoke rising from near the capital building. Still swinging around in the air as the wheel spins is actually kind of fun, and you find yourself smiling as the ride stops, even better your pursuers are long gone, so you continue off into the fairgrounds while whistling a little tune.";
	SanBoost 10;
	now Ferris Fun Time is resolved;

Section 12 - Rubber tiger chase

Table of GameEventIDs (continued)
Object	Name
Rubber Tigerchase	"Rubber tigerchase"
Rubber Tigerchase	"Rubber Tigerchase"

Rubber Tigerchase is a situation.
ResolveFunction of Rubber Tigerchase is "[ResolveEvent Rubber Tigerchase]". The level of Rubber Tigerchase is 6.
Sarea of Rubber Tigerchase is "Fair".
when play begins:
	add Rubber Tigerchase to BadSpots of FemaleList;
	add Rubber Tigerchase to BadSpots of FurryList;

to say ResolveEvent Rubber Tigerchase:
	say "     Wandering through the cheerful midway of the fair, you spot one of those rubber tigresses hanging around doing something at one of the prize booths, unfortunately it seems to spot you at the same time. Somewhat unusually for one of the rubber beasts, it squeaks and flees down towards one of the nearby buildings, do you give chase?";
	if Player consents:
		say "     Chasing the rubber tigress down the narrow paths between booths, you follow the flickering glimpses of that black and orange tail until you lose sight of it behind one of the employee buildings, you are about to turn away when you notice one of the doors leading into the building is slightly ajar. Smiling at the discovery, you quickly barge into the building ready to fight, only to find yourself drenched in some kind of sticky stuff. Trying to claw the stuff out of your eyes as it coats you, you realize you fell for one of the oldest tricks in the book, and are now covered in some kind of orange and black tinted paint that someone balanced above the door you barged through. You groan as you can feel the stuff sinking into your skin and changing you, and then your eyes go wide as the tigress you were chasing appears before you with a grin and attacks!";
		infect "Rubber Tigress";
		decrease HP of Player by 10;
		challenge "Rubber Tigress";
		say "     The rough encounter over, you drag yourself away, still spitting out tiger-striped paint and feeling rather strange due to being coated in the stuff. You resolve to be more careful in the future.";
		now Rubber Tigerchase is resolved;
	else:
		say "     Deciding not to push your luck, you move on down the midway, leaving the tigress to chase her own tail.";


Section 13 - Lion modifying

Table of GameEventIDs (continued)
Object	Name
Lion Modifying	"Lion Modifying"

Lion Modifying is a situation.
ResolveFunction of Lion Modifying is "[ResolveEvent Lion Modifying]".
Sarea of Lion Modifying is "Fair".
[ Quest requires all three ]
when play begins:
	add Lion Modifying to BadSpots of MaleList;
	add Lion Modifying to BadSpots of FemaleList;
	add Lion Modifying to BadSpots of FurryList;

to say ResolveEvent Lion Modifying:
	if borisquest is 0:
		say "     Wandering through the cheerful midway of the fair, you hear a strange tearing noise from behind one of the maintenance sheds. Curiosity getting the best of you, you cautiously take a look behind the shed. Glancing behind the shed, you are surprised to notice one of those plush lion beasts wandering the fair, this one seems to have been tearing at a box of some sort marked 'joke gifts' letting several small pink things wrapped in plastic spill out. As you watch in surprise, the lion rips and tears at the plastic, seeming to have trouble with his soft plush claws and stuffed teeth, finally though it manages to work the package open, and the pink item inside spills out. You have a momentary glimpse of the item as it rolls into view, and are surprised to note it seems to be a rubbery bit of plastic stretched over a cock-shaped bit of packing, then your view of the item is temporarily obscured again as the lion pounces on the bit of rubber eagerly. With its ass up in the air as it pounces, you notice that unlike most of the lions in the fair, this one still seems to be completely neuter, which makes you wonder what it needs the fake cock for.";
		say "     Your curiosity is soon answered as the lion clumsily manipulates the fake rubbery thing down to where its own cock should be, giving you a better view of the 'joke' gift, and the lions ass at the same time. You think the rubbery item is some form of condom material shipped for display on a fake cock... but whatever it is, the lion seems intent on settling the base up against where its cock should be, and then pressing it inwards. The beast roars in what seems to be pain, causing you to blink for a second, then you note the rubbery fake cock seems to be changing slightly, becoming slightly pointed, and sinking into the lion, the displaced stuffing and fabric bulging out to form a pair of balls and a sheath for what looks more and more like a regular cat's cock! You are shocked to see what is basically just a shape and some stuffing slowly converting into nearly living material as the plush lion continues to shove it into itself roughly, yowling in and growling as it does so. Then again you remind yourself that the plush creature itself was little more than fabric and stuffing at one point most likely, and it seems to be moving around and is pretty much alive itself. The creature continues to roll around the area, its paws touching its new acquisition, and soon it starts rubbing its new cock on anything in sight, at this point you decide it would be best to get out of there while you can, before it tries rubbing its new cock on you... Wandering away down the midway again, you have a strange thought and wonder if [if boristalk > 0]Boris[else]that lion mascot[end if] might be interested in hearing about your strange encounter with the lion.";
		increase borisquest by 1;
	else if boristalk is 2:
		say "     Hunting through the fair again, you find the maintenance shed where you spotted the lion modifying itself, and recalling Boris's request, you carefully go around back to see if you can find something similar for him. Looking at the area, it seems to be deserted, though there is obviously sticky residue from where a number of plush beasts appear to have 'celebrated' their new additions. Moving over to the torn open box, you note the large amount of empty packets scattered around. Picking one up it reads, 'King Kongdoms, they feel so real it's almost like your own cock!' Sighing you have to admit under the circumstances the condoms do seem to be pretty real indeed. Doing a quick search of the area before any of the creatures can return, you find plenty of empty packages, but none of the actual product left, looking through the other boxes back here doesn't turn up anything of use either. Sighing you slump your shoulders in defeat, it looks like you will be returning to Boris empty handed this time.";
		increase borisquest by 1;
		now Resolution of Lion Modifying is 1; [info for modding Boris]
		now Lion Modifying is resolved;
	else:
		say "     Passing by the area where you saw the lion modifying itself, you shudder for a minute as you recall the strange sight, although for some reason thinking of lion cocks reminds you of Boris, who is unfortunately missing his.";


Instead of conversing the Lisa while borisquest is 3:
	say "     'You're looking for a what?' Lisa says in surprise, 'Um I don't think we have that brand of condom right now, would another brand suffice?'";
	say "     You explain that you aren't sure if another brand would work the same way, since you aren't sure why or how this brand seems to work to begin with. 'That's a strange comment,' Lisa says, the mousetaur obviously puzzled. 'Work for what? No look why don't you explain exactly what you need to happen, and I'll see what I can do to help.'";
	say "     You take time to explain Boris the lions predicament, and when she stops laughing you explain what you saw with the plush lions and the changes that you and Boris hope can be duplicated for him as well. 'That poor... well lion,' Lisa says, still snickering slightly at the situation, 'Well now that I know what the problem is, how could I not try to help out?' Lisa asks you rhetorically, as she moves her long mouselike form out from behind the counter and starts searching through the back of the store. 'I think I might have something here even better than what you were thinking about using, if it is still here anyways... Ah here we go!' she exclaims triumphantly, a large grin crossing her face as she returns carrying something rather large and pointed. As she sets it down on the counter, you get a closer look at the item, and find yourself grinning in amusement as well.";
	say "     Looking at the item Lisa set out on the counter, you are amused to find it appears to be a rather large novelty dildo, made of some kind of red substance. The dildo is both slightly pointed and barbed, and in all ways other than its sheer size appears to resemble the cock of a cat. Wondering who would purchase such a thing, you send Lisa a questioning glance. The mousetaur shrugs, seeming to have anticipated your reaction, 'You would be surprised at the kind of stuff some people buy here, to be honest you are just lucky we still had that one around, that and the canine variety were hard to keep on the shelves,' Lisa says, causing you both to chuckle slightly as you stare at the barbed dildo. Shaking your head sadly, you start to ask her how much this is going to cost, but she waves her paw and cuts you off before you can finish asking. 'Just take it, it's the least I can do to help this poor lion friend of yours out,' she says with a buck toothed grin at the situation. 'Besides,' she continues, 'it isn't like accounting for all the stock is going to be a major priority for me anytime soon. If the store owner is even around afterwards, he can bitch at me about it then, possibly literally if he ran into one of those German shepherds out there,' she says with a smile as she hands you the feline dildo. 'Better you find a use for it with your friend out there. Hopefully it will work as well or better than those condos. If it doesn't, though, come on back and see me and we will find something else for the poor lion, and if it does work... well, you and the lion can come on back and see me and maybe we can stress test it for him,' Lisa says with a smile and a wink.";
	increase borisquest by 1;


Section 14 - Locked lockers

Table of GameEventIDs (continued)
Object	Name
Locked Lockers	"Locked Lockers"

Locked Lockers is a situation.
ResolveFunction of Locked Lockers is "[ResolveEvent Locked Lockers]". The level of Locked Lockers is 6.
Sarea of Locked lockers is "Fair".
[ Quest requires all three ]
when play begins:
	add Locked Lockers to BadSpots of MaleList;
	add Locked Lockers to BadSpots of FemaleList;
	add Locked Lockers to BadSpots of FurryList;

to say ResolveEvent Locked Lockers:
	if Christyquest is 0:
		say "     Traveling through the fair, you note a sign up on a half hidden door. The sign says 'Employee lockerups, authoritised personnel only.' Grinning a little at the amusing misspelling, you wander over and try the door, figuring if there is anything of use to be found, it might be in an employee locker room. Unfortunately the door is locked, and you can't seem to find any other way into the area. Sighing, you move back off into the fairgrounds.";
	else if Christyquest is 1:
		say "     Traveling through the fair, you note a sign up on a half hidden door. The sign says 'Employee lockerups, authoritised personnel only.' Grinning a little at the amusing misspelling, you wander over and try the door, figuring if there is anything of use to be found, it might be in an employee locker room. Unfortunately the door is locked, causing you to sigh and turn to leave, only to remember the key Boris gave you earlier! Turning back to the door, you try out the key, and success! The door opens into a rather nice, well-lit locker room, though the room appears to be in a bit of disarray, since it looks like several people tried to make a stand in here. Indeed as you move inside the room you find some of them are still here! Or what is they have become anyways!";
		challenge "Rubber Tigress";
		challenge "Rubber Tigress";
		say "     Recovering from the unexpected assault, you take another look around the room, from the looks of the room and the smell of sex in the air, somehow you doubt those were all the participants in whatever happened here, making you eye the two other doors leading out of the room with some trepidation. Deciding it might be best just to be about your business as quickly as possible, you search the room for the box Boris asked you for. You find several strange items, and even a couple of cans of soda someone had stuck in their locker, but are about to give up on the package, when you notice a rather unwieldy box stuck back on top of some of the lockers. Hauling the box down, you note it has the letters 'Christy' scrawled on the top in black marker, you wonder what this Christy could have had that Boris thinks will be so helpful. Sadly the box is tied up tight with several bits of twine, and you don't want to annoy Boris if he needs the box unopened, you decide just to take it back to him to find out. Besides, you think as you hurry out of the room, you thought you heard something coming from one of the other doors.";
		ItemGain soda by 2;
		now Christyquest is 2;
		now Resolution of Locked lockers is 1;
		now Locked lockers is resolved;

Fair Events ends here.
