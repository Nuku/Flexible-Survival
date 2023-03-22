Version 2 of Eva by Kurainyx begins here.
[ Version 1.0 - Added Eva - Kurainyx ]
[ Version 2.0 - Added oral vore and subsequent meetings - Kurainyx]

"Adds a large female shark to Flexible Survival."


Section 1 - Event


Table of GameEventIDs (continued)
Object	Name
Sunbathing Shark	"Sunbathing Shark"

Sunbathing Shark is a situation.
ResolveFunction of Sunbathing Shark is "[ResolveEvent Sunbathing Shark]".
Sarea of Sunbathing Shark is "Beach".

when play begins:
	add Sunbathing Shark to BadSpots of FemaleList;
	add Sunbathing Shark to BadSpots of FurryList;

TempEva is a number that varies.

[  Resolution of Sunbathing Shark                            ]
[  0: Have not seen event                                    ]
[  1: Escaped from Eva at start                              ]
[  2: Escaped from Eva Tail Bind                             ]
[  3: Escaped from Eva Butt Mash                             ]
[  4: Escaped from Eva Butt Toy                              ]
[  5: Escaped from Eva Butt Plug                             ]
[  6: Went through Eva Anal Bound State                      ]
[  7: Went through Eva Oral Vore                             ]
[  97: Left without playing with Eva                         ]
[  98: Talked to Eva but was too big                         ]
[  99: Saw Eva but did not interact with her                 ]

[Keep event unresolved to allow repeat encounter and future additions]
to say ResolveEvent Sunbathing Shark:
	if Resolution of Sunbathing Shark > 0 and Resolution of Sunbathing Shark < 99:	[Subsequent meeting]
		say "     During your beach exploration, you spot the large shark woman, Eva, lying on the sand while[if daytimer is day]sunbathing[else]relaxing under the stars[end if].";
		if scalevalue of player > 5:	[Eva not interested because the player is too big]
			say "     Despite Eva's forward and horny nature, the domineering lady is actually pretty friendly, so you walk over and say hi to her. Eva turns her head to the sound of your voice, and she smiles upon recognizing you. That smile, however, shrinks slightly after her gaze roves over your body. 'Well, hey there,' Eva eventually returns your greeting as she continues to relax on the sand. 'It's cool that you came to visit me again, although I really wish that you were smaller. I could've really used some relief.' You find some amusement from Eva's usual brusque nature as the shark lady shrugs her shoulders before reverting to a more cordial smile. 'Not going to turn away a friendly face though. Feel free to chill with me if you want.' You stay and have a friendly chat with Eva for a bit before you leave her to resume your exploration.";
			now resolution of Sunbathing Shark is 98;
		else if Resolution of Sunbathing Shark is 97:	[Turned Eva down on previous meeting]
			say "     The last time you had met Eva, you turned down the offer of playing with her. Though the shark woman let you go without a fuss, she did seem pretty disappointed. She might play rough, but she's actually quite friendly too. Wondering if you should make it up to Eva, you decide to walk over and say hi to her. Eva turns her head to the sound of your voice, and she shoots you a lascivious grin upon recognizing you. 'Well, hey there, cutie,' Eva says in a husky tone as she sits up. 'Glad that you came back. I was beginning to worry that I scared you off, and I don't wanna lose someone as cute as you. You wanna try the whole song and dance with you going in my ass, or do you want to try taking a trip inside of me through the other end?' Eva asks, emphasizing her point by opening her maw wide and chomping down a few times. 'Don't worry. I won't bite, and I'll let you out eventually. I don't want to damage my favorite toy.'";
			EvaChoice;
		else if Resolution of Sunbathing Shark is 1 or Resolution of Sunbathing Shark is 2:		[Escaped Eva's tail trip or tail bind]
			say "     The last time you had met Eva, you escaped the predator before she could really get her hands and tail on you so that she could give you an inside tour of her plump ass. Despite the horny female's rather aggressive approach, the domineering lady did not seem to actually want to hurt you, and before her lustful advance, she actually seemed pretty friendly. You decide to walk over and say hi to her, although you do keep a healthy distance from the shark. Eva turns her head to the sound of your voice, and she shoots you a lascivious grin upon recognizing you. 'Well, hey there, cutie,' Eva says in a husky tone as she sits up.";
			say "     However, she does freeze when you take a step back when she stands up, only to chuckle a second later. 'Guess I was a bit too rough on you last time, huh? Glad that you still came back though. I don't really want to scare a friendly face away, especially someone as cute as you. Tell you what, if you want, you can walk away, and I won't make a fuss. No tricky behind your back thing either. If you do stay with me, we can either try the whole song and dance with you going in my ass, or you can try taking a trip inside of me through the other end,' Eva explains, emphasizing her point by opening her maw wide and chomping down a few times. 'Don't worry. I won't bite, and I'll let you out eventually. I don't want to damage my favorite toy.'";
			EvaChoice;
		else if Resolution of Sunbathing Shark is 3 or Resolution of Sunbathing Shark is 4 or Resolution of Sunbathing Shark is 5:		[Escaped from Eva before actual anal vore]
			say "     The last time you had met Eva, you escaped the predator, though not before you were smothered by plushy shark ass. Despite the horny female's rather aggressive approach, the domineering lady did not seem to actually want to hurt you, and before her lustful advance, she actually seemed pretty friendly. You also remind yourself that you kind of let Eva have her way with you for a while before struggling out of her grasp. A part of you wonders if you could do more with the hungry shark, so you decide to walk over and say hi to her.";
			say "     Eva turns her head to the sound of your voice, and she shoots you a lascivious grin upon recognizing you. 'Well, hey there, cutie,' Eva says in a husky tone as she sits up. 'Glad that you came back. Last time was pretty awesome, but we could make this time so much better if you get inside my ass. Or, we can try something different with you taking a trip inside of me through the other end,' Eva explains, emphasizing her point by opening her maw wide and chomping down a few times. 'Don't worry. I won't bite, and I'll let you out eventually. I don't want to damage my favorite toy.'";
			EvaChoice;
		else if Resolution of Sunbathing Shark is 6 or Resolution of Sunbathing Shark is 7:		[Did Eva's full anal vore or did oral vore]
			say "     The last time you had met Eva, you had succumbed to lust and submitted to the domineering woman. You let Eva have her way with you and ended up inside the shark's stomach. Despite being in the belly of a hungry predator, no harm came to you, and you actually found the whole experience strangely arousing. Curiosity and temptation urges you to play with the lustful lady again, so you walk over and say hi to her. Eva turns her head to the sound of your voice, and she shoots you a lascivious grin upon recognizing you. 'Well, hey there, cutie,' Eva says in a husky tone as she sits up. 'Glad that you came back. I had a real blast having you inside of me. Feeling your squirming body inside of me...' Eva pauses to shudder in delight and then eyes you with a ravenous gleam in her eye. 'I can't wait to have you inside of my ass again. Or, maybe we can try something different with you taking a trip inside of me through the other end,' Eva explains, emphasizing her point by opening her maw wide and chomping down a few times. 'Don't worry. I won't bite, and I'll let you out eventually. I don't want to damage my favorite toy.'";
			EvaChoice;
	else:	[First meeting]
		say "     During your walk along the beach, you spot someone lying on the sand on their back. The good samaritan in you prompts you to at least see if the person is alright, but as you get closer to them, you see that they are simply [if daytimer is day]sunbathing[else]relaxing under the stars[end if] with their arms behind their head. Getting closer also reveals that the person is a female great white shark morph with her back half being a gray color while her front is covered in white. The muted colors of her body is contrasted by her blonde hair bundled into a ponytail and the red bikini that barely conceals her voluminous breasts. However, her most striking detail is that she's close to [if scalevalue of player is 5]your size[else]the size of a small truck[end if]. The shark seems to be doing alright, but you could still go over and say hi to her, although you have to admit that her size also makes her quite intimidating. She appears to be dozing off, so it would be easy to move on without her noticing you.";
		say "     [bold type]Do you say hi to the shark woman?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Wake up and greet the large female.";
		say "     ([link]N[as]n[end link]) - Leave the predator alone.";
		if Player consents:
			LineBreak;
			if scalevalue of player > 4:		[Eva not interested because the player is too big]
				say "     Moving up to the lying shark, you say a friendly greeting and then ask if they are alright. The female carnivore takes only a second to respond as she turns her head in your direction while still lying down. Her ocean-blue eyes rove over your body, sizing you up, before she says, 'Well, hey there. I'm just chilling here, but thanks for asking. The name's Eva. Don't get to see many friendly faces these days, especially someone that's my size. Doesn't help that my appearance tend to keep others at bay too. It's cool of you to say hi to me. A shame that you're so big though. I could use some [italic type]relief[roman type], but I only like it when my partners are smaller than me,' Eva says unabashedly. You and the shark end up sharing some small talk before you leave her to continue on your exploration.";
				now resolution of Sunbathing Shark is 98;
			else:
				say "     Moving up to the lying shark, you say a friendly greeting and then ask if they are alright. The female carnivore takes only a second to respond as she turns her head in your direction while still lying down. Her ocean-blue eyes rove over your body, sizing you up, before she grins deviously at you. 'Well, hello there,' she says huskily. 'The name's Eva, and I'm very glad to meet you. A lot of people are scared away by my size and appearance, so it's not every day that I get to meet a cutie like you.' Eva finally stands up, and you can't help but instinctively step back as the huge predator looms over you. You quickly notice her tail swishing around in excitement from behind her, the appendage almost as long as she is tall. Her size alone is intimidating, but the effect is magnified by the razor-sharp teeth that she's showing off as her grin grows more menacing. 'Good thing that you came along too, because I'm getting [italic type]really[roman type] horny, and you look like the perfect little toy to go up my butt. You and I are going to have some fun.";
				say "     [bold type]Do you allow Eva to use you?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Have some fun with the shark.";
				say "     ([link]N[as]n[end link]) - Turn down Eva's invitation.";
				if Player consents:		[Leads to anal bound state]
					LineBreak;
					say "     Enticed by the domineering shark's words, you nod your head and take a step forward, earning you a wider grin from Eva. 'That's what I like to see,' she says as her tail makes it way toward you. The appendage is unusually long, allowing it to snake around you and effectively wrap loop after loop around you until more than half of you is coiled up. 'Now come here and let me play with you,' Eva commands before she suddenly tugs you forward, causing you to lose your balance and fall to the sand. You gasp a little when the coils trapping you briefly squeeze, only to moan a second later when a section of the shark's tail snakes between your legs to rub against your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if]. Distracted by the teasing appendage fondling you, Eva starts pulling her tail, along with you, back to her. You can either wait for Eva to drag you to her, or struggle out of her tail if you want to escape the horny shark's embrace.";
					now boundsegment is 1;
					now struggleatt is 2;
					EvaAnalBind;
				else:	[Easy-ish skill check for player to escape]
					LineBreak;
					say "     You tell Eva that you're not interested in helping out, and you promptly turn around to walk away from the shark.";
					let bonus be ( perception of Player + dexterity of Player - 20 ) divided by 2;
					let featbonus be 0;
					if "Wary Watcher" is listed in feats of Player, increase featbonus by 3;
					let dice be a random number from 1 to 20;
					say "You roll 1d20: [dice]+[bonus]+[featbonus] = [dice + bonus + featbonus][line break]";
					if dice + bonus + featbonus > 11:	[Successfully escaped]
						say "     Out of the corner of your eye, you notice something long and gray swinging your way, and you jump up as the object passes where your legs were just a moment ago. You quickly shift into a combat stance as you whirl back around to Eva. The shark woman is still smirking at you as her tail lazily sways back and forth behind her, no doubt the object that tried to trip you up a moment ago. To your surprise, Eva doesn't make a move to attack and instead holds up her hands in a placating manner. 'Not bad at all, cutie. Don't worry, I won't be doing anymore stuff to you. I might play rough, but not to the point where we have to duke it out. A shame that you're not willing to have some fun, but here's hoping that you'll change your mind to let loose later on.' You warily step away from Eva, but true to her word, the shark returns to relaxing on the beach, allowing you to resume your exploring.";
						now resolution of Sunbathing Shark is 1;
					else:	[Failed escape. Leads to anal bound state]
						say "     Out of the corner of your eye, you barely notice something long and gray right before it collides with your legs, sweeping you off your feet. As you try to scramble back onto your feet, the same object from before snakes all around your body, wrapping you in sandpaper-like coils and causing you to fall back to the sand. When you see the two fins at the end of the coils, you realize that Eva is using her unusually long tail to bind you. 'I wasn't asking, cutie,' Eva remarks, gazing at you with a predatory glare full of lust. 'Now be a good toy and let me play with you.' You gasp a little when the coils trapping you briefly squeeze, only to moan a second later when a section of the shark's tail snakes between your legs to rub against your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if]. Distracted by the teasing appendage fondling you, Eva starts pulling her tail, along with you, back to her. You'll have to struggle out of her tail if you want to escape the horny shark's embrace.";
						now boundsegment is 1;
						now struggleatt is 2;
						EvaAnalBind;
		else:	[Player leaves Eva alone, ending the event]
			LineBreak;
			say "     Deciding to leave the shark alone, you give the relaxing lady a wide berth as you leave the area. You're able to continue your exploration without disturbing the shark-morph.";
			now resolution of Sunbathing Shark is 99;

to EvaChoice:	[Choices for subsequent meetings]
	now calcnumber is 0;
	say "     You can either [link]allow Eva to eat you for fun (1)[as]1[end link], or you can [link]have the full shark butt experience again (2)[as]2[end link]. It seems that Eva will also not stop you if you choose to [link]leave (3)[as]3[end link].";
	get a number;
	if calcnumber is 1:	[Oral Vore]
		EvaOral;
	else if calcnumber is 2:	[Anal Vore]
		say "     'That's what I like to hear,' Eva says as her tail makes it way toward you. The appendage is unusually long, allowing it to snake around you and effectively wrap loop after loop around you until more than half of you is coiled up. 'Now come here and let me play with you,' Eva commands before she suddenly tugs you forward, causing you to lose your balance and fall to the sand. You gasp a little when the coils trapping you briefly squeeze, only to moan a second later when a section of the shark's tail snakes between your legs to rub against your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if]. Distracted by the teasing appendage fondling you, Eva starts pulling her tail, along with you, back to her. You can either wait for Eva to drag you to her, or struggle out of her tail if you want to escape the horny shark's embrace.";
		WaitLineBreak;
		now boundsegment is 1;
		now struggleatt is 2;
		EvaAnalBind;
	else if calcnumber is 3:	[Leave]
		say "     The flirty grin Eva is wearing instantly disappears when you tell her that you're not interested in playing with her, replacing it with a slight frown. However, the shark soon adopts a grin again, although one more subdued than earlier. 'Well, it's your loss. I would've shown you a heck of a time, but, hey, I get it that sometimes you're not in the mood or have things to do. Just make sure to come back when you're ready to have some fun again. I'll be waiting, cutie.'";
		now resolution of Sunbathing Shark is 97;
	else:
		say "Invalid choice. Type [link]1[end link] to have the full shark butt experience again, [link]2[end link] to let Eva eat you for fun, or [link]3[end link] to simply leave.";


to EvaOral:		[Base oral vore scene]
	say "     'Mmm, good choice. I was starting to get a bit hungry,' Eva says, walking to you with a seductive sway in her hips. She wastes no time in ensnaring you with her arms, hugging and pressing you right up against her bare body. Though her shark skin is on the rough side, you don't feel any discomfort as her barely concealed busty breasts rub all over your face and body as the horny woman shamelessly molests you. Eva's hands are everywhere as she explores your body, and a few moans of pleasure escape your mouth whenever her teasing hits one of your sensitive spots. The thought of submitting to the lustful lady to let her continue her delightful groping crosses your mind, and the urge grows as she discovers your vulnerable areas, making you mewl in need of her irresistible touch. However, being the predator that she is, Eva soon grows impatient with merely playing with her soon-to-be snack, and she places her hands on your cheeks to raise your head to look up at her grinning face.";
	say "     'You're such a cutie. I could just [italic type]eat you up[roman type],' the shark says as she makes a show of flashing her razor-sharp teeth, only to chuckle a moment later. 'Sorry, I know that's such a lame thing to say, but I couldn't resist. I just love having fun with you, and the good news is that we're about to have a lot more of that right now.' Eva's hands trace down your body, making you moan some more as she playfully pinches and rubs your sides, until she reaches your ass. You let out a surprised yelp when she gives your lower cheeks a nice squeeze before she then grabs you by the hips and shows off her strength by lifting your body closer to her head with little trouble. Warm air blows over you as you're moved right up to Eva's opening maw, and her tongue slips out to greet your face with slow, slobbery licks.";
	WaitLineBreak;
	say "     The salacious shark moans in approval from relishing your flavor, and it doesn't take long for her to move right on to the main course as she stuffs your head into her mouth, clamping her lips around your neck. With barely any light coming in through where the rest of your body helplessly dangles outside, all that you can see and feel is Eva's tongue continuing to assault your face while she sucks on your flavorful head like a lollipop. At the same time, she slowly pushes more and more of you past her lips, and although the shark's pointed teeth grazes your body, you can tell that despite her rough nature and hunger, Eva is being careful to not inflict any harm. More and more of you is fed into Eva's hungry maw, your head soon going down the predator's throat, and just like her exterior, it is all too happy to tightly squeeze your hapless form.";
	say "     The constricting tunnel takes over in pulling you down to the shark's belly, allowing Eva to focus on both savoring and playing with her food. You moan into the squelching darkness when you feel not only Eva's tongue dragging across your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if], but also her hands squeezing your ass as it hangs right inside of her mouth. The two-pronged tantalizing assault on your lower half combined with the strangely erotic encompassing flesh rubbing into your upper half is a storm of sensations that overload your mind with pleasure. Submitting to both your lust and the domineering shark controlling it, you whimper in need as you hump your [if player is male]now rock-hard dick[smn][else if player is female]now leaking puss[yfn][else]aching groin[end if] against Eva's tongue, earning you a chuckle from the large woman. The playful woman promptly obliges your horny begging by using her tongue and hands to renew her assault on your lower half. You don't last long under the onslaught of sensual pleasure, and the lustful shark soon squeezes an orgasm out of you. [if player is male]'Mmm, tasty,' come Eva's muffled statement as you cum all over her tongue[else if player is female]'Mmm, tasty,' come Eva's muffled statement as your juices spray all over her tongue[else]You hear Eva chuckle again as she feels your twitching body ride out its climax[end if].";
	say "     You barely come down from your orgasmic high before Eva stuffs the rest of you into her maw and down her throat, completely submerging you in darkness and squelching flesh. The predator's throat grows tighter as it accepts the rest of your body, the living walls conforming to your weary body as it draws you deeper into the churning depths. It doesn't take long for the predator's powerful muscles to ferry you to a wall of flesh, and with no trouble, it opens up a hole for you to be squeezed through, dumping you right into the belly of the beast. 'Ah, that was awesome,' Eva says as she pats her belly and the passenger that now resides within it. 'Dinner and a show. You really know how to treat a girl well. Better get comfy in there, my cute little belly-filler, because I'm going to be keeping you for a while. We're going to have so much fun.'";
	WaitLineBreak;
	now TempEva is 4;
	EvaOralScenes;
	now resolution of Sunbathing Shark is 7;

to EvaOralScenes:	[Random oral vore scenes and scene ending]
	say "     You're trapped in Eva's belly. You can either wait for the domineering shark to decide what to do with you next, or you can try to struggle to make her let you out.";
	say "     [bold type]Do you want to stay inside of the horny predator?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Eva have her fun.";
	say "     ([link]N[as]n[end link]) - You want to try to get out now.";
	if Player consents:
		LineBreak;
		say "     You decide to wait it out and allow the teasing lady to have her fun with you.";
	else:	[Strength check to end oral scene early]
		let bonus be ( strength of Player + strength of Player - 20 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20: [dice]+[bonus] = [dice + bonus][line break]";
		if dice + bonus > 16:
			say "     'Oof, I really felt that,' Eva says as she clutches her belly from the pounding you're giving her from the inside. 'I take it that you want out now?' You respond by hitting the flesh walls around you some more. 'Alright, alright, I get it. Just give me a minute,' Eva relents. After a few moments, the shark's stomach begins to lurch, and you're suddenly pushed upwards, propelling you out of Eva's stomach and out through her mouth as she spits you onto the sand. 'Sucks that you didn't want to stay with me longer,' Eva adds with a small sigh of disappointment, only to switch to a mischievous grin a moment later. 'That just means you'll have to make it up to me the next time you visit. I'll be waiting, cutie.'";
			now TempEva is 0;
		else:
			say "     Unfortunately, all of your struggles only gets you a chuckle from the shark as she jiggles her belly in response. 'Aww, is my toy trying to get my attention?' Eva says in a teasing tone. 'Don't worry. I got the perfect thing that we can do together.'";
	if TempEva > 0:
		decrease TempEva by 1;
		if a random chance of 1 in 4 succeeds:	[Chilling on Beach]
			say "     As you are held in Eva's stomach, you feel the center of gravity shift, making you fall onto your back. 'Chilling out is so much better when you have a full belly,' Eva murmurs to both herself and you, telling you that your captor has likely gone back to relaxing on the beach. The sound of the shark's light snoring soon reverberates through your twisted confines. Moments later, you notice the din of your squelching surroundings dying down, becoming no more than a subtle background noise. At the same time, those same walls slow down while still periodically pressing into you, although at a sedate pace. Though you are in the belly of a hungry predator, you're mostly sure that Eva would never actually hurt you, and you find yourself actually starting to relax because of the bizarre environment that you're trapped in grow more and more tranquil.";
			say "     Between the oddly calming droning of quiet gurgling and the shark's flesh gently kneading into you like a relaxing massage, an odd sense of safety and comfort overtakes you. The serene hold of Eva's stomach lulls you to close your eyes, and soon, you doze off and join Eva in slumber. You're later stirred awake from the surprisingly restful nap when you feel Eva starting to move as she stands back up and jiggles her stomach and the occupant within it for good measure. 'Thanks for being my sleeping buddy. That was a great nap. Now that I'm raring to go, what should I do with you next?'";
			WaitLineBreak;
		else if a random chance of 1 in 4 succeeds:	[Swimming]
			say "     Eva's belly suddenly starts shaking, throwing you all around the living chamber. The stomach-quakes last for a few moments until a huge lurch slams you against the fleshy walls, which thankfully absorb the brunt of the impact. Barely a second later, you hear a loud splash from outside the stomach, and your dark prison begins to gently sway instead of violently shaking like just a few moments ago. It doesn't take long for you to piece together that Eva must've ran down the beach to dive into the water, and now the aquatic predator is enjoying a swim with you inside her as an unwitting passenger. As Eva continues her swim, you witness how her shark transformation has given her the ability to stay submerged for long periods of time, as evidenced by how far and in between you hear and feel Eva emerge from the water for air. Unsurprisingly, Eva also proves to be a graceful swimmer, her stomach slowly rocking back and forth as she seamlessly cuts through the water.";
			say "     In fact, the gentle swaying is surprisingly soothing, and odd as it may be, the soft, squishy flesh of Eva's inside makes for a surprisingly comfy surface for you to relax and enjoy your pseudo-swimming ride. The almost cradle-like rocking and the soft sounds of swimming makes you feel calmer, despite your bizzare twisted confines, and after a while, you start to feel the beginning of a nap creeping up on you. However, you're stirred back awake when you hear Eva emerge from the water again, but this time, you feel her transition to a short walk before stopping to sit down, signaling the end of the shark's time in the ocean. 'Whew, nothing like taking a little dip in the water after a good meal.' Eva pats her belly in response. 'Hoped you enjoyed the ride, cutie. You sure made my little trip in the water a bit more interesting. Now, what should I do with you now?'";
		else if a random chance of 1 in 4 succeeds:	[Poking]
			say "     Just as you settle down to take a break inside of Eva, a portion of her stomach walls suddenly lurches forward, the slick flesh smooshing into your face before retracting back into its original position. Fortunately, the brush with Eva's insides did not hurt at all, just catching you by surprise. 'How you doing in there, cutie?' Eva asks in a teasing tone. At the same time, the dark confines that you are in shakes, sending you tumbling all around your squishy prison. 'I had a bit of downtime, so I thought that I could have some fun with my guest.' As you're being flung around in the squishy darkness, you realize that the domineering shark is playing with you by shaking and prodding her belly with her hands. With no way of fighting back, all you can do is endure Eva's teasing as her stomach walls continue to bounce you around like a toy. Eventually, the turbulent tummy calms down, but just as you think that Eva is done tormenting you, the walls come at you from the front and back, sandwiching you between slabs of slick flesh that you have no hope of escaping.";
			say "     The twisted yet warm and soft embrace makes your body tingle with pleasure from the odd sensations, and you can't help but let out a moan of need. 'Are you actually enjoying this?' Eva asks, although by her tone, you can almost picture her grin as she already knows the answer. 'If you like it in there so much, maybe I could just keep you in there... permanently.' Though you're pretty sure that she is kidding, a part of you can't help but find the idea enticing, considering the bliss that you're immersed in. The continued moans of pleasure that escape you as the succulent flesh grind into you only spurs Eva on to play with you more as she intensifies her assault on your senses. You're seemingly trapped in an endless loop of euphoria, but eventually, the shark's belly relents its onslaught and returns to its natural state, letting you collapse onto the squishy floor tired but satisfied. 'Well, that was fun,' Eva chirps. 'Now, what should I do with you now?'";
		else:	[Jogging]
			say "     'I think that I need to get in some exercise,' Eva says as her hands pat on her filled belly and chuckles. 'I seem to have put on a few pounds.' You only have a brief moment to consider your captor's words before the twisted confines you're trapped in begins shaking as the shark starts jogging along the beach. The hungry female's stomach jostles up and down with each step she takes, sending you tumbling all over your squishy cell. Fortunately, the soft, stretchy flesh walls absorb your impacts, reducing any potential injuries to mere annoyances. You're more than sure that Eva is purposefully adding more bounce to her steps just to annoy and tease you, but with you trapped inside of her, you have no way to stop the domineering shark, and she knows it.";
			say "     Though she is somewhat friendly and doesn't have any intention to actually harm you, Eva seems to enjoy lording her strength and power over you. You have no choice but to endure the tummy bounce-house as you're tossed around in the darkness like a rag doll. Eventually, the wild ride comes to a stop as you hear Eva ending her run and pat her belly again. 'Whew, that was a good workout, especially since I had some extra weight to carry around.' Eva punctuates her statement by jiggling her stomach a bit. 'Hope you had fun in there, cutie. Now, what should I do with you now?'";
		WaitLineBreak;
		if TempEva < 1:	[End oral vore due to time out]
			say "     You're idling in the darkness, waiting for Eva to choose the next activity that will let her play with you. After a few moments, the shark's stomach begins to lurch, and you're suddenly pushed upwards, propelling you out of Eva's stomach and out through her mouth as she spits you onto the sand. 'Welcome back to the outside world, cutie,' Eva says as she bends right over your prone form to grins down at you. 'I had a ton of fun with my favorite toy, and although I would've liked to keep you around some more, I figured that I should give you a break. Just make sure to not wait too long to visit me again. I'll be waiting, cutie.'";
		else:
			EvaOralScenes;


Section 2 - Vore Bound State


[  boundsegment of EvaAnalBind                               ]
[  0: Not in bound state                                     ]
[  1: Tail Bind                                              ]
[  2: Butt Mash                                              ]
[  3: Butt Toy                                               ]
[  4: Butt Plug                                              ]

to EvaAnalBind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:	[Player orgasm automatically advances to next bound state phase]
			if boundsegment is 1:
				say "     Despite the rough skin of the tail binding you, the serpentine appendage feels oddly sensual, especially since it keeps on grinding against your [if player is male]cock[smn][else if player is female]cunt[sfn][else]crotch[end if]. You had been subjugated to the near constant tail rubbing for so long that you can feel the growing need in your loins until you are right at the edge of your breaking point. All it takes is one more clench from Eva's tail for you to let out a guttural moan of pleasure as you reach your climax[if player is male]your cum leaking from between Eva's tail coils to drip onto the sand[else if player is female]your juices leaking from between Eva's tail coils to drip onto the sand[end if]. Eva chuckles and teases, 'I said that we were going to have fun, but I didn't expect you to get into it so quick. Can't wait to get you into my ass.' Exhausted from your orgasm, you're unable to resist the shark pulling you right into her waiting arms.";
				EvaAnalBindProgress;
			else if boundsegment is 2:
				say "     Every time Eva's cushy ass molds around your face, your whole world becoming nothing more than warm, musky shark flesh. The constant smothering of sensual pleasure wreaks havoc on your vulnerable body, filling you with horny desire. At the same time, her tail coils continue to grind and squeeze the parts of your body not assaulted by her bubble butt, adding even more sensations to your overloaded mind. With your lust soaring high thanks to your depraved captivity, all it takes is one good clench of Eva's butt cheeks for you to moan blissfully as you reach your climax[if player is male]your cum leaking from between Eva's tail coils to drip onto the sand[else if player is female]your juices leaking from between Eva's tail coils to drip onto the sand[end if]. Eva chuckles and teases, 'You're really enjoying my ass down there, huh, cutie? Told you that this can be fun for the both of us. Don't get too comfortable though because we're just getting started.'";
				EvaAnalBindProgress;
			else if boundsegment is 3:
				say "     Each time you enter Eva's ass, you're subjected to a round of clenching flesh sliding all over you as well as a lungful of heady musk. The repeated barrages of lust and sensual touches makes you almost as horny as the shark using you. Sensing your growing need, Eva quickens her pumping, intensifying your depraved ordeal and making your libido spike until you can't take it anymore. When your entire upper half is plunged deep into the shark's rear, you moan into her anal walls as you reach your climax, [if player is male]your cum leaking from between Eva's tail coils to drip onto the sand[else if player is female]your juices leaking from between Eva's tail coils to drip onto the sand[end if]. Exhausted from your orgasm, you let yourself go lax, making it easier for the hungry shark's ass to take you. 'I just knew that you would make a great toy,' Eva cheerfully remarks. 'I think that's enough teasing around. Time for the main event.'";
				EvaAnalBindProgress;
			else if boundsegment is 4:
				say "     It's too much for you. Between the pulsating anal walls and the intoxicating scent of shark musk, your weary body stands no chance of withstanding the lustful confines, and you succumb to your rapidly growing libido. Moaning in need, you push up against Eva's slick inner walls and rub your [if player is male]cock[smn][else if player is female]cunt[sfn][else]groin[end if] against the supple flesh, relishing the sensually silky sensations that caresses you back. It doesn't take much more to push you over the edge as you groan in pleasure[if player is male], your cum splattering within the shark's bowels[else if player is female], your juices splattering within the shark's bowels[end if] Exhausted from your orgasm, you let yourself submit to Eva. With you complying to her needs, Eva happily hums and says, 'You've been such a great toy, and I'm sure that you're all tired from tending to little old me. Let me send you somewhere nice to rest up. You'll enjoy it. I know I will.'";
				now Trixieexit is 1;
				EvaAnalBindEnd;
			now Libido of Player is 10;
			now lustatt is Libido of Player;
		else if struggleatt is 0:	[Bound state phase advances if struggle bar reaches zero]
			if boundsegment is 1:
				say "     Whether it's from exhaustion or just liking the idea of being the shark woman's toy, you eventually cease struggling. Eva's grin grows even wider as she pulls you right into her waiting arms. 'You and I are going to have so much fun. Can't wait to get you into my ass,' she says huskily.";
				EvaAnalBindProgress;
			else if boundsegment is 2:
				say "     After being subjected to the constant facemashing from Eva's squishy ass, you no longer can resist the call of the alluring booty. Eva chuckles when you not only cease your struggles, but you're actually pressing into her rear. 'That's the spirit. Told you that this can be fun for the both of us. Don't get too comfortable though because we're just getting started.'";
				EvaAnalBindProgress;
			else if boundsegment is 3:
				say "     You've already come this far, and you can't deny that some, or maybe even a major, part of you wants to see what Eva will do to you, especially since all of the shark's advances have been stoking the fires of your own lust. Letting yourself go lax, you make it easier for the hungry shark's ass to take you. 'I just knew that you would make a great toy,' Eva cheerfully remarks. 'I think that's enough teasing around. Time for the main event.'";
				EvaAnalBindProgress;
			else if boundsegment is 4:
				say "     Whether or not you put up a struggle, time and time again, you've submitted to Eva and allowed her to have her way with you. You've come this far, so why stop now? With you complying to her needs, Eva happily hums and says, 'You've been such a great toy, and I'm sure that you're all tired from tending to little old me. Let me send you somewhere nice to rest up. You'll enjoy it. I know I will.'";
				EvaAnalBindEnd;
		if enduring is true:
			decrease humanity of Player by a random number from 2 to 6;
		else:
			decrease humanity of Player by a random number from 4 to 10;
		if boundsegment is 1:
			say "     Bound tight by Eva's serpentine tail, you're slowly dragged toward the hungry shark. You can try to [bold type]S[roman type]truggle out of the tail hold, or you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] Eva, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else if boundsegment is 2:
			say "     Smothered by bouncy shark booty, you can feel Eva wearing down your resistance so that she can continue to have her ass play with you. You can try to [bold type]S[roman type]truggle away from the shark's rear, or you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] Eva, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else if boundsegment is 3:
			say "     Squeezed in and out of the shark's ass, you can feel Eva wearing down your resistance so that she can continue to have her way with you. You can try to [bold type]S[roman type]truggle away from the shark's rear, or you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] Eva, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else if boundsegment is 4:
			say "     Stuck deep inside of the shark's bowels, you're awash in musk and clenching flesh. You can try to [bold type]S[roman type]truggle out of the shark, or you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] Eva, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [EvaStruggleBar][line break][run paragraph on]";
		if humanity of Player < 1:		[Losing all sanity automatically plays next bound state phase after every round]
			if boundsegment is 1:
				say "     Though Eva has barely started using you for her lusty desires, the experiences you had beforehand has already weakened your mind to the point that you can't think of anything but give yourself to the domineering shark. With you putting up no more than a token struggle, Eva's grin grows even wider over your complete submission, and she pulls you right into her waiting arms. 'You and I are going to have so much fun. Can't wait to get you into my ass,' she says huskily.";
				EvaAnalBindProgress;
			else if boundsegment is 2:
				say "     With your weakened mind, it doesn't take much of Eva's squishy ass against your face to smother any thought of resistance from you. Eva chuckles when you not only cease your struggles, but you're actually pressing into her rear. 'That's the spirit. Told you that this can be fun for the both of us. Don't get too comfortable though because we're just getting started.'";
				EvaAnalBindProgress;
			else if boundsegment is 3:
				say "     The constant anal assault wears down your fragile mind, making you almost beg for the opportunity to sink even further into Eva's captivating ass. Letting yourself go lax, you make it easier for the hungry shark's ass to take you. 'I just knew that you would make a great toy,' Eva cheerfully remarks. 'I think that's enough teasing around. Time for the main event.'";
				EvaAnalBindProgress;
			else if boundsegment is 4:
				say "     Though you've allowed Eva to have her way with you time and time again, you've managed to maintain a clear enough mind to resist her if needed. That is, until now. Hugged by the clenching anal walls and mired in arousing shark musk, you can't hold out anymore. Giving in to your lusts, you fully submit to Eva. With you complying to her needs, Eva happily hums and says, 'You've been such a great toy, and I'm sure that you're all tired from tending to little old me. Let me send you somewhere nice to rest up. You'll enjoy it. I know I will.'";
				now Trixieexit is 1;
				EvaAnalBindEnd;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if 1 is 1:
					say ""; [There's an error with the new inform, this is to "Fix" it...]
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				if boundsegment is 1:
					say "     [one of]'Aww, come on. I just want to play with you,' Eva teases as you try to wriggle out of her tail hold[or]Thrashing around as best as you can, you manage to loosen Eva's grip on you, briefly stopping her from drawing you in[or]'Go ahead and resist, cutie. It'll just make it all the better when I do get to play with you,' Eva says[at random].";
				else if boundsegment is 2:
					say "     [one of]'Oh no you don't. I'm not letting a cutie like you get away now,' Eva states as you try to push away from her ass[or]As you try to push away from Eva, the shark both giggles and moans lustfully as your efforts also squeeze her cushy ass[or]Even though it's distracting to have Eva's ass humping your face, the shark herself is also occupied with her own pleasure, allowing you to loosen her hold on you[at random].";
				else if boundsegment is 3:
					say "     [one of]'Come on. Just stay still and take it,' Eva complains as you try to move away from her ass[or]Even though your movements are limited whenever Eva's ass descends, you wriggle against her tail that is coiled around parts of your body[or]'Oh yeah, keep squirming like that,' Eva says. Your wriggling inside of the shark's ass pleasurably distracts her from your escape attempts[at random].";
				else if boundsegment is 4:
					say "     [one of]There's not much room with Eva's insides mashing right up against you, but you manage to wriggle about in an attempt to free yourself from the musky hold[or]'H-hey, don't you want to stay in me longer?' Eva says before moaning in delight from your squirming[or]You can hear Eva groan as you struggle in your tight confines[at random].";
				increase struggleatt by 1;
				if boundsegment is 1:
					if struggleatt is 4:
						say "     With one final push, you manage to throw off the tail coils binding you just enough for you to slip out of their hold. You hastily crawl away a bit to avoid being recaptured before you quickly shift into a combat stance as you whirl back around to Eva. To your surprise, Eva doesn't make a move to attack and instead holds up her hands in a placating manner. 'Not bad at all, cutie. Don't worry, I won't be doing anymore stuff to you. I might play rough, but not to the point where we have to duke it out. A shame that you're not willing to have some fun, but here's hoping that you'll change your mind to let loose later on.' You warily step away from Eva, but true to her word, the shark returns to relaxing on the beach, allowing you to resume your exploring.";
						cleanboundmemory;
						now resolution of Sunbathing Shark is 2;
						now Trixieexit is 1;
						follow the turnpass rule;
				else if boundsegment is 2:
					if struggleatt is 6:
						say "     Despite Eva's size and strength, she's too busy trying to pleasure herself with you to notice that you have struggled enough to finally free yourself from her tail. When you quickly slip away, the still-humping shark loses her balance without her toy to mash her butt against, and she falls backwards onto the sand. 'Wh-what?! Hey! We were about to get to the best part!' Eva shouts angrily. Before she can get up, you're already bolting down the beach, leaving the frustrated, horny shark far behind.";
						cleanboundmemory;
						now resolution of Sunbathing Shark is 3;
						now Trixieexit is 1;
						follow the turnpass rule;
				else if boundsegment is 3:
					if struggleatt is 8:
						say "     Despite Eva's size and strength, she's too busy trying to pleasure herself with you to notice that you have struggled enough to finally free yourself from her tail. When you quickly slip away, the still-humping shark loses her balance without her toy to mash her butt against, and she falls backwards onto the sand. 'Wh-what?! Hey! We were about to get to the best part!' Eva shouts angrily. Before she can get up, you're already bolting down the beach, leaving the frustrated, horny shark far behind.";
						cleanboundmemory;
						now resolution of Sunbathing Shark is 4;
						now Trixieexit is 1;
						follow the turnpass rule;
				else if boundsegment is 4:
					if struggleatt is 10:
						say "     Eva's breathing grows more ragged from your movements. Though you don't seem to be doing much while being stuck inside of the shark's bowels, all of your movements causes you to rub yourself against her inner walls. Still sensitive because of the recent orgasm she had from taking you inside of her, you quickly stir up Eva's arousal until the shark lady cannot take it anymore. With another groan of pleasure, Eva climaxes again. The domineering female's anal walls clench down on you, but this time, they squeeze you in the opposite direction, and you soon find yourself pushed out of Eva's ass and onto the sand. The shark woman herself falls onto her butt in a sitting position, having to use her hands to keep her upright due to her exhaustion. Through her panting, she shoots you a smirk. 'Not bad, cutie. You were a lot of fun to play with, and I got some decent relief from you. A shame that you did not let me keep you longer for me to have the full experience. Maybe next time you'll let me use you properly.' You warily step away from Eva, but the shark returns to relaxing on the beach, allowing you to resume your exploring.";
						cleanboundmemory;
						now resolution of Sunbathing Shark is 5;
						now Trixieexit is 1;
						follow the turnpass rule;
				increase lustatt by a random number from 2 to 8;
				decrease humanity of Player by a random number from 1 to 2;
				wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if boundsegment is 1:
					say "     [one of]'That's it. Just come to me so that the real fun can begin,' Eva says as you just let her reel you in closer[or]Enticed with the thought of being the shark's plaything, you hardly put up a fight as Eva drags you toward her[or]You take a moment to try to rest and gather your strength, but the clenching of Eva's tail coils makes it hard to do so as she pulls you in some more[at random].";
				else if boundsegment is 2:
					say "     [one of]'Enjoying yourself down there?' Eva teases when she feels you not resisting her dominating ass[or]You go slack for a moment, allowing the plushy shark butt to mold around your face[or]Though you were forced into this situation, Eva's bubbly butt is wearing down your resistance and even making you want to go deeper into her ass[at random].";
				else if boundsegment is 3:
					say "     [one of]The clenching walls of Eva's ass sensually hug your body, and a part of you is tempted to feel more of it[or]'You're doing a great job at being my toy,' Eva compliments after you let her take you deep inside of her ass and hold you there for several moments[or]The heady musk emanating from the shark's rear muddles your senses with lust, urging you to submit[at random].";
				else if boundsegment is 4:
					say "     [one of]You relax into the twisted embrace of the shark woman's bowels[or]'Mmm, such a good toy,' Eva hums, enjoying the feeling of you filling her[or]The temptation to fully submit to the overbearing shark grows as your senses are filled with her arousing musk[at random].";
				if obliging is true:
					increase lustatt by a random number from 6 to 12;
				else:
					increase lustatt by a random number from 4 to 10;
				decrease humanity of Player by a random number from 3 to 7;
				decrease struggleatt by 1;
				LineBreak;
				wait for any key;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundrecover is true:
					SanBoost 5;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity from your depbraved containtment, recovering a small portion of your lost humanity.";
					now boundrecover is false;
				else:
					if boundsegment is 1:
						say "     [one of]'You're not going anywhere but up my ass if that's all you can do,' Eva teases as you try to resist her[or]You try to stop yourself from being pulled in as you wait for an opportunity to escape[or]'Are you even trying, or do you just like being wrapped up in my tail?' Eva teases as you try to hold your ground[at random].";
					else if boundsegment is 2:
						say "     [one of]Distracting as it is, you try and endure the rolls of shark fat and flesh enveloping your head[or]'Are you even trying, or do you just want me to rub my ass all over your face all day?' Eva taunts[or]You do your best to ignore the musky scent and jiggling flesh assaulting your senses[at random].";
					else if boundsegment is 3:
						say "     [one of]'You think that you can outlast my ass?' Eva taunts as you attempt to endure her anal advances[or]Even as her anal walls clamp down on your hapless form, you try to resist succumbing to lust[or]You try to weather the horny shark's assault as she continues to pump you in and out of her butt[at random].";
					else if boundsegment is 4:
						say "     [one of]You try to hold out against the clenching walls pressing in around you[or]'Trying to see if you can endure my ass?' Eva asks in a teasing tone[or]You do your best to resist your rising libido caused by your depraved containment[at random].";
					if a random chance of 1 in 2 succeeds:
						decrease struggleatt by 1;
					increase lustatt by a random number from 2 to 8;
					decrease humanity of Player by a random number from 1 to 2;
				LineBreak;
				wait for any key;
				next;
			say "Invalid action.";

to EvaAnalBindProgress:
	if boundsegment is 1:
		say "     'Oh, you have no idea how much I need this,' Eva states. She loosens her tail binding you to let her hands slip into the coils and let them run all over your body. 'You're going to feel so good once I get you into my ass.' Though you are about to be forced to be the shark's butt stuffing, a part of you can't help but find something alluring about the thought of your ass-filled future, especially since Eva's hands are sensually groping your body as she enjoys her new toy. Distracted by the domineering woman's teasing touches, you don't notice that she's moving about until her hands slip away. You then realize that you're being held in a standing position by her tail while the shark herself has turned around with her ass just inches away from your face.";
		say "     Now that you have a literal close-up with Eva's posterior, you can see that it's perfectly round, thick, and huge, even after considering her large size. 'Glad that you're enjoying the view, cutie,' Eva says, smirking at your gawking. 'Because you're about to get a lot more of it right now.' She then thrusts her hips back, slamming her ass right into your head and wedging your face right between the squishy cheeks. 'Oh yeah, that's the stuff. You're going to feel so good when you're deep inside of me,' the horny shark says, along with a moan of pleasure. As her hips rock around, you're taken along for the ride, sinking deeper between the globes of shark skin as the air starts to permeate with Eva's musk. You can either try to struggle your way out of the predator's hold, or just let Eva have her fun before you're taken further into the shark's hole.";
		now struggleatt is 3;
	else if boundsegment is 2:
		say "     Worn down by Eva's powerful ass, you go slack in her grasp as she continues to grind you with her plushy cheeks. 'Aww, is someone getting tired?' Eva teases when she backs off for a moment to give you a chance to take a breath of non musk-filled air. 'Good thing that I'm more than willing to pick up the slack. Now you just stay like that and let me use you.' The tail coils binding you tighten, firmly keeping you in a standing position, as the shark once again descends upon you with her titanic rear. This time, Eva focuses on wedging you deep inside of her ass, squishing you in between two encompassing walls of musky shark. You're soon pushed right up against the puckered hole of her anus, and with another shove, your head is plunged into darkness and intensifying musk as Eva moans in delight. 'Aww yeah, that's the stuff,' Eva croons, literally rocking your world as she wiggles her hips. The sex-hungry predator doesn't stop at your head, and she soon lowers herself even more to take more of you into her anal depths.";
		say "     The tunnel of flesh easily stretches to suck in your shoulders, and from there, you know that it would only take a moment to draw in the rest of your hapless body. However, to your surprise, Eva not only stops when she only takes a third of you into her ass, but she also begins slowly rising, letting you slip out from her heated rear hole until only the top of your head is left inside of her. 'I knew that a cutie like would make a great toy,' Eva says. 'I'm going to enjoy this.' Before you can fully process what she means, Eva's ass comes crashing right back on you, swallowing half of your body in one go. The anal walls clench around you before they once again slip up, releasing you back into the outside world. You barely have any time to take a breath as Eva once again plunges you deep into her bowels. Again and again, Eva moves you in and out of her ass, using you like a living dildo as her tail holds you in place. Though she never fully takes you inside of her, you know that the lustful shark will eventually do so. You can either struggle to free yourself from Eva's clutches, or just wait to become shark butt food.";
		now struggleatt is 4;
	else if boundsegment is 3:
		say "     It's getting harder and harder to go against the domineering shark's wishes, and after being subjected to the repeated insertions into Eva's musky hole, you find your resistance worn down once again. Submitting to the domineering shark's whims, you allow Eva to continue using you like a sex toy. Eventually, Eva's movements become faster, and she begins panting heavily with lust and sexual need as she begins to take in more and more of your body with every pump of her hips. Suddenly, the horny shark stops moving, leaving you completely outside of her ass, but it only lasts a moment when her giant rear comes crashing right back down on you.";
		say "     Her puckered hole completely engulfs your entire body, smothering you in tight, musky flesh, and Eva roars in delight as she climaxes from your full-body insertion. At the same time, the shark's spasming muscles draw you further into her behind, your world becoming no more than a tunnel of tight musky flesh clinging to every inch of your body. After Eva settles down from her orgasm and you into your depraved containment, you can hear her sighs of contentment muffled through the squelching flesh around you before she says, 'You're the best toy I've had for a really long time. Just give me a moment to rest, and then I'll give you the full tour of the ass you love so much.' Eva's wild ride is not over yet. You can either struggle to try to get Eva to let you out, or just wait to continue your impromptu exploration of the shark's depths.";
		now struggleatt is 5;
	increase boundsegment by 1;

to EvaAnalBindEnd:
	say "     Once again, the surrounding walls squeeze your hapless form, sliding you deeper and deeper into the literal bowels of the beast. The living tunnel gets tighter and tighter, the slick surface conforming to your body and making it almost impossible to move. Whether you had willingly or not submitted to the horny predator, there is no hope of escape now, and the only thing you can do at this point is to let Eva finish using you. For the longest time, all that you know is the touch of tight flesh and the smell of raw lust, along with the occasional satisfied moan from your aquatic captor. The rippling walls press into every inch of your body, including your [if player is male]cock[smn][else if player is female]cunt[sfn][else]groin[end if], stoking your arousal.";
	say "     The fires of your lust is further fueled with how you're literally in the source of the horny shark's musk, the heated, stifling aroma making your head swim. The surrounding walls continue to mash against your crotch, and with you being so built up with pent-up desire, it doesn't take long for the clenching flesh to wring out an orgasm from you. You groan as you achieve your release, and as you ride out your climax, Eva's body continues to squeeze your spasming form[if player is male], milking you of every drop of your cum[else if player is female], milking you of every drop of your juices[end if]. By the time you come down from your orgasmic high, your depraved containment had drained you of your energy, leaving you in a dazed state of pleasure. Eventually, you come to a stop when your head hits a wall. That wall, however, soon gives way, squeezing you through a hole and into a small chamber barely large enough to let you stand up and walk more than a few steps.";
	WaitLineBreak;
	say "     It soon dawns on you that you're inside of the shark's stomach, a notion that is confirmed when you hear Eva's voice rumble from all around you to say, 'Ahh, that's the stuff. You know, cutie, you make for a great toy, and now, you make for a great snack. I haven't had such a good time for a while, so I hope you don't mind that I keep you around for a bit.' Eva chuckles. 'Not like you have a choice. Better make yourself comfortable. You filled my ass, and now, you're going to fill my stomach.' You feel the stomach walls suddenly pressing down on you, as though the shark is groping her stomach, as well as the trapped prey inside of her. Unable to withstand the assault, you can only lay there and let the slick flesh continue to knead your weary body. Between that and going through the entire draining, debaucherous ordeal, exhaustion claims you as you pass out to the sounds and feel of churning flesh.";
	say "     An unknown time later, you wake up to find yourself lying on sand with the [if daytimer is day]blue sky[else]star-filled night sky[end if] above you. 'Oh look. My toy finally woke up,' an all too familiar voice says from right beside you. Eva is also lying on her back, her head turned to give you a smirk filled with sharp teeth. The intimidating sight and memories of your recent tour inside of the predator makes you back away, which brings a chuckle to the large shark. 'No worries, cutie. You were an awesome toy and really scratched my itch, so playtime is over... at least for now. Be sure to visit me again. I'll be more than happy to use a cutie like you again.' You warily step away from Eva, but the satisfied shark merely returns to relaxing on the beach, allowing you to resume your exploring.";
	cleanboundmemory;
	now resolution of Sunbathing Shark is 6;
	if humanity of player < 25:
		now humanity of player is 25;
	wait for any key;
	follow the turnpass rule;

to say EvaStruggleBar:
	if boundsegment is 1:
		say "[bracket]X[if struggleatt > 1]X[else]-[end if][if struggleatt > 2]X[else]-[end if][if struggleatt > 3]X[else]-[end if][close bracket]";
	else if boundsegment is 2:
		say "[bracket]X[if struggleatt > 1]X[else]-[end if][if struggleatt > 2]X[else]-[end if][if struggleatt > 3]X[else]-[end if][if struggleatt > 4]X[else]-[end if][if struggleatt > 5]X[else]-[end if][close bracket]";
	else if boundsegment is 3:
		say "[bracket]X[if struggleatt > 1]X[else]-[end if][if struggleatt > 2]X[else]-[end if][if struggleatt > 3]X[else]-[end if][if struggleatt > 4]X[else]-[end if][if struggleatt > 5]X[else]-[end if][if struggleatt > 6]X[else]-[end if][if struggleatt > 7]X[else]-[end if][close bracket]";
	else if boundsegment is 4:
		say "[bracket]X[if struggleatt > 1]X[else]-[end if][if struggleatt > 2]X[else]-[end if][if struggleatt > 3]X[else]-[end if][if struggleatt > 4]X[else]-[end if][if struggleatt > 5]X[else]-[end if][if struggleatt > 6]X[else]-[end if][if struggleatt > 7]X[else]-[end if][if struggleatt > 8]X[else]-[end if][if struggleatt > 9]X[else]-[end if][close bracket]";

Eva ends here.
