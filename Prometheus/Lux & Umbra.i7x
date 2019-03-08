Version 1 of Lux & Umbra by Prometheus begins here.

"Adds Lux & Umbra, the children of Fang, to the Flexible Survival game"

[ hp of Lux                           ]
[ 0 - Not yet born                    ]
[ 1 - Born - New to the world/pup     ]
[ 2 - Child                           ]
[ 3 - Teen                            ]
[ 4 - Young Adult - Grown             ]

[ hp of Umbra                         ]
[ 0 - Not yet born                    ]
[ 1 - Born - New to the world/pup     ]
[ 2 - Child                           ]
[ 3 - Teen                            ]
[ 4 - Young Adult - Grown             ]

[ loyalty of Lux                      ]
[ 0 - Not fully grown                 ]
[ 1 - Only just fully grown           ]

[ loyalty of Umbra                    ]
[ 0 - Not fully grown                 ]
[ 1 - Only just fully grown           ]

[ LuxUmbraMaturityCounter             ]
[ 1 - Young Adult                     ]
[ 40 - Teen                           ]
[ 80 - Child                          ]
[ 120 - Pup                           ]

an everyturn rule:
	if hp of Lux > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			move Lux to Grey Abbey Garden;
			move Umbra to Grey Abbey Garden;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn]
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Sleep]
			move Lux to Computer Lab;
			move Umbra to Computer Lab;
		[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning]
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			move Lux to Grey Abbey Library;
			move Umbra to Grey Abbey Library;
		[else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night]
	else if hp of Lux > 0 and Lux is not in Grey Abbey Library:
		move Lux to Grey Abbey Library;
		move Umbra to Grey Abbey Library;
	else if hp of Lux > 0:
		move Lux to Grey Abbey Library;
		move Umbra to Grey Abbey Library;

An everyturn rule:
	if LuxUmbraMaturityCounter is 80:
		now hp of Lux is 2;
		now hp of Umbra is 2;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
	if LuxUmbraMaturityCounter is 40:
		now hp of Lux is 3;
		now hp of Umbra is 3;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
	if LuxUmbraMaturityCounter is 1:
		now hp of Lux is 4;
		now hp of Umbra is 4;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
		now LuxUmbraMaturityCounter is 0;
	if LuxUmbraMaturityCounter > 1:
		decrease LuxUmbraMaturityCounter by 1;

Section 1 - Lux & Umbra

Table of GameCharacterIDs (continued)
object	name
Lux	"Lux"

Table of GameCharacterIDs (continued)
object	name
Umbra	"Umbra"

LuxUmbraMaturityCounter is a number that varies. LuxUmbraMaturityCounter is usually 0.

Lux is a woman.
[physical details as of game start]
ScaleValue of Lux is 3. [human sized]
Cocks of Lux is 0. [no cock]
Cock Length of Lux is 0. [no cock length]
Cock Width of Lux is 0. [no ball size]
Testes of Lux is 0. [no balls]
Cunts of Lux is 1. [1 pussy]
Cunt Length of Lux is 8. [gets stretched a bit by an alpha husky]
Cunt Width of Lux is 3. [gets stretched a bit by an alpha husky]
Breasts of Lux is 2. [2 nipples]
Breast Size of Lux is 2. [B cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Lux is false. [can take oversized members without pain]
Sterile of Lux is false.
PlayerMet of Lux is false.
PlayerRomanced of Lux is false.
PlayerFriended of Lux is false.
PlayerControlled of Lux is false.
PlayerFucked of Lux is false.
OralVirgin of Lux is true.
Virgin of Lux is true.
AnalVirgin of Lux is true.
PenileVirgin of Lux is true.
SexuallyExperienced of Lux is false.
MainInfection of Lux is "Alpha Wolf".
The description of Lux is "[Luxdesc]".
The conversation of Lux is { "Bark! Woof! Woof!" }.

the scent of the Lux is "     The pale-furred lupine smells strongly of wolf, albeit a slightly feminine scent.".

to say Luxdesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Lux] <- DEBUG[line break]";
	if hp of Lux is:
		-- 1: [ Pup ]
			say "     Lux looks like a small ball of pale-gray fur, not being particularly mobile. She is most often next to her father, Fang, who is making sure that his newborn daughter is safe even while protecting the library. Occasionally, you may see her open her eyes, the irises a dark-gray as they absorb her surroundings. Her rare cries for attention bring a smile to your face.";
		-- 2: [ Child ]
			say "     Lux has grown since you last saw her, now about the size of a shetland sheepdog and her lush fur a pale-gray. She is surprisingly fearless for her size, rushing around after her brother, Umbra, as he explores the library more thoroughly, though Fang prevents them from leaving the building. She meets your gaze, and you can see an intelligence in her dark-gray eyes. You have seen her practice a few unstable steps on her hind legs, though she doesn't keep her balance for very long. Her vocalizations sound like attempts at words, though not recognizable to you unfortunately.";
		-- 3: [ Teen ]
			say "     Lux is now slightly larger than a border collie, her pale-gray fur helping her blend in among the shadows between the bookshelves. Fang seems to think her and her brother are old enough to explore the area just outside of the library, simultaneously keeping an eye on his pups while standing vigil. She looks at you curiously with her dark-gray eyes as you inspect her, tilting her head in an adorable fashion. You have seen her walking on her hind legs when she doesn't think many people are watching, perhaps shy about her attempts. Her ability to talk is limited to single words at a time, easily recognizable if a bit simple.";
		-- 4: [ Young Adult ]
			say "     Lux is only slightly smaller than Fang and her brother, Umbra, with fluffy, pale-gray fur that helps her camouflage in the city when she explores. She seems higher in the pack order than her brother, which given that she was born first, isn't really surprising. Her dark-gray eyes are inquisitive and expressive, rarely missing any movement. She shows an intelligence above that of the feral wolves, even her father, and is able to walk on her hind legs for extended periods of time without looking awkward. Her speech is rather fluent, only occasionally making an error. She makes use of her talent, often translating what Umbra wishes to express.";

Instead of conversing the Lux:
	if hp of Lux is:
		-- 1: [ Pup ]
			say "     Knowing that you won't be able to have a proper conversation, you content yourself with [if scalevalue of player > 1]crouching down and [end if]rubbing her tummy. She lets out several joyful squeaks, reveling in the attention as Fang keeps an eye on the two of you and Umbra even while watching for intruders.";
		-- 2: [ Child ]
			say "     Upon greeting her, she lets out a yip of excitement and bounds joyfully around [if scalevalue of player > 1]your legs[else]you[end if], tail wagging frantically. You [if scalevalue of player > 1]crouch down and [end if]comment on how much she has grown, stroking her head as she nuzzles against your hand. An affectionate murmuring rumbles from her mouth as she sniffs you to see where you have been, your daughter obviously very pleased to see you. You doubt that she'll be able to hold a conversation with you yet and settle for patting her and letting her take in your scents.";
		-- 3: [ Teen ]
			say "     You express a desire to talk to her, and she eagerly sits in front of you. '[if player is female]Mother[else]Father[end if],' she barks, pleased to show off her developing language skills. You tell her about the wider city, watching as her eyes widen as she imagines all of the creatures and occurrences that you tell her about. Having told her enough stories for now, you turn to leave, the young wolf still contemplating your tales.";
		-- 4: [ Young Adult ]
			say "     You approach your daughter, who stops grooming herself to focus her attention on you. 'Hello [if player is female]Mother[else]Father[end if], did you have something in particular that you wanted to discuss with me?' she queries, her tail wagging wildly.";
			WaitLineBreak;
			say "[LuxTalkMenu]";

to say LuxTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Lux?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Try to learn more about your daughter.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "Ask about her thoughts on Fang and Umbra.";
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
				if (nam is "Herself"):
					say "[LuxTalk1]";
				if (nam is "Family"):
					say "[LuxTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, indicating an end to the conversation. Lux lets out a slight whine before returning to what she was doing before.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LuxTalk1:
	say "     You ask her to tell you about how she views herself. You may have carried her to term, but there were times that you weren't there as she grew up. She smiles at you before replying, 'I love you very much, [if player is female]Mum[else]Dad[end if], so you don't need to worry about the times that you were away. Umbra and I understand that you had important things to do in the city. But that wasn't what you asked, was it? You asked about me, perhaps to try and improve communication and bonding within the pack? You may have seen me reading as I grew up, and I still enjoy time inside a book, but now instead of only being able to read picture books or requiring a dictionary next to me, I can usually manage some of the more adult books. Some have particularly adult material...' she says with a blush before feeling a need to justify herself. 'I hope that you can understand. From what I've read, parents don't like to think of their children being involved in anything lewd, but this city is so drenched in the smells of sex, this library no less than anywhere else. If it isn't sending me into heat, it just makes me want to soothe myself one way or another.'";
	say "     Lux blushes again, the flush only visible on her snout. 'I should probably change subject now, shouldn't I? Before I dig my hole even deeper. Walking. Let's talk about my walking capabilities. I don't know whether you have seen Daddy do so, but he is capable of walking on his hind paws for brief periods, as is my brother, but I think that I'm a bit better at it than either of them. It isn't the most comfortable posture, but I will admit that I do like to show off, whether it is by showing off my mind or displaying party tricks like walking on two legs. Even having this conversation allows me to show off and for that, I thank you,' she joyfully informs you. 'Humility can not be said to be my virtue of choice, but I doubt that many people could claim that it is. We should all have something about ourselves that we like and can show off to feel accomplished.'";
	WaitLineBreak;
	say "     'What else is there to say about me? I suppose that it might be worth telling you that I'm not the best at fighting. I can understand the theory of it, but when it comes to putting it into practice, I'm better at dodging than striking as I don't seem to be able to hit in the same way as Umbra or Daddy. I'm capable, but I won't be participating in Ragnarok any time soon. I've been reading mythology books recently, so I apologize if that went over your head. How many of the books here have you read? But back to myself. If someone else is helping me defend myself, especially if it is Umbra, then you don't need to worry about me in a fight. This bitch has fangs and claws,' she announces with a wolfish grin, exposing her glistening teeth. Your conversation over for now, you crouch and give her a tight hug, pressing your face into her soft, warm fur before standing up again and deciding what to do next.";

to say LuxTalk2:
	if incest is not warded and incest is not banned:
		say "     You are curious about Lux's opinions on Fang and Umbra and so ask her, receiving a sly smirk from her. 'So basically you want to know how I feel about other members of my family. Are you sure you don't want my opinion of you too? There's certainly some attraction there, even if you are my [if player is female]mother[else]father[end if]. I have similar desires for Daddy and my brother. I don't know whether it is just something in the air, a genetic remnant, or whether it is just my own perversions...' You blush and tell her that this wasn't exactly what you were asking. You were more interested in more innocent opinions of them. She looks extremely embarrassed, averting her face from you and mumbling to herself. Taking a deep breath, she turns back again. 'Let's start again please and ignore my rampant hormones. You wanted to talk about my family. In a non-sexual manner. I can do that, just give me a moment to think of the words I want.'";
		say "     'Daddy might have difficulty expressing it, but he is very grateful to you for giving him a family again. While he hasn't told me much about his personal life before the crisis, I know that he had a wife and daughter who left him, and he had difficulty coping. Now he gets another chance to be with people that love him, an important part of being human or wolf. I doubt that he would be against expanding the pack a bit more, if you understand what I'm saying. While he may not have the same grasp of human language as me, don't discount his intelligence. He's a lot more cunning and crafty than he appears, a trait that he has cultivated to increase his chances of survival, though his previous pack didn't seem to value it. What else is there to say about him? I think that I'm his favorite, though don't tell Umbra I said that. He might disagree, and I wouldn't want to have to shatter that hope. What male doesn't like having a daughter to pamper and impress?'";
		WaitLineBreak;
		say "     'Where should I start on Umbra? My brother isn't as literarily gifted as me, but, like my father, he isn't stupid as his combat capabilities show. He just has difficulty expressing his feelings in words. You may have noticed how affectionate he is to his family, you included. That is him showing how much he cares when your grasp of wolf communication isn't as fluent as our own. I'm so glad that he expresses his emotions so easily compared to some of the men in the books I read. Why is a lack of emotion considered an attractive trait in males so often? I think that Umbra may be more than a little enamored with you, [if player is submissive]and considering the times he's seen you present yourself in the city, he may ask you to get to know him on a more physical level[else if player is dominant]and he sees you as a strong role model, unafraid to say what you want, so he may want to learn from you [italic type]intimately[roman type][else]and he is impressed by how capable you are, seeing as how you have survived so well in the current situation between the roaming creatures and the invading army, so if you give him the chance, he may ask whether you would be interested in getting closer to him[end if]. When you have always been there for us, I share similar feelings towards you too,' she informs you before realizing what she has said. 'I apologize, my hormones appear to have gained control again. Please excuse me.' With that, she leaves, and you take the conversation to be over.";
	else:
		say "     You are curious about Lux's opinions on Fang and Umbra and so ask her, receiving a bright smile in response. 'Daddy might have difficulty expressing it, but he is very grateful to you for giving him a family again. While he hasn't told me much about his personal life before the crisis, I know that he had a wife and daughter who left him, and he had difficulty coping. Now he gets another chance to be with people that love him, an important part of being human or wolf. I doubt that he would be against expanding the pack a bit more, if you understand what I'm saying. While he may not have the same grasp of human language as me, don't discount his intelligence. He's a lot more cunning and crafty than he appears, a trait that he has cultivated to increase his chances of survival, though his previous pack didn't seem to value it. What else is there to say about him? I think that I'm his favorite, though don't tell Umbra I said that. He might disagree, and I wouldn't want to have to shatter that hope. What male doesn't like having a daughter to pamper and impress?'";
		say "     'Where should I start on Umbra? My brother isn't as literarily gifted as me, but, like my father, he isn't stupid as his combat capabilities show. He just has difficulty expressing his feelings in words. You may have noticed how affectionate he is to his family, you included. That is him showing how much he cares when your grasp of wolf communication isn't as fluent as our own. I'm so glad that he expresses his emotions so easily compared to some of the men in the books I read. Why is a lack of emotion considered an attractive trait in males so often? I think that Umbra may be more than a little in awe of you, and he is impressed by how capable you are, seeing as how you have survived so well in the current situation between the roaming creatures and the invading army. He may want to learn to be more like you. When you have always been there for us, I share similar admiration towards you.' She seems to be squirming slightly and you raise an eyebrow in question. She flushes deeply and hurriedly responds, 'Please excuse me, I'm getting certain feelings that should be dealt with away from family.' With that, she scurries away, leaving you mildly confused at the abrupt end to the conversation.";

	Umbra is a man.
	[physical details as of game start]
	ScaleValue of Umbra is 3. [human sized]
	Cocks of Umbra is 1. [One cock]
	Cock Length of Umbra is 10. [10 inches]
	Cock Width of Umbra is 4. [2 inch ball size]
	Testes of Umbra is 2. [no balls]
	Cunts of Umbra is 0. [No pussy]
	Cunt Length of Umbra is 0. [No pussy]
	Cunt Width of Umbra is 0. [No pussy]
	Breasts of Umbra is 2. [2 nipples]
	Breast Size of Umbra is 0. [Flat at the start]
	[Basic Interaction states as of game start]
	TwistedCapacity of Umbra is false. [can take oversized members without pain]
	Sterile of Umbra is false.
	PlayerMet of Umbra is false.
	PlayerRomanced of Umbra is false.
	PlayerFriended of Umbra is false.
	PlayerControlled of Umbra is false.
	PlayerFucked of Umbra is false.
	OralVirgin of Umbra is true.
	Virgin of Umbra is true.
	AnalVirgin of Umbra is true.
	PenileVirgin of Umbra is true.
	SexuallyExperienced of Umbra is false.
	MainInfection of Umbra is "Alpha Wolf".
	The description of Umbra is "[Umbradesc]".
	The conversation of Umbra is { "Bark! Bark! Woof!" }.

the scent of the Umbra is "     The dark-furred wolf smells rather masculine and wolfy, his musk obvious to the nose.".

to say Umbradesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Umbra] <- DEBUG[line break]";
	if hp of Lux is:
	-- 1: [ Pup ]
		say "     Umbra looks like a small fluffy ball of dark-gray fur, not being particularly mobile. He is usually stumbling blindly around on the floor near his father, Fang making sure that his newborn son is safe even while protecting the library. Occasionally, you may see him open his eyes, the green orbs taking in whatever obstacle has impeded his exploration. His rare vocalizations bring a smile to your face.";
	-- 2: [ Child ]
		say "     Umbra has grown since you last saw him, now slightly larger than a shetland sheepdog and covered in thick, dark-gray fur. He is surprisingly fearless for his size, rushing around the library while being pursued by his sister, Lux, as they explore, though Fang prevents them from leaving the building. He meets your gaze, and you can see how much he cares about you, and probably the rest of his family, in his bright-green eyes. You have seen him sizing up creatures he spies while keeping his father company despite how young he is, gauging how much of a threat that they might pose. His vocalizations sound like attempts at words, though not recognizable to you unfortunately.";
	-- 3: [ Teen ]
		say "     Umbra is now similar in height to Fang, and you doubt that he has finished growing, his dark-gray fur helping him stalk among the shadows between the bookshelves. Fang seems to think he and his sister are old enough to explore the area just outside the library, simultaneously keeping an eye on his pups while standing vigil. He looks at you caringly with his green eyes as you inspect him, tilting his head in an adorable fashion and licking his nose. You have seen him get into the occasional fight with creatures that get too close to the library, the young wolf rather nimble for his size. His ability to talk is limited to single words at a time, easily recognizable if a bit simple.";
	-- 4: [ Young Adult ]
		say "     Umbra is only slightly larger than Fang, though he submits without hesitation to his father when expected to. His lush, dark-gray fur helps him camouflage in the city when he explores and reduces any harm that comes to him should his agility not be enough. He views himself as being below you, Fang, and Lux in the pack, though above everyone else, acting as a guardian in similar fashion to his father. His green eyes are keen and expressive, analyzing any adversaries and predicting their actions. He shows an intelligence similar to that of his father, able to walk on his hind legs when necessary. His speech is still limited, though he seems to be able to get the message across without any confusion when necessary.";

Instead of conversing the Umbra:
	if hp of Umbra is:
		-- 1: [ Pup ]
			say "     Knowing that you won't be able to have a proper conversation, you content yourself with [if scalevalue of player > 1]crouching down and [end if]rubbing his tummy. He lets out an appreciative growl, reveling in the attention as Fang keeps an eye on the two of you and Lux even while watching for intruders.";
		-- 2: [ Child ]
			say "     Upon greeting him, he lets out a bark of excitement and bounds joyfully around [if scalevalue of player > 1]your legs[else]you[end if], tail wagging frantically. You [if scalevalue of player > 1]crouch down and [end if]comment on how much he has grown, stroking his head as he nuzzles against your hand. An affectionate murmuring rumbles from his mouth as he sniffs you to see where you have been, your son obviously very pleased to see you. You doubt that he'll be able to hold a conversation with you yet and settle for patting him and letting him take in your scent.";
		-- 3: [ Teen ]
			say "     You express a desire to talk to him, and he eagerly sits in front of you. '[if player is female]Mother[else]Father[end if],' he barks, pleased to show off his developing language skills. You tell him about the wider city, watching as his eyes widen as he imagines all of the creatures and how you overcame, or failed to overcome them. Having told him enough stories for now, you turn to leave, the young wolf still contemplating your tales.";
		-- 4: [ Young Adult ]
			say "     You approach your son, who stops patrolling the bookshelves to focus his attention on you. He seems pleased to see you, his tail wagging wildly as he waits for what you want to speak with him about.";
			WaitLineBreak;
			say "[UmbraTalkMenu]";

to say UmbraTalkMenu:
	say "     You crouch down and scratch him behind the ears as you tell him about your exploits in the city.(WIP)"; [Will likely be the player telling him about various specific adventures]

Section 2 - Sex


Section 3 - Growing Up Events

[Puppy]
an everyturn rule:
	if hp of Lux is 1 and hp of Umbra is 1 and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 2 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang keeping Klauz away from puppies ] [or Lux and Umbra playing]
					if Klauz is booked:
						say "     Walking between the bookshelves, you hear a low growl from near the entrance. Concerned over what has Fang reacting in such a manner, you break into a run to aid the lupine protector. As you round the corner, you see Lux and Umbra peeking out from beneath Fang as he crouches protectively over them, teeth bared at the Felinoid. Klauz doesn't seem to be taking this behavior from his rival very well and looks ready to get into a fight over it. Despite his larger size, you doubt that it is a contest that the felinoid will win when Fang is guarding his children, giving him even more reason to come out on top. Klauz crouches down, readying himself to leap, while Fang lets out another snarl, saliva dripping from his exposed canines.";
						say "     You hastily intervene, the welfare of your children more important to you than any wish to finally settle this feud once and for all. Klauz looks up upon hearing you approach and makes a show of pretending that he wasn't just about to attack a protective father next to his children, slinking away into another area of the library. The felinoid gone, Fang lies down beside his pups and begins to wash them lovingly, Lux and Umbra scrambling around him, their tails wagging wildly, seemingly displaying gratitude for being protected from the big bad cat. Glad that the situation ended well, you wander off, hoping that it was just a misunderstanding rather than Klauz planning anything against the wolf pups.";
					else:
						say "     Wanting to spend time with Fang and his pups, you make your way over to him, your [if hp of Fang is 3 or hp of Fang is 4]Alpha[else]mate[end if] keeping half an eye on the world outside while most of his attention is focused on Lux and Umbra who are busy playing together. You settle down next to him and watch your children, resting your head against his side and inhaling his settling musk, receiving an affectionate lick in greeting. You take this chance to observe the similarities and differences between the two infant wolves as they leap about letting out yips and excited squeaks. Lux is slightly smaller than her brother and has pale-gray fur as opposed to Umbra's dark-gray fur which is more similar to his father's. He seems to be trying not to collide with his smaller sister too much a behavior that she has noticed. Seemingly annoyed about being treated as fragile, the ball of pale fur charges into her brother's side, sending him sprawling on the floor.";
						say "     Fang doesn't seem concerned so you wait for how Umbra will react. He regains his feet nearly immediately and hurtles back towards Lux and knocks her over in return, mouthing wetly at the fluff of her neck. Now that she has shown that she can give as good as she gets, the two pups continue their rough play, not quite play-fighting but definitely not concerned about physical contact in their game. You look at Fang's face and you are sure that you see a look of melancholy for a moment before pride and happiness overwhelm it, the majestic wolf surrounded by his favorite people. You snuggle up against him and content yourself to watch the children play.";
				-- 2: [ Umbra chasing a moth ]
					say "     As you look over to see how Fang and the children are, you spy Umbra bouncing about after a moth, trying to catch it. He has yet to succeed, seemingly doing it out of enjoyment rather than a desire to actually catch it. You chuckle to yourself at the simple pleasure that the pursuit seems to grant the young wolf and lean against one of the bookshelves to continue watching. You aren't the only one doing so either, with both Fang and Lux following Umbra's hunt with interest, their father likely gauging his son's capabilities. Eventually the moth settles on a stack of books, fluttering its wings as it rests for a moment. The dark-furred wolf takes advantage of this to ready a pounce, his rear shaking in preparation before he propels himself through the air and into the side of the stack, spilling the books across the floor and startling the moth back into flight. Umbra scrabbles to his feet and continues his private game, the moth either enjoying it too or too simple to consider fluttering upwards or out through the door. You decide to leave your son in peace and begin to walk away again. Now you just have to remember what you were doing before...";
				-- 3: [ Lux looking at a picture book ]
					say "     Looking towards Fang, you are surprised to see that Lux isn't next to him. Only Umbra is asleep underneath the large wolf. Noting the lack of concern from Fang, you guess that he knows exactly where his daughter is and start to wander around the library to find her, curious as to where she has gone. It doesn't take you long to locate her, the pale-furred wolf staring at an open picture book lying on the floor. Here eyes are wide, absorbing the bright colors of the image in front of her, a cartoonish wolf sitting beside a fox in a forest. She looks up at you and wags her tail, letting out a pleading whine and nosing the book. Gathering that she would like you to read it to her, you settle on the floor beside her and pick it up and look at the title, 'The Littlest Wolf', before starting at the beginning.";
					say "     She listens raptly as you read about a wolf who is smaller than all her brothers and sisters and who prefers to befriend the other forest animals rather than play rough and tumble with her siblings. By the end of the book the wolf has convinced the rest of her family that the other animals of the forest are good company, and her siblings have convinced her that playing with other wolves is fun too. Closing the book, you see that Fang and Umbra came to listen too, the book so engrossing that you didn't notice the other wolf pup sit next to his sister looking at the pictures. A feeling of contentment fills you as you relax with your family.";
				-- 4: [ Lux and Umbra playing beneath their father]
					say "     Wanting to spend time with Fang and his pups, you make your way over to him, your [if hp of Fang is 3 or hp of Fang is 4]Alpha[else]mate[end if]keeping half an eye on the world outside while most of his attention is focused on Lux and Umbra who are busy playing together. You settle down next to him and watch your children, resting your head against his side and inhaling his settling musk, receiving an affectionate lick in greeting. You take this chance to observe the similarities and differences between the two infant wolves as they leap about letting out yips and excited squeaks. Lux is slightly smaller than her brother and has pale-gray fur as opposed to Umbra's dark-gray fur which is more similar to his father's. He seems to be trying not to collide with his smaller sister too much a behavior that she has noticed. Seemingly annoyed about being treated as fragile, the ball of pale fur charges into her brother's side, sending him sprawling on the floor.";
					say "     Fang doesn't seem concerned so you wait for how Umbra will react. He regains his feet nearly immediately and hurtles back towards Lux and knocks her over in return, mouthing wetly at the fluff of her neck. Now that she has shown that she can give as good as she gets, the two pups continue their rough play, not quite play-fighting but definitely not concerned about physical contact in their game. You look at Fang's face and you are sure that you see a look of melancholy for a moment before pride and happiness overwhelm it, the majestic wolf surrounded by his favorite people. You snuggle up against him and content yourself to watch the children play.";

[Child]
an everyturn rule:
	if hp of Lux is 2 and hp of Umbra is 2 and Fang is booked and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 2 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang keeping the children in the library ]
					say "     Wondering how Lux and Umbra are, you decide to pay them a visit, walking towards the entrance to the library. They are larger than they used to be, and much more mobile, a problem you find that Fang seems to be dealing with as you near the front door. Both the children, perhaps bored of being stuck inside, seem to be trying to get past their father and see what the outside world is like, a desire Fang is determinedly obstructing bodily. As Umbra attempts to dart behind him, he spins around and lightly nips him, sending scuttling back with a squeak. Lux tries to take advantage of her brother's diversion and begins to slip beneath her father's chest but he takes a step back and pins her under one paw. 'Stay,' you hear Fang growl before releasing his daughter to go back and sulk with her equally outwitted brother.";
					say "This attempt thoroughly quashed, Fang is able to return to his duty of guarding the library, though you doubt that this will be their final attempt. Seeming to feel sorry for disappointing his childrens['] desire, the larger wolf settles down and begins to snuffle and lick them, a quiet conversation of rumbles and murmurs between them as they display their affection to each other. You decide to leave them to it, not wanting to interrupt their moment, even though they would likely welcome you joining them too.";
				-- 2: [ Umbra watching a Gryphon get chased off by a wyvern ]
					say "     As you walk around the library, you see Fang and his children by the front door. Lux is curled in a ball, fast asleep occasionally letting out a yip in response to something in her dream. Fang as usual is on guard, focused on watching the outside world for threats or anything else that may require your attention. Umbra seems to be assisting him, the young wolf looking to be a mirror of his father's stance, though quite a bit smaller, as they watch the movements outside together. Approaching them, you see that they aren't merely keeping watch, but observing a display of predatory superiority as one of the gryphons that you see so often is under attack by a wyvern, the difference in combat capability nearly as great as the difference in size. While Fang seems content to just watch and make sure that neither approaches his den, looking at Umbra, his eyes seem to be following both of the combatants['] movements and tactics.";
					say "     The gryphon seems to be well aware that it stands little chance fighting the wyvern head on, focusing its energies on trying to dodge the larger beast's swipes while looking for an opening of escape. The wyvern in contrast knows that this confrontation is of no danger to them and contents themself with toying with their adversary, displaying its dominance rather than trying to inflict harm. Both of their tactics could potentially be useful, the knowledge of when to try and evade attacks, when to strike, and when to intimidate your opponent rather than harm them. The gryphon finally sees their chance as one of the wyvern's wings brushes a roof, unbalancing it, and with a desperate flap of its own feathery wings, the gryphon flees, the wyvern flying in pursuit a moment later. The excitement over, you ruffle the fur on Umbra's head, hoping that he learnt the same lessons from the conflict as you. He seems to be deep in thought so you leave him to it, deciding what to do next.";
				-- 3: [ Lux learning from Amy ] [or Learning with mother]
					if Amy is booked:
						say "     While walking around the library, you come across Lux lightly holding a book between her teeth and follow her as she weaves between the shelves. It doesn't take her long to reach her destination, Amy. You are slightly surprised that Lux has chosen her as company, but when she drops the book into the husky's hand and sits down beside her as she opens the book, you realize that she is getting help with her reading and who better than someone who taught themself to read as they grew up under similar circumstances. Not feeling the need to remain hidden considering they can probably both smell or hear you, you approach the two of them and sit and listen to Amy read 'Little Red Riding Hood'. You can see your daughter's eyes following the words on the page as they are spoken aloud, a rogue thought imagining her memorizing the appearance and pronunciation for future reference, though you mostly dismiss this as farfetched, she's more likely to be looking at the pictures.";
						say "     As Amy describes the wolf being fed salty water to make him regurgitate the grandmother, Lux snuggles up against you, trusting you to protect her from such a barbaric trick. You return her affection, stroking her ears and whispering reassurances. It would seem that the book is an extended version of 'Little Red Riding Hood' as it seems to be in chapters and Amy continues even after the Woodsman has rescued the grandmother, detailing Little Red Riding Hoods other adventures often involving the wolf being a villain in one way or another. Lux doesn't seem to appreciate a wolf being in this role and Amy, seeing that she isn't enjoying it much, doesn't take long to close the book. 'There are likely other books with wolves in more benevolent roles in the library if you still want me to read to you, and don't forget to practice walking on your hind legs like the wolf in the story,' the husky offers. The young wolf looks embarrassed at this, but trots over to a wall and supports her body with her front legs as she tries to balance on her hind paws. You stretch as you stand up again, readying yourself to leave, not wanting your daughter to feel self conscious about something she was, from the look of it, trying to teach herself in secret. Thanking Amy for the story, you start to walk away, Lux taking a few tentative steps as you pass by her and give her a few encouraging words.";
					else:
						say "     While walking around the library, you come across Lux lightly holding a book between her teeth and follow her as she weaves between the shelves. It doesn't take her long to reach her destination, a pile of cushions in the children's zone. You are slightly surprised when Lux slumps to the floor beside them and looks at you, gesturing with her nose for you to sit down beside her on the cushions. Happy to spend some time bonding with your daughter, you recline next to her, making sure that she'll be able to see the pages of the book. You see that it is 'Little Red Riding Hood', though from the thickness of it, there may be other stories afterwards. As you read, you can see your daughter's eyes following the words on the page as they are spoken aloud, a rogue thought imagining her memorizing the appearance and pronunciation for future reference, though you mostly dismiss this as farfetched, she's more likely to be looking at the pictures.";
						say "     As you describe the wolf being fed salty water to make him regurgitate the grandmother, Lux snuggles up against you, trusting you to protect her from such a barbaric trick. You return her affection, stroking her ears and whispering reassurances. It would seem that the book is an extended version of 'Little Red Riding Hood' rather than a collection of stories, as it seems to be in chapters and continues even after the Woodsman has rescued the grandmother, detailing Little Red Riding Hoods other adventures often involving the wolf being a villain in one way or another. Lux doesn't seem to appreciate a wolf being in this role and you can see that she isn't enjoying it much and so close the book. Giving your daughter a hug, you reassure her that you wouldn't let anything terrible happen to her or her brother, you and Fang will make sure of it. She gives you lick of appreciation for the story and the comforting words before dashing off into the maze of shelves. When she doesn't return, you gather she has moved onto doing something else and stand up again, trying to decide what to do next.";
				-- 4: [ Lux and Umbra playing with Dash ] [or Fang and Children]
					if Dash is booked:
						say "     Feeling like reading some [one of]Dickens[or]Mills & Boon[or]Agatha Christie[or]Tolkien[at random], you begin to navigate your way between the shelves to reach the section that you hope they will still be. As you pass by Children's Literature, you are forced to leap out of the way of several blurs, upsetting a stack of magazines. With a quick look, you are able to identify the blurs as your children Lux and Umbra, as well as the fox kit, Dash, the three of them racing around the gaps between the shelves letting out excited yips as they pursue each other. You wonder whether they are playing something sophisticated like Tag, or whether it is just 'Chase-Each-Other-Until-You-Flop-Over'. Judging from the lack of contact, you guess the latter, making you smile at the simplicity of the games played by the young. It doesn't take you long to decide that watching the children play will be a more enjoyable use of time than reading a dusty, old book and you walk over to librarian's desk in the middle of the children's section so that you can watch more easily with less chance of being struck by a canid going at mach 5.";
						say "     It doesn't take long for the three of them to have circled around to you again, still sprinting as though pursued by demons. Currently Lux is in the lead, eyes wide and tongue lolling out of the side of her mouth. Behind her is Dash, the small fox keeping up exceptionally well despite his smaller size. Bringing up the rear is Umbra, though he seems to be tiring himself less than the other two, perhaps pacing himself in order to claim victory by the end, if whatever game they are playing can be won. You can hear them all panting, the energy that they put into their chase gradually depleting until they all collapse on their sides, tongues spilling from their mouths and saliva pooling by their faces. Not long after they have laid down, Fang appears and trots over to them, sniffing them just to make sure that they are alright. You wonder whether it was him who put them up to this game in order to tire them out, the thought amusing you as you walk over and ruffle the fur on his neck. Now that that is over, you have to decide what to do next.";
					else:
						say "     Wondering how Lux and Umbra are, you decide to pay them a visit, walking towards the entrance to the library. They are larger than they used to be, and much more mobile, a problem you find that Fang seems to be dealing with as you near the front door. Both the children, perhaps bored of being stuck inside, seem to be trying to get past their father and see what the outside world is like, a desire Fang is determinedly obstructing bodily. As Umbra attempts to dart behind him, he spins around and lightly nips him, sending scuttling back with a squeak. Lux tries to take advantage of her brother's diversion and begins to slip beneath her father's chest but he takes a step back and pins her under one paw. 'Stay,' you hear Fang growl before releasing his daughter to go back and sulk with her equally outwitted brother.";
						say "This attempt thoroughly quashed, Fang is able to return to his duty of guarding the library, though you doubt that this will be their final attempt. Seeming to feel sorry for disappointing his childrens['] desire, the larger wolf settles down and begins to snuffle and lick them, a quiet conversation of rumbles and murmurs between them as they display their affection to each other. You decide to leave them to it, not wanting to interrupt their moment, even though they would likely welcome you joining them too.";

[Teen]
an everyturn rule:
	if hp of Lux is 3 and hp of Umbra is 3 and Fang is booked and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 3 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang and the children 'hunting' just outside the library ]
					say "     As you pass by the entrance to the library, you are surprised to find Fang absent, [if hp of Fang < 3]the rope that is usually around his neck lying abandoned on the stone floor[else]an empty feeling filling you since your Alpha is away[end if]. Lux and Umbra also appear to be missing, and you hope that they are with their father, considering it has been quite some time since you saw them. A flash of white catches your eye as you look [if hp of Fang < 3]over Fang's discarded restraint[else]towards the door[end if], a note with the single word 'Outside' scrawled on it. How kind of your daughter to leave you a note, at least you assume that it was her, considering her superior talent for human tasks compared to the two male wolves. Curious to see what exactly they are up to, you stride out the front door and glance around, the area unusually quiet. Movement down the street draws your attention, and you immediately recognize the approaching group to be Fang and the children. They notice you at the same time, the two pups, if you can call them that anymore, bounding over to you, tails wagging wildly.";
					say "     Fang continues his sedate pace but seems just as pleased to see you, his tail waving at a similar rate. They are all carrying objects in their mouths, the two males holding tins between their teeth, whereas your daughter is carrying several bottles of water in a shopping bag. It would appear that Fang is teaching his children to scavenge in the city, a useful skill to be sure, though you hope that the water wasn't taken from someone that really needed it... You discard the thought and ruffle the fur on their heads affectionately and praise them, telling them how clever they are and saying jokingly that soon they won't be needing you anymore. While they seem to respond well to the praise, the jest causes their cheerfulness to fade, and they begin to anxiously lick at your hands. Seeing their distress, Fang gives you a reproachful look before growling, 'No. Always together.' You earnestly agree with him and apologize to Lux and Umbra for worrying them and that you would never actually want to leave just because they are learning how to survive on their own capabilities. You walk back into the library together, though your children make sure to keep close to you as though just to make sure.";
				-- 2: [ Umbra and Lux fighting a gryphon ]
					say "     A cacophony of screeches and barks catches your attention, and you wonder what sort of avian creature has strayed too close to the library doors and been met by Fang. Running towards the entrance, you are caught off guard, finding Fang watching whatever is happening from the doorway rather than being part of the conflict. Intrigued as to who is fighting, you stand beside the wolf, rubbing him just behind the ears as you walk past him to find Lux and Umbra clashing with one of the hermaphroditic gryphons. If Fang wasn't watching the ensuing fight so calmly, you might have been concerned, but you decide to trust his judgement, watching your children alongside him. While the slashing talons of the gryphon might concern someone if they only gave the exchange a cursory look, a closer appraisal would reveal that the wolves are in sync enough for one to attack while the other dodges, drawing the creature's focus between them and making its attacks sloppy while also resulting in it expending more energy as it has to split its attention between two threats.";
					say "     You can see now why Fang hasn't felt the need to intervene. He may even have encouraged Lux and Umbra into this fight so that they can make use of the lessons you imagine he has taught them or that they have learnt themselves. Lux is more reserved with her strikes, only darting in when the gryphon is sufficiently focused on her brother or when Umbra silently signals her to do so. Umbra is much more confident in his combat ability, keeping close to the gryphon's body, forcing it to constantly turn to try and protect itself, its eyes wide with distress. You gasp when the gryphon slashes at Lux with its beak, a strike that would have opened her from shoulder to pelvis, but she manages to gracefully sidestep the strike and respond by nipping it on the neck. Having seen how easily this fight could go catastrophically wrong, your children resolve to end this fight before it turns against them.";
					WaitLineBreak;
					say "     While the gryphon's attention is on Umbra, Lux charges in and clamps her jaws around one of the avian's hind legs, maintaining her momentum and sliding beneath its undercarriage. This results in it collapsing on its side, leaving it vulnerable, wings beating frantically against the dusty ground. Lux releases its leg and together with her brother approaches the gryphon's head, growling and with fur on end, demanding its surrender. With a plaintive squawk, the gryphon stills and exposes its neck, signaling its submission. It seems astonished when they turn away from it and lope towards you and Fang, allowing it to hastily right itself and take to the skies, barely looking back. The immediate threat over, the wolf siblings relax, lying down in front of you and begin to wash each other, a ritual that Fang joins them for. You can almost see the pride radiating from him at his children, a feeling that you share considering how well they complement each other's strengths, especially since it appears that the gryphon could not manage to touch them even once. A great feeling of love swells over you, and you can't resist crouching beside them and [if scalevalue of player > 2]encircling them all in a hug[else]hugging them one after another[end if], all of them letting out appreciative groans and thanking you with licks and nuzzles. You relax with them for a while before deciding that you should probably get back to doing your own things in the city.";
				-- 3: [ Lux practicing her speech while Umbra watches]
					say "     The sound of talking from several bookshelves over attracts your attention, and you start to walk towards the sound to see who it is. Rounding the corner, you find Lux and Umbra curled up next to each other, Lux reading aloud from what sounds like a natural history book while her brother listens intently, both of them enthralled by the pictures of flora and fauna. They look up as you approach, tails thumping against the floor in greeting. '[if player is female]Mother[else]Father[end if],' Lux barks joyfully, closing the book and placing it on a stack beside her. Among the books, you spy a dictionary, a few children's books, and some young adult fiction, several of which sound quite saucy from the titles. You decide not to pry as you wouldn't want to discourage her from learning by embarrassing either of them should it be a touchy subject. Crouching down beside them, you express admiration and pride that they are putting so much effort into learning and maturing in their different ways. While you talk to them, you stroke their sides, feeling the thick insulating fluff beneath the more robust outer fur.";
					say "     Curiously, Umbra appears to have softer and thicker fur than his sister, features that you didn't expect from the more physically-minded sibling. Lux's fur is still soft and lush, but feels finer in your fingers and flows through your hand more readily. You can hear appreciative groans from the both of them at the attention that you are giving them, and you wonder whether they would enjoy a good grooming at some point, though you would miss the tactile sensations if you used a brush instead of your fingers. You stand up and encourage them to continue their self-teaching, not wanting to disrupt their learning any more than you have. They give you a lick goodbye before you begin to walk away again, but as you do, you feel an unexplainable urge to watch them without them knowing. Strangely, they don't return to their reading, appearing to converse with each other in growls and whimpers that you can't interpret. Then to your astonishment, they stand up first onto all fours before lurching onto just their hind legs, using the shelves as supports. Lux seems unsteady on her paws but isn't making use of the shelves as much as her brother, who can only take a few steps before having to restore his balance. Nonetheless, you doubt that it will be long before they will be capable of walking on their hind paws for extended periods. You watch them for a few moments before slinking away, allowing them their privacy while they experiment and learn. Reading, talking, and walking on their hind legs, your children really are amazing.";
				-- 4: [ A play fight between Umbra and Lux ]
					say "     The sound of thumping and the occasional growl or bark draws you towards the entrance of the library to see what the commotion is. You are met by Lux and Umbra eyeing each other, chests low to the ground and hindquarters raised, tails waving back and forth. Fang looks on with interest, and you walk over to stand beside him, stroking his head as you watch your children together. Umbra bounces forward, Lux tucking her tail for a moment as she leaps back to evade her brother's lunge before pouncing forward herself. Umbra doesn't retreat, instead tucking his head beneath her chest and using his superior size to flip her on her side and letting out a snort as though to say, 'Really? That was simple.' She recovers quickly, rolling over and regaining her feet while thinking through what to try next, her brother watching her intently as he waits patiently, shifting his paws in response to her changes in posture. There is little doubt in your mind that Umbra is the more physically capable of the two of them, his larger size and time spent watching the monsters outside lending him an edge that Lux hasn't gained from her more intellectual pursuits.";
					say "     To your surprise, Lux feints to the left before striking from the right, catching her larger brother off guard and gripping the scruff of his neck lightly between her teeth. Fang seems intrigued too, neglecting keeping watch to observe the play fight between your shared children. Umbra's reaction astonishes you even more, the dark-furred wolf slumping sideways on top of his sister, trapping her underneath him as she emits a startled yip. She desperately scrabbles to get out from beneath him, managing to escape the unorthodox tactic in a few seconds. She seems a bit muted at being so easily countered by her brother, her tail drooping slowly. Everyone present seems to realize that in straight combat, Umbra will likely come out on top over his sister. Seeing the paler wolf's expression, Umbra rolls on his back in front of her, licking her throat and muzzle submissively, demonstrating that despite his success in their play, he still loves her and views her as above him in the pack. This seems to break her moment of somberness, her tail wagging steadily as she licks her brother in return to demonstrate no malice towards him. The two young wolves look up at you and Fang watching them approvingly, pleased with the strength of their bond. They rush over to you, enthusiastically sharing licks and affectionate vocalizations with you both, a gesture that you return equally lovingly. You relax and enjoy this family moment, luxuriating in a sea of soft wolf fur. Whatever you were meant to be doing can wait.";

Lux & Umbra ends here.
