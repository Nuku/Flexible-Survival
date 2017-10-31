Version 1 of Tiger Shark by Lone_Wanderer begins here.
[Version 1 - New Creature]

"Adds a unique Tiger Shark character to Flexible Survival's Monsters table"

Section 0 - Monster Variables, Flags and Markers and aiding functions

when play begins:
	add { "Tiger Shark" } to infections of guy;
	add { "Tiger Shark" } to infections of furry;
	
ts_warrior is truth state that varies.		[registers if the player is fighting the shark warrior or not.]
ts_warrior is usually false.
tsw_victory is a truth state that varies.	[registers whether Tiger Shark Warrior won or not.]
tsw_victory is usually false.
tsw_fsd is a number that varies.	[registers if the player is a feral sea dragon. It's a shortcut for checks. 0 = none, 1 = feral sea dragon, 2 = feral sea dragoness]
tsw_fsd is 0.

to TigerSharkInfect:	[Function to infect the player. By default the Tiger Shark is non-infective because of the Tiger Shark Warrior]
    Setmonster "Tiger Shark";
    choose row monster from the table of random critters;
    now non-infectious entry is false;
    infect "Tiger Shark";
    now non-infectious entry is true;

Section 1 - Monster Responses
	
to say TigerSharkDesc:
	setmongender 3; [male]
	choose row monster in Table of random critters;
	if ts_warrior is true:
		say "     You are faced with a scarred Tiger Shark. His front is white while the rest is ochre and striped. If you don't believe his bulging muscles muscles that he's a fighter, the rest of his body speaks volumes with his scars.";
		say "     He doesn't wear anything that would cover the slit at his groin. It's paired with anal fins to each side. He only has a rope tied around his hips with small bags and and some kelp fastened to it. What catches your eyes are the teeth of his past conquests that are worn as an ornament around his neck.";
		say "     Noticing you staring at his neck with your draconic visage the shark shows you a toothy grin 'Don't worry, I'll add one of yours to it!'";
	else:
		say "     REMOVE ME";

to say Tiger Shark wins:
	if ts_warrior is true:
		now tsw_victory is true;
		if hp of player > 0:
			say "     You cower and sink your head submissively to the floor. The shark seems stumped as he just stares at you quizzingly for a moment. You even turn around, showing him your backside to give him the right idea.";
			say "     'That is unusual. Fine by me!' The dragon wrestler was back to his old self, showing you his toothy grin again. 'Don't worry, I'll still good take care of you!'";
		else:
			say "     You are knocked to your back[if scalevalue of player > 3] despite your considerable size[end if]. 'Hah!' the victor exclaims, '";
			if bodyname of player is "Feral Sea Dragon":
				say "     You dragons walk around here and think you can conquer everyone";
			else:
				say " You are pathetic. You walk around the beach and probably hope to find another one of these dragons hunting for prey";
			say ". I think you need to be taught a lesson, before I send you back.'";
		say "     The shark is now onto you, he was stroking along your belly. You can't say that you were expecting this, but find yourself calming down a bit as he did nothing but feel along you. You catch him grinning at you, as you start to relax. His hands trace down from your chest towards your crotch.";
		if anallevel is not 1:
			say "     You meekly let out a protesting squeal as he pushes your legs apart";
			say ". Not reacting to you, he probes your hole, spreading it with two fingers. ";
			if (bodyname of player is "Feral Sea Dragon") or (bodyname of player is "Feral Sea Dragoness"):
				say "You raise your long neck to take a look at your partner and find ";
			else:
				say "You raise your head and see ";
			say "that he sports two erections that poke out of his genital slit. You cannot help but gulp, as you see him jerk up and down one of his cocks, while his other hand is kept on your anus.";
			say "     When the tiger shark feels satisfied with the preparations, he aligns his twin dicks and [if cunts of player > 0] pushed them into your pussy and anus at the same time.[else] pushed one of them into you.[end if]";
			say "     [if cunts of player > 0]You claw at the sand, as both of your holes receive a heavy pounding. It doesn't take long for you to reach your climax, roaring and bucking out your hips.[else if cocks of player > 0]The tiger shark keeps humping away at you, which leaves you a lust addled wreck on the sand. Your unattended cock bobs up and down as the warrior is driving his shaft in and out of you. His length continuously prodding your prostate eventually does send you over the edge, making your [cockname of player] cock shoot your load at your chest and face.[else]The tiger shark kept humping away at you, which left you a lust addled wreck on the sand. His length continuously prodding your anal walls eventually does send you over the edge, making you claw at the sand.[end if]";
			say "     Satisfied with driving his partner towards a climax the shark picks up his pace. You gasp when you feel his dicks twitching inside you [if cunts of player > 0]filling both your anus and your pussy each with a large dose of cum.[else]filling your anus with his large load.[end if] In your afterglow you are marvelling at the warmth of his load inside you.[impregchance][mimpregchance]";
		else:
			say "     You growl angrily at the shark, not wanting him to touch you there. The shark kneads your inner thighs in response, a little further away from where you didn't want him to go. 'Don't worry, I won't hurt you. I think you'll enjoy this.'";
			if cocks of player > 0:
				say "     The shark moves on to grab your [cock of player] cock, lifting it up. You are worried, as he gets his mouth closer but he only licks along your tip. ";
				if cockname of player is "Feral Sea Dragon" or cockname of player is "Feral Sea Dragoness":
					say "He almost seems obsessed with your length, as he keeps worshipping it. You can only moan softly with him tying to work out your load. ";
				say "Stroking and licking along your cock, you are eventually brought to an orgasm. Your lover directs your twitching dick towards your face, making you shame yourself with your [cum load size of player] load.";
			else if cunts of player > 0:
				say "     The tiger shark moves down on you. Suddenly you feel a wet sensation against your nether lips. The shark seems content enough to just eat out you out. His pointed tongue is driven into you, tasting your insides. The warrior keeps tongue-fucking your pussy until you fill his mouth with your juices.";
			else:
				say "     The tiger shark keeps feeling around your groin and eventually stops to take a closer look. When he realizes that your crotch is indeed featureless, he goes back to massaging your thighs. He touches you in many spots, trying to relieve you of your stress. After a drawn-out massage the shark seems satisfied enough with your relaxation and lets go of you.";
		say "     'Alright, that'll teach you to walk around this area.'[line break]";
	else:
		say "     REMOVE ME";


To say Tiger Shark loses:
	if ts_warrior is true:
		now tsw_victory is false;
		say "    The tiger shark is shocked as he topples backwards. 'This can't be. I am only fighting you dragons!' While his words claim otherwise, he seems to have gotten pretty worked up during your fight with his twin dicks poking out of his slit.";
		say "    Do you want to fuck the masculine warrior?";
		if player consents:
			say "     Your gaze wanders the body of the aquatic man. You subconsciously lick your mouth as you explore this beefcake with your eyes.";
			if bodyname of player is "Feral Sea Dragon":	[Check body of player]
				now tsw_fsd is 1;
			else:
				now tsw_fsd is 2;
			say "[TSWSexSelection]";
		else:
			say "     You give the shark a cold glare and even kick some sand onto him as you turn around to leave.";
	else:
		say "     REMOVE ME";
		
to say TSWSexSelection:	[The Sex menu that shows up]
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck on his cocks";
	now sortorder entry is 1;
	now description entry is "Go down on the brawler's twin dicks";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Bend him over";
		now sortorder entry is 2;
		now description entry is "Get some shark ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride one of his cocks";
	now sortorder entry is 3;
	now description entry is "Take a seat in his lap";
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
				now sextablerun is 1;
				if (nam is "Suck on his cocks"):
					say "[tsw_oral]";
				if (nam is "Bend him over"):
					say "[tsw_fuck]";
				if (nam is "Ride one of his cocks"):
					say "[tsw_ride]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the bare-breasted young woman, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
Section 2 - Dominant Sex Scenes

To say tsw_oral:
	if tsw_fsd is 0:
		say "     You make your way down and begin stroking both of his shafts. The fighter rested one of his hands on your head, smiling warmly at you, as you pump away at his twin shafts.";
		say "     Wanting to get a taste, you take one of these shafts into your mouth, teasing the slit at the tip of the aquatic cock. You make sure not to neglect the other. The shark prickles your skin slightly as he grabs tighter onto you, exhaling deeply. You take turns, sucking one cock off while you are stroking the other.";
		say "     Your ministrations eventually make the shark grab onto your head tightly and drive the currently serviced cock deeply into your throat. Both of shafts pulse; one filling, while the other one covers your face with his gooey spunk. The shark keeps holding you for a bit, marvelling at his climax. You swallow down his load, as he seems content to just keep you to your knees for a bit.";
	else:
		say "     You reach down with your long neck and give the tips poking out of his slit an experimental lick. The tips are slimy and leak precum already. The smell permeates your taste buds, but remind you of these wonderful sea dragons. Driving you almost mad, you keep licking and sucking on his slit, coaxing out his hidden dicks.";
		say "     The tiger shark seems to get a little overwhelmed by your attention and drives his claws into the sand. You pick one of his dicks and slather it with your saliva. You spend a good amount of time alternating between his dicks, licking and sucking on them.";
		say "     At some point the tiger shark can take it no longer and he bucks is hips, shooting his load into and onto your snout.";

To say tsw_fuck:
	if tsw_fsd is 0:
		say "     You claw at his ass, while you're still making out. You whisper that you'd like to fuck him. 'Alright, but you better be good at it,' the shark with a big grin challenges you.";
		say "     He gets down on all fours and presents his toned butt in all its glory to you. You kneel, grab his tail and move it over your shoulder, to gain easier access to his ass. As you spread his cheeks apart, you realise that he seems to be leaking some cum from an earlier encounter. Kinky, so this guy hunts dragons to ride them later.";
		say "     Egged on, you align your cock and keep prodding his pucker, teasing him. 'Come on, just push in already, or do you want me to do the work?'";
		say "     Obliging his wish you push in. Surprisingly your cock meets little resistance as you almost hilt with the first push. The dragon cum lubricating your dick definitely helps. Despite that he still feels tight enough on your cock. Seeing that he seems to be quite experienced with taking it from behind, you start humping in earnest straight away.";
		say "     Your partner sneaks one of his arm down to stimulate his twin shafts. You're practically fucking the shark into the sand, as he isn't able to keep himself up in his lust addled form. Suddenly you cry out and hilt one last time within the brawler, unloading your [cum load size of player] load inside him. This is enough to also set the shark off, whose shafts unload into the sand. You feel it's a shame that this virile load just goes to waste.";
		WaitLineBreak;
		say "     As you push out, a bit of your added load flows out of his tailhole, mixed with the dragon cum. The fluids seemed to seep into your dick's skin quickly, trying to work its way into your system.";
		infect "Feral Sea Dragon";
		LineBreak;
	else:
		say "     You reach down with your long neck and give his tailhole experimental lick. To your surprise a bit of cum seeps out of his pucker. The taste permeates your taste buds, but remind you of these wonderful sea dragons. The strong taste driving you almost mad, you push your tongue into him, lapping up the cum of your predecessors. This brawler is just a slut after all, maybe he even submitted to some other dragons.";
		say "     This thought seems to drive a bit of your feral side out of you, as you pull your mouth away and roughly prod your [Cock Size Desc of player] cock against his opening. The warrior groans in discomfort, while you try to force your shaft into him.";
		say "     You pin his arms to his sides as he tries to reach for you; you don't want him to have any influence over you. Eventually your shaft finds its halt within the sharks anus and you keep pressing forward. Finally your hips meet his and you rest on him for a brief period. Then you pick up your pace and fuck him roughly. The shark keeps panting, trying to adjust to your pace.";
		say "     As you're humping him you take note that the once confident and cocky shark is now grabbing onto you, even begging you to fuck him harder. Seeing the shark be reduced to a common whore is enough to set you off, hilting inside him, one last time. You unload your [cum load size of player] load into him, adding to the cum of the other dragons.";
		say "     You pull out of him and glance over the aftermath. The shark doesn't seem to have reached his climax yet, which leaves him begging you for more. You just push him back, content in having used him solely for your need. One other part of you is worried that this shark somehow was able to bring the worst out of you.";
		infect "Feral Sea Dragon";

To say tsw_ride:
	if tsw_fsd is 0:
		say "     You bite your lower lip, looking at these wonderful cocks. You need them inside you. 'Sure, dude,' the shark chimed, lying down on the sand.";
		say "     You take a seat on his lap, not bothering with more foreplay, convinced that his slippery dicks are lubricated enough. You grab one of his dicks and align your [if cunts of player > 0]cunt[else]own pucker[end if] to slowly sit down on it. You gasp, as the tip of his length slowly enters you - the shape making the ordeal easier. You take your time to get used to his girth and keep sinking down on his cock. The cock really is slippery, maybe he had fucked somebody else just before he engaged you.";
		say "     As you hilt on the shark's dick, you slowly rise up again, dictating the pace of the ride. The shark puts his hands on your hips, his claws teasing the skin on your ass. The shark helps you rise and sink on his cock, but over time he's getting carried away and ends up bucking his hips and hold you in place instead.";
		say "     You are too lost in pleasure to stop him and instead take the firm fucking. You gasp and moan [if cunts of player > 0]with your pussy getting battered by the shark-like dick. You don't know how much time passes but this heavenly fuck goes on long enough, that you hit the point of no return. You quiver and grab onto him in your orgasm; your vaginal walls contracting on your partner's cock.[else if cocks of player > 0]with your prostate getting battered by the shark-like dick. You don't know how much time passes but this heavenly fuck goes on long enough, that you hit the point of no return. Your cock pushes its load onto the shark, tainting his chest and also face. He doesn't seem too bothered by that, as he seems to be keen on finishing himself.[else]with your anal walls getting pounded on. You don't know how much time passes but this heavenly fuck goes on long enough, that you are put over the edge. You quiver and grab onto him in your orgasm; your anal walls contracting on your partner's cock.[end if]";
		say "     The tiger shark is determined, driving his length into you in earnest with his other dick reaching into your groin. You grab his second leaking dick and stroke along it, feeling his pulse. With your added help he cried out in his climax, driving his claws into your ass. His dicks squirt their voluminous load into and onto you.";
		if cunts of player > 0:
			impregchance;
		else:
			mimpregchance;
	else:
		say "     You reach down with your long neck and give the tips poking out of his slit an experimental lick. The tips are slimy and leak precum already. His smell permeates your taste buds, but reminds you of these wonderful sea dragons. Driving you almost mad, you keep licking and sucking on his slit, coaxing out his hidden dicks. You need these inside you.";
		say "     You dart forward, not wanting to waste more time and align your behind with his crotch. You let out a frustrated growl as you crouch down, trying to get his cock into your [if cunts of player > 0]pussy[else]tailhole[end if]. Realizing, dryhumping him with your ass won't do anything, you do overcome yourself to muster up some patience. You grab one of his dicks and push their tip into your [if cunts of player > 0]lips[else]pucker[end if].";
		say "     While his cocks are lubricated, you still need some time to push the length into you the first time. Gritting your teeth, you still keep pushing downwards. This also seems to cause some discomfort to your shark toy.";
		say "     When you finally hilt on his shaft, you pick yourself up, causing the shark to exhale. This time you dropped your hips, impaling yourself on his dick again. With a rough pace, you keep fucking yourself on this marvellous rod, poking you in all the right spots.";
		say "     At some point the shark tries to grab your hips but you react in time, pinning his arms to his sides. You want to tell him that he isn't in control but all that comes out of you is an angry growl.";
		say "     You keep fucking him for quite some time, causing him to climax several times but you don't care, you are doing this for your own pleasure. Thankfully his refractory period seems to be short enough that you can just keep fucking him after he climaxed. He still writhes in painful pleasure from all of this overstimulation.";
		say "     His torture ends as you drop one final time on his hips, roaring out in your own orgasm. [If cunts of player > 0]Your cunt squeezes him tightly, flooding his groin with your juices.[else if cocks of player > 0]Your anal walls squeeze his dick tightly, as you shoot your load and aim for his face.[else]Your anal walls squeeze his dick tightly, while you drive your claws into the shark.[end if]";
		say "     You pull out of him and glance over the aftermath. The former cocky warrior is now just a mess, overwhelmed by all the orgasms that he's had. You lap at his dicks, eager to taste his salty, sticky cum one more time. The shark only whimpered in response. You had to overcome yourself again to let go of him. Despite how you treated him before you wait until the brawler recovers. As you are watching over the tiger shark you wonder how he was able to bring the worst out of you.";
		if cunts of player > 0:
			impregchance;
		else:
			mimpregchance;
		
Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tiger Shark";
	now attack entry is "[one of]He drives his elbow forcefully into your chest.[or]You are hit by the tiger shark spinning around, smacking you with his heavy tail.[or]You don't react quickly enough and see an ochre fist punching you across the face.[or]The tiger shark grapples you from behind and sends you face forward into the sand.[or]The Tiger Shark catches you and bites down on your shoulder. While his teeth don't penetrate your skin it is enough to make you groan in pain.[at random]";
	now defeated entry is "[Tiger Shark loses]";
	now victory entry is "[Tiger Shark wins]";
	now desc entry is "[TigerSharkDesc]";
	now face entry is "triangular, streamlined face. You still breathe normally in and out of your nostrils that happen to be at the end of your snout. When you open your mouth you show several rows of razor sharp teeth, fit to bite off anything.";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "bulky, but still flexible enough to manoeuvre well in the water. Your form is a sight to behold with its chiseled and well-toned form, adorned with a large fin on your back and anal fins on your crotch. Your thick arms end in clawed hands. [if breast size of player > 0]Your feminity is still accentuated with your hourglass-shape and your breasts.[end if] Your body is held up by two equally strong legs in a digitigrade stance. Your legs ends in elongated feet that are armed with three clawed toes";
	now skin entry is "[one of]striped, ochre[or]smooth[or]tough[or]slippery[at random]"; [ format as the text "You have (your text) skin"]
	now tail entry is "You have a large, finned tail dragging along from behind. It feels a little unnatural to not be using the tail to manoeuvre around.";[ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]pointed[or]slick[or]shark[at random]";[ format as "You have a 'size' (your text) cock ]
	now face change entry is "your face shifts, pushing out into a triangular shape. You groan, as you feel your mouth enlarging. Painfully lots of sharp, pointy teeth push out of your jaw to occupy the extra space that has been created. Your tongue also becomes larger and and pointed"; [ format as "Your face feels funny as (your text)" ]
	now body change entry is "you are subjected to the effects of your infection. Your body burns away any fat you might have had. The void is quickly replaced by your muscles bulging out. At the same time the nanites worked to fit your body more into an aquatic lifestyle. You grow fins - one on your back and two smaller ones surrounding your crotch. Your toes fuse together until you are left with three. They are tipped with claws similar to your hands now, which thankfully did not reduce in numbers. Your feet and legs are reformed to assume a permanent digitigrade stance"; [  format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin itches, as it slowly peels away. Underneath your old skin is another layer of smooth looking skin. Your new hide is ochre in colour and adorned with brown stripes, while the your front is a shade of creamy white. When you stroke along your new skin, you realize that your body feels like sandpaper, if you stroke away from your tail-end but smooth if you go towards it. That's going to need some getting used-to"; [ format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a tail snakes its way through your pants. You tumble over and take off your pants to make this process less painful. When your tail is done forming, you are left with a large shark-like tail. It has a pair of smaller fins along its underside, while your tip is equipped with a large tailfin"; [ format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock tapers towards its end and its skin becomes more flesh coloured. Your new dick feels slippery on touch"; [ format as "Your cock feels funny as (your text)" ]
	now str entry is 35;
	now dex entry is 19;
	now sta entry is 30;
	now per entry is 14;
	now int entry is 11;
	now cha entry is 30;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 115;                   [ How many HP has the monster got? ]
	now lev entry is 12;                   [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 27;                  [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";          [ Case sensitive]
	now cocks entry is 2;                 [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 14;
	now cock width entry is 6;            [ Size of balls ]
	now breasts entry is 2;               [ Number of nipples. ]
	now breast size entry is 0;           [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                 [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 10;
	now cunt width entry is 7;
	now libido entry is 30;               [ Amount player Libido will go up if defeated ]
	now loot entry is "Devil's Purse";    [ Loot monster drops, ]
	now lootchance entry is 0;           [ Chance of loot dropping 0-100 ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]firm[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]shark-like[or]aquatic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";
	
Table of Game Objects (continued)
name	desc	weight	object
"Devil's Purse"	"A black casing resembling the egg capsule of a shark. It's empty but it still seems warms despite its slippery touch."	1	Devil's Purse

Devil's Purse is a grab object. It is part of the player. Understand "dpurse" as Devil's Purse.

The usedesc of Devil's Purse is "[DevilsPurseUsing]";

to say DevilsPurseUsing:
	say "You take out the empty egg casing, and give it an experimental lick. Despite the smell its taste is pretty pleasant, tasting like a mix of fish and something sweet that you cannot quite pin. You engulf it entirely in your mouth and are invested in licking and chew along the rubbery membrane. After some time you end up swallowing the tough and slippery skin, content with the effects it may have on you.";
	TigerSharkInfect;
	decrease hunger of player by 5;

instead of sniffing Devil's Purse:
	say "Like any remains you'd pick up on the beach it smells like fish and of the sea. It's not entirely pleasant.";

when play ends:
	if bodyname of player is "Tiger Shark":
		if humanity of player < 10:
			say "     REMOVE ME";
		else:
			say "     REMOVE ME";

Tiger Shark ends here.
