Version 1 of Grizzly Bear by UrsaOmega begins here.

"Adds a Grizzly Bear creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Grizzly Bear" } to infections of guy;
	add { "Grizzly Bear" } to infections of furry;

to say losetogrizzly:
	let bearanal be 1;
	if "More Anal" is listed in the feats of the player, increase bearanal by 1;
	if "Less Anal" is listed in feats of player, now bearanal is 0;
	if cunts of player > 0 and a random chance of 1 in 3 succeeds:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your moist, [cunt size desc of player] pussy with the other. ";
		if cunt width of player is less than 3:
			say "His thick cock stretches your lips open as you struggle to accommodate his substantial man-meat. With a grunt on his part and a moan from you he bottoms out inside you, his balls resting against your rear.";
		otherwise:
			say "His thick cock spears your womanly folds with ease, smoothly sliding his shaft into your cunt with an approving grunt.";
		say "     He begins sliding his cock in and out of your vagina, each thrust ending in the resounding slap of flesh on flesh. As both your climaxes grow closer, he leans over your back, fucking you deep and hard with his large ursine shaft. One of his thrusts hits you just right and you're crying out in pleasure as you cum around his length. Your muscular contractions milk up and down his length and then with a growl he's thrust all the way in your cunt and is cumming deep inside you. When he finishes his orgasm he pulls out of you, rubs his cock clean on your rear, and leaves you twitching on the ground, bear cum dripping from your abused cunt.[impregchance]";
	otherwise if cocks of player > 0 and a random chance of bearanal in 3 succeeds:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your puckered anus. He rubs his glans against the entrance to your back passage, his pre dribbling from the tip and into the cleft of your ass. 'Heh... tight lil['] cub...' he grumbles, before beginning to force his way into your rectum. You gasp as he slips past your muscled ring and sheathes his entire length inside you in one firm thrust.";
		say "     He begins to slide back and forth within you, his sizable cock pressing at your prostate in all the right ways. Before long, he's leaning over your back, penetrating you with long, deep ball-slapping thrusts. One thrust rubs your prostate just right and you're yelling out in orgasm, your [cock size desc of player] [cock of player] cock spurting your submissive seed over the ground. Your rippling anal contractions cause the rutting bear above you to groan and shoot his ursine seed deep in your guts, pulling out for the last few spurts to paint your backside white. He wipes his cock clean on your rear and leaves you twitching on the ground, bear cum dripping from your messy asshole.[mimpregchance]";
	otherwise:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength.  Grinning at your weakened state he walks up to your front, one paw slowly stroking up and down his sizable bear dick. Reaching out with a large, bearlike paw, he grabs the back of your head and pulls it in to his groin. 'You know what to do, cub.' he growls, rubbing his cock against your face. Your nose fills with the musky scent of male bear, [if cocks of player > 0]your cock to becoming rock-hard,[end if][if cunts of player > 0] your cunt moistening with need, [end if]and your head starts to spin a bit. You eagerly lick up and down the ursine shaft. You even duck down to his ballsack, juggling his testicles a bit with your tongue before returning to lapping at his shaft.";
		say "     The grizzly intterupts you, grunting 'That's enough, cub, now it's time for the main event!' and gripping both sides of your head. Without ceremony, he pulls your mouth down on his cock, groaning as your mouth envelopes his cock. He guides your head up and down his shaft, the salty taste of his precum filling your mouth. Just as you get comfortable sucking his cock, his thrusts get more forceful, pushing his cock down your throat. You supress your gag reflex as he begins face-fucking you, his hefty ballsack slapping against your [facename of player] face. You hear the grizzly growl above you and feel his shaft pulse in your throat before you feel him pour hot bearcum down your gullet. He starts pulling out as he cums, filling your mouth with his strong-tasting seed and finally painting your face with the last few spurts of grizzly cum. 'Not bad, cub. We should do this more often.' he says before walking off, leaving you to clean yourself up.";
		
to say beatthegrizzly:
	say "     The grizzly collapses before you, breathing heavily from your fight. You can see the grizzly's ursine cock peeking out of his furry sheath - it looks like he's up for some more fun. Do you take advantage of the big bear?";
	if cunts of player > 0 and cocks of player > 0:
		say "    Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your pussy (3)[as]3[end link], take him [link]in your ass (4)[as]4[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 4:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[giveanal]";
		otherwise if calcnumber is 2:
			say "[getsucked]";
		otherwise if calcnumber is 3:
			say "[ridevag]";
		otherwise if calcnumber is 4:
			say "[rideanal]";
		otherwise:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	otherwise if cunts of player > 0:
		say "    Would you like to take him [link]in your pussy (1)[as]1[end link], take him [link]in your ass (2)[as]2[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[ridevag]";
		otherwise if calcnumber is 2:
			say "[rideanal]";
		otherwise:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	otherwise:
		say "    Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your ass (3)[as]3[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[giveanal]";
		otherwise if calcnumber is 2:
			say "[getsucked]";
		otherwise if calcnumber is 3:
			say "[rideanal]";
		otherwise:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
to say giveanal:
	say "     With some effort, you roll the grizzly over and raise his hips up so his ass is sticking up in the air. You admire the bear's anus, currently twitching in anticipation, tucked under his stubby bear tail. You press a finger against his muscular ring and push inward. Surprisingly, it slips in with very little effort - this bear doesn't seem to be new to being mounted. You add two more fingers, testing his flexibility with deep, scissoring strokes. The grizzly gives a manly grunt as you do, his hardening length quickly slipping from his sheath. With your preparations complete, you move behind him, gripping his hips and lining your cock up with his tailhole. You hilt yourself inside his rectum in one firm thrust, gasping as you feel his hot, muscular anal cavity envelope your [cock size desc of player] [cock of player] cock.";
	say "     You by making slow, deep strokes in and out of his ass, relishing the feeling of your ursine ass-slut clenching down on your cock as you pull back before driving yourself back in with a ball-slapping thrust. The grizzly begs you (between pants and moans) to fuck him harder, and you comply by increasing the frequency and depth of your thrusts. This redoubled anal assault is too much for your bottom bear, who starts shooting grizzly cum over the ground. The orgasmic contractions of his ass send you over the edge as well, and you start filling the bear's ass with your seed. You pull out and shoot the last of your load over his backside before stepping back to admire your handiwork. Satisfied, you get dressed and leave the bear in a pool of cum.";

to say getsucked:
	say "     You walk up to the grizzly, your cock hardening at the thought of taking his muzzle. You push his muzzle into your groin, rubbing your [cock size desc of player] [cock of player] cock against his lips and the sides of his muzzle. The grizzly breaks down and starts giving your shaft long licks with his broad ursine tongue; the rough texture feels great on your cock. Occasionally he dips down under your shaft to suck on your testicles, juggling them with his his tongue, before returning to lavishing your [cock of player] cock with oral attention.[line break]";
	if "More Anal" is listed in the feats of the player:
		say "     The grizzly pulls off of your cock for a minute to look up and give you a lecherous grin as he puts two fingers in this mouth, sucking on them. You raise an eyebrow as he removes the fingers from his muzzle and then leans back into your groin, this time engulfing your entire length in his muzzle. The wet heat wrapped around your dick feels great, and you almost don't notice the bear sneaking the two saliva-coated fingers under your ballsack[if cunts of player > 0] and past your womanly netherlips[end if].  Realizing what he's planning, you look down at the bear eagerly sucking his way up and down you shaft and return the lecherous grin, spreading your legs a bit to give him better access to your pucker. While continuing to give your [cock of player] cock a masterful blowjob, he strokes his two slick fingers across your pucker, relaxing it. On one particularly deep throating of your cock, he slides his digits into your rectum. You grunt as he finds your prostate gland and starts stroking it vigorously. Each press of his fingers is like the press of a pleasure buzzer in your ass, and you start leaking pre into his muzzle like a leaky tap. Your knees can hardly hold your body up, so you lean on him while he drives you higher and higher with his talented tongue, muzzle, and fingers. Finally, you can't take the stimulation overload anymore and cum hard, filling his mouth up and squeezing on his fingers in your ass. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";
	otherwise:
		say "     Eager to get to the real deal, the bear dives down on your [cock of player] cock, taking it to the base in his muzzle. The wet heat wrapped around your dick feels great, and you give a satisfied grunt as he starts to move his mouth up and down your length, all the while using his tongue to stroke and tease the head of your penis. You move your hands to the back of his head but he hardly needs any encouragement as he eagerly suckles your [cock of player] cock, sucking down your precum. Soon you can't take it anymore as his rippling throat and talented tongue push you over the edge, and you're spilling your semen down his throat and then in his mouth. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";
			
to say ridevag:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your ass. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly. Straddling the ursine, you position his shaft at your pussy. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and strokes your clit just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your cunt, his cock filling you exquisitely. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you cry out, your vaginal muscles clamping down on his bear dick [if cocks of player > 0]and your cock spurting seed in thick ropes over his chest[end if]. The grizzly is right behind you, filling you up with thick spurts of bear cum. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing from your pussy. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[impregchance]";
	
to say rideanal:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your ass. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly.";
	If "More Anal" is listed in the feats of the player:
		say "     Before you have your fun, you'll need to... Prepare properly. Moving your naked rear over the bear's face you spread your asscheeks and brusquely command him to get licking. The bear-man complies eagerly, plunging his muzzle between your cheeks. First you feel the cold wetness of his nose, but that is soon replaced by the warm slickness of his tongue. He starts by lapping gently at your ring of muscle, but as your pucker relaxes he transitions to deep, stimulating licks. His broad ursine tongue fills you so completely you almost cum on the spot. Satisfied with his performance you pull off of him, your cleft now dripping with grizzly saliva.[line break]";
	say "     Straddling the ursine, you position his shaft at your asshole. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and hits your prostate just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your ass. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you have a hands free orgasm, spilling ropes of cum over the grizzly's thick chest fur. Your orgasmic anal contractions quickly bring him over the edge as well, and you feel your anal passage begin to fill with pulses of thick bear seed. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing out of your ass. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[mimpregchance]";
	
to say grizzlydesc:
	say "     A large bear-man stands before you. His large stature and shaggy brown fur seem to paint him as a grizzly bear. Except for his fur, he's completely naked, his thick furred sheath and hefty balls hanging between his legs. You can see a thick ursine cock peeking out. 'Ah! Another upstart cub!', he growls.  'It's been a while since I've had some fun...!'";
	say "     Suddenly, he charges at you! It's a fight!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Grizzly Bear";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The grizzly swipes at you with a huge paw![or]The grizzly hits you with a huge brown-furred shoulder slam.[or]The grizzly charges you with a powerful headbutt![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthegrizzly]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetogrizzly]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[grizzlydesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "now the head of a grizzly bear, with a short muzzle tipped in a large, wet, black nose and a wide head topped by two round bearish ears";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a bipedal grizzly bear, thickly proportioned and muscled, with large ursine pawlike hands ending in sharp claws";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]thick brown fur covered[or]grizzly furred[or]shaggy brown furred[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a short ursine tail that hangs over your ass.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "ursine";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head widens and your face pushes out. You nose becomes large and wet as it migrates to the end of your new bearlike muzzle and your ears move to the top of your head, becoming rounded and ursine";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes large, thicker, and more muscular, more ursine. Your neck widens, as do your arms and legs, and your hands become more pawlike";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "thick shaggy brown bear fur spreads across your skin";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rump becomes thicker and more rounded and bearlike, with a short fuzzy tail growing over your new ursine ass";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "a furred sheath grows around it, holding it when it's not erect";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 20;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 22;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 96;			[ The monster's starting hit points. ]
	now lev entry is 14;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 18;			[ Monster's average damage when attacking. ]
	now area entry is "Zoo";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 12;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]burly[or]strong[end if]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]ursine[or]grizzly[or]bearlike[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

when play ends:
	if bodyname of player is "Grizzly":
		if humanity of player is less than 10:
			say "     You succumb to your bear instincts, going completely feral. When the military finds you, you're almost entirely unable to communicate with them. You manage to defeat each squad that discovers you, using your unnatural strength and stamina to take them out one by one. You enjoy leaving the last one concious so you can fuck them into big, strong bears like yourself. Your luck finally runs out one day when searching for your next victim. You feel a pinch at your neck; swatting your paw at the sensation you notice the tranquilizer dart. Already beginning to feel the effects, you turn to see two squads of soldiers descending upon you. You fight fiercely, but a second prick signals the end of the fight as your body becomes to heavy to lift. Before you slip into unconciousness you hear one of the soldiers mention that the dose was practically enough to down an elephant...";
			 say "     You wake up in a goverment holding facility, where you are poked and prodded (under heavy restraint and anathesia) for what feels like a month. The scientists must not have been optimistic about your prospects in the post-infection world, because after another elephant dose of tranquilizer you wake up somewhere heavily wooded and remote. You find a salmon-rich stream nearby and settle into a decidely ursine lifestyle of mostly eating and sleeping.";
			if cunts of player > 0:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing between your legs and in your womb, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees under the grizzly getting filled with bear cum. You rub a paw over your stomach contendedly, looking forward to raising your new cubs after the next hibernation.";
			otherwise if cocks of player > 0 and "Mpreg" is not listed in the feats of the player:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A fertile female one, at that. You feel a need growing between your legs and in your balls, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees behind the grizzly, filling her womb up with your virile bear cum. You rub her stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			otherwise if "Mpreg" is listed in the feats of the player:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing in your rear, a need you've been ignoring during your time in the wild. The bear is hostile at first, but after a brief period of wary sniffing he realizes you're just another female and then you're on your hands and knees under the grizzly getting filled with bear cum. You try to get the other grizzly to reciprocate, but he's having none of it - maybe next time. You rub a paw over your stomach contendedly, looking forward to raising your new cubs after the next hibernation.";
			otherwise:
				say "";
		otherwise:
			say "     When the military finds you, you are sent off to a processing camp and determined to be safe. You live out the rest of your days in relative normalcy, though you now find yourself more partial to going to the gym, eating fish and berries, and taking very, very long naps.";

[ Edit this to have the correct creature name as well]
Grizzly Bear ends here.