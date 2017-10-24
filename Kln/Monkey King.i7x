Version 2 of Monkey King by Kln begins here.

"Adds a Monkey (King) creature to Flexible Survival's Wandering Monsters table"

[SPECIFICS : 1 player variable tracing if player won and how (subsmissive or not) : MonkeyKingWin; influences intro, for now.
More/Less Anal Victory for male]
The player has a number called MonkeyKingWin.

[PLANS/A FAIRE :
Randomiser MK descriptions scenes: [random adj][random name] (v 2)?
Develop MonkeyKing: give option on how to handle victory. Depending on what you do, Fight intro and/or outcome changes. (v2)
Interaction during fight? (v2)
Concept : friendship meter: raises if non-dominant victory, lowers else; if positive or negative, certain scenes change (v2 / v3)
]

Section 1 - Monster Responses

when play begins:
	add { "Monkey" } to infections of guy;
	add { "Monkey" } to infections of furry;

to say MonkeyKingdesc:
	setmongender 3; [creature is male]
	choose row monster from the table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if MonkeyKingWin of player is 1:
		say "     You are once again in the Asian wing of the Museum. 'Oh my, look who has come to visit me.' The Monkey King appears from behind a pillar. He sounds much less arrogant than last time and seems to have calmed down.[line break]'You got me by surprise last time, but it won't work on me anymore. I challenge you to a rematch!' On these words, he takes a fighting stance.";
	else if MonkeyKingWin of player is 2:
		say "     You are once again in the Asian wing of the Museum. 'You [bodyname of player] bastard! Stay where you are!' A furious Monkey King jumps in your way, intent on taking his revenge. It seems the humiliation from last time was not enough for him...";
	else:
		if bodyname of player is "Monkey":
			say "     The place around you looks familiar. It seems you are in the Asian wing. You shudder, remembering who is his annoying inhabitant. You starts to turn around and go back to the entrance, but a familiar, arrogant and very irritating voice resonates in the big room: 'Who dares trespass the kingdom of the mighty Monk... Oh my, that's interesting.'";
			say "     The prideful monkey-man startles you as he falls from the ceiling just in front of you. Unfortunately, he seems to remember you. 'Aren't you one of my subjects? Your timing is perfect. Kneel before your King and let him satiate his lust!' he declares, with the same arrogant tone.";
		else:
			say "     You find yourself in the Asian wing of the Museum. Suddenly, a regal-sounding voice booms in the empty halls. '[italic type]Halt, peasant![roman type]'. On these words, a golden-furred monkey dressed in an martial arts vest and pants jumps in front of you. He is armed with a wooden staff which seems to change sizes when you're not looking at it.";
			say "     With an arrogant grin on his face, the kung-fu artist challenges you: '[italic type]Peasant! You are now graced by the presence of the illustrious, mighty Monkey King. Obey your betters and service me. Of course, you can also do that after I whacked you a little with my staff...[roman type]'.";

to say losetoMonkeyKing:
	say "     The arrogant fighter grins over your defeated body while juggling with his staff. '[italic type]I win, as it should be. So now just lay there and let the great Monkey King give you pleasure.[roman type]' The victorious simian promptly puts down his staff and walks towards you.";
	if cocks of player > 0 or cunts of player > 0:
		if a random chance of 1 in 2 succeeds and (cunts of player > 0 or anallevel is not 1):
			if cunts of player is 0:
				say "     You try to crawl away from him but the smirking monkey jumps on your back. You feel his cock brushing against your buttcheeks and lining with your ass. '[italic type]Relax yourself and bask in pleasure.[roman type]' whispers the Monkey King in your ear, before forcing himself inside of you. You moan as he fucks you in a quick, steady pace.";
				say "     Suddenly, the agile primate's feet leave the ground and grab your cock. Having to suddenly support the entire weight of the simian fighter, you fall forward, your shoulders and your head pinned on the ground. The Monkey King hugs your chest tight as he fucks you while his prehensile paws stroke your [cock size desc of player] penis. The pleasure is really indescribable and, in a few minutes, your cock spurts its load on the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your innards signals that he came as well. Satiated, he dismounts you and apply his paws on your face, forcing you to lick them clean of your own cum, before he takes his leave in a short, taunting victory dance.";
			else:
				say "     You try to crawl away from him but the smirking monkey jumps on your back. You feel his cock brushing against your thighs and lining with your vagina. '[italic type]Relax yourself and bask in pleasure.[roman type]' whispers the Monkey King in your ear, before forcing himself inside of you. You moan as he fucks you at a quick, steady pace.";
				if cocks of player > 0:
					say "     Suddenly, the agile primate's feet leave the ground and grab your cock. Having to suddenly support the entire weight of the simian fighter, you fall forward, your shoulders and your head pinned on the ground. The Monkey King hugs your chest tight as he fucks you while his prehensile paws stroke your [cock size desc of player] penis. The pleasure is really indescribable and you orgasm in a few minutes, your cock spurting its load on the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your innards signals that he came as well. Satiated, he dismounts you and apply his paws on your face, having you lick them clean, before he takes his leave in a short, taunting victory dance.";
				else:
					say "     Suddenly, the agile primate's feet leave the ground and grab on your legs while his arms hug your upper body tight. Riding you like a jockey rides a horse, you stumble forward as the speed and the intensity of his fucking doubles. The deserted halls resonate with your moans and the monkey's grunts. The pleasure is really indescribable and you orgasm in a few minutes, your cunt spasming around the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your vagina signals that he came as well. Satiated, he dismounts you and takes his leave in a short, taunting victory dance.[fimpregchance]";
		else:
			if cunts of player > 0:
				say "     He sits on you, putting his growing cock against your face. '[italic type]Make it hard, servant.[roman type]' he orders as he pushes the head of his cock in your mouth. You start to protest, but the feeling of a tongue on your clitoris replaces that protest by a moan. The monkey goes to town on your pussy, sucking on your clit and exploring your passage with his tongue while he pistons his hips in your moaning, twitching face. Once he's sated, the rock-hard martial artist sits up and have you sit in his lap. Then, he aligns his member with your opening and spears your [if anallevel is 3]ass[else]cunt[end if] with it. He starts fucking you in a slow, but steady and deep rhythm, making sure the only words coming from your mouth are moans of pleasure. '[italic type]Mmm, yes. This sound is music to my ears...[roman type]'. His hands caress your body, focusing on your breasts and your nipples.";
				say "     Suddenly, you gasp in surprise as the Monkey King folds one of his legs and uses his prehensile foot to play with your[if cocks of player > 0]cock, stroking it and playing with its head[else]pleasure button, introducing one or two of his toes in your pussy while doing that[end if]. The new sensation is rapidly too much for you, and your muscles contract around his dick as you climax. Your mate cums shortly after, filling your insides with his sperm. The satisfied monkey takes his leave in a short, taunting victory dance.[if anallevel is not 3][fimpregchance][end if]";
			else:
				say "     Having you lay on your back, he frots his lithe body against yours. His mouth locks with your own in a sloppy kiss while his hands explore your chest. You feel your cocks quickly grow from arousal and touch each other. After a few minutes, the simian creature breaks the kiss and sits on your lap. '[italic type]Now, let's get serious.[roman type]' says the golden-furred lover as he aligns his ass with your cock and lets himself slowly fall down. He moans loudly. You moan as well, as his insides feel like silk on your [cockname of player] dick. Then he pushes up, only to let himself fall down on your lap, and so on.";
				say "     The two of you quickly build a steady rhythm and you even start pushing up against your partner's ass. Suddenly, you muffle in surprise as the flexible creature puts one of his foot against your face, his toes entering your mouth. '[italic type]Lick, peasant.[roman type]' he orders smugly. To his great pleasure, you comply and start to lick the sole of his prehensile foot and suck on his toes.";
				say "     After long minutes of this treatment, worshipping one foot, then the other, you feel the Monkey's ass tighen as he reaches his climax and splatters your chest with long ropes of sperm, almost gagging you as his foot reflexively slips further in your mouth. The vice-like pressure on your cock makes you cum as well and your partner makes sure to milk you of everything you've got. The satisfied monkey takes his leave in a short, taunting victory dance.";
	else:
		say "     The monkey sighs as you lack anything he could play with. '[italic type]Aw... Too bad. I won't be able to grace you with the exquisite pleasure of my carnal skills[roman type]'. On these words, he leaves you, panting and laying on the ground, as he looks for another victim to satiate his lust.";


to say beattheMonkeyKing:
	say "     The beaten fighter falls on the ground, his staff bouncing away with a few loud, woody noises. '[italic type]Impossible... How could I, the Great Monkey King, be defeated by the likes of you...[roman type]'.";
	if cunts of player > 0 or cocks of player > 0:
		say "     He lays on the ground, his ripped clothes exposing his nude body. This gives you a few ideas. Are you going to go through with them?";
		if the player consents:
			say "     With a smirk, you take off your cloth, then rip off what remains of your opponent's. '[italic type]Wh... What are you doing?[roman type]' he asks, visibly intimidated. You could go at him [link]gently (Y)[as]y[end link], or choose to teach him a lesson the [link]hard way (N)[as]n[end link]. What is your choice?";
			if player consents:
				say "     You crawl on your former opponent, intent on teaching him that letting the other one handle the things can also be pleasurable. You kiss him and fondle his body. Your mate is surprised but nonetheless pleased by what happens. After a few minutes kissing and groping, the monkey's prehensile feet give you an idea. Sitting at the opposite of the now erect simian, you apply your feet on his groin and, slowly, you use them to stroke his cock. Visibly aroused, the Monkey King moans; he calms down, lies on his back and lets himself enjoy your footjob. At first a little clumsy, you quickly get the hang of things, even starting to use your toes in the action. The primate's moans become louder and louder as you massage his penis with your foot soles or circle his cock-head with your big toe.";
				if cocks of player > 0 and cunts of player > 0:
					say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate as his feet grab your cock and shows you how it's done, jerking your [cockname of player] rod with one paw while frotting your [cunt size desc of player] pussy with the other.";
				else if cocks of player > 0:
					say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate as his feet grab your cock and shows you how it's done, fondling your ballsack and jerking your [cockname of player] rod.";
				else:
					say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate and shows you how it's done, frotting against your [cunt size desc of player] pussy and massaging your clit.";
				say "     After several minutes, you both come to a climax, and the monkey's penis launching several ropes of cum in the air. The once-arrogant man is now calmed down and pants. His smile is not arrogant anymore; instead, it feels genuinely thankful. It looks like he learnt the lesson.";
				now MonkeyKingWin of player is 1;
			else:
				if cunts of player > 0:
					say "     Ordering him to stay still, handle the Monkey King's dick. You caress it, fondle it and you can see it getting bigger and harder. You start using your mouth and lick the monkey's human-shaped shaft. The impertinent boy is visibly pleasured: '[italic type]Oooh yeaaah... Suck it, baby.[roman type]' Who the hell does that loser think he is?! You turn over and smother this prick's face with your nether regions; at the same time, your hand squeezes his ballsack, making him wince. Time to put his potty mouth to good use! A few mumbles and ball squeezes later, you feel the monkey's tongue licking your cunt, and doing a very good job at it. As a reward, you resume your blow job.";
					say "     Minutes pass in this torrid 69, with for only sounds your tongues going on each other's privates. The Monkey King is about to cum several times, and each time you deny him. Finally, you reach your own climax, and your pussy spasms on the poor simian's face [if cocks of player > 0] and your cock paints his chest white with your spunk[end if]. You rise up, letting the creature under you with a face dripping of fem-juice and a raging hard-on.";
					say "     As a finisher, you plant your foot on his dick and starts massaging it and playing with his member with your toes. Eventually, with a big moan coming from his mouth, the monkey's cock explodes, launching jets of spunk all over his fur and your feet. After making sure he licked your foot clean, you leave the panting, spent loser and resume your exploration.";
				else:
					if anallevel is 1:
						say "     For such a small monkey, he has a big mouth. It is time to give it a better use! You grab the weakened fighter's head with both hands and force your cock in his mouth. He gags, protests, and tries to push away but your grip his strong, and you pump his mouth, going deeper and deeper until all your cock is in and his face is mashed against your pubis. Too weak to resist, he can do nothing but emit gargled moans as he gags on your member.";
						say "     Several minutes of uninterrupted face-fucking pass, until you reach your limits. With a gargled cry of surprise, the monkey tries to pull out but it's too late and during long, agonizing seconds he is forced to swallow your entire cock as you empty your gonads in him.";
						say "     After you made sure every single drop went in his stomach, you let the Monkey King go. He coughs, looking very tired and visibly humiliated. You complete the humiliation by using his pretty face to clean your cock, smearing saliva and spunk all over it. Satisfied, you leave the panting, spent loser and resume your exploration.";
					else:
						say "     Without a word, you turn the monkey around and line your cock with his smooth ass. 'Wait... What are you?!' The poor chap does not have time to finish his sentence as you push inside of him. His inner walls feel very good, but they are less tight than you thought. So... That arrogant monkey is quite used to that, isn't he? You make the remark to him, and he blushes, obviously humiliated. 'S... Stop...' But you do not care. He's no king right now. He's your toy.";
						say "     You fuck him mercilessly, while your hands play with the now powerless warrior. Once your hand finds his now erect cock, you do not let it go and jack him off until his ass contracts around you and he spills his load on the ground. Pulling out, you finish yourself on the wannabe king and, grunting, you paint his back white with your cum. Worn out, the monkey falls on the ground, drenching his chest with his own cum. Satisfied, you leave the panting, spent loser and resume your exploration.";
				now MonkeyKingWin of player is 2;
		else:
			say "     You change your mind and leave the monkey as he is.";
	else:
		say "     Teaching this arrogant monkey a lesson was more than enough for you, and you go back on your way.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Monkey"; 	now attack entry is "[one of]The Monkey King hits you in the head with his staff![or]The agile primate swipes your legs with his weapon. You fall on your ass as the arrogant creature does a backflip and laughs at you.[or]The monkey uses his staff as support and delivers a flying kick in your stomach.[or]The dexterous creature jumps and, with a somersault, lands behind you. As you turn back a furry palm hits you in the face and makes you stagger.[at random]";
	now defeated entry is "[beattheMonkeyKing]";
	now victory entry is "[losetoMonkeyKing]";
	now desc entry is "[MonkeyKingdesc]";
	now face entry is "like a monkey, with a small muzzle, big laughing eyes and a mane of fur around it"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "lithe and human-like. It is also very flexible, and you can do any kind of acrobatics with ease. Your feet are prehensile, meaning you can hold various objects and do many things with them as if they were hands"; [ Body Description, format as the text "Your body is (your text)" ]
	now skin entry is "short, golden fur which recovers your entire"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, prehensile tail that wiggles behind you every time you move."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "human-like"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you feel your hair grow and surround it. Your nose and your mouth changes, forming a small muzzle"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body loses mass and becomes lither. Your feet tingle as they change form, gaining an opposable thumb and becoming prehensile"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a short but thick fur, as gold as the sun, grows on your whole body, from head to toe"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long, prehensile tail grows from your buttocks"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it morphs. Once the transformation is over, you look down and see your cock is like a human's"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 13;
	now dex entry is 21; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";
	now hp entry is 50;
	now lev entry is 10; [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Museum"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lithe"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "simian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]




Section 3 - Endings

when play ends:
	if bodyname of player is "Monkey":
		if humanity of player is less than 10:
			say "     Losing the remnants of your sanity, you seek out the Monkey King and pledges loyalty to him. You spend the following days with your new leader, training under him and catering to his every whims, many of which are of carnal nature. Eventually, other victims of the Monkey King strain join you, and soon, with the Museum as your base, your gang takes on the other groups in the city, with you as of one the gang's lieutenants.";
		else:
			say "     After the evacuation, you use your newly acquired abilities for martial arts to open a dojo in a nearby city. You quickly become famous, and your physique and your skills gets you a big movie studio's attention. Soon, you begin to star in kung-fu movies and monster flicks, and become a worldwide celebrity. Like a King.";

Monkey King ends here.
