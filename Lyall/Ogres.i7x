Version 1 of Ogres by Lyall begins here.

[ OgreMeetings                             ]
[  0: not used                             ]
[  1: starting value, first event ready    ]
[  2: player won, submitted for sex        ]
[  3: player won, refused sex              ]
[  4: player lost, got fucked              ]
[  5: player fled                          ]

Table of GameEventIDs (continued)
Object	Name
Ogre Encounter	"Ogre Encounter"

Ogre Encounter is a situation.
The level of Ogre Encounter is 10. [minimum level to find the event]
The sarea of Ogre Encounter is "Junkyard".
OgreMeetings is a number that varies. OgreMeetings is usually 1.

when play begins: [flags for blocking this event]
	add Ogre Encounter to BadSpots of MaleList;
	add Ogre Encounter to BadSpots of FurryList;

Instead of resolving a Ogre Encounter:
	setmonster "Ogre";
	if OgreMeetings is 1: [FIRST ENCOUNTER]
		say "     While exploring the city, you turn a corner and bump into a large creature. Startled, you quickly jump back to create some distance between the two of you and [if weapon object of Player is journal]ready your fists[else]reach for your weapon[end if]. Your resolve to fight wavers when you realize that it's not just one, but three of these beasts that stand in front of you, all easily seven feet tall and imposingly built. The gray-skinned creatures resemble orcs, but with pudgy faces and large, round bellies. Their faces are covered with wrinkles and sport pointed teeth with what look to be a small set of tusks jutting out unevenly from the bottom row. They have large, round ears and dark, dim eyes. You can see a bush of black hair covering their armpits, a light coating across their arms, and a big patch between each pec. They look to be either oiled up from head to toe or just covered in sweat - you assume the latter.";
		say "     The middle one stands a little taller than the other two. Unlike them, he wears a long, open fur coat that almost reaches to his knees. A long scar runs down his torso, although it's hard to gauge the source of the injury. All of them are wearing what look to be tight, black swimming briefs, though these don't hide much, the bulk of their large orbs and thick lengths leaving a clear impression in the material. 'Look what we ran into, boys,' the middle one shouts. 'A weakling for us to beat the snot out of.' A small sense of fear creeps over you as they step forward, a mismatched collection of baseball bats at their disposal. 'You know, us bounty hunters usually have to fight much tougher enemies than you, weakling. You should be honored that we would waste our time with you.' They inch closer to you, looking for a fight.";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
			if GroupFightCounter is 0:
				say "     The three ogres ready their bats and growl, pushing themselves up to their full height. Chest puffed out and bat over his shoulder their leader shouts out, 'Hopefully you prove to be more challenging than you look!' And with that, he charges you!";
			else if GroupFightCounter is 1:
				say "     'You might've gotten lucky beating the boss,' the second ogre, 'But you won't get lucky twice.'";
			else if GroupFightCounter is 2:
				say "     The last ogre looks at his fallen brethren and shakily lifts his bat to give it a swing in your direction. He lets out a nervous scream before attacking.";
			now inasituation is true;
			challenge "Ogre";
			now inasituation is false; [reset]
			increase GroupFightCounter by 1;
		if fightoutcome < 20: [player won]
			if Player is male:
				say "     The last of the three creatures has been bested in combat and falls down flat on his face with a loud thud. You stand there with your hands on your hips and chest puffed out, happy with your work. One of the creatures whimpers on the ground and crawls towards who you assume is the leader of their group, then whispers something into his ear. Your start to wonder what you should do with the helpless creatures. Looking down at the smallest one and see his little, curly tail begin to twitch. At the same time, the other two both roll over and sit up, giving you a concerned glance before quickly looking at each other and whispering amongst themselves. Their leader in the fur coat finally speaks up, 'I am shocked. You have bested my brothers and myself in combat. You do as you please with any one of us. All I ask of you is to leave the most undesirable punishments to me as I have failed to live up to my duties as a leader.' You nod and look over the three creatures and carefully examine both their bulges and their rears.";
				LineBreak;
				say "     [bold type]What do you want to do with them now?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Fuck the ogre leader.";
				say "     [link](2)[as]2[end link] - Ride a thick ogre cock.";
				say "     [link](3)[as]3[end link] - Just leave.";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to fuck an ogre, [link]2[end link] to ride an ogre's cock or [link]3[end link] to leave.";
				if calcnumber is 1:
					LineBreak;
					say "     Your eyes fixate on the ogre leader's rear and gives you an idea as to how he might be able to serve you. Stepping closer, you demand that he get on all fours. Hesitantly, the large being obeys, shifting his body and rolling over, presenting himself to you. Removing your gear, you walk up to the waiting male, licking your lips in anticipation. You get down on one knee behind him and possessively place your hand onto his rear end, rubbing it up and down over his still covered buttocks. He grumbles something about being humiliated and his two friends turn away and walk off, at least wanting to spare him witnesses to being put in such a position. Meanwhile, you reach up and pull down his spandex briefs, revealing a gray-skinned and hairless ass. A smile spreads over your face as you give his exposed cheeks a few good smacks, enjoying your dominance over this big brute. A couple of slaps on each side make a nice even number.";
					say "     The ogre leader grunts in response to your rough treatment, not at all enjoying to be on the receiving end for once. Bringing a finger to your mouth you suck on it for a few seconds before pulling it out and moving towards his pucker. You brush over his wrinkled opening once or twice, then push the wet digit against his hole, not letting up the pressure until it sinks into his body. The large creature doesn't make a sound, instead gritting his teeth and stoically bearing your invasion. You swirl the finger around, noticing that his ass is so tight that it might actually be a virgin. Then you add a second finger, closely followed by a third, all in an effort to help loosen him up before you proceed to fucking the ogre. 'You gonna be done soon? I think you've ridiculed me enough, so why don't you call it quits, eh?' the ogre asks with a grunt. A quick smack on the ass gives him an answer - just not the one he was looking for.";
					WaitLineBreak;
					say "     Spitting on his hole and fingering him some more till you think that the defeated ogre is ready, you soon line your dick up to his exposed rear and push yourself in. A slight moan escapes between the creature's clenched teeth as your shaft stretches his inner walls, penetrating deep into the previously unclaimed passage. His inner walls squeeze nicely around your cock, and you are eager to push yourself in all the way, to enjoy the tight confines of his virgin ass. One more hard thrust and you find yourself balls-deep inside the beast. You give him a few seconds to get used to your member, then waste wasting no more time and begin to fuck the ogre leader in earnest, using long and hard thrusts. He grunts and mutters quiet curses in response to you rough treatment. Paying no mind to your defeated enemy's opinion, you just continue the fast-paced fucking, greatly enjoying yourself.";
					say "     The air is filled with the rhythmic sound of your hips hitting his rear, complete with the wet slurps of your [Cock of Player] prick sliding in and out of his spit-slickened asshole. Unable to deny that he is getting used to - and into - the feeling of being fucked, your gray-skinned partner soon breaks his quietness by letting out louder and louder moans, then even asks you to go faster. Grinning at pushing him to accept his new role, you grab onto his hips firmly and thrust even harder into him. Due to his tight inner walls clenching and relaxing around your cock, your arousal soars quickly to new heights, and you find yourself approaching an orgasm quickly. With a satisfied grunt, you bury yourself all the way in his gripping ass and unleash a torrent of your seed. As an afterthought, you reach around your sub while still sending more spurts into his ass, taking hold of his thick member and starting to jerk him off.";
					WaitLineBreak;
					say "     The newly inducted bottom is quite hard from the novel sensations you've been giving him during your fuck, so it doesn't take all that long to rub out his own climax. He lets out a loud grunt as his thick shaft starts to throb, spraying his load onto the ground below. After riding out your own orgasm, you pull out your spent cock and give the ogre's ass a hard smack. No longer held up by your hands on his hips, he sinks down on the ground, panting and trying to reconcile with being made to receive a hard dick, including breeding his ass. You smile as you put your clothes back on, then get going and leave the ogre behind. Time will tell what kind of aftermath comes from this. Maybe they'll be out for revenge?";
					now OgreMeetings is 6; [player won, dominated the ogre leader]
					now Resolution of Ogre Encounter is 1; [won, fucked the ogre]
					now Ogre Encounter is resolved; [for now]
				else if calcnumber is 2:
					LineBreak;
					say "     You give them a final look over and tell the fur-coated ogre to strip. He gives you a puzzled look, followed by a grunt, before he removes his coat and briefs. The others look back and forth between the two of you while you quickly begin to strip yourself, laying down gear and clothes in a tidy pile. The little show actually causes outline of the two watching ogre's cocks in their pants to grow. You turn your attention back to the leader, who is standing there unimpressed, glancing at your crotch. 'If you think that little thing's going to please me, you're sadly mistaken,' he scoffs, pointing at your cock. Chuckling, you explain to him that it isn't his ass that you're after. 'Then what the hell could you possibly want from me? My coat?' he shouts. After a quick step closer, you reach out and take hold of his still soft cock. He tenses up at first but relaxes when you start some gentle rubbing.";
					say "     'Even after defeating us, you want me to breed you?' he asks incredulously, then laughs out loud and calls to his friends, 'Seems like this one is a needy slut after all!' You ignore the ogre leader's words and continue rubbing his hardening cock, your other hand also moving to his plump balls. When his cock starts to drip precum, you place your palm over his tip, rubbing and spreading the slick liquid over his member. Once he is sufficiently lubed up, you tell him to lay down on his back, which he does so without hesitation, and line your hole with the thick, gray-skinned piece of man meat. You try to sink down onto the creature's cock but are met with resistance from your own pucker as it struggles to take the girthy shaft. It takes a few tries before you are able to pop the tip of his thick cock into you, letting out a satisfied moan at the nice and full feeling he gives you.";
					WaitLineBreak;
					say "     After allowing yourself a few seconds to get used to his thick dick, you start to gently lower yourself further onto his pole. You let out a few long moans as you slowly sink down onto his cock. Inch by inch, his meat slides into you until you feel your rear touch his plump cock. 'I didn't think you would be able to handle all of this,' the ogre leader says with a small wiggle of his hips that forces a lewd groan from your lips. 'It would be awful rude of me to make you do all the work, wouldn't it?' He starts rubbing your sides. 'Why don't you just relax a little and let me show you how a real warrior fucks?' Just the thought of letting this creature have his way with you, even after beating him, fills you with joy. Unable to say anything, you just blush in response. 'I know that you will like it,' he says while very gently thrusting into you. 'Don't overthink it. Just let it happen. It will feel great, I promise.'";
					say "     The powerful ogre grips your sides a little bit harder, and his thrusts become just a little faster. You are too confused to think rationally, and you just sit there moaning on top of him, wishing that he will keep pleasuring you. 'All you have to do is say the words,' he offers, stopping his thrusts.. 'And I'll breed you properly. Just imagine having such a strong male laying on top of you, having his way with you. We both know that you beating us was a fluke, and all that you want is to be bred by me. Just imagine how great it will feel to be pumped full of my cum, to have my seed buried deep inside of you.' You moan for him to breed you once your lust-filled mind takes control. He pulls you into his chest, and you are greeted with the musky smell of his armpits. You take a deep breath trying to inhale as much of the male's scent as you can.";
					WaitLineBreak;
					say "     'Good choice,' he says, beginning to thrust into you again. 'Just take it like the good, little slut you are.' He wastes no time to really start pounding into you. His slick cock slides in and out of your hole rapidly now that it's been stretched out. You feel yourself being pushed up against his chin and start to kiss at his broad chest as a way of thanking him for the rough fucking. His two brothers are now standing a few feet away, stroking their cocks while they watch their leader fuck you. His thrusts start becoming more sporadic, and his breathing becomes heavy and shallow. Soon enough, he wraps his arms around you and gives you a tight squeeze, holding you in place while he slams into you one last time and starts releasing a torrent of cum deep into you. You find yourself orgasming as well, spilling your sticky seed between your bellies.";
					say "     Even his underlings join in as they grunt, and you feel a spurt of their seed fall onto your back as you hear the rest fall onto the ground. The creature continues to fill you long after your orgasm subsides. Soon, you feel his cock slide out of you with a wet plop, and his grip loosens up. Once he fully removes his arms, you slide off of him and onto the cold cement. 'I told you that it would feel great,' he remarks, putting his clothes back on. 'The name's Gurke, and the other two are Kogs and Grogs.' Finished putting his gear on, he extends his hand down to you. You grab ahold of his meaty hand and are pulled up to your feet. 'You're welcome to see us again any time you wish.' He gives you a smile before walking off. You quickly put your gear back on and head out before any beasts decide they want to try and get sloppy seconds.";
					mimpregchance;
					now Resolution of Ogre Encounter is 2; [won, sucmitted for sex]
					now OgreMeetings is 2; [player won, submitted for sex]
				else:
					LineBreak;
					say "     Deciding that you would like nothing to do with any of the creatures, you just simply turn and walk away, leaving them to lay there and sulk in their defeat. You can hear them talking amongst themselves as you are walking away, but something tells you that this won't be that last time you see these three.";
					now Resolution of Ogre Encounter is 3; [won, refused sex]
					now OgreMeetings is 3; [player won, refused sex]
					now Ogre Encounter is resolved; [for now]
			else:
				say "     <WIP: Sorry, we currently do not have scenes for female and herm characters in this event>";
				now Ogre Encounter is resolved; [for now]
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			if Player is male:
				say "     You fall to your knees, exhausted from the fight. The large creatures walk up to you, towering over you with smiles plastered across their faces. 'What should we do with them?' one asks. 'We should kill it,' another one says. 'Shit up, both of you!' the leader barks. 'He doesn't have a bounty, so there's no use killing him, and he didn't put up a fight as another bounty hunter would. I say that we have a little fun with him.' The leader licks his lips and stares down at you. The other two laugh and agree with him. Done arguing over what they want to do with you, the leader removes his jacket and sets it on the ground. You can't help but look over in awe at his powerful, gray legs and his cute, little tail. The other two stand there, waiting for their leader. Once his jacket is neatly placed on the ground, he removes his briefs and turns towards you.";
				say "     His thick, though not long, cock begins to harden, becoming even thicker. He walks up to you, and the closer he gets, the stronger his musk becomes. He stands only inches from you, and you look up to see his now hard eight-inch cock above. The other two walk behind you, having already removed their gear, and rest their cocks upon each of your shoulders. 'I'm Gurke, and these are my partners, Grogs and kKogs,' the leader informs. 'And you are now our pet, you understand?' You nod in agreement with Gurke's statement. 'Good. Now get on all fours,' Gurke commands. Given the situation, you have no choice but to do as they say. You fall forward, bracing yourself with your hands, and raise your ass for your new masters. Gurke steps towards your ass, moving his partners away.";
				WaitLineBreak;
				say "     He looks down at your raised ass and chuckles 'I think we are too thick for the weakling,' Gurke taunts, getting a chuckle in response from Grog and Kogs. He gives his thick member a couple of stokes to gather some precum and lines himself into your awaiting hole. 'I'll try not to ruin him for you two.' He pushes his thick cock against your hole. Your hole fights his member, refusing to let him in, though the fight doesn't last too long before Gurke's thick cock head pops into you. The initial penetration hurts, but part of you relishes in the idea of being stuffed by such a thick cock, and the pain soon turns into pleasure. Luckily for you, Gurke does stay still for a few seconds to help you get accustomed to his thick member. Once he believes that you are adjusted enough, he gently pushes his cock deeper into you.";
				say "     He inches in slowly while you moan beneath him. The more Gurke pushes into you, the more eager you get to have his cock buried balls-deep inside of you. Your wish is finally granted when you feel his huge balls gently rest upon your ass. Gurke, once again, pauses for a few moments before he starts fucking you with short, slow thrusts, only taking an inch or two out at a time. You let out a few deep moans while he gently has his way with you. 'Good boy,' he says, still fucking you gently. 'I want to take my time with you.' His thrust stays the same for quite some time. Eventually, your new lover starts to take some more of his cock out with each thrust, eventually taking it all the way out to the tip. Though the length may have changed, his slow, tantalizing pace remains the same.";
				WaitLineBreak;
				say "     His two partners, who have been watching this whole time, make their way to either side of you and begin slowly stroking their cocks over you. Gurke notices his partners and finally begins to pick up the pace of his humping. You are caught off guard by his sudden change of pace and almost fall onto your face. You moan beneath him as he starts to pound faster and faster into you, and it seems to get him even more riled up because he suddenly begins to brutally fuck your hole. His voluminous, gray balls make a loud smack with each of his hard thrusts. His partners, who seem to be enjoying the show, start stroking themselves faster. Gurke grabs hold of your hips and gives them a couple of good smacks while fucking you. Before long, the air is filled with the sounds of your moans, fapping, and loud grunts. This goes on for a little while longer before you hear his partners['] grunts change, and they both orgasm.";
				say "     You feel spurt after spurt of their hot seed fall onto your back while they cover you with their cum. Their orgasms seem to last forever before you finally feel the last drop of cum fall onto your soaked back. The pleasure of being fucked by Gurke and getting covered in his partners['] cum sets you over the edge as you shoot your load onto the ground beneath you. As you orgasm, your hole tightens around Gurke's cock, and you feel his thrust become shorter and more desperate before, with one more hard slam, he buries his cock inside of you and begins filling you. His seed quickly floods your bowels as he just keeps pumping you full of his cum. Once his orgasm finally subsides, he pulls his spent cock from your hole and gives your ass a hard smack. 'Man, I don't think you will recover from this.' Gurke laughs,. 'I haven't seen a hole beat up like this in years.' His two partners chuckle while you slowly drift away. The last thing you remember is hearing Gurke tell you to look for them sometime if you ever want to become their newest plaything before passing out from exhaustion. You wake up and clean off their dried-up cum as best as you can before making your way back to safety.";
			else:
				say "     <WIP: Sorry, we currently do not have scenes for female and herm characters in this event>";
			now OgreMeetings is 4; [player lost, got fucked]
			now Resolution of Ogre Encounter is 4; [lost, got fucked]
		else if fightoutcome is 30: [fled]
			say "     Taking your arms under your legs, you quickly run off, leaving the aggressive ogres behind.";
			now OgreMeetings is 5; [player fled]
			now Resolution of Ogre Encounter is 5; [fled]
			now Ogre Encounter is resolved; [for now]
	else if OgreMeetings is 3: [player won but refused sex the last time]
		say "     ...";
	else if OgreMeetings is 4 or OgreMeetings is 2: [player lost or submitted previously]
		say "     For some odd reason, you find yourself looking for Gurke and his partners. You search for quite some time before you stumble across what looks like a little camp with a large tent and a fire pit that must have been found while scavenging. The tent is black and looks like it could house eight average size people, and the large fire pit is filled with ashes from previous fires. It looks like there may even be embers still hot in the pit. You look around to see scattered wrappers and miscellaneous objects scattered all around the makeshift camp. You look around for signs of life to no avail. You are about to give up your search and leave, but before you finally do, you hear a loud voice coming from behind you. 'Look who came back,' the familiar voice says, and you turn around to see the three hulking figures of Gurke, Grogs, and Kogs. 'I honestly didn't know if you were going to be able to walk after what I did to you last time,' Gurke teases with a powerful thrust of the hips. You chuckle and tell him you got up shortly after and went on your way. 'So, what brings you back to us,' Grogs asks. 'Why else would they come back, you idiot,' Gurke responds. 'He wants to be our new little plaything, isn't that right?'";
		say "     Do you agree with Gurke?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Become their plaything.";
		say "     ([link]N[as]n[end link]) - Disagree with him.";
		if Player consents:
			say "     You tell them that, yes, you would like to be their new plaything, against your better judgment. They look at you almost shocked with your response and give each other confused looks back and forth. 'Well... Um... That's great,' Gurke says, finally breaking the silence. 'So you want to be our pet?' You tell Gurke that you do wish to be their pet and will do whatever they ask of you. 'Okay,' Gurke replies, still surprised. 'Well, then take that shit off and bend over for me.' Without hesitation, you remove your gear and present yourself to the three, who are removing their clothes as well. Gurke is the first to walk up to you and leads you into a tent with three makeshift beds. He guides you down onto all fours on the bed and sucks on his finger. Getting his finger wet enough, he gently pushes it into your awaiting hole. Your hole, still loosened up from your last coupling, easily yields, letting his finger slide in with ease. He thrusts his finger a few times, just to be safe, before pulling it out and positioning his now hard cock up to your hole. He gently pushes his head against your rear, and with a little effort, manages to pop the tip of his cock in.";
			say "     This time, you moan during the initial penetration. It no longer hurts, and it just feels great to be stretched out by your new master once again. He doesn't waste time before he starts pushing the rest of his member inside of you. You quickly feel his balls press up against your own, signaling to you that he's balls deep. He slowly starts to slide his cock halfway out before gently pushing it back in. You moan in response to his thrust, urging him to fuck you harder. Acknowledging your demands, he reluctantly starts to thrust faster. He grunts and groans on top of you as he continues to fuck you harder and harder. His thick cock fills you with the feeling of fullness that you long for. He rubs across your prostate, sending shivers up your spine with each pass. You moan louder as he continues to fuck you. Not long after his breaths start to become shallow, he thrusts hard into your ass, unleashing a torrent of his cum that completely paints your insides white. Once his orgasm subsides, he pulls his cock free from your loose hole with a wet slurp, and some of his seed falls onto the bed.";
			LineBreak;
			say "     Kogs and Grogs look in awe at your gaping, cum -filled hole and both rush towards you to fill it next. Kogs manages to push Grogs off course and is the first to grab ahold of your hips. Wasting no time, he positions his cock and slams it into your hole. You moan in delight as you are suddenly filled by Kogs['] thick member. 'I hope you like your fucks extra sloppy, Grogs,' Kog taunts mockingly. He starts fucking you in earnest. His thrusts are long and fast as he ravages away at your hole. You moan lewdly beneath him, and you find yourself creeping closer to an orgasm. You feel Gurke's seed get pushed deeper into you and make its way into your belly. As fast as it began, you feel Kogs['] balls tense up as he slams hard into your ass. He starts pumping his seed into your already cum-filled bowels, and after only a couple of spurts, you feel his cum start to drip out of your hole and onto the bed. Finally finished with his orgasm, he pulls free from your hole. Grogs instantly pushes Kogs out of the way and plunges his thick member into your hole, causing you to moan once again from the sudden fullness. Much like Kogs, he fucks you in earnest.";
			say "     He pushes your head down onto the bed and positions himself a little higher so that he can fuck you harder. Gurke's and Kogs['] seed are starting to slip out around Grogs['] cock, allowing for him to fuck you faster. Grogs gives your ass a hard smack, and you find yourself shooting a load of your seed onto the bed below. Grogs gives a satisfied grunt as he plows your wrecked hole. Before too long, Grogs finally has had enough and thrusts into you, releasing his ample load into you as well. When he pulls out, a flood of their mixed seed spills onto the bed. You fall flat onto the bed with a swelled-out stomach. 'Welcome to the team, partner,' Gurke says with a smile. 'We might have to take you out for a couple of fights here and there. Maybe we'll even let them fuck you after you beat them up.' You don't respond. Instead, you just lay on the bed, silently savoring the sensation of being filled with so much cum. 'Get some rest, pet,' Gurke says. 'And come back to the camp when you're ready to fight or ready for another fucking. Maybe even both, if your lucky.' With that, he leaves you to rest. After a while, you gather your things and head out, still leaking their cum. You make sure to note where their camp is so that you won't have any troubles coming back.";
			now Resolution of Ogre Encounter is 6; [became ogre plaything]
		else:
			say "     You tell him that unfortunately, you do not want to be their personal plaything. All three give a dissatisfied sigh in response. 'If you ever wish to have fun with us again, you know where to find us. We would all enjoy another round of playtime with you, but I won't press the matter. Just know that you are welcome back anytime.' Gurke looks sad while talks, but you don't want to bring it up. Instead, you thank him for his offer. Part of you is a little disappointed that you said no to him, but you remind yourself that you will probably see him again and be asked again.";
			now Resolution of Ogre Encounter is 7; [refused ogres]
		now Ogre Encounter is resolved;
	else if OgreMeetings is 5: [player fled the last time]
		say "     ...";
	else if OgreMeetings is 6: [player dominated Gurke last time]
		say "     ...";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Ogre"; [name of the overall species of the infection, used for children, ...]
	add "Ogre" to infections of OtherworldlyList;
	add "Ogre" to infections of MaleList;
	add "Ogre" to infections of BipedalList;
	now Name entry is "Ogre";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The ogre hits you![or]With a swing of his bat, the ogre smacks you in the stomach, knocking the wind out of you![or]He charges you shoulder-first, slamming his shoulder into your chin.[at random]";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 20;
	now dex entry is 8;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80;                [ How many HP has the monster got? ]
	now lev entry is 10;               [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15;              [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 16;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 0;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 75;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "ogre";
	now type entry is "ogre";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Ogres ends here.
