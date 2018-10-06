Version 1 of Savina by Kurainyx begins here.
[ Version 1.0 - Created Savina - Kurainyx ]
[ Version 1.1 - Added variant for Savina's victims and a hypnosis/coiling sex scene - Kurainyx ]
[Version 2 - Added missing scene for running away from Savina, two new sex scenes, and two vore endings - Kurainyx]

"Adds a giant female snake NPC to Flexible Survival"

[  HP of Savina                                            ]
[  0: Never met                                            ]
[  1: Player is chased away from camp by gargoyle          ]
[  2: Savina becomes an NPC in the Deep Forest             ]
[  100: Removed Savina from game                           ]


Section 1 - Abandoned Camp

Table of GameEventIDs (continued)
Object	Name
Abandoned Camp	"Abandoned Camp"

Abandoned Camp is a situation.
The sarea of Abandoned Camp is "Forest".

Table of GameCharacterIDs (continued)
object	name
Savina	"Savina"

Savina is a woman.

when play begins:
	add Abandoned Camp to badspots of girl;
	add Abandoned Camp to badspots of feral;
	add Abandoned Camp to badspots of guy;

Instead of resolving a Abandoned Camp:
	if HP of Savina is 0:			[First encounter]
		say "     Your exploration takes you deep into the forest. The trees seem to grow more and more massive the further in you go, many of them being more than several stories tall. Thick branches full of leaves create a canopy that shrouds the area in a perpetual gloom with just enough [if daytimer is day]sun[else]moon[end if]light filtering through for you to guide your way. Surprisingly, you don't have any encounters during your trek. You're not sure if whether your unabated hike is due to the dense foliage obscuring you or other people just not daring to delve this far into the thicket like you, but it makes the walk through nature almost relaxing, even if you do keep alert for any signs of trouble. Eventually, you spy a camping tent that had been set up in a small clearing, and you scope it out from behind the cover of some nearby bushes. Judging by a few scattered items on the ground, the owner had quickly abandoned the area for some reason, which means that there's a good chance that there might be something left behind for you to scavenge.";
		say "     [bold type]Do you want to search the camp?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Search the camp.";
		say "     ([link]N[as]n[end link]) - Play it safe and leave.";
		if player consents:			[Player is ambushed by a gargoyle during their search]
			LineBreak;
			say "     Not wanting to pass up a chance for supplies, you carefully walk toward the camp, wary for any hint of danger. Your search around the area goes unperturbed, but you only find discarded trash and broken camping tools littering the ground. Making your way behind the tent, you find a small cooler, and you open it, only to be disappointed by the sight of food wrappers and empty water bottles. You begin to dig through the trash just to make sure, but a loud wing flap from nearby interrupts you, and a shadow looms over you. Acting on instinct, you dive out of the way right before a dark shape lands right where you were standing. Facing your ambusher, you find a gargoyle leering at you, and it lets loose with a mighty roar. Looks like that this gargoyle has been using this camp as a sort of trap, and you'll have to deal with him if you want to finish searching the area.";
			say "[SavinaIntroFight]";
		else:			[Player leaves, but may return later]
			LineBreak;
			say "     Erring on the side of caution, you decide to leave the camp alone. You could always try again later if you return to this place.";
	else if HP of Savina is 1:			[Repeat encounter if player doesn't defeat gargoyle]
		say "     Heading deep into the forest, you spot the camp that you weren't able to thoroughly search. It looks like nothing has changed since the last time you've been here, but it's more than likely that the gargoyle from before is still around. You'll have to deal with him if you want to finish searching the area.";
		say "     [bold type]Do you want to fight the gargoyle?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Confront the gargoyle.";
		say "     ([link]N[as]n[end link]) - Play it safe and leave.";
		if player consents:			[Gargoyle fight]
			LineBreak;
			say "     Carefully walking into the camp, your gaze combing the trees for any sign of the gargoyle. You don't have to wait for long as the beast in question drops from the trees with a roar and charges right at you.";
			say "[SavinaIntroFight]";
		else:			[Player leaves, but may return later]
			LineBreak;
			say "     Erring on the side of caution, you decide to leave the camp alone. You could always try again later if you return to this place.";

to say SavinaIntroFight:			[Player fights with Gargoyle. Winning creates the Deep Forest along with Savina as an NPC]
	now inasituation is true;
	challenge "Gargoyle";
	if fightoutcome >= 10 and fightoutcome <= 19:	[won fight]
		say "     The gargoyle hastily flies away from you after its defeat, leaving you free reign to finish your scavenging. Turning your attention back to the cooler, you dig through it and manage to find one unopened can of food underneath all of the trash, which you happily pocket. Seeing nothing else of interest around the campsite, you continue your scavenging inside of the tent. The sight of a tattered sleeping bag surrounded by even more empty water bottles greets you, but a thorough search does reveal one bottle with water still left in it. Unfortunately, the water is murky with a brown tinge. It's still drinkable, but it's mostly likely laced with all sorts of infective material. A sudden rustling from the outside makes you freeze, but after a few moments of nothing else happening, you dismiss the noise as the wind and continue your investigation.";
		say "     With your mediocre prize still in your grasp, you take another glance at the empty water bottles littering the tent floor and guess that they also held unclean water as well. Upon closer inspection, you also note that the sleeping bag was mostly damaged on the inside with scratches and claw marks. Piecing together the clues, it seems like that the former owner of this camp had became infected from drinking too much tainted water and transformed during their sleep, making them go feral and abandon the camp. Perhaps that gargoyle you dealt with a few moments ago was even the same person. Regardless, it doesn't look like that they will be returning to this place, so you exit the tent as you pack away the remaining dirty water next to the can of food you found earlier.";
		increase carried of dirty water by 1;
		increase carried of food by 1;
		say "     [bold type]You gained a bottle of dirty water along with a can of food.[roman type]";
		now Resolution of Abandoned Camp is 99;		[Player vore level too low to meet Savina]
		if vorelevel > 1:	[Event continues unless 'Less Vore' is set]
			WaitLineBreak;
			say "     Emerging back outside, you balk when you see the body of a snake slithering among the tree branches in front of you. The reptile is mostly green with a few splotches of either brown or dark-green dotting its body, but the more worrisome part is its size. Its girth was easily as wide as the average human, and even though you could not see where the head or tail were, there's no doubt that this snake was far longer than any other known species. Considering how rapidly this forest had sprouted since the nanite outbreak began, it isn't farfetched to say that this beast had went through the same kind of unnatural growth. You turn to run away from the imposing animal, only to find out that the snake's long body had fully surrounded the campsite, and the coils were still closing in.";
			say "     'So, you are the one that has been making all of that noise earlier,' a smooth female voice comes from somewhere above, making you look up. The snake's head finally reveals itself as it descends from the canopy, and the first thing that grabs your attention is its piercing yellow eyes. The serpent smirks at your gaze of wonderment, and to your surprise, it speaks with the same female voice from before. 'I have such wonderful eyes, don't I? I certainly don't mind you admiring them. In fact, why don't you stay with me? You can gaze upon my eyes as long as you want, and I will give you an experience that you will never forget.' She licks her lips, but instead of a forked tongue, a human-like one slips out of her lips. That altered tongue is probably the reason that this animal can talk, but you don't have time to dwell on that for long as she draws closer. You very well know that her invitation is filled with malevolent intent, and yet, as you are unable to break your gaze into those enchanting eyes, you are finding it difficult to refuse her offer, let alone fight her.";
			say "     [bold type]Do you try to escape?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Accept the snake's invitation.";
			say "     ([link]N[as]n[end link]) - Run from the snake.";
			if player consents:		[Player is hypnotized, eaten, and then made into Savina's pet/servant]
				say "     Transfixed on those alluring eyes, you find your thoughts becoming muddled, and you are unable to move as the snake lowers herself from the trees and slithers toward you. In your addled state, it only takes the slightest push on your chest with her snout to tip you over backwards, but instead of landing on the grass, you fall onto a bundle of coils, which instantly converge on you, completely submerging you in a sea of scales[if scalevalue of player > 4], even despite your large body[end if]. With the enchanting eyes no longer able to dominate you with your dark prison, your senses return, only to be subjugated by the serpent's touch. All that you can hear and feel are the sliding scales as they grind against every inch of your body, overwhelming your weakened state with a flurry of sensations. And yet, despite the rough treatment, a few moans escape you as you can't help but find the caress of those smooth scales pleasurable.";
				say "     Unable to withstand the strong, constant ministrations, you submit to your captor's whims. Your helpless form is easily spun around and around, and you quickly lose all sense of direction in the crushing darkness. There seems to be no meaning or reason to you being tossed about, and you begin to wonder if she was actually toying with you. After what seems like forever, there's a shift in movement as some of the coils squeeze down on you while others slip away. You gasp for fresh air when your head is released back into the outside world. However, the rest of your entire body remains trapped in the coils, and right in front of you are those captivating eyes as they capture your attention once again.";
				WaitLineBreak;
				say "     'So glad that you can stay,' the snake says. 'We are going to have so much fun.' Up close, her dazzling eyes dominate your vision, their enchantment drawing you in even more than before. They seemingly radiate with some sort of otherworldly power, and it feels like that you're falling into those golden pools. 'You must be so weary from your travels,' the scaled charmer croons, her sweet voice drowning out everything around you until it and her gaze are all that you can focus on. 'Just relax. You are safe in my embrace. Take a deep breath, let out all of your stress. Every time you breathe out, empty your mind of all distractions.' You oblige your captor without thinking, and as you breathe in and out, you feel your thoughts, your worries, and everything else melt away. Soon, there is nothing left in your head except adoration for your serpentine mistress, and all you can do is gaze at her with a dopey grin.";
				say "     'Excellent. Just listen and obey my every word,' the snake commands. 'It feels good to let everything go and let me do all of your thinking.' You nod dumbly, accepting her words without question. Being held in the snake's coils makes you feel safe, and you can't help but trust her as you stare into her warm, inviting gaze. 'Such an obedient pet. You belong to me now. That means I get to do whatever I wish with you.' Again, you nod without any hesitation, and the serpent leans even closer, her large, humanoid tongue flicking across most of your face with one swipe. 'And what I wish is for you to be my delicious little morsel, to become a part of something far greater, and nothing gives you more pleasure than serving me.'";
				WaitLineBreak;
				say "     The snake's jaws click as she unhinges them, opening her mouth to reveal a living tunnel into the abyss. In the back of your mind, a voice warns you of the danger, but the serpent's conditioning had worked its magic on you, suppressing that voice into nothing more than a tiny peep. You don't struggle at all when the ravenous maw descends upon you. Her coils relinquish you into her gullet, plunging you into darkness once again, but this time in a much more humid environment. Effortlessly sliding into the enormous predator, her insides welcome you into their embrace, pressing into you from every angle. You hear a satisfied hiss before it's drowned out by a symphony of squelches and gurgles as you are pulled deeper, all while the surrounding flesh continues to knead you. The walls constantly constrict you, and yet, the snake's interior feels strangely pleasant, even erotic, as they rub against your weary form. Whether it's a result of the snake's hypnosis or your own carnal need, you lustfully moan from the never-ending stimulation.";
				if player is male:
					say "     Your cock[smn] start[smv] to grow erect from the amorous touches, only to get pressed up against the sensuous walls. The increased caresses on your dick[smn] makes your arousal spike, and it doesn't take long for you to reach your climax, spraying your [cum load size of player] load all over the snake's interior. ";
				else if player is female:
					say "     Your cunt[sfn] rub[sfv] against the sensuous walls, making you all the more aroused. It doesn't take long for you to reach your climax and spraying your juices all over the snake's interior. ";
				else:
					say "     The amorous touches of the sensuous walls makes your arousal spike, and it doesn't take long for you to reach your climax. The snake's strong muscles keep you restrained as your pleasure-ridden body trembles feebly. ";
				say "It does not end there, however. Whether it's from these twisted confines or a lingering effect from the snake's alluring eyes, your libido stays at an elevated level despite your recent release. The pulsing walls continue to lavish you with attention, a bizarre, yet sensual massage that seems to find all of the right spots to fill you with wanton need. Before long, you achieve your second release with a loud moan. Even then, your lust refuses to go down, and you yearn for more. Unable to do anything but submit to your body's uncontrollable need and the snake's stomach, you go through climax after climax until you eventually pass out in a whirl of pleasure and exhaustion.";
				WaitLineBreak;
				say "     When you wake up, you see the trees of the Urban Forest. Memories of your encounter with the snake flicker through your mind, and you wonder if it was only a vivid dream. Your hopes are dashed when you realize that you are still trapped in the serpent's coils, and they squeeze down on you when they feel your movement. 'Finally awake, are we?' the giant reptile says as she pulls you into her gaze. 'Surprised that you're not still inside of me, melting away in a haze of pleasure? While I do find you to be delectable, I have a better use for you. I am Savina, but you may call me Mistress. I saw your battle with that flying brute earlier, and I can make use of your combat prowess. In return for letting you go, I want you to find other morsels and bring them to me. And because I enjoy playing with my new pet, I shall even sweeten the deal by satisfying your carnal desires between tributes. I'm sure that you'll find my offer [italic type]irresistible[roman type].' You shiver as Savina's eyes seem to glow and pulse with power for a moment, and as her words sink in, you nod automatically. With your compliance, Savina smirks deviously and lets her coils slowly slip off of you. Even though your mind is still intact, the snake has left her mark on you, and despite being free, part of you just wants to return to those coils, or better yet, her stomach. Savina smirks knowingly at your longing gaze as you leave her. 'I shall be waiting for you. Don't disappoint me.'";
				now HP of Savina is 2;
				now Deep Forest is known;
				move Savina to Deep Forest;
				move player to Deep Forest;
				now Resolution of Abandoned Camp is 1;		[Hypnotized by Savina]
			else:		[Removes Savina from game]
				say "     Tearing your gaze away from those bewitching eyes, you suddenly turn around and manage to slide under the ring of scales before the snake can react. A loop of coils comes crashing down from above during your hasty retreat, but you manage to evade it without losing much speed. You hear angry hissing from behind, but it quickly fades as you exit the deeper parts of the forest and vow to never go down that direction again.";
				now Resolution of Abandoned Camp is 100;		[Ran from Savina]
		now Abandoned Camp is resolved;
	if fightoutcome >= 20 and fightoutcome <= 29:	[lost fight]
		say "     Despite the gargoyle's departure, you can almost sense his gaze on you from somewhere up in the canopy. Not wanting to stick around for a second round in your current state, you hastily gather your wits and flee the area. You'll have to better prepare yourself if you want to try and search the camp again.";
		if HP of Savina is 0:
			now HP of Savina is 1;
	else if fightoutcome >= 30:	[fled fight]
		say "     Fleeing the battle, you dart through the trees. You hear the gargoyle's roar and flapping wings as it gives chase, but you easily lose it in the labyrinth of trees. You'll have to better prepare yourself if you want to try and search the camp again.";
		if HP of Savina is 0:
			now HP of Savina is 1;
	now inasituation is false;


Section 2 - Deep Forest

Table of GameRoomIDs (continued)
Object	Name
Deep Forest	"Deep Forest"

Deep Forest is a room. It is fasttravel. It is private.
The description of Deep Forest is "     You are in a small clearing deep inside of the Urban Forest. The trees here are massive and tower over you, and the area is shrouded in perpetual gloom from the thick canopy. Resting among the tree branches up above, Savina waits for you to do her bidding.".


Section 3 - Savina

SavinaTempt is a number that varies. SavinaTempt is usually 0.
The description of Savina is "[SavinaDesc]".
The conversation of Savina is { "I'm a snek" }.
The scent of the Savina is "Intertwined with the earthy smell of the forest, Savina has a unique, alluring musk. You're not sure if it's just another side effect of her hold on you, but there is something comforting about that scent that relaxes you a bit.";

to say SavinaDesc:
	say "     Being far bigger than any other snake species, Savina is easily one of the more imposing figures that you have encountered in this bizarre city, especially since she is watching your every movement from atop a group of low-hanging branches. Her green coils, interspersed by the occasional brown or dark-green spot, helps her blend in with the surrounding trees and are more than capable of smothering her prey with her scaled body. Her golden eyes, however, are her most striking feature, and even from a distance, you find your gaze often drifting to those captivating orbs. Savina grins in amusement at your gawking, and her tongue, resembling a human's instead of a snake's, flicks out in anticipation.";

Instead of conversing Savina:
	say "     [one of]'Be grateful that I let you keep your wits to hunt for me instead of making you into a mindless servant.'[or]'How serendipitous that you came along to be my pet. Things were getting dull around here.'[or]Instead of speaking, Savina stares intently into your eyes, entrancing you with her hypnotic gaze. She breaks her hold on you a few moments later and chuckles mischievously at your confusion over losing your train of thought.[at random]";

Instead of fucking Savina:
	if (lastfuck of Savina - turns < 6): [Had sex in the last 18 hours = 6 turns]
		say "     'My pet has quite the libido to want my caring touch so soon,' Savina comments, looking at you in amusement. 'However, I'm not in the mood. Either come back later or bring me a treat. Maybe then, I'll be more inclined to play with my pet.'";
	else if lust of Savina < 1:
		say "     Savina watches you with a bored look as you approach her, and when you ask to spend some time with her, she snorts derisively. 'I have given you enough attention,' the apathetic reptile chastises. 'The deal is that you [bold type]hunt for me[roman type] in return for me playing with my pet. I am not running a charity case here. Fulfill your end of the bargain, then we can talk. Now, go.'";
	else:
		say "     'Oh, does my pet need some attention?' Savina asks in a playful tone when you approach her. ";
		if lust of Savina > 1:
			say "'You did just bring me back such a thoughtful gift. It wouldn't be right if I didn't show you my appreciation.'";
		else:
			say "'I suppose that I can indulge you this time, but know that this is our last session before you have to bring me back another morsel. Pampering you is hungry work.'";
		say "     Her tail shoots forward, swiftly taking you in its embrace. You gasp in both surprise and arousal at the feeling of her marvelous touch as her coils work over you. In a matter of seconds, you are completely trapped within her embrace, only your head sticking above her twisting body, and your serpentine mistress easily lifts your helpless form up until you're right in front of her entrancing eyes. Lost in those golden pools, your mind is open to her, and her touch is all the more sensual.";
		say "     'Now, how should I play with you?' Savina asks with a mischievous smirk.";
		decrease lust of Savina by 1;
		say "[SavinaSexMenu]";

to say SavinaSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get tail-pegged";
	now sortorder entry is 1;
	now description entry is "Have Savina press her tail into your rear";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get eaten";
	now sortorder entry is 2;
	now description entry is "Let Savina eat you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get some pet training";
	now sortorder entry is 3;
	now description entry is "Have Savina's hypnosis and coils make you a better pet";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have your cunt licked";
		now sortorder entry is 4;
		now description entry is "Let Savina tend to your cunt with her large tongue";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Tongue-job for your cock";
		now sortorder entry is 5;
		now description entry is "Savina tends to your cock with her large tongue";
	[]
	if SavinaTempt is 5:	[Leads to ending]
		choose a blank row in table of fucking options;
		now title entry is "Beg Savina to eat you";
		now sortorder entry is 6;
		now description entry is "You can't resist begging for Savina to eat you. [bold type]Your adventure will come to an end[roman type]";
	[]
	if SavinaTempt is 5:	[Leads to ending]
		choose a blank row in table of fucking options;
		now title entry is "Savina wants to keep you";
		now sortorder entry is 7;
		now description entry is "Savina finds you too tasty to let you go. [bold type]Your adventure will come to an end[roman type]";
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
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Get tail-pegged":
					say "[SavinaSexAnal]";
				if nam is "Get eaten":
					say "[SavinaVore]";
				if nam is "Get some pet training":
					say "[SavinaPetTrain]";
				if nam is "Have your cunt licked":
					say "[SavinaSexCunt]";
				if nam is "Tongue-job for your cock":
					say "[SavinaSexCock]";
				if nam is "Beg Savina to eat you":
					say "[SavinaFatalBeg]";
				if nam is "Savina wants to keep you":
					say "[SavinaFatalKeep]";
				now lastfuck of Savina is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Despite your muddled senses, you manage to tell the snake that you changed your mind about spending some time with her. Savina gives you an unamused glare and loosens her coils, unceremoniously dropping you to the ground. 'Fine then. Doesn't matter to me either way if my pet wants to play or not,' she says, annoyance clear in her tone. 'But I'm still counting it against you for wasting my time.'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SavinaSexAnal:
	say "     Without warning, there's a flurry of movement as Savina shifts all around you. Although the coils holding you are constantly moving around you in a never-ending spiral, you are kept in place, subjected to the constant grinding of smooth scales. The coils grow thicker as you are transported along the snake's length, and by the time your ride comes to a stop, all it takes is one massive coil to bind the upper half of your body. A casual squeeze from Savina on your chest makes you briefly gasp for air while the coils around your lower half slip away, leaving your legs to dangle helplessly in the air. 'I got to have you inside of me,' she remarks. 'Let's find out how much I can fit inside of you.'";
	say "     More movement from Savina prompts you to look down, and you see that her tail is reaching up toward your behind. As that scaled tip rubs itself between your buttcheeks, you squirm from both fear and anticipation, but you can barely move an inch within her embrace. 'Now, now, no need to fear,' Savina coos, her tail gently caressing your rear. 'I won't be too rough. Wouldn't want to break my favorite toy. Just take a deep breath and relax.' Following your mistress's command, you breathe in, only for it to come out as a groan when her tail probes between your cheeks, pressing against your quivering hole. The relentless tail slowly increases its pressure until it finally enters you, making you gasp in both surprise and arousal. Savina doesn't give you any rest as she continues pushing into you, her enormous size filling you.";
	WaitLineBreak;
	say "     A mix of pain and pleasure wreaks havoc on your lust-addled mind, and it's even further overloaded when her tail starts wriggling, thoroughly rubbing every pleasurable spot along your inner walls. You moan in ecstasy as that wondrous tail continues to slowly sink deeper into you, and it is almost a relief when it finally comes to a stop, only for the tantalizing process to repeat as it pulls out, dragging along your sensitive walls. When only the very tip of the massive tail is all that remains in your ass, you barely have a moment to catch your breath or dwell on the aching void that had been left in you before Savina drives her tail back into you in one smooth motion. A primal scream escapes you from the euphoria that starts from your filled rear and rapidly spreads through you in a blissful haze, and the smirking snake holds you still as your body trembles from the overwhelming pleasure[if player is male], your cum raining down onto the forest floor[else if player is female], your juices raining down onto the forest floor[end if].";
	say "     'What an adorable sound my pet makes,' Savina teases, listening to the moans you make while she pumps her tail in and out of your sphincter. 'I could listen to you all day, and there's nothing you can do to stop me. After all, you belong to me, and I could play with you for as long as I wish.' She punctuates her lecherous threat with a powerful thrust into your abused asshole, forcing another climax out of you. Even as you writhe in ecstasy, the lascivious serpent continues to piston her tail into you, suspending you in a cycle of unwavering bliss as she wrings climax after climax out of you. And yet, despite your exhaustion and aching behind, you cannot help but love the attention and pleasure your scaled mistress lavishes upon you. ";
	say "     An almost sadistic smile crosses Savina's face while she relishes in your helpless squirms and squeals of delight, but eventually, her thrusting starts to slow down as she grows bored. By the time she does finally pull her tail out, you had endured more than a few orgasms, leaving you teetering on the edge of passing out from exhaustion. Unable to move and your mind still dazed by a haze of pleasure, you can only feebly twitch within the snake's grasp, your moans the only thing that can be heard in the clearing. Thankfully, Savina slowly lowers your abused body, gently relinquishing you from her coils and onto the forest floor. 'Looks like I can fit quite a bit of myself within you,' Savina taunts as you heave for air on the ground. 'Do keep up the good work, my pet, and I'll be sure to properly [italic type]reward[roman type] you again.' You nod without thinking as you shakily get back on your feet, a part of you already yearning to relive the intense, yet gratifying ordeal.";
	if SavinaTempt < 5:
		increase SavinaTempt by 1;

to say SavinaVore:
	say "     'Hmm, it's been a while since I got a proper taste of my pet,' Savina says, licking her lips with her humanoid tongue. 'Perhaps I shall indulge myself, and I don't think you are opposed to the idea as well. After all, you miss the euphoria of being inside of me, to be stripped of all of your senses until all you know and feel is being a part of me.' You nod in agreement, unable to refute your mistress as you stare into her wonderful eyes. 'Good pet,' she coos. 'Just relax and let me put you in your proper place.' The coils restraining you rise up, lifting you along with them until you are right above the snake's head, and she smirks deviously before she tilts back, her mouth opening wide. It would be simple enough for her to just drop you, letting you plummet into the abyss that is her gullet, but instead, she slowly lowers you down, her humanoid tongue tickling and caressing your feet as soon as they come into range.";
	say "     As her coils gradually slip away, her lips close around your legs, and you relish the warmth that you're being submerged in, reminding you of the bliss of being a part of your scaly mistress and making you want to delve inside of her as soon as possible. However, Savina has other ideas as she holds you in place, suckling on your helpless form like you're a lollipop. Her tongue teases your feet, but it quickly moves up to lap at your [if player is male]cock[smn][else if player is female]cunt[sfn][else]groin[end if]. With your lower half trapped in the warm, soft confines of her mouth, you can do nothing as her probing tongue lavishes you with sensual attention until you reach your climax, [if player is male]spraying your cum down her throat[smn][else if player is female]spraying your juices down her throat[sfn][else]spasming in her grip[end if]. Even after your release, Savina continues to torment you with her tongue, and you can feel the rumbles of her chuckling as you squirm helplessly, unable to budge her by even a single inch. Just as you approach your second orgasm, your mistress finally releases her grip on you, dropping the rest of you inside of her mouth.";
	WaitLineBreak;
	say "     Being so close to your second climax, you try and get your release by humping the snake's tongue, and your lust-filled senses hardly notice the closing mouth until you are submerged in darkness. Before you get to finish yourself off, you are abruptly pushed to the back of the living chamber, and with one audible swallow, you are pulled down the snake's throat by her powerful muscles, the inner walls welcoming you into their embrace. You moan wantonly at the familiar caress of Savina's flesh rubbing into you from every angle, inciting all of your senses, and you finally achieve your long-awaited orgasm as the pulsing flesh wrings it out of you[if player is male], your cum splattering against the walls[else if player is female], your juices splattering against the walls[end if].";
	say "     Exhausted by your back-to-back releases, you go limp, allowing yourself to be fully taken by Savina as her voice rumbles from all around you, saying, 'You are simply delectable, my pet. Far more exquisite than the common rabble that you bring me. I'm so tempted to keep you inside of me and make you mine forever, but alas, you are far more useful doing my bidding rather than serving as a one-time meal, even if you would make for a divine feast. For now though, I suggest that you get comfortable. I fully intend to savor you fully before I let you go.' You find no issue with Savina's plan, and even if you did, it's not like you can do anything about it. All you can do is feebly squirm while you are pulled through the endless tunnel of flesh. With nothing but the squelching sounds of your surroundings and the ever-present sensation of her stomach walls kneading into your weary body, you relax into your mistress's embrace until you eventually pass out in bliss.";
	WaitLineBreak;
	say "     When you come to, you are lying on the forest floor. You shiver from the cold, both from the spittle covering you, as well as you missing the warm confines of the snake. 'Did I tire my pet out again?' Savina teases as her head moves into your view. 'I can't help it since you're so delicious. Do come back soon, whether if you're bringing me back another treat or offering me another taste of your delectable self.' As you get up and clean yourself off, Savina watches you with a hungry gaze, and you can't help but think about being inside of the giant snake once again.";
	if SavinaTempt < 5:
		increase SavinaTempt by 1;

to say SavinaPetTrain:
	say "     'I think that you could use a little more obedience training,' Savina says, bringing you even closer to her face until her golden eyes completely encompass your vision. 'Now, pay attention. Your mistress is speaking, and you love listening to my angelic voice. After all, you are my obedient pet. I give you pleasure and safety, and all I ask in return is for you to obey my commands. Trust me, love me, obey me.' You nod automatically as every single one of the snake's enchanting words resonates in your mind, binding your devotion to her. Savina grins at your blind worship, and her coils shift to let her tail brush across your entranced face. 'Such a good pet. Just keep listening to my voice, and you'll get a treat from your mistress,' the serpent says before giving you a single squeeze, making you groan, not out of pain, but out of pleasure. 'You enjoy being held in my embrace, to let my beautiful scales caress you.'";
	say "     Again and again you are squeezed, but not once does the reptile hurt you. Instead, you feel safe and comfortable within Savina's grip, trusting your mistress to take care of you. Your faith in the snake is so great that you don't worry at all when her tail wraps around your head, submerging the last part of you in the twisting coils. 'There you go, my pet,' Savina's voice reverberates within your cocoon of scales. 'Every squeeze you feel puts you deeper into my control, pushing out your thoughts. Let your mind be emptied of everything except your loyalty to me and the endless pleasure that I give you. Within my coils, you are safe from danger, experiencing nothing but pure bliss.' You moan wantonly, awash in a sea of ecstasy, as the supple walls constantly rub into your helpless form, the euphoric sensations of snakeskin massaging every inch of your body amplified by the darkness of your scaled confine.";
	WaitLineBreak;
	say "     Savina's honeyed words and irresistable touch overwhelm your feeble mind with pleasure, driving you to your climax[if player is male] as Savina smirks at your cum leaking out of the cracks of her coils[else if player is female]as Savina smirks at your juices dripping from the cracks of her coils[end if]. And yet, despite your release, the coils continue to slide across your body, the smooth scales exciting your senses and reigniting your lust for Savina's sensual touch. Unable to resist your mistress, she wrings orgasm after orgasm out of you, and you revel in her dominance over you. You are Savina's pet, and nothing brings you more joy than letting the snake use you as she sees fit.";
	say "     Eventually, the marathon of pleasure comes to an end when the coils slowly recede, but as soon you lose the support of those strong muscles, your exhausted body crumples to the ground, much to Savina's amusement. Despite being sore all over, seeing the satisfied look on her face after using you brings you solace as you rest under the watchful eye of your mistress. By the time that you're finally able to get back on your feet, the snake's hypnotic hold on you has faded, but even though your senses had returned, the bliss that you felt within the cocoon of scales lingers in your mind, already making you crave for Savina's touch once again.";
	if SavinaTempt < 5:
		increase SavinaTempt by 1;

to say SavinaSexCunt:
	say "     Savina's coils shifts you up her body while also freeing your lower half, allowing her tail to promptly [StripCrotch]. Because of the snake's hypnotic gaze and the caress of her lovely smooth scales, your [if cunts of player > 1]cunts are[else]cunt is[end if] already beginning to drip with need. 'Aww, it looks that my pet needs some attention from their mistress,' the serpent teases as her tail brushes the lips of your puss[yfn], making you moan wantonly. 'I suppose that I can indulge my pet. After all, you cannot resist fawning for my attention because you very well know that nothing can compare to my wondrous touch and how you will never be truly satisfied without me.' You nod fervently, agreeing with the snake's every word as her seduction only makes you lust for the dominant reptile even more.";
	say "     Suddenly, you find yourself facing straight up at the canopy above when the coils turn you ninety degrees so that your helpless form is lying perfectly horizontal. Savina's thick coils not only keep you bound, but they also make it impossible to watch the snake's next move, but you can definitely hear and feel her head draw closer. Suddenly, your lower half is engulfed in her maw, making you gasp in both surprise and delight as it is submerged in warmth. The serpent's humanoid tongue dives forth, spreading your legs open to gain access to your crotch, and your moans ring through the forest when it plunges into [if cunts of player > 1]one of your cunts[else]your cunt[end if]. The enormous muscle absolutely fills you to the brim, and its rough, pliant texture sends shivers up your spine as it scrapes your sensitive walls. Knowing that you're helpless in Savina's grasp makes her ministrations all the more alluring to your addled mind.";
	WaitLineBreak;
	say "     Savina's tongue is relentless as it wriggles around, combing through every inch of your inner depths, each touch a burst of pleasure, and when it pushes against your walls, you can feel your distended belly grind into her firm coils, the exterior stimulation driving you even madder with lust. Eventually, her tongue-job becomes too much for your over-pleasured mind as your quivering [if cunts of player > 1]muffs[else]muff[end if] spurts femcum into her mouth. You can feel the rumbling of Savina's chuckle while she effortlessly drinks down your juices, a meager offering due to her monstrous size. When the flow of your juices starts to taper off, the serpent's tongue is quick to resume its attack[if cunts of player > 1], swiftly pulling out of your abused cunt and thrusting into another[else] into your abused cunt[end if]. Not having even a moment of respite, it doesn't take much licking into your aroused depths to coax out yet another orgasm, and as another load is claimed by the ravenous serpent, she continues her assault. Unable to do anything to break the cycle of pleasure, everything is incomprehensible to your overloaded mind except for the euphoria that your mistress bestows upon you.";
	say "     You lose count of how many orgasms you've had, as well as how much time has passed, but eventually, Savina finally pulls you out of her mouth after having milked you dry of your delectable juices. Her coils gently releases you onto the forest floor, leaving you lying on your back. As you recover from the exhausting ordeal, Savina's head looms over you as she makes a show of dragging her tongue across her smirking lips. 'Another tasty treat from my pet,' she teases. 'Do come again. Your refreshing juices are a welcome trade for playing with you.' Despite the tiring experience, you find that Savina's offer is not only enticing, but you're also wondering what other things the dominant snake can do to you.";
	if SavinaTempt < 5:
		increase SavinaTempt by 1;

to say SavinaSexCock:
	say "     Savina's coils shifts you up her body while also freeing your lower half, allowing her tail to promptly [StripCrotch]. Because of the snake's hypnotic gaze and the caress of her lovely smooth scales, your [if cocks of player > 1]cocks are[else]cock is[end if] already hard, twitching with need. 'Aww, it looks that my pet needs some attention from their mistress,' the serpent teases as her tail brushes again your dick[smn], making you moan wantonly. 'I suppose that I can indulge my pet. After all, you cannot resist fawning for my attention because you very well know that nothing can compare to my wondrous touch and how you will never be truly satisfied without me.' You nod fervently, agreeing with the snake's every word as her seduction only makes you lust for the dominant reptile even more.";
	say "     Suddenly, you find yourself facing straight up at the canopy above when the coils turn you ninety degrees so that your helpless form is lying perfectly horizontal. Savina's thick coils not only keep you bound, but they also make it impossible to watch the snake's next move, but you can definitely hear and feel her head draw closer. Suddenly, your lower half is engulfed in her maw, making you gasp in both surprise and delight as it is submerged in warmth. The serpent's humanoid tongue dives forth, spreading your legs open to gain access to your crotch, and your moans ring through the forest when it licks your hardened rod[smn]. The feel of the rough, pliant tongue sends shivers up your spine as the enormous muscle easily services the entirety of your length[smn] all at once, and knowing that you're helpless in Savina's grasp makes her ministrations all the more alluring to your addled mind.";
	WaitLineBreak;
	say "     Savina's licking is relentless, sending waves of ecstasy through you, and eventually, her tongue-job becomes too much for your over-pleasured mind as your twitching [if cocks of player > 1]cocks paint[else]cock paints[end if] the insides of her mouth with your cum. You can feel the rumbling of Savina's chuckle while she effortlessly drinks down your cream, a meager offering due to her monstrous size. When the flow of your cum starts to taper off, the serpent's tongue is quick to resume its attack on your tool[smn]. Not having even a moment of respite, it doesn't take much licking over your sensitive rod[smn] to coax out yet another orgasm, and as another load is claimed by the ravenous serpent, she continues her assault. Unable to do anything to break the cycle of pleasure, everything is incomprehensible to your overloaded mind except for the euphoria that your mistress bestows upon you.";
	say "     You lose count of how many orgasms you've had, as well as how much time has passed, but eventually, Savina finally pulls you out of her mouth after having milked every last drop of your delectable cream. Her coils gently releases you onto the forest floor, leaving you lying on your back. As you recover from the exhausting ordeal, Savina's head looms over you as she makes a show of dragging her tongue across her smirking lips. 'Another tasty treat from my pet,' she teases. 'Do come back when you want me to milk you dry again.' Despite the tiring experience, you find that Savina's offer is not only enticing, but you're also wondering what other things the dominant snake can do to you.";
	if SavinaTempt < 5:
		increase SavinaTempt by 1;

to say SavinaFatalBeg:
	say "     Trapped in Savina's embrace, you find the urge to submit to the seductress stronger than ever. After so many sessions of falling under the dominant snake's spell and enjoying the pleasure that she showers you with, it's a struggle to not fully give yourself to her, but as you gaze into Savina's beautiful, lustrous eyes and feel her scales soothingly rub into your helpless form, your feeble mind finally snaps. The giant reptile is surprised when you suddenly start shouting, but when you say that you crave, no, you [bold type]need[roman type] more of your scaly mistress, her mouth curls into an amused, knowing grin. You go on to tell the serpent that being away from her is becoming more and more unbearable, to the point where it's hard to do anything without being distracted by lustful thoughts for her. Eventually, you end up practically begging the snake to eat you so that the both of you could remain together forever.";
	say "     Savina sighs at the end of your rant and says, 'It seems that I gave my pet a bit too much attention. I was so enjoying the treats that you brought back to me, but it looks like you are too occupied with admiring me now to continue doing that. A pity.' Savina sounds a bit disappointed at first, but a devilish smirk appears on her face as she licks her lips. 'Not to worry though. I have one final use for you, and by doing so, I shall fulfill your darkest and deepest desire.' The initial elation of getting what you want turns to confusion when the coils lower you back onto the ground and then slip away, however you aren't left wondering for long as Savina lowers her head in front of you, her mouth wide open. Staring at the inviting portal, it becomes obvious what is expected of you, and after hastily stripping naked, you approach the living tunnel.";
	WaitLineBreak;
	say "     Gently, you place a hand on the snake's giant, humanoid tongue, and a shiver of anticipation runs through you when it licks your arm. As you lean into the gaping maw, a small part of you warns you that if you go through with this, you would not be coming back out, but at this point, it only makes the whole situation all the more enticing to your lust-addled mind. Slowly, you lay yourself on Savina's soft tongue, the organ making for a surprisingly soft, makeshift bed. As soon as you're situated, the snake closes her mouth, not only replacing the chilly forest air with warm, humid air, but also cutting off your only way out, not that you have any urge to escape. Savina hums in satisfaction while her tongue gently pushes you up against the walls and roof of her mouth, thoroughly coating you with her saliva. In the meantime, you relish in being squished against the supple walls, even humping against them whenever you can, but it only leaves you aching for more. Fortunately, you very well know that this is just a small taste of the pleasures that are soon to come. ";
	say "     Eventually, the snake has her fill of sampling your flavor, and you feel your dark prison shift when Savina tilts her head back, letting gravity send you down her gullet. You moan wantonly as the familiar, pulsating walls close in on you while you make your journey into the serpent's depths. The surrounding supple flesh caressing your own feels even more wondrous than before now that you have stripped of yourself of all of your possessions, leaving nothing to interfere with their heavenly touch. Bound by the tight confines and trapped in darkness, the writhing walls pressing down on you is the only thing that you know, and the enthralling massage seems to affect not only your body but your mind as well, driving you mad with arousal.";
	say "     It does not take long before you reach your climax, the feel of your [if player is herm]cock[smn] and cunt[sfn] rubbing against the living tunnel's walls, the sensation too much for you to handle as your cum and juices paint the snake's interior[else if player is male]cock[smn] rubbing against the living tunnel's walls, the sensation too much for you to handle as your cum paint the snake's interior[else if player is female]cunt[sfn] rubbing against the living tunnel's walls, the sensation too much for you to handle as your juices paint the snake's interior[else]crotch rubbing against the living tunnel's walls, the sensation too much for you to handle[end if]. And it is only the first of many. With your overwhelming desire to please your mistress and the constant squeezing of the encompassing walls, your orgasms come swiftly and frequently, suspending you in an endless cycle of bliss. The pure euphoria as you gradually become one with Savina is everything you could have wished for and then some, and you dearly hope that the serpent derives just as much pleasure from using you. As you are ferried into the deepest depths of the snake, your senses are washed away by the rapturous, churning stomach until you let your weary self rest, offering your final gift to your mistress.";
	wait for any key;
	now voreloss is true;
	now bodyname of player is "dead";
	end the story saying "Savina hums in delight when she feels your sluggish movements come to an end. Rubbing the shrinking bulge in her midsection, she says, 'You were an excellent meal, my pet. Enjoy being a part of me forever.' As the massive snake's stomach claims you to fuel her mighty form, Savina slithers off in search of her next meal, or better yet, her next pet.";

to say SavinaFatalKeep:
	say "     'Maybe I should have a taste of my pet,' Savina states. 'After all, you are so...' The snake leans forward and licks your exposed face with her humanoid tongue. Curiously, Savina shudders a bit before before licking you again, followed by many more. You are unable to do anything while still trapped in her coils except feel the giant tongue drag across your face, slathering you in saliva, and as odd as it might be, you find the whole situation to be somewhat erotic. Eventually, Savina's tasting comes to a stop, but you can tell that it is far from the end when she looks back at you with a hungry glint in her eyes. 'Delicious,' the serpent says. 'Your flavor is simply divine, my pet. This city is a dangerous place, and I will not risk losing you to some depraved whelp. You belong to me, and me only. I will make sure of that.' Savina's eyes seem to pulse with power, boring deep into your pliant mind. 'You have done well serving me, so I shall give you the greatest reward of becoming one with me.'";
	say "     The realisation that Savina is going to eat you and not spit you back out this time strikes fear into you, even despite your forced attraction to the serpent. You try to escape from the snake's clutches but being unable to even budge her coils, all you accomplish is tiring yourself out, making you vulnerable to her hypnotic stare. 'Hush now, little one. There is no need to fight your mistress,' the seductive reptile commands. 'There are so many perils in the world, but you are safe in my embrace. There is no need to worry about anything as long as you're here. You'll only find solace within me so that you may live the rest of your life in peace and bliss.' Savina's enticement obliterates the last of your resistance, and upon seeing you submit to her will, she smirks deviously. 'Just relax and let yourself melt away in bliss,' is the last thing you hear from her before the snake's ravenous maw descends and engulfs you.";
	WaitLineBreak;
	say "     Trapped inside of the ravenous predator's mouth, her tongue pushes and swirls around you, savoring your succulent flavor and even eliciting a few satisfied moans from the serpent herself. Worn down both physically and mentally, you do not resist while you are tossed all around the dark chamber and squished against soft, slippery surfaces. Despite the turbulent ordeal, you soon grow accustomed to being nothing more than a tasty morsel and even start to derive pleasure from being rubbed against the slick flesh. Your senses muddled by the oral ministrations and a growing haze of arousal, you hardly notice when Savina is done tasting you until the rippling tunnel that is her gullet eagerly accepts you into its compressing embrace.";
	say "     All too familiar walls of flesh squeeze and rub every inch of your bound form as you are carried deeper into the dark depths. Whether it's Savina's charm or just you accepting that you cannot escape the dominant snake, you hardly feel any worry about the perilous situation that you are in. Instead, you just focus on the tingles of pleasure that the slippery walls give you as they knead your weary body, lulling you into a state of relaxation. The snake's stomach feels oddly comfortable, almost like being stuffed inside of a full-body sleeping bag tailored to fit just you, and the soothing caresses from all sides only enhance the bliss. Feeling safe and snug inside of your mistress, you start to feel drowsy while your eyelids grow heavy, and the last thing you hear before you fall asleep is Savina saying, 'Sweet dreams, my pet.'";
	wait for any key;
	now voreloss is true;
	now bodyname of player is "dead";
	end the story saying "Savina hums in delight when she feels your sluggish movements come to an end. Rubbing the shrinking bulge in her midsection, she says, 'You were an excellent meal, my pet. Enjoy being a part of me forever.' As the massive snake's stomach claims you to fuel her mighty form, Savina slithers off in search of her next meal, or better yet, her next pet.";

to say SavinaFeed:
	increase lust of Savina by 4;
	say "     With one final blow, you knock your opponent to the ground, rendering them unconscious. Fashioning some makeshift rope out of some vines, you tie up your victim and begin hauling them back to Savina. Despite the enormity of the forest, you somehow know the right direction to go, almost as if your reptilian mistress is calling to you like a beacon in the darkness. [if scalevalue of player < 3]Due to your smaller size, it takes a while, along with some ingenuity and luck, before you[else if scalevalue of player > 3]Thanks to your larger size, it's little trouble before you[else]It takes a bit of work, but you finally[end if]make it back to the clearing where Savina resides, her prize in tow.";
	say "     'Splendid,' Savina says, her hungry gaze more focused on her soon-to-be meal. She swiftly lowers herself from her perch and slithers toward you, her eyes gleaming with delight. 'My pet has fetched me a little treat.' Her tail gives your head a few condescending pats. 'Good [if player is male]boy[else if player is female]girl[else]job[end if],' your mistress says as her tail gently drags down your cheek and ends with a few scritches under your chin. Even though the giant snake is treating you more like a housepet, you cannot deny the wondrous touch of her scales, nor the pleasure in hearing her praise. 'My pet deserves a reward for their service, but first...' Savina's attention suddenly shifts back to your fallen opponent, who just so happens to be stirring awake. 'I have business to attend to.'";
	WaitLineBreak;
	if a random chance of 1 in 2 succeeds:
		say "     The eyes of your victim bulge when they see Savina, but before they can get up and run away, the snake's tail shoots forward, ensnaring them in a cocoon of scales. Savina's prey struggles and whimpers within her grasp, but they promptly go still and silent when they are given a close-up of her hypnotic eyes. 'Hush, little one,' Savina croons. 'You are mine now. Just relax and let me welcome you into my embrace. Soon, you won't have to worry about a thing.' The captive slowly nods, and they barely flinch as Savina closes in on them with her hungry maw wide open. The serpent envelopes the entranced prisoner in her mouth, easily slipping her meal inside of her as she hums in satisfaction.";
		say "     Noticing your staring, Savina makes a big show of tossing her head back and making an audible gulp when she swallows your tribute. You gulp as well, the scene somehow fascinating and even a bit arousing, and you intently watch the bulge that is the prey slowly travel down the serpent's throat. 'Rest now, my sweet,' Savina coos, rubbing the wriggling figure with her tail. 'Let yourself sink away in bliss as you become a part of something far greater.' You cannot take your eyes off of the figure as it moves through your mistress, and a part of you even wishes that you were the one under all of those scales and powerful muscles instead. Eventually, Savina's snack finally disappears somewhere in the mass of her thick coils. 'Simply divine,' the sated serpent says as she turns her attention back to you. With a smirk, her tail wraps around you, pulling you close to her face so that you get lost in those golden eyes of hers. 'You did a wonderful job, my pet. Now, it's your turn. How shall I reward you?'";
	else:
		say "     The eyes of your victim bulge when they see Savina, and with surprising speed, they manage to scramble onto their feet and begin to run away from the giant reptile. However, they don't get far when a wall of scales crashes down right in front of them, blocking their escape. 'Now, now,' Savina chides. 'There's no need to run. I merely just want us to have some fun.' Another loop of the snake's coils moves, this time aiming to drop right on the runner. With nowhere to go, Savina's prey desperately puts their hands up right as the coil lands on them, and they actually manage to hold up the serpent's body, but with how small they are compared to the enormous snake, it's obvious that Savina is holding back. 'Let's play a game,' Savina croons with both seduction and mischief. 'If you can manage to hold me off for a full minute, then you are free to go. If you can't, well...' She chuckles darkly before smiling devilishly at the trapped person. 'Let us begin.'";
		say "     The captive whimpers when the coil visibly presses down on them, resting on their shoulders and causing their legs to quiver while they desperately try to hold their ground. Time seems to slow to a crawl as you watch the victim's strained movements and ragged breathing, a clear sign that they were using all of their strength. The victim manages to keep Savina at bay for almost the entire fateful minute, but just as the last few seconds tick down, a lazy shift in the coil bearing down on the prisoner instantly smooshes them into the ground. There was no contest at all. Savina had been toying with her prey the entire time.";
		say "     Exhausted and battered by the sadistic serpent's game, the victim can do no more than feebly twitch as the coil wraps around them and lifts them up to Savina's smirking face. 'It looks like that I win,' she mocks. 'And my prize is you.' But instead of eating them, Savina drops her snack in the midst of her coils, and it only takes a second for the poor soul to be lost in the sea of shifting scales. 'But I shall deal with you later,' the serpent says as she turns her attention back to you. With a smirk, her tail wraps around you, pulling you close to her face so that you get lost in those golden eyes of hers. 'I wish to reward my pet for doing a wonderful job. Now, what should I do with them?'";
	move player to Deep Forest;
	say "[SavinaSexMenu]";

Section 4 - Hunting for Savina


SavinaHunt is an action applying to nothing.

understand "feed Savina" as SavinaHunt.
understand "hunt Savina" as SavinaHunt.
understand "hunt for Savina" as SavinaHunt.

check SavinaHunt:
	if HP of Savina < 2, say "Perhaps you should try looking somewhere closer to what you seek." instead;
	if lust of Savina > 4, say "You've brought back plenty of food for Savina. She should be more than willing to play with you before you need to hunt for her again." instead;
	if location of player is Deep Forest, say "You should venture away from the clearing to properly hunt for Savina. Try hunting in the main part of the Urban Forest." instead;
	if location of player is not Urban Forest, say "You're too far to haul back any food for Savina. Try hunting in the Urban Forest." instead;


carry out SavinaHunt:		[Player fights an enemy, randomly chosen from a small group. If victorious, the enemy is fed to Savina for sex points]
	say "     With Savina's words whispering in your head, you are unable to resist carrying out her will, and you set off in search of her next meal. Combing through the forest, you eventually find a lone person wandering around and move to capture them. Noticing your approach, your would-be tribute shifts into a fighting stance.";
	now inasituation is true;
	if a random chance of 1 in 5 succeeds:
		challenge "Elven Hunter";
	else if a random chance of 1 in 5 succeeds:
		challenge "Harpy";
	else if a random chance of 1 in 5 succeeds:
		challenge "Gargoyle";
	else if a random chance of 2 in 5 succeeds:		[not a typo]
		challenge "Knight";
	else:
		challenge "Squire";
	if fightoutcome >= 10 and fightoutcome <= 19:	[won fight]
		say "[SavinaFeed]";
	else if fightoutcome >= 20 and fightoutcome <= 29:	[lost fight]
		say "     Your potential tribute to Savina sneers at you and leaves you to stew in your defeat. After taking some time to recover from your injuries, you resume your explorations and hope that your next hunt in the name of your scaled mistress will fare better.";
	else if fightoutcome >= 30:	[fled fight]
		say "     Losing the will to fight, you run away from the potential tribute. Hopefully, the next hunt in the name of your scaled mistress will fare better.";
	now inasituation is false;


Savina ends here.
