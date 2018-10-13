Version 1 of Finn by Wahn begins here.
[Version 1 - Put into its own file]

Table of GameEventIDs (continued)
Object	Name
Missing Farm Hand	"Missing Farm Hand"

Missing Farm Hand is a situation. The level of Missing Farm Hand is 5. Missing Farm Hand is inactive.
The sarea of Missing Farm Hand is "Plains".

FinnTrackingProgress is a number that varies. FinnTrackingProgress is usually 0.

[ FinnTrackingProgress                                   ]
[   0: not found any tracks yet                          ]
[   1: found the tracks, didn't follow                   ]
[   2: found the tracks, followed                        ]
[   3: Finn rescued, no sex                              ]
[   4: Finn rescued, player fucked him                   ]
[   5: Finn rescued, centaur fucked him                  ]
[  99: Finn's dead                                       ]
[ 100: Finn joined the stables                           ]

[ Note: The quest log for this is in Wahn/Anthony.i7x    ]

Section 1 - Events

Instead of resolving a Missing Farm Hand:
	if FinnTrackingProgress is 0:
		say "     Moving to the far end of the farm proper, you check out the usual patrol route along its perimeter, easily visible in the nanite-enhanced fast-growing grass. The stalks of it seem too tenacious to be beaten by being regularly walked on with horseman hooves, so it is just path of trodden-down grass, not actually a dirt track, despite the obvious heavy foot traffic. From what Anthony said and your own observations, one or another of the farmhands makes the circuit around the farm at least once an hour. Now if you only could find a trace of what happened to Finn...";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], (Perception-Check)[line break]";
		LineBreak;
		increase diceroll by bonus;
		if diceroll > 13:
			say "     Walking along the path, you do spot something a little bit out of the ordinary - there is a faint dip in the height of the grass in one spot, a bit off into the grassland. You move closer and see the signs of a struggle, with a moderately sized patch of the quick-growing grass still recovering from a disturbance in its growing pattern. Looks like someone - or several someones - wrestled on the ground here. The typical cowboy-hat of one of the farmhands is visible between the yellow and green stalks of the grass, obviously abandoned when Finn was abducted. Following a fairly well visible trail starting at the fight's location, you walk out into the grassland. A bit further along, on a small patch of dirt they moved across, you see that the group left numerous hoof-prints. Looks like they were some sort of equines too...";
			LineBreak;
			say "     [bold type]Do you want to keep tracking the raiders? There'll likely be a few of them, so you'd better be ready for a fight.[roman type]";
			if player consents: [keep going]
				LineBreak;
				say "     Best to keep at it before this trail goes any colder than it is! Determined to see things through, you set out to track whoever took one of Anthony's men. An hour or two go by as you follow the hoof-prints, and you're starting to doubt that this will go anywhere when you stumble upon a very lucky break! There is a fresh trail of what looks like the same group of people crossing the original one! If you had to guess, they seem to be roaming the whole area in a search for targets.";
				say "[FinnTracked]";
			else: [stop for now]
				say "     You move back to the patrol path and follow it to the farm entrance. If you want to save Finn, you better get ready quick. The trail is only going to get colder over time...";
				now FinnTrackingProgress is 1;
		else:
			say "     Searching around for a while, you find nothing out of the ordinary, with no indication what happened to the missing farmhand. Maybe you should try again another time, with more rested eyes and at the height of being perceptive...";
	else if FinnTrackingProgress is 1:
		say "     Returning to the spot from where Finn was abducted, you look around a bit and make out the faint trail the unknown raiders took. Delaying might not have been such a good idea - this trail is pretty cold now! Despite this, you're determined to see things through and set out to track whoever took one of Anthony's men. An hour or two go by as you follow them and you're starting to doubt that this will go anywhere - when you stumble upon a very lucky break: There is a fresh trail of what looks like the same group of people, crossing the original one! If you had to guess, they seem to be roaming the whole area in a search for targets.";
		say "[FinnTracked]";

to say FinnTracked:
	say "     Turning to follow the newer trail, it doesn't take all that long before you hear shouts and cursing coming from somewhere ahead of you. There are fragments of partially collapsed buildings sticking out of the grassland a short distance that way, the largest one rising not quite two stories. With the ruins breaking up the sounds a bit, you hear snippets of laughter, as well as angry and amused shouting from somewhere behind.";
	WaitLineBreak;
	say "     Cautiously moving closer, you do your best to stay hidden and peek around a crumbling wall and see a camp between the ruins, filled with multiple creatures. Two are centaurs, a male and female, and both of them have their front legs tied together, negating the usual speed and agility of the mythical beings. Clearly, these are captives of the other inhabitants of the camp - a trio of horsemen, bearing a brand of overlapping horseshoes on their shoulders. Two of them are restraining the male centaur while number three is standing at the female's rear end, one arm around a completely naked Finn's shoulder and his hand tightly gripping the farmhand's hard equine cock.";
	say "     'Have a taste how good it feels to follow our master!' the guy next to Finn barks out in a rough voice, smacking the missing farmhand's manhood against the centauress's bare pussy lips, then shoving its cockhead in between her folds. There is a frightened whimper from the young woman and the male centaur tries to rear up, shouting at the height of his voice, 'Get your stinking hands off my sister, you bastards!' Meanwhile, Finn gives a deep grunt and starts pumping his hips back and forth all on his own, clearly enjoying the feel of being inside the centauress.";
	WaitLineBreak;
	say "     'That's it - have fun boy! Just let your instincts take over, no sense resisting anymore,' the horseman with Finn says as he gives the farmhand an encouraging slap on his bare buttocks, then turns and stares right at you. 'And who do we have here - an uninvited visitor!' There's not much point in staying hidden any longer, now that all the horsemen (except Finn, who's busy fucking) turn to look at you, so you step out into the open.";
	if Nightmaremastery is 1:
		say "     The reaction of the horsemen is priceless as they recognize you as the master of the stables. Hostile stares turn into wide-eyed shock and a startled jeer from one of them stops quite suddenly as he chokes it down. 'Welcome master. I - er - we were sent out from the stables to 'encourage' centaurs to join us. So far they've seemed quite reluctant and even violent about the prospect, so we're trying other ways.' Squirming under your gaze as you start questioning them, they report that they also picked up another horseman who doesn't yet have the stable's brand. 'He'll be a proper addition to the herd soon, as you can see. Was a bit resistant at first, but he'll fall in line soon enough,' the leader of the little raiding party says proudly with a nod at Finn.";
		say "     [bold type]What do you want to do with these guys now? Leave Finn to be properly 'initiated' into the stables ([link]Y[as]y[end link]) or do you put a stop to it ([link]N[as]n[end link])?[roman type][line break]";
		if player consents:
			LineBreak;
			say "     Telling the horsemen that you approve of their work in your service, you stand back and watch the farmhand go at his centauress, really pounding into her rear end while she can't help but start moaning at the hard dicking. The young woman's brother is a bit of an annoyance as this goes on, and with a casual wave of your hand, you order the men to gag him or something, then turn your eyes back to the female centaur's juicy snatch and Finn's firm buttocks. The slurping sounds starting up a few moments later show that the horsemen decided on a face-fuck to stop the other centaur from complaining.";
			say "     You preside over your minion's work, then are the one holding the branding iron as Finn presents his shoulder for the mark of the stables. Looks like you'll have to disappoint Anthony about returning his worker. With a grin, you leave the horsemen to further 'training' sessions with the centaurs.";
			increase score by 10;
			now FinnTrackingProgress is 100; [Finn joined the stables]
			now Resolution of Missing Farm Hand is 100; [Finn joined the stables]
		else:
			LineBreak;
			say "     Telling the horsemen that while you approve of their initiative, the farm is off limits, you call out for Finn to stop - but the equine male is well in the grip of his lust by now. In the end, you have to step up and wrench him off her with a firm grip on a shoulder, making the guy fall on his ass with a growl of protest. He seems ready to attack you for a second, then the gleam of impending violence leaves his eyes as Finn takes in the imposing presence you have as the stable's master. He slumps on his back and shows his open palms in a sign of slightly confused surrender. Informing the horseman that his boss has been looking for him, you command him to take care of his boner and get dressed. After a quick burst of jerking off, Anthony's missing worker puts his clothes back on and follows you directly back to the farm.";
			increase score by 10;
			now FinnTrackingProgress is 3; [Finn rescued, no sex]
			now Resolution of Missing Farm Hand is 3; [Finn rescued, no sex]
	else:
		say "     The horseman leader looks at you and is clearly less than impressed. His equine shaft twitches a little as he arrogantly laughs out loud. Clearly looking as much for a fight as for sex, he calls out, 'I'm calling dibs on this one!' With that said, he charges at you.";
		now horsefight is 1;
		challenge "Horseman";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     Having lost the fight, there's little left but to slink back to the farm in defeat. With the eager way he was pounding that centauress, Finn will no doubt shortly be indoctrinated as another one of their raiding party. Nothing left but to tell Anthony that he's not coming back.";
			now FinnTrackingProgress is 100; [Finn joined the stables]
			now Resolution of Missing Farm Hand is 100; [Finn joined the stables]
			move player to McDermott Farm Entrance;
		else if fightoutcome >= 30: [fled]
			say "     Having run away from the fight, there's little left but to slink back to the farm in defeat. With the eager way he was pounding that centauress, Finn will no doubt shortly be indoctrinated as another one of their raiding party. Nothing left but to tell Anthony that he's not coming back.";
			now FinnTrackingProgress is 100; [Finn joined the stables]
			now Resolution of Missing Farm Hand is 100; [Finn joined the stables]
			move player to McDermott Farm Entrance;
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     While you were busy overwhelming the leader of the horsemen, it seems the male centaur took advantage of the other two being distracted! He is currently fighting them with surprisingly large success despite the imbalance in numbers. In fact, with a kick of a strong leg, one of the horsemen goes down while you're still thinking about if you should come to his help. Then his shout of, 'You'll pay for violating my sister! I'll kill you all!' the centaur shouts directly at Finn, who never stopped pounding into the young woman's pussy despite the fighting going on around him.";
			say "     Focusing your attention on getting Anthony's missing worker out of here without (getting/being) hoof-stomped out of existence, you tell Finn to stop fucking around, but he doesn't even register a word of what you're saying. Only when you grab him by the shoulder and give a heavy pull does his long shaft slip from the centauress's nether lips, smacking the horseman's inner thigh with a wet slap. 'Hey, I was -' Finn starts to get out, then an incoming punch from the by now victorious centaur sends him to the ground, dazed and clearly helpless.";
			WaitLineBreak;
			say "     The enraged male is about to follow up and trample Finn while he's down, but you quickly intercept him and do your best to calm him down. Arguing that Finn was just a captive, like they were and he was more or less forced into sex, you appeal to the centaur's sense of fairness. The young stallion snorts derisively and growls out, 'Fair you say? Pah, my sister's first time has been taken from her, and by such horseman bastards too!' He angrily gestures at the young woman who looks over her shoulder in breathless need, her nether lips literally dripping with fluids. She's one very aroused centauress right now, despite the roughness of her first sexual experience.";
			say "     You can see the male centaur's nostrils flare at the scent wafting up from under her tail and he tells her in a somewhat hoarse tone, 'G-go over there please, okay? Just... wait and calm down. I'll deal with these guys in the meantime!' Looks like the young man couldn't help but get aroused, despite the fact that the fertile centaur's musk clouding his senses is his sister's. A glance at the enormous equine shaft dangling under his barrel-shaped horse body gives you an idea how to avoid any further violence...";
			LineBreak;
			say "     [bold type]The centaur is about to attack Finn again. Do you want to try solving this peacefully (if sexually) ([link]Y[as]y[end link]), or do you want to fight him off ([link]N[as]n[end link])?[roman type][line break]";
			if player consents:
				LineBreak;
				say "     With some diplomatic finesse, you manage to explain to the horny centaur that there's no need to kill anyone right now. After all, if his sister was a virgin, then the debt should be payable with another virginity. Surely, such a strapping hunk of a horseman like Finn hasn't taken a dick before (and hopefully he'll forgive you for brokering this deal and saving his life). The red-faced young male is torn between his anger and libido as he looks at the prone horseman, then concern is added to the mix as he glances over to his sister. The centauress seems to be pretty entranced by her first heat flaring up strongly and is wandering off a little bit.";
				LineBreak;
				if player is male: [male + herm]
					say "     [bold type]Do you suggest to the centaur to go care for his sister ([link]Y[as]y[end link]), or will you offer to watch out for her while he is 'busy' ([link]N[as]n[end link])?[roman type][line break]";
					if player consents: [fuck Finn?]
						LineBreak;
						say "     The young male snorts and scrapes a hoof over the ground, then grumbles, 'Fine. But I don't want this bastard getting off scot-free!' His nostrils flare, seemingly still picking up the musk the centauress left in the air, then he focuses on you with an almost manic expression. 'You do it then! Pound that fucker's cherry ass like he deserves!' Given the way his brows draw together as you hesitate for a second, you suppress a chuckle at the bizarre situation and start to strip, pulling out your own manhood and stroking it a few times to get hard.";
						say "     With a satisfied grunt, the centaur gallops off and catches up with his sister a short distance away. Tracking the movement with your eyes, you see the two of them embrace... followed by some quiet talking and then a sudden, very eager kiss between them. By the way the male equine's long shaft is dripping copious amounts of pre, it is more than clear that these two are well in the grip of their base urges. Their familial relationship doesn't seem to matter as biological imperative tells them what should happen between a proud stallion and a fertile mare. Within moments, the female has spun around, presenting her furred rump and the horny male mounts her right away, ramming his shaft deep.";
						WaitLineBreak;
						say "     [bold type]Well, that leaves you standing over a prone horseman with your hard cock in hand. The centaurs surely are too busy to care about what exactly you'll be doing. Do you snatch up Finn and your clothes, then run ([link]Y[as]y[end link]), or will you fuck the farmhand's virgin ass after all ([link]N[as]n[end link])?[roman type][line break]";
						if player consents: [run!]
							LineBreak;
							say "     Hastily wrenching up your pants again and stuffing a hard [cock of player] erection into it, you finish dressing in a few moments, then get an arm around the horseman to lead him off, half bracing and dragging him. A glance back shows you that the centaurs are still in the midst of mating, leaving you free to make your getaway. Guiding the rescued horseman through the open plain, you're sure to keep an eye open for possible encounters or followers, but thankfully everything is quiet and you eventually arrive back at the farm. Handing off the still somewhat bruised and dizzy Finn to his farmhand buddies, there's little left but tell Anthony that you've got his worker back safe and sound.";
							now FinnTrackingProgress is 3; [Finn rescued, no sex]
							now Resolution of Missing Farm Hand is 3; [Finn rescued, no sex]
							move player to McDermott Farm Entrance;
						else: [sex!]
							LineBreak;
							say "     Moving into position behind the hunk of a horseman, you help the still somewhat dizzy farmhand into a proper position on his hands and knees, raising his hips to just the right height. Kneeling on the grassy ground behind him, you stroke your cock at the inviting sight of his unspoiled ass, then grope Finn's firm buns. 'Unnnghh. What's going on,' the farmhand groans, confusion at his current position clearly evident in his voice. With a laugh, you reply that you've been sent by Anthony and are saving him from a homicidal centaur - which after all is true, even if you've chosen a pretty unconventional way of doing it. 'But wha-aaaahhh!' he starts, words becoming a moan as you raise his tail and spread the furred buttocks below, then lean forward and give his crack a quick lick. Proceeding to press your face against the surprised male, you start tonguing his asshole, stimulating him in a quite unfamiliar manner. As you do so, your nose fills with his attractive scent - quite masculine and equine, with a little bit of sweat and cum as additional notes, enhancing the overall effect.";
							say "     Barely registering the noises of the two centaur siblings fucking one another nearby, you focus on eating out Finn, preparing him for what is to come. For being an anal virgin, the horseman takes to some tongue-action at his back door surprisingly well, even nudging his body back to meet your probing appendage on his own. Certainly a good sign - as is the aroused grunt you cause when you slowly slide a finger into him. Glancing over at the male centaur humping his sister for a second, you do take your time with Finn contrary to your 'orders', stretching him out good with first one finger, then eventually two and three.";
							WaitLineBreak;
							say "     Slowly pulling out three digits from Finn's ass and watching its neat little pink pucker contract, you decide he's as ready as he's going to get. With a last playful lick over the farmhand's opening, you push yourself up and move closer to his rear, then line up your [cock of player] shaft with his virgin ass. Tension rises in the horseman's body as you press into him, especially the most critical ring muscles that squeeze the tip of your erection tightly, so you give him a moment to adjust. Gently stroking his lower back and talking in a calming voice, you're soon able to start fucking him in earnest and enjoy the privilege of being the first to take his tight ass.";
							say "     Finn is a strong and tough horseman, so the period of having to go slow is shorter than with most newbies at anal sex, and soon you're really hammering into him, thrusting deep against those muscled buttocks. You can tell that he enjoys being fucked more than just a little bit, as he vocally tells you so - loudly moaning, gasping and grunting in lust. Also, the equine shaft in your hand is absolutely rock hard as you give him a reacharound. With how highly sexually charged everyone (conscious) in this little camp has become, you're not surprised in hearing someone shout in orgasm before much longer. Looking up from your horseman partner, you see that the centaurs have stopped in their movements, the young male still on top of his sister, the muscles of his hips twitching in reflexive movements as his balls send forth a massive deluge of cum into her receptive womb.";
							WaitLineBreak;
							say "     Slowing down your thrusts a little as you watch the two centaurs breeding, you're pleased to find out that Finn makes up for the lack of hard thrusts a moment later, rocking his own body back against you. Shaking off the distraction and getting back to fucking your eager partner with renewed intensity, you don't notice it when the two mythical creatures nearby pull apart, the stallion's shaft sliding out in a gush of cum. He throws a glowering look your way, still a bit miffed at Finn, but is seemingly satisfied with what you're doing. A few moments later, the two centaurs leave, galloping away to freely roam the dry plains once more.";
							say "     Meanwhile, your own coupling with Finn rapidly draws to a close as you can hear a definite air of urgency rise up in his voice. Eager to give him a spectacular finish to the first time he's fucked, you make sure you go deep with each and every thrust. Bumping his prostate again and again, it doesn't take long before that pushes the horseman to a screaming climax, ripping out handfuls of grass as he sprays the ground under his body with heavy blasts of cum. At the same time, his pucker and inner muscles twitch with each shot, pushing you over the edge yourself in short notice. Mere moments after your rescuee, you orgasm with a loud grunt and mark his asshole as yours with a big load of manly seed.";
							WaitLineBreak;
							say "     While the further spurts of cum from both your cocks slowly ebb off, you just stay in position, half-bent over Finn and holding on to him. Breathing heavily after the exertion of sex, the two of you are happy to keep in a companionable silence for a while, re-building your energy before you eventually push yourself up from Finn's back. As you pull out your softening cock, only a little trickle of cum escapes with it, then his pucker contracts tightly, trapping your load inside the muscular male. Turning around and gingerly sitting on the trampled grass, the horseman looks at you and gives an amused smirk. 'Hey there and... thanks for the rescue. Can't believe I'm saying this, but that last bit has actually been quite a bit of fun,' he says, then gets up and proceeds to gather his clothes, same as you are.";
							say "     Soon, the two of you are on the way back to the farm, leaving behind the three horsemen with their arms tightly tied behind their backs. Legs free, they should be able to make their way back to the streets of the city - or not, maybe falling prey to one creature or another. No matter which - they're not your problem anymore. On the way back to the farm, you chat a bit with Finn and he explains how the raiders came from a place called the 'stables' in the city and wanted to recruit him. Seems like he didn't want to become another servant of their master, so they decided to 'convince' him another way. Eventually, you arrive back at the farm and with a thanks to you, he leaves to go join his buddies in the barracks. The only thing that's left to do now is telling Anthony what happened.";
							now FinnTrackingProgress is 4; [Finn rescued, player fucked him]
							now Resolution of Missing Farm Hand is 4; [Finn rescued, player fucked him]
							move player to McDermott Farm Entrance;
					else: [care for the centauress]
						LineBreak;
						say "[FinnCentauressCaring]";
				else: [female + neuter]
					LineBreak;
					say "[FinnCentauressCaring]";
			else:
				LineBreak;
				now inasituation is true;
				challenge "Centaur Stallion";
				if fightoutcome >= 20 and fightoutcome <= 29: [lost]
					say "     Having lost the fight, there's little left but to get the hell away from the homicidal centaur and slink back to the farm in defeat. You don't think the sounds of repeated heavy hoof impacts on a defenseless body will leave you anytime soon. Nothing left but to tell Anthony that he's not coming back... ever.";
					now FinnTrackingProgress is 99; [Finn is dead]
					now Resolution of Missing Farm Hand is 99; [Finn is dead]
					move player to McDermott Farm Entrance;
				else if fightoutcome >= 30: [fled]
					say "     Having run away from the fight, leaving Finn to the mercy of a homicidal centaur, there's little left but to slink back to the farm in defeat. You don't think the sounds of repeated heavy hoof impacts on a defenseless body will leave you anytime soon. Nothing left but to tell Anthony that he's not coming back... ever.";
					now FinnTrackingProgress is 99; [Finn is dead]
					now Resolution of Missing Farm Hand is 99; [Finn is dead]
					move player to McDermott Farm Entrance;
				else if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "     Beating back the centaur in his homicidal rage, you use a moment in which he has to catch his breath to get an arm around Finn, then hastily half-drag half-guide the horseman away. A clatter of hooves indicates that the centaur stallion starts to follow, then gets distracted by the groan of another horseman of the raiding party. Despite being out of sight of the grisly action that follows, you don't think the sounds of repeated heavy hoof impacts on a defenseless body will leave you anytime soon.";
					say "     Guiding the rescued horseman through the open plain, you're sure to check over your shoulder if anyone follows more than a few times before arriving back at the farm. Handing off the still somewhat bruised and dizzy Finn to his farmhand buddies, there's little left but tell Anthony that you've got his worker back safe and sound.";
					now FinnTrackingProgress is 3; [Finn rescued, no sex]
					now Resolution of Missing Farm Hand is 3; [Finn rescued, no sex]
					move player to McDermott Farm Entrance;
		now horsefight is 0;
		increase score by 1;
	now Missing Farm Hand is resolved;

to say FinnCentauressCaring:
	say "     Telling the centaur that you'll look out for his sister in a calm tone, you relieve him of the difficult choice he was struggling with. 'Fine,' the young stallion tells you in a husky tone, stepping forward and leaning his human body down to pull Finn into position on all fours. As you start to walk over to his sister, the centaur lines up his swinging cock and plunges it in between the farmhand's buttocks without being very gentle about it, making the horseman groan at the sudden penetration. Then he starts to hump into the anthro, shafting him deep. Meanwhile, you catch up with the centauress as she slowly walks through the ruins, put just out of sight of her brother and Finn by a crumbling wall sticking up from the grassy ground.";
	say "     'Please, I - I feel so hot,' the young woman says with a pleading sigh, then turns a little to face away from you, at the same time presenting her equine rump. Under a long flicking tail that she readily raises and pushes to the side, you see her equine pussy, slick and dripping with Finn's pre-cum and her own female juices. A pleasant, musky scent reaches your nostrils, making the conclusion that she's in heat a quite easy one. You've got a desperately aroused, needy centauress at your hands.";
	say "     [bold type]Do you want to take care of her sexual needs ([link]Y[as]y[end link]), or will you just keep the young woman company and try to calm her down ([link]N[as]n[end link])? The first option holds a bit of a risk, even if her brother is currently otherwise occupied...[roman type][line break]";
	if player consents:
		LineBreak;
		if player is male:
			say "     [bold type]Fuck her ([link]Y[as]y[end link]), or do you just want to lick and stroke her pussy ([link]N[as]n[end link])?[roman type][line break]";
			if player consents:
				LineBreak;
				say "     Shooing the instinct-driven centaur a few steps in the right direction, you reach a nice and solid remnant of one building or another, providing you with just the right thing to stand on and be able to fuck the relatively long-legged centauress. Filled with desperate heat as she is, the young woman readily presents her equine rear end to you, her nether lips trembling and gushing in arousal. Stroking your own cock at the inviting sight, you move forward a little, then rub its tip up and down over the young woman's pussy. It is just too bad you don't have time to really savor the experience - but the shouts and harsh slaps of heavy balls against muscled buttocks remind you constantly that her easily angered brother is near.";
				if cock length of player < 20:
					say "     Not wasting any further second, you bring your rock hard [cock of player] cock to her wet, winking pussy and thrust deep in one go. Her pussy is very large, taking everything you've got easily. Though clearly equipped for bigger cocks, the centauress is nevertheless pleasantly tight, her virgin pussy only having had one other man inside for a few short moments. With lots of still novel sensations rocking her body, the centauress's vaginal muscles twitch and flex around your invading member, allowing the two of you enjoy this rushed coupling more than a little bit. Fucking the blond woman with abandon, you soon feel a familiar tingle in your balls and plunge in deep one last time before you start cumming. Spurt after spurt of your fertile seed jet out of your hard shaft and vanish in the depths of her vagina.";
				else:
					say "     Not wasting any further second, you bring your rock hard [cock of player] cock to her wet, winking pussy and thrust deep in one go. Her pussy is very large, but your shaft fills it out quite nicely, evoking a whole new level of moans from the young woman. Hitting all the sensitive spots deep inside her, the blond centaur gasps, then shouts for you to fuck her harder. Eagerly complying, you take her with abandon, thrusting in and out of his equine body. Soon, the wild ride you're giving her pushes the centauress over the edge and she orgasms, her pussy becoming even slicker with lots of femcum. Making the former virgin have her first orgasm gives your own arousal a big push, so you're not far behind, sinking your hard shaft deep inside her body one last time as a familiar tingle awakens in your balls. Then you come, spurt after spurt of your fertile seed jetting into the female centaur's vagina and flooding her womb with cum.";
				WaitLineBreak;
				say "     You start to lean forward against her muscled hindquarters, wanting to catch your breath, but at just that moment, a shouted climax rings out from the camp you left behind. Uh-oh, the brother of this little filly will be here in moments! With haste, you pull your spent cock out of her depths and stuff it into your pants, then jump down from your position and move to the front of the female centaur. Quickly sliding her hand into yours, you give her a firm gaze and tell her that the two of you just talked, nothing more. She looks a bit puzzled at that statement, then nods slowly, clearly still not thinking clearly from the hormones and sensations bubbling around in her.";
				say "     A short moment later, the male centaur trots around the corner to find you and his sister, his softening manhood still dripping cum. 'There you are,' he says with relief as he sees his sibling, now only concern on his young face instead of the anger and lust you last saw there. 'Thank you for watching out for her,' he says, none the wiser at what else you did. Coming up and brushing a stand the hair out of the young woman's face. 'Come on sweetie, let's find a safe place until your heat wears off. Maybe a cool bath in one of the springs will help.' The centauress gives you a look and thankfully seems to accept the 'don't say anything' you mime out of sight of her brother, then lets herself be led off to the side. Before the two of them gallop off, the young man gives a throwing-away gesture towards the camp he came from, scowling a little as he says, 'I left the bastard you stood in for back there. Do with him what you want.'";
			else:
				say "[FinnCentauressStroking]";
		else:
			say "[FinnCentauressStroking]";
	else:
		say "     Walking around to the centauress's front, you take her hands and give them a gentle squeeze, then start talking to her in a calming tone. Nevertheless, her actions are strongly influenced by instinct even now and despite giving it your best shot, she does try to present her rump to be mounted another time or three and keeps looking around for a more willing partner than yourself. Equine heat doesn't seem to be that easily thrown off. At the same time, you hear the noise of Finn being fucked not too far behind the ruined walls, which eventually culminates in a shouted climax. A short moment later, the male centaur trots around the corner to find you and his sister, his softening manhood still dripping cum. 'There you are,' he says with relief as he sees his sibling, now only concern on his young face instead of the anger and lust you last saw there. 'Thank you for watching out for her,' he says, coming up and brushing a stand the hair out of the young woman's face. 'Come on sweetie, let's find a safe place until your heat wears off. Maybe a cool bath in one of the springs will help.' The centauress readily lets herself be led off to the side. Before the two of them gallop off, the young man gives a throwing-away gesture towards the camp he came from, scowling a little as he says, 'I left the bastard you stood in for back there. Do with him what you want.'";
	WaitLineBreak;
	say "     With the centaurs gone, you hurry to get to the horseman campsite and find Finn lying on the ground and groaning. His rear end, tail and lower back is quite a sticky mess, centaur cum drying in his fur and making it clump together. He groans as you help him get up and say you came from the farm to find him. Gingerly rubbing his ass, Finn snorts, 'Nnnggh. Thanks for the rescue, but... couldn't you have found a better way than letting that stallion pound my ass? I don't think I'll be able to sit down anytime soon. Man, he really did a number on me.' With that, he proceeds to gather his clothes, wincing with each move to bend over. Soon after, you're on the way back to the farm, leaving behind the three other horsemen with their arms tightly tied behind their backs. Legs free, they should be able to make their way back to the streets of the city - or not, maybe falling prey to one creature or another. No matter which - they're not your problem anymore. On the way back to the farm, you chat a bit with Finn and he explains how the raiders came from a place called the 'stables' in the city and wanted to recruit him. Seems like he didn't want to become another servant of their master, so they decided to 'convince' him another way. Eventually, you arrive back at the farm and with a thanks to you, he leaves to go join his buddies in the barracks. The only thing that's left to do now is telling Anthony what happened.";
	now FinnTrackingProgress is 5; [Finn rescued, centaur fucked]
	now Resolution of Missing Farm Hand is 5; [Finn rescued, centaur fucked]

to say FinnCentauressStroking:
	say "     Leaning forward, you bring your tongue to her pussy and lick over it, drawing a gasp from the young centauress. You bring your hand to her pussy and start to massage it, switching up licking and suckling on her folds with gentle strokes before soon moving on to penetrating her. Slipping Three, then four fingers, then your whole hand into the centauress's body, you stroke her inner passage, wet with Finn's pre and her own female juices. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful gasps any touch makes her do. Concentrating on that, it doesn't take much longer until the centaur orgasms, femcum gushing out of her opening and dripping off your arm. As if he had waited for your signal, the shouted climax of this beautiful filly's brother rings out from the camp you left behind. Uh-oh, he'll no doubt be here in moments! With haste, you pull your hand out of her depths and do your best to wipe off its wetness on her coat, then rush to the front of the female centaur. Quickly sliding her hand into yours, you give her a firm gaze and tell her that the two of you just talked, nothing more. She looks a bit puzzled at that statement, then nods slowly, clearly still not thinking clearly from the hormones and sensations bubbling around in her.";
	say "     A short moment later, the male centaur trots around the corner to find you and his sister, his softening manhood still dripping cum. 'There you are,' he says with relief as he sees his sibling, now only concern on his young face instead of the anger and lust you last saw there. 'Thank you for watching out for her,' he says, none the wiser at what else you did. Coming up and brushing a stand the hair out of the young woman's face. 'Come on sweetie, let's find a safe place until your heat wears off. Maybe a cool bath in one of the springs will help.' The centauress gives you a look and thankfully seems to accept the 'don't say anything' you mime out of sight of her brother, then lets herself be led off to the side. Before the two of them gallop off, the young man gives a throwing-away gesture towards the camp he came from, scowling a little as he says, 'I left the bastard you stood in for back there. Do with him what you want.'";

Section 2 - NPC

[ FinnTrackingProgress                                   ]
[   0: not found any tracks yet                          ]
[   1: found the tracks, didn't follow                   ]
[   2: found the tracks, followed                        ]
[   3: Finn rescued, no sex                              ]
[   4: Finn rescued, player fucked him                   ]
[   5: Finn rescued, centaur fucked him                  ]
[  99: Finn's dead                                       ]
[ 100: Finn joined the stables                           ]

Table of GameCharacterIDs (continued)
object	name
Finn	"Finn"

Finn is a man. The HP of Finn is usually 0.
The description of Finn is "[FinnDesc]".
The conversation of Finn is { "<This is nothing but a placeholder!>" }.
The scent of Finn is "     Finn smells nicely masculine, with a little bit of fur, straw and sweat in the mix. Seems like he's not adverse to doing some good and solid work for his boss at the farm.".

to say FinnDesc:
	if debugactive is 1:
		say "DEBUG -> FINNTRACKINGPROGRESS: [FinnTrackingProgress], HP: [HP of Finn] <- DEBUG[line break]";
	say "     <This is the basic description of Finn. Body, Clothing, etc. can be laid out here>";
	if FinnTrackingProgress is 3: [Finn rescued, no sex]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him.>";
	else if FinnTrackingProgress is 4: [Finn rescued, player fucked him]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him, pounding his ass in the progress.>";
	else if FinnTrackingProgress is 5: [Finn rescued, centaur fucked him]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him, but not without having his ass shafted by a centaur in the progress.>";

instead of conversing the Finn:
	if FinnTrackingProgress < 3: [not rescued yet]
		say "     ERROR: Finn shouldn't be where a player can see him yet! Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [FinnTrackingProgress]";
	else if FinnTrackingProgress is 3: [Finn rescued, no sex]
		say "     <Talking with Finn - rescued, virgin>";
	else if FinnTrackingProgress is 4: [Finn rescued, player fucked him]
		say "     <Talking with Finn - rescued, player-fucked>";
	else if FinnTrackingProgress is 5: [Finn rescued, centaur fucked him]
		say "     <Talking with Finn - rescued, centaur-fucked>";
	else if FinnTrackingProgress > 5: [as of yet undefined states]
		say "     ERROR: Finn is in an undefined state. Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [FinnTrackingProgress]";

instead of fucking the Finn:
	if (lastfuck of Finn - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Finn doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Finn, <positive reaction at being approached for sex>";
		wait for any key;
		say "[FinnSexMenu]";

to say FinnSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Finn suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Finn off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	if player is male and FinnTrackingProgress is 3: [only males and herms can fuck him, virgin Finn]
		choose a blank row in table of fucking options;
		now title entry is "Talk the handsome farmhand into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if player is male and FinnTrackingProgress > 3: [only males and herms can fuck him, also just for Finn who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the handsome farmhand's ass";
		now sortorder entry is 4;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Finn's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the hunky horseman";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Finn's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer sex to the hunky horseman";
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
				if (nam is "Get a blowjob"):
					say "[FinnSex1]";
				if (nam is "Suck Finn off"):
					say "[FinnSex2]";
				if (nam is "Talk the handsome farmhand into giving up his virginity"):
					say "[FinnSex3]";
				if (nam is "Fuck the handsome farmhand's ass"):
					say "[FinnSex4]";
				if (nam is "Take Finn's shaft in your pussy"):
					say "[FinnSex5]";
				if (nam is "Take Finn's shaft in your ass"):
					say "[FinnSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say FinnSex1: [oral on the player]
	say "     A";

to say FinnSex2: [oral on Finn]
	say "     A";

to say FinnSex3: [virgin Finn fucked]
	say "     A";

to say FinnSex4: [non-virgin Finn fucked]
	say "     A";

to say FinnSex5: [Finn fucks player pussy]
	say "     A";

to say FinnSex6: [Finn fucks player ass]
	say "     A";


Finn ends here.
