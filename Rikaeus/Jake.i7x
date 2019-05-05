Version 1 of Jake by Rikaeus begins here.
[Version 1 - Introducing Jake, a super focused art-student]

[ HP of Jake                                               ]
[ 0: Have not met                                          ]
[ 1: Found at the dorms, asked to visit at Creative Street ]
[ 2: Met at Creative Street, requested to find art supplies]
[ 3: Found Art Supplies, Can Return                        ]
[ 4: Have returned, unlocked Jake's room in the Dorms      ]

[ Lust of Jake                                             ]
[ 0: Player has not had oral with Jake                     ]
[ 1: Player has had oral with Jake                         ]

Table of GameEventIDs (continued)
Object	Name
Panda Inspiration	"Panda Inspiration"

Panda Inspiration is a situation.
The sarea of Panda Inspiration is "Campus".

when play begins:
	add Panda Inspiration to badspots of guy;

instead of going to Tenvale College Male Dorms while (Panda Inspiration is not resolved and LastCampusWalkin - turns > 0 and HP of Jake is 0 and a random chance of 1 in 3 succeeds):
	move player to Tenvale College Male Dorms;
	FirstJakeEvent;

instead of resolving Panda Inspiration:
	move player to Tenvale College Male Dorms;
	FirstJakeEvent;

to FirstJakeEvent:
	say "     When you head on into the hallway that makes up the student lounge on the first floor of the male dorms you suddenly bump into somebody. Turning to whoever you ran into you hear a voice apologize as you do. 'Oh I'm sorry, I wasn't paying attention.' A low-toned voice emanates from them. When you finally see them, you're intrigued, at the very least because of his appearance and the worry on his face. What's before you is obviously a college student that has to be in art classes with the 'Art is Life' shirt and the paint splatters all over his clothes. Beyond that he appears to be a male panda, [if scalevalue of player < 4]and bigger than you in just about everything. [else if scalevalue of player is 4]and the same size as you interestingly enough. [else if scalevalue of player > 4]and smaller than you, which amuses you a little bit. [end if]";
	say "     The panda looks you up and down before he gets a look on his face, the worry he previously had on it changing to something you can perceive as hope. 'Could you possibly help me with something?' he asks, a slight bit of desperation to his tone. You wonder as to what he possibly needs from you that could be so urgent, after all he just met you. Saying as much, you're sure that if the panda could blush, he would. 'Ah, well I have an assignment due real soon and you're the perfect help for it...' the male says, trailing off. You raise a brow at him causing him to look even more embarrassed. 'Oh I'm so sorry! I'm asking this question without introducing myself! The name's Jake!' he says with a smile, holding out his hand.";
	WaitLineBreak;
	say "     Taking a look at the panda's paw before mentally shrugging and accepting it, you shake his hand. His smile widens a bit before he rubs the back of his head with his free hand. Suddenly though he looks as if he's had an idea. 'Hey! Before I ask you to help, how about I show you what I do?' Jake asks you. Now that's an interesting proposition, asking him what he means. 'Well, I want to show you my gallery, it'll help you understand what I do,' the panda says. You nod, what he's asking makes sense, him basically giving you an idea of what you're getting yourself into is a fair offer. So with a shrug you nod your head. He smiles at you and bounces lightly on the pads of his feet.";
	say "     'That's great! The campus lets me display my works in the hall on Creative Street so if you could meet me on the street itself that'd be great.' Jake nods as he says this. 'It's in the northwestern part of the campus if you don't know where it is. Also, I may be a while so if I'm not there when you show up don't worry.' He continues, giving you instructions on how to get there. You give your thanks to the panda for the information and he smiles at you widely. 'No, thank you! If you agree I can finally finish my assignment!' he says cheerfully. You two say your goodbyes before he departs, probably to finish what he was doing here.";
	now HP of Jake is 1;
	now Panda Question is not resolved;
	now Panda Inspiration is resolved;
	now PlayerMet of Jake is true;

Table of GameEventIDs (continued)
Object	Name
Panda Question	"Panda Question"

Panda Question is a situation.
Panda Question is resolved.
The sarea of Panda Question is "Campus".

when play begins:
	add Panda Question to badspots of guy;

instead of going to Creative Street while (Panda Question is not resolved and LastCampusWalkin - turns > 0 and HP of Jake is 1 and a random chance of 1 in 3 succeeds):
	move player to Creative Street;
	SecondJakeEvent;

instead of resolving Panda Question:
	move player to Creative Street;
	SecondJakeEvent;

to SecondJakeEvent:
	say "     Managing to find your way to where Jake wanted you to wait you stand there for a few seconds before you hear a familiar voice come up behind you. 'Oh cool, it seems like I just made it!' the panda says, moving to your right side, a smile on his face. You nod at him, telling the furry male that you just got here. 'That's great, I can show you to the art gallery. It's not far from here,' he tells you, leading the way. As you walk through the art covered street he points out different pieces of art on the buildings, who painted them, and the inspiration behind them. The entire exchange is rather nice so it's rather surprising when you quickly arrive at the hall that Jake was talking about.";
	say "     'Here it is, the Tenvale Art Gallery. Now, my art isn't the only one that's usually on show here, as they rotate who gets the hall based on whose assignment is due next,' he says, pulling out a set of keys and putting one of them in the door. Once it's unlocked he heads on in, holding the way open for you. You nod your head in thanks and head on in. 'If you can, flick the light switch to your left,' he requests from behind you. Looking for what he mentioned you spot it in the darkened room and flip it, bringing light to the gallery. When you turn towards the center of the room you spot the panda in a showman-esque pose with his arms spread wide practically presenting the place to you. 'So, what do you think?' he asks, looking rather hopeful.";
	WaitLineBreak;
	say "     What you see is rather magnificent to say the least. It appears that Jake is diversified in what he does for art as you let your eyes roam the gallery hall. You see many paintings adorning the walls but not only that you see sculptures, pottery, and he even seems to have dabbled in photography, though not as much as the others. Wandering from painting to portrait you can sense a bit of emotion in each one, a little bit of what the panda must have been feeling when he was making them. While you can't say you completely understand every bit of meaning behind them you do at least enjoy them.";
	say "     You say as much to the panda who lets out a big smile and you're sure that if he could he'd be blushing. 'Thanks! I worked really hard on all of them, some of them I put all nighters into them to get some progress done,' he says with a sheepish chuckle. You raise a brow at him, not really having realized how dedicated he was to his art before. Nevertheless you ask him about the request he had for you. He looks shocked, as if he forgot about it then nods excitedly. 'Yes! That, let me go to my temporary workspace here. So I can get my assignment papers,' Jake says, rushing off. You wait there for a bit, before that time becomes a couple of minutes.";
	WaitLineBreak;
	say "     Soon after that the panda comes back with an exasperated, almost angry look. When he approaches, you ask him what's wrong, prompting the guy to sigh. 'One of those stupid anime girls stole my art supplies again,' Jake grumbles, causing you to ask if this is a common occurrence. He rolls his eyes and then nods. 'Yeah, every once and a while a specific one of them wants to try her hand at drawing [']kawaii['] art.' His eyes seem to twitch at this as he says it. 'Like, why does she have to steal my stuff, the college has free art supplies. I worked hard for mine.' He groans before turning to you.";
	say "     'Hey, could you possibly go retrieve my stuff from them? Usually when they take it they hang out around Lecture Street, something about how it's nice and quiet for drawing or something,' he asks kindly, even bowing a little bit. You mull it over a bit before shrugging, as it's not like you won't happen upon them while exploring the campus. 'Thanks! Now I need to head back to my workspace so I can clean up after their mess. When you have my stuff, return to the street this place is on when you can,' Jake says before heading off, assumingly to where he was before. You shrug and head back out of the building and out onto the street.";
	now HP of Jake is 2;
	now Art Supply Retrieval is not resolved;
	now Panda Question is resolved;

Table of GameEventIDs (continued)
Object	Name
Art Supply Retrieval	"Art Supply Retrieval"

Art Supply Retrieval is a situation.
Art Supply Retrieval is resolved.
The sarea of Art Supply Retrieval is "Campus".

when play begins:
	add Art Supply Retrieval to badspots of girl;

instead of going to Lecture Street while (Art Supply Retrieval is not resolved and LastCampusWalkin - turns > 0 and HP of Jake is 2 and a random chance of 1 in 3 succeeds):
	move player to Lecture Street;
	ThirdJakeEvent;

instead of resolving Art Supply Retrieval:
	move player to Lecture Street;
	ThirdJakeEvent;

to ThirdJakeEvent:
	now inasituation is true;
	if HP of Jake is 99:
		say "     Returning to the scene of the crime you spot the anime girl where you found her before, in the lecture hall painting like usual. She has a bit more finished pieces of art than last time but nevertheless she's still there. Just like before, when you approach she puts down the paintbrush and turns in your direction. 'Oh it looks like the baka has returned for more punishment,' she says, getting up from the desk. As soon as she slips into a fighting stance you do the same because she's charging in your directions once again.";
		challenge "Sakura Sato";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     With one last surprisingly powerful kick from a lithe girl she knocks you to the ground, bruising and hurt. She turns around and sits back down at the desk, giving you a glance in your direction. 'If you want to try again come back here later, I can always use a good kyuukei, a break, from my art,' she says before returning back to painting. With a groan you walk off, the places she hit you hurting rather badly. Maybe you will return later like she said, you do need to get Jake's supplies from her.";
			infect "Anime Babe";
		else if fightoutcome >= 30: [fled]
			say "     Deciding that this anime girl is a bit too tough for your tastes, you turn around and turn tail, running from the room. As you do this, you can hear her yell from the building. 'That was a nice mudadzukai, or exercise in futility! I'll let you try again later!' she shouts, assumingly getting back to work as you get away from her. Once far away enough, you get your bearings together and think about what to do. Maybe you'll come back later, you need to get back Jake's supplies from her eventually.";
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Landing one last hit on her, she goes flying back and lands into the chairs that make up the lecture hall, crashing into them and sending them to the floor. With a groan she gets up and smirks. 'You got some sainou, or talent, there. Well, a win's a win,' she says with a sigh. She starts moving towards the door and as she gets to where you are she turns in your direction. 'Hey, could you tell Jake that Sakura Sato wants to learn from him?' she asks you with a hopeful look. You contemplate it for a second before nodding, as she was a worthy fight as well. The anime girl smiles at you before heading out, leaving you alone with the paint cans.";
			say "     Walking over you hum and think before deciding that you'll grab the paint cans when you plan to drop them off. However when you notice that Sakura left her drawings you have an idea and pocket them since they're easier to carry around than the paint. But you don't feel comfortable just leaving them laying around so you look around and spot a closet, to which you promptly open and thankfully find empty space. You pile the cans up and close the closet, leaving a note for the teachers to make sure the students don't touch. Once you're done you head off, as you aren't entirely sure when this lecture hall's next class is and wouldn't want to intrude.";
			now HP of Jake is 3;
			now Art Supply Retrieval is resolved;
			now Grateful Panda is unresolved;
	else if HP of Jake is 2:
		say "     Arriving at Lecture street and remembering that Jake had requested you keep an eye out for the anime girl who stole his art supplies. So, figuring you should look around you take a glancing view of the sidewalks and the buildings and notice something blatant. A splattering path of various colors of paint leading from the grass to the sidewalk and then to one of the teaching halls. Rolling your eyes at the suspiciousness and obviousness of it all, you decide to follow it. The trail leads you into the building and looking around you assume this is just a generic classroom due to the lack of posters on the wall.";
		say "     Your target is sitting in the back of the lecture hall, a very anime looking girl with the big eyes and everything. She is surrounded by what you assume to be Jake's art supplies, cans of high quality paint if the fancy labels say anything. From your position she actually appears to be a very decent artist, and she doesn't seem to be only drawing anime. However, as much as you'd like to watch her draw, you do have a task here you do need to retrieve all of the panda's tools from her. So, you approach the girl and quite rather instantly does she notice your approach, putting down the paintbrush and turning in your direction with her big eyes.";
		WaitLineBreak;
		say "     'Ugh, did Jake send you after me? I was going to return them to him after working on my kawaii art after a while,' she says with a roll of her eyes. You look at her a bit surprised, this isn't exactly how you expected her to act. She scoffs at your shocked face and stands up. 'What, you expected me to spout [']desu desu['] or say something like [']Oh! You're very kowaii![']?' she asks, a deriding look on her own expression. 'Listen bub, I'm not like most of those stupid tentacle-crazed anime girls you run into on campus,' the college student says with a bit of scorn in her voice. 'Heck I hate this Kami damned mutation but I can't change it,' she grumbles unhappily.";
		say "     You ask her just what's preventing her from asking someone else to change her? 'Cause, those stupid anime girls I mentioned earlier think I'm one of the better artists so they'd rather keep me as one of them so anytime I change they change me back,' she says before she gets into a fighting stance. 'Anyhow, if you want these supplies back, you're gonna have to fight me for them,' the anime girl says before charging right at you.";
		challenge "Sakura Sato";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     With one last surprisingly powerful kick from a lithe girl she knocks you to the ground, bruising and hurt. She turns around and sits back down at the desk, giving you a glance in your direction. 'If you want to try again come back here later, I can always use a good kyuukei, a break, from my art,' she says before returning back to painting. With a groan you walk off, the places she hit you hurting rather badly. Maybe you will return later like she said, you do need to get Jake's supplies from her.";
			now HP of Jake is 99;
		else if fightoutcome >= 30: [fled]
			say "     Deciding that this anime girl is a bit too tough for your tastes, you turn around and turn tail, running from the room. As you do this, you can hear her yell from the building. 'That was a nice mudadzukai, or exercise in futility! I'll let you try again later!' she shouts, assumingly getting back to work as you get away from her. Once far away enough, you get your bearings together and think about what to do. Maybe you'll come back later, you need to get back Jake's supplies from her eventually.";
			now HP of Jake is 99;
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Landing one last hit on her, she goes flying back and lands into the chairs that make up the lecture hall, crashing into them and sending them to the floor. With a groan she gets up and smirks. 'You got some sainou, or talent, there. Well, a win's a win,' she says with a sigh. She starts moving towards the door and as she gets to where you are she turns in your direction. 'Hey, could you tell Jake that Sakura Sato wants to learn from him?' she asks you with a hopeful look. You contemplate it for a second before nodding, as she was a worthy fight as well. The anime girl smiles at you before heading out, leaving you alone with the paint cans.";
			say "     Walking over you hum and think before deciding that you'll grab the paint cans when you plan to drop them off. However when you notice that Sakura left her drawings you have an idea and pocket them since they're easier to carry around than the paint. But you don't feel comfortable just leaving them laying around so you look around and spot a closet, to which you promptly open and thankfully find empty space. You pile the cans up and close the closet, leaving a note for the teachers to make sure the students don't touch. Once you're done you head off, as you aren't entirely sure when this lecture hall's next class is and wouldn't want to intrude. You'll definitely have to return here later for the art supplies.";
			now HP of Jake is 3;
			now Art Supply Retrieval is resolved;
			now Grateful Panda is unresolved;
	now inasituation is false;

Table of GameEventIDs (continued)
Object	Name
Grateful Panda	"Grateful Panda"

Grateful Panda is a situation.
Grateful Panda is resolved.
The sarea of Grateful Panda is "Campus".

when play begins:
	add Grateful Panda to badspots of guy;

instead of going to Lecture Street while (Grateful Panda is not resolved and LastCampusWalkin - turns > 0 and HP of Jake is 3 and a random chance of 1 in 3 succeeds):
	move player to Lecture Street;
	FourthJakeEvent;

instead of resolving Grateful Panda:
	move player to Lecture Street;
	FourthJakeEvent;

to FourthJakeEvent:
	say "     Deciding that it's time to return Jake's supplies to him, so you make your way back to the lecture hall where you left them. Seeing the door open you walk on in and see that there's a deer in a t-shirt and dress pants standing at the professor's desk. As soon as he sees you heading for the closet he walks over key in hand. 'Ah you must be the one who put the sign over here I presume?' he asks. You nod and say you were storing somebody's supplies that were taken from him until you could return them to him. 'Ah, that sounds like you're rather nice friends,' the teacher says with a smile. You shrug and tell him you wouldn't necessarily say that you are that close yet but you'll see. You thank him again for keeping track of the items and he tells you no problem as he opens the closet.";
	say "     After grabbing Jake's art supplies you make your way to Creative Street where you find the gallery door open. Dipping your head in and taking a look around you see the light's on and that people are in here, glancing at the various art on display. You can see your panda friend walking from area to area, giving some info on each painting or pottery or sculpture and on what inspired him to make it. A few minutes later Jake spots you at the door and smiles, gesturing for you to follow. 'This way, I'll show you to my temporary workspace so you can drop those off,' the panda says to you. Shrugging your shoulders you make your way towards where he's heading.";
	WaitLineBreak;
	say "     You're led to what appears to be the back of the gallery, a double door blocking the way. Jake takes out a key and unlocks it, revealing a simple room with a tarp, a sculpting stand, a pottery stand, and an easel. 'This room's rather bland compared to my dorm room but they said I needed a workspace closer to the gallery,' he says idly before instructing you to put down the cans in a small corner of the room. While he's asking you to do this you decide to bring up what Sakura asked and he frowns. 'Ah-uh, I really didn't think of her situation as that. I don't actually pay attention to much of the college outside of my art classes, so I didn't know that the other groups could be like that,' he mumbles.";
	say "     He seems to think on it for a while before speaking up again. 'I'll see about talking to her sometime later but for now I have a question that I wanted to ask earlier,' Jake explains, sitting on a nearby stool. Rather quickly he starts to look embarrassed, making you think what he was about to ask you about was something he normally wouldn't. 'So... uh... I have been given an assignment in one of my classes to... draw someone naked and I think you'd be perfect for it!' the panda says, shouting and rushing the last bit, causing you to look at him with a bit of shock. As soon as he sees your expression he hides his face behind his paws and groans. 'I knew this wouldn't exactly go as planned, and I must have just made it horribly awkward,' he moans in exasperation.";
	WaitLineBreak;
	say "     You chuckle a little and tell him that yes, it didn't go exactly as planned. The two of you have just met so it isn't exactly the best idea for him to go and ask for you to go au naturale and him to paint you. However, you do think for a minute on the problem before coming up with a possible solution that would save both you your modesty, if you even had it in this era, and Jake his dignity. So, walking up to the panda you pat him on the shoulder and speak up suggesting that you offer to at a later date guide him outside the campus to find a candidate for his painting. That seems to cheer him up a lot, enough to make him smile. 'You would do that for me?' he asks, hesitantly. You nod, saying that he looks like a nice guy.";
	say "     Immediately as you say that he jumps at you, giving you a big hug, causing you to shout 'Oof!' and tumble to the floor. 'Thank you! Thank you! Thank you! I'll see if my teacher will grant me an extension on my assignment,' Jake says cheerfully and happily encasing you in his arms. You chuckle and pat his back, happy to at least make someone's day bright. Though you do ask him how you'll get ahold of him. The panda pulls back and nods. 'Oh yeah, you can come to my room. I'm there most of the time. It's on the second floor of the dorms on the east side,' Jake explains, smiling wide. You nod and say you should probably let him return to work as the people at the gallery might be wondering what he's doing. He nods hugs you tight one last time before heading out the door, with you following, though you leave the gallery instead of staying like he does.";
	now HP of Jake is 4;
	now Grateful Panda is resolved;
	move Jake to Jake's Room;
	change east exit of Second Floor Male Dorms to Jake's Room;
	change west exit of Jake's Room to Second Floor Male Dorms;
	move player to Creative Street;

Table of GameCharacterIDs (continued)
object	name
Jake	"Jake"

Jake is a man.
[physical details as of game start]
Humanity of Jake is 80. [lives at the campus]
ScaleValue of Jake is 4. [orc-sized]
Cocks of Jake is 1. [has a cock]
Cock Length of Jake is 10. [has a ten inch cock]
Cock Width of Jake is 5. [size of balls]
Testes of Jake is 2. [no balls]
Cunts of Jake is 0. [no vagina]
Cunt Length of Jake is 0. [Doesn't have a vagina to get stretched]
Cunt Width of Jake is 0. [Doesn't have a vagina to get stretched]
Breasts of Jake is 2. [Has two normal nipples]
Breast Size of Jake is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
TwistedCapacity of Jake is false. [can not take oversized members without pain]
Sterile of Jake is true.
PlayerMet of Jake is false.
PlayerRomanced of Jake is false.
PlayerFriended of Jake is false.
PlayerControlled of Jake is false.
PlayerFucked of Jake is false.
OralVirgin of Jake is true.
Virgin of Jake is true.
AnalVirgin of Jake is true.
PenileVirgin of Jake is true.
SexuallyExperienced of Jake is false.
MainInfection of Jake is "".
The description of Jake is "[JakeDesc]".
The conversation of Jake is { "<This is nothing but a placeholder!>" }.
The scent of Jake is "     Jake gives off a scent of clay and paint oils, which is to be expected with the panda's occupation as an art student.".

to say JakeDesc:
	say "     Glancing in the painting panda's direction you take a good look at him. Currently he's wearing a black, ratty, t-shirt and worn jeans which are both splattered with paint. You take a safe assumption and guess that it's clothing that he doesn't care about, hence why wearing it in the first place while working. Other than the clothing, Jake looks like your typical panda, with the black and white fur and the tail sticking out of the butt of his jeans. Taking a closer look at his face you can see he has a blissful expression as he works at his painting.";

instead of conversing the Jake:
	if HP of Jake < 4: [should be not yet available]
		say "     ERROR: Jake shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Jake]";
	else:
		say "     Walking up to the well-focused panda, you tap him on the shoulder, causing him to jump a little, thankfully not ruining his painting. He turns in your direction and smiles before speaking. 'Oh, hey there! What do you want?' he asks.";
		say "[JakeTalkMenu]";

to say JakeTalkMenu:
	LineBreak;
	say "What do you wish to talk about with the artistically inclined panda?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Art";
	now sortorder entry is 1;
	now description entry is "Ask the panda what inspired him to take up art";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Assignment";
	now sortorder entry is 2;
	now description entry is "Ask him why he has to draw someone naked";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "His Art"):
					say "[JakeArt]";
				if (nam is "His Assignment"):
					say "[JakeAssignment]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You apologize to the panda for interrupting his painting and say you forgot what you were going to say. He chuckles and tells you it's no problem and goes back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JakeArt:
	say "     The panda hums for a second, putting down his paintbrushes to thinking about your question. 'Well, if you want to know why I got into art you'd have to go back to when I was a kid,' Jake says, before gesturing for you to follow him to the left side of the room and onto the couch. Mentally shrugging your shoulders and following him, you join him, taking a seat. 'My mother and father were art professors so they taught me how to draw and paint from a young age,' the panda says, leaning back against the couch. 'Of course I wasn't that interested, as I had wanted to be a doctor growing up,' Jake says with a chuckle. You raise a brow at him, rather surprised, unable to picture the art obsessed panda wanting to be in the medical profession.";
	say "     'Yeah, but my parents understood and supported me, though they still taught me what they knew. However, then came when I was sixteen...' the panda says, trailing off. Jake then glances to a picture frame on his desk of a human family, one that you suspect is his. 'Dad got cancer and it was bad, we went to treatments for months for him but nothing was helping, By the time I was seventeen he passed away,' your friend says in a semi-emotionless voice. 'I delved into my high school studies and was doing what little research on cancer I could do while also taking up art some more,' Jake says before scoffing a little.";
	WaitLineBreak;
	say "     'Then two years later after getting into Tenvale and spending a year here, the nanites hit. Because of how old my father was, he ended up dying due to them so I lost him and I was alone and all I had was my studies and my art,' Jake says with a sigh before his expression changes into a smile. 'A day later the new Dean approached me. He talked with me about my situation and asked if wallowing in despair is how my parents would want me to act,' your friend says, chuckling at the last bit. The male glances towards his art workspace and he gains a blissful look on his face. 'He then told me if I wanted to remember my family then perhaps a change in career was in mind for me, especially since the nanites took care of most if not all diseases,' Jake explains.";
	say "     You speak up, asking if that was when he decided to change to an art major. The panda nods and fiddles with his hands in his lap. 'I immediately was thankful for the suggestion because I thoroughly enjoyed my art classes,' Jake says before getting up. The panda's situation sure was rough but it looks like he's in a good place now though, at least according to what you know. 'So, that's the story as to why I'm so into art hopefully I didn't bring your spirits down too much,' the male says with a chuckle. You smile and shake your head, standing up and saying that you're grateful for the story, letting him get back to his work.";

to say JakeAssignment:
	say "     As soon as you mention his nude painting assignment you're pretty sure he'd be blushing if it wasn't for his fur as noted by his embarrassed look. 'W-well, I decided to take a life drawing class and the whole idea of the class is painting or drawing people,' Jake says, stuttering out his answer. You raise a brow and bring about a question, saying don't they usually have models for that? The panda instantly looks at the ground and mumbles something, causing you to ask him to speak louder. 'I said, they wanted us to draw someone from outside the class and I thought you fit the profile,' your friend says. You 'ah' and nod your head, understanding his original reaction to you. Patting him on the shoulder you smile at him before saying that you'll definitely help him find someone worthy of a painting. He returns the facial expression and gives his gratitude. 'Thanks, I appreciate it!' Jake says, before returning to his work.";

instead of fucking Jake:
	if (lastfuck of Jake - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     As you approach the panda to grope him, he turns towards you with an apologetic look. 'I'm sorry friend, but I'm still drained from last time,' Jake says to you before returning his work.";
	else:
		say "     Walking up to the painting panda you grope at his clothed ass, causing him to yelp and drop his paintbrush. Turning in your direction he looks highly embarrassed but aroused as well, clearly ready for whatever you have planned for him.";
		wait for any key;
		say "[JakeSexMenu]";

to say JakeSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Oral";
	now sortorder entry is 1;
	now description entry is "Give the panda a blowjob";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Oral"):
					say "[JakeSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step away from the panda who gives you a slightly angry look, obviously sexually frustrated from your ass grope.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JakeSex1:
	say "     Grabbing the panda by the hand you pull him over to his couch before you push him down so that he's sitting. Taking a glance over his body you're sure that you'll enjoy this[if scalevalue of player < 4] especially if the package matches the body[end if]. Eager to begin you kneel down and begin to unbutton Jake's worn jeans, revealing that he appears to go commando when he's painting, showing [if scalevalue of player < 4]a rather large sized cock[else if scalevalue of player is 4]a decently sized cock[else]an average sized cock[end if] that matches the male. Bringing your face to his furry balls you inhale, taking in the underlying musk that hid under the paint oil scent.";
	say "     Deciding to get to work, you lap your tongue at his scrotum, tasting the sweat that had been gathering from his, you assume, hours standing while painting and his walking about the school to head to class. Jake lets out a moan from your actions, clearly enjoying what you're doing. In fact, he leans back and leaves you to do as you please which causes you to smirk. Turning your attention back to his balls you continue to lick at them, occasionally taking one of the orbs into your mouth to suck on. While doing this you mindlessly contemplate what you'll do to mess with the panda to make it an enjoyable experience before getting a few ideas.";
	WaitLineBreak;
	say "     Deciding to enact your first idea, you start trailing up the length of his cock before reaching the head of it. Once you get there you wrap your mouth around the tip and start lightly sucking, swirling your tongue around it. This prompts Jake to moan and grip tightly at cushion of the couch. Happy that your actions got a reaction, you continue, slowly moving down on his manhood, taking it inch by inch, making sure to use your tongue as best as you can to make the panda come undone. When you manage to get all of his cock in your mouth you take a look and see that he's heavily panting. You're obviously doing a good job by what you can see.";
	say "     Deciding to take it one step further, you take one of your free hands and maneuver it to his hole and search around for his entrance. Once you find it, you push a finger in and start wiggling it around in hopes of finding his prostate. Though by the sounds that Jake's making you might not as the sensation alone appears to be having an effect on him. 'Sheesh, you're good at this!' he groans, his head staring at the ceiling in pleasure. Deciding to bring it to an end, you start moving your mouth up and down on his cock, leaving just barely the tip in before bringing his length all the way back in, effectively fucking your face on his cock. Seconds later though you manage to find what you're looking for as evidenced by the panda moaning several expletives as your finger rubs against something.";
	WaitLineBreak;
	say "     The effect is rather instantaneous and your mouth is suddenly filled with the salty taste of Jake's cum. You gulp down what you can but a lot of it spills out, leaking down your chin and dripping onto the couch and floor. Thankfully though it's not enough to choke you as the amount soon peters out, allowing you to pull off of the panda's cock, swallowing the last bit of semen that remains in your mouth. Looking up at him you can see that you thoroughly drained him as he's panting rather heavily but has a pleasured expression on his face. 'That was brilliant. I think I might have to rest for a bit before returning to work. Mind joining me up here?' he asks with an interested look. You contemplate it before shrugging.";
	say "     You hop up onto the couch and cuddle up to the panda, the coarse fur that covers his body not entirely irritating to touch, rather it's actually pleasant. To your shock he pulls you into a kiss, licking off some of the cum that remains around your lips. When he pulls back he smiles with a smug look. 'I taste rather good, don't I?' he asks himself, causing you to groan and slap his shoulder. The two of you lay there and end up falling asleep on top of each other on the couch. About two hours later you're woken up by Jake who's looking at you with a smile. 'I figured I should wake you up, I woke up about an hour ago but I didn't want to disturb you,' he says, helping you off the couch.";
	WaitLineBreak;
	if Lust of Jake is 1:
		say "     You thank him for the help and stand up, stretching and letting the cracks in your back pop. Turning around you glance at the portrait he drew of you while sleeping. You admire it for a few minutes, enjoying the thorough detail that Jake put into it. He even managed to draw himself into the portrait, of course with pants considering the activity you were doing at the time. The fact he could do that surprises you and gives you some respect for his skill as an artist. You hear a chuckle from behind you and turn and see your panda friend. 'I'm glad you enjoy the painting, I consider it one of my finer works,' he says. You nod and give a sound of agreement before letting him return to his work as you should probably get going.";
	else if Lust of Jake is 0:
		say "     When you stand up and stretch you notice a completed painting sitting on Jake's easel. What's very noticeable is the fact that it's a portrait of you and him sleeping on the couch. Walking up to it, you take a closer look at it. When you do, you're rather surprised to see it's very detailed down to every part of you. What shocks you even more is the fact that the panda drew himself in, which you're pretty sure he had to be awake to do. Your friend walks up from the right and smiles at the portrait. 'I did that while you were sleeping, you were kind of an inspiring subject so I couldn't help but paint you. Though the hardest part was getting me in it,' Jake says with a hum. You turn to him and praise the guy for his art, as you do thoroughly enjoy it. This instantly causes the panda to be embarrassed but clearly happy.";
		say "     'Thanks! I was thinking of hanging it up over the couch, since that's where it took place,' he says with a contemplative look. You nod your head and say that'd be a perfect place for the portrait. He then gets a determined look on his face and agrees with you. 'Then that's where it'll go!' he says before taking the painting and bringing it over to where the couch. Once there he hangs it on a nail there, nodding at where it is. He returns to you and smiles with an embarrassed look. 'Ah, uh thanks for earlier again...' he says, looking down at the floor a few seconds later. You chuckle and say it wasn't a problem and say that you should get going. He nods and turns to the easel and puts a new canvas up before getting back to work.";
		now Lust of Jake is 1;
		now PlayerFucked of Jake is true;
	now lastfuck of Jake is turns;

Jake ends here.
