Version 2 of Zoo Events by Sarokcat begins here.
[Version 2.1 - Moved AngieTrapped to Angie file]

"Adds a series of random events to Flexible Survival set in the zoo area."

Section 1- Electric shockers

[Moved to E-shocker file in Stripes folder.]

Section 2 - Hyena cages


Table of GameEventIDs (continued)
Object	Name
Hyena cages	"Hyena cages"

Hyena cages is a situation.
The sarea of Hyena cages is "Zoo".

instead of resolving a Hyena cages:
	say "     As you walk around the zoo you come to an enclosure. A couple of the metal bars that once held its residents inside are broken and bent, leaving a gap large enough for a human-sized creature to get through. Whatever escaped must have been quite strong to break solid steel. With a cursory glance at the enclosure you can see a pile of cloth scraps lies just outside the bars, the smell of cum wafts over from the pile leaving little doubt as what might have happened to it.";
	LineBreak;
	say "     [bold type]Do you want to search the cummy pile of cloth?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Search the pile";
	say "     ([link]N[as]n[end link]) - Leave";
	if Player consents:
		LineBreak;
		say "     You carefully root through the soggy pile of rags, discovering a badly damaged camera and, in what used to be a pocket, a granola bar still in its package. The camera unfortunately no longer works, but you manage to eject a tape from it.";
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		LineBreak;
		say "[bold type]Hyena Breakout Video has been added to your tape inventory![roman type][line break]";
		add "Hyena Breakout Video" to tapes of Player;
		now resolution of Hyena cages is 1; [Player Investigated]
	else:
		LineBreak;
		say "     You decide against touching the dangerous-looking rags and move along, leaving the broken enclosure behind you.";
		now resolution of Hyena cages is 2; [Player did not investigate]
	now Hyena cages is resolved;

to say Hyena Breakout Video:
	say "     You slide the tape found in the hyena enclosure into the camera, pushing down on the side panel till it locks into place with a *click*. Then you fold out the small screen of the device, looking at it expectantly as you press 'Play' next. The screen flashes to life and you see the animal enclosure from earlier, only this time it's inhabited. Two hyenas pace back and forth in the enclosure, eyeing the bars expectantly.";
	say "     Without warning the hyena on the left jumps at the bars, snapping and growling at the cameraman. The sudden movement causes the holder of the camera to fall backwards, and as their arms flail to catch themself the camera goes flying. It lands several feet away, miraculously still intact, pointing toward the male figure now flat on his back. In the few moments it took for all of this to happen the other hyena has joined the first, and the bars begin to bow dangerously outward, creaking in warning. With a sudden snap two of the bars break almost at the same time, releasing both of the feral hyenas. The man, jerked out of his stupor by the loud sound, scrambles to his feet and turns to run.";
	WaitLineBreak;
	say "     No sooner has the man started running toward the camera before the first hyena jumps onto his back, pushing him to the ground. The second hyena comes around the man's front, and it's then that you notice the dark pink rocket starting to lengthen and swell in obvious arousal under its belly, informing you that it's most likely a male. The hyena on the man's back starts clawing with its hind legs, trying to push the man's pants down while still being hunched over on his back. After only a few tries his trousers drop, along with his underwear, leaving them in tatters around his ankles and the man's skin streaked with pink or red scratch marks. As the man's pants fall, two things become apparent: First of all that the hyena's cock, pointing down toward the ground, is so big its tip nearly touches the floor. Secondly, against all logic, the man is starting to get an erection of his own, his semi-hard length clearly visible against the hyena's bigger and darker shaft.";
	say "     The second Hyena approaches the man's face, its cock swaying slowly underneath its belly with each step. Rising up against the man's head and shoulders, managing to avoid bumping heads with its partner, the hyena ends up with said cock poised in front of the poor victim's mouth. After having it shoved against his face a few times, likely getting hyena precum smeared all over his face, the man finally opens his lips for the pointed head. As soon as the hyena's prick enters the man's mouth it starts violently jackhammering into his mouth, making the man choke and cough from the rough facefucking.";
	WaitLineBreak;
	say "     Even as the second hyena pounds away at the man's mouth, the first one lines its shaft up for the held-down man's behind, hips jerking with each attempt to get inside. At first it seems to be aiming a little too low, as though used to a different kind of anatomy, but after a dozen or so tries it finally hits the mark. The man jerks a little as it shoves its whole length in on the first thrust, but he doesn't try to move away. Instead, after a few seconds of hesitation, he actually seems to push back against the cock in his ass. The hyena doesn't really need to be encouraged though, as it's already enthusiastically pounding in and out of its victim's ass, just like the other one is doing at the front. A few minutes later the second hyena cackles with pleasure and slams its cock into the man's mouth one final time. You can see its balls, larger now than they were before, contract almost rhythmically, and the man's Adam's apple bobbing up and down with each swallow makes it obvious what's happening. The clear liquid slowly dripping from his own neglected erection makes it just as obvious that he's enjoying himself.";
	say "     Suddenly, half-hidden as it is behind the hyena's lower body, you can see the man's face begin to shift, elongating and turning more bestial. Fur starts sprouting on his cheeks, and as he gasps for air you see a glint of sharp teeth growing in his mouth. The man then groans, seemingly in pleasure, as the spotted fur spreads further down his body. The hyena behind him speeds up, ramming its hard cock in and out with animalistic fury, and then lets out a sound halfway between a growl and a groan as it buries its cock as deep as possible inside its initially reluctant mate and holds still. The man's skin goes flush as the progress of the fur spreading over his body speeds up, now reaching down to his legs and arms. You can see him twitch and shudder as the bones shift underneath the skin and fur, and he gradually ends up with an animal's legs and furry, padded hands and feet.";
	WaitLineBreak;
	say "     The man isn't the only one to change either; the two hyenas also seem to be affected, though in their case their limbs lenghten slightly, the digits on their front paws growing longer, and despite the small screen you think you can detect a small hint of awareness in their eyes. A minute or two later, when the two hyenas push themselves off the man, it's to stand somewhat awkwardly on their hind legs, looking down at the now anthro hyena between them.";
	say "     The next few minutes of the tape show the newly transformed hyena man making out with his partners, his long sloppy tongue mingling with theirs. When they finally pull away and turn to depart, the former human tears off the remainders of his now tattered shirt, steps out of his ruined pants, and tosses the scraps nonchalantly aside. Whether intentional or accidentally, they land on top of the camera, smearing the lens with cum and leaving it in near-complete darkness. A little while later the batteries die and the video ends.";

Section 3 - Pachyderm predicament

Table of GameEventIDs (continued)
Object	Name
Pachyderm predicament	"Pachyderm predicament"

Pachyderm predicament is a situation.
The sarea of Pachyderm predicament is "Zoo".
when play begins:
	add Pachyderm predicament to badspots of HermList;
	add Pachyderm predicament to BadSpots of FurryList;

Instead of Resolving a Pachyderm predicament:
	say "     Wandering through the zoo, you hear some shouting in the distance. Moving closer, you find one of the zoo employees that obviously hasn't succumbed fully to the changes yet. Unfortunately, he is stranded in the middle of one of the more open enclosures, standing on a rock in what appears to be a lake of cum. You blink at the sheer amount of the stuff coating the area, but you are distracted by some rough slapping sounds underneath the hoarse cries of the trapped employee.";
	say "     Looking around, you are shocked to spot two massive mounds of gray flesh going at it not far away, their sheer size making it hard to recognize them as the human-like herm elephants they are instead of, say, small buildings. You find yourself gaping at the ridiculous size of the one on the bottom's cock, then clap your hands to your ears as they both trumpet, the one on top erupting into the one on bottom, and the one on bottom erupting everywhere. The trapped employee moans as the lake of seed around him rises even higher. The elephant herms take a minute to rest before switching positions and starting up all over again.";
	say "     Sadly, you really don't see any way you can reach the employee to help with anything short of a helicopter, and you certainly aren't up to taking on two large foes of that size. Shaking your head, you move off into the zoo, trying not to shudder at the soon-to-be-elephantine employee's cries.";
	now Pachyderm predicament is resolved;

Section 4 - Snake knot

Table of GameEventIDs (continued)
Object	Name
Snake knot	"Snake knot"

Snake knot is a situation.
The sarea of Snake knot is "Zoo".

Instead of Resolving a Snake knot:
	say "     Traveling past the snake house, you decide to chance a glance inside, only to stare in amazement at a writhing knot of snakes of various sizes filling the room. The smell of snakes and sex fills the area, and their hissing is only broken by the occasional moan or cry of ecstasy, proving that there are a few non-snakes caught up in their mating knot as well, though you are sure they're soon to transform. Carefully, you back away from the door, not desiring to get caught up in their mating frenzy, though it could be fun to try if there were fewer of them...";
	now Snake knot is resolved;


Section 5 - Useful pamphlet

Table of GameEventIDs (continued)
Object	Name
Useful pamphlet	"Useful pamphlet"

Useful pamphlet is a situation.
The sarea of Useful pamphlet is "Zoo".

Instead of Resolving a Useful pamphlet:
	say "     Wandering around the zoo, you come across an area dedicated to visitor information. You browse through the few remaining pamphlets and find a couple that seem to be very pertinent on how to defend yourself from wild animals. Useful information indeed under the current circumstances!";
	increase XP of Player by 5;
	say "Your XP increases slightly due to the helpful pamphlet!";
	if a random chance of 1 in 6 succeeds:
		now Useful pamphlet is resolved;


Section 6 - Unidentified sex scene

Table of GameEventIDs (continued)
Object	Name
Unidentified sex scene	"Unidentified sex scene"

Unidentified sex scene is a situation.
The sarea of Unidentified sex scene is "Zoo".

Instead of Resolving a Unidentified sex scene:
	say "     Traveling through the zoo area, you arrive at one of the resting areas. In the mood for a short break, you move closer. Unfortunately, it seems several other people or creatures were here before you, and it is obvious not much [']resting['] occurred, although several of the participants were probably horizontal at one point. Looking around, you survey the splatters of cum from several unidentified participants, several articles of shed clothing tossed around haphazardly, and a variety of mixed animal prints tracked in the dirt. You really aren't sure just who all or what all enjoyed themselves here, but they definitely had a lot of fun. Sighing, you leave without taking a rest, the scene making you too nervous, and aroused, to stay there any longer.";
	increase Libido of Player by 20;
	if Libido of Player > 100, now Libido of Player is 100;
	now Unidentified sex scene is resolved;


Section 7 - Grizzly gone

Table of GameEventIDs (continued)
Object	Name
Grizzly gone	"Grizzly gone"

Grizzly gone is a situation.
The sarea of Grizzly gone is "Zoo".

Instead of Resolving a Grizzly gone:
	say "     Traveling through the zoo in search of anything of use, you come across a zookeeper's hut that seems like something broke into it. Taking a chance, you look inside and see that most of the area seems to be empty and smelling of sex. About to leave, you notice several hurried notes someone left. Picking them up, you begin to leaf through them.";
	say "     'The grizzly is gone from the enclosure this morning! No sign of it at all, and the door was left wide open! What the hell happened last night? I need to ask the night watch...'";
	say "     'Holy shit! If anyone is reading this, I found the grizzly, and watch out, he seems to be a size larger than he was yesterday! And god if he doesn't seem to be smarter now, too! I locked him out of the shed, and I should be safe in here.'";
	say "     'I don't know what the bear is up to out there, but there was a lot of grunting just a minute ago, and there is a strange smell in here now. It smells kinda... good. For some reason the shack seems to be a size too small now, though...'";
	say "     'Grizzly so good, grizzly cock sized juuust right.' The last note ends there, trailing off into an unrecognizable scrawl.";
	now Grizzly gone is resolved;


Section 8 - Tasty Treats

Table of GameEventIDs (continued)
Object	Name
Tasty Treats	"Tasty Treats"

Tasty Treats is a situation.
The sarea of Tasty Treats is "Zoo".

Instead of Resolving a Tasty Treats:
	say "     Wandering along the zoo pathways, you come across a zoo candy cart, stuffed full with plenty of still-wrapped treats and snacks. After checking around to make sure it is safe, you take a short break to help yourself to several different delicious snacks before moving on your way, feeling happy and full.";
	now hunger of Player is 0;
	now Tasty Treats is resolved;


Section 9- - AngieTrapped

[Moved to Angie file]

Section 10 - Panda parade

Table of GameEventIDs (continued)
Object	Name
Panda parade	"Panda parade"

Panda parade is a situation.
The sarea of Panda parade is "Zoo".

Instead of Resolving a Panda parade:
	say "     Traveling through the zoo, you stop as you see a bearlike, white and black colored ursine. Tottering down one of the other paths, a zookeeper's hat still sits jauntily atop the very well-endowed panda's head. You back off out of sight of the panda as it trots past, seemingly intent on moving as fast as it can down the path.";
	say "     You are about to come out of hiding when another, more bestial panda comes barreling down the path. This one is obviously female, and it quickly chases after the retreating male panda. The second panda is swiftly followed by two more female pandas, each batting at each other as they try to get ahead, and finally one last slightly pandalike female trailing along after everyone else, the final one still kicking off its encumbering clothing as it continues to change into a full panda. Amused at the strange situation, you wait to make sure there aren't any more girl pandas chasing after the obviously very popular guy panda before coming out of hiding and continuing on your way.";
	now Panda parade is resolved;


Section 11 - Petting zoo

Table of GameEventIDs (continued)
Object	Name
Petting zoo	"Petting zoo"

Petting zoo is a situation.
The sarea of Petting zoo is "Zoo".

Instead of Resolving a Petting zoo:
	say "     Traveling along the empty zoo paths, you come across the petting zoo area. Thinking surely there can't be much threat there, you decide to stop by and investigate for a minute. Entering the petting zoo, you are only slightly surprised to find the area empty. More surprising is the large amount of children's clothing and a number of backpacks scattered around on the ground. Obviously, there was a school bus visiting the area at some point recently. You sigh as you look around, then give a halfhearted search of the backpacks lying around. You find several items of food and water and decide to take them with you. It doesn't count as taking candy from kids if they aren't around, does it?";
		increase carried of food by 1;
		increase carried of water bottle by 2;
	now Petting zoo is resolved;


Section 12 - Instructional video

Table of GameEventIDs (continued)
Object	Name
Instructional video	"Instructional video"

Instructional video is a situation.
The sarea of Instructional video is "Zoo".

Instead of Resolving a Instructional video:
	say "     Coming across one of the zoo buildings in your wanderings, you try taking a look inside and find a small, open, class-like area with several desks set up and a projector hooked up to a VCR. Taking a closer look at the VCR, you notice that it's labeled [']Animal Handling Training[']. Feeling curious, you push play and settle down to watch a bit. Soon you are caught up in all the tips and tricks the training tape teaches to aspiring zookeepers on how to handle the animals and deal with any trouble. By the time the tape clicks off an hour later, you find yourself feeling much more confident about your ability to deal with any animals or beasts that you might come across.";
	increase XP of Player by 30;
	now Instructional video is resolved;


Section 13 - Vet supplies

Table of GameEventIDs (continued)
Object	Name
Vet supplies	"Vet supplies"

Vet supplies is a situation.
The sarea of Vet supplies is "Zoo".

Instead of Resolving a Vet supplies:
	say "     Traveling down some of the zoo maintenance pathways, you come across a small veterinary bag, obviously used by one of the employees to treat the animals. Unfortunately for the employee involved, from the torn vegetation and scent of animal sex in the area, it looks like they were the one who got their [']treatment['] today instead. Still deciding there might be something useful to you in the bag, you begin to sort through the various supplies inside. Strangely most of what seems to be contained within is a variety of animal hormone shots, and treatments for either male or female animals depending. You think you could probably inject yourself with some of the animal hormone boosters, and the extra hormones could help you maintain your gender identity... but should you really be using medicine designed for animals? Do you inject yourself?";
	if isHellhound is true:
		say "     But before you can even come to any sort of decision, you feel the burning pain of hellfire within you. Your hellhound tainted body clearly will not allow you to use such measures to potentially alter your pact with the fel beast.";
		now Vet supplies is resolved;
	else if diego's heirloom collar is equipped:
		say "     While still thinking about it, your hand seemingly moves on its own, rising to your neck and tracing the band of sturdy leather around your neck, as if to remind you that you're Diego's plaything. This makes you realize that injecting yourself with some stuff you just found somewhere would be a mistake. With a shrug, you fling the bag into the bushes and move on.";
		now Vet supplies is resolved;
	else if Player consents:
		say "     Deciding to try your luck with the animal drugs, you sort them out until you have male and female hormone shots and treatments fully laid out, as well as having figured out just how to apply them properly. Now that leaves you with just one last decision... which shots do you want to take? Female (1), male (2), both (3) or change your mind and take none (0)?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
		if calcnumber > 0 and calcnumber < 4:		[***not aborted - temporary fix***]
			remove "Single Sexed" from feats of Player, if present;
			remove "Always Cocky" from feats of Player, if present;
			remove "Always A Pussy" from feats of Player, if present;
			now gsgl is 0;  [gender lock variable nulled to remove no-lock bonus]
		if calcnumber is 1:
			say "[vetsup_fshots]";
		else if calcnumber is 2:
			say "[vetsup_mshots]";
		else if calcnumber is 3:
			say "[vetsup_hshots]";
		else:
			say "     Looking over all the needles and foreign hormones, you decide it might just be best not to mess with your already messed up biochemistry any further than the infection already has.";
	else:
		say "     Deciding not to take your chances with any of the medicine designed for animals, you leave the veterinary bag where it lies, and continue along your way through the zoo.";
[		now Vet supplies is resolved; ]


to say vetsup_fshots:
	say "     Examining the female shots you have laid out before you, you decide to discard the male shots, and slowly begin the process of injecting yourself with the female chemicals, your skin seeming to twitch as each animal based injection enters your body, and your head seeming to swim as a surge of estrogen rushes through your body, altering your perspective on things...";
	if "Female Preferred" is listed in feats of Player:
		say "     While the chemicals running through your body rushes to your head, you groan as your instincts surge and makes you feel even more bestial than ever, you seem to feel as if your body could not truly be even more female oriented, and all the shots seem to do is make you feel more animalistic and feral than ever.";
		SanLoss 40;
	else if "Male Preferred" is listed in feats of Player:
		say "     You can feel the female hormones running through your body as they counter your strong male orientation, your body at war with itself painfully as the hormones bringing your body back into proper equilibrium. Now you are afraid the beasts can change you into females to suit their pleasure and bear their offspring again...";
		FeatLoss "Male Preferred";
		PlayerWounded 30;
	else if "Herm Preferred" is listed in feats of Player:
		say "     You can feel the female hormones running through your body as they seek to over-balance your dual-natured bias. Your body is at war with itself painfully as the hormones shift your body towards a female-biased direction. Your body surges with the primal need to be bred and formerly divided instincts are focused towards this urge. You feel downright slutty as the chemicals react with and alter your body, and you feel very sure that you won't have to worry about becoming anything but purely female anymore!";
		FeatLoss "Herm Preferred";
		FeatGain "Female Preferred";
		PlayerWounded 20;
	else:
		say "     You can feel the female hormones rushing through your body, and they surprisingly feel amazing as they rush through your body, your body surges with the primal need to breed and formerly neglected maternal instincts are enhanced and strengthened. You feel downright slutty as the chemicals react with and alter your body, and you feel very sure that you won't have to worry about becoming a male anymore!";
		SanLoss 20;
		FeatGain "Female Preferred";

to say vetsup_mshots:
	say "     Discarding the female shots, you focus your attention on the male treatments you have laid out, and slowly begin the process of injecting yourself with the chemicals, your skin seeming to twitch with each animal based injection, and your head seeming to swirl with a roar of bestial testosterone rushing through your body.";
	if "Male Preferred" is listed in feats of Player:
		say "     While the testosterone running through your body rushes to your head, and makes you feel even more bestial than ever, you seem to feel as if your body could not truly be even more male oriented, and all the shots seem to do is make you feel more animalistic than ever.";
		decrease humanity of Player by 40;
	else if "Female Preferred" is listed in feats of Player:
		say "     You can feel the Male hormones running through your body as they counter your strong female orientation, your body at war with itself painfully as the hormones bringing your body back into proper equilibrium. Now you are afraid the beasts can change you into males to suit their pleasure again...";
		FeatLoss "Female Preferred";
		decrease HP of Player by 30;
	else if "Herm Preferred" is listed in feats of Player:
		say "     You can feel the male hormones running through your body as they seek to over-balance your dual-natured bias. Your body is at war with itself painfully as the hormones shift your body towards a male-biased direction. Your body surges with the primal need to breed and formerly divided instincts are focused towards this urge. You feel a rush of aggressive, male urges as the chemicals react with and alter your body, and you feel very sure that you won't have to worry about becoming anything but purely male anymore!";
		FeatLoss "Herm Preferred";
		FeatGain "Male Preferred";
		decrease HP of Player by 20;
	else:
		say "     You can feel the male hormones rushing through your body, and they surprisingly feel damn good as your more aggressive male tendencies are enhanced and strengthened. You feel downright predatory as the chemicals react with and alter your body, and you feel very sure that you won't have to worry about becoming a female anymore!";
		SanLoss 20;
		FeatGain "Male Preferred";

to say vetsup_hshots:
	say "     Taking an assortment from both sets of treatments you have laid out, you slowly begin the process of injecting yourself with the chemicals. Your skin seeming to twitch with each animal based injection, and your head seeming to swirl with a roar of bestial testosterone and estrogen rushing through your body.";
	if "Male Preferred" is listed in feats of Player:
		say "     While the medley of bestial hormones running through your body rushes to your head, it seems as if your body is infused with wild, lustful urges. You can feel the hormones running through your body as they seek to push your body out of male focus to some strange union of both. Your body is at war with itself painfully as the hormones shift your body towards this dual-biased direction. You have the urge to breed and be bred, both to sire and bear young. Your male-focused body alters and changes, becoming capable of achieving both of these lustful goals.";
		FeatLoss "Male Preferred";
		FeatGain "Herm Preferred";
		decrease HP of Player by 20;
	else if "Female Preferred" is listed in feats of Player:
		say "     While the medley of bestial hormones running through your body rushes to your head, it seems as if your body is infused with wild, lustful urges. You can feel the hormones running through your body as they seek to push your body out of female focus to some strange union of both. Your body is at war with itself painfully as the hormones shift your body towards this dual-biased direction. You have the urge to breed and be bred, both to sire and bear young. Your female-focused body alters and changes, becoming capable of achieving both of these lustful goals.";
		FeatLoss "Female Preferred";
		FeatGain "Herm Preferred";
		decrease HP of Player by 20;
	else if "Herm Preferred" is listed in feats of Player:
		say "     While the medley of hormones running through your body rushes to your head, and makes you feel even more bestial and lustful than ever, it seems as if your body is already as focused on having a dual-gendered nature as it can be. All the shots seem to do is make you feel more animalistic than ever.";
		decrease humanity of Player by 40;
	else:
		say "     You can feel the medley of hormones rushing through your body, and they surprisingly feel damn good as your lustful tendencies are enhanced and strengthened. You feel both eager to breed and be bred as the chemicals react with and alter your body. These changes shift you towards a dual-biased direction. You feel very sure that you will be able to maintain a state of both male and female at once!";
		SanLoss 20;
		FeatGain "Herm Preferred";



Section 14 - Feeding time

Table of GameEventIDs (continued)
Object	Name
Feeding time	"Feeding time"

Feeding time is a situation. The level of feeding time is 9.
The sarea of Feeding time is "Zoo".
when play begins:
	add Feeding time to badspots of HermList;
	add Feeding time to BadSpots of FurryList;

Instead of Resolving a Feeding time:
	say "     Traveling through the twisting paths of the zoo, you come across a rather strange sight. Someone has left several cans of food and a bottle of water out in one of the animal feeding areas. Looking around, you can't see any reason for someone to have done so, and the food and water could be pretty useful. Still, it is rather suspicious. Do you try to take it?";
	if Player consents:
		say "     You can't resist the temptation to snag some fresh supplies and cautiously move forward to take the food and water. Just as you are bending over to stuff them in your backpack, you hear a sound behind you and whirl around to see a tigertaur charge at you out of the bushes, obviously glad someone has taken the bait and walked into its trap!";
		decrease HP of Player by 15;
		challenge "Tigertaur";
		if lost is 0:
			say "     Grinning at the silly beast that thought it could beat you, you quickly pocket the food and water it so graciously left here for you, and whistling continue on your way, keeping your eye out for other traps like this one... after all you could use the supplies.";
			increase carried of food by 2;
			increase carried of water bottle by 1;
			now Resolution of Feeding time is 1; [beat the ambush]
			now Feeding time is resolved;
		else:
			say "     Lying there on the ground while you recover from the beast's devious trap, you eventually manage to roll over and pull yourself back to your feet. Looking around, you note with a sigh that the tigertaur took the food with it when it left, leaving you with nothing to show for your efforts other than your well-fucked body. Shouldering your pack sadly, you continue on through the zoo, resolving to not be so easily tricked next time.";
			now Resolution of Feeding time is 2; [was ambushed, trap still active]
			Stop the action;
	else:
		say "     Deciding that anything that looks this suspicious is probably some form of trap, you continue along your way, leaving the food and water behind.";
		now Resolution of Feeding time is 99; [refused the trap]
		now Feeding time is resolved;


Section 15 - Security Station

Table of GameEventIDs (continued)
Object	Name
Security Station	"Security Station"

Security Station is a situation.
The sarea of Security Station is "Zoo".
when play begins:
	add Security Station to BadSpots of MaleList;
	add Security Station to BadSpots of FemaleList;
	add Security Station to BadSpots of FurryList;

Instead of Resolving a Security Station:
	say "     Traveling through the deserted zoo, you come across the entrance to a security station. While normally the doors to such areas are locked tightly, this one seems to have been broken down at some point during the recent troubles. Deciding to take a look inside, you can see the security station has several monitors that appear to be working at a glance, although some of them appear to be playing on a loop. Moving into the small security area, you note that it smells like bestial sex in here, leaving no doubt as to why the security station was broken into, the rich musky scent makes your body tingle with lust, and you realize you can't stay in here for long without becoming even more aroused than usual. Still there might be something of use in here, you think as you search the small monitoring room, you find your eyes continually drawn to the monitors however, as the action on the screen repeats itself over and over. Soon you stop even trying to search the area, and are just watching intently, as a cheetah woman teases a zoo intruder into becoming her male mate, and the scene as a pair of wolftaurs burst out of the bathroom and run down some of the zoo paths, before the male catches the female and begins to mate her like an animal. Other scenes of sex and transformation are played out on the monitors in front of you, but you manage to pull yourself away from the sexual scene and scents, and stagger out of the Security booth. Somehow sure that if you had stayed much longer, you would have stayed there watching the sexual scenes and growing increasingly aroused until one of the beasts in the zoo managed to find you in there, and given how aroused you already are.. by that point you might not even have fought whatever strong sexual beast came to take you... Shaking your head to try to clear it of the increasingly lewd thoughts you continue on your way through the zoo.";
	now Libido of Player is 100;
	SanLoss 10;
	now Security Station is resolved;


Section 16 - Broken fences

Table of GameEventIDs (continued)
Object	Name
Broken fences	"Broken fences"

Broken fences is a situation.
The sarea of Broken fences is "Zoo".

Instead of Resolving a Broken fences:
	say "     While traveling through the zoo paths, you note a small broken area of the underbrush, and out of curiosity move a little closer to take a look. Behind the foliage, you can see the back of one of the animal enclosures, a nice thick area of fence designed to keep the animals inside. Of course in this case you can see how this group of animals got out, as the fence has been broken and torn here where it isn't easily visible, leaving more than enough room for someone, or something, to slip into or out of the enclosure. Examining the edges of the fence, you find yourself more than a little worried about encountering something able to do that kind of damage to the special cage fences, and you decide to move along down the pathway quickly, just in case it might still be in the area.";
	now Broken fences is resolved;


Section 17 - Wandering beasts

Table of GameEventIDs (continued)
Object	Name
Wandering beasts	"Wandering beasts"

Wandering beasts is a situation.
The sarea of Wandering beasts is "Zoo".

Instead of Resolving a Wandering beasts:
	say "     While traveling through the zoo, you feel the hair on the back of your neck stand up, sensing that something large is coming your way. Somewhat panicked, you waste no time in ducking down behind one of the bushes, doing your best to conceal yourself from whatever is approaching. You are just in time to see a large group of different beasts come charging down the zoo pathways, obviously hot on the scent of a still changeable person. You hold your breath as the small stampede passes, only letting it out after they have all passed by safely, sighing with relief as you step out of your impromptu hiding place. Hearing a noise behind you, you realize that you started to relax too soon, as when you turn, you find yourself staring at one of the beasts that was straggling behind the stampede!";
	fight;
	now Wandering beasts is resolved;


Section 18 - Roaming spots

Table of GameEventIDs (continued)
Object	Name
Roaming spots	"Roaming spots"

Roaming spots is a situation.
The sarea of Roaming spots is "Zoo".

Instead of Resolving a Roaming spots:
	say "     Wandering through the zoo, you find yourself alongside one of the small stands of trees set up against the sides of the zoo. You freeze as you hear a noise come from the branches up ahead, and slowly look up, not seeing anything for a minute, before suddenly realizing that a large leopardman is slowly moving across the branches. You feel your cheeks heating up even as you try to hold your breath, your eyes fixed on his large sheath even as the spotted leopardman slowly shifts into the next tree. You watch with a mixture of fascination and a strange desire as the sleek feline stretches up from his position in his newest tree, until he can grip the top of the zoo wall easily. You blink as in one swift movement the lithe Leopard hauls himself onto the top of the wall, before sliding down out of sight on the other side.";
	say "You let out a soft gasp of relief as you realize you are safe from the large feline for now, although for some strange reason you find yourself almost wishing the powerful male cat had noticed you standing there...";
	now Roaming spots is resolved;


Section 19 - Picture striping

Table of GameEventIDs (continued)
Object	Name
Picture striping	"Picture striping"

Picture striping is a situation.
The sarea of Picture striping is "Zoo".
when play begins:
	add Picture striping to BadSpots of MaleList;
	add Picture striping to BadSpots of FemaleList;
	add Picture striping to BadSpots of FurryList;

Instead of Resolving a Picture striping:
	say "     Traveling through the mostly deserted zoo, you find yourself next to one of those old fashioned photo kiosks, this one proudly displaying several various animal themed backgrounds you can choose from. Smiling, you pull the curtain to step inside, only to find your nose assaulted with the scent of sex and musk. Letting the curtain fall, you gasp for some clean air. As you do so, you notice that the slot that dispenses pictures seems to have a strip already in it, and curious, you pull the strip of pictures out.";
	say "     Blinking, you stare down as a handsome young teenager poses against an African background, a zebra close behind him. The next picture shows the young man turning as the zebra puts its head on his shoulder, an actual zebraman that appears to have been hiding in the booth. The next several shots show in full color detail the zebra stallion pinning the changing man up against the side of the photo booth, as his body lengthens and is covered in stripes. The final photo is a wonderfully done photo of a zebra stallion mounting an eager zebra mare with a lewd smile on his snout.";
	say "     You shudder as you realize how lucky you are to arrive here late. If you had been the first person into that booth, there would have been no way for you to escape or fight in such a confined space. Sighing, you prop the pictures up against the photo booth, leaving them there in case the zebras involved want to come back for a memento, then continue your trip through the zoo.";
	now Picture striping is resolved;


Section 20 - Lazy River (Event by Shadowwolf94)

Table of GameEventIDs (continued)
Object	Name
Lazy River	"Lazy River"

Lazy River is a situation.
The sarea of Lazy River is "Zoo".
when play begins:
	add Lazy River to BadSpots of MaleList;
	add Lazy River to BadSpots of FurryList;

Instead of Resolving a Lazy River:
	say "     Traveling through the zoo area, you spot something odd in the hippo enclosure. Sneaking up to the fence and peaking over, you spot a large hippo man relaxing on his back in the water. One of his large hands is wrapped around his massive shaft, gently stroking its thick length while his other kneads his large ballsack. Floating lazily along, he pumps and strokes his throbbing shaft. You can't seem to look away from this arousing scene, your knees feeling weak as your mind is filled with thoughts of sex with this beast.";
	say "     You are shaken out of your fantasy when the large beast man roars out in orgasm, painting his belly and filling the nearby water with sticky white seed. Afterwards, he flops around in the water, looking relaxed and content as he bobs along. You shake your head clear and slip away quietly before something notices you, feeling quite aroused by the whole voyeuristic experience.";
	increase Libido of Player by 30;
	if Libido of Player > 100, now Libido of Player is 100;
	now Lazy River is resolved;


Zoo Events ends here.
