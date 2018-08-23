Astroslide Field Showers by Kernog begins here.

"Adds the Astroslide Field Shower, a room used for events whenever the player enters it."

[General]
Astroslide Field Showers is a room.
Astroslide Field Showers is north of Astroslide Field Locker-room.

[Not used as a classic room]
The description of Astroslide Field Showers is "".

instead of going to Astroslide Field Showers:
	say "[astroslideShowersStart]";

to say astroslideShowersStart:
	say "     You peer into the showers. The room is filled with water vapor, and the laughter and moans of footballers and fans alike. You could use a moment of relaxation, although [bold type]there is a good chance that the water is infectious[roman type]. There are several stalls and spaces to choose.";
	LineBreak;
	say "     [bold type]Do you want to take a shower, and if so where?[roman type][line break]";
	say "     [link](1)[as]1[end link] - In one of the unoccupied stalls.";
	say "     [link](2)[as]2[end link] - In the group shower.";
	say "     [link](3)[as]3[end link] - Join someone in an occupied stall.";
	say "     [link](4)[as]4[end link] - Renounce to a shower.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to shower in one of the unoccupied stalls, [link]2[end link] to shower in the group shower, [link]3[end link] to join someone in one of the stalls, or [link]4[end link] to renounce using the showers.";
	if calcnumber is 1:
		LineBreak;
		say "[astroslideShowers1]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else if calcnumber is 2:
		LineBreak;
		say "[astroslideShowers2]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else if calcnumber is 3:
		LineBreak;
		say "[astroslideShowers3]";
		WaitLineBreak;
		say "[astroslideShowerResult]";
	else:
		say "     As tempting as the showers are, you do not want to risk a nanite infection. You turn around, and return to the locker-room.";
	WaitLineBreak;

to say astroslideShowers1:
	say "     You pull off your clothes and place them on a bench, then enter one of the stalls. The water runs on your [bodyname of player] body. You know you will regret it later, but for now, you enjoy the warm shower and the scented soap on your body. You feel something poke your leg. Intrigued, you look down, and see a gorilla cock coming out from a hole in the wall separating your stall from the next. The black dick pokes you once more. It seems someone wants to have some glory hole fun with you.";
	if player is male:
		say "     Having a male equipment yourself, you have the choice between sucking dicks poking in your glory hole, or putting your own cock on display for someone else. [bold type]What do you choose?[roman type][line break]";
		say "     ([link]Suck[as]y[end link]) - Practice fellatio.";
		say "     ([link]Be sucked[as]n[end link]) - Receive fellatio from other people.";
		if player consents:
			LineBreak;
			say "[astroslideShowers1Give]";
		else:
			say "     After some time, the cock pulls away, and the gorilla leaves the shower. You see him pass your stall, barely giving you a glance. It does not matter. Another gorilla fills his place, and you quickly take the opportunity to present [if cocks of player > 1]one of [end if]your [cockname of player] shaft[smn] to the newcomer. After a few seconds, he notices you. 'Hey... Hello, pretty boy,' he says. You hear him get on his knees on the other side, before a pair of lips wraps around your dick. The guy is definitely not to his first glory hole job. Without the ability to see what he is doing, the ape keeps throwing you off, licking and stroking and sucking, and keeping you on your toes. You let out aroused moans, as you grind your hips against the wall.";
			if player is knotted:
				say "     The gorilla toys with you, making pauses each time you warn him that you are close. You do not mind, as you want this perfect moment to last as long as possible. But, in a miscalculated timing, he pushes down to your base just as your knot inflates, trapping your cock into his mouth. The ape lets out a panicked squeal, while you are in heaven. You tell him in no uncertain terms that either he makes you cum, or he chokes on [cockname of player] cock. He gives short bobs and sucks on your knot, in a panic. He holds on rather well, but you eventually hear him gag from being forced to deepthroat your knotted cock.";
				say "     Fortunately, you were very close, and you cum just in time. The ape is forced to drink your load, and you can hear (and feel) him gulp down. He desperately pulls, trying to escape the flow, but each tug on your cock only makes your orgasm more intense. A good effort eventually makes your knot pop out, and you can hear the ape gasp. 'Gah! Fuck! Damn, that was intense,' you can hear him say. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";
			else:
				say "     The gorilla toys with you, making pauses each time you warn him that you are close. You do not mind, as you want this perfect moment to last as long as possible. After having played for what felt like an eternity, your cocksucker decides to push you over the edge. He suddenly goes all the way down your cock and, with long, hard bobs of the head, makes you cum hard. You can hear him drink the first drops, before letting the rest crash into the tiled floor with rapid strokes of his strong hand. He eventually let go of your shaft, and you lean on the other wall, exhausted and content. The ape walks out of the stall and gives you a big smile, as he lewdly licks his fingers, coated in your cum. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";
	else:
		say "[astroslideShowers1Give]";

to say astroslideShowers1Give:
	say "     You kneel on the tiled floor, while the water keeps flowing on your head, and you get to work on the large humanoid cock in front of you. The gorilla in the other stall obligingly keeps his thick shaft still, letting you go at your rhythm. You take great pleasure in playing with the glans and the foreskin, and alternate licks and nibbles with long swallows inside your cock. You hear the ape groan and moan. [one of]'Oh fuuuck.'[or]'Whoever you are, don't stop.'[or]'Uhhn yeaaah...'[at random] You find this terribly exciting, and you start masturbating yourself at the same time.";
	say "     It becomes a sort of game between you two. You make sure that the owner of the cock you are servicing is as noisy as you can, a very successful mission. You can hear the eyes of onlookers, who get to watch the entire scene thanks to the lack of door on the stalls. You play with your new pal, making sure to keep it on edge every time you hear his breath accelerate. Suddenly, you hear someone else step in the other shower. Looking down, you see another pair of gorilla feet standing behind your partner. Your hear some whispers, then the first ape almost shout. 'Yes, give it to me. He's gonna make me mad.'";
	say "     'Ooooh fuck!' the gorilla howls, shortly followed by a small slap. A large dose of salty precum lands in your mouth. The first slap is quickly followed by a series of uninterrupted sex noises as your partner receives an intense buttfuck. You keep up the assault on your end. He has yet to know what [']mad['] means yet. The footballer does not resist your double-team and slams his hips against the stall's wall as he climaxes hard. 'Oh fuck! Oh fuck! Ooooh! Aaaah!' Ape cum launches into your mouth, then your face as you pull out and stroke the thick cock, making sure to milk every last drop. The ape can only submit and go through your ministrations, pinned against the wall by his other partner.";
	say "     You quickly finish yourself, helped by the noises of the second gorilla finishing himself into the first one. Your cum slowly goes down the drain, alongside his. The hot water stops running, and you take it as your cue to leave. You notice on your way out that you attracted quite a crowd, and cannot help but have a small smirk on your face.";

to say astroslideShowers2:
	say "     The large space is already occupied by several of your teammates. You waste no time joining into the fray, warmly welcomed by the rest of the team. Everyone is having fun covering each other with soap and tending to their bodies. You barely have the time to grab the bottle of soap that a greedy hands grabs your [if player is male]cock[else]pussy[end if] with a foam-covered hand and starts playing with it. Other 'helping hands' press around you. Some give you a well-deserved massage, while others play with your other erogenous spots. The entire group devolves into a sea of ape bodies, with your [bodyname of player] form in the middle. Pressed together and fondling each other.";
	if player is male:
		say "     You eventually find yourself on your back, the warm water running down on the floor next to you, your [cock of player] dick raised in the air. It quickly finds a firm ass to sit on, as one of the other players ride you eagerly. The rest of the group agglutinates around you. A second cock slams inside your partner's ass, which he reacts to with a lewd moan. The thick gorilla dick grinding along your [cockname of player] shaft heightens the pleasure, and makes you lose focus of the world around you. You feel your hands being guided to new cocks to stroke. Another ape jumps on your chest and wraps his legs around your head. Strong prehensile feet clamp on your skull, and keep you steady as the ape pushes his member into your mouth.";
		say "     You lose the sense of time in the ongoing orgy. Soon, much too quickly in your opinion, you and your teammates cum one after the other, covering the shower in a copious quantity of sperm, quickly washed away by the running water. You crawl away from the body pile with great difficulty, just as a fresh batch of newcomers join in.";
	else:
		say "     You eventually find yourself on your back, the warm water running down on the floor next to you, your now accessible pussy is quickly filled by an eager ape, who starts [if cunt length of player < 3]squeezing[else if cunt length of player < 12]grinding[else]poking[end if] into your [cunt size desc of player] cunt. The rest of the group agglutinates around you. A thick cock slams inside your partner's ass, which he reacts to with a lewd moan. It encourages him to pound into you even more, and you begin to lose focus of the world around you. You feel your hands being guided to new cocks to stroke. Another ape jumps on your chest and wraps his legs around your head. Strong prehensile feet clamp on your skull, and keep you steady as the ape pushes his member into your mouth.";
		say "     You lose the sense of time in the ongoing orgy. Soon, much too quickly in your opinion, you and your teammates cum one after the other, covering the shower in a copious quantity of sperm, quickly washed away by the running water. You crawl away from the body pile with great difficulty, just as a fresh batch of newcomers join in.";

to say astroslideShowers3:
	say "     You spot a gorilla leisurely taking his shower in one of the stalls. You approach him, and give his firm butt a squeeze. 'Hmm, I'm sure there's plenty of other stalls,' the ape says, as he turns around. You reply that you want to use this specific stall, and the male grins. 'And why's that? Did you see something you like?'";
	if player is male:
		say "     You give the ape's butt another squeeze. 'You have a point. You won't find any cuter butt in the whole room.' The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and the both of you start to stroke each other's cock[smn] in no time. At this moment, the shower stops. 'Great timing,' the ape says. He turns around, and presents his butt to you. 'Ready it for me, would you?' You pour a copious amount of soap on your hands and press a finger inside the gorilla's ass. The easiness of the penetration told you it was definitely not his first time, nor his second. 'C-Come on, don't be shy. Put more of them.'";
		say "     You comply, and press a second digit. A third finger quickly joins the fray, to the footballer's great pleasure. You were about to use your fourth finger when he stops you. 'Wait. I want the real thing.' You do not lose any time lining up your [cockname of player] shaft with his hole, and push. ";
		if cock length of player < 6:
			say "Your [cock of player] cock has no problem slipping all the way in. 'Mmm... That kind of size feels nice too,' your partner comments. 'Come on, get crazy, I can take it.' [if cocks of player > 1]A little vexed, you decide to oblige him. You bring your [cocks of player] dicks together, and push all of them in, stretching him even more. 'Oooh, that's new. Huhnn...' the ape sighs. You cannot help but shudder, as having your shafts squeezed together in one hole brings a whole set of inhabitual sensations.[else]A little vexed, you decide to oblige him, and hump his ass with large, powerful thrusts. 'Yeah, like that... Hmmm.' The ape squeezes his ass around your length, making sure you enjoy it as much as he does.[end if]";
		else if cock length of player <= 12:
			say "Your [cock of player] cock goes in, bit by bit. 'Mmm... Yeah, keep going,' your partner comments. 'Come on, get crazy, I can take it.' [if cocks of player > 1]Suddenly inspired, you pull out and get back to the charge, this time with your [cocks of player] dicks together, and push all of them in, stretching him even more. 'Oh fuuuuck. H-How many of you are in there? Hnnnf!' the ape gasps. You cannot help but shudder, as having your shafts squeezed together in one hole brings a whole set of inhabitual sensations.[else]You eagerly oblige him, and hump his ass with large, powerful thrusts. 'Nice and hard. Yeah...' The ape squeezes his ass around your length, making sure you enjoy it as much as he does.[end if]";
		else:
			say "Your [cock of player] cock goes in, but your progress is slow. 'Ah, fuuuuck. So big,' your partner comments, as your head just popped in. 'G-Give it to me, I can take it.' You pump your hips back and forth, until the ape is filled to max capacity. Then, you grab his hips and give his ass short, quick thrusts which make water and soap fly all around you[if cocks of player > 1]. Your other shafts rest lazily on the fur of his back, mixing precum to the foam[end if].";
		say "     You eventually reach your limit and, with loud grunts, you make a few final thrusts into your partner, before emptying your balls inside his innards. He finishes quickly after you, as he reached for his cock with one hand and masturbated furiously, pouring his own load down the shower drain. The both of you, spent, remain in this position for a moment. Eventually, you pull out of the ape, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
	else:
		if anallevel is 3:
			say "You cop a feel of the ape's cock. 'Oh, I see. Finest cock in the room, I can't hold it against you. The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and you do not care much as you grope and fondle each other. His hands seem peculiarly fond of your [breasts of player] [breast size desc of player] breasts. At this moment, the shower stops. 'Great timing,' the ape says. He turns you around, and makes you present your butt to him. 'Keep it like this, would you?' He reaches for the soap dispenser, and coats his fingers in a good amount of it. Then, he slowly slips one of them into your ass. His dexterity betrays his experience, as he fingers you slowly, waiting for you to be used to his size to add a second, then a third finger.";
			say "     Once he deems you ready, the ape lets his cock slide down against your butt. He covers it in soap too, and press it against your anus. 'Here we... go.' You feel his large cock pop inside of you. He did a great job getting you ready, as you barely feel any inconvenience at all. Once he is all the way in, your partner turns on the shower. As the steamy water runs down your back, the ape fucks you with smooth, quick thrusts. Your hands pressed on the shower's wall for support, you enjoy the tremors running through your spine, which make the water dance on your [skinname of player] skin.";
			say "     The gorilla ends up cumming inside of you, and you follow not long after, milking his cock during your orgasm. The both of you, spent, remain in this position for a moment. Eventually, the ape pulls out, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
		else:
			say "You cop a feel of the ape's cock. 'Oh, I see. Finest cock in the room, I can't hold it against you. The both of you squeeze together inside the stall, as you make out passionately. The sound of the water running on your shoulders covers your voices, but the stall has no door, and everyone can see you. This adds to the excitement, and you do not care much as you grope and fondle each other. His hands seem peculiarly fond of your [breasts of player] [breast size desc of player] breasts. At this moment, the shower stops. 'Great timing,' the ape says. He turns you around, and makes you present your crotch to him. 'Keep it like this, would you?' His fingers run along your pussy, playing around and stroking until you get wet inside. Then, he slowly slips one finger inside of you. His dexterity betrays his experience, as he fingers you slowly, waiting for you to be used to his size to add a second, then a third finger.";
			say "     Once he deems you ready, the ape lets his cock slide down against your labia. He covers it in soap too, and press it against your lower hole. 'Here we... go.' You feel his large cock pop inside of you. He did a great job getting you ready, as you barely feel any inconvenience at all. Once he is all the way in, your partner turns on the shower. As the steamy water runs down your back, the ape fucks you with smooth, quick thrusts. Your hands pressed on the shower's wall for support, you enjoy the tremors running through your spine, which make the water dance on your [skinname of player] skin.";
			say "     The gorilla ends up cumming inside of you, and you follow not long after, milking his cock during your orgasm. The both of you, spent, remain in this position for a moment. Eventually, the ape pulls out, and you enjoy the rest of the shower with him, while you clean the remnant of your mutual mess. The shower stops once more, and you come out together of the shower, under the pleased eye of the few onlookers who watched the show you just gave.";
			impregchance;

to say astroslideShowerResult:
	say "The shower refreshed you. [bold type]Your HP, your libido and your thirst recover[roman type]. However, [bold type]the water propagates the nanites in your body, [bold type]infecting you with the Football Gorilla strain[roman type].";
	PlayerHealed 20;
	LibidoLoss 40;
	PlayerDrink 25;
	infect "Football Gorilla";

Astroslide Field Showers ends here.
