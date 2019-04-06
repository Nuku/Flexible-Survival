Version 1 of J'Reth by Prometheus begins here.
[Commision for Heth Drakiel]
[ hp of J'Reth             ]
[ 0 - Unmet                ]
[ 1 - Met in Storeroom     ]

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
J'Reth	"J'Reth"

J'Reth is a man.
[Physical details as of game start]
ScaleValue of J'Reth is 3. [human sized]
SleepRhythm of J'Reth is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cocks of J'Reth is 1. [cock]
Cock Length of J'Reth is 11. [cock length]
Cock Width of J'Reth is 5. [ball size]
Testes of J'Reth is 2. [no balls]
Cunts of J'Reth is 0. [no pussy]
Cunt Length of J'Reth is 0. []
Cunt Width of J'Reth is 0. []
Breasts of J'Reth is 2. [2 nipples]
Breast Size of J'Reth is 0. [flat]
[Basic Interaction states as of game start]
TwistedCapacity of J'Reth is false. [can not take oversized members without pain]
Sterile of J'Reth is true.
PlayerMet of J'Reth is false.
PlayerRomanced of J'Reth is false.
PlayerFriended of J'Reth is false.
PlayerControlled of J'Reth is false.
PlayerFucked of J'Reth is false.
OralVirgin of J'Reth is true.
Virgin of J'Reth is true.
AnalVirgin of J'Reth is true.
SexuallyExperienced of J'Reth is false.
MainInfection of J'Reth is "".
The description of J'Reth is "[J'RethDesc]".
The conversation of J'Reth is { "Mantis Dragon sounds." }.
The scent of J'Reth is "     J'Reth smells of Mantis-Dragons and fairies in the wood.".

to say J'RethDesc:
	if debugactive is 1:
		say "DEBUG -> HP of J'Reth: [HP of J'Reth] <- DEBUG[line break]";
	say "     J'Reth is somewhat feminine but with some slight musculature to his frame. His body is covered in pale green scales all around with chitinous plates of a darker green around his chest, forearms, thighs, and shins.";


Section 2 - Talking with J'Reth
[There is a time and place for that. Like riding your bicycle inside.]

Section 3 - Sex
[Sex? You barely know him.]

Section 4 - Events

Introduction By Soup is a situation.
The level of Introduction By Soup is 0.
The sarea of Introduction By Soup is "Nowhere".

when play begins:
	add Introduction By Soup to badspots of guy;

after going to Mall Foodcourt while (Introduction By Soup is not resolved and a random chance of 1 in 3 succeeds):
	IntroductionBySoupEvent;

Instead of resolving Introduction By Soup:
	IntroductionBySoupEvent;

to IntroductionBySoupEvent:
	say "     The activity inside of the mall's food court seems to be even greater than usual. Laughter, chatter, and just general hubbub shows just how normal life can still be despite the effects of the nanites. Feeling a little peckish, you begin to approach the counter but accidentally bump against someone's side, causing them to drop their tray of food. With a shout of surprise, steaming soup splatters over their clothes and on the floor, the plastic bowl clattering mockingly beside their feet. You begin to apologize, but upon seeing them, the words halt in your throat. Their appearance is unlike any you have seen before. Their frame is somewhat slight, though they are not completely devoid of muscles, making you wonder what gender they are. Through their t-shirt that is rapidly becoming transparent, you can see that the same green scales that cover their face are present on the rest of their body, while darker-green chitinous plates appear to be a form of natural armor in places around their chest, forearms, thighs, and shins. You realize just how much you aren't paying attention to your surroundings when you spot the wings sprouting from their back, similar to those on a praying mantis.";
	say "     A voice interrupts you, sarcastically commenting, 'You bumped into me, yet you seem to be the one in shock. Perhaps stop staring and finish apologizing or cleaning up your mess.' You realize that the Draco-Mantis in front of you is the one who spoke, and he's looking at you expectantly from behind some spectacles, his face just as androgynous as the rest of him, with piercing blue eyes. You bashfully continue saying sorry, offering him a hand, only to be met with a rather sharp looking blade that extends from the chitinous guards on his forearm. 'Careful. I'm sure it was only an accident, soI don't need to take a pound of flesh. Also, I don't want to risk contracting ";
	if bodyname of player is "Human" and player is pure:
		say "any infections that you've had contact with, ";
	else:
		say "whatever you are, ";
	say "I rather like what I look like. There's no other guy out there like me.' He seems to realize what he has said and blinks firmly. 'I didn't mean it like that. I barely know you. That said, I should really get these clothes off. No, you can't come with me. You can apologize at another time. I'm usually somewhere around the mall. It's not as if there is anywhere else that is safe.' With that, he places his tray on a nearby table and hurries off, likely to a clothes shop or laundromat. You surreptitiously leave too, no longer feeling like eating here and not wanting to have a run-in with the cleaners or security.";
	now Introduction By Soup is resolved;
	now Mantis Meeting is active;

Mantis Meeting is a situation.
Mantis meeting is inactive.
The level of Mantis Meeting is 0.
The sarea of Mantis Meeting is "Nowhere".

after going to Mall Foodcourt while (Mantis Meeting is active and Mantis Meeting is not resolved and a random chance of 1 in 3 succeeds):
	MantisMeetingEvent;

Instead of resolving Mantis Meeting:
	MantisMeetingEvent;

to MantisMeetingEvent:
	say "     Spotting a corridor off to the side that you hadn't noticed before, you decide to see where it leads, curiosity getting the better of any caution you may have had. There doesn't seem to be any lights, so you keep one hand on the wall, waiting for your eyes to acclimate to the darkness. Suddenly, your hand runs over something that doesn't seem to be the wall. 'Can I help you?' you hear a voice say. 'Give me a minute, there should be a flashlight on the ground by my feet.' You back off a few paces apologizing while whoever you touched pats the concrete for their torch. 'Hang on. I'm sure I recognize that voice.' With a click, there is light, and you are staring at the familiar form of the Mantis Dragon. He doesn't seem to be wearing his shirt, or anything for that matter, though a quick glance at his crotch only shows a small slit in his carapace. You blink at each other before he breaks the silence. 'Were you checking for burns, or do you often feel up people you find in the dark?' he asks completely straight-faced, looking at you over the top of his glasses.'";
	say "     You protest that you couldn't possibly have known it was him in the dark and that you were just exploring a corridor that you hadn't seen before. He makes a skeptical sound before speaking. 'I don't believe that I introduced myself when we last met, what with the hot soup ruining my shirt, which I had to throw away because someone had contaminated my washing powder with a vitamin-rich substance. I'm J'Reth, and you owe me some new soup, preferably from a can as I don't feel I can show my face in the food court for a bit. One of the lunch-ladies made a joke about me not needing a knife with my food, and a few people may have found it funny. Possibly more than a few.' He lifts his arms, directing your attention towards the sharp blades growing from them. 'As if I could use these for cutting food. Though she did look slightly sorry at causing so much amusement at my expense, so I don't hold it against her. Accidents happen and comments can have unintended consequences. We just have to accept the mistake and move on.'";
	WaitLineBreak;
	say "     'In the future, I would suggest not exploring strange corridors that you find lying around. I'm not even entirely sure that we are still in our world. Come on, I'll walk back with you, as long as you don't spill any more soup on me, as I can't exactly molt on command, and I don't want stains on my carapace.' You give him a dry glance as you begin to walk back the way you came, the Draco-Mantis not far behind you. 'Don't give me that look. I've met you twice, and you started today's conversation by being handsy in the dark. You're lucky that I'm flattered rather than finding it creepy. You perv.' This last comment is muttered under his breath, and you pretend not to have heard it as you break out of the dark corridor, back into the activity of the food court. Coming out behind you, he looks around for a moment before quietly mumbling to himself, 'I feel quite liberated without my clothes, and no one has taken issue with it. Something to consider in the future, J'Reth.' You raise an eyebrow at him, and he blushes slightly.";
	say "     'Stop listening to my conversations with myself, would you? It's a habit I have, and I don't plan on losing it any time soon, but some of my musings are for my ears only.' Despite this outburst, you get the impression that he is enjoying the company. Remembering that you still haven't apologized properly for spilling soup on him or feeling his firm chest in the dark and now listening to him talking to himself, you take the chance to say sorry without having to hurry. 'That's very kind of you, but just to be on the safe side, I would like you to prove that you really are sincere. You can't be too careful these days with how the city has become, and I want to be sure that you haven't got too nefarious of an ulterior motive. Bring me a tin of soup, tomato if you can, and I'll call it even. You seem nice, and I haven't got many friends at the moment, talking to myself being a prime symptom of this. When you have what I want, I'll be in the [bold type]Haven Community Center[roman type]. It's north of here and slightly to the west.' Giving you a hasty but hopeful farewell, J'Reth hurries through the crowd, a multitude of eyes gazing admiringly at his body. It shouldn't be too hard to find a tin of soup, and he seems nice enough you think to yourself as you decide what to do next.";
	now Mantis Meeting is resolved;
	now Soup & Sexual Gratification is active;


Soup & Sexual Gratification is a situation.
Soup & Sexual Gratification is inactive.
The level of Soup & Sexual Gratification is 0.
The sarea of Soup & Sexual Gratification is "Nowhere".

after going to Mall Foodcourt while (Soup & Sexual Gratification is active and Soup & Sexual Gratification is not resolved and carried of food > 0 and a random chance of 1 in 3 succeeds):
	Soup&SexualGratificationEvent;

Instead of resolving Soup & Sexual Gratification:
	Soup&SexualGratificationEvent;

to Soup&SexualGratificationEvent:
	say "     The food court is, as usual, bustling with people eating and talking to one another, and [if perception of player > 20]an eagle-eyed scan reveals that J'Reth isn't there at the moment. [else]it doesn't really surprise you that you cannot see whether J'Reth is there or not. [end if]You are just considering leaving again when a tap on your shoulder makes you turn to find one of the mall rats. 'You're the one who's been hanging round with J'Reth, ain't ya? Queer one he is. Friendly enough, but seems to still be cautious around many of the refugees, or whatever it is Jenna is calling them nowadays. If I knew spilling soup down his front would help him open up, I would have suggested it to some of the people with an [']interest['] in him. He turned down getting laid so often that I thought he was celibate at one point... But I'm getting distracted. I tapped your shoulder to tell you that if you are looking for J'Reth, he's in the back rooms of what used to be the toy store. I doubt that he's expecting you, so be sure to let him know you are there. Wouldn't want him to slash your pretty face by accident.' Having imparted his advice, the rat slouches away, winking at a friend at one of the tables.";
	say "     Quickly checking a map for where to go, you set off at a brisk pace, eager to hand over the tin of soup and finally be able to apologize properly for the unfortunate events of your first meeting. It doesn't take you long to reach the former toy store, now a sleeping area for people taking shelter from the world outside. The shelves have been pushed round to give a modicum of privacy in one corner with a sign requesting that passersby be quiet so as not to disturb anyone who is currently asleep. You can see what looks like a door to the storeroom at the back, but between it and you are a sea of mattresses and sleeping bags, suggesting that there are too many refugees to house in the shelved-off area and that people will take whatever space they can get. Cautiously creeping across the room, focusing on not treading on any sleeping bodies, you finally reach the door and silently slip through, closing it behind you. You turn around with a sigh and are greeted with a novel view. 'Well. This is awkward...' J'Reth mutters, his hand clutching an impressive sized erection, seemingly in the middle of masturbating while sitting on the edge of his bed.";
	say "     [bold type]You may have caught him at an inopportune moment but he hasn't asked you to leave. Do you want to stay and see where things go, or just leave the can of soup on the floor before leaving?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay. You wouldn't want your apology to be impersonal. He isn't exactly hard on the eyes either.";
	say "     ([link]N[as]n[end link]) - Time to leave. Leaving the soup should be enough. You shouldn't have to apologize any further than that.";
	if player consents: [Stay]
		LineBreak;
		say "     You give him a smile and reassure him that he doesn't have to stop on your account. You just came to give him the tin of tomato soup that he wanted. Interrupting J'Reth's [']alone time['] would be counterintuitive to an apology after all. He gives a bashful smile and continues to lightly stroke up and down his length as you crouch to rummage in your backpack for the only-slightly-dented tin of soup. This inadvertently puts your face at crotch height, and you get a closeup view of the Draco-Mantis's erect cock. The turgid shaft is tapered from tip to base, where a slight bulb suggests that a knot may develop as he approaches orgasm. A polite cough rouses you from your thoughts, and you realize that you have stopped searching your bag and have likely been staring at his groin for longer than would be considered polite curiosity. 'Um... While you're down there, would you perhaps want to... um... suck it? I would be grateful as you would imagine, though be warned, I'm quite productive in the cum department if you catch my drift, so I would suggest not letting it leave you mouth or I'll have to clean the room. Only if you want to though, I'm not going to force you if you aren't comfortable.";
		say "     [bold type]Do you want to give J'Reth a blowjob? You're sure he'll be very grateful.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. The thought had already crossed your mind after all. You wonder what he'll taste like...";
		say "     ([link]N[as]n[end link]) - No. He seems nice, but that might be a bit too intimate for you. Time to leave.";
		if player consents: [Messy Oral]
			say "     Tilting your head as if to say, 'why not,' you stop searching your bag and bring a hand up, clasping it around J'Reth's twitching cock. The flesh is warm and slightly damp, giving off a faintly sweet scent. He leans back a bit, supporting his weight with his hands, the blades on his forearms carefully angled away from where they can do any damage, and he releases a contented sigh as he feels your palm slide from base to tip and back again. Small spurts of pre coat your hand and aiding in lubrication as it gets smeared over all eleven inches of his length. 'This means a lot to me, so thank you,' he gasps, the sensations that you are causing him affecting his speech. J'Reth's body echoes his gratitude, his shaft throbbing in your hand, pulsing in your grasp and begging for you to continue your attentions. He did ask you to suck him off though, so you decide to up you game and eagerly bring your mouth towards the tasty-looking crimson member.";
			say "     As the tip slides over your lips and tongue, the sweet flavor of his precum fills your mouth, even as more fluid is squirted against the back of your throat. J'Reth lets out an appreciative murmur and strokes a hand over the back of your head, his hips reflexively making short thrusts into the depth of your mouth. You decide that you have teased him for long enough and begin to take a more active role in pleasuring him, bobbing your head back and forth while sealing your lips around his shaft, causing him to half-stifle a moan. Gazing up at him and meeting his eyes, you continue your treatment of him, eagerly devouring more and more of his cock with each push, the tip reaching increasingly further down your throat until you reach your limit. By now, his knot has become more pronounced, and you doubt that he will last much longer before he climaxes and fills your stomach.";
			WaitLineBreak;
			say "     'You... mmmn... really seem to... mmmn... know what you are doing,' J'Reth exclaims between moans as he braces the back of your head with his hands while thrusting with ever increasing desperation, racing towards orgasm. Who knew that splashing soup on a stranger could lead to this? While he definitely isn't going to get the knot in, that doesn't stop him from trying to slip more of his shaft into your mouth with each frantic thrust, his body beginning to shudder as it approaches the cresting moment just before climax. With a euphoric cry, the Draco-Mantis begins to shoot his cum down your throat, hilting himself as the first squirt sprays forth. His length pulses, swelling and contracting in the tight, warm walls of your esophagus and filling your stomach with his carnal fluids. It doesn't show any signs of abating, making you wonder just how efficient his balls are, especially when you can't see them.";
			say "     J'Reth begins to slowly slide his still orgasming cock from inside of you, gasping at the sensations from his tender flesh. As the tip finally slips from the confines of your throat and rests on your tongue, you get the full flavor of his semen. While his precum was merely sweet, the cum that has so convincingly filled your stomach is similar in taste to honey, lacking the sometimes bitter or salty flavors more common in humans. He allows you a chance to take advantage of this, holding his cock inside of your mouth as the jets of sperm gradually fade to a trickle. 'That was certainly an experience worth repeating,' J'Reth says between deep breaths while his shaft softens and slips from your maw, dripping excess fluid onto the floor between you. 'Though I will have to return the favor at some point. My apologies that it can't be now, but after that, I am really exhausted.'";
			WaitLineBreak;
			say "You can hardly blame him, since it feels like you have several liters of semen sloshing around inside of your stomach, so you stagger to your feet again while he smiles tiredly, but gratefully, at you. Remembering your original reason for coming here, you quickly find the tin of tomato soup in your bag and toss it onto the bed beside him. 'Shouldn't it be me paying you for that, or did you enjoy it that much?' J'Reth teases you as he stows it on a small table at the head of the bed. Lying down on his bed, the Draco-Mantis sighs, 'I'm going to have a little lie down if you don't mind. As well as draining me of cum, you also drained me of energy, and a nap seems like a good way of replenishing both. I'll see you in the food court when I can, but you can consider your apology accepted.' You wish him sweet dreams before quietly leaving the room again and making your way back to the main area of the mall.";
			now resolution of Soup & Sexual Gratification is 1; [Gave blowjob]
			PlayerDrink 10;
			NPCSexAftermath player receives "OralCock" from J'Reth;
		else: [Time to go]
			say "     You refuse slightly embarrassedly and scrabble in your backpack for the tin of tomato soup before placing it on the bed beside him. Hastily opening the door again, you hear him quietly say thank you and despite seeming unable to meet your eyes, he continues slowly stroking himself. As you shuffle out of the small room, he calls after you, 'I'm sorry that I seem to have scared you away. I thought that anyone coming in would at least knock. Please meet me here again when you have the time. I promise I'll be more presentable next time.' Giving little more than a nod, you close the door behind you and weave your way through the beds and sleeping bodies again, returning to the Food Court with a visibly red face. That could have gone better.";
			now resolution of Soup & Sexual Gratification is 2; [Refused blowjob]
	else: [Leave]
		say "     Embarrassedly apologizing for intruding on his private time, you scrabble in your backpack for the tin of tomato soup and place it on the ground before hastily opening the door again You hear him quietly say thank you and despite seeming unable to meet your eyes, he still slowly strokes himself. As you shuffle out the small room, he calls after you, 'I'm sorry that I seem to have scared you away. I thought that anyone coming in would at least knock. Please meet me here again when you have the time. I promise I'll be more presentable next time.' Giving little more than a nod, you close the door behind you and weave your way through the beds and sleeping bodies again, returning to the Food Court with a visibly red face. That could have gone better.";
		now resolution of Soup & Sexual Gratification is 3; [Just left tin on floor]
	now Soup & Sexual Gratification is resolved;
	decrease carried of food by 1;
	now hp of J'Reth is 1;


J'Reth ends here.
