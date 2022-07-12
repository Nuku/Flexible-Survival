Version 1 of Richard by Wahn begins here.
[ Originally authored by Rikaeus                     ]
[ Version 1 - Creation of Richard the NPC            ]

[ SatyrFratRichardRelationship                                ]
[                                                             ]
[   0: default number                                         ]
[   1: Player and Richard fought the scuttlers                ]
[   2: Distracted Richard with sex                            ]
[   3:                                                        ]
[   4: Richard is now a satyr                                 ]
[  98: punched him (without him knowing it was you)           ]
[  99: punched him                                            ]

a postimport rule:
	if "Player Introduced to PAN" is listed in Traits of Richard:
		change the east exit of PAN Frat South Hallway to Richard's Room; [connecting the location]
		change the west exit of Richard's Room to PAN Frat South Hallway; [connecting the location]

Table of GameRoomIDs (continued)
Object	Name
Richard's Room	"Richard's Room"

Richard's Room is a room.
Description of Richard's Room is "[RichardRoomDesc]".

to say RichardRoomDesc:
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90: [satyr]
		say "     Richard's room is about what you expect from a normal college student, only moderately tidy but with nothing much worse than some pieces of clothing scattered across the ground. You do notice some scuffmarks on the walls though, as it looks like he might have accidentally scraped them with his horns, and there are some hoof-scrapes on the wooden floorboards too. Not that he seems to be damaging anything on purpose, but Richard's only been a satyr for a little while, so he's still adjusting to his new body. Looking around a little allows some glimpses of who the young man is, from personal items to his choices in decorations. For one thing, there's a lacrosse stick standing in one corner, with a helmet racked up on a hook beside it, as well as a stack of folded sports jerseys on the nearby dresser. Also on that side of the room, there's a closet with an open folding door. Continuing your casual inspection of the room, you take in the various posters he has up to cover most of the free wall-space. Richard seems to be a superhero movie fan, with a mix of both male and female heroes gracing his walls in the typical crowd-pleasing postures.";
	else: [regular]
		say "     Richard's room is about what you expect from a normal college student, only moderately tidy but with nothing much worse than some pieces of clothing scattered across the ground. Looking around a little allows some glimpses of who the young man is, from personal items to his choices in decorations. For one thing, there's a lacrosse stick standing in one corner, with a helmet racked up on a hook beside it, as well as a stack of folded sports jerseys on the nearby dresser. Also on that side of the room, there's a closet with an open folding door. Continuing your casual inspection of the room, you take in the various posters he has up to cover most of the free wall-space. Richard seems to be a superhero movie fan, with a mix of both male and female heroes gracing his walls in the typical crowd-pleasing postures.";

Richard's Posters is a backdrop. It is in Richard's Room. Description of the Richard's Posters is "[Richard's Posters Desc]".

to say Richard's Posters Desc:
	say "     A fair number of posters are hung up along the walls of the room, with all of them being depictions of superheroes. Of note is that they're somewhat more 'risque' depictions of them, with enticing postures showing off muscles and curves. There is a mix of males and females, though as you look closer and do a rough count, you can see that most of the pictures are men. For example, at the foot of Richard's bed is a large poster of Aqua-Dude, all tattooed and with nothing more than a gold and green speedo to cover his hunky body, and there's two pictures of Black Lion too, showing him in a 'prowling' pose that sticks his tight spandex-covered, very well-rounded ass out almost indecently. Between those two, the attractive features of Red Widow smile wickedly out from a poster, with her sticking her breasts out to draw attention to herself. Why she's soaking wet in the picture and has her blouse clinging to her curves is anyone's guess.";
	TraitGain "Posters Seen" for Richard;

Richard's Photos is a backdrop. It is in Richard's Room. Description of the Richard's Photos is "[Richard's Photos Desc]".

to say Richard's Photos Desc:
	say "     On the writing desk with Richard's computer, you can see a number of picture frames lined up next to each other. Having a closer look, you can see what seems to be a family photo, with Richard, his parents, as well as another woman that looks to be related to his mother, and a somewhat younger teen with slightly darker skin than the rest of the family standing next to him, with Richard having his arm around the boy's shoulders. Looks to be a happy and close family, all around. The next picture is of Richard with the classic graduation robe on, complete with the square hat and a tassel dangling down from it, with his diploma in hand. Then there are two pictures following, one with a younger Richard in a scout uniform, beaming proudly, and the last with Richard in a scout leader's uniform, surrounded by a whole group of happy little scouts smiling at the camera.";
	TraitGain "Pictures Seen" for Richard;

Richard's Lacrosse Gear is a backdrop. It is in Richard's Room. Description of the Richard's Lacrosse Gear is "[Richard's Lacrosse Gear Desc]".

to say Richard's Lacrosse Gear Desc:
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90: [satyr]
		say "     A professional quality lacrosse stick is leaning in the corner, showing some spots where the lacquered-color has rubbed off from frequent use. The helmet racked on a hook on the wall has had some recent work done on it, with two slits sawed into it so it'll be able to fit on Richard's now horned head. The game must be pretty important to him, if he immediately spent time on modifying his equipment so he can still use it as a satyr.";
	else: [regular]
		say "     A professional quality lacrosse stick is leaning in the corner, showing some spots where the lacquered-color has rubbed off from frequent use. The helmet racked on a hook on the wall also is somewhat scratched and well-used, showing that Richard plays to win.";
	TraitGain "Lacrosse Gear Seen" for Richard;

Richard's Closet is a backdrop. It is in Richard's Room. Description of the Richard's Closet is "[Richard's Closet Desc]".

to say Richard's Closet Desc:
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90: [satyr]
		say "     The closed in the room has folding wooden doors that have slits on them to allow some air-flow. One of the doors is open, and you can see that the clothing inside all seems fairly orderly and put away. Looks like Richard isn't using too much of it anymore, now that he has become a satyr. Of special note are two hangers with khaki shirts, somewhat pushed apart from his regular clothes. Seeing a green sash hang over one of them, you'd guess that these are scout uniforms.";
	else: [regular]
		say "     The closed in the room has folding wooden doors that have slits on them to allow some air-flow. One of the doors is open, and you can see some decently tidy clothing stored inside. Of special note are two hangers with khaki shirts, somewhat pushed apart from his regular clothes. Seeing a green sash hang over one of them, you'd guess that these are scout uniforms.";
	TraitGain "Scout Clothes Seen" for Richard;

Section 1 - Basic Setup for Richard

An everyturn rule:
	if daytimer is night:
		now Richard is nowhere;
	else if daytimer is day and Richard is not in Richard's Room:
		move Richard to Richard's Room;

Table of GameCharacterIDs (continued)
object	name
Richard	"Richard"

Richard is a man.
[Physical details as of game start]
ScaleValue of Richard is 3. [human sized]
SleepRhythm of Richard is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Richard is 1. [X cock]
Cock Length of Richard is 8. [X Inches]
Ball Size of Richard is 4.
Ball Count of Richard is 2. [X balls]
Cunt Count of Richard is 0. [X pussy]
Cunt Depth of Richard is 0. [X Cunt]
Cunt Tightness of Richard is 0. [X Cunt]
Nipple Count of Richard is 2. [X nipples]
Breast Size of Richard is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Richard is false. [can not take oversized members without pain]
Sterile of Richard is true.
PlayerMet of Richard is false.
PlayerRomanced of Richard is false.
PlayerFriended of Richard is false.
PlayerControlled of Richard is false.
PlayerFucked of Richard is false.
OralVirgin of Richard is true.
Virgin of Richard is true.
AnalVirgin of Richard is true.
PenileVirgin of Richard is true.
SexuallyExperienced of Richard is false.
Sterile of Richard is true. [no kids, for now]
MainInfection of Richard is "Human".
Description of Richard is "[RichardDesc]".
Conversation of Richard is { "<This is nothing but a placeholder!>" }.
The scent of Richard is "     Richard smells like sex and musk, something that you expected from a randy satyr like him. However, beneath that scent you can smell... chocolate?".

to say RichardDesc:
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90:
		project Figure of Richard_satyr_soft_icon;
		say "     The satyr boy is wearing a loose, short-sleeved t-shirt with the college's logo on it as well as a pair of camo cargo pants. The virile male is currently sitting at his computer, tapping away at the keys with an open book to his left. Upon closer examination you see that he is writing what looks to be an essay, huh. Apparently even with the nanite apocalypse, school still goes on. It's not long until Richard feels your eyes on him, causing him to turn and wave at you, a happy smile on his face.";
	else:
		say "     Richard has a tall frame, with nice muscles on his body without appearing to bulky. Looks like he's into sports, but seems to be doing something that requires a fair bit of running and dexterity, rather than brute strength. Currently he's dressed in a black Phi Alpha Nu t-shirt and jeans. As he notices your attention, he focuses the gaze of his two emerald-green eyes on you, with a smile spreading over his features. Mid-length curly hair frames his handsome face.";

Section 2 - Talking with Richard

instead of conversing the Richard:
	if SatyrFratRichardRelationship < 4: [should be not yet available]
		project Figure of Richard_human_clothed_icon;
		say "     As you walk up to Richard, who's on his computer, he turns to you with a smile. 'What's up?' he asks you, turning his chair to face you.";
	else:
		project Figure of Richard_satyr_soft_icon;
		say "     As you walk up to Richard, who's on his computer, he turns to you with a smile and nods his horned head. 'What's up?'";
	say "[RichardTalkMenu]";

to say RichardTalkMenu:
	let DoneTalking be false;
	LineBreak;
	say "     [bold type]What do you wish to talk about with Richard?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90: [satyr]
		choose a blank row in table of fucking options;
		now title entry is "His new life as a satyr";
		now sortorder entry is 1;
		now description entry is "Ask him what he thinks about his new looks";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His college life";
	now sortorder entry is 2;
	now description entry is "Ask him about his college life";
	[]
	if "Scout Clothes Seen" is listed in Traits of Richard or "Pictures Seen" is listed in Traits of Richard:
		choose a blank row in table of fucking options;
		now title entry is "Him being in the scouts";
		now sortorder entry is 3;
		now description entry is "Ask him about being a scout";
	[]
	if "Frat Leadership Lost" is listed in Traits of River_1 and "Leadership Potential" is listed in Traits of Richard and "Interim Frat President" is not listed in Traits of Richard:
		choose a blank row in table of fucking options;
		now title entry is "Discuss the possibility of him taking interim frat leadership";
		now sortorder entry is 4;
		now description entry is "Ask him about leading the frat";
	[]
	if "Interim Frat President" is listed in Traits of Richard:
		choose a blank row in table of fucking options;
		now title entry is "Ask how things are going with the interim frat leadership";
		now sortorder entry is 5;
		now description entry is "Ask him about leading the frat";
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
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "His new life as a satyr"):
				say "[Richard_Satyr]";
			else if (nam is "His college life"):
				say "[Richard_College]";
			else if (nam is "Him being in the scouts"):
				say "[Richard_Scout]";
			else if (nam is "Discuss the possibility of him taking interim frat leadership"):
				say "[Richard_Leadership]";
				now DoneTalking is true;
			else if (nam is "Ask how things are going with the interim frat leadership"):
				say "[Richard_Leadership]";
			if DoneTalking is false:
				say "[RichardTalkMenu]"; [looping back to continue talking]
			else:
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, causing a confused look to form on Richard's face. He shrugs before getting back to work on his essay.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Richard_Satyr:
	say "     As soon as you mention his satyr body to Richard, his smile widens big time. 'Oh, I absolutely love it!' he says excitedly, running a hand through his goatee. Then he lets it slide down his muscular front, fingertips trailing through his now more pronounced chest hair to then finally cup his bulge as he gives you a grin. 'Not that I had anything to complain about even before the transformation, but certain parts of the transformation sure have been a blast!' the guy says with a smile and wink, an undertone of lust in his voice. Pulling his hand away from the crotch, Richard then hooks it behind your neck, pulling you in for a somewhat demanding kiss. 'I'm thankful that you gave me this gift,' he adds after your lips part again. 'Somehow, having this new form as a satyr makes me feel... I don't know, more confident. As a human, it seemed at times like it was only a question of time before something happened to me. And I worried a lot, what would happen then, and how people would see me afterwards. My friends, employers, everyone...'";
	say "     Richard tilts his head a little, putting a thoughtful expression on his face. 'Somehow, I don't feel too anxious about it now. In the end, I look a lot like myself still and there's no stress about feeling vulnerable anymore. And hey, if anything tried something with me now, with this rack of horns here, I think I could knock them out good! ...Then again, if I were to just ram into someone's face I get the feeling that could be a whole new level of messy, haha!' Rolling his eyes up to glance at his curved horns, Richard knocks his knuckles against one, creating a thunking sound, similar to wood. 'Huh, weird! I could hear that in my head. Guess that's what you get when you literally have horns growing from it, eh?' He then shrugs with a calculating expression on his face. 'We'll see what I can and will do with these, I guess.' Experimentally swinging his head left and right a few times, he gives you a grin.";
	WaitLineBreak;
	say "     Glancing over to a picture frame standing on his dresser, he then adds, 'As for my family... they usually have been pretty open about a lot of things. I mean... after my parents married and moved out, mom's younger sister had a boyfriend who was black, and got pregnant by him. You see, back in the 80's, that was a pretty big deal in my home town, and my grandparents freaked out beyond all bounds. Kicked her to the curb, and the guy wasn't in the picture anymore either. So of course mom and dad took her in. My Aunt Rachel and cousin Robert lived with us as part of our family until I was nine. I grew up with him almost like he was my little brother, and saw how some people treated mixed kids back then. That included some screaming matches between my grandparents and my parents, with them demanding we 'throw that trash out'. Made me feel... dirty just to be related to such hate-filled people. I couldn't believe that the same grandma that had been so nice to me would say and do all of that!'";
	TraitGain "Family History" for Richard;

to say Richard_Scout:
	say "     As you bring up the scouts, Richard looks a little surprised at first about how you got to the topic, then glances over to his wardrobe. 'Oh yeah, you saw my uniforms? Been a member basically since forever... I think I was six or so when I went on the first camping trip with a group. It's a lot of fun, and you really learn a lot! Even earned me a partial scholarship.' With a happy grin on his face, the young man walks over to grab the clothes hanger with his khaki shirt and green sash, holding it across his chest. He proudly explains some of the badges and awards he collected over the years, rising in rank and finally becoming a 'falcon scout', in a leadership position. 'Since starting college and all, I haven't had quite as much time to participate as before, but there were some outings during semester breaks that I could lead.'";
	if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90: [satyr]
		say "     'I've been wondering a bit about what might happen, now that I'm not quite human anymore. I mean... being a satyr could be quite an advantage on outings in the woods. On the other hand, there's the worry that people could be distrustful of the 'horned creature' and want to keep their kids away from such 'unnatural influences'. In the end, I hope I can convince everyone that I'm still the same as I've always been. I mean, it's not like I'm going all weird in the head like we've heard some of the creatures out there in the city are!' ";
	else:
		say "     'With all the crazy changes going on everywhere right now, going out into nature will be pretty wild for a while too. I mean, there's so much that might be different now, to explore and learn anew. That's really exciting! I kinda want to be in on putting together a new scouting guide for groups.' ";
	say "After saying this, and putting the shirt back into the wardrobe, a thoughtful expression crosses Richard's face. 'You know, with none of us knowing just what will happen in the end, with this whole situation throughout the city, and possibly beyond... maybe having survival skills is even more important than everyone thought before. That could be worth bringing up with the guys...'";
	TraitGain "Leadership Potential" for Richard;
	if "Frat Leadership Lost" is listed in Traits of River_1 and "Interim Frat President" is not listed in Traits of Richard:
		say "     Hearing Richard talk like this makes you remember what you heard from River about the leadership vacuum in the frat, with their frat president currently absent. [bold type]Maybe it could be worth asking Richard if he'd be interested in stepping in?[roman type][line break]";

to say Richard_College:
	if "Family History" is listed in Traits of Richard:
		say "     Richard gives you a smile as you mention college. 'We've talked about what happened with my cousin Robert and all. Having that experience made me want to pick social work as my major. I think that's a really important field that can be used to do a lot of good. So I got something to aspire to, besides just having fun in the parties here at the house. There are less lectures these days, given that a fair number of people who were off campus are missing in action out there, but we who remain keep on going. I mean, at some point all this will be over, one way or another. And then you still gotta be able to make the world a better place, and live somehow. Even if everyone ends up looking like intelligent koalas or something, having a good education can only help you make it in the new world. So I intend to graduate - and have lots of fun in college on the way, of course. But graduate for sure!' Glancing over to the pictures on his desk, he adds on a somber note, 'Someone has to step up and make sure that no one is left behind, after all.'";
	else:
		say "     Richard gives you a smile as you mention college. 'I've picked social work as my major. And well, while parties here in the house are nice, I think it is really important to keep up your studies. There are less lectures these days, given that a fair number of people who were off campus are missing in action out there, but we who remain keep on going. I mean, at some point all this will be over, one way or another. And then you still gotta be able to make the world a better place, and live somehow. Even if everyone ends up looking like intelligent koalas or something, having a good education can only help you make it in the new world. So I intend to graduate - and have lots of fun in college on the way, of course. But graduate for sure!'";

to say Richard_Leadership:
	if "Interim Frat President" is not listed in Traits of Richard:
		say "     Putting on a bit more of a serious expression, you mention what River said about the frat's president currently being missing. Richard looks at you with a somewhat grim expression and replies, 'Yeah, that's pretty worrying, to not know what happened to Nick and the others. Everyone's hoping they'll make it back here safely.' Focusing a stern gaze on him, you then ask if that's really the best thing that they should do... just sitting here, safe on campus and leaving people to find their own way home in the dangerous city. Eyebrows rising as he takes in what you said, Richard pauses, then replies, 'Uhm... yeah, you do have a point there. I guess most of the guys are just used to following Nick's instructions, so people have gotten somewhat indecisive themselves. With him gone, everyone's been mostly looking towards River and Han for guidance, but they've really just been keeping things going as before, not adapting to everything that has happened around here.'";
		say "     Nodding to the young man, you keep in the back of your mind what River told you about him preferring someone else to be taking over, and suggest to Richard that he should make a move to take over interim leadership of the frat. After all, who knows if Nicholas and those with him might just be dead, enslaved, or transformed into something unrecognizable. Just trusting them to come back, and come back in a recognizable form, isn't something that anyone should put their future on. Thinking back to the training he would have gone through in the scouts, you comment that it'd be great if there was someone in the frat who had survival training, and was interested in meeting the dangers of the new world heads-on. 'Yeah, that would be - oh!' Richard starts to say, only noticing from your expression that you meant him. 'I do have training, that's true, and I'd be willing to try. We should be getting ready to do stuff on our own, not just hide behind the Spartans. Especially since they've been pretty big assholes lately, pushing people around. But I'm not sure how many of the others would support me if I just pronounced I want to take over for Nick, even temporarily.'";
		WaitLineBreak;
		say "     Looking thoughtful and tapping his chin, you can almost see the wheels in Richard's head start to turn. After a moment of patient waiting as he formulates a plan, you hear him say, 'Hm, for this to work, if River and/or Han really must be the ones to suggest the transfer of authority. If I can get their support behind me, I could at least get started organizing something with the guys. By what accounts one hears from outside the campus, and the Spartans speeches why we need them, an expedition to find Nick and the others needs to be well prepared. We need people who don't freak out in dangerous situations, and they need to have some training in how to react to attacks from the wild beasts out there. And they'll need protective gear too.' As he says this, you can see him glance over to his [if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90]altered [end if]lacrosse helmet and nod to himself.";
		say "     'Okay then, no time like the present - I'll have a talk with the guys. Thanks for giving me the push I needed!' Richard says with a friendly chuckle, patting your shoulder, before adding with determination, 'Come on, let's get this show on the road!' You follow along after him as he leaves his room, then goes down to the second floor to grab River and Han. Stepping into one of the unused side-rooms for some privacy, Richard closes the door once you're in, then announces, 'We need to have a chat about the future of the house. I'd like to take charge, at least until we can try to get Nick back, and that's what I want to go over with you.' His words draw a raised eyebrow from Han, while River seems a little surprised. After a moment of pause, Han then nods towards you. 'Fine, but what's [SubjectPro of Player] doing in here then? [SubjectProCap of Player] isn't one of us.'";
		WaitLineBreak;
		say "     Taking the question calmly, in a clear indication that he expected it, Richard bids you to step forward, then explains, 'Yeah, our friend here might not be a formal member, but [SubjectPro of Player] helped me realize that we can't just go on as we have. Standing still, while the city is changing, and the whole world with it. [if SatyrFratRichardRelationship > 3 and SatyrFratRichardRelationship < 90]I mean - just look at me... horns and everything, eh? [end if]Just sitting around and waiting for Nick to come back isn't going to cut it. We don't even know if he's alright, and just scooting with our thumbs up our asses will do jack shit. Trust me, I know how to organize things and get stuff going. Been a scout leader for years.' Han lets out a deep grunt as he hears the argument, tensing the muscles of his strong body. River looks to him and gives a small nod, seemingly ready to take direction from the Asian-American student.";
		say "     Han finally says, 'Okay then, we're listening. What is it that we're not ready for, in your opinion?' The last question was addressed to you, prompting you to lay out what you've witnessed in the city, giving them your top list of dangerous, deviant and fucked-up shit that you've come across, at least so far... For these students, who've so far had a fairly protected life here on the campus grounds, it's a fairly eye-opening discussion. Looking at the frat guys, you see that River's gone a bit pale in the face, while Han's so far stony gaze has developed a crack, with him frowning and shaking his head. Then Han says, 'Well... fuck. I had heard some things, but told myself those must have been exaggerations.' He pauses for a moment, then shrugs his shoulders before adding, 'Or maybe I just didn't want to believe it.'";
		WaitLineBreak;
		say "     Richard grabs the reins of the discussion then, saying in a firm tone, 'So, now you know what's in store for us, if we don't get ourselves sorted out. First, we got to get ready for what's out there. Everyone needs a bit of training to know how to react, how to defend themselves. The city has become a sort of jungle, wild and dangerous. Not sure if it can be called 'natural', with all the creepy stuff going on, but human-like beasts aren't the only threat either. There could be straight-out traps laid by survivors. And we need weapons and protection. Then, only when we're ready, not before, we'll go and find our missing brothers. We can't leave anyone lost out there, at the mercy of whatever beasts might decide that they're the fuck-hole of the day!' Listening to Richard, River presses his lips together, then lets out the words, 'I - I'm not really a fighter...' He lowers his gaze and looks aside in shame, only to have Richard step up and put a hand on his upper arm, squeezing it supportively.";
		say "     Giving River a smile as he looks back up, Richard then adds, 'You're selling yourself short. I mean, look at yourself, you've got determination and drive, which got you into the best frat around, and on the short list of potential Olympians. Not everything is about fighting either, you know. A good team needs a scout, or medic, and so on. Wait - aren't you trained in CPR and whatnot? That'd be a good contribution! We'll just need to train you up so you can also defend yourself in case of an emergency.' The pep talk works wonders with River, who comes out of his shell again, showing his usual chipper and upbeat character once more. 'Yeah, I guess could help patch people up. Do you really think that it'll get to that?' There is an underlying trace of fear coming up in his voice again as he imagines that, but River steels his resolve, glancing down to his brother's hand still supportively grasping his bicep. With an acknowledging grin and a thumbs-up, Richard then turns to Han, who's stood aside until now and watched, arms loosely crossed before his broad chest.";
		WaitLineBreak;
		say "     The Asian-American student gives Richard a slow nod, with a hint of a respectful smile. 'You know, you're not bad at this stuff. Not bad at all. And while I've been known to give a killer motivational speech before a game myself, it was you who saw the need for action. Okay, I'm on board. For both - I'll support your position with the others, and go out with the expedition to find Nick and the others!' His decision made, Han then holds out a fist to Richard, who bumps it with his own, giving a him a respectful nod. Finally turning to you, Richard says, 'Looks like we're in agreement then. We'll have to take this to the fraternity as a whole, but it should be a done deal pretty much. Thanks for the help!' At that point, you leave the three of them to talk details, and organize getting all the other frat members together later.";
		move Player to PAN Frat Second Floor;
		TraitGain "Interim Frat President" for Richard;
	else:
		say "     As you ask about the leadership situation, Richard smiles at you and says, 'Things went pretty well, mostly anyways. Some of the guys said that what was suggested is unnecessary and surely Nick would stroll back into the house any moment, but I did have the support of both River and Han, so even with those grumbles, the decision passed and I've got an interim president rank now. I'm playing it by ear just how far that reaches - ever a good idea to give orders you know won't be followed, you know. Not that many of the guys are keen on training for an expedition, but I got at least a small crew that's fully on board and willing to set foot outside the campus when the time comes. Han, River, Big John, Paul, and Oliver. The others are at least willing to help gather supplies and gear to equip our little team. That'll all take some time though, before everything is ready and I feel confident taking the guys out there.'";
		say "     After saying this, Richard gets a thoughtful expression on his face, then looks you up and down. 'You know, we could also use someone who's got some experience out there in the city, and can guide the expedition with their knowledge. Got an interest in helping out for a good cause? You don't have to decide right now, as I said we'll need preparation time, but think about it, okay?' As you nod to him in reply, but don't make any promises yet, Richard gives you a thankful smile nonetheless.";

Section 3 - Sex


to say Richard Guard Sex:
	project Figure of Richard_human_hard_icon;
	if Player is male:
		say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and start a conversation. 'Hi there, I'm Richard,' he replies with a friendly smile, offering a hand for you to shake. As you two talk a little, you learn that he started out here in Tenvale College this semester as a star lacrosse player. He joined the Phi Alpha Nu fraternity as a legacy member, just like his father and grandfather before him. The two of you continue to talk a little bit more, eventually landing on the topic of him standing guard here. 'Yeah, I thought it might be a good idea to keep a lookout, given all the weird stuff going on in the city. Who knows what might happen if everyone were just partying.' As you express some curiosity if he wouldn't want to enjoy himself with all the others inside, Richard gets a bit of a wistful look in his eye as he tells you, 'I'd love to party with the guys... err, and all the hot chicks we've got over. Totally, love all the babes on campus. Definitively. But... yeah, someone's got to do the duty to keep everyone safe, you know.'";
		say "     You notice that middle bit there was said a bit too hurriedly, a blurt of words only making clearer what he wanted to hide. And catching his eyes stray down your body for a second confirms it a moment later - so Richard has some interest there for both sides of the fence. Perfect, for what you're planning. Keeping him talking about what he likes in women and his past conquests, you get the athlete in a receptive mood, then smoothly compliment him on what great shape he's in. Things progress to him showing off his muscles, then you feeling and... gently stroking them, just a little bit at first, then ever bolder. Soon you're standing very close beside the young man, one hand on the growing bulge in his pants. In the most charming tone you can manage, you tell him...";
		LineBreak;
		say "     [link](1)[as]1[end link] That you want to give him a blowjob.";
		say "     [link](2)[as]2[end link] That you want him to fuck you.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to blow him or [link]2[end link] to get fucked.";
		if calcnumber is 1: [BJ]
			say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at actually being intimate with [if Player is not female]another male[else]a herm[end if] for the first time and he freezes for a second, then quickly gets over his shock and happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
			say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length. While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. ";
			WaitLineBreak;
			say "     At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you decide it'd be better to just concentrate on the blowjob. With you so eagerly going down on him, as well as touching and stroking his body, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and blasts of his cum start filling your mouth. You feel the pleasant taste of his seed on your tongue for a moment, then swallow it down as more and more pulses out of his cock.";
			say "     'That was *pant* amazing!' Richard gets out after getting himself under control again, before accepting a kiss that lets him taste his own cum a moment later. Apparently getting into a bit of a talkative mood after orgasming, Richard smiles and starts chatting with you some more, soon bringing up, 'Ya'know... I actually worked for everything I've got here.' The determination in the athlete's gaze causes a tingle to run down your body, 'I mean, yeah the legacy stuff was a given, but I decided a long time ago that I wouldn't rely on the [']family money['] to get by.' Richard's face contorts into a grimace at the mention of his family's wealth, seems like he's the type that wants to rely on himself rather than simple nepotism. 'That's why I worked my ass off at lacrosse and eventually got my sports scholarship!' You can't help but smile as the jock lifts one of his arms up to his face and lightly kisses it, but not before sending a wink your way.";
			WaitLineBreak;
			say "     After a bit more pretty nice making out with the student, you pull his pants back up, unobtrusively checking for the satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell. He hesitates for a second, then reaches out to touch your arm before you go. 'Erm, not sure if we'll see each other again, but... could you keep a lid on what we just did, please? I'd prefer if not everyone knew I do things with guys too.' He seems a bit embarrassed about having to ask, scratching the back of his neck as he waits for your reply, then smiling as you give him a nod. With a last wave, you watch as he walks back to his post. Maybe you should return here sometime later and see how this [bold type]party[roman type] develops...";
			now SatyrFratPartyStage is 5;
			NPCSexAftermath Player receives "OralCock" from Richard;
		else if calcnumber is 2: [Fuck]
			say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at actually being intimate with [if Player is not female]another male[else]a herm[end if] for the first time and he freezes for a second, then quickly gets over his shock and happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
			say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
			WaitLineBreak;
			say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you want to get fucked yourself.";
			say "     Pulling your lips off his nice and wet shaft with a pop, you pant that it's time for him to fuck you, quickly dropping your gear and clothes to the ground before bending over for Richard. Wiggling your butt invitingly is all it takes for the young man to step up to you and put the tip of his shaft against your hole. With a lustful grunt, he thrusts right in, plunging his manhood deep into you. 'Man, that feels as good as any pussy I ever fucked - maybe better!' he pants as he wraps his arms around your chest from behind. Being fucked by this very eager young man, you delight in flexing your inner muscles and listening to the moaned and gasped reactions you get as you do. With this being his first time, with a [if Player is female]herm[else]man[end if] that is, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and pounds his cock into your hole one last time as it starts blasting spurt after spurt of cum.";
			WaitLineBreak;
			say "     You can feel his manhood twitch and pulse with more and more of his seed being deposited into you, leaving you with a pretty nice and full sensation. Holding on to you and leaning his head against your back, Richard gets out 'That was *pant* amazing!' You pull off his still hard cock with a wet slurp, then turn around and give him a deep kiss. Apparently getting into a bit of a talkative mood after orgasming, Richard smiles and starts chatting with you some more, soon bringing up, 'Ya'know... I actually worked for everything I've got here.' The determination in the athlete's gaze causes a tingle to run down your body, 'I mean, yeah the legacy stuff was a given, but I decided a long time ago that I wouldn't rely on the [']family money['] to get by.' Richard's face contorts into a grimace at the mention of his family's wealth, seems like he's the type that wants to rely on himself rather than simple nepotism. 'That's why I worked my ass off at lacrosse and eventually got my sports scholarship!' You can't help but smile as the jock lifts one of his arms up to his face and lightly kisses it, but not before sending a wink your way.";
			say "     After spending some more time making out with the student, you leave him to pull his pants back up, unobtrusively checking for the satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell. He hesitates for a second, then reaches out to touch your arm before you go. 'Erm, not sure if we'll see each other again, but... could you keep a lid on what we just did, please? I'd prefer if not everyone knew I do things with guys too.' He seems a bit embarrassed about having to ask, scratching the back of his neck as he waits for your reply, then smiling as you give him a nod. With a last wave, you watch as he walks back to his post. Maybe you should return here sometime later and see how this [bold type]party[roman type] develops...";
			NPCSexAftermath Player receives "AssFuck" from Richard;
			now SatyrFratPartyStage is 6;
	else if Player is female:
		say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and start a conversation. 'Hi there, I'm Richard,' he replies with a friendly smile, offering a hand for you to shake. As you two talk a little, you learn that he started out here in Tenvale College this semester as a star lacrosse player. He joined the Phi Alpha Nu fraternity as a legacy member, just like his father and grandfather before him. A somewhat more serious expression crosses his face after that, with Richard adding, 'Just so you know, I'm not relying on family money to make my way through college. I worked hard and won a sports scholarship!' Looks like it is pretty important to him to be seen as his own man, not just someone who coasts along on someone else's accomplishments. The two of you continue to talk a little bit more, eventually landing on the topic of him standing guard here. 'Yeah, I thought it might be a good idea to keep a lookout, given all the weird stuff going on in the city. Who knows what might happen if everyone were just partying.'";
		say "     As you express some curiosity if he wouldn't want to enjoy himself with all the others inside, Richard gets a bit of a wistful look in his eye as he tells you, 'I'd love to party with the guys... err, and all the hot chicks we've got over. Totally, love all the babes on campus. But... yeah, someone's got to do the duty to keep everyone safe, you know.' The middle bit there was said a bit too hurriedly, a blurt of words only making clearer what he wanted to hide. His eyes wander down over your body and check it out, confirming that Richard has some interest there for both sides of the fence. Perfect, for what you're planning. Keeping him talking about what he likes in women and his past conquests, you get the football-player in a receptive mood, then smoothly compliment him on what great shape he's in. Things progress to him showing off his muscles, then you feeling and... gently stroking them, just a little bit at first, then ever bolder. Soon you're standing very close beside the young man, one hand on the growing bulge in his pants. In the most charming tone you can manage, you tell him...";
		LineBreak;
		say "     [link](1)[as]1[end link] That you want to give him a blowjob.";
		say "     [link](2)[as]2[end link] That you want him to fuck you.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to blow him or [link]2[end link] to get fucked.";
		if calcnumber is 1: [BJ]
			say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at the sudden intimacy and he happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
			say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
			WaitLineBreak;
			say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you decide it'd be better to just concentrate on the blowjob. With you so eagerly going down on him, as well as touching and stroking his body, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and blasts of his cum start filling your mouth.";
			say "     You feel the pleasant taste of his seed on your tongue for a moment, then swallow it down as more and more pulses out of his cock. 'That was *pant* amazing!' Richard gets out after getting himself under control again, before accepting a kiss that lets him taste his own cum a moment later. Apparently getting into a bit of a talkative mood after orgasming, Richard smiles and starts chatting with you some more, soon bringing up, 'Ya'know... I actually worked for everything I've got here.' The determination in the athlete's gaze causes a tingle to run down your body, 'I mean, yeah the legacy stuff was a given, but I decided a long time ago that I wouldn't rely on the [']family money['] to get by.' Richard's face contorts into a grimace at the mention of his family's wealth, seems like he's the type that wants to rely on himself rather than simple nepotism. 'That's why I worked my ass off at lacrosse and eventually got my sports scholarship!' You can't help but smile as the jock lifts one of his arms up to his face and lightly kisses it, but not before sending a wink your way.";
			WaitLineBreak;
			say "     After a bit more pretty nice making out with the student, you leave to pull his pants back up, unobtrusively checking for the satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell and watch as he walks back to his post. Maybe you should return here sometime later and see how this [bold type]party[roman type] develops...";
			NPCSexAftermath Player receives "OralCock" from Richard;
			now SatyrFratPartyStage is 5;
		else if calcnumber is 2: [Fuck]
			say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at the sudden intimacy and he happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
			say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
			WaitLineBreak;
			say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you want to get fucked yourself.";
			say "     Pulling your lips off his nice and wet shaft with a pop, you pant that it's time for him to fuck you, quickly dropping your gear and clothes to the ground before bending over for Richard. Wiggling your butt invitingly is all it takes for the young man to step up to you and put the tip of his shaft against the moist lips of your pussy. With a lustful grunt, he thrusts right in, plunging his manhood deep into you. 'Man, that feels great!' he pants as he wraps his arms around your chest from behind. Being fucked by this very eager young man, you delight in flexing your inner muscles and listening to the moaned and gasped reactions you get as you do. With him being pretty aroused, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and pounds his cock into your hole one last time as it starts blasting spurt after spurt of cum.";
			WaitLineBreak;
			say "     You can feel his manhood twitch and pulse with more and more of his seed being deposited into you, leaving you with a pretty nice and full sensation. Holding on to you and leaning his head against your back, Richard gets out 'That was *pant* amazing!' You pull off his still hard cock with a wet slurp, then turn around and give him a deep kiss. Apparently getting into a bit of a talkative mood after orgasming, Richard smiles and starts chatting with you some more, soon bringing up, 'Ya'know... I actually worked for everything I've got here.' The determination in the athlete's gaze causes a tingle to run down your body, 'I mean, yeah the legacy stuff was a given, but I decided a long time ago that I wouldn't rely on the [']family money['] to get by.' Richard's face contorts into a grimace at the mention of his family's wealth, seems like he's the type that wants to rely on himself rather than simple nepotism. 'That's why I worked my ass off at lacrosse and eventually got my sports scholarship!' You can't help but smile as the jock lifts one of his arms up to his face and lightly kisses it, but not before sending a wink your way.";
			say "     After a bit more pretty nice making out with the student, you leave to pull his pants back up, unobtrusively checking for the satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell and watch as he walks back to his post. Maybe you should return here sometime later and see how this [bold type]party[roman type] develops...";
			NPCSexAftermath Player receives "PussyFuck" from Richard;
			now SatyrFratPartyStage is 6;
	else:
		say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and start a conversation. 'Hi there, I'm Richard,' he replies with a friendly smile, offering a hand for you to shake. As you two talk a little, you learn that he started out here in Tenvale College this semester as a star lacrosse player. He joined the Phi Alpha Nu fraternity as a legacy member, just like his father and grandfather before him. The two of you continue to talk a little bit more, eventually landing on the topic of him standing guard here. 'Yeah, I thought it might be a good idea to keep a lookout, given all the weird stuff going on in the city. Who knows what might happen if everyone were just partying.' As you express some curiosity if he wouldn't want to enjoy himself with all the others inside, Richard gets a bit of a wistful look in his eye as he tells you, 'I'd love to party with the guys... err, and all the hot chicks we've got over. Totally, love all the babes on campus. Definitively. But... yeah, someone's got to do the duty to keep everyone safe, you know.'";
		say "     You notice that middle bit there was said a bit too hurriedly, a blurt of words only making clearer what he wanted to hide. His eyes wander down over your body and check it out, confirming that Richard has some interest there for both sides of the fence. Perfect, for what you're planning. Keeping him talking about what he likes in women and his past conquests, you get the football-player in a receptive mood, then smoothly compliment him on what great shape he's in. Things progress to him showing off his muscles, then you feeling and... gently stroking them, just a little bit at first, then ever bolder. Soon you're standing very close beside the young man, one hand on the growing bulge in his pants. In the most charming tone you can manage, you tell him that you want to give him a blowjob.";
		WaitLineBreak;
		say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at the sudden intimacy and he happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
		say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
		WaitLineBreak;
		say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you decide it'd be better to just concentrate on the blowjob.";
		say "     With you so eagerly going down on him, as well as touching and stroking his body, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and blasts of his cum start filling your mouth. You feel the pleasant taste of his seed on your tongue for a moment, then swallow it down as more and more pulses out of his cock. 'That was *pant* amazing!' Richard gets out after getting himself under control again, before accepting a kiss that lets him taste his own cum a moment later.";
		WaitLineBreak;
		say "     After a bit more pretty nice making out with the student, you leave to pull his pants back up, unobtrusively checking for the satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell and watch as he walks back to his post. Maybe you should return here sometime later and see how this [bold type]party[roman type] develops...";
		now SatyrFratPartyStage is 5;
		NPCSexAftermath Player receives "OralCock" from Richard;
	now PlayerMet of Richard is true; [introduced]

instead of fucking Richard:
	if (lastfuck of Richard - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     The satyr chuckles at you before waving you off. 'Down [if Player is female]girl[else]boy[end if]! I need time to rest,' he jokingly tells you.";
	else:
		project Figure of Richard_satyr_hard_icon;
		say "     While Richard is tapping away at his keyboard, you think of how you can use that body of his.";
		say "[RichardSexMenu]";

to say RichardSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck him with the dildo";
	now sortorder entry is 1;
	now description entry is "Use the dildo on Richard";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Richard off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the satyr's hard shaft";
	[]
	if Player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the goat boy";
		now sortorder entry is 3;
		now description entry is "Take Richard's ass for a ride";
	[
	if Player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Richard's shaft in your pussy";
		now sortorder entry is 4;
		now description entry is "Take Richard's cock for a ride";
	]
	choose a blank row in table of fucking options;
	now title entry is "Take Richard's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Take Richard's cock for a ride";
	[]
	Sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck him with the dildo"):
					say "[RichardSex1]";
				if (nam is "Suck Richard off"):
					say "[RichardSex2]";
				if (nam is "Fuck the goat boy"):
					say "[RichardSex3]";
				if (nam is "Take Richard's shaft in your pussy"):
					say "[RichardSex4]";
				if (nam is "Take Richard's shaft in your ass"):
					say "[RichardSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head and decide against sexing up the satyr boy.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RichardSex1:
	say "     Spotting the dildo on the floor you pick it up and hide it behind your back. You walk up to Richard and get on your knees. The satyr boy looks down at you with a curious glance. 'Come on stop it, I need to finish my essay,' he whines. You ignore him rather easily and unbutton his cargo shorts revealing that he goes commando, his dick popping out and hitting you in the face. With your hot breath on his hard cock it makes it more and more difficult for the male to focus on his homework. With a mischievous idea, you promptly swallow the tip of his manhood into your mouth. As soon as you do this you can smell his manly musk[if Player is female], making your pussy wet[else if Player is male], making your cock rock hard[end if]. You inhale the scent and moan loudly on his cock.";
	say "     Poor Richard is trying very hard to ignore your wonderful blowjob skills but you can tell that he is failing by the fact that the tappity tap tap of his keyboard has slowed down significantly. Seeing your chance you pull his shorts the rest of the way down and position a finger at his pucker. Before the satyr can protest, you penetrate his anal ring with your digit. The gesture makes him utter a moan and you swear he has slammed his hand on his keyboard. Simultaneously you give him a blowjob and finger him, quickly adding a second digit to his hole. It doesn't take you long to find his prostate, when appears to make him thrust deeper into your mouth. However, this is not what you had planned so you promptly remove your fingers and take your hidden surprise from behind your back.";
	WaitLineBreak;
	say "     Instantly you shove the dildo up his ass, making him bleat with pleasure. By now he is only able to focus on the sensations of you sucking his cock and fucking him with the toy. You make sure to angle your thrusts with the phallic-shaped instrument so that you hit his prostate every time. Briefly you look up and see Richard leaned back in his chair, eyes rolled up and tongue lolling out in pleasure as you fuck him silly with the dildo. On top of that you make sure to deep throat his cock as much as you can, inhaling his manly musk the entire time. By now, the satyr boy is spilling copious amounts of precum into your gullet, something that makes you moan in ecstasy. It doesn't take long for the both of you to reach your climax.";
	say "     Richard's orgasm is rather instantaneous, shooting his jizz down your throat. However, you make sure to pull back to let some of it pool in your mouth. You on the other hand, feel a lot of pleasure shoot through your lower half[if Player is female], causing you to orgasm violently, juices spilling from your pussy[else if Player is male], causing your rock hard cock to cum violently, spilling your seed on the satyr's carpet[end if]. In his post-coitus bliss, the male pulls you up quickly and kisses you roughly, making sure to taste some of his own sperm. About a minute later the two of you pull back, a trail of cum linking your mouths together. Wiping it off, he smiles and thanks you. 'You were pretty damn good and I loved the use of my favorite toy,' he says, winking seductively at you. He then apologizes and tells you that he really needs to get back to work. Shrugging your shoulders you leave him be.";
	NPCSexAftermath Richard receives "AssDildoFuck" from Player;

to say RichardSex2:
	say "     With an idea in mind you move over to Richard and kneel down to crawl under his desk. The satyr gives you a curious look, confused as to why you are down there. 'What are you doing? Please don't try to distract me,' he says, his tone having an undercurrent of begging. You pointedly ignore his pleading and unbutton his trousers. You let out a brief moan of pleasure when the giant goat dick hits you in the face. Richard lets out a whine of protest when you trail your tongue up his hardening shaft. Despite his inability to focus, he manages to get back to typing his essay. Feeling a bit miffed at him not paying attention to you, you deepthroat his cock fully. You smile on his cock when the satyr lets out groan of pleasure.";
	say "     Suddenly however, you hear the sound of Richard's door opening and someone talking. 'Hey Rich! There's another party tonight are you coming?' the voice, a male by the sound of it, asks. When your satyr friend speaks you can tell that he's having trouble keeping his composure. 'S-sure. I-I might be l-laaaaaate,' he says, groaning the last part out in pleasure from you sucking rather hard on his dick. You're pretty sure that the goat's friend is giving him an odd stare. But by briefly looking up, you can see that he waves his friend away. Quickly after that the door closes and you are left alone with Richard, his manhood deep in your mouth.";
	WaitLineBreak;
	say "     Instantly Richard moves his chair back and grasps a hold of your hair. Quite quickly after that he starts rapidly fucking your face, driving his cock in and out of your mouth. 'You want this dick, well you're fucking going to get it,' he swears at you, grunting as his balls start to slap against your chin. [if Player is female]You reach down and start to finger your pussy, moaning on his dick. [else if Player is male]You start to masturbate your cock furiously, groaning on his dick. [end if]The taste of the satyr's manhood and the smell of his manly musk is turning you on greatly as well as the wet sounds of Richard throat fucking you that fill the room. The both of you are lost in the bliss of oral sex you two going at it for a good ten minutes.";
	say "     Once that amount of time is up, the two of you reach your peak. The virile pulls back and out of your mouth before furiously masturbating his cock. Seconds later his load explodes out of his manhood and onto your face, coating you with cum. [if Player is female]That sets you off, making your orgasm hit you hard, your juices spilling onto the floor. [else if Player is male]The debauchery makes you orgasm hard, spilling your load onto your hand, something that you quickly lick up. [end if]The goat boy then promptly pulls you up to him and licks all his sperm off your face before kissing you and sharing the jizz between the two of you. Once done, he pulls back and gives you a silly smile, happiness oozing off of him. 'That was amazing,' he murmurs, giving you another kiss. 'But... now I really need to finish my essay,' he tells you, turning his attention back to his computer, his cock still hanging out of his pants. Shrugging your shoulders you crawl out from under and back away from him.";
	NPCSexAftermath Player receives "OralCock" from Richard;

to say RichardSex3:
	say "     The idea that pops into your head requires you to get a bit rough with Richard. Quickly you grab his hand and yank him out of his chair. He lets out a yelp as you drag him onto his bed. 'Wha- What are you doing?' he asks, utterly confused. However, you promptly silence him by latching your lips onto his, feeling his goatee brush against your chin. The male moans and groans under your rough kiss. You let your tongue explore his oral cavity, relishing in the taste, which you swear is chocolate. Wanting to go a bit further, you remove his shirt, revealing his perky nipples, which you tweak with your hands. The pain appears to make Richard let out a gasp of pleasure, writhing under your actions.";
	say "     Sadly for the satyr boy, his nipples don't hold your attention for long. Rather you immediately yank his shorts down to reveal his pert butt and large cock. By now Richard is too into it to protest, so you join him in being naked by stripping yourself of your clothing. Although as soon as you do this, you are shown that your partner isn't [italic type]that[roman type] out of it when he hands you a bottle of lube. You uncap it and pour some of it on your fingers, quickly moving them to his pucker. You start with one finger, pushing it into his hole before adding another to scissor his entrance open. Wanting to make it pleasurable for your friend you try your best to find his prostate. It actually doesn't take long, as evidenced by Richard arching his back and moaning loudly in pleasure.";
	WaitLineBreak;
	say "     Figuring that you've opened him enough, you position your hard cock at his entrance before thrusting in, balls deep. Richard takes it perfectly, groaning both in pain and pleasure. You let him get used to you before pulling out and slamming back in. It is by this time that you set a rapid pace to fucking your satyr friend's tight hole. Taken over completely by the feeling of bliss, he is now masturbating his own cock as he thrusts back against your own dick. Both of you are having the time of your lives, the sound of your balls slapping against Richard's ass cheeks. The tightness of the male's hole pushes you to the edge as well your friend.";
	say "     With a loud groan you slam yourself balls deep and release your load into the satyr. This sets him off as his sperm explodes out of his cock and onto one of the posters above his bed. Giving him a happy smile you cuddle up to him and nuzzle his neck, trailing kisses against it. Richard lets out a sigh of contentment, happy to let you do so. However, he doesn't just lay there, rather he directs your mouth to his own and begins to make out with you. After a few minutes of kissing you go back to cuddling, slowly falling asleep in each other's arms. Hours later the two of you wake up, both smiling at each other. 'That was amazing, we should do it again sometime,' he says with a happy tone. You nod before extracting yourself from him and getting dressed. Once Richard has done the same he gives you a quick kiss before going back to his computer to work. As you look at him you can only think of your cum leaking out of his hole. But you quickly shake your head, not wanting to get hard again.";
	NPCSexAftermath Richard receives "AssFuck" from Player;

to say RichardSex4:
	say "     Insert scene of vaginal sex with Richard";
	NPCSexAftermath Player receives "PussyFuck" from Richard;


to say RichardSex5:
	say "     You decide to have your fun with his cock, walking over to him and stripping yourself of your own clothing before spinning his chair so that he's facing you. Before he can say anything, you instantly crawl on top of his lap and push your lips against his own. Doing that appears to successfully distract Richard from his homework. Even more so when you start to grind your ass against his clothed crotch. While managing to still keep your mouth on his, you reach down, unbutton his shorts, and unzip them, revealing his large cock which smacks against your cheeks. As soon as this happens, your male friend wraps one arm around you and grabs a hold of his own dick. He positions it at your entrance and teases your pucker with the tip, causing you to break the kiss and bury your face into his neck, groaning. 'Come on, tell me you want this dick,' he murmurs into your ear.";
	say "     Unable to resist you beg him to fuck you hard, your lust spiking big time. Thankfully Richard doesn't let you stew, rather he takes your pleading and thrusts deep into you, his copious amount of precum acting as lube. When he's balls deep, both of you moan loudly, quickly resuming your passionate make-out session. While you were expecting the satyr to be a bit passive, you're severely proved wrong when he begins to rapidly fuck your ass. The sounds of his virile sack slapping against your cheeks as well as the slurping of his cock going in and out of your hole fill the room. The lewd noises make both of you even hornier, putting you two into a frenzy. It doesn't take that long for the two of you to reach your peak.";
	WaitLineBreak;
	say "     With a roar, Richard slams into you one last time before letting loose his heavy load into the bowels of your ass. [if Player is female]This sets you off, causing you to yell out loud too, your juices spilling from your pussy. [else if Player is male]You loudly grunt, the sensation of being filled with your satyr friend's seed making you cum hard, spilling your own jizz on his stomach. [end if]The both of you ride out your orgasms, cuddling each other closely, as best as you can in a chair. During this your partner gives you a sloppy kiss before smiling at you. 'As always you're fucking brilliant my friend,' he says, his tone filled with bliss. You tell him he's not bad either, which just makes him smirk at you. Ten minutes later the both of you get dressed and Richard apologizes, saying he really does need to finish the essay. So, you step back and let him get to work, enjoying the feeling of his cum leaking out of your ass.";
	NPCSexAftermath Player receives "AssFuck" from Richard;

Richard ends here.
