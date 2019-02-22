Version 3 of Monkey King by Kernog begins here.
[ Version 3.0 - Wukong appears in monkey house with Hanu - Kernog ]

"Adds a Monkey (King) creature to Flexible Survival's Wandering Monsters table"

[Loyalties of Wukong:
-1: enemy
0: neutral
1: servant
2: companion
]

[
Humanities of Wukong:
50: independent
]

Section 1 - Monster Responses

when play begins:
	add { "Monkey" } to infections of guy;
	add { "Monkey" } to infections of furry;

to say MonkeyKingdesc:
	if inasituation is true:
		say "";
	else:
		setmongender 3; [creature is male]
		choose row monster from the Table of Random Critters;
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
		else:
			now sex entry is "Male";
		if Resolution of Monkey Duel is 1:
			say "     You are once again in the Asian wing of the Museum, when you hear a meek voice coming from nearby. 'Ah. It's-it's you.' Wukong comes out in the open hesitantly, tugging at his uncomfortable collar. 'S-stay away from me. If the master learns that I fought without his permission again, I will be punished.'";
		else if Loyalty of Wukong is 1:
			say "     You find your way to the imperial China exposition, and Wukong is there to greet you, as usual: 'If it is not my favorite servant. You arrive at a good time. I am hard as a rock, and I need someone to take care of this for me,' the monkey says, pointing at the noticeable bulge into his pants. 'And I shall not take no for an answer.'";
		else if Loyalty of Wukong is 2:
			say "     You are once again in the Asian wing of the Museum. 'Oh my, look who has come to visit me.' The Monkey King appears from behind a pillar. Friend or foe? Wukong slaps your shoulder: 'It's good to see you, my friend! Now, let's have some fun together!' You try to interject, but the primate is already taking a fighting stance. 'Let's spar! On your guard, [bodyname of player]!' You sigh. Neither friend, nor foe, Wukong is more like an annoyance by this point.";
		else if Loyalty of Wukong is -1:
			say "     You are once again in the Asian wing of the Museum. 'You [bodyname of player] bastard! Stay where you are!' A furious Wukong jumps in your way, intent on taking his revenge. It seems the humiliation from last time was not enough for him...";
		else:
			if bodyname of player is "Monkey":
				say "     You find your way to [one of]an[or]the[stopping] imperial China exposition. You take a look around the fake Asian decoration, when [one of]an angry[or]a familiar[stopping] voice reverberates on the walls of the in the big room: 'Who dares trespass the kingdom of the mighty Monk... Oh my, that's interesting. The prideful monkey-man startles you as he jumps down from the roof of a plaster pagoda and lands right in front of you. 'Aren't you one of my subjects? Your timing is perfect. Kneel before your King and prepare yourself. I need an outlet,' he says, grinning.";
			else:
				say "     You find your way to [one of]an[or]the[stopping] imperial China exposition. You take a look around the fake Asian decoration, when [one of]an angry[or]a familiar[stopping] voice reverberates on the walls of the in the big room: '[italic type]Halt, peasant![roman type]'. A golden-furred monkey dressed in an martial arts vest and pants jumps in front of you. He wields a wooden staff, and twirls it a few times around his body to show off his skills.";
				say "     With an arrogant grin on his face, the kung-fu artist challenges you: 'Low life! You are now graced by the presence of the illustrious, mighty Monkey King! Obey your betters and service me at once! Of course, you can also do that after I whacked you a little with my staff. Actually, do try to resist; claiming you will feel even more pleasurable.'";

to say losetoMonkeyKing:
	if inasituation is true:
		say "";
	else:
		if Resolution of Monkey Duel is 1:
			say "     Instead of his usual arrogant dance, Wukong looks at your defeated person with anxiety. 'Oh no... Please don't tell master Hanu,' he asks you. 'He will use the collar again.' Before you can say anything else, the monkey runs away from you.";
		else:
			say "     The arrogant fighter grins over your defeated body while juggling with his staff. 'I win, as it should be. So now just lay there and let the great Monkey King give you pleasure.' The victorious simian promptly puts down his staff and walks towards you.";
			if player is not neuter:
				if a random chance of 1 in 2 succeeds and (player is female or anallevel > 1):
					if player is not female:
						say "     You try to crawl away from him but the smirking monkey jumps on your back. You feel his cock brushing against your buttcheeks and lining with your ass. 'Relax yourself and bask in pleasure,' the Monkey King whispers in your ear, before forcing himself inside of you. You moan as he fucks you in a quick, steady pace.";
						say "     Suddenly, the agile primate's feet leave the ground and grab your cock. Having to suddenly support the entire weight of the simian fighter, you fall forward, your shoulders and your head pinned on the ground. The Monkey King hugs your chest tight as he fucks you while his prehensile paws stroke your [cock size desc of player] penis. The pleasure is really indescribable and, in a few minutes, your cock spurts its load on the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your innards signals that he came as well. Satiated, he dismounts you and apply his paws on your face, forcing you to lick them clean of your own cum, before he takes his leave in a short, taunting victory dance.[mimpregchance]";
					else:
						say "     You try to crawl away from him but the smirking monkey jumps on your back. You feel his cock brushing against your thighs and lining with your vagina. 'Relax yourself and bask in pleasure,' the Monkey King whispers in your ear, before forcing himself inside of you. You moan as he fucks you at a quick, steady pace.";
						if player is male:
							say "     Suddenly, the agile primate's feet leave the ground and grab your cock. Having to suddenly support the entire weight of the simian fighter, you fall forward, your shoulders and your head pinned on the ground. The Monkey King hugs your chest tight as he fucks you while his prehensile paws stroke your [cock size desc of player] penis. The pleasure is really indescribable and you orgasm in a few minutes, your cock spurting its load on the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your innards signals that he came as well. Satiated, he dismounts you and apply his paws on your face, having you lick them clean, before he takes his leave in a short, taunting victory dance.";
						else:
							say "     Suddenly, the agile primate's feet leave the ground and grab on your legs while his arms hug your upper body tight. Riding you like a jockey rides a horse, you stumble forward as the speed and the intensity of his fucking doubles. The deserted halls resonate with your moans and the monkey's grunts. The pleasure is really indescribable and you orgasm in a few minutes, your cunt spasming around the primate's paws. The arrogant monkey on your back lasts a little longer before his body tenses and a warm sensation in your vagina signals that he came as well. Satiated, he dismounts you and takes his leave in a short, taunting victory dance.[fimpregchance]";
				else:
					if player is female:
						say "     He sits on you, putting his growing cock against your face. 'Make it hard, servant!' he orders as he pushes the head of his cock in your mouth. You start to protest, but the feeling of a tongue on your clitoris replaces that protest by a moan. The monkey goes to town on your pussy, sucking on your clit and exploring your passage with his tongue while he pistons his hips in your moaning, twitching face. Once he's sated, the rock-hard martial artist sits up and have you sit in his lap. Then, he aligns his member with your opening and spears your [if anallevel is 3]ass[else]cunt[end if] with it. He starts fucking you in a slow, but steady and deep rhythm, making sure the only words coming from your mouth are moans of pleasure. 'Mmm, yes. This sound is music to my ears...' His hands caress your body, focusing on your breasts and your nipples.";
						say "     Suddenly, you gasp in surprise as the Monkey King folds one of his legs and uses his prehensile foot to play with your[if player is male]cock, stroking it and playing with its head[else]pleasure button, introducing one or two of his toes in your pussy while doing that[end if]. The new sensation is rapidly too much for you, and your muscles contract around his dick as you climax. Your mate cums shortly after, filling your insides with his sperm. The satisfied monkey takes his leave in a short, taunting victory dance.[if anallevel < 3][fimpregchance][else][mimpregchance][end if]";
					else:
						say "     Having you lay on your back, he frots his lithe body against yours. His mouth locks with your own in a sloppy kiss while his hands explore your chest. You feel your cocks quickly grow from arousal and touch each other. After a few minutes, the simian creature breaks the kiss and sits on your lap. 'Now, let's get serious,' says the golden-furred lover as he aligns his ass with your cock and lets himself slowly fall down. He moans loudly. You moan as well, as his insides feel like silk on your [cockname of player] dick. Then he pushes up, only to let himself fall down on your lap, and so on.";
						say "     The two of you quickly build a steady rhythm and you even start pushing up against your partner's ass. Suddenly, you muffle in surprise as the flexible creature puts one of his foot against your face, his toes entering your mouth. 'Lick, peasant,' he orders smugly. To his great pleasure, you comply and start to lick the sole of his prehensile foot and suck on his toes.";
						say "     After long minutes of this treatment, worshipping one foot, then the other, you feel the monkey's ass tighten as he reaches his climax and splatters your chest with long ropes of sperm, almost gagging you as his foot reflexively slips further in your mouth. The vice-like pressure on your cock makes you cum as well and your partner makes sure to milk you of everything you've got. The satisfied monkey takes his leave in a short, taunting victory dance.";
			else:
				say "     The monkey sighs as you lack anything he could play with. 'Aw... Too bad. I won't be able to grace you with the exquisite pleasure of my carnal skills.' With these words, he leaves you, panting and laying on the ground, as he looks for another victim to satiate his lust.";

to say beattheMonkeyKing:
	if inasituation is true:
		say "";
	else:
		if Resolution of Monkey Duel is 1:
			say "     Wukong falls on the ground, his staff bouncing away with a few loud, woody noises. 'P-Please. Master Hanu will know.'";
		else if Loyalty of Wukong is 1:
			say "     Wukong falls on the ground, his staff bouncing away with a few loud, woody noises. 'You caught me by surprise, servant. Don't get any ideas...'";
		else if Loyalty of Wukong is 2:
			say "     Wukong falls on the ground, his staff bouncing away with a few loud, woody noises. 'That was a nice workout.'";
		else:
			say "     The beaten fighter falls on the ground, his staff bouncing away with a few loud, woody noises. 'Impossible... How could I, the Great Monkey King, be defeated by the likes of you...'";
		if player is not neuter:
			say "     He lays on the ground, his ripped clothes exposing his nude body.";
			say "     [bold type]This gives you a few ideas. Are you going to go through with them?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Time for some monkey business!";
			say "     ([link]N[as]n[end link]) - He is not worth your time.";
			if player consents:
				LineBreak;
				if Loyalty of Wukong is 1 or Loyalty of Wukong is 2:
					say "     With a smirk, you take off your cloth, then rip off what remains of your opponent's. 'Fair game,' he says, relaxing a little.";
				else:
					say "     With a smirk, you take off your cloth, then rip off what remains of your opponent's. 'Wh... What are you doing?' he asks, visibly intimidated.";
				say "     [bold type]How will you claim him?[roman type][line break]";
				say "     ([link]Y[as]Gentle[end link]) - Make peace and love; mostly love.";
				say "     ([link]N[as]Rough[end link]) - Let us teach him a lesson!";
				if player consents:
					LineBreak;
					say "     You crawl on your former opponent, intent on teaching him that letting the other one handle the things can also be pleasurable. You kiss him and fondle his body. Your mate is surprised but nonetheless pleased by what happens. After a few minutes kissing and groping, the monkey's prehensile feet give you an idea. Sitting at the opposite of the now erect simian, you apply your feet on his groin and, slowly, you use them to stroke his cock. Visibly aroused, the Monkey King moans; he calms down, lies on his back and lets himself enjoy your footjob. At first a little clumsy, you quickly get the hang of things, even starting to use your toes in the action. The primate's moans become louder and louder as you massage his penis with your foot soles or circle his cock-head with your big toe.";
					if player is herm:
						say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate as his feet grab your cock and shows you how it's done, jerking your [cockname of player] rod with one paw while frotting your [cunt size desc of player] pussy with the other.";
					else if player is male:
						say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate as his feet grab your cock and shows you how it's done, fondling your ballsack and jerking your [cockname of player] rod.";
					else:
						say "     You do not forget to pleasure yourself as well with your free hands but soon, your partner decide to reciprocate and shows you how it's done, frotting against your [cunt size desc of player] pussy and massaging your clit.";
					say "     After several minutes, you both come to a climax, and the monkey's penis launching several ropes of cum in the air. The once-arrogant man is now calmed down and pants. His smile is not arrogant anymore; instead, it feels genuinely thankful. It looks like he learnt the lesson.";
				else:
					LineBreak;
					if player is female:
						say "     Ordering him to stay still, handle the Monkey King's dick. You caress it, fondle it and you can see it getting bigger and harder. You start using your mouth and lick the monkey's human-shaped shaft. The impertinent boy is visibly pleasured: 'Oooh yeaaah... Suck it, baby.' Does he still think he is in charge? You turn over and smother this prick's face with your nether regions; at the same time, your hand squeezes his ballsack, making him wince. Time to put his potty mouth to good use! A few mumbles and ball squeezes later, you feel the monkey's tongue licking your cunt, and doing a very good job at it. As a reward, you resume your blow job.";
						say "     Minutes pass in this torrid 69, with for only sounds your tongues going on each other's privates. The Monkey King is about to cum several times, and each time you deny him. Finally, you reach your own climax, and your pussy spasms on the poor simian's face[if player is male] and your cock paints his chest white with your spunk[end if]. You rise up, letting the creature under you with a face dripping of fem-juice and a raging hard-on.";
						say "     As a finisher, you plant your foot on his dick and starts massaging it and playing with his member with your toes. Eventually, with a big moan coming from his mouth, the monkey's cock explodes, launching jets of spunk all over his fur and your feet. After making sure he licked your foot clean, you leave the panting, spent loser and resume your exploration.";
					else:
						if anallevel is 1:
							say "     For such a small monkey, he has a big mouth. It is time to give it a better use! You grab the weakened fighter's head with both hands and force your cock in his mouth. He gags, protests, and tries to push away but your grip his strong, and you pump his mouth, going deeper and deeper until all your cock is in and his face is mashed against your pubis. Too weak to resist, he can do nothing but emit gargled moans as he gags on your member.";
							say "     Several minutes of uninterrupted face-fucking pass, until you reach your limits. With a gargled cry of surprise, the monkey tries to pull out but it's too late and during long, agonizing seconds he is forced to swallow your entire cock as you empty your gonads in him.";
							say "     After you made sure every single drop went in his stomach, you let the Monkey King go. He coughs, looking very tired and visibly humiliated. You complete the humiliation by using his pretty face to clean your cock, smearing saliva and spunk all over it. Satisfied, you leave the panting, spent loser and resume your exploration.";
						else:
							if Loyalty of Wukong is 2:
								say "     Without a word, you turn the monkey around and line your cock with his smooth ass. 'Wooh, wait, not so uuung!' The poor chap does not have time to finish his sentence as you push inside of him. His inner walls feel very good, but they are less tight than you thought. This arrogant monkey is quite used to that, isn't he? You make the remark to him, and he blushes, obviously humiliated. 'S... Slow down.' But you do not care. He's no king right now. He's your toy.";
							else:
								say "     Without a word, you turn the monkey around and line your cock with his smooth ass. 'Wait... What are you?!' The poor chap does not have time to finish his sentence as you push inside of him. His inner walls feel very good, but they are less tight than you thought. This arrogant monkey is quite used to that, isn't he? You make the remark to him, and he blushes, obviously humiliated. 'S... Stop...' But you do not care. He's no king right now. He's your toy.";
							say "     You fuck him mercilessly, while your hands play with the now powerless warrior. Once your hand finds his now erect cock, you do not let it go and jack him off until his ass contracts around you and he spills his load on the ground. Pulling out, you finish yourself on the wannabe king and, grunting, you paint his back white with your cum. Worn out, the monkey falls on the ground, drenching his chest with his own cum. Satisfied, you leave the panting, spent loser and resume your exploration.";
			else:
				LineBreak;
				say "     You change your mind and leave the monkey as he is.";
		else:
			say "     Teaching this arrogant monkey a lesson was more than enough for you, and you go back on your way.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Monkey";
	now enemy title entry is "Monkey King";
	now enemy name entry is "Wukong";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[one of]The Monkey King hits you in the head with his staff![or]The agile primate swipes your legs with his weapon. You fall on your ass as the arrogant creature does a backflip and laughs at you.[or]The monkey uses his staff as support and delivers a flying kick in your stomach.[or]The dexterous creature jumps and, with a somersault, lands behind you. As you turn back a furry palm hits you in the face and makes you stagger.[at random]";
	now defeated entry is "[beattheMonkeyKing]";
	now victory entry is "[losetoMonkeyKing]";
	now desc entry is "[MonkeyKingdesc]";
	now face entry is "like a monkey, with a small muzzle, big laughing eyes and a mane of fur around it"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "lithe and human-like. It is also very flexible, and you can do any kind of acrobatics with ease. Your feet are prehensile, meaning you can hold various objects and do many things with them as if they were hands"; [ Body Description, format as "Your body is (your text)" ]
	now skin entry is "short, golden fur which recovers your entire"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "You have a long, prehensile tail that wiggles behind you every time you move."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "human-like"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "you feel your hair grow and surround it. Your nose and your mouth changes, forming a small muzzle"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body loses mass and becomes lither. Your feet tingle as they change form, gaining an opposable thumb and becoming prehensile"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a short but thick fur, as gold as the sun, grows on your whole body, from head to toe"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a long, prehensile tail grows from your buttocks"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it morphs. Once the transformation is over, you look down and see your cock is like a human's"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 13;
	now dex entry is 21; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male";
	now HP entry is 50;
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Museum"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lithe"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "simian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 3 - Endings

when play ends:
	if bodyname of player is "Monkey":
		if humanity of player < 10:
			say "     Losing the remnants of your sanity, you seek out the Monkey King and pledges loyalty to him. You spend the following days with your new leader, training under him and catering to his every whims, many of which are of carnal nature. Eventually, other victims of the Monkey King strain join you, and soon, with the Museum as your base, your gang takes on the other groups in the city, with you as of one the gang's lieutenants.";
		else:
			say "     After the evacuation, you use your newly acquired abilities for martial arts to open a dojo in a nearby city. You quickly become famous, and your physique and your skills gets you a big movie studio's attention. Soon, you begin to star in kung-fu movies and monster flicks, and become a worldwide celebrity. Like a King.";


Section 4 - Events

[Flaggings and lockings]
[Every event will be flagged furry and guy, since most events are about Wukong]
[Variations in event will keep the player from seeing other kind of flagged content]
when play begins:
	add Monkey King Service to the badspots of furry;
	add Crashing the Satyr Party to the badspots of furry;
	add Hunt Of Mammoth Proportions to the badspots of furry;
	add Take My Royal Word for Granite to the badspots of furry;
	add Monkey King Service to the badspots of guy;
	add Crashing the Satyr Party to the badspots of guy;
	add Hunt Of Mammoth Proportions to the badspots of hermaphrodite;
	add Take My Royal Word for Granite to the badspots of guy;

[Event 1 - quest launcher]

Table of GameEventIDs (continued)
Object	Name
Monkey King Service	"Monkey King Service"

Monkey King Service is a situation.
The sarea of Monkey King Service is "Museum".
The level of Monkey King Service is 3. [event unlocks at lvl 3]

instead of resolving Monkey King Service:
	if "Monkey" is not listed in EncounteredEnemies of player:
		say "     You notice an exposition on imperial China exposition during your exploration of the museum. You decide to give it a look, but there is not much to see. All the art pieces have been looted by someone, and only the fake pagodas and other Chinese decorations remain. 'Good timing!' a booming masculine voice startles you. 'You, peasant! Come over here! I have a mission of upmost importance for you!' Whoever it is, he is thinking very high of himself...";
		say "     [bold type]Should you follow the voice, and check what he wants?[roman type][line break]";
	else:
		say "     You notice the exposition on imperial China exposition during your exploration of the museum. You pass the fake Asian-styled gate, to check if this wing's rowdy inhabitant is at home. Considering that he would have already been jumping at you by now, you consider that the coast is clear, and give the room a look-around. However, there is not much to see. All the art pieces have been looted, probably by you-know-who, and only the fake pagodas and other Chinese decorations remain. 'Good timing!' a booming voice startles you. 'You, peasant! Come over here! I have a mission of upmost importance for you!' It seems that the monkey is actually at home, and is still living his [']Journey to the West['] delusion.";
		say "     [bold type]Should you follow his voice, and check what he wants?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - This could lead to some interesting development.";
	say "     ([link]N[as]n[end link]) - You would rather not deal with him at the moment.";
	if player consents:
		LineBreak;
		if "Monkey" is not listed in EncounteredEnemies of player:
			say "     The voice leads you to a small pavilion. Although it was originally part of the décor, the plaster building has been filled with living implements: a cot, cushions, and all the items missing from the art exposition. In the middle of the mess, a golden-furred monkey is laying lazily on cushions. He looks at you approaching with a condescending air. 'A [bodyname of player], huh?' he says. 'That will do. My name is Wukong, but I am also known as the Great, Unparalleled Monkey King.'";
		else:
			say "     You follow the monkey's voice to a small pavilion. Although it was originally part of the décor, the plaster building has been filled with living implements: a cot, cushions, and all the items missing from the art exposition. In the middle of the mess, the golden-furred monkey is laying lazily on cushions. He looks at you approaching with a condescending air. 'Something tells me that we met before, ruffian,' he says. 'No matter. Allow me to present myself properly: my name is Wukong, but I am also known as the Great, Unparalleled Monkey King.";
		say "     You try to speak, but the primate signals you with his prehensile foot to stay quiet. 'You shall become my servant. You should feel honored. A band of rowdy half-beasts is being a nuisance. Always playing their barbaric music, drinking, and shouting, and fucking. One of these lowly [']satyrs['], as they call themselves, even came to me and asked me to join them, and, I quote, [']pull the broomstick from my ass and have fun[']. The nerve!' You let Wukong speak, hesitant as what to say, when the monkey suddenly jumps on his feet. 'Which is why I shall give them a lesson, and you shall help me!'";
		say "     He throws a small bag at you. You can feel from the touch that it is filled with some kind of powder. 'Throw this powder into the pots where they store their beverages. Once this is done, I will humiliate their leader in front of the entire assembly. That will show them. Now, shoo! Go and do my bidding!' Without letting you the time to place a reply, the monkey leaves you alone. You look back at the drug-filled pouch. What did you get yourself into?";
		now Loyalty of Wukong is 1;
		now Resolution of Monkey King Service is 1; [introductions done]
	else:
		say "     You slowly backpedal to the main lobby of the museum. 'I'm still waiting!' the voice clamors. Well, he can wait as long as he wants, you want nothing to do with him!";
		now Resolution of Monkey King Service is 2; [avoiding him]
	now Monkey King Service is resolved;

[Event 2 - good/evil path branching]

Table of GameEventIDs (continued)
Object	Name
Crashing The Satyr Party	"Crashing The Satyr Party"

Crashing The Satyr Party is a situation.
The Prereq1 of Crashing The Satyr Party is Monkey King Service.
The Prereq1Resolution of Crashing The Satyr Party is { 1 }.
The sarea of Crashing The Satyr Party is "Museum".
The level of Crashing The Satyr Party is 3. [event unlocks at lvl 3]

instead of resolving Crashing the Satyr Party:
	say "     During your patrol, you hear the sound of music, and several rowdy voices. You approach carefully, and stumble upon a group of satyrs and nymphs in the middle of an orgy. Vine cups are passed around, while couples or small groups form here and there, and swap members regularly. You remember the [']task['] that Wukong had charged you with, and you fetch the drug-filled pouch from your backpack. Should you go with it? It could be interesting to have the simian as your ally. The thought of giving the monkey a lesson for treating everyone around him like manure also comes to your mind.";
	say "[bold type]Decisions, decisions...[roman type][line break]";
	say "     [link](1)[as]1[end link] - Help Wukong.";
	say "     [link](2)[as]2[end link] - Sabotage Wukong's plan.";
	say "     [link](3)[as]3[end link] - Elect to stay out of this.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to help Wukong, [link]2[end link] to sabotage Wukong's plan or [link]3[end link] to elect to stay out of this.";
	if calcnumber is 1:
		LineBreak;
		say "     Having made your decision, you make your way towards the amphoras holding the party wine. 'Why, look what we have here?' the satyr that's closest to the containers says when he sees you. 'Too bad you missed the start of the party. But I can give you some consolation, if you want.' You try to tell the goat-man that you are not here for that, but he does not seem to listen. It looks like you have a fight on your hands.";
		challenge "Satyr";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     You look around, checking if your scuffle has attracted unwanted attention. Everyone else is either fucking, drunk, or both. You hurriedly dump the content of your pouch into the amphoras, just an one group approaches to get a refill. You skedaddle to make your report to Wukong. 'Very good,' the monkey says after you returned to the pagoda. 'By the time you came to find me, the drug should have acted. Now, it is time for [italic type]me[roman type] to party.'";
			WaitLineBreak;
			say "     'Come on, you lowly half-beast! Sex is your domain, is it not?' Wukong asks, as he slams his hips into the satyr one more time.";
			say "     It had been an impressively quick affair. You accompanied the monkey to the party, where you found all the satyrs in an even more engaged state than before. 'I had you spike their wine with some aphrodisiac,' Wukong explained to you, while you made your way through the painfully rock-hard satyrs and gushing wet nymphs. The both of you singled out the leader, a big, black-haired male with impressive chest hair, who was busy chain-fucking males and females alike, in the hopes to get his massive erection down. 'W-Why doesn't it come down?' you can hear him moan. Wukong made the satyr an elaborated speech, which he had rehearsed to you three times on your way here but still found a way to butch it, and the fight was on. Then, quickly over, as the monkey easily dominated the drugged goat-man, tied his hands together and began to claim his prize.";
			say "     'Ah, fuck!' the satyr shouted when he felt Wukong picking up the rhythm inside of him. The rest of the Greek assembly had paused their amusements, and was now sitting around the odd pair, masturbating at the uncommon scene. Suddenly, Wukong grits his teeth, and tenses up as he cums inside the satyr. 'Yesss...' Feeling the primate's climax flushing his innards, the satyr looked at him. 'P-Please make me cum. I can't hold it anymore.'";
			say "     'Oh, are we begging now? Where did that broomstick-up-your-ass talk go?' Wukong mocked. He pressed a foot on the satyr's cock, and began to massage it, cradling the shaft between his agile toes. The satyr gasped, and Wukong kept talking: 'Low-life. Peasant. Where did that arrogance go?'";
			say "     'Rrrnng! Fff-!' You are suddenly treated to the sight of several ropes of thick cum jumping out from the satyr dick, and covering his chest hair and his face with sticky white spots. Wukong kept stroking him until his balls gave all they could. When the deed was done, the monkey wiped his precum-coated foot on the satyr's furry legs, then stepped away. 'I hope that you learned your lesson. Let's go servant.' You realize that the last part was directed at you, and are about to follow him, when you hear the satyr pant: 'If he just wanted to top... He could have asked...' Looking around, you notice that the audience treated the scene as a kinky show, rather than a lesson on obedience, and are now resuming their orgy. You shrug at the satyr leader, as if to say 'Eh. Just humor him,' then jogs to catch up with a leaving Wukong.";
			WaitLineBreak;
			say "     'You are a person of trust, my [bodyname of player] friend,' Wukong says when you catch up to him. You part ways at the entrance of the Asian exposition. 'I have big plans, for the both of us. Come find me again later[if level of player < 8]. In the meantime, get outside and get some fight experience ([italic type]the next part of the quest will be available at level 8[roman type])[end if].'";
			now Resolution of Crashing the Satyr Party is 1; [successfully helped Wukong]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     'That was some nice romp,' the satyr says to no one in particular. In the meantime, you roll on your side, and try to stand up, when you feel something powdery under your hand. The pouch that Wukong had given you earlier ripped open during the fight, and its content now spread all over the floor. Your task ending up in failure, you scramble away from the satyr and his gang, before you are subjected to more sexual assault.";
			now Resolution of Crashing the Satyr Party is 2; [lost while helping Wukong]
		else:
			say "     You take your legs to your neck and run as far as you can from the satyr. In your flight, you realize that you dropped the drug that Wukong had given you. Now they are lost, and there's nothing you can do, except stay away from the monkey for some time, and pray that he would forget what he had asked you to do.";
			now Resolution of Crashing the Satyr Party is 3; [fled while helping Wukong]
	else if calcnumber is 2:
		LineBreak;
		say "     Time to turn the tables! You wait a little, until the small assembly finished to quench their lust, then walk towards them calmly. 'Why, look what we have here?' one of the satyr says when seeing you. 'Too bad you missed the party. But I can give you some consolation, if you want.' You try to tell the goat-man that you are not here for that, but he does not seem to listen. It looks like you have a fight on your hands.'";
		challenge "Satyr";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     You wait until the satyr gets back on his feet, and explain what Wukong had asked you to do. 'Really?' he asks. 'That's low, even for an insufferable prick like him. Tell you what: go get him, and tell him that you spiked the wine. Once he gets here, my boss and him are going to have an explanation.";
			say "     You do as you are asked, this time, and promptly lies to Wukong that his plan is ready. 'Very good,' the monkey says, and he wastes no time following you. 'Time to party, servant!'";
			WaitLineBreak;
			say "     'Time to party, brothers!' the satyr chief calls around, as he keeps the defeated monkey on the ground with a hooved foot.";
			say "     It had been an impressively quick affair. You accompanied the monkey to the party, where you found all the satyrs in an even more engaged state than before. 'I had you spike their wine with some aphrodisiac,' Wukong explained to you, while you made your way through the painfully rock-hard satyrs and gushing wet nymphs. The both of you singled out the leader, a big, black-haired male with impressive chest hair, who was doing a bad job of acting drugged and under the effects of the aphrodisiac. 'D-Damn monkey. That's one of your dirty tricks, isn't it?' he says. Wukong does not notice the wooden delivery of the line and rushes to assault. He was quickly dominated, as the satyr suddenly acted alert and promptly knocked the simian out, then tied his hands together and called for the rest of the assembly to join him.";
			say "     The arrogant monkey finds himself the unwilling middleman of the orgy. Satyrs waste no time plugging his ass and his mouth with their cocks. In the meanwhile, nymphs relay themselves around the simian's maleness, playing with the balls or the shaft, tickling it or licking it at their hearts content. 'So, where are your big words now?' the satyr boss says, as he looks down on the Monkey King, or rather at the outline of his cock delving into the Monkey King's throat. Satyrs and nymphs relay with each other, and those not currently having their turn with the primate play at harassing him by pinching his nipples and sucking his wiggling toes. The band even manages to get several orgasms from the defeated warrior before everyone had a turn.";
			WaitLineBreak;
			say "     Once everyone had a go, the tired and cum-covered monkey was untied, and allowed to leave. 'Now, learn your lesson and don't try any more cheap tricks. Otherwise, the broomstick in your ass will be a literal one!' the leading satyr threatened.' Wukong shuffles away, his head low, but when he passes by you, he gives you a silent, furious glare. 'Pray we never meet again, you dirty pile of manure. I will show them and make this museum mine,' he says to you, his voice filled with tranquil fury.";
			now Loyalty of Wukong is -1;
			now Resolution of Crashing the Satyr Party is 4; [successfully sabotaged Wukong]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     'That was some nice romp,' the satyr says to no one in particular. You hear other orgy goers approaching, attracted by the noises of your struggle. Ditching your original plan, you run away to the museum lobby.";
			now Resolution of Crashing the Satyr Party is 5; [lost sabotaged Wukong]
		else:
			say "     You take your legs to your neck and run as far as you can from the satyr. If they do not want to listen, then screw them!";
			now Resolution of Crashing the Satyr Party is 6; [fled sabotaged Wukong]
	else:
		LineBreak;
		say "     You decide to not get involved into neighbor disputes, specifically when they involve mythological creatures and talking animals. You throw the pouch away, and settle on peeping on the orgy from afar.";
		now Resolution of Crashing the Satyr Party is 99; [disinterest]
	now Crashing the Satyr Party is resolved;

[Event 3a - good path]

Table of GameEventIDs (continued)
Object	Name
Hunt Of Mammoth Proportions	"Hunt Of Mammoth Proportions"

Hunt Of Mammoth Proportions is a situation.
The Prereq1 of Hunt Of Mammoth Proportions is Crashing the Satyr Party.
The Prereq1Resolution of Hunt Of Mammoth Proportions is { 1 }. [must have successfully helped]
The sarea of Hunt Of Mammoth Proportions is "Museum".
The level of Hunt Of Mammoth Proportions is 8. [event unlocks at lvl 8]

instead of resolving Hunt Of Mammoth Proportions:
	say "     Your walk into the Museum is interrupted by Wukong saltoing in front of you. 'Ah, if it is not my favorite servant!' The monkey greets you. 'Do you remember what I told you, about my big plans for us? Well, follow me!' Rather than you following him, Wukong grabs your hand and pulls you towards the Paleolithic section of the museum.";
	say "     He eventually stops, and you with him, behind a rock, and points at a mass of brown fur a dozen meters across. The giant furball actually moves, and you realize that it is a living being: an anthro mammoth, to be precise. Wukong and you dive behind a rock before she can see you, but you had time to notice that [']she['] was a hermaphrodite, and that her private parts were larger than most beings you met in the infected city.";
	say "     'As you recall from the incident with these goat-men,' Wukong says, 'nobody seems to give me the proper respect, treating me as if I was their [']pal['] and talking to me as if I was a commoner. So, I decided to prove them all that I am worthy of my reputation and my station. To do so, we shall hunt down henceforth the mightiest being in this museum, which is this hideous elephantine thing. Of course, I count on [italic type]you[roman type] to assist me.'";
	say "     You have the dreadful feeling that despite being an [']assistant['], you will do most of the job. [bold type]Do you help Wukong?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - There could be a reward.";
	say "     ([link]N[as]n[end link]) - You are sick of this arrogant primate.";
	if player consents:
		LineBreak;
		say "     'I knew you would not refuse a chance for glory!' Wukong replies, beaming with joy. 'To battle, my friend. May we be victorious!' And on these words, Wukong charges towards the mammoth, who looks surprised and mildly inconvenienced by the interruption. You do not any more time and join the battle.";
		now inasituation is true;
		challenge "Mammoth";
		now inasituation is false;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Extenuated, the defeated mammoth falls on her butt. 'We did it!' Wukong exults. 'Look at this beast. It did not stand a chance against the mighty Monkey King. And you, my friend. Now, to celebrate this victory!' Wukong jumps on the mammoth's belly, and swat away her hands as they approached from her massive erection. 'Such a vulgar set of genitals. Let me give them a more proper use.' The monkey lines up his cock with the mammoth's urethra. Under you and the pachyderm's surprised looks, he pushes his dick inside the herm's member, who trumpets her approval. The monkey king wastes no time beginning to pump in and out the oversized urethra.";
			if player is male:
				say "     Not wanting to lose the opportunity of post-victory relief, you lift her huge balls, and thrust into her juicy hole. Her huge cunt, while loose, it still delightfully warm, wet and juicy, and grips around your shaft quite well. You bring your hands back up to keep her balls boosted up. The mammoth is moaning loudly, writhing on the floor as you and Wukong attack her from two sides. The monkey grabs her massive glans with his four limbs and humps like crazy, and you do not let the rhythm go down either. You hear him cum eventually, but then, as you fuck her, you can feel her balls churn with semen, signaling her approaching peak. You have no time to warn your simian friend before she blasts her own load across the floor and wall behind her, covering Wukong too with her spunk. Finding the massive display of virility arousing, you cum as well, pumping your load into her, [if cock width of player < 10]invoking some small tremors in response[else if cock width of player < 20]making her moan softly as her cunt ripples over your spurting shaft[else if cock width of player < 30]making her moan loudly as her cunt squeezes down onto your spurting shaft[else]causing her to trumpet again as she cums a second time as you fill her with your huge load, making even her large body bloat noticeably to contain it all[end if].";
			else:
				say "     Not wanting to lose the opportunity of post-victory relief, you climb on her cock and straggle the thick, hard shaft. You move your hips, grinding your crotch against the warm skin. The mammoth does not mind at all, and keep stroking herself, while you get along for the ride. You progressively get faster and faster, emboldened by the sensation of the blood flowing under your legs, eventually grabbing the massive rod in your arms for additional leverage. The monkey grabs her massive glans with his four limbs and humps like crazy, and you do not let the rhythm go down either. The pachyderm cums eventually, around the same time as you, the soft rumble of the cum rushing in her urethra accompanying the quivers of your puss[yfn]. Wukong, who came a moment prior, is on the receiving end of a shower of cum.";
			say "     The two of you get off the tired mammoth, and leave her dazed on the floor. Wukong leads you to his lair, and washes his cum-stained fur in a small artificial pond that had been installed for the exposition. He invites you to take a bath as well, and you eventually wash each other's back while talking about today's battle. 'I cannot find higher praises to give you, my friend,' Wukong says as the both of you begin to dry off. 'And so, I wish to reward you properly.'";
			say "     'You are skilled, but your moves and your stance are a mess. You need proper lessons in kung fu. Let me give you some tips.' And so, you spend the next hours learning basic martial art moves under Wukong's tutoring. It is not much, but the experience that you have accumulated over the past days gives you the feeling that they will be extremely useful.";
			if "Martial Artist" is not listed in feats of player:
				say "[bold type]You receive the martial artist feat.[roman type]";
				add "Martial Artist" to feats of player;
			else if "Black Belt" is not listed in feats of player:
				say "[bold type]You receive the black belt feat.[roman type]";
				add "Black Belt" to feats of player;
			else if "Natural Armaments" is not listed in feats of player:
				say "[bold type]You receive the Natural Armaments feat.[roman type]";
				add "Natural Armaments" to feats of player;
			else:
				say "[bold type]You receive one dexterity point[roman type]";
				increase dexterity of player by 1;
			say "     You part ways with the monkey king, and in good terms, for once. You hope that it will last.";
			now Loyalty of Wukong is 2;
			now Resolution of Hunt Of Mammoth Proportions is 1; [fought + won]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     'You little scamps!' the mammoth says, as she holds you and Wukong at the level of her eyes. You definitely need a little [']time out['].'";
			if vorelevel > 1:
				say "     With this being said, the pachyderm pushes you down to the floor. She drops her massive cock down atop you, making you release an [']Oof!['] as it slams atop you. She starts rubbing her large hands overtop of it and her balls while grinding her growing erection down atop you[if scalevalue of player is 5]. Once erect, her cock is nearly as large as you are and drools a constant stream of her precum over you[else if scalevalue of player > 2]. Once erect, her cock is larger than you are and drools a constant flow of precum over you[else]. Even before the fight ended, her cock was probably bigger than you and now it's utterly massive, burying you under its enormous weight and drooling what seems like mouthfuls of precum by the second all over you[end if]. The scent of this starts to cloud your mind, making you rub yourself against it as best you can, working to pleasure the hyper-endowed mammoth.";
				say "     In the meantime, she gets a hold of Wukong, and presents him head-first towards her urethra. The monkey protests and struggles, but the larger mammal holds him fast, and squeezes him into her cock. The mammoth trumpets her pleasure, as you feel the body of Wukong press against you on his way down. 'Oh, yes! Such a lively little thing!' The mammoth grabs her cock, and strokes it until the primate reaches the base of his cock, and his silhouette is now imprinted against the skin of her ballsack. 'Now, your turn!'";
				WaitLineBreak;
				say "     Slapping her massive meat onto the floor, she moves forward again, charging her yawning cock towards your feet. They pop right into her cumslit as you're taken in up to you [if scalevalue of player > 3]ankles[else]knees[end if]. With that start, her muscular inner walls squeeze and pull at your legs, drawing you steadily further into her. The floor, already slick with her precum, provides little purchase for you as you slide across the tiles and steadily deeper into the mighty phallus. As more of you is consumed by the pulsating rod, your hips are engulfed[if cocks of player is 1], pressing your shaft firmly against your belly, massaging it until you cry out in orgasm[else if cocks of player > 1], pressing your shafts firmly against your belly, massaging them until you cry out in orgasm[else if player is female], squeezing your thighs tightly against your aching puss[yfn] until you cry out in orgasm[end if].";
				say "     You are pulled in further and further, her giant cock bulging around your [body size of player] body as more and more of you is pulled in until only your head remains outside. She pauses here brief to catch her breath before wrapping both meaty hands around her enormous phallus, raising it upwards and stroking down it, helping to push you the rest of the way in. With a scream that turns to a wet gurgle before being muffled entirely, you are pulled fully into her shaft and slide your way even deeper. Pushed and pulled down, you are eventually deposited in one of her massive balls. In the damp darkness, you feel the body of Wukong, who quickly clamps onto you. Aroused by the musky air, you make out with each other until, exhausted, you pass out, the both of you soaked in her semen.";
				WaitLineBreak;
				say "     A churning around you awakens you to a semi-conscious state much later. This builds quickly with a trumpeting cry from beyond the fleshy walls surrounding you. You move quickly back through her titanic cock as she ejaculates, pushed along by the torrent of semen that comes out with you. You land in a big, sticky mess that stains the floor and wall all around you. Wukong follows you quickly after. While the mammoth walks away satisfied, the both of you lay there for quite some time, overcome by the strange, yet oddly arousing, experience. Eventually, Wukong turns his head in your direction. 'Let us... Never speak of this again,' he asks. You agree. Once you are in a good enough state to stand up, the both of you part ways without a word.";
			else if ublevel > 1:
				say "     The pachyderm leans back on the floor, then pushes you against her massive erection. 'Keep yourself busy, while your pal goes in first.'";
				say "     'Going where?' Wukong asks. He is quickly answered, when the mammoth reaches between her thighs, and presses the monkey's legs against her cleft. 'A-Are you crazy? Unhand me this instant, woman!' Silent to his pleas, the hermaphrodite pushes him down her vagina, centimeter by centimeter, in front of your eyes. When the monkey is inside of her down to his hips, she squishes you against her cock to [']encourage['] you to keep working. The enormous member blocks your view, and you finally hear a loud SCHLORP! The mammoth fingers herself for a moment, and you can feel a mass move under your feet, before kicking and struggling from the inside. You barely have the time to realize what it is, before the mammoth picks you up, and places you in front of her now stretched pussy face-first. 'Your turn.'";
				WaitLineBreak;
				say "     Your head pops inside her tight slit with a wet sound, and the pinkish flesh muffles your gasp of surprise. [if scalevalue of player is 5]Your size makes your insertion a tight feat, but it seems that the pachyderm loves it this way, and more lubrication flows on your body, allowing you to slip in, little by little[else if scalevalue of player > 2]Despite your normal size, the pachyderm's pussy takes you in without any difficulty, and your entire body is effortlessly pushed down her hole[else]Compared to the size of her love tunnel, you are of the size of a vibrating bullet, and you are literally squished by the internal pressure against the pachyderm's cervix[end if]. The warmth and the moistness cloud your mind, making you rub yourself against the inner wall as best you can, working to pleasure the hyper-endowed mammoth from the inside, until you feel a large finger push you against her cervix.";
				say "     You cry out as the large fingers spread your [if player is female]pussy[else]ass[end if] apart. [if scalevalue of player > 3]It takes several minutes for your head to pass the tight barrier, not helped in the least by the muscles squeezing you as the mammoth goes through an orgasm[else]your head passes through, followed by your body; midway, your advance is stopped as the inner walls squeeze you while the mammoth orgasms[end if]. Eventually, you fall into her womb. You feel the fur of Wukong, already trapped in there. The pouch stretches to accommodate your arrival, but even then it is a tight fit, and Wukong and you are cramped together. You feel his rock-hard cock slap against your belly. The both of you aroused by the carnal atmosphere. The moistness and the heat reaches new levels, and your arousal peaks as well. You make out with each other, reaching climax at the same time. Afterwards, drowsiness overtakes you; assuming a fetal position, your eyes close, and you pass out.";
				say "     A churning around you awakens you to a semi-conscious state much later. This builds quickly with a trumpeting cry from beyond the fleshy walls surrounding you. You move quickly back through her deep cunt as she gives [']birth['] to you once again, pushed along by the contractions and the torrents of femcum that comes out with you. You land in a big, sticky mess that stains the floor and wall all around you. Wukong follows you quickly after. While the mammoth walks away satisfied, the both of you lay there for quite some time, overcome by the strange, yet oddly arousing, experience. Eventually, Wukong turns his head in your direction. 'Let us... Never speak of this again,' he asks. You agree. Once you are in a good enough state to stand up, the both of you part ways without a word.";
			else:
				say "     The pachyderm pushes you down to the floor. She drops her massive cock down atop you, making you release an [']Oof!['] as it slams atop you. Wukong is then forced to straddle the massive erection. She starts rubbing her large hands around her shaft and her balls, grinding your bodies against her growing erection[if scalevalue of player is 5]. Once erect, her cock is nearly as large as you are and drools a constant stream of her precum over you[else if scalevalue of player > 2]. Once erect, her cock is larger than you are and drools a constant flow of precum over you[else]. Even before the fight ended, her cock was probably bigger than you and now it's utterly massive, burying you under its enormous weight and drooling what seems like mouthfuls of precum by the second all over you[end if]. The scent of this starts to cloud your mind, making you rub yourself against it as best you can, working to pleasure the hyper-endowed mammoth. Wukong too gets into the game, and eventually, she trumpets in ecstasy. She pushes Wukong in front of her urethra, and presses her cock down onto you hard before blasting a huge load that paints your bodies and a large chunk of the floor and wall behind you) white with her semen. While the mammoth walks away satisfied, the both of you lay there for quite some time, overcome by the strange, yet oddly arousing, experience. Eventually, Wukong turns his head in your direction. 'Let us... Never speak of this again,' he asks. You agree. Once you are in a good enough state to stand up, the both of you part ways without a word.";
			infect "Mammoth";
			now Resolution of Hunt Of Mammoth Proportions is 2; [fought + lost]
		else:
			say "     You run away as fast as your legs can carry you. 'Wait! Where are you-mmmf!' Wukong's outraged protest is cut short as he is grabbed by the mammoth and bear-hugged against her huge breasts. 'Hng... S-stop.'";
			say "     'You little scamp. Let me take care of you.'";
			say "     'Mmmg! C-can't breathe...'";
			say "     Eventually, the voices fade away as you leave the prehistory wing. Hopefully Wukong will not be mad at you for this. Well, not madder at least.";
			now Loyalty of Wukong is -1;
			now Resolution of Hunt Of Mammoth Proportions is 3; [fought + ran]
	else:
		LineBreak;
		say "     'How dare you?!' Wukong replies, when you say to his face that he is alone on this. 'Very well, then. I shall vanquish this beast alone. Begone, you spineless commoner!'";
		say "     You sigh, then leave without further ado. As you quit the prehistory wing, you can hear the noise of battle behind you. Then, very quickly, the defeated whines of Wukong: 'No, don't put me in [italic type]there[roman type]! Don't! Do-mmmmf!' It sounds like you will not see him for a while.";
		now Resolution of Hunt Of Mammoth Proportions is 4; [insulted Wukong]
	now Hunt Of Mammoth Proportions is resolved;

[Event 3b - evil path]

Table of GameEventIDs (continued)
Object	Name
Take My Royal Word For Granite	"Take My Royal Word For Granite"

Take My Royal Word For Granite is a situation.
The Prereq1 of Take My Royal Word for Granite is Crashing the Satyr Party.
The Prereq1Resolution of Take My Royal Word for Granite is { 4 }. [must have successfully sabotaged]
The sarea of Take My Royal Word For Granite is "Museum".
The level of Take My Royal Word For Granite is 8. [event unlocks at lvl 8]

instead of resolving Take My Royal Word For Granite:
	say "     As you are about to leave the reception, Valerie stops you. 'Please, wait a minute. You look strong, and I... We need help.' The sphinx catches up with you and begins to explain. 'You have surely met this [']Wukong['] fellow by now. A little nutty, thinks himself as the Monkey King of Chinese lore. Ever since that incident with the satyrs, he became more and more unhinged, and while he was formerly only a nuisance, he is now a real danger to the inhabitants of the museum. [bold type]Can you help us resolve this issue?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - You don't have to hear it twice. You're in.";
	say "     ([link]N[as]n[end link]) - This looks like trouble.";
	if player consents:
		LineBreak;
		say "     'A thousand thanks,' Valerie reacts. 'Here is the plan: we will bait Wukong to you. He is sure to come, if we let him [']accidentally eavesdrop['] that there's someone that can threaten his self-appointed authority in this place. Once you knock him down, use this.' The sphinx make a spherical item wrapped in several layers of rags, with a fluo-pink post-it slapped on one side. As you grab it, you realize that it is quite heavy and, feeling the outline, you make out some kind of face under the rags. 'Don't unwrap it now!' Valerie warns. 'And if you do, make it so the small post-it faces away from you. You will find the results to be positively [']stonning['], heh heh...'";
		say "     On these words, Valerie leaves you to set the bait ready. Ten, then twenty minutes pass without anything happening, until you hear Wukong's shrilling roar of anger as he leaps towards you. 'You will regret having said these words, peasant!' he shouts at you, leaving you wondering what words the sphinx had used to get him this riled up.";
		now inasituation is true;
		challenge "Monkey";
		now inasituation is false;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     As you send Wukong flying into a showcase, sending shards of glass everywhere, you remember Valerie's instructions. The monkey gets back slowly on his feet. His clothes are in tatters, and he angrily rips his heavily damaged shorts and shirt, showing off his lean and muscled body. Meanwhile you unwrap the item from its package. 'Wh-what are you holding?' Wukong asks. As the rags come off, you unveil the statufied head of a woman with snake hairs; a gorgon. You see the monkey king blink and grimace, as if blinded by the gaze of the statue. 'What is this? Magic?' he groans. Wukong's respiration gets faster, and you see his cock rapidly grow. Then, his fur and his skin begin to turn gray. 'Wh-what is this... Sor... Ce...'";
			say "     Wukong cannot finish his sentence as he turns into an immobile, erect statue on the spot. 'Great job,' Valerie says, as she walks towards you from her hiding spot. 'This is a little punishment that me and the others thought up. It is not permanent, but he will still come to regret acting like a bully. Come over here.' Intrigued, you approach from the statue. 'The monkey cannot move. Cannot see. Cannot hear either. But his sense of touch is intact. See for yourself, you earned it.' Intrigued, you touch the statue's chest, and begin to caress the firm pectorals. You suddenly feel something drip on your foot. You look down and see precum drool from the tip of the primate's petrified cock. You grin.";
			WaitLineBreak;
			say "     You take your sweet time, exploring Wukong's statufied body with your hands, taking fun at noticing that doing certain things like tickling his armpits or pinching his rigid nipples earn you additional drops of precum. Eventually, you decide to take care of Wukong's penis directly. You take it into your hand and stroke it slowly. You are quickly rewarded by cum squirting out from the opening and splashing on your arm. He seems to have cum; however his petrified cock was still at full hardness, and vulnerable to more assaults.";
			say "     You resume your stroking, trying to keep the monkey on the edge as long as you can. Not an easy endeavor as he is perfectly immobile. His stone-like temporary nature allows you to get naughty, such as giving his ballsack some hearty slaps, which makes his member release even more precum, like a leaked faucet. With more touches and, soon after, some licking, you make Wukong cum for a second time.";
			say "     Just as you got yourself into the game, someone taps on your shoulder. It is one of the satyrs from earlier. It seems that a small assembly has formed behind you, and they too want to harass the Asian primate. You realize that a lot of time had already passed, and all things considered you have other things to do. You leave your spot to the satyr, and begin to walk away. On the way, you notice Wukong's staff. It looks like a sturdy weapon, and so you decide to take it for yourself.";
			say "[bold type]You receive Wukong's staff.[roman type]";
			increase carried of wukongStaff by 1;
			now Resolution of Take My Royal Word For Granite is 1; [fought + won]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     'Ha ha ha! I knew it!' the monkey shouts as he dances around your tired body. 'You are no match for me! And... Hm? And what is this?' Wukong approaches from the sack that Valerie had given you earlier. He begins to unwrap it. You realize that the wrong side is facing you, and you muster your last strengths to stand up and run towards the primate. At this moment, the rag falls to the ground, revealing the statufied head of a gorgon. Her eyes flash, blinding you. You suddenly feel a wave of hotness feel your body. You realize that you are becoming strangely aroused, when [if cocks of player is 1]your cock becomes erect in a flash[else if cocks of player > 1]your cocks become erect in a flash[else if cunts of player is 1]your pussy turns wet in an instant[else]your pussies turn wet in an instant[end if]. At the same time, your movements become more and more sluggish. To your horror, your skin takes a grayish complexion while your muscles become immobile. A scream has barely the time to escape your mouth before your entire body becomes petrified.";
			say "     The world turns black and silent. What is happening outside? Are you in danger? Your thoughts are interrupted by the feeling of a hand on [if cocks of player is 1]your cock, palping it, before beginning to stroke it[else if cocks of player > 1]one of your cocks, then the other, stroking each of them alternatively[else if cunts of player is 1]your pussy, palping it with curiosity before grinding a finger intensely against your clit[else]your pussies, palping them with curiosity before grinding fingers intensely against each of your slits[end if]. Intense pleasure flow your brain. What is happening? Is Wukong touching you? Unable to move a finger, and forced to focus on the sensations of touch on your changed skin, an intense climax quickly overtakes your body. Something seems to happen outside, like some kind of reaction happened in the outside world. You did not really came, did you?";
			WaitLineBreak;
			say "     Time flows slowly in your stone prison. The hands of Wukong are quickly back on the offense, torturing your defenseless genitals with caresses and strokes. At one point, you even feel his tail [if cocks of player is 1]wrap around your cock and squeeze it[else if cocks of player > 1]wrap around all your cocks and squeeze them together[else if cunts of player is 1]grind against your pussy[else]grind against your row of pussies[end if]. After some time, you feel like the size of the hands change constantly, as if several other people took their turn playing with you. Your mind sinks into a permanently sex-addled state, and you drift in and out of consciousness regularly.";
			say "     Time flows slowly in your stone prison. The hands of Wukong are quickly back on the offense, torturing your defenseless genitals with caresses and strokes. At one point, you even feel his tail [if cocks of player is 1]wrap around your cock and squeeze it[else if cocks of player > 1]wrap around all your cocks and squeeze them together[else if cunts of player is 1]grind against your pussy[else]grind against your row of pussies[end if]. After some time, you feel like the size of the hands change constantly, as if several other people took their turn playing with you. Your mind sinks into a permanently sex-addled state, and you drift in and out of consciousness regularly.";
			say "     You eventually wake up some time later, with Valerie overlooking your knocked out body. You rise your head with great difficulty, every muscle in your body feeling sore. 'Thank goodness, you are back to your senses,' Valerie says when she notices you have awaken. 'It is fortunate that the effects were only temporary. Still, it must have been quite an ordeal. Are you feeling alright?' You shake your head, not feeling that good. 'Being turned into a living statue has some effects on the body, I guess,' the sphinx replies. 'I am sorry that we dragged you into this. At the very least, eat and drink this, it will make up for all the energy you had to spend.' On these words, she brings you a sandwich and a bottle of water, that you down without second thought. It will not make up for the time lost at being a statue, but it is better than anything.";
			say "[bold type]Looking outside, you realize that you spent nearly half a day, stuck as a statue[roman type]";
			decrease turns by 4;
			now Resolution of Take My Royal Word For Granite is 2; [fought + lost]
		else:
			say "     You pitifully beat a hasty retreat, with Wukong on your heels. 'You're right to run, peasant!' you can hear him, a few meters behind you, until you manage to reach the main door of the museum and rushes outside. 'You better not show your dirty face around these parts, scum!' you can hear the Monkey King shout, as a final warning. Distraught by your defeat, you go back to the library.";
			move player to Grey Abbey Library;
			now Resolution of Take My Royal Word For Granite is 3; [fought + fled]
	else:
		LineBreak;
		say "Valerie is understandably disappointed by your decision. 'Very well. I guess that I cannot force our problems on you. I will find a way, eventually...'";
		now Resolution of Take My Royal Word For Granite is 99; [disinterest]
	now Take My Royal Word For Granite is resolved;

Section 5 - Specific Items

Table of Game Objects (continued)
name	desc	weight	object
"Wukong's staff"	"An simple yet expertly crafted fighting staff, carved then polished with care to provide maximum efficiency. A golden leaf is riveted to the middle of the staff, ornately decorated with detailed figures of various animals, provides your hands with a good grip."	2	wukongStaff

wukongStaff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of wukongStaff is 5. The weapon type of wukongStaff is "Melee". It is not temporary.

Section 6 - NPC/Pet

[Temporary ally for now, but could be developed into a full-fledge companion?]

Table of GameCharacterIDs (continued)
object	name
Wukong	"Wukong"

Wukong is a person. Wukong is in Nowhere. The description of Wukong is "[wukongDesc]".

to say wukongDesc:
	if Resolution of Monkey Duel is 1:
		say "     You glance at Wukong, sitting in a corner of the Training Hall. He still wears his collar, as well as a complex network of ropes and knots which bites softly into his fur. [if humanity of Wukong < 3]He is rather restless, fidgeting and absent-mindedly pulling at the squeezing ropes here and there, inadvertently tightening the material's grip elsewhere[else]The formerly turbulent simian seems to have calmed down and gotten used to his shibari. Hanu's training seems to have paid off[end if].";
	else:
		say "     Wukong sits on a makeshift throne in the middle of the Monkey House. His position is less than regal, sprawled on his seat, his feet sprawled on both armrests and offered to simian courtesans, and by extension shamelessly exposing the royal crotch to newcomers. The Monkey King returns your gaze as if to remind you that he owns this place.";


instead of conversing Wukong:
	if Resolution of Monkey Duel is 1:
		if humanity of Wukong is 0:
			say "     [if Loyalty of Wukong is -1]'You accursed knave! Gnnk!' Wukong pulls at the collar that just sent him a shock. 'Just you wait until I'm out of this bondage.'[else if Loyalty of Wukong is 2]'Is this how you reward me for allowing you in my service? A thousand curses on you!' Wukong says as you enquire about him.[else]'And to say I considered you my friend. Traitor!' the former Monkey King laments, as you attempt to talk to him.[end if]";
		else if humanity of Wukong is 1:
			say "     [if Loyalty of Wukong is -1]'Such disgrace. I have nothing to say to you.'[else if Loyalty of Wukong is 2]'You are enjoying seeing your former sovereign in this state, admit it.'[else]'W-Would you at least convince this Hanu to remove these ropes. I'm itching!'[end if]";
		else if humanity of Wukong is 2:
			say "     [if Loyalty of Wukong is -1]'I learned my lesson, alright? Release me.'[else if Loyalty of Wukong is 2]'While I do see the point of this treatment, these ropes are over-doing it.'[else]'This Hanu person is not a bad person, but I cannot stand to stay in this bondage.'[end if]";
		else:
			say "     [if Loyalty of Wukong is -1]'We do not like each other much, but let's agree to put our past between us.'[else if Loyalty of Wukong is 2]'I realized that I treated my servants badly. I will treat my next ones better!'[else]'This enforced time-out helped clear my mind and realize many things, my friend. Once Hanu releases me, let's walk the Earth, you and I!'[end if]";
	else:
		if Loyalty of Wukong is -1:
			say "     'If it isn't the knave who had the nerve to entrap me, in that Museum!' Wukong says, a smirk on his face. [one of]'A lower man would not resist the urge to put you in chains like this baboon over here...' He punctuates his words with a couple of small foot slaps on Hanu's head. 'But I am a higher kind of being. A magnanimous lord. So enjoy your stay at my court!'[or]'Unable to resist the splendor of my new place of stay? Or is it my little pet here that interests you?' He punctuates his words by ruffling Hanu's hair with his foot.[stopping]";
		else if Loyalty of Wukong is 2:
			say "     'My trusted servant,' Wukong says as you beckon him. [one of]'I shall forgive your cowardice against the furry pachyderm, for I have now a new, entire kingdom to rule. You are welcome to stay here as long as you like. You may even amuse yourself with my pet, if you promise me to give me a good show.' He punctuates his words by grabbing Hanu's collar with one foot, and forcing his defeated rival to look at you in the eyes.[or]'Your visit fills me with joy. What news do you bring me from the city?'[stopping]";
		else:
			say "     'Ah, my friend! My dear friend!' Wukong shouts, over-joyed. [one of]Do you like the look of this new place? It may be a little less furnished than the Museum, but I can really claim it as my own. Make yourself at home, and use my little pet as much you like.' He punctuates his words by grabbing Hanu's collar with one foot, and forcing his defeated rival to look at you in the eyes.[or]'What extraordinary tales do you bring me from your adventures in the city?'[stopping]";

instead of fucking Wukong:
	if Resolution of Monkey Duel is 1:
		say "     Wukong averts his eyes after your proposition him for sex. 'I would have [italic type]loved[roman type] too,' he replies sarcastically. 'But if the old man sees us, he'll force me to go through another training of his...'";
		say "     'A training? Very good idea, my dear pupil,' an amused Hanu says as he drops from the ceiling.";
		say "     'Oh no...'";
		say "     'And maybe our friend desires to participate as well?'";
		say "     [bold type]What do you say?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Train";
		now sortorder entry is 1;
		now description entry is "Train alongside Wukong";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Assist";
		now sortorder entry is 6;
		now description entry is "Assist Hanu in his training";
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
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Train":
						say "[WukongTrainingTrain]";
					if nam is "Assist":
						say "[WukongTrainingAssist]";
					increase humanity of Wukong by 1;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You shake your head and politely refuse Hanu's offer. 'A shame. We are on the same boat, here,' the monkey replies. 'In order to retain our sanity, mental fortitude is needed. Come back if you reconsider.'";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "     Wukong considers your proposal for a short second, then displays his usual, facetious grin. 'Very well. I cannot refuse an offer for worship, [if Loyalty of Wukong is -1]even if it comes from an unpleasant fellow such as you[else if Loyalty of Wukong < 2]especially if it comes from one my servants[else]especially if it comes from a trusted companion[end if].' The monkey gestures you to kneel in front of his throne, while he extends his leg forward. 'Show me your dedication, my dear.'";
		say "     [bold type]Do you agree to worship Wukong's body?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Agree.";
		say "     ([link]N[as]n[end link]) - Out of question.";
		if player consents:
			LineBreak;
			say "     You nod, and place yourself in front of the Monkey King's feet. You grab them, and starts tracing figures with your fingers on his soles. Wukong's feet seem to be sensitive, as you see his toes curl in delight when you press on a good spot. 'Oh yes, that's the thing,' the simian sighs. You turn up a gear, and massage the king's feet until he pushes one of them on your face. The prehensile toes close on your face while he gives a simple order: 'Lick.'";
			say "     You oblige, and lick Wukong's sole, then the other. At one point, he pushes his toe in your mouth, for you to suck on them and play with your tongue. 'Now, up,' Wukong asks. You look up, and quickly understand what he means when you notice his raging hard-on. You slowly lick and massage your way up to the monkey's crotch. He trembles with pleasure, his cock releasing pre without any intervention. When you arrive at your prize, Wukong presses your nose against his crotch with his leg, allowing you bask in the manly musk of his ballsack. You do not waste time licking it clean, and sucking each of his testes inside your mouth.";
			say "     'Aaah... Yes...' Wukong groans. After a while, he slowly guides you up his maleness. You start opening your mouth, but he stops you at the last moment. 'No. Take your time. Let me enjoy.' You lick and slobber up and down the Monkey King's length, making sure that every square inch has been tended for. After receiving all sorts of attention for a good half-hour, the simian is ready to explode.";
			WaitLineBreak;
			say "     You did not even have to take all of it. You simply wrapped your lips around the kingly member's groin, and rolled your tongue around the exposed, sensitive flesh. This, combined with the continuous kneading of his scrotum by your hand, made Wukong suddenly howl loudly and cum hard. 'Aaah! Aaah! Aaaahn! Aaaaah...' Cum pulsated inside your mouth, and you made sure to drink every drop of it, savoring the salty taste on your tongue.";
			say "     Extenuated, Wukong slumps back on his throne, and closes his eyes. 'Very, very well done. You should consider staying here and becoming part of my court. To spend the days with me here, instead of a wild goose chase.' You politely thanks Wukong for his offer, but feel obliged to refuse for the moment, and take your leave.";
			infect "Monkey";
		else:
			LineBreak;
			say "     Wukong removes his feet when he hears your refusal. 'Humph! Such an attitude. Did you expect [italic type]me[roman type], the great Monkey King, to debase himself for [italic type]your[roman type] enjoyment? Get out of my sight.'";

to say WukongTrainingTrain:
	say "     'Good, good,' Hanu says. 'Since it is rare that we have two students, allow me to make this training more, shall we say, competitive. Please undress yourself.' You [SelfStripCrotch], then you [SelfStripChest], while Hanu comes back with a small pot filled with a creamy substance. 'Stay still,' the brown monkey orders you, as he picks a good dose of it, and suddenly [if player is herm]rubs it on your cock[smn], then runs a finger on and in your cunt[sfn]. Your loins instantly feel as if they were on fire. Your cock[smn] harden[smv], and your cunt[sfn] turn[sfv] dripping wet[else if player is male]rubs it on your cock[smn]. Your loins instantly feel as if they were on fire. Your cock[smn] harden[smv][else]Your loins instantly feel as if they were on fire. Your cunt[sfn] turn[sfv] dripping wet[end if] Your crotch is itching. Itching very bad. But Hanu prevents you from touching it. 'No. Calm yourself. Focus.'";
	say "     Hanu quickly rubs the lotion on Wukong as well, who ends up in the same state as you. 'Both of you, lie down,' he asks, before he sits between the both of you. Then, he presents to each of you a feet. 'This will be our training. Tend to my feet. The first one who reaches for their crotch loses, and the winner will be allowed to rub his sex with the loser's body. Now, do not lose any time. Begin.'";
	say "     You grab the foot which hovers in front of your face, and starts massaging the soft, dark brown sole. There is a sort of pleasant, soft erotic feeling in playing with someone else's foot, albeit it does not do much to make you forget the itching between your thighs. Trying to use any resource you can to focus on the master's foot, you start giving it licks. Your tongue becomes bolder and bolder, and you find yourself playing with Hanu's toes. From the grunts he emits, the old monkey seems very satisfied with your job, and probably Wukong's as well, as you see the younger monkey imitating you.";
	WaitLineBreak;
	if (humanity of Wukong is 0 and libido of player < 75) or (humanity of Wukong is 1 and libido of player < 50) or (humanity of Wukong >= 2 and libido of player < 25):
		say "     You take big breaths, basking in the smell and the taste of Hanu's feet in order to forget the rising need to touch yourself rises quickly in you. You manage to hold on, while Wukong breathes more and more heavily, and loses focus on what he is doing. Suddenly, he lets go of Hanu's foot, and hurriedly begins to masturbate furiously.";
		say "     You raise your head, and see Hanu stop a chronometer. 'You are still behind our friend, Wukong,' you hear Hanu ponder. 'You won our wager, so have your little fun. Remember not to rub yourself where I applied the balm on Wukong.' You definitely need the release, so you decide to grab Wukong's feet. You lewdly grind the oblivious monkey's limbs on your sex, to alleviate the unrelenting urge.";
		say "     [if player is herm]You make sure to alternate the feet between your cock[smn] and your cunt[sfn][else if player is male]You rub your cock[smn] against Wukong's soft soles[else]You rub your cunt[sfn] against Wukong's soft sole[end if].They are so soft, that your arousal quickly catches up with your training partners. The both of you cum at the same time, and while his cum paints his furry chest, your own fluids cover his soles, and dribble down his legs. Extenuated, you lean back, while a groggy Wukong pants on his back. Near you, Hanu is observing the scene, sitting in the lotus position. 'Ah, two vigorous youngsters. We should redo this sort of training, the next time you are around.'";
	else:
		say "     However, the itching and the need to touch yourself rises quickly in you. You attempt to still your breathing, but all you manage to do is pant heavily, and arouse yourself even further. Wukong, while clumsy by himself, manages to hold on longer than you. Feeling as if you are going crazy, you suddenly let go of Hanu's foot, and hurriedly [if player is herm]grab your cock with one hand, while plunging the fingers of your other hand in your pussy[else if player is male]grab your cock with one hand[else]plunge the fingers of your other hand in your pussy[end if] and start masturbating furiously.";
		say "     You barely notice the beep of a chronometer. 'You held longer than I thought,' you hear Hanu ponder. 'Wukong, you won our wager, so have your little fun. Remember not to rub yourself where I applied the balm on our friend.' [if breast size of player > 0]Wukong literally jumps in place, and straddles himself on your chest. His hands grab your [breast size desc of player] breasts and launches his dick in the tight space he created. He pistons his hips fast, as fast as the itching urges him to be. You let him do, too occupied by your own masturbation[else]Wukong grabs your legs, and squeezes your thighs together. Then he humps the tight space fast, as fast as the itching urges him to be. You let him do, too occupied by your own masturbation[end if].";
		say "     The both of you cum at the same time, and his sperm quickly joins yours on your body. Extenuated, Wukong rolls on the side, while you are left on your back, gasping for air. Near you, Hanu is observing the scene, sitting in the lotus position. 'Ah, two vigorous youngsters. We should redo this sort of training, the next time you are around.'";

to say WukongTrainingAssist:
	say "     'Very good. In this case, follow me. You too, Wukong.'";
	say "     '[if humanity of Wukong is 0]Like Hell I- Gaaargh[else if humanity of Wukong is 1]Not again, come o-Nnnng[else]Hey, I never agreed to let someone el-Gkkk[end if]!' A shock from Wukong's collar shuts down the young monkey's protests.";
	say "     'Hush, you. Stand over here!' Hanu gives you some ropes, and instructs you to tie some knots around Wukong's shibari with them. After you are done, he passes the ropes inside rings on the floor and ceiling, and pulls. Wukong finds himself pulled a couple of inches into the air, in a position which looked like he was stuck mid-flight. His arms were tied behind his back with his tail; one leg was left free, but the other was pulled all the way back, and tied to Wukong's collarbone.";
	say "     Hanu hands you a pot of lotion. Following his lead, you start to run your hands all over Wukong's body. He makes you focus on the younger simian's feet, while he slowly tugs on his nipples. 'O-Ohh...' Wukong wheezes.";
	say "     'We have worked on this position,' Hanu chastises. 'Work on your breathing.' After that, Hanu hands you a small pouch, with a rope hanging from it; the pouch feels a little heavy. 'Tie it around his scrotum,' he instructs you.";
	say "     'N-No, not that,' Wukong pleads.";
	say "     'Hush, you. Focus,' the older monkey retorts, while his oily hand grabs Wukong's cock and starts massaging it.";
	say "     You roll the ropes around Wukong ballsack, tie them, and let the pouch fall down. Gravity pulls on the tied monkey's balls. 'Nnnf!' His cock is now rock hard, and his ordeal if far from over. Hanu and you spend the good part of an hour manhandling Wukong, pulling his shaft and his balls, giving them slaps, and at certain occasions adding weight. And Wukong was not yet granted release. Then, Hanu slips down two fingers inside his student's ass, who immediately loses continence as the older monkey presses on his prostate. 'Aah! Aah... Nnnn!'";
	say "     'Hold it! Control your breath!'";
	say "     'P-Please untie these weights. Please, I'm about to... Aah...'";
	say "     'I said hold it!'";
	WaitLineBreak;
	if humanity of Wukong < 2:
		say "     'Aaah! Aaah!' Wukong's body tenses up, coming hard from the prostate massage. But with his balls stretched and tied, only a few drops of fluid manage to escape from his spasming sex. Wukong grunts of frustration through his ruined orgasm. You can't help but wonder if that was the wall point of the lesson. 'I guess that, at one point, you will learn the lesson. Your breathing was all over the place!'";
		say "     'D-Damn you, old man,' Wukong replies. For all answer, Hanu grabbed Wukong's cock and stroke him, until the young monkey howled from the over-stimulation.";
	else:
		say "     Wukong grits his teeth and takes big breaths. Pre liberally dribbles from his penis, but he manages to hold on, even with Hanu's expert prostate massage. After a moment, the older monkey sighs and, with a smile, asks you remove the weights dragging his student's balls down. You execute yourself, then Hanu inserts a third finger. 'Stroke him. Do not stop until he is done. He is worthy a good reward, this time.' You grab Wukong's cock, and barely makes a few moves before cum erupts out of his member, like a volcano. 'Aaah! AAah! Aaaaaah!' Your hand gets covered with sperm, as well as the floor below, while Wukong's orgasm goes on for long, long seconds.";
	say "     Eventually, Wukong is let down of his suspension, and slowly walked away, to rest in a corner. 'Thank you for helping me,' Hanu says as he turns towards you. 'Having an assistant does make things easier.'";

Monkey King ends here.
