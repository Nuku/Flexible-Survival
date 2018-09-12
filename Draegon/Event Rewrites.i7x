Version 1 of Event Rewrites by Draegon begins here.
[ Version 0.0 - Old Events by Kaleem                                 ]
[ Version 0.1 - Event rewrites by Draegon in progress                ]
[               Events to be broken up and sorted by area afterwards ]

"An assortment of scenes by Kaleem M. to be added to Flexible Survival. Re-written by Draegon."

Section 1 - Anal Probing

Anal Probing is a situation.
The sarea of Anal Probing is "Beach".

when play begins:
	add Anal Probing to badspots of furry;
	add Anal Probing to badspots of guy;

Instead of resolving Anal Probing:
	say "     As you climb over the crest of a sand dune you find yourself witnessing a very strange sight. You've seen many weird things in the city as of late but this just might take the cake. Before you is a large, muscled, and very male anthro lion lying on the sand with what appear to be metallic-looking tentacles writhing in and around him. The numerous shiny appendages seem to literally sprout from the ground, with some burrowing to the surface as others retract to who knows what is their source beneath. Meanwhile, the anthro lion is spasming on the ground from what the creature is doing to him, his clawed fingers digging grooves into the sand as he twitches uncontrollably, drool leaking from his open muzzle. Watching from your hiding place at the edge of the dune you see him yowl in helpless pleasure, thrusting his broad hips reflexively into the air.";
	say "     Reacting to their captive's arousal with what seems to be joyful haste, the tentacles already entering the lion's tailhole and mouth widen their girth, sliding deeper even as they do so. The ecstatic howls and groans from the man make it clear that his prostate is being milked. Writhing and flexing, most of the other tentacles wrap around his torso and pin the anthro feline down as additional and relatively delicate appendages stroke and tease his cock mercilessly. At the same time as they milk precum out of the lion, the maned cat's dark pucker is being forced to stretch what looks to be impossibly wide as the thickest of tentacles wriggle and writhe within him. Thankfully for the guy, they seem to be supplying their own lube, as his hole is slick with an odd, shiny fluid.";
	WaitLineBreak;
	say "     Pondering whether this is some new, bizarre infection that has infested the beach, you decide that it may be best to just watch for now. Who knows, the tentacle thing might be attracted to vibrations in the ground or something, so both going to the lion's aid or running away could be perilous. Unable to tear your eyes from what is happening not too far away, you see the captive anthro's cock throb hard, splashing his abs and several of the tentacles with a gush of precum. You can see his front being all shiny in the [if daytimer is day]sunlight[else]moonlight[end if], telling you that the creature has had him in its grasp for a while now, keeping him in a state of high arousal as it does what it wants. As you are starting to contemplate what that may be, a bright flash of incandescent white light suddenly blankets the beach, nearly blinding you in the process.";
	say "     Quickly shielding your eyes from the overly brilliant light you find yourself able to faintly see between your fingers what is going on. As best you can you observe there is a strange, vaguely humanoid figure fiddling with the lion but it's too bright to see precisely what is going on. The next thing that happens is an ear-splitting noise forcing you to clap your hands on your ears to protect them, leaving nothing to do but clenching your eyes shut as good as you can. Even so, you feel like you're seeing some of the brightness as it shines through your eyelids. Thankfully, whatever is happening is over quickly, replaced by a sudden silence and stars dancing before your eyes. Blinking your eyes open to find out what is going on, you catch a second's glimpse of some object zipping up into the sky towards the east, but before you can follow it with your gaze it is already gone.";
	WaitLineBreak;
	say "     Focusing your gaze on where the lion was, you find him still there but unconscious and looking a bit worse for wear. His balls are looking somewhat oddly large on his body, being almost the size of grapefruits, which is a quite respectable size even for a tall and strapping predator like this dude. The lion's cock appears to have grown as well, as almost a foot of lion manmeat is poking out of his fat sheath, lying on his abs and still oozing cum. There is no sign of the creature that the tentacles belonged to, and you wonder if it just burrowed underground completely or took off with that other being.";
	LineBreak;
	say "     [bold type]What will you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Check out the naked lion. Might be fun to play with him.";
	say "     [link](2)[as]2[end link] - Sprint over to the lion and help him. He's been through quite an ordeal.";
	say "     [link](3)[as]3[end link] - Keep your distance and move on. Getting close could be dangerous.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to approach with lusty intentions, [link]2[end link] to go help him or [link]3[end link] to move on.";
	if calcnumber is 1:
		LineBreak;
		say "     You decide to have some fun with the lion.";
		say "[AnalProbingSexMenu]";
	else if calcnumber is 2:
		LineBreak;
		say "     Deciding to help the lion you quickly sprint over, stopping at his side. You squat down beside the unconscious feline and place a gentle hand on his arm, trying to rouse him. After a few gentle shakes, you realize that it is having no effect and decide to try harder, rolling him over onto his back and giving his cheeks some light slaps. Even then, other than snorting a little, he is unresponize to being shaken. Seems like this man is so fucked-out and exhausted that he just can't wake up right now. Eventually, you are forced to admit that further attempts will be useless right now, so you do your best to make him comfortable, pushing some sand around to give him a bit of a head rest as he dozes and sleeps off his ordeal.";
		now Resolution of Anal Probing is 1; [helped the lion]
	else:
		LineBreak;
		say "     Shaking your head about the weird situation you stumbled into, you gain some distance and continue your walk along the beach.";
		now Resolution of Anal Probing is 99; [disinterest]
	now Anal Probing is resolved;

to say AnalProbingSexMenu:
	LineBreak;
	say "     What do you want to do with the naked, unconscious lion?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muzzle";
		now sortorder entry is 1;
		now description entry is "Face-fuck him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck the lion off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the powerful feline's equine shaft";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jerk him off";
	now sortorder entry is 3;
	now description entry is "Milk the bounty of those big balls out of him";
	[]
	if player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 4;
		now description entry is "Slide your dick into his stretched hole";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mount that big dick and slide your ass down on it";
	now sortorder entry is 5;
	now description entry is "Take the lion's cock up your rear end";
	[]
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Mount that big dick and slide your pussy down on it";
		now sortorder entry is 6;
		now description entry is "Take the lion's cock up your pussy";
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
				if (nam is "Fuck his muzzle"):
					say "[BeachLionSex1]";
				if (nam is "Suck the lion off"):
					say "[BeachLionSex2]";
				if (nam is "Jerk him off"):
					say "[BeachLionSex3]";
				if (nam is "Fuck his ass"):
					say "[BeachLionSex4]";
				if (nam is "Mount that big dick and slide your ass down on it"):
					say "[BeachLionSex5]";
				if (nam is "Mount that big dick and slide your pussy down on it"):
					say "[BeachLionSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     With a shrug, you step back from the naked lion, then stroll back to the water's edge and follow the beach some more.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say BeachLionSex1: [fucking his muzzle]
	say "     Deciding to use the unconcious lion's mouth for your own pleasure you quickly position yourself on his broad chest. Grinning, you press your already rock hard cock against his feline lips and slowly slide in, savoring his hot mouth. To your shock and arousal his tongue begins working your shaft, running over every inch as you slide in deeper. Even unconcious the lion is treating your cock almost as if it's a delcious treat, sucking and slurping on every inch. You moan as you thrust in, going balls deep in rapid succession, unable to hold yourself back as you pleasure yourself with his mouth.";
	say "     You hear the crunch of sand and open your eyes, immediately noticing an anthro zebra man watching the erotic display you are putting on. He grins widely and gives you a thumbs up as the bulge in his speedo swells larger. You grin at him and continue your fun, entangling your fingers in his lush mane, using it as a handhold for your pleasure.  Moaning, you find yourself unable to hold back, thrusting balls deep before unloading into his maw. You hear a moan and look up, seeing the zebra man with his cock in hand, stroking it as he orgasms all over the sand. He gives you a wink as he tucks his cock back into his speedo and walks off, leaving you with the lion.";
	say "     Slipping your cock out of his mouth, you look at the still unconcious lion. Surprised that he is still unconcious but not overly caring after you got what you wanted. Deciding to be at least a little bit of a good person you push the sand up into a natural headrest for the stranger and continue on your way.";
	now Resolution of Anal Probing is 2; [fucked the lion's muzzle]

to say BeachLionSex2: [sucking the lion]
	say "     Taking a long look at the lion man's cock you find yourself licking your lips, admiring the sheer size of his man meat. At over a foot long you realize that taking it all will be a fun challenge. Getting on your knees in between his legs you angle the cock up, using its excessive production of precum to thoroughly slick it up before you lean in for a taste. Tracing a lick along his length you savor the taste and sensations of it, between the oddly sweet precum and the fleshy barbs on his cock you cannot get enough of it. Soon enough you find yourself suckling on the head of the meaty member, swallowing every drop of precum that oozes out. Eager for more you stretch your mouth over his prodigious girth, tongue pressed flat against it as the sheer size of it fills your mouth.";
	say "     Not one to shirk a challenge, you take ever more of his length, only pausing as it hits the back of your throat. Readjusting the angle you dive back in, taking the last few inches of his meaty member. You moan as your lips press up against his fat sheath, realizing that you've taken over a foot of cock into your eager maw. Slowly sliding all but the head out, you shudder as you feel the fleshy barbs rake along the length of your throat.";
	WaitLineBreak;
	say "     The unconcious lion man lets out a groan as you slide his cock out of your mouth and with a grin you dive back in, swallowing it all within seconds. You slide your mouth and throat on and off his cock over and over, keeping him on edge until you're ready. Once you've had your fun you decide to let the poor unconcious lion cum, swallowing around his cock lodged in your throat. With a growl he cums, his cock swelling bigger in your throat before you feel the first of his load firing almost straight into your stomach. Shot after shot of lion cum fills you, your stomach soon feeling more stuffed than it has in a long time. He cums for minutes on end, steadily filling your stomach to the point your belly bulges a bit from the sheer amount.";
	say "     You slide the lion man's cock from your throat and stand up slowly, feeling the sheer volume of cum sloshing around a bit in your swollen gut. The warmth alone is almost erotic. Full and satisfied you decide to leave the hunky feline be and slowly make your way further down the beach.";
	now Resolution of Anal Probing is 3; [sucked the lion]

to say BeachLionSex3: [jerking the lion]
	say "     Noticing that the lion man's cock is still very much erect from his previous treatment you decide to help the poor feline out a bit. Quickly getting on your knees you find yourself almost face to face with a foot or more of leonine cock. Grinning, you reach out and grasp the turgid length, slowly stroking it up and down, feeling the rubbery barbs tease your hands as you jerk him off. Within seconds his cock begins to leak precum like a broken faucet, rapidly slicking up his shaft as you play with it. Atlernating between fast and slow strokes you slather the precum over every single inch of it, using it as lube for your ministrations.";
	say "     The lion man begins to growl sleepily as his orgasm nears, and noticing this you speed up your strokes. You pause your stroking for a moment, getting a fun idea. Gathering up some precum you wonder about the creature that put the man in this state, running your fingers down over his crack and feeling his pucker readily expanding at the slightest touch of a digit. Pressing further in you quickly add two more fingers, stretching his hole wide as you search for his prostate. Finding it easily due to its somewhat swollen state you grin and prod it heavily with three fingers at once. Within minutes the muscled feline lets out a loud growl as his release hits him, cum firing out all over your hands, his cock, and his chest. Looking at the mess you chuckle a bit, licking the cum off your hands as you rest after your fun.";
	now Resolution of Anal Probing is 4; [jerked the lion]

to say BeachLionSex4: [fucking the lion]
	say "     You glance down at the unconcious lion man's furred ass, drooling a little at the sight of his slightly gaping hole. You can't help yourself as you kneel down and bury your face in between his cheeks, inhaling his musk and beginning to tongue his well stretched hole. He lets out a sleepy grunt as you thrust your tongue in deep, his hole widening around it with ease. His hole attempts to close around your invading tongue in vain, still too worn out from his strange experience. You continue to lap at and tongue the feline's ass with gusto for what feels like hours, drawing sleepy moans and grunts out of the unconcious lion as well as copius amounts of precum from his hard cock.";
	say "     Eventually having your fill of lion booty you decide to put his ass to good use. With an undeniable eagerness you slide your aching cock up until the head is pressing against his slick hole. Without a moment's hesitation you thrust in up to the hilt, moaning at the undeniable pleasure. The feline's ass practically feels as if it is trying to pull you in deeper as you thrust in and out in rapid succession. Soon enough the sensations are just too much to handle, your balls tightening as orgasm hits you with the force of a rocket, cum rapidly pumping out into the lion's ass. You collapse onto his back as his ass essentially milks you for every drop of cum it can. Your orgasm eventually tapering off you slip out of the feline and clamber back up to two feet, tucking your junk back into your pants. Heading back down the beach you leave the well used lion where you found him.";
	now Resolution of Anal Probing is 5; [fucked the lion]

to say BeachLionSex5: [riding lion dick, ass]
	say "     You grin a little at the sight of the challenge before you, over a foot of leonine cock radiating masculinity and just ready to be ridden. You lick your lips, quickly straddling the lion man's lap and angling his barbed cock to your twitching hole. Gathering up a handful of his precum you slather it over the head of his cock, getting every nook and cranny of it slicked up. Once you are satisfied with your work you slowly press back, feeling the thick head of the feline cock spreading you open, forcing a moan out of your throat as the inches slide in. Even with the lubrication he still feels massive, causing your hole to radiate a pleasant ache as it is stretched wide.";
	say "     Slowly pulling a few inches out you gasp, the fleshy barbs raking your insides, scraping over your prostate and sending waves of pleasure throughout your body. Ever more eager to take the entire thing you quickly press back down, going even further down on the lion's massive member than before. You eagerly slide up and down the fat cock in your ass, feeling the barbs rake over your insides over and over, bringing you almost to the edge. You grit your teeth as you slide down the last few inches until his entire cock is lodged inside of you, only letting out your breath once you feel his massive balls pressed against your ass. Resting to get used to the sheer girth you clench repeatedly, milking precum from the lion's huge balls to further lube up your insides.";
	WaitLineBreak;
	say "     Finally adjusted to the girth, you slowly slide the feline's excessive endowment out until only the head remains inside, biting your lip in pleasure as the barbs rake your insides on the way out. Rapidly spearing yourself back down onto the shaft you grin as the lion lets out a sleepy growl of pleasure. Spurred on by the pleasure you are sharing with the lion you begin to piston yourself up and down, eagerly taking the entire shaft over and over. Soon enough you can't hold back any longer and slide down balls deep in an instant, your balls clenching as your orgasm hits. The contents of your balls cover the lion's chest within seconds, matting his fur with your load.";
	say "     To your surprise your own orgasm spurs on the lion's as well, his humongous balls twitching against your ass as they unload into you, filling you with enough cum to swell your belly more and more. Within the period of only a few minutes you are swollen enough with cum to look pregnant. One the big cat's orgasm ends you slowly stand up on wobbly legs, feeling it as every inch of thick leonine cock slides out of you, the barbs raking over your sensitive insides. Groaning, you rub your swollen gut as you leave the lion where he lay.";
	now Resolution of Anal Probing is 6; [anal ride for the lion's cock]

to say BeachLionSex6: [riding lion dick, pussy]
	say "     You grin a little at the sight of the challenge before you, over a foot of leonine cock radiating masculinity and just ready to be ridden. You lick your lips, quickly straddling the lion man's lap and angling his barbed cock to your wet and dripping pussy. Gathering up a handful of his precum you slather it over the head of his cock, getting every nook and cranny of it slicked up. Once you are satisfied with your work you slowly press back, feeling the thick head of the feline cock spreading you open, forcing a moan out of your throat as the inches slide in. Even with the lubrication he still feels massive, causing your folds to radiate a pleasant ache as they are stretched wide.";
	say "     Slowly pulling a few inches out you gasp, the fleshy barbs raking your insides, scraping your inner walls and sending waves of pleasure throughout your body. Ever more eager to take the entire thing you quickly press back down, going even further down on the lion's massive member than before. You eagerly slide up and down the fat cock in your pussy, feeling the barbs rake you again and again, bringing you almost to the edge. You grit your teeth as you slide down the last few inches until his entire cock is lodged inside of you, only letting out your breath once you feel his massive balls pressed against your crotch. Resting to get used to the sheer girth you clench repeatedly, milking precum from the lion's huge balls to further lube up your insides.";
	WaitLineBreak;
	say "     Finally adjusted to the girth, you slowly slide the feline's excessive endowment out until only the head remains inside, biting your lip in pleasure as the barbs rake your insides on the way out. Rapidly spearing yourself back down onto the shaft you grin as the lion lets out a sleepy growl of pleasure. Spurred on by the pleasure you are sharing with the lion you begin to piston yourself up and down, eagerly taking the entire shaft over and over. Soon enough you can't hold back any longer and slide down balls deep in an instant, femcum squirting freely as your orgasm hits. Your fluids hit the lion's crotch and abs, matting his fur with your load.";
	say "     To your surprise your own orgasm spurs on the lion's as well, his humongous balls twitching against your crotch as they unload into you, filling you with enough cum to swell your belly more and more. Within the period of only a few minutes you are swollen enough with cum to look pregnant. One the big cat's orgasm ends you slowly stand up on wobbly legs, feeling it as every inch of thick leonine cock slides out of you, the barbs raking over your sensitive insides. Groaning, you rub your swollen gut as you leave the lion where he lay.";
	now Resolution of Anal Probing is 7; [pussy ride for the lion's cock]

Event Rewrites ends here.
