Version 1 of Wereraptor For FS by Stripes begins here.
[Version 1]
"Adds a special wereraptor creature/curse to Flexible Survival's Wandering Monsters table"

Section 0 - Event Activation

Paleontology Professor is a situation.  The level of Paleontology Professor is 7.
The sarea of Paleontology Professor is "Campus";

when play begins:
	add Paleontology Professor to badspots of furry;

Instead of resolving a Paleontology Professor:
	if guy is banned and girl is banned:
		say "     You find your way into the biology building in the hopes of finding answers or at least supplies and happen across the door to a paleontology professor's office.  On the door is a notice saying that the professor was transferred due to content restrictions.  Odd.";
		say "(This content requires that at least one of Guy or Girl content be available in the game. - Mgmt)[line break]";
	otherwise:
		if daytimer is day:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay out in the open during the day.  In one disused section of the building, you hear some noise coming from behind one of the office doors.  Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college.";
			say "     You check the door and find it locked, but a [if girl is banned]man's[otherwise]woman's[end if] voice responds to your presence.  'Is someone there?  Help!  Can you help me get out?  My name is Dr. Utah and I locked myself in here when the changes started, but I can't get out now.  If you can still understand me, please help me,' [if girl is banned]he[otherwise]she[end if] pleads.  Shall you free [if girl is banned]him[otherwise]her[end if]?";
			if the player consents:
				say "     You try pushing at the heavy wooden door, but it seems quite stuck.  You bash your body against it a few times, feeling it start to give.  You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside.  You land in the arms of a middle-aged [if girl is banned]man[otherwise]woman[end if].";
				say "     The office is a mess and [if girl is banned]his[otherwise]her[end if] clothes are horribly torn, but [if girl is banned]he[otherwise]she[end if] seem quite human.  It seems [if girl is banned]he[otherwise]she[end if] was lucky enough to make it to safety before anything could infect [if girl is banned]him[otherwise]her[end if].  Their office also seems largely destroyed, with strange slashes on the walls and the door and most of the furniture overturned or completely broken.  Noticing your gaze, [if girl is banned]he[otherwise]she[end if] wring [if girl is banned]his[otherwise]her[end if] hands nervously.";
				say "     'I... it was so crazy.  Out there, I mean.  I nailed my door shut.  When things calmed down later, I couldn't get out.  I started to go stir crazy and threw around the furniture and beat at the walls trying to get someone to hear me.  I'd almost completely given up hope by the time you came by.  Thank you again for saving me.  I don't know how much longer I would have been able to hold out.  I had hoped someone would come to rescue us much sooner, but I'm guessing this is a much more widespread problem than just something on campus.  I know none of my fellow professors here were working on anything even remotely like this... outbreak.'";
				say "     [if girl is banned]He rubs to scratch a scar on his side[otherwise]She rubs a scar on her side[end if] and starts moving outside the room.  'Look... as good as it is to talk to someone again, I really need to get out of this room after being cooped up in here.  I'm sure we'll catch up again soon,' [if girl is banned]she[otherwise]he[end if] adds with a grin before leaving.";
				say "     Now alone, you look over the room, but find little.  Almost all the contents were destroyed or consumed, though you do find a stale bag of chips in the bottom of one drawer.  Better than nothing and a little reward for being a good samaritan, feeling a little better for having done the good deed.";
				increase score by 25;
				increase morale of player by 2;
				increment carried of chips;
				raptorrelease;
			otherwise:
				say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere.  There is some pleading and cursing, but you continue to go, feeling a little bad about your decision.";
				decrease morale of player by 2;
		otherwise:
			say "     Looking for answers or at least some supplies, you enter the biology building on campus and have a quick look around rather than stay outside to face the creatures roaming around at night.  In one disused section of the building, you hear some noise coming from behind one of the office doors.  Labeled as 'Dr. R. Utah - Paleontology', you briefly wonder how many students such a professor could even get at such a sports-centric college.";
			say "     You check the door and find it locked, but a scratchy voice responds to your presence.  'Help!  Trapped.  So weak,' it moans, faintly scratching at the wooden door from the inside.  It seems someone's become trapped.  Concerned that they may starve or dehydrate before rescue finally arrives, you should probably help them out.  Shall you them out?";
			if the player consents:
				say "     You try pushing at the heavy wooden door, but it seems quite stuck.  You bash your body against it a few times, feeling it start to give.  You keep at it, always worried that some creature will hear you and arrive, but manage to break down the door, cracking and snapping the wood away from the numerous nails pounded into the frame from the inside.  As the door gives way, you tumble into a destroyed office containing not a person as you'd expected, but a reptilian creature with a sinister grin on its face.";
				challenge "Wereraptor";
				raptorrelease;
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     Managing to drive off the raptor creature, you take a moment to survey the office.  I has been destroyed by the clawed menace trapped inside.  The furniture is largely destroyed, the walls and door covered in slashes and everything a mess.  Speaking of the door, you are confused as you examine it, seeing the nails barring it were driven in from the inside as if the creature sealed itself away.  Your search of the office does provide one small reward as you find a bag of stale chips in one of the drawers.";
					increase score by 25;
					increment carried of chips;
				otherwise if fightoutcome >= 20 and fightoutcome <= 29:
					say "     After the raptor creature has had its fun with you, it runs a taloned paw over your face.  'You set me free, so I'll leave you with a gift instead of sating my hunger upon you,' it hisses, sinking its claws into your shoulders again and pulling you close to its snapping jaws, narrowly avoiding biting you.  'I look forward to seeing you again soon.'  And with that it is off, running down the hall to freedom.";
					say "     Weak and worried that it may return if you linger, you head out before it can decide you'd make a good snack after all and come back to find you.";
					now wrcursestatus is 2;
					now wrcursestart is turns;
				otherwise:
					say "     Not expecting a fight with a feral raptor creature, you decide to make your escape.  The raptor gives chase, easily keeping pace with you until you get outside.  Once it bursts out the door and runs down the steps, it laughs maniacally.  'Freedom!  I shall let you go for now as reward for freeing me, but I shall have you in time,' it hisses as you continue to run away across the moonlit campus.";
			otherwise:
				say "     Deciding not to risk letting out whatever creature may be lurking in there, you back away slowly and go looking elsewhere.  As you move away, there is another plea for help, followed by growling and clawing at the door.  'Let me out or I'll find you.  I will find you and come for you in the night, prey.  And I will GUT you!' it hisses angrily, scratching wildly at the sturdy wooden door.  The tirade descends into nothing but growls and hisses as whatever is inside vents its rage.  Fearing that it may actually get out and find you, you flee quickly.";
	now Paleontology Professor is resolved;


to raptorrelease:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Wereraptor":
			now monster is y;
			now area entry is "Campus";
			break;
	if wrcursestatus is 0, now wrcursestatus is 1;


Section 1 - Monster Responses

wrmode is a number that varies.
wrcursestatus is a number that varies.
wrcursestart is a number that varies.

when play begins:
	add { "Wereraptor" } to infections of furry;
	add { "Wereraptor" } to infections of Tailweapon;
	add { "Wereraptor" } to infections of Reptilelist;

to say losetowereraptor:
	if wrmode is 1:
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in her clawed hands, pressing your head between her legs.  Feeling her sharp claws digging into your shoulders, you have no choice but to start licking at her wet pussy.  The flavour is strong but exciting, quickly building your lust until you're eagerly lapping at her dripping slit for more of her hot juices.  When she finally cums, she sinks her sharp claws into you and hisses loudly in pleasure.  Now done with you, she shoves you aside roughly and sniffs the air.  She flicks her tongue across her muzzle and rushes off after her new prey with a more mundane hunger to be sated.  You feel relieved that this wild beast chose not to make a meal out of you instead.";
	otherwise:
		say "     Defeated by the wereraptor, the creature hisses triumphantly and grabs your head in his clawed hands, pressing your head between his legs.  Feeling the sharp claws digging into your shoulders, you have no choice but to start licking and eventually sucking at that reptilian cock.  The flavour is strong but exciting, quickly building your lust until you're eagerly lapping along its length and working your mouth over it.  When he finally cums, he sinks his sharp claws into you and hisses loudly in pleasure while pumping his hot load down your throat.  Now done with you, he shoves you aside roughly and sniffs the air.  He flicks his tongue across his muzzle and rushes off after his new prey with a more mundane hunger to be sated.  You feel relieved that this wild beast chose not to make a meal out of you instead.";
	if wrcursestatus is 0 or wrcursestatus is 1:
		say "     The claw marks at your back sting with a burning heat.  As the pain fades, you check back, finding the wounds already closed, but still scarred.";
		now wrcursestatus is 2;
		now wrcursestart is turns;


to say beatthewereraptor:
	say "     You manage to defeat and drive off the strange, feral, half-human creature into the night.";


to say wereraptordesc:
	choose row monster from the table of random critters;
	now wrmode is a random number between 1 and 2;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You spot a raptor-like creature looking at you from the distance.  It stares at you long with its amber eyes, twitches its claws.  'Clever girl,' it hisses before turning away, leaving you be.";
		say "(Currently requires at least one of Guy or Girl content to be available.)[line break]";
		blank out the whole row;
		now combat abort is 1;
		now wrmode is 0;
	otherwise if wrcursestatus is 0 and girl is not banned:
		now wrmode is 1;
	otherwise if guy is banned:
		now wrmode is 1;
	otherwise if girl is banned:
		now wrmode is 2;
	say "     You find yourself faced with a lizard-human hybrid which you quickly realize is some kind of velociraptor creature.  Its torso and arms are much like that of a human, but with the muscled legs, tail and head of a velociraptor";
	if wrmode is 1:
		say ".  And a female one at that.  Leaning over in a stance typical for raptors, her breasts can clearly be seen at her chest.  While her hands have smaller claws on them, those on her feet seem quite large, especially the long sickle-like one.  Both have only three digits on them.  Her scales are a deep blue over most of her body, shifting almost to black over her head, back and the top of her tail.  She stares at you with a feral wildness to her yellow eyes and takes a step forward.  She hisses at you before charging forward in a rush.";
	otherwise:
		say ".  And a male one at that.  Leaning over in a stance typical for raptors, his dripping maleness can clearly be seen between his muscular legs.  While his hands have smaller claws on them, those on his feet seem quite large, especially the long sickle-like one.  His scales are a deep blue over most of his body, shifting to a dark green across his head, back and the top of his tail.  He stares at you with a feral wildness to his yellow eyes and takes a step forward.  He hisses at you before charging forward in a rush.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Wereraptor";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The wereraptor growls and claws at you with [if wrmode is 2]his[otherwise]her[end if] taloned hands![or]The enraged creature gives you a vicious slash with [if wrmode is 2]his[otherwise]her[end if] foot claws![or]The saurian creature slams [if wrmode is 2]his[otherwise]her[end if] long, thick tail into you, knocking you sideways![or]The wereraptor snaps at you with [if wrmode is 2]his[otherwise]her[end if] saurian jaws![at random]";
	now defeated entry is "[beatthewereraptor]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetowereraptor]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[wereraptordesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "animalistic head of a raptor with piercing yellow eyes and covered in [if cocks of player > 0 and cunts of player > 0]dark crimson[otherwise if cunts of player > 0]black[otherwise if cocks of player > 0]green[otherwise]pale grey[end if] scales";
	now body entry is "shaped like some kind of human-velociraptor hybrid.  You are hunched over, balancing on your powerful hind legs.  Your arms have a strong tendancy to fold up against your chest when not in use or when you are running, charging like a velociraptor in those movies you used to watch.  Your hands and feet now only possess three digits each";
	now skin entry is "deep blue and [if cocks of player > 0 and cunts of player > 0]dark crimson[otherwise if cunts of player > 0]black[otherwise if cocks of player > 0]green[otherwise]pale grey[end if] scales";
	now tail entry is "Growing out from the base of your spine, you have a long, thick tail like that of a lizard or dinosaur.";
	now cock entry is "[one of]slender[or]reptilian[or]saurian[or]tapered[purely at random]";
	now face change entry is "your head reshapes itself as wild, feral thoughts push to overpower your sentient mind.  Soon your head has changed, becoming that of a velociraptor";
	now body change entry is "your center of mass shifts, forcing you to lean forwards with your increasingly powerful legs to support you.  Your torso and arms are distorted versions of a human's, made to be part of your increasingly reptilian body.  Sharp, black talons grow from your feet and smaller claws form on your hands as your digits fuse and reshape themselves to only leave you with three on each";
	now skin change entry is "scales spread across your skin, deep blue across your limbs and the front of your torso and [if cocks of player > 0 and cunts of player > 0]dark crimson[otherwise if cunts of player > 0]black[otherwise if cocks of player > 0]green[otherwise]pale grey[end if] over your head and back";
	now ass change entry is "you gain a long lizard-like tail";
	now cock change entry is "it becomes smooth and tapering to a point";
	now str entry is 13;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 14;
	now cha entry is 8;
	now sex entry is "nochange";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 45;			[ The monster's starting hit points. ]
	now lev entry is 8;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 14;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]animalistic[purely at random]";
	now type entry is "[one of]wereraptor[or]raptor[or]saurian[or]reptilian[purely at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now nocturnal entry is true;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]


Section 3 - The Curse

wrbodyname is a text that varies.
wrbody is a text that varies.
wrscalevalue is a number that varies.
wrbodydesc is a text that varies.
wrbodytype is a text that varies.
wrdaycycle is a number that varies.
wrfacename is a text that varies.
wrface is a text that varies.
wrskinname is a text that varies.
wrskin is a text that varies.
wrtailname is a text that varies.
wrtail is a text that varies.
wrcockname is a text that varies.
wrcock is a text that varies.
wrcurseholdback is a number that varies.


an everyturn rule:
	if wrcursestatus > 0 and wrcursestatus < 100 and skipturnblocker is 0:
		follow the wereraptor curse rule;

this is the wereraptor curse rule:
	if skipturnblocker is 0:
		if wrcursestatus > 0 and wrcursestatus < 100:
			if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:	[eliminates curse]
				if wrcursestatus >= 3:
					say "     You can feel your mystical transformation fighting off the wereraptor curse you are under.  Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal.  The scars at your shoulders heal, the curse purged by the greater power that now has a hold of you - for better or for ill.";
					now hp of player is hp of player / 2;
					if wrcursestatus is 5:
						wrcurserecede;
				otherwise if wrcursestatus is 2:
					say "     You can feel your mystical transformation fighting off something lingering inside you.  Your body writhes in pain and you hiss angrily as your eyes flash yellow and turn slitted before returning to normal.  The scars at your shoulders heal, whatever lingering affect they had purged by the greater power that now has a hold of you - for better or for ill.";
					now hp of player is ( 2 * hp of player ) / 3;
				now wrcursestatus is 100;
		if wrcursestatus is 2:
			if daytimer is night:
				if wrcursestart - turns >= 12:
					increase hunger of player by 10;
					increase libido of player by 20;
					if libido of player > 100, now libido of player is 100;
					decrease humanity of player by 10;
					wrcursesave;
					now wrcursestatus is 5;
					now wrcurseholdback is 0;
				otherwise if a random chance of 1 in 3 succeeds:
					say "     You feel a dull throb coming from the raptor scars on your shoulders which have yet to fully heal.";
		otherwise if wrcursestatus is 3:
			if daytimer is night:
				say "     With the coming of the night, you can feel that lurking beast within you clawing at your mind for release.  It tries to push forth and unleash itself upon the city.  Shall you accept its arrival (Y) or try to hold it back (N)?";
				if the player consents:
					say "     Welcoming the power of your lycanthropic form, you stop resisting it and let it burst free.";
					increase hunger of player by 10;
					increase libido of player by 20;
					if libido of player > 100, now libido of player is 100;
					decrease humanity of player by 6;
					wrcursesave;
					now wrcursestatus is 5;
					now wrcurseholdback is 0;
				otherwise:
					let resistance be ( 120 + humanity of player ) - ( libido of player + ( hunger of player * 2 ) + ( wrcurseholdback * 10 ) );
					if a random number between 1 and 200 >= resistance:
						say "     You are unable to hold back your lycanthropic changes and cry out as the prehistoric beast within is unleashed.  Having broken through your mind's resistance, you feel more of your humanity slipping away.";
						increase hunger of player by 10;
						increase libido of player by 20;
						if libido of player > 100, now libido of player is 100;
						decrease humanity of player by 10;
						wrcursesave;
						now wrcursestatus is 5;
						now wrcurseholdback is 0;
					otherwise:
						say "     You are able to rein in the prehistoric beast within you and hold it back... for tonight.  But you can feel it there and you know it will be even harder to restrain it next time.";
						now wrcursestatus is 4;
						increment wrcurseholdback;
		otherwise if wrcursestatus is 4:
			if daytimer is day:
				say "     With the coming of the day, you can feel the prehistoric beast sinking back into some dark corner of your mind.";
				now wrcursestatus is 3;
		otherwise if wrcursestatus is 5:
			if daytimer is night:
				wrcursesave;	[cursed restoration]
			otherwise:
				say "     With the coming of the day, your saurian body spasms and twitches.  The beast unleashed hissed and snarls, but those dark, instinctual impulses are pushed back into a dark corner of your mind.  But you know it is not gone, but merely slumbering, awaiting the coming of the night to seek its wild freedom again.  But for the moment, at least, you know peace.";
				decrease libido of player by 10;
				if libido of player < 0, now libido of player is 0;
				wrcurserecede;
				now wrcursestatus is 3;


to wrcursesave:
	[puts Wereraptor as lead monster]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Wereraptor":
			now monster is y;
			break;
	if wrcursestatus is 2 or wrcursestatus is 3:
		if wrcursestatus is 2:
			say "     Feeling a surge of pain from the wounds in your shoulders that makes you feel dizzy and ill, you stumble outside to get some fresh air.  There, out in the moonlight, you feel a rush of power surging through you and your eyes turn yellow and slitted.  You stagger and fall, writhing on the ground as a rush of transformation unlike anything you've felt before surges through you.  As you stare up the moon and the instinctual urges threaten to overtake you, you realize this is no normal infection, but a strange lycanthopy.  You are becoming a wereraptor";
			say "     As your new lycanthropic changes begin, your current form is suppresed for your wild, nocturnal form";
		otherwise if wrcursestatus is 3:
			say "     Unable to hold them back, there comes the familiar surge of pain from your raptor wounds.  You feel yourself changing with the coming of the night.  Your body changes, transforming into a lycanthropic raptor once more";
		wrskinsave;
		wrfacesave;
		wrbodysave;
		wrtailsave;
		wrcocksave;
		say ".";
		[must be kept here to ensure proper saving]
		say "     With the changes comes a surge of power to your body, increasing your strength and agility.  But you can feel your mind being weakened as well, your instinctual urges pushing back more rational thought and behaviour.  You are filled with hunger from your body's transformation and your wereraptor's body desire to feed.  Along with the hunger for food comes a hunger for sex, your lustful urges growing stronger as well.";
		increase dexterity of player by 2;
		increase strength of player by 2;
		decrease charisma of player by 2;
		decrease intelligence of player by 2;
	otherwise if bodyname of player is not "Wereraptor" or player is not pure:
		say "     The power of your cursed transformation rushes through you again, pushing to restore your reptilian form.  You feel a rush of hunger and arousal surging through your system as the lust to feed and fuck fills you again";
		wrcurserestore;
		say ".";

to wrcurserestore:
	if skinname of player is not "Wereraptor":
		wrskinsave;
		increase hunger of player by 1;
		increase libido of player by 1;
	if facename of player is not "Wereraptor":
		wrfacesave;
		increase hunger of player by 1;
		increase libido of player by 3;
	if bodyname of player is not "Wereraptor":
		wrbodysave;
		increase hunger of player by 2;
		increase libido of player by 3;
	if tailname of player is not "Wereraptor":
		wrtailsave;
		increase hunger of player by 1;
		increase libido of player by 1;
	if cockname of player is not "Wereraptor":
		wrcocksave;
		increase hunger of player by 1;
		increase libido of player by 8;


to wrbodysave:
	choose row monster from the table of random critters;
	now wrbodyname is bodyname of player;
	now wrbody is body of player;
	now wrscalevalue is scalevalue of player;
	now wrbodydesc is bodydesc of player;
	now wrbodytype is bodytype of player;
	now wrdaycycle is daycycle of player;
	now bodyname of player is "Wereraptor";
	now body of player is body entry;
	attributeinfect;
	say ".  Your body contorts painfully as [body change entry]";

to wrfacesave:
	choose row monster from the table of random critters;
	now wrfacename is facename of player;
	now wrface is face of player;
	now facename of player is "Wereraptor";
	now face of player is face entry;
	say ".  Your face cracks and pops as [face change entry]";

to wrskinsave:
	choose row monster from the table of random critters;
	now wrskinname is skinname of player;
	now wrskin is skin of player;
	now skinname of player is "Wereraptor";
	now skin of player is skin entry;
	say ".  Your skin feels tight and raw as [skin change entry]";

to wrtailsave:
	choose row monster from the table of random critters;
	now wrtailname is tailname of player;
	now wrtail is tail of player;
	now tailname of player is "Wereraptor";
	now tail of player is tail entry;
	say ".  Your hindquarters stiffens with a harsh pop as [ass change entry]";

to wrcocksave:
	choose row monster from the table of random critters;
	now wrcockname is cockname of player;
	now wrcock is cock of player;
	now cockname of player is "Wereraptor";
	now cock of player is cock entry;
	if cocks of player > 0:
		say ".  Your groin feels a surge of wild power as [cock change entry]";
	otherwise:
		say ".  You feel a rush of hot excitement from your loins";

to wrcurserecede:
	if bodyname of player is "Wereraptor":
		now bodyname of player is wrbodyname;
		now body of player is wrbody;
		now scalevalue of player is wrscalevalue;
		now bodydesc of player is wrbodydesc;
		now bodytype of player is wrbodytype;
		now daycycle of player is wrdaycycle;
	if facename of player is "Wereraptor":
		now facename of player is wrfacename;
		now face of player is wrface;
	if skinname of player is "Wereraptor":
		now skinname of player is wrskinname;
		now skin of player is wrskin;
	if tailname of player is "Wereraptor":
		now tailname of player is wrtailname;
		now tail of player is wrtail;
	if cockname of player is "Wereraptor":
		now cockname of player is wrcockname;
		now cock of player is wrcock;
	decrease dexterity of player by 2;
	decrease strength of player by 2;
	increase charisma of player by 2;
	increase intelligence of player by 2;


[	wrcursestatus		]
[ 0: no contact			]
[ 1: freed				]
[ 2: latent				]
[ 3: activated			]
[ 4: resisted for the night	]
[ 5: curse in effect		]
[ 100: curse purged		]


[
when play ends:
	if bodyname of player is "Wereraptor":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

[ Edit this to have the correct creature name as well]
Wereraptor For FS ends here.