Version 1 of Nala by CrimsonAsh begins here.
[Version 1 - New file]
[Version 1.1 - Character relocation - Luneth]

[ HP of Nala                                           ]
[  0: never met                                        ]
[  1: first trick played                               ]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Harmless Joke	"Harmless Joke"

Harmless Joke is a situation.
The sarea of Harmless Joke is "Nowhere".

when play begins:
	add Harmless Joke to badspots of girl;
	add Harmless Joke to badspots of hellspawn;

instead of navigating Grey Abbey Library while (Harmless Joke is active and Harmless Joke is not resolved and HP of Nala is 0 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: First Nala Trick on the player - HP of Nala: [HP of Nala][line break]";
	say "     Walking up to the entrance the library, you reach to open the door leading in. But as you pull it open, you are suddenly drenched in cold water from a bucket set up over the door, soaking you through to the skin. You let out a loud yelp in surprise and start shivering while the bucket makes a hell of a racket as it clatters onto the floor. The whole situation is accompanied by a high-pitched giggling coming from somewhere inside the library. Glancing in that direction, you spot a small figure dart out of a partially opened window and out into the city. Rushing over, you look out after what must have been the trickster who set this trap for you, yet find them nowhere in sight. Grunting and cursing, you reluctantly accept your defeat and head down to the bunker to dry yourself off, now far more weary of doorways.";
	now HP of Nala is 1; [flag set to remember the progress]
	now Harmless Joke is resolved; [event won't happen again]

Table of GameEventIDs (continued)
Object	Name
Fool Me Once	"Fool Me Once"

Fool Me Once is a situation.
The sarea of Fool Me Once is "Nowhere".

when play begins:
	add Fool Me Once to badspots of girl;
	add Fool Me Once to badspots of hellspawn;

after resting while (Fool Me Once is active and Fool Me Once is not resolved and player is in Bunker and HP of Nala is 1):
	say "     Deciding to rest for the next few hours you lay down, closing your eyes slowly drifting to sleep. You dream of your life before the nanobots and the apocalypse, what little you can remember at least. Of previous friends, your old job and your old worries. Suddenly jolted out of your dream by a barrage of ringing and beeping. You nearly launch yourself from your bedding as you swivel around the blaringly loud room for the source of the noises. Set around the room are nearly a dozen alarm clocks, all at full volume and shrieking bells at you. You stand up and stumble around the room confused but intent on ending to the obnoxious noise. Shutting off a few and simply slamming others onto the floor. Soon enough the room is quiet, but the ringing is quickly replaced by a familiar feminine laughter, looking to the doorway you finally get a good look at your prankster.";
	say "     The girl before you is clearly demonic in nature, she has light red, almost pink skin and only stands a little over two and a half feet tall. The diminutive imp girl flutters around on her small bat-like wings and clawed feet, her hands ending in sharp purple painted nails. The little demon has adorable facial features with a cute button nose, big glossy eyes with violet pupils and crimson hair tied neatly in a pony-tail. Her scorpion-like tail whips around behind her as she moves, the stinger set at the end dripping an unknown yet sweet-smelling liquid. She sports a set of black lingerie seemingly made to fit her small size and delicate curves, her lacy bra filling perfectly out her perky B-cup breasts. She gives you a toothy smile as you examine her, revealing pearly white, pointed teeth.";
	WaitLineBreak;
	say "     She lets out another laugh before speaking, 'Hehe you looked like a chicken with its head cut off, running around like mad!' She speaks in a slightly high-pitched yet oddly melodic voice before cracking down and laughing madly at her own prank before she turns and flees at a remarkable speed. Her small wings dart her down the hall and out of the bunker before you can fully register what just happened. You still try to rush after the little runt but she's long gone, her laughter still ringing in the air. Grunting in frustration you head back down to the bunker planning on using what time you have left of your rest productively to end this nuisance. You form a plan to feign sleep next time and catch the imp surprised.";
	now HP of Nala is 2; [flag set to remember the progress]
	now Fool Me Once is resolved; [won't happen again]

Table of GameEventIDs (continued)
Object	Name
Fool Me Twice	"Fool Me Twice"

Fool Me Twice is a situation.
The sarea of Fool Me Twice is "Nowhere".

when play begins:
	add Fool Me Twice to badspots of girl;
	add Fool Me Twice to badspots of hellspawn;

after resting while (Fool Me Twice is active and Fool Me Twice is not resolved and player is in Bunker and HP of Nala is 2):
	say "     Deciding to set your trap as ready to feign rest, you position a blanket across your body to use as a net and close your eyes. You lay waiting for what feels like an hour, just as you're about to give up you hear what sounds like the flapping lightly echoing down the hall. Readying yourself and cracking an eye open you spot the same imp prankster carrying a bucket of suspicious intent. As she makes her way over to your bedside you leap into action, gripping the edge of the blanket and throwing it over her before leaping atop it. You hear a squeal of surprise as the bucket she was holding drops to the floor and the grub-worms inside spill out onto the ground. You pin the struggling bundle of imp and blanket to the floor as she squeals and whines in protest. 'Let me go you big bully!' she yells as you have her fully trapped, her stinger-tipped tail pinned under one of your limbs as it struggles and twists to free itself.";
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Have a serious word with the imp about the tricks.";
	say "     [link](2)[as]2[end link] - Fuck her!";
	say "     [link](3)[as]3[end link] - Kick her out! Enough with these stupid tricks.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to have a serious talk with Nala, [link]2[end link] to rape her or [link]3[end link] to kick her out.";
	if calcnumber is 1:
		LineBreak;
		say "[TalkNala]";
		now Resolution of Fool Me Twice is 1; [talked]
	else if calcnumber is 2:
		LineBreak;
		say "[RapeNala]";
		now Resolution of Fool Me Twice is 2; [fucked her]
	else:
		LineBreak;
		say "[KickNala]";
		now Resolution of Fool Me Twice is 3; [threw her out]
	now Fool Me Twice is resolved;

to say TalkNala:
	say "     Deciding against doing anything rash, you uncover her head so that you may safely speak face to face. She lets out a whimper and sigh before speaking up in an aggravated voice, 'Did you really have to be so rough, can't you take a joke?!' she complains. You explain that it wasn't very funny to you and glance down at the spilled bucket of worms to give a shudder. She huffs and moans but puts on a bright smile, 'The alarm one was pretty funny, chicken [if player is male]boy[else]girl[end if].' She giggles cutely and you can't help but smirk in return at her diminutive laugh. Her face brightens at your smile. 'Ah hah! See, it was funny,' she says, smiling widely and showing off pearly white fangs.";
	say "     She crosses her arms, pushing out her perky breasts. 'Now can you let me up big [if player is male]boy[else]girl[end if]?' she asks politely. 'I won't run, I promise.' Reluctantly, you get off her blanket swaddled form and help untangle her. After freeing her, she flaps her wings so that she's eye level with you. 'Thanks sweetie!' she says in a bubble voice. 'Although you did trap me in the first place, so only partial thanks.' She giggles to herself. 'I'm Nala by the by,' she says, putting her small clawed hand out to shake.";
	WaitLineBreak;
	say "     You grasp her soft hand and introduce yourself as well. 'Good to meet ya, friend!' she responds with glee before looking you up and down, only now taking in your form. 'Hehe maybe we should do this again, you pinning me down and such.' She covers her mouth with her clawed hand and laughs. 'I have some things to take care of but we should meet up again, you're nicer than most of these fools I play jokes on,' she announces before turning around and flapping out of the room. You have suspicions that these things she needs to take care are more pranks but you keep silent and watch her leave. Hearing echoing down the hall, she shouts, 'This is a real swell place you've got here friend. I think I'll be sticking around for a while!' Wait, what? Before you can object, she's off, out of the bunker and out of sight. This will prove interesting...";
	move Nala to Makeshift Rec Room;

to say RapeNala:
	if player is male:
		say "     You wrap her lower body and tail tightly in the blanket leaving only her struggling head and chest exposed before you. Removing what underclothes you have, you expose your [cock size desc of player] shaft for her viewing. Your captive lets out a 'Meep' in realization as you rest your member across her cheek. She wiggles against you but seeing as her arms and tail are firmly trapped she relents and stares up at you with reluctant acceptance. Stroking your member to hardness you hold it before her lips and warn her of and biting before bringing the tip to her lips. You see her face an image of reluctance but her lips quiver and wet themselves with need as she opens her mouth up to take in your tip. Suckling gently at your member you groan in pleasure as you feed more of your length into her cute mouth.";
		say "     Her long pointed tongue flaps and folds around your [cock size desc of player] shaft squeezing around it with enthusiastic pleasure. Reaching the back of her throat as her tongue works its magic you withdraw suddenly with whimpered protests from the girl below before pulling back, shoving as much as you can cram down her small tight throat. She lets out a surprised gag as she tries to adjust to your sudden throat invasion, her tongue rolling around your cock as her eyes close and her newly freed hands come up to grasp your thighs. Barely registering her freed limbs you groan as she eagerly sucks you off. She takes as much as you can give her, sucking and bobbing her head with glee until you explode in her throat.";
		WaitLineBreak;
		say "     You paint her mouth with seed and she swallows every drop not willing to let any of it spill out from her tightly gripped lips. Catching yourself from falling forward your testicles clench and unclench against the little imps chin as you sigh in pleasure relief. Before realizing it, the little imp has used her freed hands to shimmy herself free. She quickly bolts out of the room and down the hall before exiting the bunker. You could hardly care as you bask in your afterglow, deeming to let the little demon go free, knowing that she learned her lesson.";
	else if player is female:
		say "     You wrap her lower body and tail tightly in the blanket leaving only her struggling head and chest exposed before you. You remove what underclothes you have and expose your damp womanhood for her viewing. She lets out a 'Meep' in realization as you shove your sex down into her face. She wiggles against your wet lips but seeing as her arms and tail are firmly trapped she relents and stares up at you with reluctant acceptance. Withdrawing her tongue to flick across your lips you moan out in surprise as she thrusts into your tender love-hole with her slick muscle. Her tongue seems to form a point near its tip and is impossibly long as it ravishes your now soaking sex, reaching and wiggling places where no cock could. As she eats your cunt, you ride and move yourself against her soft mouth and grind your engorged clit against her button nose.";
		say "     The little imp suddenly pulls her tongue away and before you can reprimand her she thrusts her entire tongue into your juicy sex. Now seeming to get into the motions her tongue hits the very depths of your cervix before finding your sensitive G-spot and attacking it with brutal intent. Throwing your head back the demon grasps your thighs with newly freed hands and digs into your skin as she munches eagerly on your sex. Quickly brought to your peak by her magical tongue, you let out a wail of pleasure as you soak her entire face with your climax before catching yourself from falling backward. Before realizing it, the little imp has used her freed hands to shimmy herself free. She quickly bolts out of the room and down the hall before exiting the bunker. You could hardly care as you bask in your afterglow, deeming to let the little demon go free, knowing that she learned her lesson.";

to say KickNala:
	say "     You pick up the struggling bundle of imp and carry the yelling girl out of the bunker and library. As you reach outside you give the little ball of cloth a kick and watch it tumble and fall into the streets. The imp girl dazedly crawls out from under the blanket and gets to shaky feet as she looks your way with a pouty face before taking off to the sky. You have a feeling that's the last you'll see of the little troublemaker.";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Nala	"Nala"

Nala is a woman. The HP of Nala is usually 0.
The description of Nala is "[NalaDesc]".
The conversation of Nala is { "<This is nothing but a placeholder!>" }.
The scent of Nala is "     Nala smells like roses with a small hint of brimstone oddly enough. She gives you a lewd smile as you inhale her fragrance.";

to say NalaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Nala] <- DEBUG[line break]";
	say "     The diminutive imp girl before you is clearly demonic in nature, with has light red, almost pink skin and only stands a little over two and a half feet tall. She flutters around on her small bat-like wings and clawed feet, her hands ending in sharp purple-painted nails. The little demon has adorable facial features with a cute button nose, big glossy eyes with violet pupils and crimson hair tied neatly in a pony-tail. Her scorpion-like tail whips around behind her as she moves, the stinger set at the end dripping an unknown yet sweet-smelling liquid. She sports a set of black lingerie seemingly made to fit her small size and delicate curves, her lacy bra filling perfectly out her perky B-cup breasts. She gives you a toothy smile as you examine her, revealing pearly white, pointed teeth.";

instead of conversing the Nala:
	if libido of Nala is 0: [never talked before]
		say "     You approach the library's new resident Nala, she has set up what seems to be an old fluffy cat bed in the corner to rest in. When you approach her she beams and flaps her wings, hovering to address you at eye level. 'Wow, big place you got here!' she chirps, flying down to sit her curvaceous hips on your shoulder. 'Four times bigger than my last place. Then again, my last place was under a giant's bosom,' she finishes, bursting into a snicker that you can't help but smile at.";
		now libido of Nala is 1;
	else if libido of Nala is 1:
		say "     You walk over to Nala who... was just here a second ago. You see her small cat bed but not the little imp. Turning around to look elsewhere you walk right into a small pair of soft lips. Wrapping her hands around your head she presses herself right into you, thrusting little tongue against your lips.";
		say "     [bold type]How do you react?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Kiss her back.";
		say "     [link](2)[as]2[end link] - Fuck her!";
		say "     [link](3)[as]3[end link] - Reject her advances.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to kiss her back, [link]2[end link] to fuck her or [link]3[end link] to reject the imp's advances.";
		if calcnumber is 1:
			LineBreak;
			say "[NalaKiss]";
		else if calcnumber is 2:
			LineBreak;
			say "[NalaFuck]";
		else:
			LineBreak;
			say "     You quickly back off much to the dismay of the imp girls whining. She looks at you surprised with slightly flushed cheeks. 'Oh! I thought umm... Sorry thought you'd be up for some fun.' She grabs her right arm, looking sheepishly at the ground before flying back over to her bed, avoiding eye contact with you";
		now libido of Nala is 2;
	else if libido of Nala is 2:
		say "     Approaching Nala she eagerly gets to her feet, and then flaps her wings to greet you face to face. 'Heya big [if player is male]boy[else]girl[end if], how goes things?' You ask her if she could tell you more about her. 'Me?' she asks, slightly surprised. 'Are you sure?' You nod and tell her you would like to know more about your friend with benefits. She leans back and smiles. 'Well aren't you sweet, but I'm afraid I don't have much of a past, at least not one I remember. I... can't remember much before all this went down, except my name and that I love comedy and sex, sometimes both at the same time. Aside from that I don't have much going for me, just trying to eek out a living and have some fun doing it.' You nod again and thank Nala for the talk to which she gives you a toothy smile and a thumbs up before flying back to where she was.";
		now libido of Nala is 3;
	else if libido of Nala > 2:
		say "     You stride up to Nala and sit down next to her, deciding to rest for a moment and see if you can't spark up a conversation. You ask her how she's been. Giving you a smile she answers, 'Everything's been pretty swell, especially since I moved in here. You've been fun and this is a great spot to lay low at.' Lay low? You query her. She grabs her shoulder and looks slightly sheepish. 'Weeeell, you know me and how I love my mischief. Well, some people like to hold grudges.' She chuckles to herself. 'Not like you, buddy. You're one of the good ones,' she finishes, slugging you on the shoulder with surprising strength. You rest for a little while and talk idly with Nala before getting up and continuing onwards.";

to say NalaKiss:
	if player is male:
		say "     You relent and press your lips back against hers, moving your hand up to place on the back of her head. You open your mouth and allow her tongue entrance as you meet hers halfway with your own. You two tumble with tongues and frisk with hands for a little while longer before she pulls back, slightly out of breath. 'Mmm, that was a good warm up big guy. But it's time to get... serious.' She lowers herself to your groin and pulls down any clothes you have in the way. She takes your shaft in her palms and smiles brightly, not bad hun, let's see what your friend can do. She finishes by running an unnaturally long tongue along the base of your cock, reaching the tip she tickles your glands before closing her lips around your tip. She begins suckling on your cock before taking in a few more inches. Slowly easing back and forth from the tip of your dong and then taking in as much as she can swallow before retracting.";
		say "     Building up a cycle she's soon bobbing back and forth sucking your cock expertly, using her tongue to flap and caress along your shaft. You grab the back of her head to help her along as she braces herself against your abdomen. She makes lewd sucking noises and her long stinger tipped tail wraps around your back. Quick approaching your peak that very same tail pierces your skin just enough to draw a drop of blood. Before you can react the little blowjob imp speeds up rapidly and whatever she stung you with takes effect as your entire body is overcome with sensitivity. The pleasure you're receiving serenely triples and your mind goes hazel as your own orgasm explodes outward. Leaving only the tip in her mouth the slutty imp drinks every drop of your come, sucking it down with abloom. You stumble back and slide down a nearby wall, unable to stand due to the sensations. Growing increasingly woozy you watch as she swallows the remainder of your jism.";
		WaitLineBreak;
		say "     You thank her for the service but ask about her tail and what it did to you. 'Oh! Don't worry, it's nothing permanent. Just a little defense mechanism we imp girls have.' She gives you a telling smile before speaking again. 'It's also great for mind exploding orgasms, huh?' She finishes by making a pretend explosion with her hands accompanied by sounds. She flies over to where her bed is and takes out a small pipe and begins smoking from it before addressing you again. 'This was fun. Well, of course it was - I knew it would be,' she corrects herself. 'Let's do it again sometime, and next time you're on bottom.' She points downward before leaning back and taking a few drags from her pipe. You shudder and turn to walk away.";
	else if player is female:
		say "     You relent and press your lips back against hers, moving your hand up to place on the back of her head. You open your mouth and allow her tongue entrance as you meet hers halfway with your own. You two tumble with tongues and frisk with hands for a little while longer before she pulls back, slightly out of breath. 'Mmm, that was a good warm up big girl. But it's time to get... serious,' she says while she flies around you and stops to examine your backside. She presses clawed hands against your ass, spreading your cheeks and yanking down any obstructions in her way. You gasp as she slaps your cheeks a few times, raining light smacks on your tender bottom before unceremoniously shoving her face in between your cheeks.";
		say "     Gasping again as the imps long tongue shoots from her mouth to flick over your anus before plunging into your damp womanhood. You push back against the imps invading face as the reddish-skinned demon motorboats your hindquarters in an exaggerated fashion. Squeezing your cheeks and enthusiastically eating you out the imp swiftly has you approaching orgasm. When you reach your peak Nala buries ever inch of her face she can manage into your ass cheeks and you feel a light sting on your lower back. Nala says something that vibrates through your body but it's unintelligible. You turn to see her tail withdrawing from your back as a sudden burst of pleasure overloads you. You collapse onto the floor, ass still raised in the air with imp face and tongue still working it as an unnaturally powerful orgasm hits you.";
		WaitLineBreak;
		say "     Womanly juices soak the demon girl's face as you moan and writhe under her movements. You find yourself spasming in sensitivity as you ride out your climax. In the afterglow of your orgasm you find everything slowly growing dark before realizing you're shutting your eyes. Some time later you awake, still in your state of undress but now with a small warm figure resting on your backside. Turning your head you find Nala has too fallen asleep, using your bottom as cushions to rest on. You lay there for a while longer, feeling exhausted but incredibly satisfied before you turn to shake your little imp awake. She mumbles something about not wanting to get about and squeezes your bottom. After more pestering the both of you manage to get to get up and back in a state of decency.";
		say "     You thank her for the service but ask about her tail and what it did to you. 'Oh! Don't worry, it's nothing permanent. Just a little defense mechanism we imp girls have.' She gives you a telling smile before speaking again. 'It's also great for mind exploding orgasms, huh?' She finishes by making a pretend explosion with her hands accompanied by sounds. She flies over to where her bed is and takes out a small pipe and begins smoking from it before addressing you again. 'This was fun. Well, of course it was - I knew it would be,' she corrects herself. 'Let's do it again sometime, and next time you're on bottom.' She points downward before leaning back and taking a few drags from her pipe. You shudder and turn to walk away.";

to say NalaFuck:
	if player is male:
		say "     You stride up to the bubbly imp girl and ask if she's in the mood for some fun. She gives you a giggle and places a hand over her mouth. 'Feeling a little randy so you come to little ol['] me huh? Well lucky for you I'm always down for a little randiness.' She flaps her wings and darts in your direction, slamming like a heavy pillow into your head locking lips with you and throwing her arms around your head. She thrusts her tongue into your mouth, her long demonic tongue wrapping with your own. Her stinger-tipped tail wraps around your midriff as her small yet surprisingly strong body pushes your willing form against a nearby wall. After a few moments of making out with the little she-devil she pulls back and smiles brightly. 'Mmm, you're going to take care of me aren't you big boy?' She slowly pushes you down unto the floor below and straddles your waist.";
		say "     Releasing your shaft and gripping it in her paws you can't help but bring up the concern of Nala's small size. She giggles sweetly, 'Don't you worry about that hun, I'm kind of a... one size fits all kind of imp.' She flashes you a smile before removing her lacy panties while stroking your [cock of player] shaft. 'Oooh such a nice big boy you have here, and it's all for me?' She laughs to herself, wrapping her tail around one of your legs. She begins to grind her small body against your fully erect phallus, licking her lavish lips as she does so. Eventually she leans forward to place your length in between her firm ass cheeks, hot dogging you between her soft buns. She gives you a wink as she lifts herself up and impales herself on your stiff cock. You let out a groan and she lets out a squeal of delight as she plants herself down.";
		WaitLineBreak;
		say "     She moves a little in a rotation motion giving you lewd looks and caressing your chest as she does. 'Mmm oh yeah, that's the good stuff stud.' You can feel a light prick on your leg as her tail injects its overpowering aphrodisiac into your body. 'Hope you don't mind.' She gives another wink and before you can retort she moves up, using her wings to glide up your cock and falling back down nearly hilting herself on top of you. You take two handfuls of her small yet curvaceous and firm ass cheeks as she begins to bounce up and down on your cock. The imp girl's venom begins to take effect as your mind goes fuzzy and your organ stiffens and throbs painfully inside Nala's hot sex. Overtaken with primal lust you thrust up to meet her drops and the sound of flesh on flesh can be heard throughout the library. Moaning loudly at your movements Nala's long pointed tongue lolls out of her mouth as she grips onto your shoulders for dear life.";
		say "     You can feel yourself rapidly approaching orgasm and you can feel the same for your lover, if her twitch cunt is anything to go by. Seizing her breasts you bring her down to lay against you as you take control, thrusting with frenzied lust into her as you reach your peak. Clamping down around your thrusting length a torrent of girl-cum follows and squirts around you. You follows moments after her exploding with intense pleasure, only amplified three-fold by her tail venom. You cum what feels like an unnatural amount of jism into her clamping sex. Jet after jet of thick cum flows into her unholy body as you nearly pass out from the intensity. Coming down from your coupling, you pull your length from her well-fucked depths, only to find that she has passed out against your chest. Smiling up at the cute little imp, you pick her up and place her on her bed before continuing on your way, a slight swagger in your step.";
	else if player is female:
		say "     You stride up to the bubbly imp girl and ask if she's in the mood for some fun. She gives you a giggle and places a hand over her mouth. 'Feeling a little randy, so you come to little ol['] me, huh? Well, lucky for you, I'm always down for a little randiness.' She flaps her wings and darts in your direction, slamming like a heavy pillow into your head, locking lips with you and throwing her arms around your head. She thrusts her tongue into your mouth, her long, demonic tongue wrapping with your own. Her stinger-tipped tail wraps around your midriff as her small yet surprisingly strong body pushes your willing form against a nearby wall. After a few moments of making out with the little she-devil she pulls back and smiles brightly. 'Mmm, you're going to take care of me aren't you big girl?' She slowly pushes you down unto the floor below and straddles your head.";
		say "     Gazing down at you she removes her lacy panties and fingers her sex above your face. She smells very sweet, a bit like apples with an intense heat that warms your face. She fumbles with her tail, pulling it to her face to give it a kiss. Before your eyes her tail stinger shifts into a red phallic shape. 'There we go, get to licking big girl I'll do the rest!' she exclaims as she drops the rest of her weight down onto your face. You thrust your tongue upward into her steaming hot cauldron sex, slathering her crotch in your saliva. She lets out a sweet little yelp and grips at your breasts to keep herself steady. She twists your nipples and humps downward at your thrusting tongue. Gaining a steady rhythm of her humping downward and you licking at her tasty juices you can feel her long tail caress lower down your body. It moves across your thighs and the large nearly ten inch phallus rubs against your womanhood.";
		WaitLineBreak;
		say "     Rubbing her tail penis into your damp lips she coat it in your excitement before pressing into your tunnel. Moaning into her humping thighs as you lick, Nala suddenly thrusts her tail phallus, fully engulfing it in your folds. You moan your pleasure into her burning sex as she continues to thrust into your own. You can feel yourself swiftly approaching climax as you feel the imp speedy her thrusts up. Trying to keep up, you redouble your efforts and suck on her clit, fingering her soaked crotch as you do. Finally Nala hilts her tail cock in your womanhood and you feel yourself explode in climatic bliss. Your mind goes foggy but you manage to stay latched onto Nala's crotch as you ride out your orgasm. Her tail doesn't let up, continues to thrust in and out of your spasming crotch. The little imp follows shortly after, clamping down around your tongue, her pink lips spilling a torrent of tasty over your face as she climaxes.";
		say "     Nala continues to hump against you and you can hear her giggle, it vibrating through her body. She slows her movement staring down at your soaked mouth before speaking. 'Hehe, good job you pussy-licker you,' she says, patting the top of your head. She gets off your torso and lifts her clawed hand to help you up. You take it and get to your wobbly feet, trickles of girl-cum still running down your legs. Nala gives you a slap on the bottom and flies back over to her little bed leaving you to your own devices.";

instead of fucking the Nala:
	if (lastfuck of Nala - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Sorry buddy, I know I'm demonic and all, but I got an agenda to keep. I'm a busy bee, but maybe come find me later,' she finishes with a wink.";
	else: [ready for sex]
		say "     As you walk up to Nala with your proposition she clasps her hands together 'Ooh, I thought you'd never ask sweetie.'";
		wait for any key;
		say "[NalaSexMenu]";

to say NalaSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Nala suck you off";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Eat Nala out";
		now sortorder entry is 2;
		now description entry is "Lap at the imp's pussy";
	[]
	if player is male: [possibly add on a "and cock length of player < X" if you wanna cap her capacity somewhere]
		choose a blank row in table of fucking options;
		now title entry is "Fuck Nala";
		now sortorder entry is 3;
		now description entry is "Slide your cock into the bubbly imp";
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
					say "[NalaSex1]";
				if (nam is "Eat Nala out"):
					say "[NalaSex2]";
				if (nam is "Fuck Nala"):
					say "[NalaSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the imp, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say NalaSex1: [oral on the player]
	say "     You press your lips against hers, moving your hand up to place on the back of her head. You open your mouth and allow her tongue entrance as you meet hers halfway with your own. You two tumble with tongues and frisk with hands for a little while longer before she pulls back, slightly out of breath. 'Mmm, that was a good warm up big guy. But it's time to get... serious.' She lowers herself to your groin and pulls down any clothes you have in the way. She takes your shaft in her palms and smiles brightly, not bad hun, let's see what your friend can do. She finishes by running an unnaturally long tongue along the base of your cock, reaching the tip she tickles your glands before closing her lips around your tip. She begins suckling on your cock before taking in a few more inches.";
	say "     Slowly easing back and forth from the tip of your dong and then taking in as much as she can swallow before retracting. Building up a cycle she's soon bobbing back and forth sucking your cock expertly, using her tongue to flap and caress along your shaft. You grab the back of her head to help her along as she braces herself against your abdomen. She makes lewd sucking noises and her long stinger tipped tail wraps around your back. Quick approaching your peak that very same tail pierces your skin just enough to draw a drop of blood. Before you can react the little blowjob imp speeds up rapidly and whatever she stung you with takes effect as your entire body is overcome with sensitivity.";
	WaitLineBreak;
	say "     The pleasure you're receiving serenely triples and your mind goes hazy as your own orgasm explodes outward. Leaving only the tip in her mouth the slutty imp drinks every drop of your come, sucking it down with abloom. You stumble back and slide down a nearby wall, unable to stand due to the sensations. Growing increasingly woozy you watch as she swallows the remainder of your jism. You thank her for the service but ask about her tail and what it did to you.";
	say "     She gives you a reassuring grin, 'Oh! Don't worry, it's nothing permanent. Just a little defense mechanism we imp girls have.' She gives you a telling smile before speaking again. 'It's also great for mind exploding orgasms, huh?' She finishes by making a pretend explosion with her hands accompanied by sounds. She flies over to where her bed is and takes out a small pipe and begins smoking from it before addressing you again. 'This was fun. Well, of course it was - I knew it would be,' she corrects herself. 'Let's do it again sometime, and next time you're on bottom.' She points downward before leaning back and taking a few drags from her pipe. You shudder and turn to walk away.";

to say NalaSex2: [oral on Nala]
	say "     You stride up to the bubbly imp girl and ask if she's in the mood for some fun. She gives you a giggle and places a hand over her mouth. 'Feeling a little randy so you come to little ol' me huh? Well lucky for you I'm always down for a little randiness.' She flaps her wings and darts in your direction, slamming like a heavy pillow into your head locking lips with you and throwing her arms around your head. She thrusts her tongue into your mouth, her long demonic tongue wrapping with your own. Her stinger-tipped tail wraps around your midriff as her small yet surprisingly strong body pushes your willing form against a nearby wall. After a few moments of making out with the little she-devil she pulls back and smiles brightly. 'Mmm, you're going to take care of me aren't you lover?' She slowly pushes you down unto the floor below and straddles your head.";
	say "     Gazing down at you she removes her lacy panties and fingers her sex above your face. She smells very sweet, a bit like apples with an intense heat that warms your face. She fumbles with her tail, pulling it to her face to give it a kiss. Before your eyes her tail stinger shifts into a red phallic shape. 'There we go, get to licking lover! I'll do the rest!' she exclaims as she drops the rest of her weight down onto your face. You thrust your tongue upward into her steaming hot cauldron sex, slathering her crotch in your saliva. She lets out a sweet little yelp and grips at your breasts to keep herself steady. She twists your nipples and humps downward at your thrusting tongue. Gaining a steady rhythm of her humping downward and you licking at her tasty juices you can feel her long tail caress lower down your body.";
	WaitLineBreak;
	say "     It moves across your thighs and the large nearly ten inch phallus rubs against your womanhood. Rubbing her tail penis into your damp lips she coats it in your excitement before pressing into your tunnel. Moaning into her humping thighs as you lick, Nala suddenly thrusts her tail phallus, fully engulfing it in your folds. You moan your pleasure into her burning sex as she continues to thrust into your own. You can feel yourself swiftly approaching climax as you feel the imp speedy her thrusts up. Trying to keep up, you redouble your efforts and suck on her clit, fingering her soaked crotch as you do. Finally Nala hilts her tail cock in your womanhood and you feel yourself explode in climatic bliss.";
	say "     Your mind goes foggy but you manage to stay latched onto Nala's crotch as you ride out your orgasm, her tail doesn't let up and continues to thrust in and out of your spasming crotch. The little imp follows shortly after, clamping down around your tongue, her pink lips shoot forth a torrent of tasty climax to cover your face. Nala continues to hump against you and you can hear her giggle, it vibrating through her body. She slows her movement staring down at your soaked mouth before speaking. 'Hehe, good job you pussy licker you,' she says, patting the top of your head. She gets off your torso and lifts her clawed hand to help you up. You take it and get to your wobbly feet, trickles of girl-cum still running down your legs. Nala gives you a slap on the bottom and flies back over to her little bed leaving you to your own devices.";

to say NalaSex3: [Nala fucked]
	say "     You stride up to the bubbly imp girl and ask if she's in the mood for some fun. She gives you a giggle and places a hand over her mouth. 'Feeling a little randy so you come to little ol['] me huh? Well lucky for you I'm always down for a little randiness.' She flaps her wings and darts in your direction, slamming like a heavy pillow into your head locking lips with you and throwing her arms around your head. She thrusts her tongue into your mouth, her long demonic tongue wrapping with your own. Her stinger-tipped tail wraps around your midriff as her small yet surprisingly strong body pushes your willing form against a nearby wall. After a few moments of making out with the little she-devil she pulls back and smiles brightly. 'Mmm, you're going to take care of me aren't you big boy?' She slowly pushes you down unto the floor below and straddles your waist.";
	say "     Releasing your shaft and gripping it in her paws you can't help but bring up the concern of Nala's small size. She giggles sweetly, 'Don't you worry about that hun, I'm kind of a... one size fits all kind of imp.' She flashes you a smile before removing her lacy panties while stroking your [cock size desc of player] cock. 'Oooh, such a nice friend you have here, and it's all for me?' She laughs to herself, wrapping her tail around one of your legs. She begins to grind her small body against your fully erect phallus, licking her lavish lips as she does so. Eventually she leans forward to place your length in between her firm ass cheeks, hot dogging you between her soft buns. She gives you a wink as she lifts herself up and impales herself on your stiff cock. You let out a groan and she lets out a squeal of delight as she plants herself down.";
	WaitLineBreak;
	say "     The imp moves in a rotation motion giving you lewd looks and caressing your chest as she does. 'Mmm oh yeah, that's the good stuff stud.' You can feel a light prick on your leg as her tail injects its overpowering aphrodisiac into your body. 'Hope you don't mind.' She gives another wink and before you can retort she moves up, using her wings to glide up your cock and falling back down nearly hilting herself on top of you. You take two handfuls of her small yet curvaceous and firm ass cheeks as she begins to bounce up and down on your cock. The imp girl's venom begins to take effect as your mind goes fuzzy and your organ stiffens and throbs painfully inside Nala's hot sex. Overtaken with primal lust you thrust up to meet her drops and the sound of flesh on flesh can be heard throughout the library.";
	say "     Moaning loudly Nala's long pointed tongue lolls out of her mouth while she grips onto your shoulders. You can feel yourself rapidly approaching orgasm and so is Nala if her twitching cunt is anything to go by. Thrusting with frenzied lust into her you reach your peak. Clamping down around your thrusting length a torrent of girl-cum follows and squirts out around your cock. You follows moments after, exploding with intense pleasure, only amplified three-fold by her tail venom. You cum what feels like an unnatural amount of jism into her clamping sex as you nearly pass out from the intensity. Coming down from your coupling, you pull your length from her well-fucked depths, only to find that she has passed out against your chest. Smiling at the cute imp, you pick her up and place her on her bed before continuing on your way.";

Nala ends here.
