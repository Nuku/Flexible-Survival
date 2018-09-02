Version 6 of Bouncy Castle by Stripes begins here.
[ Version 1.0 - Initial content - Stripes                               ]
[ Version 2.0 - Extended castle with simple traps - Stripes             ]
[ Version 2.1 - Added additional traps - Stripes                        ]
[ Version 2.2 - Anime Babe support - Stripes                            ]
[ Version 3.0 - Great Hall and King's Chamber added - Stripes           ]
[ Version 3.1 - Added sexual content to inflatable orca - Stripes       ]
[ Version 3.2 - Added Upper Hall + Sea Lion and Orca Toys - Stripes     ]
[ Version 3.3 - Added Punching Pillars room - Stripes                   ]
[ Version 4.0 - Remodeled Bouncy Castle - Stripes                       ]
[ Version 4.1 - Added sex chair alternate escape path - Stripes         ]
[ Version 5.0 - Make Bubble the vixen an obtainable NPC - Stripes       ]
[ Version 5.1 - Bound State Addition - Blue Bishop                      ]
[ Version 5.2 - Added Flot the dolphin toy - Blue Bishop                ]
[ Version 5.3 - Added bound state to the large Inflatable Orca - Song   ]
[ Version 5.4 - Minor maintenance and character relocation - Luneth     ]
[ Version 6.0 - Player can now choose whether or not to cut the tether after rescuing or losing the vixen. Added additional documentation and fixed several bugs - Song ]
[ Version 6.1 - Added an Inflatable Otter Suit that binds male/herm players and offers sex options for female/neuter players - Song ]

"Save the vixen 'princess' from the 'castle'."

Section 1 - Starting Event

vixcountdown is a number that varies. [Amount of turns allotted before the vixen (Bubble) can no longer be saved]
dolphinbundle is a number that varies. [Increases the difficulty of escaping the Inflatable Dolphin bound state, ranging from 0-2]
dolphinlist is a list of text that varies. [Creates a quasi-random pool of dolphins to check while searching for Bubble]
dolcastlefight is a number that varies. [Determines Bottlenose Toy scenes. 1 = win, 2 = loss (normal), 3 = loss (in castle)]
bclatearrival is a number that varies. [Normally 0, set to 1 when visiting the castle after vixcountdown ends while away. Hides initial prompt after agreeing]
bcuntethered is a number that varies. [Determines whether or not the Bouncy Castle is still tethered]
bcending is a number that varies. [Determines bad ends]
[Previously included dolcastleturn, which elapses 1 hour (turn/3) per empty dolphin suit checked. Since this was unrealistically long for something that would take a minute to do at most, I've removed the stat entirely]

Snared Vixen is a situation. The level of Snared Vixen is 5.
the sarea of Snared Vixen is "Beach".

when play begins:
	add Snared Vixen to badspots of girl; [We may want to add an event later to allow people with 'girl' banned access to the Bouncy Castle]
	add Snared Vixen to badspots of furry;

Instead of resolving a Snared Vixen:
	say "     As you're traveling along the beach, you can hear some giggling in the distance. As you crest the next sandy rise, you can see several bright pink dolphin girls playing with a vixen they've found. She's struggling a little, but her resistance becomes less and less as the playful inflatables tease her body while taking off what few scraps of clothes she has. As they're several hundred yards away, you'd not be able to get there in time to interfere if you wanted to. It's hard to make out all the details at this distance.";
	say "     [bold type]Are you interested in watching or shall you just continue on your way?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Watch.";
	say "     ([link]N[as]n[end link]) - Continue on your way.";
	if player consents: [Starts a questline to access the Bouncy Castle and save the vixen]
		say "     While one of the dolphin girls gives the vixen a kiss and another buries her bottlenose in her furry crotch, the third removes an uninflated dolphin toy from a satchel they were carrying. As the pink dolphins start sliding it over the vixen, she hardly struggles, the trio keeping her too lustful to quite notice what's going on until it's too late. Her arms are held to her sides as they start enclosing her in the large, inflatable cetacean. It's only as they're sealing her up completely in it that she starts to scream, but those are soon muffled somehow. The vixen, now fully encased in a dolphin-shaped inflatable, is carried into the water by the giggling girls. You watch as they pull her out to sea. You're confused by this at first, as they just seem to be floating her along, but you eventually spot a sky blue bouncy castle floating out on the water past the rocks that appears to be their destination.";
		say "     As you're watching all this, you continue walking along the beach. By the time you get to the site of the vixen's capture, you can see the dolphin girls pulling the buoyant inflatable into the castle to meet whatever fate the dolphins eventually have planned for her. You sort through the vixen's clothes and her small collection of gear. You don't spot anything of use to you, though you do find a small pad of notes the vixen seems to have been using to keep track of stuff. Most of it doesn't interest you until you spot a note about having recently found a large stash of bottled water. Suddenly concerned about the vixen's fate, you find yourself wondering if there's any way to rescue her, or at least learn from her where these supplies can be found.";
		if boatfound is 0 and hasgills is 0:
			say "     But first, you'll need to find a means of getting out there. You'll need to either be a better swimmer or find a boat you can use to get there. She probably doesn't have too long, so you'll need to move quickly.";
			now boatfound is 1;
		else if boatfound is 3:
			say "     The boat you've used to travel to the pirate island is more than capable of handling the short jaunt out to the bouncy castle, so you should be able to make it out there.";
		else if hasgills is 1:
			say "     It would take a bit of work, but you should be able to swim all the way out to the bouncy castle thanks to your gills.";
		now Bouncy Castle is known;
		now HP of Bubble is 1;
		now vixcountdown is 29;
		now dolphinlist is { "C", "A", "X", "B", "X", "C", "A", "D", "X", "C", "X", "A" }; [Creates a list of letters that are pulled for later events]
		let templist be { "A", "C", "D", "E"}; [Prepares additional events to add to dolphinlist]
		sort templist in random order; [Sets these extra events to slots 3, 5, 9, and 11 for a quasi-random search]
		now entry 3 of dolphinlist is entry 1 of templist;
		now entry 5 of dolphinlist is entry 2 of templist;
		now entry 9 of dolphinlist is entry 3 of templist;
		now entry 11 of dolphinlist is entry 4 of templist;
	else: [Aborts finding the Bouncy Castle entirely]
		say "     Deciding that it's not of interest to you, you turn away and head back the way you came.";
	now Snared Vixen is resolved;


Section 2 - traveling to the Bouncy Castle

rowing is a truth state that varies. rowing is usually false.

instead of navigating Bouncy Castle:
	if HP of Bubble is 0: [Didn't see Snared Vixen / said no during it. This should never show up due to Bouncy Castle not being known, but it's here to catch errors]
		say "     Go where now?";
		stop the action;
	if bcuntethered is 1: [Removed the ropes connecting the castle to some outcroppings. This should never show up due to Bouncy Castle not being known, but it's here to catch errors]
		say "     Don't you remember? You sent it out to sea.";
		stop the action;
	if hasgills is 0 and boatfound < 2:
		say "     [if HP of Bubble is 100]By this point, you doubt that the captured vixen can be saved. Even then, you[else]You[end if] have no way to make it to the inflatable castle out in open water. You'll need to find some means to get there.";
		stop the action;
	if location of player is Bouncy Castle:
		say "     You're already here.";
		stop the action;
	if location of player is not fasttravel and location of player is not Public Beach:
		say "     You can't navigate from here.";
		stop the action;
	if HP of Bubble is 100 and bclatearrival is 0: [The vixen is lost while not at the castle. Updated to allow the player to return even after Bubble's demise]
		say "     By this point, you doubt that the captured vixen can be saved, though it might be worth exploring the bouncy castle to see if you can scavenge anything of value.";
		say "     [bold type]Do you still wish to visit the castle?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Nothing ventured, nothing gained. You may as well check it out to see if there's anything worth pilfering.";
		say "     ([link]N[as]n[end link]) - No thanks. You'd rather not risk your life for this.";
		if player consents:
			now bclatearrival is 1;
			say "[bcnavigate]";
		else:
			say "     Erring on the side of caution, you reign in your curiosity - for now.";
			stop the action;
	else:
		say "[bcnavigate]";

to say bcnavigate:
	if location of player is not Beach Plaza and location of player is not Public Beach: [Skips this if the player is already in Beach Plaza or Public Beach]
		say "     You begin by making your way back to the beach";
		let the bonus be (( the perception of the player minus 10 ) divided by 2);
		now battleground is "Outside";
		if a random number from 1 to 20 < 10 minus bonus:
			say ", encountering an enemy on the way there.";
			if there is a area of Battleground in the table of random critters:
				Fight;
				if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
					say "As you are trying to recover from your last encounter, another roving creature finds you.";
					Fight;
		else:
			say ", avoiding trouble as best you can.";
		move player to Beach Plaza;
	if boatfound is 3:			[boat]
		say "     Returning to where you moored your boat at the beachside, you set sail for the floating play castle. You manage to sail out to it without incident. It would take more sailing finesse than you have to pull up alongside the sky blue castle, so you drop anchor nearby and swim the remaining distance rather than risk puncturing its inflatable hide.";
		move player to Bouncy Castle;
	else if boatfound is 2:		[rowboat]
		say "     Returning to the rowboat you found, you drag it into the water and start your journey. It is hard work rowing the boat, but it certainly beats swimming the whole way. As you're making your way through the rocking outcroppings on your way to the floating castle, you watch warily for any signs of the creatures infesting these waters.";
		now rowing is true;
		if a random number between 1 and 20 > the perception of the player:
			swimmingfight; [details in Hellerhound\Underwater Zone.i7x]
		now rowing is false;
		say "     Eventually, you make it out to the buoyant castle, rowing up close to it. Your arms are sore from all the rowing, but you have managed to arrive at your destination. Worried your boat might scrape a hole in its rubbery hide, you moor your boat to one of the tethers tying the castle between the rocks. You swim the short distance to the floating castle and make your way inside.";
		let dam be 16 - ( strength of player / 2 ) - (stamina of player / 2 );
		if dam < 0, now dam is 0;
		decrease HP of player by dam;
		move player to Bouncy Castle;
		follow the turnpass rule;
	else if hasgills is 1: [swam there]
		say "     Returning to the section of beach near the floating castle, you swim out into the waters. While your aquatic affinity makes the swim easier, you still struggle against the turbulent waters in this area. As you're making your way through the rocky outcroppings on your way to the floating castle, you watch warily for any signs of the creatures infesting these waters.";
		swimmingfight; [details in Hellerhound\Underwater Zone.i7x]
		say "     Eventually, you make it to the buoyant castle, managing to swim to one of the lines that is keeping it tethered between the rocky outcroppings. You follow that line up to the castle and climb inside, quite tired, but having reached your destination.";
		let dam be 20 - ( strength of player / 2 ) - (stamina of player / 2 );
		if dam < 0, now dam is 0;
		decrease HP of player by dam;
		move player to Bouncy Castle;
		follow the turnpass rule;


Section 3 - Bouncy Castle Layout

bcswordplay is a truth state that varies. bcswordplay is usually false.
bcseenplayroom is a truth state that varies. bcseenplayroom is usually false.
bcplayroomlast is a truth state that varies. bcplayroomlast is usually true.
bcseenkingchair is a truth state that varies. bcseenkingchair is usually false.
bcseenkingknight is a truth state that varies. bcseenkingknight is usually false.
bcseenhugeorca is a truth state that varies. bcseenhugeorca is usually false.
bcfinalchairform is a text that varies. bcfinalchairform is usually "".
lastsealfight is a number that varies. lastsealfight is usually 255.
lastoctofight is a number that varies. lastoctofight is usually 255.
lastbcchair is a number that varies. lastbcchair is usually 255.
lastbcduobeaten is a number that varies. lastbcduobeaten is usually 255.
bcduofightlost is a truth state that varies. bcduofightlost is usually false.
bcduofightfled is a truth state that varies. bcduofightfled is usually false.
bcseenthroneroom is a truth state that varies. bcseenthroneroom is usually false.

The Bouncy Castle is a room. Bouncy Castle is fasttravel. Bouncy Castle is unknown. Bouncy Castle is private.
The description of Bouncy Castle is "[bcentrance]".

The Fencing Room is a room. The Fencing Room is east of Bouncy Castle.
The description of Fencing Room is "[bcfencingroom]".

The Bouncing Play Room is a room. The Bouncing Play Room is south of Fencing Room. The Bouncing Play Room is east of Ball Pit Room.
The description of Bouncing Play Room is "[bcplayroom]".

The Ball Pit Room is a room. The Ball Pit Room is south of Toy Room.
The description of Ball Pit Room is "[bcballpitroom]".

The Toy Room is a room. The Toy Room is west of Bouncy Castle.
The description of Toy Room is "[bctoyroom]".

The Punching Pillars is a room. The Punching Pillars is west of Ball Pit Room.
The description of Punching Pillars is "[bcpunchingpillars]".

The Knight's Chambers is a room. The Knight's Chambers is north of Punching Pillars.
The description of Knight's Chambers is "[bcknightschambers]".

The Great Hall is a room. The Great Hall is east of Bouncing Play Room.
The description of Great Hall is "[bcgreathall]".

The King's Chambers is a room. The King's Chambers is north of Great Hall.
The description of King's Chambers is "[bckingschamber]".

The Lower Tower is a room. The Lower Tower is southeast of Ball Pit Room.
The description of Lower Tower is "[bclowertower]".

The Upper Tower is a room. The Upper Tower is up of Lower Tower.
The description of Upper Tower is "[bcuppertower]".

The Tower Turret is a room. The Tower Turret is up of Upper Tower.
The description of Tower Turret is "[bctowerturret]".

The Upper Hall is a room. The Upper Hall is north of Upper Tower.
The description of Upper Hall is "[bcupperhall]".

The Western Parapets is a room. The Western Parapets is west from Upper Hall.
The description of Western Parapets is "[bcwestparapets]".

The Eastern Parapets is a room. The Eastern Parapets is east from Upper Hall.
The description of Eastern Parapets is "[bceastparapets]".

The Castle Throne Room is a room. The Castle Throne Room is northeast of Western Parapets. The Castle Throne Room is northwest of Eastern Parapets.
The description of Castle Throne Room is "[bcthroneroom]".

BouncyCastleExit is a room. "Leaving the bouncy castle."  BouncyCastleSlideExit is east of Eastern Parapets. BouncyCastleSlideExit is west of Western Parapets. BouncyCastleExit is north of Bouncy Castle.


the scent of Bouncy Castle is "This place smells of rubber and the ocean.".

the scent of Fencing Room is "This place smells of rubber and the ocean.".

the scent of Bouncing Play Room is "This place smells of rubber and the ocean, though there's a lingering scent of arousal and sex as well.".

the scent of Ball Pit Room is "This place smells of rubber and the ocean.".

the scent of Toy Room is "This place smells of rubber and the ocean, though there's a lingering scent of arousal and sex as well.".

the scent of Great Hall is "This place smells of rubber and the ocean, though there's a lingering scent of arousal and sex as well.".

the scent of King's Chambers is "This place smells of rubber and the ocean.".

the scent of Punching Pillars is "This place smells of rubber and the ocean, though there's a lingering scent of arousal and sex as well.".

the scent of Knight's Chambers is "This place smells of rubber and the ocean.".

the scent of Lower Tower is "This place smells of rubber and the ocean.".

the scent of Upper Tower is "This place smells of rubber and the ocean.".

the scent of Tower Turret is "This place smells of rubber and the ocean.".

the scent of Western Parapets is "This place smells of rubber and the ocean.".

the scent of Eastern Parapets is "This place smells of rubber and the ocean.".

the scent of Upper Hall is "This place smells of rubber and the ocean.".

the scent of Castle Throne Room is "This place smells of rubber and the ocean.".


Section 4 - Inside the Bouncy Castle

Book 1 - Ground Floor

Chapter 1 - Entrance

to say bcentrance:
	if HP of Bubble is 1:
		say "     As you approach your destination, you can see it's much larger than you'd originally guessed. Being the size of a good-sized home, it could probably accommodate several dozen rambunctious, jumping kids at once. It even seems to be two tiered, with a waterslide coming down from the upper level on both the east and west sides. There is also a taller tower somewhere off at the back. You don't recall these things being made this large. The exterior of the castle is sky blue, making it difficult to see at a distance. The large inflatable has been secured by two long ropes which lead to rocky outcroppings, mooring it safely between them. But despite this, it does shift and sway around considerably. Coupling that with its bouncy floor makes movement inside rather difficult.";
		say "     You pull yourself into the first room and look around the entrance room. It has a soft, bouncy floor and is a couple of feet above the water level, necessitating an easy climb up a mesh ladder that hangs from the entrance mouth. The interior of this room has a dark green floor, blue walls with yellow arches and columns and a ceiling of red. There's a couple of beach balls and pool noodles left scattered on the floor here, probably by the airheaded dolphin girls[if daytimer is night]. Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].";
		now HP of Bubble is 2;
		increase score by 5;
	else:
		say "     This inflatable castle floats on the water, tethered between two rocks by thick ropes. It sways and bobs on the water, adding to the instability of its floor, making it difficult for you to move around. The bouncy castle itself is brightly colored with the exterior a sky blue, making it hard to spot on the water in the distance. The interior has a dark green floor, blue walls with yellow arches and columns, and a ceiling of red vinyl[if daytimer is night]. Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].";
	say "     Aside from the yawning mouth to the castle which you entered to the south of you, there are two separate child-sized doorways out of this room, one to the east and one to the west. While each doorway is obscured by strips on hanging clear plastic, pushing them aside, you glance quickly in them both before pressing onward. The one to the [link]east[end link] has a few columns in it and some foam swords and other toys scattered on the floor. To the [link]west[end link], you see large assortment of beach toys and equipment, including some several beach balls, plastic pails and buckets and a couple of those floating mats people can lie across while in the pool. Alternatively, you could exit to the [link]north[end link] and make your way back to the beach.";
	[DESCRIBE FLOT]

instead of going north from Bouncy Castle:
	say "     You head back into the water and make your way back to the beach to consider your next move.";
	move player to Public Beach;
	follow the turnpass rule;


Chapter 2 - Fencing Room

to say bcfencingroom:
	say "     This room is similar to the first room you were in, but has an arched window set into the outer wall[if daytimer is day], letting in some light[else]. Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if]. Unlike the first room, there are several drawings of knights swordfighting on the walls. Scattered on the floor are ";
	if bcswordplay is false:		[swords active - foam sword fight!] [FLOT - DONE]
		if flotmarked is true and a random chance of 1 in 2 succeeds:
			say "several foam swords which, as you pause for a moment to look at them, start to rise up into the air on their own. They wildly swing about the air for a bit, rarely ever getting close to you, before finally exhausting themselves and tumbling to the ground once more.";
			say "     It seems that they knew [italic type]someone[roman type] was in the room, but they were having trouble distinguishing you from the environment, how odd...";
			now bcswordplay is true;
		else:
			say "several foam swords which, as you pause for a moment to look at them, start to rise up into the air on their own, swinging wildly at you. The blows don't really hurt, but you are knocked around on the unsteady floor.";
			say "     Shall you: Grab one of the swords and [link]fight back (1)[as]1[end link] or make a break for the [if bcseenplayroom is true]play room[else]doorway[end if] to the [link]south (2)[as]2[end link] or back to the entrance to the [link]west (3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choose 1-3> ";
				get a number;
			if calcnumber is 1:
				say "     You snatch at one of the swords and easily catch it by the hilt, turning and swinging it towards with others with a loud 'Aha!' The sword parries a few strikes coming at you, but others strike you from behind. Laughing, you hop to turn around and face those, fencing with them. Soon you're hopping around the room and trying to weave around the pillars to swordfight with the boffer weapons as you laugh heartily. Having fun playing with the animated weapons, you lose track of time until you are eventually left exhausted and drop to the floor, panting to regain your breath as you giggle merrily. The swords, also appearing to be tired or content with their playtime, settle back down onto the floor.";
				increase morale of player by 2;
				SanLoss 8;
				LibidoLoss 5;
				now bcswordplay is true;
				follow the turnpass rule;
			else if calcnumber is 2 or calcnumber is 3:
				let shieldbonus be 0;
				let bonus be ( dexterity of player - 10 ) / 2;
				repeat with x running through equipped equipment:
					if ac of x > 0 and placement of x is "shield":
						let shieldbonus be 2;
				let dice be a random number from 1 to 20;
				say "     You roll 1d20([dice])+[bonus]+[shieldbonus]: [dice + bonus + shieldbonus] vs 16: ";
				if bonus + dice + shieldbonus > 15:
					say "     You move as best you can, weaving between the boffer swords as they swing at you. Some blows hit, but you manage to stay on your feet as they pound onto you[if shieldbonus > 0] and your shield[end if] and make your escape, diving through into the next room.";
					if calcnumber is 2:
						move player to Bouncing Play Room;
					else:
						move player to Bouncy Castle;
				else:
					say "     You try your best to move towards the door, but the unsteady footing and the wild blows from every direction send you tumbling around until you finally fall to the floor. The foam swords pound on you for a while as you squirm around, trying to get up but becoming increasingly giddy. You laugh and giggle madly as they bash you around for what seems like a couple of hours until the swords settle down and you manage to crawl into the next room.";
					SanLoss 5;
					follow the turnpass rule;
					if calcnumber is 2:
						move player to Bouncing Play Room;
					else:
						move player to Bouncy Castle;
	else:
		say "the foam swords, still and inactive, at least for now. You have two directions you can go from here, either back to the entrance by going [link]west[end link] or heading [link]south[end link] to the next room. A preliminary peek in there shows a larger room there with only a few scattered items littering the floor.";


Chapter 3 - Bouncing Play Room

to say bcplayroom:
	now bcplayroomlast is true;
	now bcseenplayroom is true;
	say "     This room is large and open with a plenty of space for kids to bounce and play inside it. It is very similar to the entrance room with its green floor, blue walls, red ceiling and yellow for the rounded columns that form the corners. The southwest corner is rounded with a much larger tower there, though there's no entrance to it here. There's a pair of arched window on the south wall[if daytimer is day], letting in some light[else]. Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if]. There's a few toys and things scattered around this room, clearly from when the dolphin girls would frolic in here. From the scent in the air, you can tell that the room's been used for more adult frolicking as well.";
	if lastsealfight - turns >= 4: [FLOT - DONE]
		if flotmarked is true and a random chance of 1 in 2 succeeds:
			say "     Now that you're in the room, you do notice a bright yellow seal-shaped floating seat in the northwest corner. It's fairly small and would only really be suitable for toddlers. It has a drawn-on face with a friendly smile, blue eyes, black nose and cute whiskers and a pair of small handles at its shoulders. As you look at it, it briefly stirs, flapping about in mild confusion. '...Play?' squeaking softly, it eventually exhausts itself trying to find you and seems to deflate either from exhausting itself or from disappointment. It appears it wasn't able to notice you...";
			now lastsealfight is turns;
		else:
			if lastsealfight is 255:
				say "     Now that you're in the room, you do notice a bright yellow seal-shaped floating seat in the northwest corner. It's fairly small and would only really be suitable for toddlers. It has a drawn-on face with a friendly smile, blue eyes, black nose and cute whiskers and a pair of small handles at its shoulders. As you look at it, it starts to stir, flapping its flippers and giving a squeaking bark. 'Play!' it squeaks, crawling forward to have fun with the newcomer. As it moves, you spot a pointed penis inflating at its underside - clearly a new feature to this once innocent toy.";
			else:
				say "     Looking over, you notice that the bright yellow seal has managed to reinflate itself and is looking towards you. 'Play?' it squeaks enquiringly before waddling forward on its flippers, clearly intent on trying to play with you again.";
			WaitLineBreak;
			let weaponbonus be weapon damage of player / 3;
			let bonus be ( dexterity of player - 10 ) / 2;
			let dice be a random number from 1 to 20;
			say "     You roll 1d20([dice])+[bonus]+[weaponbonus]: [dice + bonus + weaponbonus] vs 14: ";
			if bonus + dice + weaponbonus > 13:
				say "You manage to stay standing and take a few swings at the yellow seal, popping one of its seams and sending it flopping back into the corner as it deflates with a sad whine. You can see the tear already starting to mend, though you don't expect it'll give you trouble for a little while.";
				now lastsealfight is turns;
			else:
				now lastsealfight is turns;
				say "You try to knock the seal toy away with a few blows, but you are too unsteady on your feet and the small seat squirms between your legs, tripping you onto the soft floor. Even as you're still swaying atop the yielding floor, the seal hops atop you, pressing his hindquarters to your face. You fumble to push him away, but are treated to a mouthful of his inflatable cock. As he humps your face, you find yourself submitting to just let the lonely creature have his fun. It starts to dribble some latex-like precum that becomes increasingly enjoyable and makes you all the more aroused and playful.";
				if player is female:
					let baby be 0;
					if child is born or gestation of child is not 0, now baby is 1;
					say "     After humping your face for a while, the toy shuffles around and starts trying to nose your clothes and gear off as he nuzzles at your crotch. Knowing what he's after and too overcome to resist it, you strip down and offer to let the cute seat ride you for a little while. He hops up behind you and grips you lightly with his inflated flippers as his slick shaft slides into your juicy pussy. You moan softly and push back, letting the little guy thrust into you until he cums with a happy squeak. Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.[impregchance]";
					say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and buoyed by the experience, losing track for a while of your intended mission.";
					if baby is 0 and gestation of child is not 0:
						now facename of child is "Seal Toy";
						now bodyname of child is "Seal Toy";
						now skinname of child is "Seal Toy";
					LibidoBoost 10;
					SanLoss 10;
					follow the turnpass rule;
				else if anallevel is 3 and a random chance of 1 in 2 succeeds:
					let baby be 0;
					if child is born or gestation of child is not 0, now baby is 1;
					say "     After humping your face for a while, the toy shuffles around and starts trying to nose your clothes and gear off as he nuzzles at your rear. Knowing what he's after and too overcome to resist it, you strip down and offer to let the cute seat ride you for a little while. He hops up behind you and grips you lightly with his inflated flippers as his slick shaft slides into your tight bottom. You moan softly and push back, letting the little guy thrust into you until he cums with a happy squeak. Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.[mimpregchance]";
					say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and buoyed by the experience, losing track for a while of your intended mission.";
					if baby is 0 and gestation of child is not 0:
						now facename of child is "Seal Toy";
						now bodyname of child is "Seal Toy";
						now skinname of child is "Seal Toy";
					LibidoBoost 10;
					SanLoss 10;
					follow the turnpass rule;
				else:
					say "     You rub your hands over the cute toy's white underbelly, making it squeak happily. As the strange blowjob continues, you become a more active participant, licking and sucking at the inflated prick stuffing your mouth as it leaks latexy precum down your throat. After a few more minutes of thrusting, he gives a happy squeak and thrusts into you one last time before unleashing spurts of gooey cum. Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.";
					say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and buoyed by the experience, losing track for a while of your intended mission.";
					LibidoBoost 10;
					SanLoss 8;
					follow the turnpass rule;
	else:
		say "     Taking a quick glance to the northwest corner, you can see that the yellow seal is still partially deflated and isn't ready to try to play again, giving you a chance to continue undistracted. A quick glance shows two kid-sized doorways leading out of here, one to the west and other to the north. A quick glance through the hanging flaps between rooms shows the [link]north[end link] leads to the smaller room you saw earlier with the foam swords. The door to the [link]west[end link] leads to a ball pit room as big as this play room. You also notice a mesh climbing ladder at the back corner of the ball pit which heads up to the upper level.";


Chapter 4 - Ball Pit Room

to say bcballpitroom:
	say "     The ball pit room has a rounded, raised edge and seems sunk further into the floor, making it somewhat less springy under all those balls. You are able to wade your way through them slowly to move around. The room itself is fairly large, bigger than the entrance room, but having the same overall design. There's two arch-shaped windows in the south wall[if daytimer is day], letting in some light[else]. Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if]. In the [link]southeast[end link] corner of the room, the wall is rounded with a much larger tower there with an arched entrance into it. There are also three other doorways out of here, one to the [link]north[end link] leading to the smaller room with all the beach toys the dolphin girls have collected, another to the [link]east[end link] and a play room as large as this one and the final to the [link]west[end link] heading to a hall filled with padded pillars made for punching.";


Chapter 5 - Toy Room

to say bctoyroom:
	say "     This side room has the same color scheme as the adjoining entrance room with a green floor, blue walls and red ceiling. In the corners, there are curved yellow sections to symbolize columns. The room is quite cluttered with beach toys and pool toys scattered all around the room and even clumped into several piles. There's a bit of everything in here, with pool noodles and paddle boards all over the place, plastic pails and buckets of all colors and beach balls everywhere. It looks like the dolphin girls have been storing any beach toys they've found in here.";
	if lastoctofight - turns >= 4: [FLOT - DONE]
		if flotmarked is true and a random chance of 1 in 2 succeeds:
			say "     As you're looking around, some of the junk scattered here starts to shift and move. Thinking at first it's only the result of your weight shifting the floor, you try to tread more carefully. But when the yellow tentacles start to appear from beneath the mess, you find yourself surrounded. One large pile shifts and you see a grinning inflatable with a vapid expression of joy on its smooth, round face. The inflatable octopus is sunshine yellow with amber along the underside of the inflated tentacles and on a few spots atop its head.";
			say "...However, it seems to have trouble figuring out where you are, exactly, and fumbles clumsily around, allowing you to sidestep it easily. Eventually, it exhausts itself looking for you and simply gives up...";
			now lastoctofight is turns;
		else:
			if lastoctofight is 255:
				say "     As you're looking around, some of the junk scattered here starts to shift and move. Thinking at first it's only the result of your weight shifting the floor, you try to tread more carefully. But when the yellow tentacles start to appear from beneath the mess, you find yourself surrounded. One large pile shifts and you see a grinning inflatable with a vapid expression of joy on its smooth, round face. The inflatable octopus is sunshine yellow with amber along the underside of the inflated tentacles and on a few spots atop its head. It shambles towards you as its curled tentacles try to wrap around you";
				if bodyname of player is "Anime Babe":
					say ". Your anime babe body quivers at the knees at the sight of those tentacles, your body no longer obeying your mind's commands to resist";
				say ".";
			else:
				say "     As you try to move around the room, the yellow octopus rouses itself and makes another grab at you with its sunshine yellow tentacles. It grins at you with the same, unchanging expression of giggling happiness";
				if bodyname of player is "Anime Babe":
					say ". Your anime babe body quivers at the knees at the sight of those tentacles, your body no longer obeying your mind's commands to resist";
				say ".";
			let bonus be ( strength of player - 10 ) / 2;
			if bodyname of player is "Anime Babe", decrease bonus by 5;
			let dice be a random number from 1 to 20;
			say "     You roll 1d20([dice])+[bonus]: [dice + bonus] vs 17: ";
			if bonus + dice > 16:
				say "     The octopus inflatable wraps a few tentacles around you, but you manage to push them off and kick them away for the moment.";
				say "     [bold type]You have an opportunity to get away either by their heading further into the castle by heading south or going to the east to return to the castle entrance.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - South - Further into the castle.";
				say "     ([link]N[as]n[end link]) - East - Return to the castle entrance.";
				if player consents:
					move player to Ball Pit Room;
				else:
					move player to Bouncy Castle;
			else:
				say "     The octopus inflatable wraps a few tentacles around you and pulls you in towards it before you can push free. It has a surprisingly strong grip for a creature made of thin plastic and air. It reaches forward with two shorter tentacles and starts to grope and fondle you, drawing an involuntary moan out of you. Soon its many tentacles are roaming over your body, squeezing your [if breast size of player > 0]breasts and [end if]ass as it sends another tentacle between your legs. While groping your [if player is male]maleness[else if player is female]crotch[else]bare crotch[end if], a few of its other tentacles divest you of your clothes and gear, dropping them among the scattered beach toys here[if player is male]. It shuffles itself forward and climbs onto your stiff cock, sinking it into a surprisingly warm and wet hole, riding your erection. Made to fuck the octopus toy's lubricated pussy, you eventually groan loudly as you cum hard into the wanton creature[end if][if cunts of player > 1]. While this is going on, the octopus plays with your pussies, resizing the ends of its tentacles to be a perfect fit for your dripping cunts. It works eagerly, pushing you to orgasm and soak the rubbery floor in your juices[end if][if anallevel > 1]. It also works a tentacle into your tight sphincter, pumping and rubbing inside you[end if].";
				say "     When it's finally finished with you a couple of hours[if player is not neuter] and several orgasms[end if] later, it drops you down onto the padded floor to recover and gather up your stuff[if lastoctofight is 255]. You do spot a can of soda half-buried among the beach toys near you and toss it into your pack before flopping on the floor to rest and catch your breath[end if].";
	[			say "     The octopus inflatable wraps a few tentacles around you and pulls you in towards it before you can push free. It has a surprisingly strong grip for a creature made of thin plastic and air. It reaches out towards you with two shorter tentacles like some cartoony hentai monster. Once you're within range, those two tentacles dive at your sides and it starts to tickle you with them. At first, your surprise keeps you from laughing, but soon you're giggling in a mix of relief and its squirming appendages['] playful tickling. You fall into laughing hysterics as the large pool toy continues to brush those rubber appendages across your sides. You laugh and laugh, tears running down your face as it continues to play with you until you collapse, exhausted both physically and mentally. The octopus shuffles back into the junk to lurk quietly, waiting to surprise the next dolphin girl to come along with a tickle attack.";
				if lastoctofight is 255:
					say "     You do spot a can of soda half-buried among the beach toys near you and toss it into your pack before flopping on the floor to rest and catch your breath.";]
				now lastoctofight is turns;
				SanLoss 3;
				LibidoBoost 3;
				follow the turnpass rule;
	else:
		say "     You glance over and notice the yellow octopus lurking among the junk, but it seems content to leave you alone for now. You can see two child-sized doors out of here. The one to the [link]east[end link] heads back to the entrance room you started in while the [link]southern[as]south[end link] one leads to a large ball pit in which you can see a mesh ladder to climb to the upper level.";


Chapter 6 - Great Hall

to say bcgreathall:
	if lastorcabeat - turns >= 4: [FLOT - DONE]
		say "     You find yourself in a room designed as if it were a great hall, with images of banquet table on the west wall and tapestries between the windows on the east. There's a door at the north and another at the southern corner of the west wall, the one which first brought you in here. But you have little opportunity to take in much more detail than this, for the room also holds ";
		if bcseenhugeorca is false:
			say "a large, inflatable orca toy. It is very round and bigger than the dolphin toys you've seen, being over two yards long from end to end and big enough for an adult to use. The black and white inflatable bobs up into the air and rolls over a few times with a trilling noise before charging towards you to bump you with its nose. The blow doesn't really hurt much, but makes you stumble back on the rocking, swaying floor. It seems intent on playing with you, although what that entails is yet to be seen.";
			now bcseenhugeorca is true;
		else:
			say "the large orca inflatable from earlier. It trills happily and moves in to charge at you, clearly wanting to [if orcaintense is 0]turn you into its well-fucked plaything again[else]bump you around some more[end if] as part of its game.";
		if flotmarked is true and a random chance of 1 in 2 succeeds:
			say "     The orca tries to charge you again, but seems to have trouble aiming at you and misses completely, bouncing harmlessly against a wall! You have a quick moment to decide which direction you'd like to go before it can recover.";
			say "     [bold type]Shall you head through the door to the north or head back the way you came by going west back to the play room?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - North.";
			say "     ([link]N[as]n[end link]) - Go back west to the play room.";
			if player consents:
				say "     You move quickly to the northern doorway, push aside the plastic curtain and dive into the next room just before the orca comes rushing to slam into you. The doorway seems too small for the big orca toy, making you briefly wonder if it was deflated to bring it in here.";
				move player to King's Chambers;
			else:
				say "     You move quickly to door in the southwest end of the room. Pushing aside the plastic curtain, you head back towards the center of the bouncy castle.";
				move player to Bouncing Play Room;
		else:
			let bonus be ( dexterity of player - 10 ) / 2;
			let dice be a random number from 1 to 20;
			say "     You roll 1d20([dice])+[bonus] + [3 - scalevalue of player]: [dice + bonus + 3 - scalevalue of player] vs 15: ";
			if ( bonus + dice + 3 - scalevalue of player ) > 14:
				say "     You manage to weave in one direction and then push off in the other, dodging another charge from the orca which would have knocked you off your feet. You have a quick moment to decide which direction you'd like to go.";
				say "     [bold type]Shall you head through the door to the north or head back the way you came by going west back to the play room?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - North.";
				say "     ([link]N[as]n[end link]) - Go back west to the play room.";
				if player consents:
					say "     You move quickly to the northern doorway, push aside the plastic curtain and dive into the next room just before the orca comes rushing to slam into you. The doorway seems too small for the big orca toy, making you briefly wonder if it was deflated to bring in here.";
					move player to King's Chambers;
				else:
					say "     You move quickly to door in the west end of the room. Pushing aside the plastic curtain, you head back towards the center of the bouncy castle.";
					move player to Bouncing Play Room;
			else:
				say "     You fail to dodge in time and are struck by the full brunt of the orca's charge, knocking you off your feet. It takes a moment to recover, and by that time you do, the orca is nudging and bumping you insistently, clearly intent on playing with you[if orcaintense is 0] some more[end if]. Pressed into a corner, it looks like your only option is to fight this creature if you want to make it out of this [if orcaintense is 0]place with your mind intact[else]room[end if].";
				challenge "Inflatable Orca";
				if fightoutcome >= 30: [Only for fleeing. For other outcomes, see Inflatable Orca.]
					say "     Deciding that discretion is the better part of valor, you make use of an opening to book it towards your last point of entry, narrowly avoiding another charge from the overly friendly cetacean.";
					WaitLineBreak;
					if bcplayroomlast is true:
						move player to Bouncing Play Room;
					else:
						move player to King's Chambers;
	else:
		say "     You find yourself in a room designed as if it were a great hall, with images of banquet table on the west wall and tapestries between the windows on the east. There's a door at the north and another at the southern corner of the west wall, the one which first brought you in here. The orca you fought against earlier is still lying in the center of the room, trying to mend itself.";


Chapter 7 - King's Chambers

to say bckingschamber:
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	now bcplayroomlast is false;
	say "     This room is designed to be the king's chambers. The wall designs have a pair of guards by the door, tapestries by the windows, a bed and treasure chest as large decals to show a childish representation of this. There's no exit from this room save the one you entered by. There's a window on the north wall and another two on the east. There's not much in this room - a few beach balls, some other assorted odds and ends, and ";
	if flotmarked is true and a random chance of 1 in 2 succeeds:
		if bcseenkingchair is false:
			say "a very mundane looking inflatable chair resting on its side. The discarded or forgotten chair is transparent and yellow[if scalevalue of player < 3]. It seems a little on the small side, but this makes it just about the right size for your [body size of player] [bodydesc of player] body[else if scalevalue of player > 3]. It seems larger than normal, seeming just about the right size for your [body size of player] [bodydesc of player] body[else]. It seems just about the right size for your [bodydesc of player] body[end if].";
			say "     You're a little off-put by the chair, and feel inclined to keep your distance from it.";
		else:
			say "the inflatable chair. It doesn't seem aware of your presence, and subsequently makes no attempt to allure you.";
	else:
		if bcseenkingchair is false:
			say "a very mundane looking inflatable chair resting on its side. The discarded or forgotten chair is transparent and yellow[if scalevalue of player < 3]. It seems a little on the small side, but this makes it just about the right size for your [body size of player] [bodydesc of player] body[else if scalevalue of player > 3]. It seems larger than normal, seeming just about the right size for your [body size of player] [bodydesc of player] body[else]. It seems just about the right size for your [bodydesc of player] body[end if].";
			say "     Feeling a little worn out from your trip through the castle and from evading the orca, you push the chair upright and take a seat in it, relaxing for a moment to take a break[if compnumber is 1]. Your companion takes the opportunity to unwind as well, playing with one of the beach balls[else if compnumber > 1]. Your companions take the opportunity to unwind as well, tossing around one of the beach balls[end if]. Enjoying your much-needed break, you start to doze off, only to be startled awake by a strange sensation coming over you.";
			say "[bckingchair]";
		else:
			say "the inflatable chair. When you set your eyes on it, you feel an attraction towards the yellow inflatable, wanting to sit in it again, to accept joining with it this time.";
			say "     [bold type]Shall you resist the impulse (Y) or take a seat willingly this time (N)?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Resist.";
			say "     ([link]N[as]n[end link]) - Take a seat.";
			if player consents: [FLOT - DONE]
				let bonus be ( humanity of player - libido of player ) / 20; [+5 to -5 for humanity vs libido]
				if skinname of player is listed in infections of Latexlist, decrease bonus by 1;
				decrease bonus by 4 - ( ( ( HP of player * 100 ) / maxHP of player ) / 25 ); [-4 to 0 for current HP]
				let levbonus be level of player / 3;
				if levbonus > 5, now levbonus is 5;
				increase bonus by levbonus;
				let difficulty be 10;
				if hardmode is true, increase difficulty by 2;
				let dice be a random number from 1 to 20;
				say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
				if dice + bonus >= difficulty:
					say "     Managing to resist the impulse and averting your eyes, you turn away from it. As there's nothing else of interest here, you should probably leave soon. The only exit is to the [link]south[end link].";
				else:
					say "     You try to resist the pull of the chair, but your eyes remain locked on it. And the chair wasn't really that bad, was it? It was certainly comfortable and you could really use a break after all you've been through here. Before you can realize what you're doing, you sit down on the chair and sigh in pleasure, taking a load off. It's not until the strange sensation of the chair starting to pull you in that you realize what you've done.";
					say "[bckingchair]";
			else:
				say "[bckingchair_accept]";


to say bckingchair:
	let chairescape be false;
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	say "     As you start awake, you realize that the inflatable chair has started to stick to you. You can see its armrests clinging to your arms, the material pulling them gradually in. As you try to stand, you can feel that the same is happening to your back and legs. There's something pleasant and appealing about the touch of the material upon you, but you try to shake it off. Unsure what its plans are, but suspecting that they're not good at all, you start to struggle";
	if compnumber is 1:
		say "[if bcseenkingknight is true]. Looking over at your companion for assistance, you can see that the knights have once again emerged from the wall and are keeping your companion occupied[else]. Hearing some struggling by the door, you can see that the knight designs have pulled themselves from the wall as two-dimensional figures. They slash with their swords, keeping your companion too occupied to assist you, despite several attempts to reach you[end if]";
		now bcseenkingknight is true;
	else if compnumber > 1:
		say "[if bcseenkingknight is true]. Looking over at your companions for assistance, you can see that the knights have once again emerged from the wall and are keeping them occupied[else]. Hearing some struggling by the door, you can see that the knight designs have pulled themselves from the wall as two-dimensional figures. They slash with their swords, keeping your companions too occupied to assist you, despite several attempts by them to reach you[end if]";
		now bcseenkingknight is true;
	say ".";
	WaitLineBreak;
	let playernum be a random number between 1 and strength of player;
	let chairnum be 15;
	if skinname of player is listed in infections of Latexlist, increase chairnum by 2;
	if hardmode is true, increase chairnum by ( level of player / 6 );
	let chairnum be a random number between 1 and chairnum;
	if playernum >= chairnum:
		let chairescape be true;
	else:
		say "     You try to force yourself free of the chair, but it's already managed to get a good grip on you. You can see the yellow material has covered about half of your arms and even your hands are starting to sink into it. Looking at your body as you thrash about, you notice two things. The first the clear yellow plastic is now visibly sliding in around your sides and the other ";
		if player is female and anallevel is 3:
			say "is the growing sensation of bulging rubber pressing against your rear. This pressure grows as the chair inflates a set of phallic dildos to push into your juicy cunt[sfn] and relaxing anus. For some reason, you've become aroused by the chair's actions and the feel of those cock-like bulges pushing into you has made you realize it.";
		else if player is female:
			say "is the growing sensation of bulging rubber pressing against your rear. This pressure grows as the chair inflates a [if cunts of player > 1]set of phallic dildos[else]phallic dildo[end if] to push into your juicy cunt[sfn]. For some reason, you've become aroused by the chair's actions and the feel of [if cunts of player > 1]those cock-like bulges[else]that cock-like bulge[end if] pushing into you has made you realize it.";
		else:
			say "is the growing sensation of bulging rubber pressing against your rear. This pressure grows as the chair inflates a phallic dildo to push into your relaxing anus. For some reason, you've become aroused by the chair's actions and the feel of that cock-like bulge pushing into you has made you realize it.";
		WaitLineBreak;
		let playernum be ( 150 + humanity of player + level of player + strength of player - libido of player);
		if cunts of player > 1:
			decrease playernum by 10;
		else if player is neuter:
			increase playernum by 10;
		let playernum be a random number between 1 and playernum;
		let chairnum be 170;
		if skinname of player is listed in infections of Latexlist, increase chairnum by 30;
		if hardmode is true, increase chairnum by level of player;
		let chairnum be a random number between 1 and chairnum;
		if playernum >= chairnum:
			let chairescape be true;
		else:
			say "     You try to keep struggling, the feel of that smooth material sliding inside you becoming increasingly pleasurable and distracting. You try to keep your mind focused, but surely it wouldn't hurt to stop and enjoy this at least for a little while. Sit, relax, catch your breath. After that, you can pull free. But why bother, if this feels so good. It'll probably let you go when it's done, you think to yourself as you grind your ass down so a sensitive spot inside you can be better stimulated. You sigh softly in pleasure as relax into your seat to enjoy the moment.";
			say "     It is a lucky glance down that has you notice that your skin is turning the same yellow as the plastic at the edges nearest its touch. The sudden realization that this chair intends to keep you or somehow transform you as part of its fun startles you from your complacency and you make a final attempt to pull free of the alluring inflatable.";
			increase libido of player by 8;
			decrease humanity of player by 3;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
			if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
			if libido of player > 100, now libido of player is 100;
			WaitLineBreak;
			let playernum be a random number between 1 and strength of player;
			let chairnum be 18;
			if skinname of player is listed in infections of Latexlist, increase chairnum by 3;
			if hardmode is true, increase chairnum by ( level of player / 5 );
			let chairnum be a random number between 1 and chairnum;
			if playernum >= chairnum:
				let chairescape be true;
			else:
				say "     Your final attempt to break free seems to require the last of your strength and you sag back into the seat. As the chair continues to bond with you, your thoughts fade away until they're peaceful and placid, like the chair, like your own[if compnumber > 1]. With one of your last conscious thoughts, you glance over at your companions, seeing them getting pressed up against the wall by the knights. There they are flattened out, turning into more knight decals to decorate the castle. You can't help but smile at this, feeling that it's somehow right[else if compnumber is 1]. With one of your last conscious thoughts, you glance over at your companion being pressed up against the wall by the knights. As they are flattened out, they turn into another knight decal to decorate the castle. You can't help but smile at this, feeling that it's somehow right[else]. Happiness grows and swells inside you and you smile[end if]. Your smile stretches and becomes transfixed on your face as your head becomes inflatable. You are left with a smile and big, happy eyes as permanent designs on your face.";
				say "     As you and the chair continue to merge, your [bodytype of player] body becomes one with it, reshaping it as you and it become one happy whole. You're now a yellow inflatable chair version of a [bodyname of player] with a matching head. There's even cute matching prints at the end of the chair's arms to complete the look.";
				Waitlinebreak;
				now bcending is 3;
				now bcfinalchairform is bodyname of player;
				now bodyname of player is "Captured";
				now facename of player is "Captured";
				now skinname of player is "Captured";
				now tailname of player is "Captured";
				now cockname of player is "Captured";
				now humanity of player is 0;
				end the story saying "You are transformed into an inflatable [bcfinalchairform] chair.";
	if chairescape is true:
		say "     Managing to get some leverage by shifting your weight, you throw all your effort into pulling one of your arms free. The yellow material stretches upwards at first, reluctant to release you, but eventually gives way and is pulled back down into its normal shape. With an arm free, it becomes easier to pull the other free as well. You take care not to leave your hands on the chair in any one spot too long, but are eventually able to pull the rest of your body free of it in the end.";
		say "     You move away from it quickly while trying to clear your head and refocus your thoughts";
		if compnumber > 0:
			say ". Coming at the knights from behind, they are forced to retreat back into the wall, adhering themselves to it again as if they'd never left";
		say ". Feeling a growing desire to take a seat in the chair again, you avert your eyes from it. Perhaps you'd best leave this room soon. The only exit is to the [link]south[end link].";
		if bcseenkingchair is false:
			increase score by 20;
			now bcseenkingchair is true;
		follow the turnpass rule;


to say bckingchair_accept:
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	say "     Choosing not to resist the chair's call this time, you drop your gear and flop down onto it. Its plastic material gives a happy squeak as it rubs against the rubbery floor. Settling into it, you rub your body against the padded seat and grip the arm rests, pressing yourself lightly against the chair's material. Sure enough, it starts to slide over you as your body starts to sink into it with a pleasant sensation";
	if compnumber is 1:
		say "[if bcseenkingknight is true]. Looking over at your companion, you can see that the knights have once again emerged from the wall and are keeping your companion at bay. Thus occupied, they're unable to reach you to save you, not that you want rescue from this lovely thing[else]. Hearing some struggling by the door, you can see that the knight designs have pulled themselves from the wall as two-dimensional figures. They slash with their swords, keeping your companion too occupied to come rescue you, not that you want rescue from this lovely thing[end if]";
	else if compnumber > 1:
		say "[if bcseenkingknight is true]. Looking over at your companion, you can see that the knights have once again emerged from the wall and are keeping your companion at bay. Thus occupied, they're unable to reach you to save you, not that you want rescue from this lovely thing[else]. Hearing some struggling by the door, you can see that the knight designs have pulled themselves from the wall as two-dimensional figures. They slash with their swords, keeping your companion too occupied to come rescue you, not that you want rescue from this lovely thing[end if]";
	say ".";
	WaitLineBreak;
	say "     As the clear yellow plastic continues to creep further around you, another sensation starts to well up at your rear";
	if player is female and anallevel is 3:
		say ". To further make you happy, the chair grows some bulging rubber that inflates into a set of phallic dildos to push into your juicy cunt[sfn] and relaxing anus. Already quite aroused by the chair's actions, having those cock-like bulges pushing into you feels all the better, filling a needy ache inside you.";
	else if player is female:
		say ". To further make you happy, the chair grows some bulging rubber that inflates into a [if cunts of player > 1]set of phallic dildos[else]phallic dildo[end if] to push into your juicy cunt[sfn]. Already quite aroused by the chair's actions, having [if cunts of player > 1]those cock-like bulges[else]that cock-like bulge[end if] pushing into you feels all the better, filling a needy ache inside you.";
	else:
		say ". To further make you happy, the chair grows some bulging rubber that inflates into a phallic dildo to push into your relaxing anus. Already quite aroused by the chair's actions, having that cock-like bulge pushing into you feels all the better, filling a needy ache inside you.";
	say "     Squirming happily in your seat, the feel of the smooth material inside you becomes increasingly pleasurable and distracting. You let your mind wander, simply basking in the simple pleasure of sitting in the chair. It is so soft, so comfy. There's no reason to resist, you feel. It'll probably let you go when it's done, you think to yourself as you grind your ass down so a sensitive spot inside you can be better stimulated. You sigh softly in pleasure and relax into your seat to enjoy the moment.";
	WaitLineBreak;
	say "     As your mind fades away further, you notice that your skin is turning the same yellow as the plastic at the edges nearest its touch. Lost in the relaxing pleasure of the chair, you can't help but smile. Sitting in this wonderful chair feels so good, so being this wonderful chair must be even better. As the chair continues to bond with you, your thoughts fade away until they're peaceful and placid, like the chair, like your own[if compnumber > 1]. With one of your last conscious thoughts, you glance over at your companions, seeing them getting pressed up against the wall by the knights. Seeing you giving in, they give in as well, letting themselves be groped and fondled while they are flattened out, turning into more knight decals to decorate the castle. You can't help but smile at this, feeling that it's somehow right[else if compnumber is 1]. With one of your last conscious thoughts, you glance over at your companion being pressed up against the wall by the knights. Seeing you giving in, they give in as well, letting themselves be groped and fondled while they are flattened out, turning into another knight decal to decorate the castle. You can't help but smile at this, feeling that it's somehow right[else]. Happiness grows and swells inside you and you smile[end if]. Your smile stretches and becomes transfixed on your face as your head becomes inflatable. You are left with a smile and big, happy eyes as permanent designs on your face.";
	say "     As you and the chair continue to merge, your [bodytype of player] body becomes one with it, reshaping it as you and it become one happy whole. You're now a yellow inflatable chair version of a [bodyname of player] with a matching head. There's even cute matching prints at the end of the chair's arms to complete the look.";
	WaitLineBreak;
	now bcending is 3;
	now bcfinalchairform is bodyname of player;
	now bodyname of player is "Captured";
	now facename of player is "Captured";
	now skinname of player is "Captured";
	now tailname of player is "Captured";
	now cockname of player is "Captured";
	now humanity of player is 0;
	end the story saying "You are transformed into an inflatable [bcfinalchairform] chair.";


Chapter 8 - Punching Pillars

bcseenpunchingpillars is a truth state that varies. bcseenpunchingpillars is usually false.
primarycolorlist is a list of text that varies. primarycolorlist is usually {"red", "yellow", "blue"}.
ppcolor is a text that varies. ppcolor is usually "green".
bcfinalpillarform is a text that varies. bcfinalpillarform is usually "black knight".

to say bcpunchingpillars:
	say "     This side room is designed as if it were a training hall, with images of training knights and straw dummies on the east wall and weapon racks between the windows on the west. The room itself has several shoulder-height pillars which seem padded for punching. These pillars come in several bright colors and have designs of wolf men, orcs, cat people and other aggressive foes. As you walk further into the room, the pillars ";
	if flotmarked is true and a random chance of 1 in 2 succeeds:
		say "start to rock [if bcseenpunchingpillars is true]again[else]a little[end if] before thick tendrils of gooey latex flow out of them. They seem to fumble around a bit, but even as they occasionally graze past you, they seem wholly unaware of your presence... You should probably make a break for it before they finally lock onto your [']scent[']. You have two options for exit from this room.";
		say "     [bold type]Shall you head through the door to the north or head back the way you came by going east back to the ball pit?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - North.";
		say "     ([link]N[as]n[end link]) - East - Back to the ball pit.";
		if player consents:
			say "     You move quickly to the northern doorway, doing your best to avoid the grabby tentacles, push aside the plastic curtain and dive into the next room. You pant for breath and pull yourself to your feet so you can look around the room.";
			move player to Knight's Chambers;
		else:
			say "     You move quickly to the eastern doorway, doing your best to avoid the grabby tentacles. Pushing aside the plastic curtain, you dive into the next room, safely landing in the ball pit.";
			move player to Ball Pit Room;
		now bcseenpunchingpillars is true;
	else:
		if bcseenpunchingpillars is false: [FLOT - DONE]
			say "start to rock a little before thick tendrils of gooey latex flow out of them and make a grab for you";
		else:
			say "start to rock again, releasing fresh tendrils of gooey latex out of themselves in an attempt to grab you";
		if bodyname of player is "Anime Babe":
			say ". The sight of these tentacles has your anime babe body shiver in anticipation despite how you might truly feel about the prospect";
		say ".";
		if bcseenpunchingpillars is false:
			say "[bcpptendril]";
		else:
			say "     [bold type]Shall you attempt to fight off these flowing tentacles or accept their embrace and see what comes?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fight.";
			say "     ([link]N[as]n[end link]) - Accept their embrace.";
			if player consents:
				say "[bcpptendril]";
			else:
				say "[bcpptendril_accept]";

to say bcpptendril:
	let tendrilescape be false;
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	sort primarycolorlist in random order;
	now ppcolor is entry 1 in primarycolorlist;
	say "     [one of]Before you can move away, the pillar in front of you strikes you with one of the[or]As you're attempting to move away, a pillar behind you strikes you with one of its[at random] tentacles with a wet, sticky sound[if weapon object of player is not journal]. You attempt to fight it off with your [weapon of player], but it seems to have no effect on the flowing [ppcolor] latex[end if]. Trying to steady yourself on the unsteady floor with the slimy appendage wrapping around your leg, you attempt to pull yourself free[if compnumber is 1]. Your companion moves to assist you, but is ensnared by the tendrils of another of the pillars[else if compnumber > 1]. Your companions move to assist you, but are ensnared by the tendrils of the other pillars[end if].";
	let playernum be strength of player + dexterity of player + scalevalue of player;
	if bcseenpunchingpillars is true, increase playernum by 5;
	let playernum be a random number between 1 and playernum;
	let tendrilnum be 30;
	if skinname of player is listed in infections of Latexlist, increase tendrilnum by 2;
	if bodyname of player is "Anime Babe", increase tendrilnum by 4;
	if hardmode is true, increase tendrilnum by ( level of player / 4 );
	let tendrilnum be a random number between 1 and tendrilnum;
	if playernum >= tendrilnum:
		let tendrilescape be true;
	else:
		say "     Making a hard pull to get yourself free of the tendril sends you tumbling to the soft floor of the bouncy castle as you lose your footing. Looking down, you see another [ppcolor] tentacle grab your other leg and they start pulling you towards the [ppcolor] pillar. You can also see that the tentacles aren't just grabbing onto you, but are actually flowing over you, gooey latex rippling along the spreading surface. When a third tendril for the pillar reaches you, it strikes at your crotch, quickly spreading out across your [if player is neuter]barren crotch[else]loins[end if], sending a rush of arousal through you as the goo spreads across your [if player is herm]cock[smn] and even into your puss[yfn][else if player is male]cock[smn][else if player is female]cunt[sfn][else]ass and pushes into your asshole[end if]";
		if player is female:
			say ". You feel an uncontrolled wave of pleasure as liquid latex flows into your vagina[sfn] and asshole, as if trying coat you inside and out[if player is male] while it ripples and flows over your hard manhood[smn][end if].";
		else:
			say ". You feel an uncontrolled wave of pleasure as liquid latex flows into your rectum, as if trying coat you inside and out[if player is male] while it ripples and flows over your hard manhood[smn][end if].";
		let playernum be ( 150 + humanity of player + level of player + strength of player - libido of player);
		if ( cunts of player + cocks of player ) > 1:
			decrease playernum by 10;
		else if player is neuter:
			increase playernum by 10;
		let playernum be a random number between 1 and playernum;
		let tendrilnum be 170;
		if skinname of player is listed in infections of Latexlist, increase tendrilnum by 15;
		if bodyname of player is "Anime Babe", increase tendrilnum by 25;
		if hardmode is true, increase tendrilnum by level of player / 2;
		let tendrilnum be a random number between 1 and tendrilnum;
		if playernum >= tendrilnum:
			let tendrilescape be true;
		else:
			say "     You try to keep struggling, but the sensation of that latex goo coating you and pulsing into your lower body becomes increasingly pleasurable and distracting. You try to pull yourself away, but you're finding it difficult to do anything besides enjoy the intense sensations you're receiving as the [ppcolor] latex ";
			if player is herm:
				say "squeezes and pumps at your [cock size desc of player] [cock of player] cock[smn], milking your man meat until you cum with a loud groan. This sends ripples of ecstasy through your [cunt size desc of player] cunt[sfn], releasing your feminine juices and allowing the sliding goo even better access to your vagina[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
			else if player is male:
				say "squeezes and pumps at your [cock size desc of player] [cock of player] cock[smn], milking your man meat until you cum with a loud groan[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
			else if player is female:
				say "pumps and pushes inside your [cunt size desc of player] cunt[sfn], pushing you to orgasm. This releases your feminine juices, allowing the sliding goo even better access to your vagina[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
			else:
				say "pumps and pushes inside your rectum, sending debilitating waves of pleasure through you[if anallevel > 1]. As this orgasmic rush has your body quivering, you can feel the gooey flow working its way further into your bowels[end if].";
			say "     As you're coming down from your climax, you notice that you've been dragged much closer to the pillar and that it's about to grab you with another set of tentacles. Trying your best to shake off the afterglow, you try to grip the padded floor as best you can and pull out of its grip before it's too late. With the [ppcolor] stuff climbing quickly up your chest and more about to latch onto your arms, you know this is probably your last chance to get away before it does... whatever kinky, delightful - no, terrible! - thing it has planned for you.";
			increase libido of player by 8;
			decrease humanity of player by 3;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
			if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
			if libido of player > 100, now libido of player is 100;
			WaitLineBreak;
			let playernum be a random number between 1 and ( strength of player + scalevalue of player );
			let tendrilnum be 18;
			if skinname of player is listed in infections of Latexlist, increase tendrilnum by 2;
			if bodyname of player is "Anime Babe", increase tendrilnum by 3;
			if hardmode is true, increase tendrilnum by ( level of player / 6 );
			let tendrilnum be a random number between 1 and tendrilnum;
			if playernum >= tendrilnum:
				let tendrilescape be true;
			else:
				say "     You pull as hard as you can, but just as you're starting to make back some ground, the tendrils latch onto your wrists and pull your arms up. Lacking any means of pulling away, you are drawn inexorably towards the pillar as you feel your arousal growing out of control again. The tendrils flowing up your arms squeeze and pulse, their tips pointing towards your face before unleashing blasts of sticky white latex that clings to you. Your vision blocked and your mouth being invaded by the cum-like goo, you can do nothing but give in and accept the situation, another fresh orgasm rocking through you. You feel the weight of it getting heavier around you, enclosing you more and more as you're pulled wholly into the now-bulging pillar.";
				say "     Inside, you experience orgasm after orgasm as the [ppcolor] latex flows further and further inside you, filling up your insides and slowly replacing them with more latex, your whole body melting away and being absorbed into the pillar until you're nothing more than flowing rubber filled with pleasure and lust.";
				WaitLineBreak;
				now bcending is 5;
				now bcfinalpillarform is bodyname of player;
				now bodyname of player is "Captured";
				now facename of player is "Captured";
				now skinname of player is "Captured";
				now tailname of player is "Captured";
				now cockname of player is "Captured";
				now humanity of player is 0;
				end the story saying "You are transformed into another [ppcolor] pillar.";
	if tendrilescape is true:
		say "     Focusing on your escape, you pull free of the liquid latex attempting to engulf you with a wet, slurping sound. The pillar makes a few more weak attempts to grab you, but it seems your escape has worn it out too much for the moment[if compnumber is 1]. You rush over to your companion and assist them in getting free, having gotten themselves mostly engulfed by the pillar which caught them[else if compnumber > 1]. You rush over to your companions, well on their way to being engulfed by pillars themselves, and help them break free[end if]. You don't have time to take a break though, as the other pillars around you are also making grabs for you now that you're unclaimed. You have two options for exit from this room.";
		say "     [bold type]Shall you head through the door to the north or head back the way you came by going east back to the ball pit?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - North.";
		say "     ([link]N[as]n[end link]) - East - Back to the ball pit.";
		if player consents:
			say "     You move quickly to the northern doorway, doing your best to avoid the grabby tentacles, push aside the plastic curtain and dive into the next room. You pant for breath and pull yourself to your feet so you can look around the room.";
			move player to Knight's Chambers;
		else:
			say "     You move quickly to the eastern doorway, doing your best to avoid the grabby tentacles. Pushing aside the plastic curtain, you dive into the next room, safely landing in the ball pit.";
			move player to Ball Pit Room;
	now bcseenpunchingpillars is true;


to say bcpptendril_accept:
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	say "     Choosing not to resist the pillar's attempt to ensnare you this time, you drop your gear and step towards the tentacles, allowing them to latch onto you. The wolf design on it seems to smile as you acquiesce and it rubs its gooey tentacles across your flesh, leaving trails of [ppcolor] latex[if compnumber is 1]. Your companion, also ensnared, struggles at first, but soon relents as they see you accepting the tentacles[else if compnumber > 1]. Your companions, also ensnared, struggle at first, but soon relent as they see you accepting the tentacles[end if]. Some of the tendrils slide across your arms and legs while others wrap around your chest.";
	say "     You can't help but moan as one goes to your waist and [ppcolor] latex flows over your [if player is neuter]barren crotch[else]loins[end if], sending a rush of arousal through you as the goo spreads across your [if player is herm]cock[smn] and even into your puss[yfn][else if player is male]cock[smn][else if player is female]cunt[sfn][else]ass and pushes into your asshole[end if]";
	if player is female:
		say ". You feel an unrestrained wave of pleasure as liquid latex flows into your vagina[sfn] and asshole, as if trying coat you inside and out[if player is male] while it ripples and flows over your hard manhood[smn][end if].";
	else:
		say ". You feel an unrestrained wave of pleasure as liquid latex flows into your rectum, as if trying coat you inside and out[if player is male] while it ripples and flows over your hard manhood[smn][end if].";
	say "     Awash in the delights of the pillar's flowing touch, you can feel the latex goo coating you and pulsing into your lower body. Having that rippling flow of goo inside your [bodytype of player] body becomes increasingly pleasurable and distracting, keeping you from noticing at first that your hands are starting to sink right into the [ppcolor] pillar. As it is, you find it difficult to do anything besides enjoy the intense sensations you're receiving as the [ppcolor] latex ";
	if player is herm:
		say "squeezes and pumps at your [cock size desc of player] [cock of player] cock[smn], milking your man meat until you cum with a loud groan. This sends ripples of ecstasy through your [cunt size desc of player] cunt[sfn], releasing your feminine juices and allowing the sliding goo even better access to your vagina[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
	else if player is male:
		say "squeezes and pumps at your [cock size desc of player] [cock of player] cock[smn], milking your man meat until you cum with a loud groan[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
	else if player is female:
		say "pumps and pushes inside your [cunt size desc of player] cunt[sfn], pushing you to orgasm. This releases your feminine juices, allowing the sliding goo even better access to your vagina[if anallevel > 1]. As you're cumming, you are also vaguely aware of the gooey flow working its way further into your bowels[end if].";
	else:
		say "pumps and pushes inside your rectum, sending debilitating waves of pleasure through you[if anallevel > 1]. As this orgasmic rush has your body quivering, you can feel the gooey flow working its way further into your bowels[end if].";
	say "     It is only as you're coming down from this orgasm that you notice that you're being pulled right into the pillar that's ensnared you. For the briefest of moments, you consider struggling, but it passes as another squeeze and push from the goo at your crotch sends lustful pleasure through you again[if compnumber is 1]. Glancing over, you can see your companion similarly being pulled into their pillar, a gooey tentacle thrusting down their throat as green latex flows from it over their head[else if compnumber > 1]. Glancing over, you can see your companions similarly being pulled into their pillars, the one closest to you having a gooey tentacle thrusting down their throat as green latex flows from it over their head[end if].";
	say "     You are drawn inexorably towards the pillar as you feel your arousal building again. The tendrils flowing up your arms squeeze and pulse, their tips pointing towards your face before unleashing blasts of sticky white latex that clings to you. Your vision blocked and your mouth being invaded by the cum-like goo, you can do nothing but gulp the thick white stuff down as a fresh orgasm rocks through you. You feel the weight of it getting heavier around you, enclosing you more and more as you're pulled wholly into the now-bulging pillar.";
	say "     Inside, you experience orgasm after orgasm as the [ppcolor] latex flows further and further inside you, filling up your insides and slowly replacing them with more latex, your whole body melting away and being absorbed into the pillar until you're nothing more than flowing rubber filled with pleasure and lust.";
	WaitLineBreak;
	now bcending is 5;
	now bcfinalpillarform is bodyname of player;
	now bodyname of player is "Captured";
	now facename of player is "Captured";
	now skinname of player is "Captured";
	now tailname of player is "Captured";
	now cockname of player is "Captured";
	now humanity of player is 0;
	end the story saying "You are transformed into another [ppcolor] pillar.";


Chapter 9 - Knight's Chambers

floatertaken is a truth state that varies. floatertaken is usually false.

to say bcknightschambers:
	say "     This room is designed to be a knight's chambers. The wall designs have a knight donning his armor, tapestries by the windows, a bed and a rack of weapons as large decals to show a childish representation of this. There's no exit from this room save the one you entered by, meaning you'll need to once again face those pillars to get out of here. There's a window on the north wall and another two on the west. There's not much in this room, scattered beach toys that were probably forgotten by the dolphins in this far corner of the castle.";
	if floatertaken is false:
		say "     Also in this room is an inflatable floater shaped like a cute, white ducky. The swim ring looks like one meant to be worn around a kid's waist to help them float, but large enough to [if scalevalue of player > 2]even [end if]fit you. It has a cute duck head on a short neck at the front, a tuft of a tail at its back and a tiny pair of wings at its sides. These latter are the main reason you noticed it, as it's waving them around frantically, making the floater shift around a bit on the floor. As you cautiously move closer, it looks up at your with a strangely plaintive look in its eyes as it wobbles around. Odd behavior when compared to that of the other creatures you've seen here.";
		say "     [bold type]Shall you pick it up?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "     Wary of some kind of trap, you cautiously reach out for the white inflatable and give it a gentle poke. When it does nothing more than flap its tiny wings all the more, you touch it again and then let your hand rest on its surface. Not seeing or feeling anything strange happening, you pick it up. The ducky toy flaps its wings excitedly and almost seems to smile. You strongly suspect that this is not another trap of the castle, but an earlier victim of it. Certainly the cute little thing seems safe enough, so you decide to take it with you. You could put it on and wear it or let its air out and store it in your pack.";
			increase score by 5;
			now carried of ducky swimring is 1;
			now floatertaken is true;
		else:
			say "     Worried that this might be some new form of trap laid by the castle, you take a step back and leave the duck swim ring where it is. It seems a little sad that you've not touched it, but continues to try and get your attention by what little movement it is capable of.";


Table of Game Objects (continued)
name	desc	weight	object
"ducky swimring"	"A child's swim ring shaped like a duck with a cute head, puffy little wings on its sides and a tuft of a tail at its back[if ducky swimring is equipped]. It always seems to be sized right to fit you[else] when it's inflated. At the moment, you've got it deflated for easier storage, though you could always put it on[end if]."	1	ducky swimring

ducky swimring is equipment. It is not temporary.
The placement of ducky swimring is "waist".
The descmod of ducky swimring is "You are wearing your cute ducky inflatable around your waist. Sure, it looks a little silly, but it's a mad world out there.".
The slot of ducky swimring is "waist".

the scent of ducky swimring is "The ducky smells of latex.".


Book 2 - The Tower

Chapter 10 - Lower Tower

to say bclowertower:
	say "     This yellow room is the bottom floor of a drum tower at the back wall of the bouncy castle. This place, some strange mishmash of a children's play area and a medieval fortress, rises up to the next level with a mesh ladder fit for climbing and cartoonish designs of circular stairs with knights fighting on them. Feeling a little like you're attacking the castle yourself, you can't help but feel a little ill at ease with how well defended it seems. Your choices for exits are either the archway to the [link]northwest[end link] leading back to the ball pit room or [link]up[end link] to the next level of the tower.";


Chapter 11 - Upper Tower

to say bcuppertower:
	say "     Midway up the drum tower at the back of the bouncy castle there is a floor where you can stop your climb. From here, there's three options open to you. At the [link]north[end link] wall, there is a screened archway leading into an upper hall. If you want to continue inside the tower, you can climb further [link]up[end link] the mesh ladder or take it back [link]down[end link] to the ground floor.";
	if InflatableOtterSuitMode is 0: [Sets a permanent state depending on the parts of the player on arrival. See Inflatable Otter Suit file for more details]
		if player is male: [Empty otter suit with bound state]
			move Inflatable Otter Suit to Upper Hall;
			now InflatableOtterSuitMode is 1;
		else: [Stuffed otter suit with some sex options]
			move Stuffed Otter Suit to Upper Hall;
			now InflatableOtterSuitMode is 2;


Chapter 12 - Tower Turret

to say bctowerturret:
	say "     Having ascended to the top of the castle's tallest tower, you are able to look out through several mesh-screened windows. You're able to see out across the water for some distance, including the far-off beach and the city from one of them. Heading to the others, you're able to look down over the top of the castle and view its parapets. One the eastern size, you spot a couple of balloon creatures moving around, though the western side seems peaceful and clear. Separating the two is a roofed off section, probably leading to that upper hall you saw and the other rooms on that floor. Your only option from here is to climb back [link]down[end link] the mesh ladder.";


Book 3 - Upper Floor

Chapter 13 - Upper Hall

to say bcupperhall:
	say "     This rectangular room is another bouncing play area which acts as a hall and a funneling point for excited children to head off towards either side of the castle. It is done in the same colors as the main floor rooms, with yellow stone-patterned archways heading both [link]east[end link] and [link]west[end link] to the parapets on either side of the castle and their slides down into the sea. You can also head back [link]south[end link] to re-enter the tower you took to get up here.";


Chapter 14 - Western Parapets

to say bcwestparapets:
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	say "     Up at the top level of the castle, this room is designed to look like its western parapets. This section covers roughly the western third of the bouncy castle with a wall dividing the two parts and a pair of arched doorways leading to the middle section. The floor is covered in a regular pattern of large, red dots, and while springy and swaying, seems just as solid as those below despite being the inflatable ceiling to the area below. The floor and walls here are sky blue, as are the towers rising up to enclose the room between mesh netting to keep excited children from falling. The netting around the parapets extends above you as well, enclosing the space for safety. The only gap in this outer mesh allows access to the blue waterslide down into the sea below.";
	say "     There is a constant flow of water and even some sprinklers running on the way down despite the lack of any motor or pump you could hear anywhere in the castle to keep it inflated or to send water up here.";
	say "     Looking along the one inflated wall on the eastern side of this room, you see two arched doors. One leads east to the upper hall which connects to the tower and the other is to the northeast, heading to [if bcseenthroneroom is true]the throne room and the inflatable dolphin suits[else]another room[end if]. The other option would be to take the slide to leave the castle entirely.";
	if flotmarked is true and a random chance of 1 in 2 succeeds:
		say "     Seeing no obstructions to a potential exit from this place, you move quickly towards the slide to examine it more closely. You take a few steps, but as you're approaching the center of the room, you feel the floor give way suddenly. For a moment, you imagine the inflatable castle to be unable to support your weight, but a quick glance down shows your feet have sunk into two of the red spots... However, though it quivers slightly, it doesn't fight back when you instinctively wrench your feet free. Perhaps they don't recognize you a potential victim?";
		say "     In any case you better bolt out of here, lest they change their mind. Shall you head [link]northeast (1)[as]1[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], [link]east (2)[as]2[end link] back to the upper hall or [link]take the slide (3)[end link] to leave this place?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>";
			get a number;
		if calcnumber is 1:
			move player to Castle Throne Room;
		else if calcnumber is 2:
			move player to Upper Hall;
		else if calcnumber is 3:
			try bcsliding;
	else:
		if lastbcchair is 255: [FLOT - DONE]
			say "     Seeing no obstructions to a potential exit from this place, you move quickly towards the slide to examine it more closely. You take a few steps, but as you're approaching the center of the room, you feel the floor give way suddenly. For a moment, you imagine the inflatable castle to be unable to support your weight, but a quick glance down shows your feet have sunk into two of the red spots[if compnumber > 1]. A noise behind you alerts you to the fact that your companions are being ensnared by bands of material growing from the mesh walls[else if compnumber is 1]. A noise behind you alerts you to the fact that your companion is being ensnared by the bands of material growing from the mesh walls[end if]. [if weapon object of player is not journal]Forced to drop your weapon in order to keep balance[else]Barely able to keep your balance[end if], you'll need to act fast to pull yourself free...!";
			[Shall you try to [link]resist (Y)[as]y[end link] this bizarre trap or shall you relax and [link]accept (N)[as]n[end link] whatever may come?";]
			WaitLineBreak;
			now lastbcchair is turns;
			chairboundstate;
			[if player consents:
				say "[bcchairfight]";
			else:
				say "[bcchairsubmit]";]
		else if lastbcchair - turns >= 4:
			let playernum be a random number between 1 and dexterity of player;
			let chairnum be 15;
			if hardmode is true, increase chairnum by ( level of player / 4 );
			let chairnum be a random number between 1 and chairnum;
			if playernum >= chairnum:
				say "     You take care as you navigate the room, planning to avoid the red spots in the hopes of not activating the chair again. But you are suddenly surprised as one of the spots slides across the floor, almost getting under your foot before you can hop to avoid it. You take your last few steps quickly before the floor has the chance to put another spot underfoot. Shall you head [link]northeast (1)[as]1[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], [link]east (2)[as]2[end link] back to the upper hall or [link]take the slide (3)[end link] to leave this place?";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>";
					get a number;
				if calcnumber is 1:
					move player to Castle Throne Room;
				else if calcnumber is 2:
					move player to Upper Hall;
				else if calcnumber is 3:
					try bcsliding;
			else:
				say "     You take care as you navigate the room, planning to avoid the red spots in the hopes of not activating the chair again. But you are suddenly surprised as one of the spots slides across the floor, moving quickly under your foot as you're bringing it down. Your foot sinks into the flesh-like hole that forms and your other foot is similarly caught moments later[if compnumber > 1]. Nearby, you can hear your companions struggling against bands of material growing out of the mesh safety walls[else if compnumber is 1]. Nearby, you can hear your companion struggling against bands of material growing out of the mesh safety walls[end if][if weapon object of player is not journal]. You end up dropping your [weapon object of player] when the spots shift quickly back to their original positions and you're sent tumbling forwards[end if].";
				WaitLineBreak;
				now lastbcchair is turns;
				chairboundstate;
				[if player consents:
					say "[bcchairfight]";
				else:
					say "[bcchairsubmit]";]
		else:
			say "     You take care as you navigate the room, stepping to avoid the red spots in the hopes of not activating the chair again. You don't dare linger here given the fiendish traps hiding here. Shall you head [link]northeast (1)[as]1[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], [link]east (2)[as]2[end link] back to the upper hall or [link]take the slide (3)[end link] to leave this place?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>";
				get a number;
			if calcnumber is 1:
				move player to Castle Throne Room;
			else if calcnumber is 2:
				move player to Upper Hall;
			else if calcnumber is 3:
				try bcsliding;

to chairboundstate:
	let compnumber be the number of entries in childrenfaces;
	if companion of player is not nullpet, increase compnumber by 1;
	now lustatt is libido of player;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if tempnum2 is 5 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		increase boundcounter by 1;
		if lustatt > 99:
			if boundsegment < 2: [Legs and possibly arms bound]
				say "     Though you're not directly being stimulated, you find yourself succumbing to your need within this trap's grip, ";
				if boundsegment is 1:
					say "[if player is male]cock[smn] sputtering your [cum load size of player] load against the padded seat[else if player is female]needy cunt[smn] staining the padded seat with your honey[else]writhing against the padded seat in insatiable lust[end if]. As if empowered by your sensitivity, the trap's grip tightens even further around you[if enduring is true], forcing you to try and keep it at bay[end if].";
				else:
					say "[if player is male]cock[smn] sputtering your [cum load size of player] load across the latexy floor[else if player is female]needy cunt[smn] staining the latexy floor with your honey[else]writhing in insatiable lust[end if]. As if empowered by your sensitivity, the trap's grip tightens even further around you[if enduring is true], forcing you to try and keep it at bay[end if].";
			else if boundsegment is 2: [Being gassed]
				say "     Arousing gas finally setting you off, you succumb to your need within this trap's grip, [if player is male]cock[smn] sputtering your [cum load size of player] load across the latexy floor[else if player is female]needy cunt[smn] staining the latexy floor with your honey[else]writhing in insatiable lust[end if]. As if empowered by your orgasm, the trap's grip tightens even further around you[if enduring is true], forcing you to weakly try and keep it at bay[end if].";
			else: [being fully stimulated]
				say "     The trap's powerful influence too much to take, you quickly cry out in bliss, muffled by your mask. [if player is male]Cock[smn] loudly being milked of your [cum load size of player] load by the greedy tubes[else if player is female]Stuffed cunt[smn] throbbing against the slick tendrils[else]Genderless body constantly being teased by the vinyl tendrils[end if], your orgasm only empowers them in abusing you even harder, eager to set you off once more!";
			now lustatt is libido of player;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
				increase boundcounter by 1;
		if boundsegment is 0:
			if boundcounter > 1:
				say "     Eventually losing balance, you're sent tumbling forward, one of your hands ending up in the red spot. It sinks into it as a flesh-like orifice made from the same latex-vinyl material as the rest of this place is formed. You try to pull it out, but your free hand slips and ends up trapped as well before you notice the material at your feet inflating upwards into a pink tube that climbs up your ankles. Those at your hands begin to inflate as well, the material beneath you starting to swell up, and forming into a padded blue seat. Squirming to remove your limbs, it's apparent your situation has become even more difficult!";
				now boundsegment is 1;
				decrease boundcounter by 2;
		else if boundsegment is 1:
			if boundcounter > 1:
				say "     A hood of latex flows around your head, cutting your vision off from the rest of your surroundings. Very soon thereafter it begins to pump a thick gas that makes you feel lightheaded and aroused, as well as increasing the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. As a protrusion swells up in the mask, it exploits your moment of weakness to slide itself into your mouth, its decidedly phallic shape forcing its way past your lips and down your throat. Dizzy in this haze, it's becoming even more difficult to stay lucid!"; [hooded]
				now boundsegment is 2;
				decrease boundcounter by 2;
		else if boundsegment is 2:
			if boundcounter > 2:
				say "     Blatantly aroused from breathing in the aphrodisiac, the motion of the strange chair increases[if player is male]. Your stiffening, [cock size desc of player] cock[smn] slide into slick orifices which form in the seat beneath you, which squeezes and milks at your erection[smn], increasing your pleasure and making it harder to stay focused[end if][if player is female and anallevel is 3]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn] and asshole. Inflating slowly, you're filled with the pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if player is female]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn]. Inflating slowly, you're filled with the pulsing dildo[sfn] that shiver delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if][if player is not female and anallevel > 1]. You feel some of the rubbery material bulge up and push its way into your quivering asshole. Inflating slowly, you're filled with the pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if]. Now fully abused, you don't think you'll be able to last much longer!"; [penetrated]
				now boundsegment is 3;
		now enduring is false;
		say "     Legs[if boundsegment > 0] and arms[end if] lodged firmly within tightly-gripping holes[if boundsegment > 0] as you're forced to sit against a strange, blue [one of]chair[or]seat[at random][end if], [if boundsegment > 1]your head is buried in a latex-like hood, forced to inhale arousing gas as you fellate a phallic-shaped tendril[else]they continue to tighten around your limbs[end if]";
		if boundsegment > 2:
			say ". [if cunts of player > 1]Holes persistently pounded by the rubbery material[else if player is female and anallevel is 3]Holes persistently pounded by the rubbery material[else if player is female or anallevel > 1]Hole persistently pounded by the rubbery material[else]Body caressed by the rubbery material[end if], your [if cocks of player > 1]cocks are perpetually squeezed and milked by the others[else if player is male]cock is perpetually squeezed and milked by the other[else][bodytype of player] form is continually teased by the chair's vibrations[end if], driving you ever-closer to bliss";
		say ". You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if], or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [chairstrugglebar][line break]";
		if humanity of player < 1:
			if boundsegment < 3:
				say "     Too weak-willed to go on, the trap exploits this moment of weakness almost immediately";
				if boundsegment is 0:
					say "! Quickly sent tumbling forward, one of your hands ends up in the red spot. It sinks into it as a flesh-like orifice made from the same latex-vinyl material as the rest of this place is formed. You try to pull it out, but your free hand slips and ends up trapped as well before you notice the material at your feet inflating upwards into a pink tube that climbs up your ankles. Those at your hands begin to inflate as well, the material beneath you starting to swell up, and forming into a padded blue seat.";
					say "     A hood of latex flows around your head, cutting your vision off from the rest of your surroundings. Very soon thereafter it begins to pump a thick gas that makes you feel lightheaded and aroused, as well as increasing the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. As a protrusion swells up in the mask, it exploits your moment of weakness to slide itself into your mouth, its decidedly phallic shape forcing its way past your lips and down your throat.";
					say "     Blatantly aroused from breathing in the aphrodisiac, the motion of the strange chair increases[if player is male]. Your stiffening, [cock size desc of player] cock[smn] slide into slick orifices which form in the seat beneath you, which squeezes and milks at your erection[smn], increasing your pleasure and making it harder to stay focused[end if][if player is female and anallevel is 3]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn] and asshole. Inflating slowly, you're filled with the pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if player is female]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn]. Inflating slowly, you're filled with the pulsing dildo[sfn] that shiver delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if][if player is not female and anallevel > 1]. You feel some of the rubbery material bulge up and push its way into your quivering asshole. Inflating slowly, you're filled with the pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if].";
				else if boundsegment is 1:
					say "! A hood of latex flows around your head, cutting your vision off from the rest of your surroundings. Very soon thereafter it begins to pump a thick gas that makes you feel lightheaded and aroused, as well as increasing the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. As a protrusion swells up in the mask, it exploits your moment of weakness to slide itself into your mouth, its decidedly phallic shape forcing its way past your lips and down your throat.";
					say "     Blatantly aroused from breathing in the aphrodisiac, the motion of the strange chair increases[if player is male]. Your stiffening, [cock size desc of player] cock[smn] slide into slick orifices which form in the seat beneath you, which squeezes and milks at your erection[smn], increasing your pleasure and making it harder to stay focused[end if][if player is female and anallevel is 3]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn] and asshole. Inflating slowly, you're filled with the pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if player is female]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn]. Inflating slowly, you're filled with the pulsing dildo[sfn] that shiver delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if][if player is not female and anallevel > 1]. You feel some of the rubbery material bulge up and push its way into your quivering asshole. Inflating slowly, you're filled with the pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if].";
				else if boundsegment is 2:
					say "! Blatantly aroused from breathing in the aphrodisiac, the motion of the strange chair increases[if player is male]. Your stiffening, [cock size desc of player] cock[smn] slide into slick orifices which form in the seat beneath you, which squeezes and milks at your erection[smn], increasing your pleasure and making it harder to stay focused[end if][if player is female and anallevel is 3]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn] and asshole. Inflating slowly, you're filled with the pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if player is female]. You feel some of the rubbery material bulge up and push its way into your damp puss[yfn]. Inflating slowly, you're filled with the pulsing dildo[sfn] that shiver delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if][if player is not female and anallevel > 1]. You feel some of the rubbery material bulge up and push its way into your quivering asshole. Inflating slowly, you're filled with the pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if].";
			say "     With the grip on your limbs too strong now to simply break free, your sex-addled mind throws itself into the pursuit of pleasure in the hopes of satisfying this strange chair's needs or overloading it. You begin to ride it, telling yourself that nothing stops you from enjoying this ride as well. You move yourself with the chair's rocking motion as best you can, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]against it while licking and sucking lustfully at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You pound your cocks into those gripping holes of its, losing yourself in the pleasure of fucking those slick, squeezing orifices for all they're worth[else if cocks of player is 1]. You pound your cock into that gripping hole of its, losing yourself in the pleasure of fucking that slick, squeezing orifice for all it's worth[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You eagerly squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
			say "     You push yourself to further heights, your sex-crazed mind only seeking another release, your thoughts of escape momentarily forgotten. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Once spent, you collapse onto the seat, basking in the powerful afterglow and breathing in more of that arousing gas as you pant for breath.";
			say "     By the time the haze lifts, you realize that the chair has recovered and is resuming to engulf you. The tubes have continued to climb up your arms and legs. They join up with the other material from the seat itself, starting to seal you in seamlessly. The vinyl flows up across your back and melds with the hood, encapsulating you fully. While it is hard to tell from within your latex prison, you get the feeling that you're sinking. Even as your mind sinks away, fading away beneath the gas that keeps you constantly aroused, so does the pod encapsulating you fade back into the floor. Slick liquid flows in around you and your gear is either dissolved or expelled from the pod, leaving you naked and able to enjoy smooth stimulation over every square inch of your body. You give into the pleasure, succumbing as a mindless prisoner of lust as you enjoy orgasm after orgasm in the hidden safety of your new home.";
			WaitLineBreak;
			now bcending is 1;
			now bodyname of player is "Captured";
			now facename of player is "Captured";
			now skinname of player is "Captured";
			now tailname of player is "Captured";
			now cockname of player is "Captured";
			now humanity of player is 0;
			end the story saying "You are imprisoned by the Bouncy Castle.";
			now trixieexit is 1;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < (boundsegment + 3):
					say "     You struggle to pull yourself free of the trap's grip, [one of]groaning and creaking loudly against your motions[or]squeaking and stretching to contain your limbs[or]tightening in the hopes to keep you contained[at random].";
					LineBreak;
					chairpassivelosses;
				else:
					say "     Your effort[if boundsegment > 1] finally[end if] pays off as you're able to pull a [if boundsegment > 0]hand[else]leg[end if] free[if boundsegment > 1]. You grab the back of the mask and pull it from your face, popping the thick, rubbery phallus from your mouth. Gasping in the fresh sea air, your head starts to clear and you turn your focus to getting out of this trap[end if]. [if boundsegment > 0]Grabbing the inflated tube around your other hand, you squeeze it firmly, partially deflating it. When you release it, it is loose momentarily, allowing you to pull your arm free. You do the same for your legs and push yourself off the seat before it can devise some new means to hold you[else]With a little work, you're able to pull your other leg free, scrambling to put some distance between you and the holes[end if][if boundsegment > 2]. There is a wet, slick sound as you pull your groin free of the sticky seat and its stimulating devices[end if][if compnumber > 1]. You quickly rush over and assist your companions, who have been making headway in freeing themselves thanks to the distraction your escape has caused and finish pulling them free[end if][if weapon object of player is not journal]. Moving quickly, you grab your weapon and consider your possible exits from the room[end if].";
					LineBreak;
					cleanboundmemory;
					now trixieexit is 1;
					say "     A quick glances shows none of the red spots located in the other rooms. Shall you head [link]northeast (1)[as]1[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], [link]east (2)[as]2[end link] back to the upper hall or [link]take the slide (3)[end link] to leave this place?";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>";
						get a number;
					if calcnumber is 1:
						say "     Stepping carefully, you move around the deflating sex chair and avoid the other red spots in case this castle had more surprises. You head to the separating wall and move through the archway into the other room.";
						move player to Castle Throne Room;
						follow the turnpass rule;
					else if calcnumber is 2:
						say "     Stepping carefully, you move around the deflating sex chair and avoid the other red spots in case this castle had more surprises. You head to the separating wall and return to the safety of the upper hall to consider your next course of action.";
						move player to Upper Hall;
						follow the turnpass rule;
					else if calcnumber is 3:
						try bcsliding;
				WaitLineBreak;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You actively submit to the trap's influence, [one of]groaning and creaking loudly against your eager motions[or]squeaking and stretching against your writhing form[or]tightening around you before you have any second thoughts[at random].";
					LineBreak;
					chairpassivelosses;
					increase boundcounter by 2;
				else:
					say "     You choose to tolerate the trap's hold on you, [one of]groaning and creaking loudly against your subtle motions[or]squeaking and stretching against your twitching form[or]exploiting your indecision to tighten its grip around you[at random].";
					LineBreak;
					chairpassivelosses;
					increase boundcounter by 1;
				WaitLineBreak;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					LineBreak;
					chairpassivelosses;
					now boundrecover is false;
				else:
					say "     You choose to endure the peculiar chair's influence, [one of]groaning and creaking loudly against your rigid motions[or]squeaking and stretching to loosen your tense limbs[or]the thing making some effort to tighten around you[at random].";
					LineBreak;
					chairpassivelosses;
				WaitLineBreak;
				next;

to say chairstrugglebar:
	say "[close bracket]";
	if boundsegment > 2:
		say "-";
	if boundsegment > 1:
		say "[if struggleatt > 4]X[else]-[end if]";
	if boundsegment > 0:
		say "[if struggleatt > 3]X[else]-[end if]";
	say "[if struggleatt > 2]X[else]-[end if][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";


to chairpassivelosses:
	if enduring is true:
		if boundrecover is true:
			increase humanity of player by 3;
			if humanity of player > 100, now humanity of player is 100;
		else:
			if boundsegment < 2:
				decrease humanity of player by 1;
			else:
				decrease humanity of player by 2;
		if boundsegment < 2:
			increase lustatt by 10 + (lustadjust * 2);
		else:
			increase libido of player by 1;
			if libido of player > 100, now libido of player is 99;
			increase lustatt by 20 + (lustadjust * 3);
	else:
		if boundsegment < 2:
			increase libido of player by 1;
			if libido of player > 100, now libido of player is 99;
			decrease humanity of player by 2 + psycheadjust;
			increase lustatt by 17 + (lustadjust * 3);
		else:
			increase libido of player by 2;
			if libido of player > 100, now libido of player is 99;
			decrease humanity of player by 4 + psycheadjust;
			increase lustatt by 35 + (lustadjust * 5);

[to say bcchairfight:
	let compnumber be ( number of entries in childrenfaces / 3 );
	if companion of player is not nullpet, increase compnumber by 1;
	let bcchairescape be 0;
	let x be a random number between 1 and 3;
	if x is 1:				[dexterity]
		let playernum be a random number between 1 and dexterity of player;
		let chairnum be 15;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Dex: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     As your precarious position sends you tumbling forward, you manage to keep your hands from landing on more red spots by wrenching your back painfully. Checking your feet, you find them firmly trapped by a flesh-like orifice made from the same latex-vinyl material as the rest of this place. It inflates into a pink tube that climbs up your ankles. With your added leverage, you try to pull your legs free, feeling them get looser before one of your hands slips and is sucked into another red spot. As you turn to look at it, your other hand is pulled in as well. The spots gripping them start to inflate as well, as does the material beneath you, forming into a padded blue seat. Even as you try to squirm your limbs free, your head gets enveloped in a hood of thick rubber, blocking your vision and restraining you further.";
		else:
[			say " [special-style-2]Fail[roman type].";]
			say "     With your precarious position sending you tumbling forward, you try to land safely, but one of your hands ends up just inside one of the red spots. It sinks into it as a flesh-like orifice made from the same latex-vinyl material as the rest of this place is formed. You try to pull it out, your free hand slips and ends up trapped as well as you notice the material at your feet inflating upwards into a pink tube the climbs up your ankles. The those at your hands begin to inflate as well, the material beneath you starts to swell up, forming into a padded blue seat. Even as you try to squirm your limbs free, your head gets enveloped in a hood of thick rubber, blocking your vision and restraining you further.";
	else if x is 2:		[strength]
		let playernum be a random number between 1 and strength of player;
		let chairnum be 17;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Str: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     Your hands land on the rubbery floor and are similarly trapped by red spots. They, like your feet, are caught in flesh-like orifices made from the same latex-vinyl material as the rest of this place. Not wanting to wait around and see what it has in mind for you, you fight to pull yourself free. It has a surprisingly strong grip, but you keep fighting even as the red spots start to swell and inflate, forming pink tubes that climb up your ankles and wrists. As this is happening, the section beneath you starts to bulge up, inflating into a padded blue seat. Using this for what little leverage it provides you pull harder on your limbs, feeling the grip give partially. But as you're doing so, your head gets enveloped in a hood of thick rubber, blocking your vision and restraining you further.";
		else:			[perception]
[			say " [special-style-2]Fail[roman type].";]
			say "     Your hands land on the rubbery floor and are similarly trapped by red spots. They, like your feet, are caught in flesh-like orifices made from the same latex-vinyl material as the rest of this place. Not wanting to wait around and see what it has in mind for you, you fight to pull yourself free. It has a surprisingly strong grip and are unable to get the leverage you need to do any good. As the red spots start to swell and inflate, they form pink tubes that climb up your ankles and wrists. As this is happening, the section beneath you starts to bulge up, inflating into a padded blue seat. Using this for what little leverage it provides you pull harder on your limbs, feeling the grip give partially. But as you're doing so, your head gets enveloped in a hood of thick rubber, blocking your vision and restraining you further.";
	else if x is 3:
		let playernum be a random number between 1 and perception of player;
		let chairnum be 18;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Per: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     Your hands land on the rubbery floor and are similarly trapped by red spots, but you are already looking around the room in search of a means to get yourself out of this mess, struggling the whole time[if weapon object is not journal]. Your weapon's fallen out of your reach even if you had a hand free to hold it[end if][if compnumber > 1] and your increasingly bound allies will not be able to assist you either[else] and your increasingly bound ally will not be able to assist you either[end if]. Glancing back at your dilemma, you see that the red spots have started to swell up into pink tube-like protrusions with orifices make of latex-vinyl [']flesh['] with a strong grip on you. As the material beneath you starts to inflate into a padded blue seat, you continue to search for a means of escape. This means, when this strange chair starts to form a mask to envelop your face, your head is out of position. This buys you more time to struggle, and while its focus in on capturing your head, the grip on your limbs loosens slightly.";
		else:
[			say " [special-style-2]Fail[roman type].";]
			say "     Your hands land on the rubbery floor and your attention is fixed on watching their capture. The red spots seems to morph and form into flesh-like orifices seamlessly. They are made of the same latex-vinyl material as the rest of this place. The red color fades to pink as they start to inflate, swelling up into tubes that creep slowly up your wrists and ankles trapping you further. After going up a couple of inches, the material beneath you begins to bulge upwards, forming into a blue, padded seat. This strange chair bulges up and lifts you up off the floor, your trapped hands and feet held by the tubes attached seamlessly into it. And then a hood of latex material flows over your head, cutting you off from seeing any more.";
	say "     The bubble over your head begins to pump in a thick gas that makes you feel lightheaded and aroused, as well as increasing the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. Breathing in the aphrodisiac, you can't help but become aroused as the motion of the strange chair increases[if cocks of player > 1]. Your stiffening cocks slide into slick orifices which form in the seat beneath you. These squeeze and milk at your erections, increasing your pleasure and making it harder to stay focused on escape[else if cocks of player is 1]. Your stiffening cock slides into a slick orifice which forms in the seat beneath you. This squeezes and milks at your erection, increasing your pleasure and making it harder to stay focused on escape[end if][if cunts of player > 1]. You feel some of the rubbery material bulge up and push its way into your damp pussies. These inflate slowly, filling you with pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if cunts of player is 1]. You feel some of the rubbery material bulge up and push its way into your damp pussy. This inflates slowly, filling you with a pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if].";
	WaitLineBreak;
	let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
	let playernum be a random number between 1 and playernum;
	let chairnum be 175;
	if hardmode is true, increase chairnum by level of player;
	let chairnum be a random number between 1 and chairnum;
[	say "Libido: Playernum: [playernum] vs Chairnum: [chairnum]";]
	if playernum >= chairnum:
		increase bcchairescape by 1;
[		say " [special-style-1]Success[roman type].";]
		say "     Keeping your goal of escape in mind, you continue to struggle as the chair seeks to pleasure you. You can't help but become aroused and respond to the stimulation with moans of pleasure, but quickly close your mouth as a protrusion tries to swell past your lips. Eventually you are made to relent as the stimulation you're subjected to increases and it forms into a decidedly phallic shape to stuff your mouth and throat. During this distraction, it inadvertently weakens the grip on your limbs enough for you to make some more progress towards escape.";
	else:
[		say " [special-style-2]Fail[roman type].";]
		say "     You try to keep your goal of escape in mind, but as the pleasure increases, your struggling diminishes. The pleasure you're feeling from the chair distracts your lust-addled mind and you respond to the stimulation with moans of pleasure. As a protrusion swells up in the mask, it slides into your mouth with a decidedly phallic shape to stuff your mouth and throat.";
	if bcchairescape < 2:
		say "     The sex chair stimulates you without stop - its motion against you, the feel of its [if player is female]probes[else]probe[end if] throbbing inside you[if player is male], those gripping holes around your maleness[end if] - all work without tire to pleasure you[if player is male]. Your man meat pulses and throbs as the rubbery flesh squeezes and milks at you until you finally cum hard. You groan around that phallic protrusion in your mouth as your balls are drained and the pleasure of orgasm overtakes you[end if][if player is female]. Those throbbing probes inside you inflate to fill you to your limits and even a little further each time they pulse inside you, sending waves of delight through you. You soak them and seat beneath you with your juices as you climax[end if][if player is neuter]. Your body is rubbed and rocked against the seat beneath you, the smooth surface sliding wonderfully against your body while those stimulating bumps send shivers through your bare groin, making you cry out in delight[end if]. You pant and sag down atop the seat as the pleasure of your afterglow fills you.";
		say "     The chair's motion slows and your mind becomes further clouded as the gas continues to sap your will to resist such a delight as this. But when you notice the tubes resuming their climb up your limbs and can feel the vinyl material sliding up over your waist and over your ass, you stir yourself back into activity. Clearly this thing is not going to be content with using you just once but seems quite intent on keeping you.";
		WaitLineBreak;
		let x be a random number between 1 and 3;
		if x is 1:				[intelligence]
			let playernum be a random number between 1 and intelligence of player;
			let chairnum be 15;
			if hardmode is true, increase chairnum by ( level of player / 4 );
			let chairnum be a random number between 1 and chairnum;
[			say "Int: Playernum: [playernum] vs Chairnum: [chairnum]";]
			if playernum >= chairnum:
				increase bcchairescape by 1;
[				say " [special-style-1]Success[roman type].";]
				say "     As you try to pull yourself free, you notice that the grip on your other limbs loosens as one of the other tubes is inflated further. Following this pattern, you throw your effort into working the one opposite the current growth out, shifting from one to the next as the inflation continues, pulling yourself closer to freedom";
			else:
[				say " [special-style-2]Fail[roman type].";]
				say "     As you struggle, you try to wrack your brain to find a way out of your predicament, but your recent orgasm and the gas have left you too muddle-headed to think straight. Soon you're pulling and squirming randomly, which only ends up arousing you further as you grind against the seat";
		else if x is 2:		[dexterity]
			let playernum be a random number between 1 and dexterity of player;
			let chairnum be 17;
			if hardmode is true, increase chairnum by ( level of player / 4 );
			let chairnum be a random number between 1 and chairnum;
[			say "Dex: Playernum: [playernum] vs Chairnum: [chairnum]";]
			if playernum >= chairnum:
				increase bcchairescape by 1;
[				say " [special-style-1]Success[roman type].";]
				say "     Noticing the swaying of the seat as the waves rock the castle, you work to time your movements with the motion caused by the waves rocking the place. The water is a little choppy here around the rocks, so it is difficult to follow the pattern, but you stay focused and try to block out the added stimulation this added motion gives and you can feel the chair, as if distracted by the sudden added stimulus, having trouble gripping your limbs as it tries to continue enveloping you";
			else:
[				say " [special-style-2]Fail[roman type].";]
				say "     Getting the idea to try and use the chair's own motion against it, you try moving in tandem with it to pull harder for freedom. You try your best to follow the pattern, but the pleasure of the movement on your already aroused body proves too distracting for you to hold a proper rhythm and all you end up doing it arousing yourself further against all the features seeking to stimulate you";
		else:				[strength]
			let playernum be a random number between 1 and strength of player;
			let chairnum be 18;
			if hardmode is true, increase chairnum by ( level of player / 4 );
			let chairnum be a random number between 1 and chairnum;
[			say "Str: Playernum: [playernum] vs Chairnum: [chairnum]";]
			if playernum >= chairnum:
				increase bcchairescape by 1;
[				say " [special-style-1]Success[roman type].";]
				say "     Your recent orgasm has left you feeling drained and weak, but you summon up your remaining strength with a surge of adrenaline and do your best to fight against those growing tubes climbing up your limbs. Busy with inflating itself further, the sudden burst of strength helps you regain some more freedom of movement";
			else:
[				say " [special-style-2]Fail[roman type].";]
				say "     You try to summon up your strength to keep fighting, but your recent orgasm has left you feeling drained and weak. You continue to struggle, but can make little headway against the inexorable grip of the chair";
		if bcchairescape < 2:
			say ". Unable to get free, the chair's vinyl tubes climb further up your limbs, now having your forearms and lower legs completely enclosed. The material around your lower body grips your tighter, pulling you down into the seat[if anallevel > 1] as it presses a swelling bulge against your anus. With it tightly gripping your lower half, your struggles are in vain as your pucker is spread open a swelling, cock-like bulge inflates inside you, causing you to moan. With this new anchor-point stuffed inside you[else]. With you further restrained by the material wrapped around your hips[end if], its motion starts up again in earnest again, sending fresh waves of pleasure as another blast of the aphrodisiac gas fills your lungs.";
			WaitLineBreak;
			let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
			let playernum be a random number between 1 and playernum;
			let chairnum be 175;
			if hardmode is true, increase chairnum by level of player;
			let chairnum be a random number between 1 and chairnum;
[			say "Libido: Playernum: [playernum] vs Chairnum: [chairnum]";] [Threshold]
			if playernum >= chairnum:
				now bcchairescape is 2;
[				say " [special-style-1]Success[roman type].";]
				say "     With the grip on your limbs too strong now to simply break free, your sex-addled mind can see no other alternative but to give the strange chair exactly what it wants and more. Hoping to overload it with pleasure, you throw yourself into riding it as long and as hard as you can. You move yourself with the chair's rocking motion, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]to lick and suck at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You drive your cocks into those gripping holes of its, nearly losing yourself in the pleasure of fucking those slick, squeezing orifices[else if cocks of player is 1]. You drive your cock into that gripping hole of its, nearly losing yourself in the pleasure of fucking that slick, squeezing orifice[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You even squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
				say "     You try your best to hold back as long as you can, constantly reminding yourself your need to escape. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Through all this, you barely manage to keep your mind on track. With thoughts of escape returning, you resume your struggles as your powerful climax comes to an end. As you'd hoped, the chair's grip on you has relaxed. Whether you believe it merely thinks you complacent and accepting now or that it has somehow been momentarily overloaded by your powerful release doesn't matter, only that you must seize this window of opportunity.";
			else:
[				say " [special-style-2]Fail[roman type].";]
				say "     With the grip on your limbs too strong now to simply break free, your sex-addled mind throws itself into the pursuit of pleasure in the hopes of satisfying this strange chair's needs or overloading it. You begin to ride it, telling yourself that nothing stops you from enjoying this ride as well. You move yourself with the chair's rocking motion as best you can, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]against it while licking and sucking lustfully at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You pound your cocks into those gripping holes of its, losing yourself in the pleasure of fucking those slick, squeezing orifices for all they're worth[else if cocks of player is 1]. You pound your cock into that gripping hole of its, losing yourself in the pleasure of fucking that slick, squeezing orifice for all it's worth[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You eagerly squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
				say "     You push yourself to further heights, your sex-crazed mind only seeking another release, your thoughts of escape momentarily forgotten. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Once spent, you collapse onto the seat, basking in the powerful afterglow and breathing in more of that arousing gas as you pant for breath.";
				say "     By the time the haze lifts, you realize that the chair has recovered and is resuming to engulf you. The tubes have continued to climb up your arms and legs. They join up with the other material from the seat itself, starting to seal you in seamlessly. The vinyl flows up across your back and melds with the hood, encapsulating you fully. While it is hard to tell from within your latex prison, you get the feeling that you're sinking. Realizing that the chair pod, and you with it, is being drawn into the castle itself, you push yourself to continue struggling.";
				WaitLineBreak;
				let x be a random number between 1 and 3;
				if x is 1:			[libido]
					say "     Desperate, you decide to give your plan another attempt, trying your best to maintain your focus as you rock and push your body against the stimulating chair's surface[if player is herm], holes and probes[else if player is male] and holes[else if player is female] and probes[end if]. The motion pauses while you ride it to another orgasm that sends waves of pleasure through you. You have difficulty focusing after your mind-numbing climax, but the chair suffers no pause, now familiar with how much pleasure you can provide and fully able to take it all in. It resumes sinking and even starts up again, getting you aroused for another go right away.";
				else if x is 2:	[strength]
					say "     You try to fight your way free, but with you fully bound and encapsulated, as well as worn out from your orgasms and struggling, you cannot muster the might to pull yourself free. Even as the chair continues to sink, the gas continues to make thought difficulty, only your growing arousal starting to matter as the chair starts up again, getting you worked up for another go right away.";
				else:			[intelligence]
					say "     You struggle to figure a way out of your predicament, but your mind is too foggy from the gas and your powerful afterglow, making thought too difficult now. You try to pull, push and squeeze, but with the pod fully formed around you and your limbs all tightly held, there seems to be no way out of it. Even as the chair continues to sink, the gas gets you aroused again and the chair starts up again, preparing you for another go right away.";
				say "     Even as your mind sinks away, fading away beneath the gas that keeps you constantly aroused, so does the pod encapsulating you fade back into the floor. Slick liquid flows in around you and your gear is either dissolved or expelled from the pod, leaving you naked and able to enjoy smooth stimulation over every square inch of your body. You give into the pleasure, succumbing as a mindless prisoner of lust as you enjoy orgasm after orgasm in the hidden safety of your new home.";
				WaitLineBreak;
				now bcending is 1;
				now bodyname of player is "Captured";
				now facename of player is "Captured";
				now skinname of player is "Captured";
				now tailname of player is "Captured";
				now cockname of player is "Captured";
				now humanity of player is 0;
				end the story saying "You are imprisoned by the Bouncy Castle.";
		else:
			say ". As you continue fighting, you can feel the sex chair's grip on you loosen and you pull hard to get free.";
	if bcchairescape is 2:
		say "     Your effort finally pays off as you're able to pull your [one of]left[or]right[purely at random] arm free. You grab the back of the mask and pull it from your face, popping the thick, rubbery phallus from your mouth. Gasping in the fresh sea air, your head starts to clear and you turn your focus to getting out of this trap. Grabbing the inflated tube around your other hand, you squeeze it firmly, partially deflating it. When you release it, it is looser momentarily, allowing you to pull your arm free. You do the same for your legs and push yourself off the seat before it can devise some new means to hold you[if player is not neuter]. There is a wet, slick sound as you pull your groin free of the sticky seat and its stimulating devices[end if][if compnumber > 1]. You quickly rush over and assist your companions, who have been making headway in freeing themselves thanks to the distraction your escape has caused and finish pulling them free[end if][if weapon object of player is not journal]. Moving quickly, you grab your weapon and consider your possible exits from the room[end if].";
		say "     A quick glances shows none of the red spots located in the other rooms. Shall you head [link]northeast (1)[as]1[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], [link]east (2)[as]2[end link] back to the upper hall or [link]take the slide (3)[end link] to leave this place?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>";
			get a number;
		if calcnumber is 1:
			say "     Stepping carefully, you move around the deflating sex chair and avoid the other red spots in case this castle had more surprises. You head to the separating wall and move through the archway into the other room.";
			move player to Castle Throne Room;
			follow the turnpass rule;
		else if calcnumber is 2:
			say "     Stepping carefully, you move around the deflating sex chair and avoid the other red spots in case this castle had more surprises. You head to the separating wall and return to the safety of the upper hall to consider your next course of action.";
			move player to Upper Hall;
			follow the turnpass rule;
		else if calcnumber is 3:
			try bcsliding;


to say bcchairsubmit:
	say "     You don't resist and let yourself fall forward, your hands landing squarely on two more large red spots. There transform immediately into flesh-like orifices made from the same latex-vinyl material as everything else here and your hands sink into them. You watch as the red spots start to inflate, stretching upwards into pink tubes that pleasantly squeeze and grip around your arms and legs as they climb up a few inches. Beneath you, the blue material starts to inflate into a large, padded seat. With this support beneath you, you rub yourself onto it. You are momentarily concerned as a sheet of it flows up over your head, covering your face in a mask, but the gas it releases causes your worries to fade as its aphrodisiac qualities kick in, getting you instantly aroused.";
	say "     As the thick gas makes you feel lightheaded and aroused, it also increases the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. Breathing in the aphrodisiac, you can't help but become aroused as the motion of the strange chair increases[if cocks of player > 1]. Your stiffening cocks slide into slick orifices which form in the seat beneath you. These squeeze and milk at your erections, increasing your pleasure and making it harder to stay focused on escape[else if cocks of player is 1]. Your stiffening cock slides into a slick orifice which forms in the seat beneath you. This squeezes and milks at your erection, increasing your pleasure and making it harder to stay focused on escape[end if][if cunts of player > 1]. You feel some of the rubbery material bulge up and push its way into your damp pussies. These inflate slowly, filling you with pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if cunts of player is 1]. You feel some of the rubbery material bulge up and push its way into your damp pussy. This inflates slowly, filling you with a pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if]. Taking all these pleasures the chair has to offer, you grind yourself down atop it, moaning happily.";
	WaitLineBreak;
	say "     Making no attempt to resist the pleasures the chair brings, you become quite aroused and respond to the stimulation with moans of pleasure. As a protrusion swells up in the mask, it slides into your mouth with a decidedly phallic shape to stuff your mouth and throat. You lick and suck at this, eager to show the chair how much you appreciate the wonderful delight it's bringing you.";
	say "     The sex chair stimulates you without stop - its motion against you, the feel of its [if player is female]probes[else]probe[end if] throbbing inside you[if player is male], those gripping holes around your maleness[end if] - all work without tire to pleasure you[if player is male]. Your man meat pulses and throbs as the rubbery flesh squeezes and milks at you until you finally cum hard. You groan around that phallic protrusion in your mouth as your balls are drained and the pleasure of orgasm overtakes you[end if][if player is female]. Those throbbing probes inside you inflate to fill you to your limits and even a little further each time they pulse inside you, sending waves of delight through you. You soak them and seat beneath you with your juices as you climax[end if][if player is neuter]. Your body is rubbed and rocked against the seat beneath you, the smooth surface sliding wonderfully against your body while those stimulating bumps send shivers through your bare groin, making you cry out in delight[end if]. You pant and sag down atop the seat as the pleasure of your afterglow fills you.";
	WaitLineBreak;
	say "     The chair's motion slows and your mind becomes further clouded as you continue to breathe in that wonderfully euphoric gas. Noticing the tubes continuing to inflate and rise up your arms, you wait patiently, letting the chair continue to grow up your limbs, contenting yourself for the moment with licking and sucking at the dildo tube in your mouth. Sensing your compliance, the chair continues to envelop you, flowing up over your arms and legs to fully encase them. It also forms a snug enclosure around your body, flowing up over your hips and back. This eventually joins in with the mask over your head and the fully grown tubes covering your limbs, sealing you in fully[if anallevel > 1]. Feeling a light pressure at your ass, you relax your anal ring, allowing another delightful probe to push into your backside, stuffing that hole as well[end if].";
	say "     You start to rub and grind yourself against the seat for further stimulation, setting the strange sex chair into motion again, building you up towards another climax even as you can feel it slowly sinking down into the floor, taking you with it. Your sex-addled mind does not care at this point, willingly enjoying this strange capsule's delights and accepting whatever it may wish to do with you. You move yourself with the chair's rocking motion as best you can, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]against it while licking and sucking lustfully at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You pound your cocks into those gripping holes of its, losing yourself in the pleasure of fucking those slick, squeezing orifices for all they're worth[else if cocks of player is 1]. You pound your cock into that gripping hole of its, losing yourself in the pleasure of fucking that slick, squeezing orifice for all it's worth[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You eagerly squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
	WaitLineBreak;
	say "     You push yourself to further heights, your sex-crazed mind only seeking another release and more pleasure. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Once spent, you collapse onto the seat, basking in the powerful afterglow and breathing in more of that arousing gas as you pant for breath. Even as your mind sinks away, fading away beneath the gas that keeps you constantly aroused, so does the pod encapsulating you fade back into the floor. Slick liquid flows in around you and your gear is either dissolved or expelled from the pod, leaving you naked and able to enjoy smooth stimulation over every square inch of your body. You give into the pleasure, giving yourself over to become a part of this wonderful castle and to the wonderful delights your new home can give.";
	WaitLineBreak;
	now bcending is 2;
	now bodyname of player is "Captured";
	now facename of player is "Captured";
	now skinname of player is "Captured";
	now tailname of player is "Captured";
	now cockname of player is "Captured";
	now humanity of player is 0;
	end the story saying "You become part of the Bouncy Castle.";]


Chapter 15 - Eastern Parapets

to say bceastparapets:
	say "     Up at the top level of the castle, this room is designed to look like its eastern parapets. This section covers roughly the eastern third of the bouncy castle with a wall dividing the two parts and a pair of arched doorways leading to the middle section. The floor, while springy and swaying, seems just as solid as those below despite being the inflatable ceiling to the area below. The floor and walls here are sky blue, as are the towers rising up to enclose the room between mesh netting to keep excited children from falling. The netting around the parapets extends above you as well, enclosing the space for safety. The only gap in this outer mesh allows access to the blue waterslide down into the sea below. There is a constant flow of water and even some sprinklers running on the way down despite the lack of any motor or pump you could hear anywhere in the castle to keep it inflated or to send water up here.";
	say "     Looking along the one inflated wall on the western side of this room, you see two arched doors. One leads [link]west[end link] to the upper hall which connects to the tower and the other is to the [link]northwest[end link], heading to [if bcseenthroneroom is true]the throne room and the inflatable dolphin suits[else]another room[end if]. There is also the open gap to [link]take the slide[end link]. You are not alone here though";
	if flotmarked is true and a random chance of 1 in 2 succeeds:
		say ", as there are two animated inflatable animals in here that have come to life with your arrival.";
		if lastbcduobeaten is 255:
			say "     The first is a male sea lion made of opaque purple vinyl and a whiskered face drawn on his head. He has a plump body and flippers, and you're able to tell he's male when he rears up on his rear flippers and claps his front ones together excitedly, also showing off his darker purple cock. His companion is a female orca[if bcseenhugeorca is false], considerably smaller than the one you encountered downstairs and[end if] and made of a translucent magenta with a white underside. As she starts to float up in the air, she does a quick roll over, which gives you a chance to spot the damp slit at the bottom of her underbelly. Both of them are a little over a meter long.";
			now lastbcduobeaten is 254;
		say "     ...Thankfully, they don't seem to be able to find you, allowing you to slip by with relative ease. Your options are to head [link]northwest[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], go back [link]west[end link] to the upper hall or [link]take the slide[end link] to leave the castle entirely while the path is clear.";
	else:
		if lastbcduobeaten is 255: [FLOT - DONE]
			say ", as there are two animated inflatable animals in here that have come to life with your arrival.";
			say "     The first is a male sea lion made of opaque purple vinyl and a whiskered face drawn on his head. He has a plump body and flippers, and you're able to tell he's male when he rears up on his rear flippers and claps his front ones together excitedly, also showing off his darker purple cock. His companion is a female orca[if bcseenhugeorca is false], considerably smaller than the one you encountered downstairs and[end if] and made of a translucent magenta with a white underside. As she starts to float up in the air, she does a quick roll over, which gives you a chance to spot the damp slit at the bottom of her underbelly. Both of them are a little over a meter long. They move in on you, one from each side and trying to bear you down with their cuteness.";
			now lastbcduobeaten is 254;
			say "[bcduofight]";
		else if lastbcduobeaten is 254:
			say ", the sea lion and orca toys still here to stop you from getting away. Moving in towards you from each side, the duo of inflatable animals quickly bound closer.";
			say "[bcduofight]";
		else:
			if lastbcduobeaten - turns < 3:
				say ", the sea lion and orca toys still here as well. Thankfully they are still too weak and deflated from your last confrontation to try facing you again. They are laying side by side, the sea lion's cock in being sucked by the orca and the orca's pussy being tended by the sea lion. At a quick glance, you'd think they're just orally stimulating one another, but the are actually in the process of blowing each other up via the air nozzle located at the tip of the sea lion's cock and as the orca's clit. At the rate they're going at it, it doesn't seem that they'll be out of commission for long.";
			else:
				say ", the sea lion and orca toys still here as well and have managed to reinflate themselves enough to try and tackle you again. Moving in towards you from each side the purple sea lion and the magenta orca bound towards you.";
				now lastbcduobeaten is 254;
				say "[bcduofight]";


to say bcduofight:
	challenge "Sea Lion and Orca Toys";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     With the two inflatables down, you're free to continue on. Taking a moment to orient yourself, you consider which way to proceed. Your options are to head [link]northwest[end link] to the [if bcseenthroneroom is true]throne room[else]next room[end if], go back [link]west[end link] to the upper hall or [link]take the slide[end link] to leave the castle entirely while the path is clear.";
		now lastbcduobeaten is turns;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     Now that they've got you pinned down, the two inflatables start to fondle and grope you with their flippers. The sea lion's cock and the orca's pussy rub against you as well. As you grow aroused from their touch, the rubbery duo slowly pushes off your gear and clothes, leaving you bare so they may have some fun with you.";
		if player is male and ( cunts of player is 0 or ( player is female and a random chance of 3 in 5 succeeds ) ):
			say "     After a few trills and barks between them, a decision seems to be reached and the orca moves herself over your crotch, rubbing her rubbery pussy down onto your cock. Growing hard despite the trouble you're in, you're soon ready and she sinks her slick cunt down over your [cock size desc of player] [cock of player] shaft. Her cunt stretched to squeeze around you just right as she takes you in inch by inch until you're fully sheathed in her and her air nozzle clit is rubbing against your crotch. She trills happily and starts bouncing atop you, working her squeezing vinyl walls down around you.";
			say "     Not to be left out, the sea lion moves up beside you and pulls your face into his crotch. Presented with his dark purple cock, you can see it's similarly got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. For some reason, perhaps the growing arousal you're feeling from having the eager orca atop you, you open your mouth and willingly accept the strange balloon-cock into your mouth. As the sea lion pulls your face into his groin as he fucks your mouth, you lick and suck at his pulsing rod, moaning softly.";
			say "     They go at it for quite a while until you're pushed past your limit and cum hard, shooting your [cum load size of player] load into the inflatable female while she trills happily. Moments later the sea lion is set off, shooting a jet of air-driven semen right down your throat. The orgasm, the gas and the semen all work to leave you momentarily dazed and weak, unable to resist as they push you into the [if bcseenthroneroom is true]throne room[else]next room[end if].";
			say "     At least they're nice enough to toss your gear out after you as they tidy up their room of your junk.";
			WaitLineBreak;
		else if player is female:
			say "     After a few trills and barks between them, a decision seems to be reached and the sea lion moves himself over your crotch, rubbing his throbbing cock across your wet folds. This gives you a good view of the dark purple shaft as he readies to mount you and you can see it's got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. Growing aroused despite the trouble you're in, you're soon quite wet and rubbing your hips back up against that slick shaft. He barks happily now that he can see you're ready and shifts his bulky body a little, grabs you with his flippers and drives his inflated manhood into your [cunt size desc of player] cunt, making you moan loudly as it shifts to be just the right size to fill you fully and deeply.";
			say "     Not to be left out, the orca moves up beside you and presses her crotch to your face. Presented with her juicy pussy, your eyes run over her milky white folds and the soft, magenta interior of her cunt. At the top of it, poking partway out of the ivory lips is an air nozzle where her clit should be and wet and juicy with her arousal. Licking your lips and drawn to the unusual pussy, you run your tongue over her strange clit and can't help but smile as she trills happily. Soon you're digging it, licking at her eagerly and pushing your tongue past those yielding folds to get more of her juices.";
			say "     They go at it for quite a while until you're pushed past your limit and cum hard, moaning loudly as your inner walls clamp down around the inflatable cock stuffed inside you[if player is male] while shooting your [cum load size of player] load across yourself[end if]. This sets off the sea lion, who shoots jet after jet of air-driven semen right into your womb with barks of excitement. The orca goes off moments later, a squirt of her own juices soaking your face as her nozzle sprays a mist of latex-scented air across your face. The orgasm, the gas and the juices all work to leave you momentarily dazed and weak, unable to resist as they push you into the [if bcseenthroneroom is true]throne room[else]next room[end if].";
		else:
			say "     After a few trills and barks between them, a decision seems to be reached and the sea lion moves himself over your crotch, rubbing his throbbing cock across your bare groin. This gives you a good view of the dark purple shaft as he readies to mount you and you can see it's got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. Growing aroused despite the trouble you're in, you're soon quite excited and rubbing your hips back up against that slick shaft. He barks happily now that he can see you're ready and shifts his bulky body a little, grabs you with his flippers and drives his inflated manhood into your ass, making you moan loudly as it shifts to be just the right size to fill you fully and deeply.";
			say "     Not to be left out, the orca moves up beside you and presses her crotch to your face. Presented with her juicy pussy, your eyes run over her milky white folds and the soft, magenta interior of her cunt. At the top of it, poking partway out of the ivory lips is an air nozzle where her clit should be and wet and juicy with her arousal. Licking your lips and drawn to the unusual pussy, you run your tongue over her strange clit and can't help but smile as she trills happily. Soon you're digging it, licking at her eagerly and pushing your tongue past those yielding folds to get more of her juices.";
			say "     They go at it for quite a while until the sea lion is pushed past his limits and shoots jet after jet of air-driven semen deep inside you with barks of excitement. The orca goes off moments later, a squirt of her own juices soaking your face as her nozzle sprays a mist of latex-scented air across your face. The gas, the semen and the juices all work to leave you momentarily dazed and weak, unable to resist as they push you into the [if bcseenthroneroom is true]throne room[else]next room[end if].";
		now libido of player is ( libido of player + libido of player + 100 ) / 3;
		move player to Castle Throne Room;
		WaitLineBreak;
		now bcduofightlost is true;
		say "[dolcheckA]";
	else if fightoutcome >= 30:
		if a random chance of 1 in 4 succeeds:
			say "     Having gotten all turned around during the fight, you end up with your closest avenue of escape being down the waterslide. Your mind focused on getting away, you dive onto it and make your getaway while the inflatables squeak unhappily.";
			WaitLineBreak;
			try bcsliding;
		else if a random chance of 1 in 2 succeeds:
			say "     Having gotten all turned around during the fight, you end up diving through the closest of the doorways and find yourself rushing back into the upper hall. Thankfully, they don't seem to be pursuing you and are most likely content with having kept you from escaping down the slide.";
			WaitLineBreak;
			move player to Upper Hall;
		else:
			say "     Having gotten all turned around during the fight, you end up diving through one of the doorways and find yourself tumbling out into the [if bcseenthroneroom is true]throne room[else]final upper room[end if].";
			WaitLineBreak;
			move player to Castle Throne Room;
			now bcduofightfled is true;
			say "[dolcheckA]";



Chapter 16 - Castle Throne Room

to say bcthroneroom:
	now bcseenthroneroom is true;
	say "     The central portion of the bouncy castle's upper level has the same bright, colorful walls with a pair of arched windows along the northern wall. There's a doorway out of her on either side of the room, one to the [link]east[end link] and one to the [link]west[end link], each heading out onto the parapets. Despite the bright colors and soft, rounded shapes of this place, you cannot help but be disturbed. For while the bouncy castle looks fun and safe enough as a kiddy play area, it is the [if HP of Bubble is 2]contents of this room which draw your eyes. You came hoping to find the captured vixen in her inflatable dolphin prison, but you instead find a dozen of the inflatable dolphin suits hanging along the walls[else]dozen of so inflatable dolphin suits hanging along the walls which draw your eyes[end if].";
	say "     As you try to remain standing, the dolphins on the wall seem to shift about, perhaps from the feeble struggles of their occupants or from the simple swaying brought on by the waves. You look over the inflated dolphin suits[if HP of Bubble is 2], trying to decide which to search first, as these are more opaque than the ones you've seen on the beach. Since they're all inflated and full, you can't tell for certain which may hold the vixen you seek, or[else] and wonder if you should search through them for any survivors. Since they're all inflated and full, you can't even tell[end if] if they hold anyone at all.";
	say "     There are a dozen inflated dolphins [if HP of Bubble is 2]like the one you saw the vixen being stuffed into. You will have to start checking them if you want to find her[else]to search through[end if]. (Type [link]check dolphin[as]dolchecklist[end link] followed by the number you'd like to check out.)[line break]";


Book 4 - Sliding

understand "take slide" and "take the slide" and "use slide" and "use the slide" as bcsliding.

bcsliding is an action applying to nothing.

check bcsliding:
	if location of player is not Eastern Parapets and player is not in Western Parapets:
		say "There is no slide here.";

carry out bcsliding:
	say "     You slide down the castle's waterslide, feeling a small rush of glee as you do so beyond just getting away from the strange set of dolphin suits. Coming off the inflatable slide, you splash into the water and move to make your way back to shore.";
	increase morale of player by 1;
	move player to Public Beach;
	follow the turnpass rule;

instead of going east from Eastern Parapets:
	try bcsliding;

instead of going west from Western Parapets:
	try bcsliding;


Section 5 - Checking the Dolphin Suits

understand "dolchecklist" as dolchecklisting.
understand "dolphin list" as dolchecklisting.

dolchecklisting is an action applying to nothing.

check dolchecklisting:
	if location of player is not Castle Throne Room, say "You don't see those here." instead;

carry out dolchecklisting:
	say "check dolphin: [link][bracket]1[close bracket][as]check dolphin 1[end link] [link][bracket]2[close bracket][as]check dolphin 2[end link] [link][bracket]3[close bracket][as]check dolphin 3[end link] [link][bracket]4[close bracket][as]check dolphin 4[end link] [link][bracket]5[close bracket][as]check dolphin 5[end link] [link][bracket]6[close bracket][as]check dolphin 6[end link] [link][bracket]7[close bracket][as]check dolphin 7[end link] [link][bracket]8[close bracket][as]check dolphin 8[end link] [link][bracket]9[close bracket][as]check dolphin 9[end link] [link][bracket]10[close bracket][as]check dolphin 10[end link] [link][bracket]11[close bracket][as]check dolphin 11[end link] [link][bracket]12[close bracket][as]check dolphin 12[end link][line break]";


understand "check dolphin [number]" as dolchecking.

dolchecking is an action applying to one number.

check dolchecking:
	if location of player is not Castle Throne Room, say "You don't see those here." instead;

carry out dolchecking: [Picks events from dolphinlist, defined earlier in the document]
	let x be the number understood;
	let status be "";
	if x > 12:
		say "There are only a dozen to search.";
	else:
		let status be entry x of dolphinlist;
		if status is "A":
			say "[dolcheckA]";
		else if status is "B":
			now entry x of dolphinlist is "A";
			say "[dolcheckB]";
		else if status is "C": [Does not generate another empty suit since the victim isn't removed]
			say "[dolcheckC]";
		else if status is "D":
			now entry x of dolphinlist is "A";
			say "[dolcheckD]";
		else if status is "E":
			if HP of Bubble is 2: [No need to check for 1, since navigating to the castle inherently sets this to 2]
				say "[dolcheckE]";
			else if HP of Bubble > 2 and HP of Bubble < 99: [Adjusts event after Bubble is saved]
				say "[dolcheckA]";
			else: [Adjusts event after Bubble is lost]
				say "[dolcheckD]";
		else:
			say "Error - unknown variation.";


to dolboundstate:
	let partialengulf be 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bottlenose Toy":
			now monster is y;
			break;
	now lustatt is libido of player;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if tempnum2 is 5 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself quickly overtaken by lust, the tight vinyl clinging to your [if player is male]dick[smn], squeezing your bliss out of you, the warm, wet feel of your [cum load size of player] load quickly drenching your groin until it's absorbed by[else if player is female]crotch, squeezing your bliss out of you, the warm, wet feel of your honey quickly drenching your groin until it's absorbed by[else]genderless crotch, forcing you to writhe in insatiable need against[end if] the twisted material";
			if partialengulf is 1:
				say ". Exploiting you moment of weakness, the dolphin suit pulls you back within its embrace, forcing you to struggle free of its hold once more.";
			else:
				say ". Panting against the vinyl prison, its grip on you tightens ever further, eager to keep you within its twisted embrace.";
			now partialengulf is 0;
			now lustatt is libido of player;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		if struggleatt < (dolphinbundle + 1):
			now partialengulf is 0; [player is fully engulfed]
		else:
			now partialengulf is 1; [player is partially engulfed]
		now enduring is false;
		if boundmod > 2 and humanity of player > 0:
			say "     After [if dolphinbundle is 0]a very brief[else if dolphinbundle is 1]a brief[else]some[end if] while [if dolphinbundle < 2]you're ejected from the suit, perhaps not able to handle your form on it's own -- for now, at least -- but you imagine if you get caught in there too often that will no longer be the case[else]you manage to pry yourself free of the suit, its overwhelming influence still addling your lust-filled mind[end if]...";
			if dolphinbundle < 2, increase dolphinbundle by 1;
			cleanboundmemory;
			now trixieexit is 1;
		else:
			if partialengulf is 0:
				say "     Enveloped entirely within the vinyl suit's confines, your vision blurred and tinted green through the eyes of this form-fitting attire. [one of]You can barely move, aroused, [if player is male][cock size desc of player] dick[smn] grinding firmly against the precum-slicked[else]sweat-slicked body grinding against the slippery[end if] walls, you can barely contain yourself[or]These tight, movement-restricting walls command such an overwhelming influence on your arousal, barely able to hold yourself back[or]The sounds of your moans and panting muffled and vibrating against the constricting walls, forcing you to face your intense need[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself free, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if], or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
			else:
				say "     Partially within the vinyl suit's confines, its grip on you still remains very tight. [one of]Your lower torso can barely, [if player is male][cock size desc of player] dick[smn] grinding firmly against the precum-slicked[else]sweat-slicked body grinding against the slippery[end if] walls, you can barely contain yourself[or]Even as you start to free yourself, these confines still command an overwhelming influence on your arousal, barely able to hold yourself back[or]Loudly moaning and panting against the open air, you don't imagine this partial freedom will last very long[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if], or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
			say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [bottlestrugglebar][line break]";
			if humanity of player < 1:
				say "     You moan and squirm within the dolphin suit, lost in the lust of the physical pleasure it's providing when you feel something touch the outside of the suit. Looking through the green eyes, you can see one of the dolphin girls has come along and you can hear others playing in the water outside. The hope that she's here to play with you pops into your mind. Her fin-hands slide over the suit, opening it a little to adjust its position. She even slides off the head to give you a kiss before helpfully fitting the breather on properly and sliding the head back overtop of you so you can see properly.";
				say "     She rubs firmly over your groin as she zips you back up, making you cum again. Once you're well-fitted into the inflatable dolphin suit, you are delighted as she pulls you by the suit's handles into the water. She and the other dolphin girls giggle happily, swimming and playing around you. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when the one who found you grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
				say "     After playing in the water for a while, the girls decide to frolic in the bouncy castle and you're pulled back inside[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if]. With you safely aboard, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit.";
				say "     With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through you mind, you're soon able to focus on nothing but the excitement around you. Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
				now dolinfloss is -100;
				now non-infectious entry is true; [prevents regular dolphin girl infection from occurring]
				now tailname of player is "Bottlenose Toy";
				now facename of player is "Bottlenose Toy";
				now skinname of player is "Bottlenose Toy";
				now bodyname of player is "Bottlenose Toy";
				now cockname of player is "Bottlenose Toy";
				now tail of player is "You have a buoyant, inflatable dolphin tail.";
				now face of player is "that of a cute, smiling dolphin";
				now skin of player is "smooth and green plastic, stretched and shaped with visible seams";
				now body of player is "shaped like an inflatable dolphin water toy. You are roughly as large as a real dolphin and have a pair of handles for someone to ride you";
				now cock of player is "tapered and made of clear, inflatable plastic, but can still become full and hard for mating. It leaks a clear, slick lubricant as precum";
				now scalevalue of player is 3;
				now bodydesc of player is "inflatable";
				now bodytype of player is "dolphin";
				now daycycle of player is 0;
				now breasts of player is 2;
				now breast size of player is 0;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
				if libido of player < 60, now libido of player is 60;
				now humanity of player is 0;
				now battleground is "void";
				now combat abort is 1;
				WaitLineBreak;
				now trixieexit is 1;
				end the story saying "Trapped in the inflatable dolphin suit, your mind slowly fades away until there are no thoughts left in your air-filled head but that of playing at the beach.";
			else:
				let k be 0;
				now keychar is "INVALID";
				change the text of the player's command to "";
				while keychar is "INVALID":
					now k is the chosen letter;
					translate k;
					if the player's command matches "[number]":
						now keychar is "[number understood]";
				if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
					LineBreak;
					if struggleatt < (dolphinbundle + 1):
						increase struggleatt by 1;
						say "     You struggle to pull yourself free, [one of]creaking loudly against your writhing protests[or]the suit groaning as you try to wrench it from you[or]the suit desperately trying to keep you within its grasp[at random]";
						if struggleatt is dolphinbundle:
							say ". You finally manage to wrench the suit free of you, but it still manages to partially cling to your form, hellbent on keeping a hold on you and maintaining its toxic influence...";
						else:
							say ".";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase libido of player by 2;
						if libido of player > 100, now libido of player is 99;
						decrease humanity of player by 4 + psycheadjust;
						increase lustatt by 35 + (lustadjust * 5);
					else:
						increase boundmod by 1;
						if boundmod < 3:
							say "     You try to peel the suit off of you, [one of]tainted apparel clinging to you like tape[or]creaking and whining as it fights to cling to you[or]a fight to remove it without it sticking to something else[at random].";
							LineBreak;
							if bodyname of player is "Bottlenose Toy":
								if a random chance of 1 in 3 succeeds:
									infect;
							else if a random chance of 2 in 3 succeeds:
								infect;
							increase libido of player by 2;
							if libido of player > 100, now libido of player is 99;
							decrease humanity of player by 4 + psycheadjust;
							increase lustatt by 35 + (lustadjust * 5);
						else:
							say "     After [if dolphinbundle is 0]a very brief[else if dolphinbundle is 1]a brief[else]some[end if] while [if dolphinbundle < 2]you're ejected from the suit, perhaps not able to handle your form on it's own -- for now, at least -- but you imagine if you get caught in there too often that will no longer be the case[else]you manage to pry yourself free of the suit, its overwhelming influence still addling your lust-filled mind[end if]...";
							LineBreak;
							if dolphinbundle < 2, increase dolphinbundle by 1;
							cleanboundmemory;
							WaitLineBreak;
							now trixieexit is 1;
					if dolphinbundle is 0:
						increase boundmod by 1;
					else if dolphinbundle is 1 and a random chance of 1 in 2 succeeds:
						increase boundmod by 1;
					WaitLineBreak;
					next;
				else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
					LineBreak;
					if obliging is true:
						say "     You actively submit to these overwhelming circumstances, [one of]mind quickly drowning in a haze of dizzying lust[or]loudly moaning and panting in a dizzying haze of rapidly rising need[or]tight suit squeezing shamelessly against your eager, [bodytype of player] form[at random].";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase libido of player by 2;
						if libido of player > 100, now libido of player is 99;
						decrease humanity of player by 4 + psycheadjust;
						increase lustatt by 60 + (lustadjust * 10);
					else:
						say "     You make the choice to tolerate these overwhelming circumstances, [one of]mind quickly losing itself in a lustful haze[or]moaning and panting in a dizzying haze of rapidly rising need[or]tight suit squeezing shamelessly against your [bodytype of player] form[at random].";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase libido of player by 2;
						if libido of player > 100, now libido of player is 99;
						decrease humanity of player by 4 + psycheadjust;
						increase lustatt by 35 + (lustadjust * 5);
					if dolphinbundle is 0:
						increase boundmod by 1;
					else if dolphinbundle is 1 and a random chance of 1 in 2 succeeds:
						increase boundmod by 1;
					WaitLineBreak;
					next;
				else:
					now enduring is true;
					LineBreak;
					if boundrecover is true:
						increase humanity of player by 3;
						if humanity of player > 100, now humanity of player is 100;
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase lustatt by 20 + (lustadjust * 3);
						now boundrecover is false;
					else:
						say "     You fight to maintain clarity within these tight confines, [one of]its powerful influence making it difficult to maintain any clarity[or]barely able to keep the tide of need from overwhelming you[or]the creaking suit clinging ever more firmly against its occupant[at random].";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase libido of player by 1;
						if libido of player > 100, now libido of player is 99;
						decrease humanity of player by 2;
						increase lustatt by 20 + (lustadjust * 3);
					if dolphinbundle is 0:
						increase boundmod by 1;
					else if dolphinbundle is 1 and a random chance of 1 in 2 succeeds:
						increase boundmod by 1;
					WaitLineBreak;
					next;

to say bottlestrugglebar:
	say "[if boundmod > 1]}[end if][if boundmod > 0]}[end if] ";
	if dolphinbundle is 2:
		say "[close bracket][if struggleatt is 3]X[else]-[end if][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";
	else if dolphinbundle is 1:
		say "[close bracket][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";
	else:
		say "[close bracket][if struggleatt > 0]X[else]-[end if][bracket]";
	say " [if boundmod > 0]{[end if][if boundmod > 1]{[end if]";

to say dolcheckA:		[empty]
	[puts Bottlenose Toy as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bottlenose Toy":
			now monster is y;
			break;
	if bcduofightlost is true:
		say "     While you're still dazed and aroused from your encounter with the two inflatables, one of the inflated dolphin suits comes off the wall. Moving under its own power, it tries to ensnare you while you're in a weakened state. Were you able to concentrate, you'd probably realize that was their plan all along.";
		now bcduofightlost is false;
	else if bcduofightfled is true:
		say "     Unfortunately though, your escape sends you tumbling right into one of the inflatable dolphin suits. Moving under its own power, it tries to ensnare you while you're still surprised. It's almost like they planned this.";
		now bcduofightfled is false;
	else if dolcastlefight is not 2:		[empty suit]
		say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it. You are able to find it readily and start opening it up. As you do so, it starts to shift and move[if HP of Bubble is 2]. You are momentarily hopeful that it contains the struggling vixen, but[else], but you can't help but feel disappointed when[end if] you instead find it empty. Moving under its own power, the inflated dolphin suit tries to envelop you.";
	else:					[lost to released toy dolphin - D]
		say "     After having had its fun, the inflatable dolphin dives into the water to frolic and look for some new amusement. Still a little fuzzy headed after the romp with the dolphin toy, you momentarily forget about the dolphin suit which once held your recent playmate. It makes a grab for you and wraps itself partially over you before you have a chance to react. Moving under its own power, the strange suit tries to envelop you within itself.";
		now dolcastlefight is 0;
	say "     [bold type]Shall you resist?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		now struggleatt is 1;
		now tempnum2 is 0;
	else:
		now tempnum2 is 5;
	say "     [if tempnum2 is 5]The[else]Ignoring your attempts to resist it, the[end if] strange suit starts pulling itself overtop of you, letting its slick inner surface slide across your [skinname of player] skin as it works to enclose your [bodydesc of player] body as best it can [if tempnum2 is 5]without assistance[else]in spite of your protests[end if]. As the material is stretched over you, it feels very good and quite arousing, squeezing and rubbing against you as it does. It seems to stretch and adjust itself to be just the right shape and size to contain you.";
	say "     You can feel a slick lubricant coating its inside, letting it slide easily over[if tempnum2 is not 5] part of[end if] your [bodydesc of player] form. Guiding itself over your legs, it presses your feet into the bottom tail section. It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet[if tempnum2 is not 5] even as you try to rip it free of you[end if]. Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin inflatable.";
	if tempnum2 is 5:
		say "     As it starts sealing itself around you, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you held inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly. ";
	else:
		say "     As it tries sealing itself around you, [if dolphinbundle is 0]you barely manage to not be completely encased in the suit[else]your struggles only manage to delay its inevitable embrace, feeling the whole of this strange, inflatable suit swelling and pressing in around you[end if]. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflating to become a large, dolphin-shaped toy with you[if dolphinbundle is 0] partially[end if] held inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if], arousing you greatly. ";
	say "Its influence on you overwhelming, you don't imagine you'll keep a clear head for long while it still clings to you...";
	WaitLineBreak;
	dolboundstate;
	[let dolescape be 0;
	if player consents: [Strugglecheck]
		let x be a random number between 1 and 2;
		if x is 1:
			say "     As the dolphin suit tries to pull itself overtop of you, you struggle and squirm, trying to pull yourself free. It's gotten a good grip of your upper body";
			let playernum be a random number between 1 and dexterity of player;
			let dolphinnum be a random number between 1 and dex entry;
			if playernum >= dolphinnum:
				say ", but you manage to twist yourself free and grab the head as it tries to slide overtop of your own. You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you. You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			else:
				say "and, try as you might, you can't manage to squirm free of its grip. It loosely slides the head portion over your face. You find you can partially see out of its eyes, giving you a distorted, green-tinted view of the castle interior.";
		else if x is 2:
			say "     As the dolphin suit tries to pull itself overtop of you, you struggle by pushing back against its inner walls. It's gotten a good grip on your upper body";
			let playernum be a random number between 1 and strength of player;
			let dolphinnum be a random number between 1 and str entry;
			if playernum >= dolphinnum:
				say ", but you manage to push back the padded surface, stretching the inner body of the animated suit enough to pull yourself from its grip. You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you. You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			else:
				say ", but the inner surface is too slick for your hands to get a good grip to push. Try as you might, you can't push back the inflated sides of the creature before it manages to slide the head portion over your face. You find you can partially see out of its eyes, giving you a distorted, green-tinted view of the castle interior.";
		if dolescape is 0:
			WaitLineBreak;
			say "     With you partially pulled into its inflatable body, the strange suit's material stretches itself over you as it works to enclose your [bodydesc of player] body. It feels very good and quite arousing, squeezing and rubbing against you as it does. It seems to stretch and adjust itself to be just the right shape and size to contain you";
			let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
			let playernum be a random number between 1 and playernum;
			let dolphinnum be a random number between 1 and ( 150 + lev entry );
			if playernum >= dolphinnum:
				say ". You manage to block out the pleasure that comes from the rubbery material rubbing and sliding against you and remain focused. Sliding your hands along the slick inner surface, you reach outward and grab both sides of the seal and start pulling it back open. You get the opening wide enough to pull yourself from its grip. You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you. You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			else:
				say ". You can feel a slick lubricant coating its inside, letting it slide easily over your flesh. Guiding itself over your legs, it presses your feet into the bottom tail section. It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet. Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin inflatable.";
				say "     As it starts sealing itself around you, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you held inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly[if player is not neuter]. You cum several times from the toy's motion against you as the rubbery walls slide over you";
	else: [Submit variant]
		say "     The strange suit starts pulling itself overtop of you, letting its slick inner surface slide across your [skinname of player] skin as it works to enclose your [bodydesc of player] body as best it can without assistance. As the material is stretched over you, it feels very good and quite arousing, squeezing and rubbing against you as it does. It seems to stretch and adjust itself to be just the right shape and size to contain you. You can feel a slick lubricant coating its inside, letting it slide easily over your flesh. Guiding itself over your legs, it presses your feet into the bottom tail section. It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet. Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin inflatable.";
		say "     As it starts sealing itself around you, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you held inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly[if player is not neuter]. You cum several times from the toy's motion against you as the rubbery walls slide over you";
	if dolphinbundle is not 2 and dolescape is 0: [Standard Eject]
		say ". After several orgasms, the suit begins to open up again, releasing you back onto the floor of the bouncy castle. You lay there panting for a while, aroused by the strange experience.";
		infect "Bottlenose Toy";
		increase libido of player by 8;
		decrease humanity of player by 5;
		increase dolphinbundle by 1; [A combo variable]
		follow the turnpass rule;
	else if dolphinbundle is 2 and dolescape is 0: [After third attempt, player succumbs]
		say ".";
		WaitLineBreak;
		say "     You moan and squirm within the dolphin suit, lost in the lust of the physical pleasure it's providing when you feel something touch the outside of the suit. Looking through the green eyes, you can see one of the dolphin girls has come along and you can hear others playing in the water outside. The hope that she's here to play with you pops into your mind. Her fin-hands slide over the suit, opening it a little to adjust its position. She even slides off the head to give you a kiss before helpfully fitting the breather on properly and sliding the head back overtop of you so you can see properly[if player is not neuter]. She rubs firmly over your groin as she zips you back up, making you cum again[end if]. Once you're well-fitted into the inflatable dolphin suit, you are delighted as she pulls you by the suit's handles into the water. She and the other dolphin girls giggle happily, swimming and playing around you. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when the one who found you grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
		say "     After playing in the water for a while, the girls decide to frolic in the bouncy castle and you're pulled back inside[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if]. With you safely aboard, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit. With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through you mind, you're soon able to focus on nothing but the excitement around you. Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
		now dolinfloss is -100;
		now non-infectious entry is true; [prevents regular dolphin girl infection from occurring]
		now tailname of player is "Bottlenose Toy";
		now facename of player is "Bottlenose Toy";
		now skinname of player is "Bottlenose Toy";
		now bodyname of player is "Bottlenose Toy";
		now cockname of player is "Bottlenose Toy";
		now tail of player is "You have a buoyant, inflatable dolphin tail.";
		now face of player is "that of a cute, smiling dolphin";
		now skin of player is "smooth and green plastic, stretched and shaped with visible seams";
		now body of player is "shaped like an inflatable dolphin water toy. You are roughly as large as a real dolphin and have a pair of handles for someone to ride you";
		now cock of player is "tapered and made of clear, inflatable plastic, but can still become full and hard for mating. It leaks a clear, slick lubricant as precum";
		now scalevalue of player is 3;
		now bodydesc of player is "inflatable";
		now bodytype of player is "dolphin";
		now daycycle of player is 0;
		now breasts of player is 2;
		now breast size of player is 0;
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		if libido of player < 60, now libido of player is 60;
		now humanity of player is 0;
		now battleground is "void";
		now combat abort is 1;
		WaitLineBreak;
		end the story saying "Trapped in the inflatable dolphin suit, your mind slowly fades away until there are no thoughts left in your air-filled head but that of playing at the beach.";]


to say dolcheckB:		[free victim]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it. It takes a little time to find it, having partially melded itself shut, but you manage to start working it open. As you begin to get it open, it starts to shift and move with the struggles of someone inside. Your hopes are quickly dashed as a gray, flippered paw pushes free and the leopard seal inside starts to force its way to freedom. Pulling the breathing piece from its mouth, the anthropomorphic seal gasps for fresh air. 'Ahhh! Gimme out of here!' The inflatable suit seems to struggle against its victim's escape attempt, but can't stop him (you realize as you spot his sheath) as you aid in his escape.";
	say "     As the seal gets out further, he starts squeezing on the inflatable dolphin, pushing the air out of it until it eventually sags to the colorful floor. You are given a kiss and a grope by the seal. 'Thanks, hon,' he rumbles. 'I'd thank you properly, but I'm not sticking around here. Mmm... too bad, too. I think you'd make a lovely seal cow. Oh well, plenty of others to find and breed,' he adds before leaping from the doorway and making a rush for the slide. As you watch, he swims quickly out to sea, probably off to find an unprotected town to infect. You are uncertain how you feel about having put others at risk by saving him. Brushing your fingertips across your lips, remembering his kiss, you can't help but find the way his form cuts through the water sexy. Certainly they'd be better off as seals than some of the other infections you've encountered.";
	increase score by 10;
	LibidoBoost 10;


to say dolcheckC:		[mostly tf victim]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it. It takes a little time to find it, having partially melded itself shut, but you manage to start working it open. As you begin to get it open, it starts to shift and move a little. But as you open it up further, you find a mostly transformed victim inside. They simply moan softly, not bothering to struggle against the strange suit encapsulating them. The victim has a few traces of having once been [one of]a canine[or]a feline[or]a bovine[or]an equine[or]an avian[at random] creature. The being inside is now mostly transformed into an inflatable dolphin creature, only giggling with a vapid, chirping trill and asking if you'd like to play. You seal it back up since it's too far gone[if HP of Bubble is 2] and hope you can find the vixen before it's too late[end if].";


to say dolcheckD:		[complete tf - fight]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it. At first, you struggle to find the seam, but then it pops into sharp relief. But as you begin to open it, things start to go wrong. The inflatable dolphin starts to move and open on its own, releasing its transformed victim upon you. Whatever it was before, the victim has fully become an animated, inflatable dolphin toy. '[one of]Ooo! A playmate[or]Happy birthday to me[or]A new friend[or]I want to play[at random]!' the floating dolphin trills with a clicking laugh. The balloon toy floats up into the air and moves to attack you while the now empty suit shuffles around, waiting for its opportunity to strike.";
	now dolcastlefight is 3;
	challenge "Bottlenose Toy";
	if dolcastlefight is 1:				[victory]
		say "     Despite the added difficulty of standing to fight on the wobbly castle floor, you've managed to beat the dolphin toy and toss it out of the room. It giggles happily at the sight of the waterslide and takes it down into the water below. With it swimming off to find some new amusement for itself, you turn your attention on the inflatable dolphin suit that created it. Still partially deflated after performing its duty, it puts up a bit of a struggle, but you are able to squeeze it until fully deflated.";
	else if dolcastlefight is 2:		[lose]
		say "[dolcheckA]";
	else:						[flee]
		say "     Taking your only option for escape from the fight, you dive out onto the parapets and quickly rush to the waterslide. You hop onto the slide, take it down into the water and start swimming for it[if boatfound is 3]. You swim as quickly as you can to your boat. The dolphin toy, thinking this is all part of some game or race, she swims along with you, bumping her nose against you and nuzzling your groin. You manage to stay focused despite this distraction and make it to the boat, pull up your anchor and sail off, much to the playful creature's momentary disappointment before the thought leaves its airy mind and it splashes off for fun elsewhere. You pull back to shore to take a break before possibly returning, hoping the dolphin will have left the waters around the castle by then[else if boatfound is 2]. You swim the short distance to your rowboat and detach your line. You begin the hard row back to shore while the playful dolphin swims and dives around and even over your boat. As you're approaching the shore, its airy mind thankfully gets distracted and it splashes off for fun elsewhere. You continue to shore and pull your boat aground to take a break to recover your strength after your rush to shore before possibly returning[else]. You swim as quickly as you can back to shore, but it is a long trip with the dolphin toy harassing you the whole time. Thinking this is all part of some game or race, she swims along with you, bumping her nose against you and nuzzling your groin. You manage to stay focused with some effort despite the distraction and eventually make it back to shore. The playful creature follows you all the way back, only getting distracted and splashing off for fun elsewhere as you're approaching the beach. Tired after the long swim, you pull yourself onto the sandy shore and have to take a break before possibly returning[end if].";
		if boatfound is not 3:
			let dam be 15 - ( strength of player / 2 ) - ( stamina of player / 2 );
			if dam < 0, now dam is 0;
			decrease HP of player by dam;
			if boatfound is not 2:
				LibidoBoost 10;
		move player to Public Beach;
		follow the turnpass rule;


to say dolcheckE:		[vixen]
	let compnumber be ( number of entries in childrenfaces / 3 );
	if companion of player is not nullpet, increase compnumber by 1;
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it. It takes a little time to find it, having partially melded itself shut, but you manage to start working it open. As you begin to get it open, it starts to shift and move with the struggles of someone inside. When you get it open, you're pleased to see the orange color of the vixen you seek. Her fur has become a smooth, latex skin, but you continue on in the hope that it's not already too late. As you get her head free and pull the breathing tube from her muzzle, her struggles grow all the more fervent.";
	say "     'Mmm... Can we play now? No! Ah! Get me out of this silly thing!' she yips with a definite squeak to her voice. You inform her that you're trying to free her, but that you want something in return. 'Oh! That'd be fun!' she giggles. 'This thing's been teasing me for so long, I could certainly go for the real thing,' she adds with a moan. After elaborating that you're actually after her stash of supplies, she nods and manages to focus enough to be more serious. 'No prob. We'll split it if you can get me out of this mess,' she says eagerly, still fighting against the suit which seems very reluctant to release her. With the both of you working at it, she's able to keep the suit from resealing her while you struggle to deflate it to the point it can no longer strive to hold her.";
	WaitLineBreak;
	say "     Now that you've found the vixen and have managed to get her free, you still need to escape with her. Looking around the room, you know you've only got the two options, to head to either of the slides.";
	say "     [bold type]Shall you attempt to make your escape to the east or to the west?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - East.";
	say "     ([link]N[as]n[end link]) - West.";
	if player consents:
		say "     Deciding to try your luck to the east, you grab the inflatable vixen by the wrist and pull her quickly through that door and rush towards the slide. Your path to the slide gets cut off by ";
		if lastbcduobeaten < 255:
			say "a pair of inflatable creatures. It seems your activity's drawn their attention and they charge at you, trying to foil the rescue attempt. The vixen is too weak and confused to be much help in the fight, so it looks like you'll have to face them on your own.";
			say "     The first is a male sea lion made of opaque purple vinyl and a whiskered face drawn on his head. He has a plump body and flippers, and you're able to tell he's male when he rears up on his rear flippers and claps his front ones together excitedly, also showing off his darker purple cock. His companion is a female orca[if bcseenhugeorca is false], considerably smaller than the one you encountered downstairs and[end if] and made of a translucent magenta with a white underside. As she starts to float up in the air, she does a quick roll over, which gives you a chance to spot the damp slit at the bottom of her underbelly. Both of them are a little over a meter long. They move in on you, one from each side and trying to bear you down with their cuteness.";
		else:
			say "the same pair of strange guardians you've faced here before. It seems your activity's drawn their attention and they charge at you, trying to foil the rescue attempt. The vixen is too weak and confused to be much help in the fight, so it looks like you'll have to face them on your own.";
		challenge "Sea Lion and Orca Toys";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "[bcfinal1]";
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "[bcfinal2]";
		else if fightoutcome >= 30:
			say "[bcfinal3]";
	else:
		say "     Deciding to try your luck to the west, you grab the inflatable vixen by the wrist and pull her quickly through that door and rush towards the slide. Seeing it, she giggles happily and bounds ahead to enjoy the waterslide. ";
		if lastbcchair is 255:
			say "Eager to depart, you follow her quickly, glancing around the open parapets area for any enemies.";
			say "     Focused as you are on looking for more balloon creatures, you're surprised as you both stumble as the red-spotted floor suddenly becomes unstable under you. For a moment, you imagine the inflatable castle to be unable to support your weight, but you soon realize as your hands similarly fall into more of those large red spots that it is another trap. Looking at them, you can see that the red spots have formed flesh-like orifices made of the same latex-vinyl material as the rest of this place which have now squeezed tightly down onto your wrists and ankles[if compnumber > 1]. A noise behind you alerts you to the fact that your companions are being ensnared by bands of material growing from the mesh walls[else if compnumber is 1]. A noise behind you alerts you to the fact that your companion is being ensnared by the bands of material growing from the mesh walls[end if].";
		else:
			say "You call out in warning and rush forward to grab her wrist again, but it is too late.";
			say "     During your momentary lapse of focus, you fail to avoid the red spots yourself and you both end up stumbling and falling. Looking at them, you can see that the red spots have formed flesh-like orifices made of the same latex-vinyl material as the rest of this place which have now squeezed tightly down onto your wrists and ankles[if compnumber > 1]. A noise behind you alerts you to the fact that your companions are being ensnared by bands of material growing from the mesh walls[else if compnumber is 1]. A noise behind you alerts you to the fact that your companion is being ensnared by the bands of material growing from the mesh walls[end if].";
		say "     The vixen girl giggles and squirms at this new game. You call out to her to try and pull free even as you start struggling yourself. As you watch, the red spots around her wrists and ankles start to bulge upwards, swelling out into pink tubes that slowly climb up her limbs while a padded seat forms out of the blue material underneath her to support her body. You're given a blue seat as well, rubbing against your [bodytype of player] body while helping to support you in place. As she's too unfocused to struggle for more than moments at a time before her arousal distracts her again with the growing sensations, you try your best to get out of this predicament to save her.";
		say "     Your struggles seem to draw the attention of the floor and a red spot slides closer, pushing up towards your head. Stretching upwards into a pink tube, it forms a rubbery cup to go over your face. You try to pull away, but ropes of vinyl wrap around your head and pull it tight over your mouth and nose. As some kind of gas is pumped into it, you quickly grow lightheaded and aroused. Breathing in the aphrodisiac, you can't help but become turned on by the sight of the vixen grinding herself against the strange chair that is threatening to encapsulate her. Shall you try to [link]resist (Y)[as]y[end link] this bizarre trap or shall you relax and [link]enjoy (N)[as]n[end link] watching what happens for a while?";
		if player consents:
			say "[bcchairfinal1]";
		else:
			say "[bcchairfinal2]";


Chapter 1 - Western Chair Escape

to say bcchairfinal1: [FLOT -- Check?]
	let compnumber be ( number of entries in childrenfaces / 3 );
	if companion of player is not nullpet, increase compnumber by 1;
	let bcchairescape be 0;
	let bcchairstage be 1;
	let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
	let playernum be a random number between 1 and playernum;
	let chairnum be 175;
	if hardmode is true, increase chairnum by level of player;
	let chairnum be a random number between 1 and chairnum;
[	say "Libido: Playernum: [playernum] vs Chairnum: [chairnum]";]
	if playernum >= chairnum:
		increase bcchairescape by 1;
		say "     You try your best to stay focused on struggling while under the effects of the gas, but it is difficult. You twist and pull, trying to work yourself free even as your eyes are drawn to watch the vixen slowly being trapped by the chair. The padded front of the seat forms a phallic tube that gets pressed into her muzzle. She doesn't struggle long and is soon moaning softly and sucking at the breathing tube even as more flowing rubber slides over her head, encapsulating it entirely. She grinds her crotch down harder on the chair and cries out, wet juices soaking the seat as the tubes resume their climb up her trapped limbs. You notice the pressure around your wrists and ankles drop slightly as her chair's being inflated further, giving you an opportunity to make some progress towards escape.";
	else:
		say "     You have a lot of difficulty staying focused on struggling while under the effects of the gas, especially with the strangely arousing show going on. Your eyes are locked on the vixen slowly being trapped by the chair. The padded front of the seat forms a phallic tube that gets pressed into her muzzle. She doesn't struggle long and is soon moaning softly and sucking at the breathing tube even as more flowing rubber slides over her head, encapsulating it entirely. She grinds her crotch down harder on the chair and cries out, wet juices soaking the seat as the tubes resume their climb up her trapped limbs.";
	say "     Those tubes pause briefly in their growth at her elbows and knees. For a moment, you think they're gathering pressure before continuing, but you notice that the activity's not stopped entirely. Instead, the seat at her crotch is growing [if anallevel is 3]a pair of phallic bulges of its own, extending them into its victim's juicy cunt and stretchable asshole[else]a phallic bulge of its own, extending it into its victim's juicy, stretchable cunt[end if], drawing fresh moans of delight from her. These rubbery cocks pulse and vibrate as the chair fucks the latex vixen, keeping her lustfully distracted as it resumes encapsulating her.";
	say "     Those tubes holding her down move further up her limbs, reducing her ability to struggle, which has gotten very infrequent by this point, if it's happening at all. From the way she's rubbing and grinding down onto that seat, riding [if anallevel is 3]those dildos[else]that dildo[end if], it's hard to tell if she's just trying to get free or just get herself to cum again. As you watch, the blue material starts to wrap itself around her lower body, threatening to engulf her entirely.";
	WaitLineBreak;
	say "     You shake your head to clear the fogginess, trying to break free.";
	now bcchairstage is 2;
	let t be a random number between 1 and 3;
	if t is 1:		[strength]
		let playernum be a random number between 1 and strength of player;
		let chairnum be 15;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Str: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     Gritting your teeth, you pull as hard as you can on one arm, trying to force your way free. At first, you have little success, but your mighty pulling is soon too much for the rubbery orifice to hold and you're able to regain some freedom of movement";
		else:
[			say " [special-style-2]Fail[roman type].";]
			say "     Gritting your teeth, you try to fight with all your might to pull yourself free, but you have trouble getting the leverage you need, always feeling like you're pushing your other limbs in deeper rather than pulling yourself out";
	else if t is 2:	[stamina]
		let playernum be a random number between 1 and stamina of player;
		let chairnum be 17;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Sta: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
			say "     Trying to remain focused, you hold your breath to keep from taking in more of that aphrodisiac gas. Without the influx of more, you're able to focus a little better on fighting free and do your best to get away. You're able to make some headway before you start to see spots and have to refill your lungs before you pass out. This rapid influx of the gas makes your arousal surge higher even as you keep trying to pull away";
		else:
			say "     Trying to remain focused, you attempt to hold your breath to avoid taking in more of that aphrodisiac gas. Without the influx of more, you're able to focus a little better on fighting free and do your best to get away. Unfortunately, it's not long before you get woozy and weak, necessitating taking another breath and the sudden rush of gas to refill your lungs. This rapid influx of the gas makes your arousal surge higher and you lose focus of struggling for the moment";
	else if t is 3:	[dexterity]
		let playernum be a random number between 1 and dexterity of player;
		let chairnum be 18;
		if hardmode is true, increase chairnum by ( level of player / 4 );
		let chairnum be a random number between 1 and chairnum;
[		say "Dex: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     You try your best to set up a rhythm to time your movements. You shift your weight from one limb to the next, cycling your motion and trying to stay one step ahead of the orifices keeping you restrained. With the swaying of the floor with the waves, it's hard to keep going consistently, but it certainly feels like you're making progress in escaping.";
		else:
[			say " [special-style-2]Fail[roman type].";]
			say "     You try your best to set up a rhythm to time your movements. You shift your weight from one limb to the next in an attempt to throw off the gripping orifices. Unfortunately with the swaying of the floor with the waves, you find it too hard to get into any kind of consistent rhythm and you make little progress in escaping.";
	if bcchairescape < 2:
		say "     With the pink tubes reaching the top of the seat, the sections begin to more fully merge. If the vixen were even willing to struggle against the inflatable chair, there would be little chance of escape now. As you watch, the material flows over her back, joining with the hood over her head and sealing her in. As it is doing so, the capsule starts to lower itself down, slowly dropping down into the floor. Time is running out if you're going to be able to rescue her - or yourself for that matter, as the vinyl material holding your limbs starts to rise up, preparing to repeat the process on you.";
		say "     The mask over your head releases a fresh lungful of the arousing gas into you, increasing the pleasure of the smooth vinyl rubbing against your [bodytype of player] body. Breathing in the aphrodisiac, you can't help but become aroused as the motion of the strange chair increases[if cocks of player > 1]. Your stiffening cocks slide into slick orifices which form in the seat beneath you. These squeeze and milk at your erections, increasing your pleasure and making it harder to stay focused on escape[else if cocks of player is 1]. Your stiffening cock slides into a slick orifice which forms in the seat beneath you. This squeezes and milks at your erection, increasing your pleasure and making it harder to stay focused on escape[end if][if cunts of player > 1]. You feel some of the rubbery material bulge up and push its way into your damp pussies. These inflate slowly, filling you with pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if cunts of player is 1]. You feel some of the rubbery material bulge up and push its way into your damp pussy. This inflates slowly, filling you with a pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if].";
		WaitLineBreak;
		now bcchairstage is 3;
		let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
		let playernum be a random number between 1 and playernum;
		let chairnum be 180;
		if hardmode is true, increase chairnum by level of player;
		let chairnum be a random number between 1 and chairnum;
[		say "Libido: Playernum: [playernum] vs Chairnum: [chairnum]";]
		if playernum >= chairnum:
			increase bcchairescape by 1;
[			say " [special-style-1]Success[roman type].";]
			say "     Watching the vixen's capsule sinking lower motivates you to struggle before it is too late to save her (and yourself) from whatever strange fate this unusual place has in store for you. You can't help but become aroused and respond to the stimulation with moans of pleasure, but quickly close your mouth as a protrusion tries to swell past your lips. Eventually you are made to relent as the stimulation you're subjected to increases and it forms into a decidedly phallic shape to stuff your mouth and throat. During this distraction, it inadvertently weakens the grip on your limbs enough for you to make some more progress towards escape.";
		else:
[			say " [special-style-2]Fail[roman type].";]
			say "     You try to keep your goal of escape in mind, but hearing the continued moans of pleasure coming from the vixen's pod has you lustfully imagining what's occurring inside. As your own enjoyment increases, your struggling diminishes. The pleasure you're feeling from the chair distracts your lust-addled mind and you respond to the stimulation with moans of pleasure. As a protrusion swells up in the mask, it slides into your mouth with a decidedly phallic shape to stuff your mouth and throat.";
		if bcchairescape < 2:
			say "     Even as the vixen's capsule sinks lower, the sex chair stimulates you without stop - its motion against you, the feel of its [if player is female]probes[else]probe[end if] throbbing inside you[if player is male], those gripping holes around your maleness[end if] - all work without tire to pleasure you[if player is male]. Your man meat pulses and throbs as the rubbery flesh squeezes and milks at you until you finally cum hard. You groan around that phallic protrusion in your mouth as your balls are drained and the pleasure of orgasm overtakes you[end if][if player is female]. Those throbbing probes inside you inflate to fill you to your limits and even a little further each time they pulse inside you, sending waves of delight through you. You soak them and seat beneath you with your juices as you climax[end if][if player is neuter]. Your body is rubbed and rocked against the seat beneath you, the smooth surface sliding wonderfully against your body while those stimulating bumps send shivers through your bare groin, making you cry out in delight[end if]. You pant and sag down atop the seat as the pleasure of your afterglow fills you.";
			say "     The chair's motion slows and your mind becomes further clouded as the gas continues to sap your will to resist such a delight as this. But when you notice that the other chair capsule has dropped mostly into the floor and that the tubes have resumed their climb up your limbs, you stir yourself back into activity. You can feel the vinyl material sliding up around your waist and over your ass. Clearly this thing is preparing to finish its capture of its two prisoners.";
			WaitLineBreak;
			let x be a random number between 1 and 3;
			now bcchairstage is 4;
			if x is 1:				[intelligence]
				let playernum be a random number between 1 and intelligence of player;
				let chairnum be 15;
				if hardmode is true, increase chairnum by ( level of player / 4 );
				let chairnum be a random number between 1 and chairnum;
[				say "Int: Playernum: [playernum] vs Chairnum: [chairnum]";]
				if playernum >= chairnum:
					increase bcchairescape by 1;
[					say " [special-style-1]Success[roman type].";]
					say "     As you try to pull yourself free, you notice that the grip on your other limbs loosens as one of the other tubes is inflated further. Following this pattern, you throw your effort into working the one opposite the current growth out, shifting from one to the next as the inflation continues, pulling yourself closer to freedom.";
				else:
[					say " [special-style-2]Fail[roman type].";]
					say "     As you struggle, you try to wrack your brain to find a way out of your predicament, but your recent orgasm and the gas have left you too muddle-headed to think straight. Soon you're pulling and squirming randomly, which only ends up arousing you further as you grind against the seat.";
			else if x is 2:		[dexterity]
				let playernum be a random number between 1 and dexterity of player;
				let chairnum be 17;
				if hardmode is true, increase chairnum by ( level of player / 4 );
				let chairnum be a random number between 1 and chairnum;
[				say "Dex: Playernum: [playernum] vs Chairnum: [chairnum]";]
				if playernum >= chairnum:
					increase bcchairescape by 1;
[					say " [special-style-1]Success[roman type].";]
					say "     Noticing the swaying of the seat as the waves rock the castle, you work to time your movements with the motion caused by the waves rocking the place. The water is a little choppy here around the rocks, so it is difficult to follow the pattern, but you stay focused and try to block out the added stimulation this added motion gives and you can feel the chair, as if distracted by the sudden added stimulus, having trouble gripping your limbs as it tries to continue enveloping you.";
				else:
[					say " [special-style-2]Fail[roman type].";]
					say "     Getting the idea to try and use the chair's own motion against it, you try moving in tandem with it to pull harder for freedom. You try your best to follow the pattern, but the pleasure of the movement on your already aroused body proves too distracting for you to hold a proper rhythm and all you end up doing it arousing yourself further against all the features seeking to stimulate you";
			else:				[strength]
				let playernum be a random number between 1 and strength of player;
				let chairnum be 18;
				if hardmode is true, increase chairnum by ( level of player / 4 );
				let chairnum be a random number between 1 and chairnum;
[				say "Str: Playernum: [playernum] vs Chairnum: [chairnum]";]
				if playernum >= chairnum:
					increase bcchairescape by 1;
[					say " [special-style-1]Success[roman type].";]
					say "     Your recent orgasm has left you feeling drained and weak, but you summon up your remaining strength with a surge of adrenaline and do your best to fight against those growing tubes climbing up your limbs. Busy with inflating itself further, the sudden burst of strength helps you regain some more freedom of movement.";
				else:
[					say " [special-style-2]Fail[roman type].";]
					say "     You try to summon up your strength to keep fighting, but your recent orgasm has left you feeling drained and weak. You continue to struggle, but can make little headway against the inexorable grip of the chair";
			if bcchairescape < 2:
				say "     Unable to get free, you can only watch as the last of the rubbery capsule sinks down into the floor, the vixen's cries of orgasm fading quickly as she disappears into the castle. Knowing you're not far from a similar fate, you will have to make this attempt count.";
				say "     As it is, the chair's vinyl tubes are climbing further up your limbs, now having your forearms and lower legs completely enclosed. The material around your lower body grips your tighter, pulling you down into the seat[if anallevel > 1] as it presses a swelling bulge against your anus. With it tightly gripping your lower half, your struggles are in vain as your pucker is spread open a swelling, cock-like bulge inflates inside you, causing you to moan. With this new anchor-point stuffed inside you[else]. With you further restrained by the material wrapped around your hips[end if], its motion starts up again in earnest again, sending fresh waves of pleasure as another blast of the aphrodisiac gas fills your lungs.";
				WaitLineBreak;
				now bcchairstage is 5;
				let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
				let playernum be a random number between 1 and playernum;
				let chairnum be 185;
				if hardmode is true, increase chairnum by level of player;
				let chairnum be a random number between 1 and chairnum;
[				say "Libido: Playernum: [playernum] vs Chairnum: [chairnum]";]
				if playernum >= chairnum:
					now bcchairescape is 2;
[					say " [special-style-1]Success[roman type].";]
					say "     With the grip on your limbs too strong now to simply break free, your sex-addled mind can see no other alternative but to give the strange chair exactly what it wants and more. Hoping to overload it with pleasure, you throw yourself into riding it as long and as hard as you can. You move yourself with the chair's rocking motion, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]to lick and suck at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You drive your cocks into those gripping holes of its, nearly losing yourself in the pleasure of fucking those slick, squeezing orifices[else if cocks of player is 1]. You drive your cock into that gripping hole of its, nearly losing yourself in the pleasure of fucking that slick, squeezing orifice[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You even squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
					say "     You try your best to hold back as long as you can, constantly reminding yourself your need to escape. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Through all this, you barely manage to keep your mind on track. With thoughts of escape returning, you resume your struggles as your powerful climax comes to an end. As you'd hoped, the chair's grip on you has relaxed. Whether you believe it merely thinks you complacent and accepting now or that it has somehow been momentarily overloaded by your powerful release doesn't matter, only that you must seize this window of opportunity.";
				else:
[					say " [special-style-2]Fail[roman type].";]
					say "     With the grip on your limbs too strong now to simply break free, your sex-addled mind throws itself into the pursuit of pleasure in the hopes of satisfying this strange chair's needs or overloading it. You begin to ride it, telling yourself that nothing stops you from enjoying this ride as well. You move yourself with the chair's rocking motion as best you can, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]against it while licking and sucking lustfully at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You pound your cocks into those gripping holes of its, losing yourself in the pleasure of fucking those slick, squeezing orifices for all they're worth[else if cocks of player is 1]. You pound your cock into that gripping hole of its, losing yourself in the pleasure of fucking that slick, squeezing orifice for all it's worth[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You eagerly squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
					say "     You push yourself to further heights, your sex-crazed mind only seeking another release, your thoughts of escape momentarily forgotten. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Once spent, you collapse onto the seat, basking in the powerful afterglow and breathing in more of that arousing gas as you pant for breath.";
					say "     By the time the haze lifts, you realize that the chair has recovered and is resuming to engulf you. The tubes have continued to climb up your arms and legs. They join up with the other material from the seat itself, starting to seal you in seamlessly. The vinyl flows up across your back and melds with the mask, encapsulating you fully. While it is hard to tell from within your latex prison, you get the feeling that you're sinking. Realizing that the chair pod, and you with it, is being drawn into the castle itself as the vixen's already has been, you push yourself to continue struggling.";
					WaitLineBreak;
					let x be a random number between 1 and 3;
					if x is 1:			[libido]
						say "     Desperate, you decide to give your plan another attempt, trying your best to maintain your focus as you rock and push your body against the stimulating chair's surface[if player is herm], holes and probes[else if player is male] and holes[else if player is female] and probes[end if]. The motion pauses while you ride it to another orgasm that sends waves of pleasure through you. You have difficulty focusing after your mind-numbing climax, but the chair suffers no pause, now familiar with how much pleasure you can provide and fully able to take it all in. It resumes sinking and even starts up again, getting you aroused for another go right away.";
					else if x is 2:	[strength]
						say "     You try to fight your way free, but with you fully bound and encapsulated, as well as worn out from your orgasms and struggling, you cannot muster the might to pull yourself free. Even as the chair continues to sink, the gas continues to make thought difficult, only your growing arousal starting to matter as the chair starts up again, getting you worked up for another go right away.";
					else:			[intelligence]
						say "     You struggle to figure a way out of your predicament, but your mind is too foggy from the gas and your powerful afterglow, making thought too difficult now. You try to pull, push and squeeze, but with the pod fully formed around you and your limbs all tightly held, there seems to be no way out of it. Even as the chair continues to sink, the gas gets you aroused again and the chair starts up again, preparing you for another go right away.";
					say "     Even as your mind sinks away, fading away beneath the gas that keeps you constantly aroused, so does the pod encapsulating you fade back into the floor. Slick liquid flows in around you and your gear is either dissolved or expelled from the pod, leaving you naked and able to enjoy smooth stimulation over every square inch of your body. You give into the pleasure, succumbing as a mindless prisoner of lust as you enjoy orgasm after orgasm in the hidden safety of your new home.";
					WaitLineBreak;
					now bcending is 1;
					now bodyname of player is "Captured";
					now facename of player is "Captured";
					now skinname of player is "Captured";
					now tailname of player is "Captured";
					now cockname of player is "Captured";
					now humanity of player is 0;
					end the story saying "You are imprisoned by the Bouncy Castle.";
			else:
				say "     As you continue fighting, you can feel the sex chair's grip on you loosen and you pull hard to get free.";
	if bcchairescape is 2:	[escape]
		say "     Your effort finally pays off as you're able to pull your [one of]left[or]right[purely at random] arm free[if bcchairstage is 2]. You grab the back of the mask, stretching the rubbery straps until you're able to pull them off your head[else]. You grab the back of the mask and pull it from your face, popping the thick, rubbery phallus from your mouth[end if]. Gasping in the fresh sea air, your head starts to clear and you turn your focus to getting out of this trap. Grabbing the inflated tube around your other hand, you squeeze it firmly, partially deflating it. When you release it, it is looser momentarily, allowing you to pull your arm free. You do the same for your legs and push yourself off the seat before it can devise some new means to hold you[if bcchairstage > 2 and bcchairstage < 5 and (player is not neuter)]. There is a wet, slick sound as you pull your groin free of the sticky seat and its stimulating devices[end if]."; [This last conditional is included here instead of in the following 'else if' check to avoid strange paragraph spacing]
		if bcchairstage is 2:		[fast escape]
			LineBreak;
			say "     You quickly rush over to the seat trying to engulf the vixen and repeat the same means of escape for her. At first, she's too focused on trying to enjoy the chair to realize what's going on. You have to give her ass a squeeze and her muzzle a kiss after pulling off her mask to get her to focus on you long enough for you to remind her that you both need to leave before you're caught again. Nodding in agreement, she pulls her limbs free after you deflate each of the pink tubes. Once released, you help her off the seat, a wet, slick pop coming as the inflatable dildo inside her is pulled out[if compnumber > 1]. You then proceed to assist your companions, who have been making headway in freeing themselves thanks to the distraction your escape has caused and finish pulling them free[end if].";
			say "[bcfinalsuccess]";
		else if bcchairstage > 2 and bcchairstage < 5:		[delayed escape]
			say "     You quickly rush over to the seat trying to engulf the vixen and repeat the same means of escape for her. At first, she's too focused on trying to enjoy the chair to realize what's going on. You have to give her ass a squeeze and her muzzle a kiss after pulling off her mask to get her to focus on you long enough for you to remind her that you both need to leave before you're caught again. Nodding in agreement, she pulls her limbs free after you deflate each of the pink tubes. Once released, you help her off the seat, a wet, slick pop coming as the inflatable dildo inside her is pulled out[if compnumber > 1]. You then proceed to assist your companions, who have been making headway in freeing themselves thanks to the distraction your escape has caused and finish pulling them free[end if].";
			say "[bcfinalsuccess]";
		else:		[too late]
			say "     You quickly rush over to the floor into which the vixen's capsule has disappeared, but it is too late. The material has seamlessly returned to its initial state and you can barely hear her muffled moans of vulpine delight. You try to tear and cut at the material, but it won't yield, any marks you make rapidly sealing back up. Not wanting to risk the strange castle trying to catch you again, you decide to leave this place as quickly as possible, diving onto the slide and taking it down into the sea.";
			say "     Frustrated with the time you've wasted on this project, you [if boatfound is 3 or boatfound is 2]return to your boat[else]leap back into the water[end if] and take a moment to gather your bearings. You're reminded of the mooring lines securing the castle and wonder if it would be wise to send the whole place out to sea. Releasing it may prevent more local lifeforms from falling prey to its influence, but there's also the risk that you'll spread the infection further if it drifts to another populated area.";
			say "     [bold type]Do you cut the rope?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes. The castle poses a serious threat to yourself and other beach-goers.";
			say "     ([link]N[as]n[end link]) - No. You don't want to risk causing trouble elsewhere.";
			if player consents:
				say "     In the end, you decide to [if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned]cut through[else]untie[end if] the mooring lines securing the castle. The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current. Once you're back on firm land, you stare out at the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea. Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
				move player to Beach Plaza;
				now Bouncy Castle is unknown;
				now bcuntethered is 1;
			else:
				say "     In the end, you decide to leave the mysterious castle be and set out on the long [if boatfound is 3 or boatfound is 2]trip[else]swim[end if] back to shore. Once settled, you stare out at the water and wonder if you did the right thing.";
				move player to Beach Plaza;
			now HP of Bubble is 99;
			decrease score by 10;


to say bcchairfinal2:
	say "     You don't resist and let yourself deeply breathe in the arousing gas being pumped by the mask, your eyes drawn to the sight of the vixen slowly being trapped by the chair. The padded front of the seat forms a phallic tube that gets pressed into her muzzle. She doesn't struggle long and is soon moaning softly and sucking at the breathing tube even as more flowing rubber slides over her head, encapsulating it entirely. She grinds her crotch down harder on the chair and cries out, wet juices soaking the seat as the tubes resume their climb up her trapped limbs.";
	say "     Those tubes pause briefly in their growth at her elbows and knees. For a moment, you think they're gathering pressure before continuing, but you notice that the activity's not stopped entirely. Instead, the seat at her crotch is growing [if anallevel is 3]a pair of phallic bulges of its own, extending them into its victim's juicy cunt and stretchable asshole[else]a phallic bulge of its own, extending it into its victim's juicy, stretchable cunt[end if], drawing fresh moans of delight from her. These rubbery cocks pulse and vibrate as the chair fucks the latex vixen, keeping her lustfully distracted as it resumes encapsulating her. You moan in pleasure at the sight, grinding your groin firmly down onto the seat, eager for some stimulation of your own. In your lust-addled state, you find yourself hoping you'll get your turn soon.";
	WaitLineBreak;
	say "     Those tubes holding her down move further up her limbs, reducing her ability to struggle, which has gotten very infrequent by this point, if it's happening at all. From the way she's rubbing and grinding down onto that seat, riding [if anallevel is 3]those dildos[else]that dildo[end if], it's hard to tell if she's just trying to get free or just get herself to cum again. As you watch, the blue material starts to wrap itself around her lower body, continuing its advances to engulf her entirely.";
	say "     As those pink tubes reach the top of the seat, the sections begin to more full merge. If the vixen were even willing to struggle against the inflatable chair, there would be little chance of escape now. As you watch with increasing excitement, the material flows over her back, joining with the hood over her head and sealing her in. As it is doing so, the capsule starts to lower itself down, slowly dropping down into the floor.";
	WaitLineBreak;
	say "     Realizing that you won't be released for a long time, if ever, you momentarily consider struggling. This is put a stop to by a fresh wave of gas that muddles your thoughts even as the vinyl material holding your limbs starts to rise up, preparing to repeat the process on you.";
	say "     As the thick gas makes you feel lightheaded and aroused, it also increases the pleasure you feel from the smooth vinyl rubbing against your [bodytype of player] body. Breathing in the aphrodisiac, you can't help but become aroused as the motion of the strange chair increases[if cocks of player > 1]. Your stiffening cocks slide into slick orifices which form in the seat beneath you. These squeeze and milk at your erections, increasing your pleasure and making it harder to stay focused on escape[else if cocks of player is 1]. Your stiffening cock slides into a slick orifice which forms in the seat beneath you. This squeezes and milks at your erection, increasing your pleasure and making it harder to stay focused on escape[end if][if cunts of player > 1]. You feel some of the rubbery material bulge up and push its way into your damp pussies. These inflate slowly, filling you with pulsing dildos that shiver delightfully inside you from the chair's vibrations[else if cunts of player is 1]. You feel some of the rubbery material bulge up and push its way into your damp pussy. This inflates slowly, filling you with a pulsing dildo that shivers delightfully inside you from the chair's vibrations[end if][if player is neuter]. The chair's material probes at your bare groin, and finding no genitals, forms rippling protrusions which stroke and rub against your flat crotch, sending soft shivers of delight through you[end if]. Taking all these pleasures the chair has to offer, you grind yourself down atop it, moaning happily.";
	WaitLineBreak;
	say "     Making no attempt to resist the pleasures the chair brings, you become quite aroused and respond to the stimulation with moans of pleasure. As a protrusion swells up in the mask, it slides into your mouth with a decidedly phallic shape to stuff your mouth and throat. You lick and suck at this, eager to show the chair how much you appreciate the wonderful delight it's bringing you. In your hyper-aroused state, the moans of pleasure coming from the vixen's descending capsule are not a source for concern, but a promise of the ecstasy soon to come.";
	say "     The sex chair stimulates you without stop - its motion against you, the feel of its [if player is female]probes[else]probe[end if] throbbing inside you[if player is male], those gripping holes around your maleness[end if] - all work without tire to pleasure you[if player is male]. Your man meat pulses and throbs as the rubbery flesh squeezes and milks at you until you finally cum hard. You groan around that phallic protrusion in your mouth as your balls are drained and the pleasure of orgasm overtakes you[end if][if player is female]. Those throbbing probes inside you inflate to fill you to your limits and even a little further each time they pulse inside you, sending waves of delight through you. You soak them and seat beneath you with your juices as you climax[end if][if player is neuter]. Your body is rubbed and rocked against the seat beneath you, the smooth surface sliding wonderfully against your body while those stimulating bumps send shivers through your bare groin, making you cry out in delight[end if]. You pant and sag down atop the seat as the pleasure of your afterglow fills you even as the vixen's rubbery bubble sinks out of sight.";
	WaitLineBreak;
	say "     The chair's motion slows and your mind becomes further clouded as you continue to breathe in that wonderfully euphoric gas. Noticing the tubes continuing to inflate and rise up your arms, you wait patiently, letting the chair continue to grow up your limbs, contenting yourself for the moment with licking and sucking at the dildo tube in your mouth. Sensing your compliance, the chair continues to envelop you, flowing up over your arms and legs to fully encase them. It also forms a snug enclosure around your body, flowing up over your hips and back. This eventually joins in with the mask over your head and the fully grown tubes covering your limbs, sealing you in fully[if anallevel > 1]. Feeling a light pressure at your ass, you relax your anal ring, allowing another delightful probe to push into your backside, stuffing that hole as well[end if].";
	say "     You start to rub and grind yourself against the seat for further stimulation, setting the strange sex chair into motion again, building you up towards another climax even as you can feel it slowly sinking down into the floor, taking you with it. Your sex-addled mind does not care at this point, willingly enjoying this strange capsule's delights and accepting whatever it may wish to do with you. You move yourself with the chair's rocking motion as best you can, pushing yourself [if cunts of player > 1 or (player is female and anallevel > 1)]onto those wonderfully thrusting dildos it had stuffed inside you[else]against it while licking and sucking lustfully at that throbbing projection stuffed into your mouth[end if][if cocks of player > 1]. You pound your cocks into those gripping holes of its, losing yourself in the pleasure of fucking those slick, squeezing orifices for all they're worth[else if cocks of player is 1]. You pound your cock into that gripping hole of its, losing yourself in the pleasure of fucking that slick, squeezing orifice for all it's worth[end if][if player is female]. You squeeze with your thighs, tightening your inner muscles around the rubbery flesh stuffed inside you, taking delight in the pulsing probes filling you so wonderfully[end if][if anallevel > 1]. You eagerly squeeze down on the inflating butt plug inside you, the feel of it swelling deeper as it slides along your silky inner walls feeling great to your lust-clouded body[end if].";
	WaitLineBreak;
	say "     You push yourself to further heights, your sex-crazed mind only seeking another release and more pleasure. When your climax finally comes[if player is male] and you pump your hot seed into the sex chair[end if], your cries are muffled by the thick rod stuffed into your mouth[if cunts of player > 1]. Your cunts clamp down around the throbbing dildos inside you as you release another flow of your hot juices over them, soaking yourself and the seat[else if cunts of player is 1]. Your cunt clamps down around the throbbing dildo inside you as you release another flow of your hot juices over it, soaking yourself and the seat[end if]. Once spent, you collapse onto the seat, basking in the powerful afterglow and breathing in more of that arousing gas as you pant for breath. Even as your mind sinks away, fading away beneath the gas that keeps you constantly aroused, so does the pod encapsulating you fade back into the floor. Slick liquid flows in around you and your gear is either dissolved or expelled from the pod, leaving you naked and able to enjoy smooth stimulation over every square inch of your body. You give into the pleasure, giving yourself over to become a part of this wonderful castle and to the wonderful delights your new home can give.";
	WaitLineBreak;
	now bcending is 2;
	now bodyname of player is "Captured";
	now facename of player is "Captured";
	now skinname of player is "Captured";
	now tailname of player is "Captured";
	now cockname of player is "Captured";
	now humanity of player is 0;
	end the story saying "You become part of the Bouncy Castle.";


Chapter 2 - Eastern Inflatables Escape

to say bcfinal1:		[Success - leave w/vixen]
	say "     Having dealt with the inflatable creatures, you kick them aside and turn your attention back to the vixen. At first, she's too focused on trying to play with the other inflatables to realize what's going on. You have to give her ass a squeeze and her muzzle a kiss to get her to focus on you long enough for you to remind her that you both need to leave before something else tries to get you. Nodding in agreement, she hugs you tight and giggles merrily at her freedom.";
	say "[bcfinalsuccess]";

to say bcfinal2:		[Fail - caught w/vixen]
	say "     Now that they've got you pinned down, the vixen squeaks happily and comes over to join in the fun. You try to tell her to help you, but she's having trouble focusing and as the pair start to fondle and grope you with their flippers, it becomes harder for you to resist as well. The sea lion's cock and the orca's pussy rub against you as well. As you grow aroused from their touch, the slowly push off your gear and clothes, leaving you bare so they may have some fun with you. You may as well just relax and enjoy the fun, you tell yourself.";
	if player is male and ( cunts of player is 0 or ( player is female and a random chance of 3 in 5 succeeds ) ):
		say "     After a few trills and barks between them, a decision seems to be reached and the orca moves herself over your crotch, rubbing her rubbery pussy down onto your cock. Growing hard despite the trouble you're in, you're soon ready and she sinks her slick cunt down over your [cock size desc of player] [cock of player] shaft. Her cunt stretched to squeeze around you just right as she takes you in inch by inch until you're fully sheathed in her and her air nozzle clit is rubbing against your crotch. She trills happily and starts bouncing atop you, working her squeezing vinyl walls down around you. You can feel the smooth, wet touch of the vixen's tongue as well as she licks at your rod and the stretched pussy around it.";
		say "     Not to be left out, the sea lion moves up beside you and pulls your face into his crotch. Presented with his dark purple cock, you can see it's similarly got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. For some reason, perhaps the growing arousal you're feeling from having the eager orca atop you, you open your mouth and willingly accept the strange balloon-cock into your mouth. As the sea lion pulls your face into his groin as he fucks your mouth, you lick and suck at his pulsing rod, moaning softly.";
		say "     They go at it for quite a while until you're pushed past your limit and cum hard, shooting your [cum load size of player] load into the inflatable female while she trills happily. Moments later the sea lion is set off, shooting a jet of air-driven semen right down your throat. The orgasm, the gas and the semen all work to leave you momentarily dazed and weak, unable to resist as they move to dealing with the vixen. She's mounted in turn and fucked while eating your hot load from the orca's pussy.";
	else if player is female:
		say "     After a few trills and barks between them, a decision seems to be reached and the sea lion moves himself over your crotch, rubbing his throbbing cock across your wet folds. This gives you a good view of the dark purple shaft as he readies to mount you and you can see it's got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. Growing aroused despite the trouble you're in, you're soon quite wet and rubbing your hips back up against that slick shaft. He barks happily now that he can see you're ready and shifts his bulky body a little, grabs you with his flippers and drives his inflated manhood into your [cunt size desc of player] cunt, making you moan loudly as it shifts to be just the right size to fill you fully and deeply. You can feel the smooth, wet touch of the vixen's tongue as well as she licks at your pussy and the throbbing cock stuffed inside it.";
		say "     Not to be left out, the orca moves up beside you and presses her crotch to your face. Presented with her juicy pussy, your eyes run over her milky white folds and the soft, magenta interior of her cunt. At the top of it, poking partway out of the ivory lips is an air nozzle where her clit should be and wet and juicy with her arousal. Licking your lips and drawn to the unusual pussy, you run your tongue over her strange clit and can't help but smile as she trills happily. Soon you're digging it, licking at her eagerly and pushing your tongue past those yielding folds to get more of her juices.";
		say "     They go at it for quite a while until you're pushed past your limit and cum hard, moaning loudly as your inner walls clamp down around the inflatable cock stuffed inside you[if player is male] while shooting your [cum load size of player] load across yourself[end if]. This sets off the sea lion, who shoots jet after jet of air-driven semen right into your womb with barks of excitement. The orca goes off moments later, a squirt of her own juices soaking your face as her nozzle sprays a mist of latex-scented air across your face. The orgasm, the gas and the juices all work to leave you momentarily dazed and weak, unable to resist as they move to dealing with the vixen. She's mounted in turn and fucked while taking a turn eating out the orca.";
	else:
		say "     After a few trills and barks between them, a decision seems to be reached and the sea lion moves himself over your crotch, rubbing his throbbing cock across your bare groin. This gives you a good view of the dark purple shaft as he readies to mount you and you can see it's got an air nozzle at its tip and that some slick, oily pre is leaking out around the edges of it. Growing aroused despite the trouble you're in, you're soon quite excited and rubbing your hips back up against that slick shaft. He barks happily now that he can see you're ready and shifts his bulky body a little, grabs you with his flippers and drives his inflated manhood into your ass, making you moan loudly as it shifts to be just the right size to fill you fully and deeply. You can feel the smooth, wet touch of the vixen's tongue as well as she licks at your stretched anal ring and the throbbing cock stuffed inside it.";
		say "     Not to be left out, the orca moves up beside you and presses her crotch to your face. Presented with her juicy pussy, your eyes run over her milky white folds and the soft, magenta interior of her cunt. At the top of it, poking partway out of the ivory lips is an air nozzle where her clit should be and wet and juicy with her arousal. Licking your lips and drawn to the unusual pussy, you run your tongue over her strange clit and can't help but smile as she trills happily. Soon you're digging it, licking at her eagerly and pushing your tongue past those yielding folds to get more of her juices.";
		say "     They go at it for quite a while until the sea lion is pushed past his limits and shoots jet after jet of air-driven semen deep inside you with barks of excitement. The orca goes off moments later, a squirt of her own juices soaking your face as her nozzle sprays a mist of latex-scented air across your face. The gas, the semen and the juices all work to leave you momentarily dazed and weak, unable to resist as they move to dealing with the vixen. She's mounted in turn and fucked while taking a turn eating out the orca.";
	WaitLineBreak;
	say "     When they're done with her, they press their muzzles to your lips. As you and the vixen are kissed, there's another release of heady gas to keep you both dazed and weak. This time they bump and push you from the parapets into the upper hall and then continue on, gradually leading you both back downstairs, giving you numbing kisses along the way. Eventually you are lead into [if bcseenhugeorca is true]a distant room with a much larger orca inside it[else]the room with the large, pushy orca[end if].";
	say "     The larger orca does not seem perturbed by their arrival and shares a quick nuzzle with each of them. There is a short exchange of squeaky trills and barks before you're pressed forward to kiss and lick at the big inflatable's wet pussy while the others stroke and caress you, urging you on. Not that you need much encouragement by this point, your mind quite addled on the gas and your arousal very high.";
	say "     You nuzzle and lick at those widening folds even as they start to spread open to let you work your tongue deeper. As you lap up her flowing juices, the stroking flippers and paws start to push at you, pressing you forward all the more. The orca's slick cunt opens wider, taking your head in, and soon after, your shoulder and upper body follow as rippling walls and pushing playmates send you into her. As your upper body's moving into a larger chamber prepared for you, you feel a pair of hands around your ankles while follow you in, the vixen being sent in behind you. Soon enough, you're bundled up together in the large orca's rubbery womb, covered in a slick coating of latex and playing lustfully with one another in the orca's snug womb.";
	say "     As you [if player is male]fuck her[else]grope and fondle her[end if], the big orca around you sways and rocks, her well-stuffed body most likely being fucked by the horny sea lion. This is confirmed soon enough with a rush of his hot seed and mind-numbing gas spraying into her uterus, filling it up and coating you both in the gooey semen. This is enough to have you both cum hard before conscious thought fades and you eventually pass out in one another's arms.";
	WaitLineBreak;
	now bcending is 4;
	now bodyname of player is "Captured";
	now facename of player is "Captured";
	now skinname of player is "Captured";
	now tailname of player is "Captured";
	now cockname of player is "Captured";
	now humanity of player is 0;
	end the story saying "You and the vixen failed to escape your latex fate.";


to say bcfinal3:		[Escape - leave w/o vixen]
	say "     With the whole plan falling part - the vixen now an airhead, sex-crazed pool toys, and an animated bouncy castle - you decide to bail out. Seeing an opening, you dive onto the slide and take it down into the cool water. When you surface, you start to swim away from the castle, hearing the sounds of pleasure coming from the vixen and the other two inflatables. You suspect they're going to make sure she's finished off, but at least she's providing you a distraction.";
	say "     Frustrated with the time you've wasted on this project, you [if boatfound is 3 or boatfound is 2]return to your boat[else]leap back into the water[end if] and take a moment to gather your bearings. You're reminded of the mooring lines securing the castle and wonder if it would be wise to send the whole place out to sea. Releasing it may prevent more local lifeforms from falling prey to its influence, but there's also the risk that you'll spread the infection further if it drifts to another populated area.";
	say "     [bold type]Do you cut the rope?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. The castle poses a serious threat to yourself and other beach-goers.";
	say "     ([link]N[as]n[end link]) - No. You don't want to risk causing trouble elsewhere.";
	if player consents:
		say "     In the end, you decide to [if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned]cut through[else]untie[end if] the mooring lines securing the castle. The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current. Once you're back on firm land, you stare out at the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea. Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
		move player to Beach Plaza;
		now Bouncy Castle is unknown;
		now bcuntethered is 1;
	else:
		say "     In the end, you decide to leave the mysterious castle be and set out on the long [if boatfound is 3 or boatfound is 2]trip[else]swim[end if] back to shore. Once settled, you stare out at the water and wonder if you did the right thing.";
		move player to Beach Plaza;
	now HP of Bubble is 99;
	decrease score by 10;


Chapter 3 - Successful Escape

to say bcfinalsuccess:
	say "     She dives happily down the slide with a giggling 'Wheeeee!' and into the water. Her new form takes to it readily as she happily floats across the waves. You grab your stuff and head down after her, splashing into the water as she frolics about. Just as you're about to leave, you're reminded of the mooring lines securing the castle and wonder if it would be wise to send the whole place out to sea. Releasing it may prevent more local lifeforms from falling prey to its influence, but there's also the risk that you'll spread the infection further if it drifts to another populated area.";
	say "     [bold type]Do you cut the rope?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. The castle poses a serious threat to yourself and other beach-goers.";
	say "     ([link]N[as]n[end link]) - No. You don't want to risk causing trouble elsewhere.";
	if player consents:
		say "     The vixen swims alongside you as you head to the lines securing the bouncy castle and [if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned]cut[else]release[end if] them. The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current. You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[else]start the long swim back to shore[end if] with the sleek vixen. Once on the beach, you both stare out over the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea. Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
		now bcuntethered is 1;
	else:
		say "     In the end, you decide to leave the mysterious castle be. You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[else]start the long swim back to shore[end if] with the sleek vixen. Once on the beach, you both stare out over the water, and you whether you did the right thing.";
	say "     During your trip back, you've come the realize that the vixen's still been considerably affected by her time in the dolphin suit. While the impression you got from her old notes was different, she's certainly quite the airhead now. She giggles and cavorts playfully, focusing on little past her own amusement from moment to moment. Still worried about your reward, you keep talking to her, trying to keep her focused. And while she won't divulge the location to you, you do thankfully get the impression she may still know where the stuff is hidden.";
	WaitLineBreak;
	say "     It takes some prodding from you to keep her on track, but she leads you through the coastal neighborhood. She goes on about her new body, how sexy she's been finding this whole [']crazy-animal-sex-thingy['], and how much she's looking forward to just running around and having some fun instead of being such a stick-in-the-mud about it like she was before. From the meandering path she takes, you worry that she has no idea where she's going, but she eventually leads you to an old house. 'See! I knew I'd find my way back eventually. This is my parent's old place, but they're not around, so I stashed my stuff under the porch so no one would find it. Can you be a dear and get it out? I don't want to tear my new, shiny skin,' she asks, running her paws over it with a happy giggle.";
	say "     It takes some squirming, but you manage to snag the pack of bottled water, and with the vixen's help and only a light groping, pull it and yourself free from under the porch. She dances happily and gives you a kiss, splitting the pack with you. Even split between the two of you, your water supplies have been considerably improved. You ask if there's any food, but she shakes her head and grins. 'Nope. I think I was out looking for some when I ran into those cute dolphin girls. Mmm... I should see if I can find one of them again. Just one this time, though. As fun as that suit was, I do like being a sexy vixen,' she says, giving her tail a swish.";
	say "     'You like me being a sexy vixen too, don't you?' she purrs, snuggling in close to you. Rubbing her smooth body against yours, she runs her paws over your chest. 'I could come with you and we could have lots more fun together. How does that sound?' Shall you invite the vacuous vixen to come back to the library with you?";
	if player consents:
		say "     Expecting she'll just run into more trouble given her rather air-headed state, you decide to bring her back with you. Given her new outlook, you expect you'll be able to have some fun with her easily enough too. Giggling happily, she claps her paws together and bounces buoyantly in the air. 'Yay! We'll have loads of fun together, you'll see. Hey! Why wait? Lemme show you!' And with that, she's on her knees, nuzzling at your crotch.";
		if player is male:
			say "     Giving your manhood a few licks with her slick tongue, she releases a squeaky sigh of pleasure. Opening her inflatable muzzle [if cock length of player > 12]very [end if]wide, she plunges her mouth over your [cock size desc of player] cock. Clearly very eager after her long stint of being pent up in her rubbery prison, she goes down on you hungrily. Her maw and throat are slick and smooth around your meat, sliding easily with just the right amount of stimulation. Grabbing her head, you fuck her face until you cum, spraying your hot load across the inside of her latex skin. When released, she licks her lips and bounds merrily around you, chattering happily as she follows you back to the library.";
		else if player is female:
			say "     Giving your pussy a few licks with her slick tongue, she releases a squeaky sigh of pleasure. Pressing her inflatable muzzle to your crotch, she plunges her tongue into your [cunt size desc of player] cunt. Clearly eager after her long stint of being pent up in her rubbery prison, she eats you out with a lustful hunger. Her lips are soft and smooth and her tongue is slick, sliding easily in and out of you in search of your most pleasurable points. She caresses your rear with her inflatable paws and pushes her tongue deeper. It even feels like it's swelling up inside you. Trembles of erotic pleasure run through your body as you grind against her muzzle and squeeze down around her tongue. Grabbing her head, you press her face to your crotch, smooshing her muzzle against your dripping loins as you cum, soaking her latex skin in your juices. When released, she pops her tongue free with a wet slurp. Looking down, you can see it was indeed inflated and stretched out like a long, thin balloon. 'Wooo! That was fun!' she giggles as soon as her tongue's deflated back to its normal size and she's able to speak again. She licks her dripping lips and laps the excess juices from your crotch. She bounds merrily around you, chattering happily as she follows you back to the library.";
		else:
			say "     Finding your crotch bare, she gives it a few kisses, saying it's so sad that you're like this when there's so much sexy fun to be had. 'At least there's no shortage of people out there who'd be willing to help you solve your little problem,' she giggles. Kneading your rear, she continues to kiss and lick you, moving back to your crinkled hole instead. She [if anallevel is 1]gives it a few licks while fingering herself to a quick orgasm[else]brushes her latex tongue across your anal ring slowly before wriggling it into you. You moan at the slick, squirming penetration and unconsciously push your rear back, seeking more. She caresses your needy bottom with her inflatable paws and pushes her tongue deeper. It even feels like it's swelling up inside you. Trembles of undirected pleasure run through your body as you grind back against her muzzle and squeeze down around her tongue. Eventually, she pops her tongue free with a wet slurp. Looking back, you can see it was indeed inflated and stretched out like a long, thin balloon. 'Wooo! That was fun!' she giggles as soon as her tongue's deflated back to its normal size and she's able to speak again[end if].";
		say "     'Say! I can't really remember my name anymore,' she says as cheerfully as everything else that bubbles out of her. 'That means I need a new one. Let's see... how about... Bubble? Yeah! I'm Bubble,' she yips happily.";
		now HP of Bubble is 4;
		move Bubble to Makeshift Rec Room;
		move player to Makeshift Rec Room;
		now battleground is "void";
	else:
		say "     'Oh... Well, thanks for saving me, I guess,' she says, briefly disappointed, before her mind wanders again. 'Maybe someone else out there would like a little latex lovin[']. I know I do,' she yips merrily. 'Well, time for me to head off, sweetie. Thanks for the rescue,' she says, giving your ass a squeeze before dashing off with a girlish giggle.";
		now HP of Bubble is 3;
		move player to Public Beach;
	increase carried of water bottle by 3;
	increase score by 60;
	if bcuntethered is 1:
		now Bouncy Castle is unknown;
	follow the turnpass rule;


Section 6 - Rules Modifications and Everyturn Rule

Instead of exploring while player is in Bouncy Castle:
	say "There is nowhere to explore out here.";

Instead of scavenging while player is in Bouncy Castle:
	say "There is nowhere to scavenge out here.";

an everyturn rule:
	if HP of Bubble is 2 and the player is in Castle Throne Room:
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     You hear some noise coming from one of the suspended dolphins. Following the moans, you struggle to open it up. Inside you discover the vixen you were seeking, writhing in the throes of a rather powerful orgasm. She's already become an inflatable and her arms seem to be fusing to her sides. You quickly pull off the mouthpiece, but her eyes have gone vacant and she simply moans and trills happily as you try and ask her about her cache of supplies. With her mind gone and her body well on its way to becoming just another inflatable dolphin toy, you grumble and seal her back up.";
			say "     Frustrated with the time you've wasted on this project, you [if boatfound is 3 or boatfound is 2]return to your boat[else]leap back into the water[end if] and take a moment to gather your bearings. You're reminded of the mooring lines securing the castle and wonder if it would be wise to send the whole place out to sea. Releasing it may prevent more local lifeforms from falling prey to its influence, but there's also the risk that you'll spread the infection further if it drifts to another populated area.";
			say "     [bold type]Do you cut the rope?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes. The castle poses a serious threat to yourself and other beach-goers.";
			say "     ([link]N[as]n[end link]) - No. You don't want to risk causing trouble elsewhere.";
			if player consents:
				say "     In the end, you decide to [if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned]cut through[else]untie[end if] the mooring lines securing the castle. The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current. Once you're back on firm land, you stare out at the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea. Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
				move player to Beach Plaza;
				now Bouncy Castle is unknown;
				now bcuntethered is 1;
			else:
				say "     In the end, you decide to leave the mysterious castle be and set out on the long [if boatfound is 3 or boatfound is 2]trip[else]swim[end if] back to shore. Once settled, you stare out at the water and wonder if you did the right thing.";
				move player to Beach Plaza;
			now HP of Bubble is 99;
			decrease score by 10;
	else if HP of Bubble is 2 and ( the player is in Bouncy Castle or the player is in Fencing Room or the player is in Bouncing Play Room or the player is in Ball Pit Room or the player is in Toy Room or the player is in Parapets or the player is in Great Hall or the player is in King's Chambers or the player is in Lower Tower or the player is in Upper Tower or the player is in Tower Turret or the player is in Upper Hall or the player is in Eastern Parapets or the player is in Western Parapets ):
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     As you pause for a moment to catch your breath, you hear loud, muffled cries of ecstasy coming from somewhere on the upper level of the castle. Given the mix of yiffs and trills to the sound and how they finish by becoming purely trills of delight, you sadly have to assume that was the vixen girl finally giving in to whatever is happening to her. Deciding there's little point in remaining here any longer, you push your way back to the entrance.";
			say "     Frustrated with the time you've wasted on this project, you [if boatfound is 3 or boatfound is 2]return to your boat[else]leap back into the water[end if] and take a moment to gather your bearings. You're reminded of the mooring lines securing the castle and wonder if it would be wise to send the whole place out to sea. Releasing it may prevent more local lifeforms from falling prey to its influence, but there's also the risk that you'll spread the infection further if it drifts to another populated area.";
			say "     [bold type]Do you cut the rope?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes. The castle poses a serious threat to yourself and other beach-goers.";
			say "     ([link]N[as]n[end link]) - No. You don't want to risk causing trouble elsewhere.";
			if player consents:
				say "     In the end, you decide to [if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned]cut through[else]untie[end if] the mooring lines securing the castle. The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current. Once you're back on firm land, you stare out at the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea. Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
				move player to Beach Plaza;
				now Bouncy Castle is unknown;
				now bcuntethered is 1;
			else:
				say "     In the end, you decide to leave the mysterious castle be and set out on the long [if boatfound is 3 or boatfound is 2]trip[else]swim[end if] back to shore. Once settled, you stare out at the water and wonder if you did the right thing.";
				move player to Beach Plaza;
			now HP of Bubble is 99;
			decrease score by 10;
	else if HP of Bubble is 1 or HP of Bubble is 2:
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     Your thoughts stray back to the vixen and dolphin girls you saw on the beach. It's been several days, so it's probably too late to help her now.";
			decrease score by 10;
			now HP of Bubble is 100;



Section X - Debug - Not for release

dolphincastletesting is an action applying to nothing.
understand "dolcastletest" as dolphincastletesting.

carry out dolphincastletesting:
	try resolving Snared Vixen;
	WaitLineBreak;
	move player to Bouncy Castle;


Section 7 - Captured Endings

when play ends:
	if bodyname of player is "Captured" and bcending is 1:
		say "     Your pod ends up hidden beneath the bouncy castle, attached to the underside. There, your life becomes one of unending pleasure as the sex chair that's become your whole world stimulates you. You have orgasm after unending orgasm, as somehow your pleasure satisfies some need of the giant inflatable play area. You consciousness largely fades away under the constant treatment of the aphrodisiacs pumped into you as it sustains you with a sweet, nourishing liquid and air heavily laced with the mind-altering gasses. You become its eternal prisoner, but somehow that doesn't matter, as long as it continues to let you [if player is not neuter]cum[else]climax[end if].";
		if player is female or player is mpreg_ok:
			say "     You are vaguely aware that there are other pods down there as well despite being fully enclosed and unable to see or sense anything but the pleasures provided. Your womb is periodically pumped full of semen from these other prisoners, impregnating you with their offspring, providing your broken mind with another delight to enjoy. Your children are born as inflatable versions of their sires. They are removed from your pod as they are pushed from your [if player is female]vagina[else]ass as latex eggs[end if] and released as more servants for the bouncy castle[if player is male]. Also being male, you take added pleasure in knowing your seed is similarly being used to impregnate females in other pods[end if].";
		else if player is male:
			say "     You are vaguely aware that there are other pods down there as well despite being fully enclosed and unable to see or sense anything but the pleasures provided. Your semen is pumped out of you and periodically provided to the others, used to breed the female prisoners to sire inflatable young inside them to be more servants for the bouncy castle.";
	else if bodyname of player is "Captured" and bcending is 2:
		say "     Your pod ends up hidden beneath the bouncy castle, attached to the underside. But you don't remain entirely there, either. A section of your mind, having so willingly accepted the pleasures of the castle, is drawn away from your body and starts to meld into the consciousness that is the bouncy castle. You can share in some of its senses and feel it drawing energy from the pleasure of others, both your body and the other prisoners in pods beneath the castle. It has a small collection of them to sustain itself and this constant feeding brings a pleasure of its own to you as part of the inflatable castle.";
		say "     Those converted by the floating play area and its creatures are its servants, providing additional energy and pleasure to it. The others, more prisoners of their pods rather than fully part of the castle like you are, live in constant ecstasy and orgasm, as your body does. These creatures are bred with one another as well, semen pumped from the males into the females so they may birth inflatable creatures like their parents to act as fresh servants for the castle. Still sharing some connection with your body, you get to enjoy [if player is not neuter or player is mpreg_ok]this as well as all the other[else]all the[end if] physical pleasures the castle provides, more directly sharing them with your united consciousness.";
	else if bodyname of player is "Captured" and bcending is 3:
		say "     Having little mind of your own past a vague sense of happiness as an inflatable chair, you spend some time in the lonely room with only the knights to watch as they'll occasionally take a break from their stoic vigil to play with one another on the walls. Eventually though, one of the inflatable dolphin girls finds you. Having been lonely, you do your best to look inviting and comfy and yellow. Drawn in, she takes a seat in you. When you inflate a cock in your seat for her to ride, she's very happy and bounces around to ride it. Being sat in and being able to please (and pleasure) someone feels very good. She rides herself to several orgasms in you, leaving your seat pleasantly wet and sticky.";
		say "     When she's finally satisfied and a new thought enters her bubbleheaded mind, you're pleased that she takes you out with her, showing you off to her friends. They all take turns in you and you have a wonderful time pleasing them. You're eventually left in the toy room where they keep all their beach toys and inflatables, but they're in there much more often than the out of the way room where you were, so you get much more use now. You have a happy life pleasing the dolphin girls and distracting the occasional intruder until they can be found and made them into another cute dolphin playmate.";
	else if bodyname of player is "Captured" and bcending is 4:
		say "     You are awoken to a shifting of the soft chamber around you both, and with an outpouring of sticky latex fluids, you and your womb-sibling are pushed back out into the world.";
		if player is male:
			say "     You emerge as a [if player is female]cherry red[else]purple[end if] sea lion and she as an orange orca. Having forgotten your past lives now that you've been reborn as another pair of inflatable pool toys, you snuggle up to her happily. After licking the tasty fluids from each other, you mount her, rocking your pinniped body atop her until you cum and fill her with your sticky seed. From that day forth, you work as a team, helping to guard the castle, playing with the numerous dolphin girls and the infrequent intruders who stumble across you. Most you simply fuck into a stupor and leave for the dolphin suits, but occasionally you bring them to your orca mother and make them into new siblings.";
		else:
			say "     You emerge as a [if player is female]magenta[else]dusty red[end if] orca and she as an orange one. Having forgotten your past lives now that you've been reborn as another pair of inflatable pool toys, you snuggle up to her happily. After licking the tasty fluids from each other, you turn your attention to each other's pussy and eating it out until you've shared several sticky climaxes. From that day forth, you work as a team, helping to guard the castle, playing with the numerous dolphin girls and the infrequent intruders who stumble across you. Most you simply fuck into a stupor and leave for the dolphin suits, but occasionally you bring them to your orca mother and make them into new siblings.";
	else if bodyname of player is "Captured" and bcending is 5:
		let compnumber be the number of entries in childrenfaces;
		if companion of player is not nullpet, increase compnumber by 1;
		say "     An uncertain amount of time later, you flow out from the pillar which engulfed you as a mass of [ppcolor] latex. Moving across the inflated floor, your simple mind chooses an open spot for yourself and you form yourself into another pillar. Soon enough, you're rooted in place among the others of your kind in the room. On your front, you have the design of an aggressive [bcfinalpillarform] on your padded [ppcolor] surface[if compnumber is 1]. Your companion, similarly transformed, has become a green pillar with a design suiting their previous form[else if compnumber > 1]. Your companions, similarly transformed, have become colorful pillars with designs suiting their previous forms[end if].";
		say "     Your existence is a simple one, your previous mind erased and left empty save for thoughts of lust and transforming others into joining with the bouncy castle as you have. Pleasure mostly comes in the form of dolphin girls who wander into the room to be sexually assaulted by your tendrils until you're both satiated. On other occasions, you send out tendrils to some of the other pillars and pleasure one another, forming phalli and orifices for them, spraying your latex cum onto and into each other. But sometimes, your greatest delight will come when some wanderer makes their way into your room. When this happens, you grapple them with tentacles of [ppcolor] goo, sexually pleasuring yourself and them as you draw them inexorably into you to be consumed and transformed into another punching pillar, as was done to you on that fateful day.";

Bouncy Castle ends here.
