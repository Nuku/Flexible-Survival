Astroslide Field Locker-room by Kernog begins here.

"Adds the Astroslide Field Locker-room, where players can have sex with gorilla footballmen, become part of the team, and conduct business related to them."

[TODO: Expand on basic sex menu in lockers]

[Variables]
tempGorillaName1 is a text that varies.
tempGorillaGender is a number that varies.
tempGorillaName2 is a text that varies.

[General]
Astroslide Field Locker-room is a room.
[Astroslide Football Field is east of Astroslide Field Locker-room.]

The description of Astroslide Field Locker-room is "[FootFieldLockerdesc]".

to say FootFieldLockerdesc:
	say "     You are standing in the high-standard locker-room of the Tenvale Gorillas team, with quite a few players and fans all around you. The gorilla strain seems to have spread very easily among the athletically minded students of this college, swelling the ranks of the team to unprecedented numbers. In retrospect, it was a good thing that this place was built so generously sized, otherwise the bustling crowd would never fit in here, especially with the whole lot of activity that is going on right now.";
	say "     Everything that can be done in a locker-room is being done, and at the same time: some players gearing up for play, while others come in from out on the field, drenched in sweat and pumped up from a good game; a lively discussion of tactics is going on in a corner of the room, regularly covered by the sounds of running water and laughing voices, which echo over from the showers. And, of course, there is a wild variety of sexual acts being performed in the midst of everything else: fan-girls and -boys sucking off gorillas or being fucked, but also players pounding each other on the benches or against the rows of lockers. No one is batting an eye at the piles of bodies and the constant cacophony of moans and grunts; instead, the many performers are cheered, sometimes joined in by more oncoming players and visitors.";
	if Roman is in Astroslide Field Locker-room:
		say "     Roman is also here, tied to one of the benches. From the incrusted cumstains covering his dark fur, you can tell that he has been used aplenty in your absence.";


[NPCs]
Gorilla Team-Members is a man.
The description of Gorilla Team-Members is "A highly variable number of gorillas is present at all times in their team locker-room, in all states of dress and undress, as well as sexual arousal. It would be an understatement to say that all these hunky guys, girls and in-between are 'just interested' in football - it's more like the whole center of their existence, as you can see from the fact that an adjoining storage room has been totally cleared out to set up numerous bunk beds. Looks like they now live right here next to the field. The gorillas are a definitively are a jovial bunch, and you can hear almost constant chatting, laughing and more than a few aroused moans from all around you.".
The conversation of Gorilla Team-Members is { "Yap!" }.
Gorilla Team-Members is in Astroslide Field Locker-room.

instead of sniffing Gorilla Team-Members:
	say "     The attractive scents of gorillas hang in the air, with slight undertones of furry musk, cum and sweat.";

instead of conversing the Gorilla Team-Members:
	if (romanPeeped is 3):
		say "     You have a heavy secret concerning the team captain. [bold type]Do you wish you wish to share it? This decision will certainly break Roman, and without him you will probably not be able to work for the team anymore. Then again, free bitch to play with the other boys.[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) 'Hey, guys! You won't believe what I saw the other day!'";
		say "     ([link]N[as]n[end link]) No. You are not this cruel.";
		if player consents:
			say "[RomanHumiliation]";
			now romanPeeped is 4;
			move Roman to Astroslide Field Locker-room;
		else:
			say "     No. You are here to have a normal conversation with the other gorillas, or what passes for normal these days. You join the gorilla team-members in their reveling, what you wanted to say or ask is soon forgotten and you find yourself embroiled in [one of]a discussion about new strategies on the field. Despite them having a lot more experience in those matters, your attempts to contribute something worthwhile are readily accepted, making you feel welcomed and almost as part of the team.[or]a group of the guys retelling raunchy stories about past conquests. This escalates after a short while, then a gorilla draws an eager fan-girl to his chest from the crowd and proceeds to... demonstrate his technique. Before long, there's a proper little orgy going on as more fans eagerly flock towards the group or the hunky males just pair up with each other.[at random]";
	else:
		say "     Joining the gorilla team-members in their reveling, what you wanted to say or ask is soon forgotten and you find yourself embroiled in [one of]a discussion about new strategies on the field. Despite them having a lot more experience in those matters, your tries to contribute something worthwhile are readily accepted, making you feel welcomed and almost as part of the team.[or]a group of the guys retelling raunchy stories about past conquests. This escalates after a short while, then a gorilla draws an eager fan-girl to his chest from the crowd and proceeds to... demonstrate his technique. Before long, there's a proper little orgy going on as more fans eagerly flock towards the group or the hunky males just pair up with each other.[at random]";

to say RomanHumiliation:
	say "'    No way!' 'So that's what he was hiding.' 'So he's got nothing down there?' The former secret makes the round of the locker-room quickly, and they gorillas bristle with discontent. 'So that's why he wanted all these girls and outsiders in the team.' 'Ha. Yeah. He deceived us. No, [italic type]she[roman type] deceived us. We'll show her.' 'Yeah!'";
	say "     You witness silently, as a plan is formed to 'show this bitch who are the men here'. One of the gorillas leave to fetch Roman, while the others prepare an ambush. The player is back a few minutes later, with Roman. 'What's up, boys. Curt tells me that you have something important to tell me?'[line break]'Yeah, Roman. We thought you needed to give you a promotion. To team bitch!'[line break]'What?'[line break]'Get him!'";
	WaitLineBreak;
	say "     A dozen or so gorillas piled on Roman, and pinned him on the ground. 'What the fuck!?' he screams. 'Stop it! Now!' But the apes do not listen. One of them pulls down Roman's shorts. 'N-No!' you can hear him squeal.[line break]'Well, look what we have here. Just as this peepsqueak told us.'[line break]'Peep?...'";
	say "     Roman's eyes found yours. Disbelief and a feeling of treason was painted on his face. It turned into pain, as one of the gorillas slipped a finger in his vagina. 'Arg!'[line break]'Looks tight. Haven't used it much, bitch?' The primates pressed around Roman. Another one slipped a finger, then another. They were quickly half-a-dozen, prodding his holes, stretching him. ";
	say "     'Unf... Get off me!' Roman said, suddenly putting a desperate resistance. The group wrestled for a moment, until Roman was pinned again, this time back on a wooden bench. 'Tie her up!' Roman punched and kicked, but he was alone. His former teammates picked what they could find, which was jerseys and shirts resting on the ground. Roman's arms were pulled under him, and trapped under the bench. In the meantime, his legs were pulled against his chest, and tied to the feet of the bench, to keep them in this position. 'There we go,' one of the players said. 'Now, let's see how many fingers this pussy can hold.' And the sadistic team resumed its collective fingering";
	WaitLineBreak;
	say "     The rest of the room watched the scene unfold. Some shocked, some aroused, all unwilling to help, as it often happens in these situations. Roman's howling was quickly muffled as one of the players slammed his cock down the former captain's throat. 'If I you bite it, we'll take one of the footballs and stretch your cunt with it,' the ape threatens. Roman whimpers, and does not bite. On the other side, another gorilla lined up his cock with Roman's hole. 'Bitch is ready to be [']initiated[']. Under the encouragements of the others, he pushes his member into Roman, who howls around the rod in his throat.[line break]'Rmmmf!'[line break]'Oh, fuck! He-no, she's extra tight!'";
	say "     Minutes pass. The gorillas all take their turn into their former captain, and as the others arrive, see the scene, and learn of the captain's dirty secret, Roman's torment is prolonged for the whole part of an hour, then two. At first, Roman was struggling, but at his third penetration, and fourth forced blowjob, a powerful, forced orgasm shook his body, under the cheers of the crowd. After some time, the gorillas all decide to [']get some rest['], not before defacing Roman's body with a red marker. Now that the gorillas are not around him anymore, Roman's cum-covered body appears in all his glory. His belly is inflated with all the gorilla semen he was forced to intake, and some dripped out from his pussy and mouth. Roman pants, tears drying on his face. Your eyes and his meet. But there is nothing but broken lust in his expression. He's broken.";

[General Sex menu]
instead of fucking the Gorilla Team-Members:
	if (Furry is banned):
		say "     Too much fur for your taste.";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Join in for a cum-bath (giving)";
			now sortorder entry is 1;
			now description entry is "Take position in a circle of masturbating males and spray your load all over a gorilla hunk";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Join in for a cum-bath (receiving)";
		now sortorder entry is 2;
		now description entry is "Take position in a circle of masturbating males and let them bathe you in their cum";
		[]
		if (cocks of player > 0 and Guy is not banned):
			choose a blank row in table of fucking options;
			now title entry is "Join a chain fuck";
			now sortorder entry is 3;
			now description entry is "Line up behind two guys fucking already";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Join in for a cum-bath (giving)":
						say "[GorillaTeamSex1]";
					if nam is "Join in for a cum-bath (receiving)":
						say "[GorillaTeamSex2]";
					if nam is "Join a chain fuck":
						say "[GorillaTeamSex3]";
					wait for any key;
			else if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the gorilla you almost asked to have sex with, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;


[General Sex scenes]
to say GorillaTeamSex1: [bukkake (giving)]
	if (Girl is banned or Girl is warded):
		let randomnumber be a random number from 1 to 5;
		now tempGorillaGender is 0;
		if randomnumber is:
		-- 1:
			now TempGorillaName1 is "Barry";
		-- 2:
			now TempGorillaName1 is "Greg";
		-- 3:
			now TempGorillaName1 is "Bryson";
		-- 4:
			now TempGorillaName1 is "Steve";
		-- 5:
			now TempGorillaName1 is "Marty";
	else if (Guy is banned or Guy is warded):
		let randomnumber be a random number from 1 to 5;
		now tempGorillaGender is 1;
		if randomnumber is:
		-- 1:
			now TempGorillaName1 is "Sarah";
		-- 2:
			now TempGorillaName1 is "Judith";
		-- 3:
			now TempGorillaName1 is "Mary";
		-- 4:
			now TempGorillaName1 is "Jude";
		-- 5:
			now TempGorillaName1 is "Martha";
	else:
		let randomnumber be a random number from 1 to 10;
		if randomnumber is:
			-- 1:
				now TempGorillaName1 is "Barry";
				now tempGorillaGender is 0;
			-- 2:
				now TempGorillaName1 is "Greg";
				now tempGorillaGender is 0;
			-- 3:
				now TempGorillaName1 is "Bryson";
				now tempGorillaGender is 0;
			-- 4:
				now TempGorillaName1 is "Steve";
				now tempGorillaGender is 0;
			-- 5:
				now TempGorillaName1 is "Marty";
				now tempGorillaGender is 0;
			-- 6:
				now TempGorillaName1 is "Sarah";
				now tempGorillaGender is 1;
			-- 7:
				now TempGorillaName1 is "Judith";
				now tempGorillaGender is 1;
			-- 8:
				now TempGorillaName1 is "Mary";
				now tempGorillaGender is 1;
			-- 9:
				now TempGorillaName1 is "Jude";
				now tempGorillaGender is 1;
			-- 10:
				now TempGorillaName1 is "Martha";
				now tempGorillaGender is 1;
	say "     Stepping up to a handsome gorilla just sitting on one of the locker-room benches and jerking his own cock, you push down your own pants and bare your already hardening [cock of player] manhood to him. 'Nice equipment you have there,' the hunky primate replies, looking you up and down and then reaching out to stroke his fingers along your shaft. 'Did you just wanna show off or can I help you with anything?' His eyes widen and you think you see his cock getting even harder than it was before as you tell him that you want to have some bukkake action. He chuckles and says, 'Now that's an awesome idea! And it's well past time to initiate [TempGorillaName1] properly anyways.' The gorilla gives your cock a few quick jerks, then stands up and calls out, 'Hey Guys! Let's give one of the newbies his team shower!'";
	say "     It only takes moments for quite a few male gorillas to gather around the two of you - many already naked, some still in their gear and sweaty from playing and even a few who drip all over the floor after rushing over from the showers. There's aroused grunting between the young men, and more than a bit of posing as they jerk their cocks, and wiggle them at each other to show off, then soon a wide-eyed gorilla is let through to step into the center of the gathered group. Your original gorilla hunk clears his throat and says to the initiate: 'You've proved that you can really play and are a good mate - so now it's time to fully initiate you into the team! Kneel and get ready to receive the essence of the Tenvale Gorillas!'";
	WaitLineBreak;
	say "     Widely grinning and obviously knowing what awaits [if tempGorillaGender is 0]him[else]her[end if], the new gorilla pulls off [if tempGorillaGender is 0]his[else]her[end if] shirt and pants without hesitation and throws them aside, then kneels with an eager expression on [if tempGorillaGender is 0]his[else]her[end if] face. [if tempGorillaGender is 0]His[else]Her[end if] hands fly to his crotch, [if tempGorillaGender is 0]jerking his own cock[else]fingering her pussy[end if] a few times until the first of the surrounding gorillas steps up and holds out his manhood. As the newcomer takes it in [if tempGorillaGender is 0]his[else]her[end if] mouth and eagerly starts to bob [if tempGorillaGender is 0]his[else]her[end if] head, you feel a hand close around your own cock - it's the gorilla next to you, starting to slowly jerk you off and saying, 'We're going clockwise, with everyone having a turn at his mouth, so it'll be a bit. [bold type]How about we... take care of each other in the meantime?'[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) Let your neighbour pleasure you, and return the favour in kind.";
	say "     ([link]N[as]n[end link]) Refuse politely, and wait for your turn.";
	if player consents:
		LineBreak;
		say "     With him already doing a very nice job of handling your manhood and his other hand running up your side before moving on to stroke over your nipples, you have no intention of saying no to this offer. Reaching out, you take your neighbour's erection in hand and start giving him a slow and long-lasting wank while getting busy feeling up his muscled body. It's quite nice to touch someone and be touched in this way and you close your eyes and moan silently while it lasts - until eventually, you hear your partner say, 'Your turn,' just as he pulls his hand away and the cocksucking newbie's lips close around your cock. It's clear that this [if tempGorillaGender is 0]guy[else]girl[end if] has had quite a bit of experience in taking care of male members, as [if tempGorillaGender is 0]he[else]she[end if] expertly deep-throats you and plays [if tempGorillaGender is 0]his[else]her[end if] tongue over just the right spots of the shaft and cock-head.";
		say "     You can't help but take hold of the gorilla's head and pump in and out of [if tempGorillaGender is 0]his[else]her[end if] throat a few times, but eventually let go again and allow the kneeling athlete to move on to your jerking buddy. Your neighbour gives a lusty groan of, 'Oh yeah! [if tempGorillaGender is 0]He[else]She[end if]'s a real pro with that sweet mouth of [if tempGorillaGender is 0]his[else]hers[end if]! No wonder you took your time,' while at the same time putting a hand on your shoulder to steady himself. Eventually, the kneeling gorilla moves on to take care of the next guy and you move back to a mutual jerk-off with your buddy, continuing until the cocksucker has done a whole round pleasing everyone waiting for his attention. Then suddenly, the gorilla jerking you off grunts loudly, 'Let's paint him white boys,' and his hand starts to really pump your cock.";
	else:
		LineBreak;
		say "	 You politely whispers to the gorilla that you'd prefer not. 'Hmpf. Suits yourself,' he says, and turns towards his other neighbour. Eventually, the newbie turns towards you, and closes [if tempGorillaGender is 0]his[else]her[end if] lips around your cock. It's clear that this [if tempGorillaGender is 0]guy[else]girl[end if] has had quite a bit of experience in taking care of male members, as [if tempGorillaGender is 0]he[else]she[end if] expertly deep-throats you and plays [if tempGorillaGender is 0]his[else]her[end if] tongue over just the right spots of the shaft and cock-head.";
		say "     You can't help but take hold of the gorilla's head and pump in and out of [if tempGorillaGender is 0]his[else]her[end if] throat a few times, but eventually let go again and allow the kneeling athlete to move on to your jerking buddy. Your neighbour gives a lusty groan of, 'Oh yeah! [if tempGorillaGender is 0]He[else]She[end if]'s a real pro with that sweet mouth of [if tempGorillaGender is 0]his[else]hers[end if]! No wonder you took your time,' while at the same time putting a hand on your shoulder to steady himself. Eventually, the kneeling gorilla moves on to take care of the next guy and you resume your own jerk-off, continuing until the cocksucker has done a whole round pleasing everyone waiting for his attention. Suddenly, the gorilla who proposed you to jerk off each other earlier grunts loudly: 'Let's paint him white boys,' and his hand starts to really pump his cock.";
	WaitLineBreak;
	say "     Joining the frantic fapping all around, you have a little bit of a competition with the ape next to you, to see who can get the other off first... and you win. It's a pretty close thing, with just seconds between the grunted bellow signifying his first splash of cum spraying out over the kneeling gorilla's arm and your own orgasm, pumping out a long streak of your creamy load to hit the newbie on the shoulder. The gathered simian wankers don't let their target wait long either, and within moments, [if tempGorillaGender is 0]he[else]she[end if] is soaked to the bone in warm and sticky cum. After the short while they need to finish coming and catching their breaths, the freshly cum-bathed gorilla is lifted by many hands, gripping [if tempGorillaGender is 0]him[else]her[end if] securely despite [if tempGorillaGender is 0]his[else]her[end if] slipperiness, then carried off to the showers with a chant of, 'One of us! One of us!'";
	say "     'I love this tradition,' your wanking partner says, then brings his fingers to his mouth to lick off the accumulated cum. 'Have a nice day, and see ya,' he adds with a chuckle and gives your bare ass a playful swat before joining the others in the shower.";

to say GorillaTeamSex2: [bukkake (receiving)]
	say "     Eager to get some nice bukkake action going, you step up to a gorilla currently undressing in front of his open locker and reach out to cup his full, fur-covered balls. 'Hey there baby,' the football player replies, looking you up and down while you continue to fondle him. 'What can I do for you?' he asks, and a lusty grin appears on his face as you offer yourself for a cum-bath. Not mincing any words after that, the horny primate pulls you closer against him to give you a hungry kiss, then his hands start to work undoing your belt and pulling off any articles of clothing you're currently wearing. Soon, you're bare-ass naked before your eager gorilla and he lightly pushes down on your shoulders to make you kneel.";
	say "     Now at just the right height for the football player's erect, human-like cock, you lean forward and lick its shaft, then take the cockhead into your mouth and start going down on him. The gorilla lets you service him for a minute or two, gently pulling on your head to make you go deeper and deeper until you're deep-throating with your nose buried in his bushy pubes, then you can hear him call out, 'Hey guys - need some help giving this cock-sucking [if player is male]stud what he wants[else]beauty what she wants[end if] - time for a cum-bath again.' A cheer from many deep gorilla voices goes through the room and someone even calls for the guys in the shower, 'not to miss out this sweet bukkake action.'";
	WaitLineBreak;
	say "     As you slowly slide your lips off your gorilla's long pole, playing your tongue over the veins along its length, you become aware of quite a crowd gathering all around you. With a wet pop, you pull off a second later, looking around to see many muscled, college-age studs stand ready in a tight bunch. They're mostly gorillas in all states of dress and undress - from freshly showered and still dripping water to wearing full gear and being a bit sweaty and pumped from playing football - but in between you also see some hunks of different species... with a magnificent stallion-guy taking the top spot for longest cock. There is a brief moment of indecision and throat-clearing between the young men, with many cocks being wagged at you and hands reaching out to touch you, then a voice from the back of the crowd calls out, 'Let's go clockwise, then everyone has a turn!'";
	say "     Eagerly agreeing to the proposition because he's the next in line, the right-hand guy from your original gorilla stud puts his hand on your head and pulls you towards his crotch, sliding his rock-hard prick between your welcoming lips with an aroused grunt. What follows is a very hot time in which you service countless men, with your whole reality pulling in to the small cock-filled circle all around you - long and short, thick and thin, cut or uncut, even flared and with a sheath in the case of the horseman - you take them all one by one, suckling hard and eagerly to taste their sweet pre-cum. The fapping sound of many hands stroking erect cocks fill the air around you as the horny studs jerk off in anticipation of their turn, with many also taking their teammates['] cocks in hand and giving them some attention too.";
	WaitLineBreak;
	say "     You can't say how long it takes, with all of your attention focused on the current shaft of man-meat in your mouth, but eventually something seems familiar about the hard cock being held out before you. Looking up, you realize that it's the original primate hunk with whom you started. As his strong hands grasp your head and he starts to face-fuck you with eager grunts, the gorilla soon roars, 'Unnngh - getting really close! Brothers, let's paint this bitch white, inside and out!' After another handful of frenzied thrusts that make his heavy balls smack your chin, the young man suddenly bellows out loud and you can feel his cock pulse inside your throat as spurt after spurt of his seed is pumped directly into your stomach.";
	say "     Just moment later, the first of all the other guys jerking off on you joins him in orgasm, blasting your body with his white, creamy cum. Another follows before that guy's third shot, then another three at the same time, then more or less all the rest. From the corner of your eye, you see the horseman stud clasp his neighbouring gorilla's shoulder tightly as a breathtaking climax rocks his body - turning his proudly flared shaft into almost a garden-hose of cum, drenching your whole front in his mighty load. You don't think there is any part of you that is not drenched in someone's seed - an amazing feeling that sends your own libido into overdrive. Now that they're no longer busy handling one cock after another, your hands fly to your own crotch, [if player is male]grasping your own manhood and wanking it in a frenzied pace. As wound up as you are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own cum to the large puddle all around you[else if cunts of player > 0]sinking your fingers into your pussy and rubbing the little nub of your clit in a frenzy. As wound up as you are, it's only a matter of moments before you reach the point of no return, adding some splashes of your own femcum to the large puddle all around you[else]rubbing your genderless, but quite sensitive crotch in a frenzied pace. As wound up as you are, it's only a matter of moments before you reach the point of no return, trembling all over as an orgasm rocks through your body[end if].";
	WaitLineBreak;
	say "     'Nice job,' a familiar voice tells you, then you feel the soft touch of a towel wiping at your face. Your original gorilla stud uses it to clean you up - but soon the towel is totally drenched and he gives a resigned chuckle before dropping it. 'Let's get you clean in the showers,' he says a moment later, giving you a hand to help you stand up in the slippery state you are in. You are guided into the shower room next and soon find yourself under a warm spray of water, with your gorilla and two others washing you down, all the while giving you some lusty gropes. The warm and wet fun in the shower continues for a while, without going any further than just touching and rubbing, until you eventually leave the gorillas behind, walking out to dry yourself off and put your clothes back on.";
	infect "Football Gorilla";

to say GorillaTeamSex3: [chain fuck]
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			now TempGorillaName1 is "Bradley";
		-- 2:
			now TempGorillaName1 is "Brian";
		-- 3:
			now TempGorillaName1 is "Gavin";
		-- 4:
			now TempGorillaName1 is "Nate";
		-- 5:
			now TempGorillaName1 is "Andy";
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			now TempGorillaName2 is "Ike";
		-- 2:
			now TempGorillaName2 is "Vinny";
		-- 3:
			now TempGorillaName2 is "Reid";
		-- 4:
			now TempGorillaName2 is "Tom";
		-- 5:
			now TempGorillaName2 is "Everett";
	say "     Rubbing the bulge in your pants in anticipation of fucking a hot and tight hole, you let your eyes roam through the locker-room, soon finding the perfect target for your lusts. There is a pair of hunky gorillas over there, both naked, with one of them leaning forward against the wall while his buddy is crouched down behind him, lapping at his back door and showing off a very nice and shapely butt to the whole room. As you start moving towards them, the standing gorilla gives a needy moan of, 'Fuck me, [tempGorillaName1]! I'm ready!' - and his buddy is instantly on his feet to rub his hard shaft up and down the waiting primate's crack. You arrive beside them just in time to see him line up his cockhead with the other gorilla's ass and pump his hips forward, thrusting in more than half his length in one quick move.";
	say "     [tempGorillaName1] gives his friend a moment to get used to the thick piece of man-meat impaling his ass, using the time to put his arms around and play with his nipples, then he slowly pushes in further and further until his crotch is rubbing against the bottoming gorilla's furry ass. 'Man, [tempGorillaName2] - you've really got one of the best asses in the whole team. Soo welcoming and tight - no matter how often it's getting pounded each day!' With that, the young man starts to pull back and slide in again, fucking [tempGorillaName2] in a steady rhythm of deep thrusts that has the bottom whimper and moan in lust.";
	WaitLineBreak;
	say "     You watch the two of them go at it for a while, pulling off your clothes and getting more and more aroused as you do so, then eventually walk up behind [tempGorillaName1] and grab his shapely butt with your hands, giving the furry cheeks a nice squeeze. The gorilla moans at your touch, not at all surprised that someone would just come up and want to join in - but then, with what you've seen in here already, that seems to be the norm. Stopping the thrusts of his hips when he's balls-deep in his partner, the athletic student turns his head and chest far enough around to give your naked form an appreciative look, then says, 'Wanna mount me like I'm doing with [tempGorillaName2] right now, cowboy? I'm game for a nice and hard [cock of player] shaft buried in my ass!'";
	say "     Who could refuse such a nice offer? You certainly won't, as it's just what you wanted. Taking hold of your erection with one hand, you softly whack it against [tempGorillaName1]'s ass a few times, then gather a bit of spit and let it drip on your cock, rubbing it all over to help with the penetration. Guiding your cockhead to his quivering pucker next, you push forward gently but steadily and pop into his hole a moment later. 'Oh yeah, a tight hole around my cock and a hard shaft in my ass - now that's just as I like it!' the gorilla groans with lust in his voice, then starts to move again, pounding into [tempGorillaName2] and at the same time fucking himself on your manhood.";
	WaitLineBreak;
	say "     Having an awesome time with these two hot hunks, your arms wrapped around the broad chest of [tempGorillaName1] while thrusting into his ass, you don't pay much attention to the room around you until someone suddenly reaches between your buttcheeks, rubbing thick fingers over your pucker. Unsurprisingly, someone else decided that he wants a piece of the action going on here and now there's yet another horny gorilla standing right behind you, giving you a lewd grin and demonstratively wagging his long and hard cock for you to see.";
	LineBreak;
	say "     What now?";
	say "     ([link]Y[as]y[end link]) Take the gorilla's cock and continue the fuck-chain.";
	say "     ([link]N[as]n[end link]) Shake your head to him to show that you're not in the mood to get fucked right now.";
	if player consents:
		say "     Moaning for him to take that hole, you reach back and spread your asscheeks in open invitation - resulting in an impressively thick piece of man-meat pressing into you an eye-blink later, then pop in and spread your passage wide around its girth. It's a lot to take - but somehow, that makes it even better... with the very full and warm feeling the gorilla gives you as he starts to slide in and out, rubbing sensitive spots deep inside you. Moans and grunts fill the locker-room, intermixed with the slaps of horny men's balls against their willing bottom's butts, and the fuck-chain acquires several more members before eventually, [tempGorillaName2] reaches the point of no return and blasts his load, hitting the wall with audible splats. That first orgasm then leads to a kind of chain reaction, as the trembling and twitching hunk's inner muscles squeeze [tempGorillaName1]'s cock and make him cum too, followed moments later by yourself as his chute tightens to a vice-like grip around your erection.";
		say "     You're still in the throes of your own orgasm, with your balls pulsating as they send splashes of seed deep into [tempGorillaName1], when you register a nicely warm and squishy feeling in your insides. Your own gorilla fucker is unloading his massive load directly into your ass, really filling you up in a hot bit of cream-pie action. When the last member of the long fuck-line has blown his load and the ones at your end have already caught your breaths, some helpful team-members hand out towels, allowing everyone to clean up - starting with the guy they fucked. Mostly, the young men use the towels for that, but after you wipe down [tempGorillaName1] and go to pick up your clothes again, you can see that others are eagerly eating out their partners, which will most likely result in another round of fucking very soon.[mimpregchance]";
	else:
		say "     Looking back at the guy and giving a slow shake of your head, you make clear to him that you don't want to get fucked - which he accepts, if a bit sullenly. As the gorilla moves off to find someone else to have fun with, you concentrate on your partner more fully, thrusting into him with new energy and changing up the angle of your movements to keep him on his toes. Moans and grunts from all three of you fill the locker-room, intermixed with the slaps of horny men's balls against their willing bottom's butts. It's great fun and you'd have loved to keep going for a long time, but eventually, [tempGorillaName2] reaches the point of no return and blasts his load, hitting the wall with audible splats. That first orgasm then leads to a kind of chain reaction, as the trembling and twitching hunk's inner muscles squeeze [tempGorillaName1]'s cock and make him cum too, followed moments later by yourself as his chute tightens to a vice-like grip around your erection.";
		say "     When your worn-out trio has caught their breaths, some helpful team-members hand out towels, allowing you to clean up by wiping down the part of your cum that leaks from [tempGorillaName1]'s freshly bred hole. Though as you move on to dab at your own cock, you notice that the two gorillas didn't do so - they just used the towel to wipe away sweat and now [tempGorillaName2] is having his ass eaten out. It'll most likely result in another round of fucking very soon...";
	infect "Football Gorilla";


[Tenvale Gorillas Quest is in its own extension (Kernog folder)]

[Events]
PeepingRoman is a situation.
The sarea of PeepingRoman is "Nowhere".

instead of going to Astroslide Field Locker-room while (PeepingRoman is not resolved and Furry is not banned and Furry is not warded and a random chance of 1 in 3 succeeds):
	move player to Astroslide Field Locker-room;
	PeepingRomanEvent;

to PeepingRomanEvent:
	say "     Just as you rest your eyes on the usual mayhem of the locker-room, Roman enters in a hurry, almost bumping into you. 'Sorry, [if player is male]boy[else]girl[end if],' he says. 'One of the other players just spilled some [']juice['] on me while I was supervising an endurance exercise. Damn Thomas still can't hold it under three minutes of ass pounding.' Keeping with his grunts, Roman disappears into a private room, whose door is marked [']Staff only['].";
	say "     A pair of fans, who have witnessed the scene like you, start to gossip.[line break]'Don't you think it's strange that the captain is the only one to have a private changing room?'[line break]'Yes, he never mingles with his players. All he ever does is supervise the trainings, and then he heads straight back hom when he needs a rest.'[line break]'It's a shame. Did you [italic type]see[roman type] this package of his? There must be a monster under these shorts.'";
	say "     The conversation piqued your curiosity. It is at this moment, that you notice that Roman did not close the door properly. It was slightly ajar, giving you the possibility to spy on the gorilla.";
	say "[bold type]Do you keep peeping on Roman?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) There's nothing wrong with indulging in some innocuous peeping.";
	say "     ([link]N[as]n[end link]) Everyone needs a little privacy.";
	if player consents:
		say "     You tiptoe to the door of the private changing room, and take a look inside. You can see Roman. His shorts are already down, exposing his slightly bubbly, furry ass to you. But what interests you is the other side. If only he could rotate just slightly, just enough to see what kind of package he has. Answering your silent prayers, Roman turns to the right in order to fetch a clean pair of shorts. He has... Nothing?";
		say "     You are taken aback. There is no massive maleness, no large ballsack, totally contradicting the permanent bulge his shorts were giving him. Oblivious to your spying, Roman sits on a bench, and spreads his legs. You can see the unmistakable folds of a vagina, and the plump clit just over it. Roman nonchalently pulls a large tuft of cotton from a bag, and packs it into his new shorts without pulling them up. So that's the reason he always wears shorts, and looks hung like a horse.";
		say "     Roman hoists himself up from the bench, making you hurriedly retreat. However, you ponder about confronting Roman about his secret, the next time you will talk to him.";
		now romanPeeped is 1;
		now PeepingRoman is resolved;
	else:
		say "     Privacy is a rare leisure in his city, much more in this place. You decide to give the team captain some much needed privacy. A couple minutes after, he leaves the changing room with a new pair of shorts, just as bulgy as the previous one. As you wonder why he did not choose a bigger size, you notice a tuft of cotton falling from the pair of pants. Weird.";

Astroslide Field Locker-room ends here.
