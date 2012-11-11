Version 2 of Bouncy Castle by Stripes begins here.
[Version 2.0 - Extended Castle w/simple traps]
"Save the vixen 'princess' from the 'castle'."

Section 1 - Starting Event

Snared Vixen is a situation.  The level of Snared Vixen is 5.
the sarea of Snared Vixen is "Beach".
vixdol is a number that varies.
vixcountdown is a number that varies.
dolphinbundle is a number that varies.
dolphinlist is a list of text that varies.
dolcastleturn is a number that varies.
dolcastlefight is a number that varies.

when play begins:
	add Snared Vixen to badspots of girl;
	add Snared Vixen to badspots of furry;

Instead of resolving a Snared Vixen:
	say "     As you're travelling along the beach, you can hear some giggling in the distance.  As you crest the next sandy rise, you can see several bright pink dolphin girls playing with a vixen they've found.  She's struggling a little, but her resistance becomes less and less as the playful inflatables tease her body while taking off what few scraps of clothes she has.  As they're several hundred yards away, you'd not be able to get there in time to interfere if you wanted to.  It's hard to make out all the details at this distance, but are you interested in watching (Y) or shall you just continue on your way? (N)[line break]";
	if the player consents:
		say "     While one of the dolphin girls gives the vixen a kiss and another buries her bottlenose in her furry crotch, the third removes an uninflated dolphin toy from a satchel they were carrying.  As the pink dolphins start sliding it over the vixen, she hardly struggles, the trio keeping her too lustful to quite notice what's going on until it's too late.  Her arms are held to her sides as they start enclosing her in the large, inflatable cetacean.  It's only as they're sealing her up completely in it that she starts to scream, but those are soon muffled somehow.  The vixen, now fully encased in a dolphin-shaped inflatable, is carried into the water by the giggling girls.  You watch as they pull her out to sea.  You're confused by this at first, as they just seem to be floating her along, but you eventually spot a sky blue bouncy castle floating out on the water past the rocks that appears to be their destination.";
		say "     As you're watching all this, you continue walking along the beach.  By the time you get to the site of the vixen's capture, you can see the dolphin girls pulling the buoyant inflatable into the castle to meet whatever fate the dolphins eventually have planned for her.  You sort through the vixen's clothes and her small collection of gear.  You don't spot anything of use to you, though you do find a small pad of notes the vixen seems to have been using to keep track of stuff.  Most of it doesn't interest you until you spot a note about having recently found a large stash of bottled water.  Suddenly concerned about the vixen's fate, you find yourself wondering if there's any way to rescue her, or at least learn from her where these supplies can be found.";
		if boatfound is 0 and hasgills is 0:
			say "     But first, you'll need to find a means of getting out there.  You'll need to either be a better swimmer or find a boat you can use to get there.  She probably doesn't have too long, so you'll need to move quickly.";
			now boatfound is 1;
		otherwise if boatfound is 3:
			say "     The boat you've used to travel to the pirate island is more than capable of handling the short jaunt out to the bouncy castle, so you should be able to make it out there.";
		otherwise if hasgills is 1:
			say "     It would take a bit of work, but you should be able to swim all the way out to the bouncy castle thanks to your gills.";
		now Bouncy Castle is known;
		now vixdol is 1;
		now vixcountdown is 25;
		now dolphinlist is { "C", "A", "X", "B", "X", "C", "A", "D", "X", "C", "X", "A" };
		let templist be { "A", "C", "D", "E"};
		sort templist in random order;
		now entry 3 of dolphinlist is entry 1 of templist;
		now entry 5 of dolphinlist is entry 2 of templist;
		now entry 9 of dolphinlist is entry 3 of templist;
		now entry 11 of dolphinlist is entry 4 of templist;
	otherwise:
		say "     Deciding that it's not of interest to you, you turn away and head back the way you came.";
	now Snared Vixen is resolved;


Section 2 - Travelling to the Bouncy Castle

rowing is a truth state that varies.  rowing is usually false.

instead of navigating Bouncy Castle:
	if vixdol is 0:
		say "Go where now?";
		stop the action;
	if vixdol is 100:
		say "By this point, there's no reason to risk going there.";
		stop the action;
	otherwise if vixdol > 2:
		say "Don't you remember?  You sent it out to sea.";
		stop the action;
	if hasgills is 0 and boatfound <= 1:
		say "You have no means to make it out to the inflatable castle out in open water.  You'll need to find some means to get there.";
		stop the action;
	if location of player is not fasttravel and location of player is not Public Beach:
		say "You can't navigate from here.";
		stop the action;
	if location of player is Bouncy Castle:
		say "You're already here.";
		stop the action;
	if location of player is Beach Plaza or location of player is Public Beach:
		let x be 0;		[already at a valid starting point]
	otherwise:
		say "You begin by making your way back to the beach";
		let the bonus be (( the perception of the player minus 10 ) divided by 2);
		now battleground is "Outside";
		if a random number from 1 to 20 is less than 10 minus bonus:
			say ", encountering an enemy on the way there.";
			if there is a area of Battleground in the table of random critters:
				Fight;
				if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
					say "As you are trying to recover from your last encounter, another roving creature finds you.";
					Fight;
		otherwise:
			say ", avoiding trouble as best you can.";
		move player to Beach Plaza;
	if boatfound is 3:			[boat]
		say "     Returning to where you moored your boat at the beachside, you set sail for the floating play castle.  You manage to sail out to it without incident.  It would take more sailing finesse than you have to pull up alongside the sky blue castle, so you drop anchor nearby and swim the remaining distance rather than risk puncturing its inflatable hide.";
		move player to Bouncy Castle;
	otherwise if boatfound is 2:		[rowboat]
		say "     Returning to the rowboat you found, you drag it into the water and start your journey.  It is hard work rowing the boat, but it certainly beats swimming the whole way.  As you're making your way through the rocking outcroppings on your way to the floating castle, you watch warily for any signs of the creatures infesting these waters.";
		now rowing is true;
		if a random number between 1 and 20 is greater than the perception of the player:
			swimmingfight;
		now rowing is false;
		say "     Eventually, you make it out to the buoyant castle, rowing up close to it.  Your arms are sore from all the rowing, but you have managed to arrive at your destination.  Worried your boat might scrape a hole in its rubbery hide, you moor your boat to one of the tethers tying the castle between the rocks.  You swim the short distance to the floating castle and make your way inside.";
		let dam be 16 - ( strength of player / 2 ) - (stamina of player / 2 );
		if dam < 0, now dam is 0;
		decrease hp of player by dam;
		move player to Bouncy Castle;
		follow the turnpass rule;
	otherwise if hasgills is 1:		[swam there]
		say "     Returning to the section of beach near the floating castle, you swim out into the waters.  While your aquatic affinity makes the swim easier, you still struggle against the turbulent waters in this area.  As you're making your way through the rocking outcroppings on your way to the floating castle, you watch warily for any signs of the creatures infesting these waters.";
		swimmingfight;	[details in Hellerhound\underwater zone.i7x]
		say "     Eventually, you make it out to the buoyant castle, managing to swim to one of the lines that is keeping it tethered between the rocky outcroppings.  You follow that line up to the castle and climb inside, quite tired, but having reached your destination.";
		let dam be 20 - ( strength of player / 2 ) - (stamina of player / 2 );
		if dam < 0, now dam is 0;
		decrease hp of player by dam;
		move player to Bouncy Castle;
		follow the turnpass rule;
	now dolcastleturn is 0;


Section 3 - Bouncy Castle Layout

bcswordplay is a truth state that varies.  bcswordplay is normally false.
bcseenplayroom is a truth state that varies.  bcseenplayroom is normally false.
lastsealfight is a number that varies.  lastsealfight is normally 255.
lastoctofight is a number that varies.  lastoctofight is normally 255.
lastorcafight is a number that varies.  lastorcafight is normally 255.


The Bouncy Castle is a room.  Bouncy Castle is fasttravel.  Bouncy Castle is unknown.  Bouncy Castle is private.
The description of Bouncy Castle is "[bcentrance]".

The Fencing Room is a room.  The Fencing Room is east of Bouncy Castle.
The description of Fencing Room is "[bcfencingroom]".

The Bouncing Play Room is a room.  The Bouncing Play Room is south of Fencing Room.  The Bouncing Play Room is east of Ball Pit Room.
The description of Bouncing Play Room is "[bcplayroom]".

The Ball Pit Room is a room.  The Ball Pit Room is south of Toy Room.
The description of Ball Pit Room is "[bcballpitroom]".

The Toy Room is a room.  The Toy Room is west of Bouncy Castle.
The description of Toy Room is "[bctoyroom]".

The Parapets is a room.  The Parapets is up from Ball Pit Room.
The description of Parapets is "[bcparapets]".

The Slide Room is a room.  The Slide Room is east of Parapets.
The description of Slide Room is "[bcslideroom]".

BouncyCastleExit is a room.  "Leaving the bouncy castle."  BouncyCastleSlideExit is east of Slide Room.  BouncyCastleExit is north of Bouncy Castle.

the scent of Bouncy Castle is "This place smells of rubber and the ocean.";

the scent of Fencing Room is "This place smells of rubber and the ocean.";

the scent of Bouncing Play Room is "This place smells of rubber and the ocean, though there's a lingering scent of arousal and sex as well.";

the scent of Ball Pit Room is "This place smells of rubber and the ocean.";

the scent of Toy Room is "This place smells of rubber and the ocean.";

the scent of Parapets is "This place smells of rubber and the ocean.";

the scent of Slide Room is "This place smells of rubber and the ocean.";


Section 4 - Inside the Bouncy Castle

Chapter 1 - Entrance

to say bcentrance:
	if vixdol is 1:
		say "     As you approach your destination, you can see it's much larger than you'd originally guessed.  Being around 20 yards across on each side, it could probably accommodate several dozen rambunctious, jumping kids at once.  It even seems to be two tiered, with a waterslide coming down from the upper level on the west side.  You didn't think these things were made this large, but maybe.  The exterior of the castle is sky blue, making it difficult to see at a distance.  The large inflatable has been secured by two long ropes which lead to rocky outcroppings, mooring it safely inbetween them.  But despite this, it does shift and sway around considerably.  Coupling that with its bouncy floor makes movement inside rather difficult.";
		say "     You pull yourself into the first room and look around the entrance room.  It has a soft, bouncy floor and is a couple of feet above the water level, necessitating an easy climb up a mesh ladder that hangs from the entrance mouth.  The interior of this room has a dark green floor, blue walls with yellow arches and columns and a ceiling of red.  There's a couple of beach balls and pool noodles left scattered on the floor here, probably by the airheaded dolphin girls[if daytimer is night].  Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].";
		now vixdol is 2;
		increase score by 5;
	otherwise:
		say "     This inflatable castle floats on the water, tethered between two rocks by thick ropes.  It sways and bobs on the water, adding to the instability of its floor, making it difficult for you to move around.  The bouncy castle itself is brightly coloured with the exterior a sky blue, making it hard to spot on the water in the distance.  The interior has a dark green floor, blue walls with yellow arches and columns, and a ceiling of red vinyl[if daytimer is night].  Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].";
	say "     Aside from the yawning mouth to the castle which you entered to the south of you, there are two separate child-sized doorways out of this room, one to the east and one to the west.  While each doorway is obscured by strips on hanging clear plastic, pushing them aside, you glance quickly in them both before pressing onward.  The one to the [link]east[end link] has a few columns in it and some foam swords and other toys scattered on the floor.  To the [link]west[end link], you see large assortment of beach toys and equipment, including some several beach balls, plastic pails and buckets and a couple of those floating mats people can lie across while in the pool.  Alternatively, you could exit to the [link]north[end link] and make your way back to the beach.";

instead of going north from Bouncy Castle:
	say "     You head back into the water and make your way back to the beach to consider your next move.";
	move player to Public Beach;
	follow the turnpass rule;


Chapter 2 - Fencing Room

to say bcfencingroom:
	say "     This room is similar to the first room you were in, but has an arched window set into each of the two outer walls[if daytimer is day], letting in some light[otherwise].  Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].  Unlike the first room, there are several drawings of knights swordfighting on the walls";
	if bcswordplay is false:		[swords active - foam sword fight!]
		say ".  Scattered on the floor are several foam swords which, as you pause for a moment to look at them, start to rise up into the air on their own, swinging wildly at you.  The blows don't really hurt, but you are knocked around on the unsteady floor.";
		say "     Shall you: Grab one of the swords and [link]fight back (1)[as]1[end link] or make a break for the [if bcseenplayroom is true]play room[otherwise]doorway[end if] to the [link]south (2)[as]2[end link] or back to the entrance to the [link]west (3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choose 1-3> [run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "     You snatch at one of the swords and easily catch it by the hilt, turning and swinging it towards with others with a loud 'Aha!'  The sword parries a few strikes coming at you, but others strike you from behind.  Laughing, you hop to turn around and face those, fencing with them.  Soon you're hopping around the room and trying to weave around the pillars to swordfight with the boffer weapons as you laugh heartily.  Having fun playing with the animated weapons, you lose track of time until you are eventually left exhausted and drop to the floor, panting to regain your breath as you giggle merrily.  The swords, also appearing to be tired or content with their playtime, settle back down onto the floor.";
			increase morale of player by 2;
			decrease humanity of player by 5;
			decrease libido of player by 5;
			if libido of player < 0, now libido of player is 0;
			now bcswordplay is true;
			follow the turnpass rule;
		otherwise if calcnumber is 2 or calcnumber is 3:
			let shieldbonus be 0;
			let bonus be ( dexterity of player - 10 ) / 2;
			repeat with x running through equipped equipment:
				if ac of x > 0 and placement of x is "shield":
					let shieldbonus be 2;
			let dice be a random number from 1 to 20;
			say "     You roll 1d20([dice])+[bonus]+[shieldbonus]: [dice + bonus + shieldbonus] vs 16: ";
			if bonus + dice + shieldbonus is greater than 15:
				say "You move as best you can, weaving between the boffer swords as they swing at you.  Some blows hit, but you manage to stay on your feet as they pound onto you[if shieldbonus > 0] and your shield[end if] and make your escape, diving through into the next room.";
				if calcnumber is 2:
					move player to Bouncing Play Room;
				otherwise:
					move player to Bouncy Castle;
			otherwise:
				say "You try your best to move towards the door, but the unsteady footing and the wild blows from every direction send you tumbling around until you finally fall to the floor.  The foam swords pound on you for a while as you squirm around, trying to get up but becoming increasingly giddy.  You laugh and giggle madly as they bash you around for what seems like a couple of hours until the swords settle down and you manage to crawl into the next room.";
				decrease humanity of player by 3;
				follow the turnpass rule;
				if calcnumber is 2:
					move player to Bouncing Play Room;
				otherwise:
					move player to Bouncy Castle;
	otherwise:
		say ".  Scattered on the floor are the foam swords, still and inactive, at least for now.  You have two directions you can go from here, either back to the entrance by going [link]west[end link] or heading [link]south[end link] to the next room.  A preliminary peek in there shows a larger room there with only a few scattered items littering the floor.";


Chapter 3 - Bouncing Play Room

to say bcplayroom:
	now bcseenplayroom is true;
	say "     This room is a large, open room with a plenty of space for kids to bounce and play inside it.  It is very similar to the entrance room with its green floor, blue walls, red ceiling and yellow for the rounded columns that form the corners.  There's a small arched window on the east wall and two more on the west wall[if daytimer is day], letting in some light[otherwise].  Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].  There's a few toys and things scattered around this room, clearly from when the dolphin girls would frolic in here.  From the scent in the air, you can tell that the room's been used for more adult frolicing as well.";
	if lastsealfight - turns >= 4:
		if lastsealfight is 255:
			say "     Now that you're in the room, you do notice a bright yellow seal-shaped floating seat in the northwest corner.  It's fairly small and would only really be suitable for toddlers.  It has a drawn-on face with a friendly smile, blue eyes, black nose and cute whiskers and a pair of small handles at its shoulders.  As you look at it, it starts to stir, flapping its flippers and giving a squeaking bark.  'Play!' it squeaks, crawling forward to have fun with the newcomer.  As it moves, you spot a pointed penis inflating at its underside - clearly a new feature to this once innocent toy.";
		otherwise:
			say "     Looking over, you notice that the bright yellow seal has managed to reinflate itself and is looking towards you.  'Play?' it squeaks enquiringly before waddling forward on its flippers, clearly intent on again trying to play with you.";
		attempttowait;
		let weaponbonus be weapon damage of player / 3;
		let bonus be ( dexterity of player - 10 ) / 2;
		let dice be a random number from 1 to 20;
		say "     You roll 1d20([dice])+[bonus]+[weaponbonus]: [dice + bonus + weaponbonus] vs 14: ";
		if bonus + dice + weaponbonus is greater than 13:
			say "You manage to stay standing and take a few swings at the yellow seal, popping one of its seams and sending it flopping back into the corner as it deflates with a sad whine.  You can see the tear already starting to mend, though you don't expect it'll give you trouble for a little while.";
			now lastsealfight is turns;
		otherwise:
			now lastsealfight is turns;
			say "You try to knock the seal toy away with a few blows, but you are too unsteady on your feet and the small seat squirms between your legs, tripping you onto the soft floor.  Even as you're still swaying atop the yielding floor, the seal hops atop you pressing his hindquarters to your face.  You fumble to push him away, but are treated to a mouthful of his inflatable cock.  As he humps your face, you find yourself submitting to just let the lonely creature have his fun.  It starts to dribble a latex-like precum that becomes increasingly enjoyable and makes you all the more aroused and playful.";
			if cunts of player > 0:
				let baby be 0;
				if child is born or gestation of child is not 0, now baby is 1;
				say "     After humping your face for a while, the toy shuffles around and starts trying to nose your clothes and gear off as he nuzzles at your crotch.  Knowing what he's after and too overcome to resist it, you strip down and offer to let the cute seat ride you for a little while.  He hops up behind you and grips you lightly with his inflated flippers as his slick shaft slides into your juicy pussy.  You moan softly and push back, letting the little guy thrust into you until he cums with a happy squeak.  Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.[impregchance]";
				say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and bouyed by the experience, loosing track for a while of your intended mission.";
				if baby is 0 and gestation of child is not 0:
					now facename of child is "Seal Toy";
					now bodyname of child is "Seal Toy";
					now skinname of child is "Seal Toy";
				increase libido of player by 10;
				decrease humanity of player by 10;
				follow the turnpass rule;
			otherwise if "More Anal" is listed in feats of player and a random chance of 1 in 2 succeeds:
				let baby be 0;
				if child is born or gestation of child is not 0, now baby is 1;
				say "     After humping your face for a while, the toy shuffles around and starts trying to nose your clothes and gear off as he nuzzles at your rear.  Knowing what he's after and too overcome to resist it, you strip down and offer to let the cute seat ride you for a little while.  He hops up behind you and grips you lightly with his inflated flippers as his slick shaft slides into your tight bottom.  You moan softly and push back, letting the little guy thrust into you until he cums with a happy squeak.  Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.[mimpregchance]";
				say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and bouyed by the experience, loosing track for a while of your intended mission.";
				if baby is 0 and gestation of child is not 0:
					now facename of child is "Seal Toy";
					now bodyname of child is "Seal Toy";
					now skinname of child is "Seal Toy";
				increase libido of player by 10;
				decrease humanity of player by 10;
				follow the turnpass rule;
			otherwise:
				say "     You rub your hands over the cute toy's white underbelly, making it squeak happily.  As the strange blowjob continues, you become a more active participant, licking and sucking at the inflated prick stuffing your mouth as it leaks a latexy precum down your throat.  After a few more minutes of thrusting, he gives a happy squeak and thrusts into you one last time before unleashing spurts of gooey cum.  Spent from his orgasm, he starts to deflate somewhat and waddles back to the corner to rest and reinflate.";
				say "     You stretch out on the soft floor and decide to rest for a bit, feeling happy and bouyed by the experience, loosing track for a while of your intended mission.";
				increase libido of player by 10;
				decrease humanity of player by 8;
				follow the turnpass rule;
	otherwise:
		say "     Taking a quick glance to the northwest corner, you can see that the yellow seal is still partially deflated and isn't ready to try to play again, giving you a chance to continue undistracted.  At quick glance shows two kid-sized doorways leading out of here, one to the west and other to the north.  A quick glance through the hanging flaps between rooms shows the [link]north[end link] leads to the smaller room you saw earlier with the foam swords.  The door to the [link]west[end link] leads to a ball pit room as big as this play room.  You also notice a mesh climbing ladder at the back corner of the ball pit which heads up to the upper level.";


Chapter 4 - Ball Pit Room

to say bcballpitroom:
	say "     The ball pit room has a rounded, raised edge and seems sunk further into the floor, making it somewhat less springy under all those balls.  You are able to wade your way through them slowly to move around.  The room itself is fairly large, bigger than the entrance room, but having the same overall design.  There's two arch-shaped windows in the south wall and another on the west wall[if daytimer is day], letting in some light[otherwise].  Despite the late hour, the castle strangely seems lit, though you can find no light sources[end if].  In the southwest corner of the room, there is a large mesh ladder for the children to climb [link]up[end link] to the upper level of the bouncy castle.  There are also two doorways out of here, one to the [link]north[end link] leading to the smaller room with all the beach toys the dolphin girls have collected, and the other to the [link]east[end link] and a play room as large as this one.";


Chapter 5 - Toy Room

to say bctoyroom:
	say "     This side room has the same colour scheme as the adjoining entrance room with a green floor, blue walls and red ceiling.  In the corners there, are curved yellow sections to symbolize columns.  The room is quite cluttered with beach toys and pool toys scattered all around the room and even clumped into several piles.  There's a bit of everything in here, with pool noodles and paddle boards all over the place, plastic pails and buckets of all colours and beach balls everythere.  It looks like the dolphin girls have been storing any beach toys they've found in here.";
	if lastoctofight - turns >= 4:
		if lastoctofight is 255:
			say "     As you're looking around, some of the junk scattered here starts to shift and move.  Thinking at first it only the result of your weight shifting the floor, you try to tread more carefully.  But when the yellow tentacles start to appear from beneath the mess, you find yourself surrounded.  One large pile shifts and you see a grinning inflatable with a vapid expression of joy on its smooth, round face.  The inflatable octopus is sunshine yellow with amber along the underside of the inflated tentacles and on a few spots atop its head.  It shambles towards you as its curled tentacles try to wrap around you.";
		otherwise:
			say "     As you try to move around the room, the yellow octopus rouses itself and makes another grab at you with its sunshine yellow tentacles.  It grins at you with the same, unchanging expression of giggling happiness.";
		let bonus be ( strength of player - 10 ) / 2;
		let dice be a random number from 1 to 20;
		say "     You roll 1d20([dice])+[bonus]: [dice + bonus] vs 17: ";
		if bonus + dice is greater than 16:
			say "The octopus inflatable wraps a few tentacles around you, but you manage to push them off and kick them away for the moment.  You have an opportunity to get away either by their heading further into the castle by heading [link]south (Y)[as]y[end link] or going to the [link]east (N)[as]n[end link] to return to the castle entrance.";
			if the player consents:
				move player to Ball Pit Room;
			otherwise:
				move player to Bouncy Castle;
		otherwise:
			say "The octopus inflatable wraps a few tentacles around you and pulls you in towards it before you can push free.  It has a surprisingly strong grip for a creature made of thin plastic and air.  It reaches out towards you with two shorter tentacles like some cartoony hentai monster.  Once you're within range, those two tentacles dive at your sides and it starts to tickle you with them.  At first, your surprise keeps you from laughing, but soon you're giggling in a mix of relief and its squirming appendages['] playful tickling.  You fall into laughing hysterics as the large pool toy continues to brush those rubber appendages across your sides.  You laugh and laugh, tears running down your face as it continues to play with you until you collapse, exhausted both physically and mentally.  The octopus shuffles back into the junk to lurk quietly, waiting to surprise the next dolphin girl to come along with a tickle attack.";
			if lastoctofight is 255:
				say "     You do spot a can of soda half-buried among the beach toys near you and toss it into your pack before flopping on the floor to rest and catch your breath.";
			now lastoctofight is turns;
			follow the turnpass rule;
	otherwise:
		say "     You glance over and notice the yellow octopus lurking among the junk, but it seems content to leave you alone for now.  You can see two child-sized doors out of here.  The one to the [link]east[end link] heads back to the entrance room you started in while the [link]southern[as]south[end link] one leads to a large ball pit in which you can see a mesh ladder to climb to the upper level.";


Chapter 6 - Parapets

to say bcparapets:
	say "     Up at the top level of the castle, this room is designed to look like it's parapets.  There floor and walls here are sky blue, as are the towers rising up to enclose the room between mesh netting to keep excited children from falling.  This netting extends above you as well, enclosing the space for safety.  This section covers western half of the bouncy castle with a wall dividing the two parts and another arched doorway between them.  The floor, while springy and swaying, seems just as solid as those below despite being the inflatable ceiling to the area below.";
	if lastorcafight is 255:
		say "     You are not alone up here.  There is a large, inflatable orca toy.  It is very round and bigger than the dolphin toys you've seen, being over two yards in from end to end and big enough for an adult to use.  The black and white inflatable bobs up in to the air and rolls over a few times with a trilling noise before charging towards you to bump you with its nose.  The blow doesn't really hurt much, but makes you stumble back on the rocking, swaying floor.  It seems intent on playfully bumping you back down the hole you climbed up to get here.";
		now lastorcafight is turns;
	otherwise:
		say "     You find yourself facing off with the inflatable orca again as it trills happily to play its odd game of king of the castle.  It rolls around in the air once, then floats forward to try and bump you again.";
	let bonus be ( dexterity of player - 10 ) / 2;
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus] + [3 - scalevalue of player]: [dice + bonus + 3 - scalevalue of player] vs 16: ";
	if bonus + dice + 6 - scalevalue of player is greater than 15:
		say "     You manage to weave in one direction and then push off in the other, dodging another charge from the orca which would have knocked you roughly down the hole.  You have a quick moment to decide which direction you'd like to go.  [link]East (Y)[as]y[end link] to the other half of the upper level or to climb [link]back down (N)[as]n[end link] to the first level.";
		if the player consents:
			say "     You move quickly over to the wall and move through the archway into the other room.  The archway seems too large for the big orca toy, making you briefly wonder if it was deflated to bring in here.";
			move player to Slide Room;
		otherwise:
			say "     You move quickly to the hole and grab onto the netting to safely climb down before the orca can instead send you tumbling down there.";
			move player to Ball Pit Room;
	otherwise:
		say "     You try to dodge, but the unsure footing [if scalevalue of player > 3]and your large size make[otherwise]makes[end if] you an easy target and you're bumped back and sent tumbling down into the ball room.  You are left a little dizzy and confused from your tumble, but seem otherwise unharmed.";
		decrease humanity of player by 5;
		if humanity of player < 10:
			say "That last tumble knocks something loose in your already shaken mind and the last threads of your humanity snap.";
			end the game saying "Your brain (shaken, not stirred) gave into the infection.";
		otherwise:
			move player to Ball Pit Room;


Chapter 7 - Slide Room

to say bcslideroom:
	say "     The second half of the bouncy castle's upper level has the same bright, colourful walls on three sides.  The eastern wall and the ceiling are made with open mesh across parapets and towers like the previous room.  Unlike that one, there is a gap in the mesh wall to allow access to the blue waterslide down into the sea below.  There is a constant flow of water and even some sprinklers running on the way down despite the lack of any motor or pump you could hear anywhere in the castle to keep it inflated or to send water up here.  If you want to leave the castle and head back to shore, you can [link]take the slide[end link].  Alternatively, there's also the doorway to the [link]west[end link] to the parapets.";
	say "     Despite the bright colours and soft, rounded shapes of this place, you cannot help but be disturbed.  For while the bouncy castle looks fun and safe enough as a kiddy play area, it is the contents of this room which draw your eyes.  You came hoping to find the captured vixen in her inflatable dolphin prison, but instead find a dozen of the inflatable dolphin suits hanging along the walls.";
	say "     As you try to remain standing, the dolphins on the wall seem to shift about, perhaps from the feeble struggles of their occupants or from the simple swaying brought on by the waves.  You look over the inflated dolphin suits, trying to decide which to search first, as these are more opaque than the ones you've seen on the beach.  Since they're all inflated and full, you can't tell for certain which may hold the vixen you seek, or if they hold anyone at all.";
	say "     There are a dozen inflated dolphins like the one you saw the vixen being stuffed into.  You will have to start checking them if you want to find her.  (Type [link]check dolphin[as]dolchecklist[end link] followed by the number you'd like to check out.)[line break]";


Part 1 - Sliding

understand "take slide" and "take the slide" and "use slide" and "use the slide" as sliding.

sliding is an action applying to nothing.

check sliding:
	if location of player is not Slide Room:
		say "There is no slide here.";

carry out sliding:
	say "     You slide down the castle's waterslide, feeling a small rush of glee as you do so beyond just getting away from the strange set of dolphin suits.  Coming off the inflatable slide, you splash into the water and move to make your way back to shore.";
	increase morale of player by 1;
	move player to Public Beach;
	follow the turnpass rule;

instead of going east from Slide Room:
	try sliding;


Section 5 - Checking the Dolphin Suits

understand "dolchecklist" as dolchecklisting.
understand "dolphin list" as dolchecklisting.

dolchecklisting is an action applying to nothing.

check dolchecklisting:
	if location of player is not Slide Room, say "You don't see those here." instead;

carry out dolchecklisting:
	say "check dolphin:  [link][bracket]1[close bracket][as]check dolphin 1[end link] [link][bracket]2[close bracket][as]check dolphin 2[end link] [link][bracket]3[close bracket][as]check dolphin 3[end link] [link][bracket]4[close bracket][as]check dolphin 4[end link] [link][bracket]5[close bracket][as]check dolphin 5[end link] [link][bracket]6[close bracket][as]check dolphin 6[end link] [link][bracket]7[close bracket][as]check dolphin 7[end link] [link][bracket]8[close bracket][as]check dolphin 8[end link] [link][bracket]9[close bracket][as]check dolphin 9[end link] [link][bracket]10[close bracket][as]check dolphin 10[end link] [link][bracket]11[close bracket][as]check dolphin 11[end link] [link][bracket]12[close bracket][as]check dolphin 12[end link][line break]";


understand "check dolphin [number]" as dolchecking.

dolchecking is an action applying to one number.

check dolchecking:
	if location of player is not Slide Room, say "You don't see those here." instead;

carry out dolchecking:
	let x be the number understood;
	let status be "";
	if x > 12:
		say "There are only a dozen to search.";
	otherwise:
		let status be entry x of dolphinlist;
		if status is "A":
			say "[dolcheckA]";
		otherwise if status is "B":
			now entry x of dolphinlist is "A";
			say "[dolcheckB]";
		otherwise if status is "C":
			say "[dolcheckC]";
		otherwise if status is "D":
			now entry x of dolphinlist is "A";
			say "[dolcheckD]";
		otherwise if status is "E":
			say "[dolcheckE]";
		otherwise:
			say "Error - unknown variation.";
		increase dolcastleturn by 1;
		if remainder after dividing dolcastleturn by 3 is 0 and vixdol is not 3:
			now dolcastleturn is 0;
			follow the turnpass rule;		[three searches per turn]


to say dolcheckA:		[empty]
	[puts Bottlenose Toy as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bottlenose Toy":
			now monster is y;
			break;
	if dolcastlefight is not 2:		[empty suit]
		say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it.  You are able to find it readily and start opening it up.  As you do so, it starts to shift and move.  You are momentarily hopeful that it contains the struggling vixen, but you instead find it empty.  Moving under its own power, the inflated dolphin suit tries to envelop you.  Shall you resist?";
	otherwise:					[lost to released toy dolphin - D]
		say "     After having had its fun, the inflatable dolphin dives into the water to frolic and look for some new amusement.  Still a little fuzzy headed after the romp with the dolphin toy, you momentarily forget about the dolphin suit which once held your recent playmate.  It makes a grab for you and wraps itself partially over you before you have a chance to react.  Moving under its own power, the strange suit tries to envelop you within itself.  Shall you resist?";
		now dolcastlefight is 0;
	let dolescape be 0;
	if the player consents:
		let x be a random number between 1 and 2;
		if x is 1:
			say "     As the dolphin suit tries to pull itself overtop of you, you struggle and squirm, trying to pull yourself free.  It's gotten a good grip of your upper body";
			let playernum be a random number between 1 and dexterity of player;
			let dolphinnum be a random number between 1 and dex entry;
			if playernum >= dolphinnum:
				say ", but you manage to twist yourself free and grab the head as it tries to slide overtop of your own.  You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you.  You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			otherwise:
				say "and, try as you might, you can't manage to squirm free of its grip.  It loosely slides the head portion over your face.  You find you can partially see out of its eyes, giving you a distorted, green-tinted view of the castle interior.";
		otherwise if x is 2:
			say "     As the dolphin suit tries to pull itself overtop of you, you struggle by pushing back against its inner walls.  It's gotten a good grip on your upper body";
			let playernum be a random number between 1 and strength of player;
			let dolphinnum be a random number between 1 and str entry;
			if playernum >= dolphinnum:
				say ", but you manage to push back the padded surface, stretching the inner body of the animated suit enough to pull yourself from its grip.  You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you.  You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			otherwise:
				say ", but the inner surface is too slick for your hands to get a good grip to push.  Try as you might, you can't push back the inflated sides of the creature before it manages to slide the head portion over your face.  You find you can partially see out of its eyes, giving you a distorted, green-tinted view of the castle interior.";
		if dolescape is 0:
			attempttowait;
			say "     With you partially pulled into its inflatable body, the strange suit's material stretches itself over you as it works to enclose your [bodydesc of player] body.  It feels very good and quite arousing, squeezing and rubbing against you as it does.  It seems to stretch and adjust itself to be just the right shape and size to contain you";
			let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
			let playernum be a random number between 1 and playernum;
			let dolphinnum be a random number between 1 and ( 150 + lev entry );
			if playernum >= dolphinnum:
				say ".  You manage to block out the pleasure that comes from the rubbery material rubbing and sliding agaisnt you and remain focused.  Sliding your hands along the slick inner surface, you reach outward and grab both sides of the seal and start pulling it back open.  You get the opening wide enough to pull yourself from its grip.  You push it back off of you, forcing the air out of it until it starts to sag down, unable to continue holding you.  You pant from breath and toss it aside, looking over the others as you try and decide what to do next.";
				now dolescape is 1;
			otherwise:
				say ".  You can feel a slick lubricant coating its inside, letting it slide easily over your flesh.  Guiding itself over your legs, it presses your feet into the bottom tail section.  It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet.  Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin inflatable.";
				say "     As it starts sealing itself around you, you can feel the whole of this strange, inflatable suit swelling and pressing in around you.  Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you held inside.  You feel an increasing sense of euphoria as the inner lining [if cocks of player > 0 and cunts of player > 0]rubs against your throbbing cock and presses into your wet pussy[otherwise if cocks of player > 0]rubs against your maleness[otherwise if cunts of player > 0]presses into your wet pussy[otherwise]slides against your bare groin[end if] arousing you greatly[if cocks of player > 0 or cunts of player > 0].  You cum several times from the toy's motion against you as the rubbery walls slide over you";
	otherwise:
		say "     The strange suit starts pulling itself overtop of you, letting its slick inner surface slide across your [skinname of player] skin as it works to enclose your [bodydesc of player] body as best it can without assistance.  As the material is stretched over you, it feels very good and quite arousing, squeezing and rubbing against you as it does.  It seems to stretch and adjust itself to be just the right shape and size to contain you.  You can feel a slick lubricant coating its inside, letting it slide easily over your flesh.  Guiding itself over your legs, it presses your feet into the bottom tail section.  It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet.  Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin inflatable.";
		say "     As it starts sealing itself around you, you can feel the whole of this strange, inflatable suit swelling and pressing in around you.  Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you held inside.  You feel an increasing sense of euphoria as the inner lining [if cocks of player > 0 and cunts of player > 0]rubs against your throbbing cock and presses into your wet pussy[otherwise if cocks of player > 0]rubs against your maleness[otherwise if cunts of player > 0]presses into your wet pussy[otherwise]slides against your bare groin[end if] arousing you greatly[if cocks of player > 0 or cunts of player > 0].  You cum several times from the toy's motion against you as the rubbery walls slide over you";
	if dolphinbundle is not 2 and dolescape is 0:
		say ".  After several orgasms, the suit begins to open up again, releasing you back onto the floor of the bouncy castle.  You lay there panting for a while, aroused by the strange experience.";
		infect "Bottlenose Toy";
		increase libido of player by 8;
		decrease humanity of player by 5;
		increase dolphinbundle by 1;
		now dolcastleturn is 0;
		follow the turnpass rule;
	otherwise if dolphinbundle is 2 and dolescape is 0:
		say ".";
		attempttowait;
		say "     You moan and squirm within the dolphin suit, lost in the lust of the physical pleasure it's providing when you feel something touch the outside of the suit.  Looking through the green eyes, you can see one of the dolphin girls has come along and you can hear others playing in the water outside.  The hope that she's here to play with you pops into your mind.  Her fin-hands slide over the suit, opening it a little to adjust its position.  She even slides off the head to give you a kiss before helpfully fitting the breather on properly and sliding the head back overtop of you so you can see properly[if cocks of player > 0 or cunts of player > 0].  She rubs firmly over your groin as she zips you back up, making you cum again[end if].  Once you're well-fitted into the inflatable dolphin suit, you are delighted as she pulls you by the suit's handles into the water.  She and the other dolphin girls giggle happily, swimming and playing around you.  The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when the one who found you grabs the toy's handles and pulls herself out of the water to ride atop it.  The dolphin girl rides the toy for some time, stroking and hugging it's vinyl exterior, each motion sending another echo of pleasure through you.";
		say "     After playing in the water for a while, the girls decide to frolic in the bouncy castle and you're pulled back inside[if cocks of player > 0 or cunts of player > 0].  You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if].  With you safely aboard, the excited girls resume their giggling playtime with you as their new toy.  The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit.  With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through you mind you're soon able to focus on nothing but the excitement around you.  Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore.  With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
		now dolinfloss is -100;
		now non-infectious entry is true;			[prevents regular dolphin girl infection from occurring]
		now tailname of player is "Bottlenose Toy";
		now facename of player is "Bottlenose Toy";
		now skinname of player is "Bottlenose Toy";
		now bodyname of player is "Bottlenose Toy";
		now cockname of player is "Bottlenose Toy";
		now tail of player is "You have a buoyant, inflatable dolphin tail.";
		now face of player is "that of a cute, smiling dolphin";
		now skin of player is "smooth and green plastic, stretched and shaped with visible seams";
		now body of player is "shaped like an inflatable dolphin water toy.  You are roughly as large as a real dolphin and have a pair of handles for someone to ride you";
		now cock of player is "tapered and made of clear, inflatable plastic, but can still become full and hard for mating.  It leaks a clear, slick lubricant as precum";
		now scalevalue of player is 3;
		now bodydesc of player is "inflatable";
		now bodytype of player is "dolphin";
		now the daycycle of player is 0;
		now breasts of player is 2;
		now breast size of player is 0;
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		if libido of player < 60, now libido of player is 60;
		now humanity of player is 0;
		now battleground is "void";
		now combat abort is 1;
		attempttowait;
		end the game saying "Trapped in the inflatable dolphin suit, your mind slowly fades away until there are no thoughts left in your air-filled head but that of playing at the beach.";


to say dolcheckB:		[free victim]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it.  It takes a little time to find it, having partially melded itself shut, but you manage to start working it open.  As you begin to get it open, it starts to shift and move with the struggles of someone inside.  Your hopes are quickly dashed as a gray, flippered paw pushes free and the leopard seal inside starts to force its way to freedom.  Pulling the breathing piece from its mouth, the anthropomorphic seal gasps for fresh air.  'Ahhh!  Gimme out of here!'  The inflatable suit seems to struggle against its victim's escape attempt, but can't stop him (you realize as you spot his sheath) as you aid in his escape.";
	say "     As the seal gets out further, he starts squeezing on the inflatable dolphin, pushing the air out of it until it eventually sags to the colourful floor.  You are given a kiss and a grope by the seal.  'Thanks, hon,' he rumbles.  'I'd thank you properly, but I'm not sticking around here.  Mmm... too bad, too.  I think you'd make a lovely seal cow.  Oh well, plenty of others to find and breed,' he adds before leaping from the doorway into the water.  As you watch, he swims quickly out to sea, probably off to find an unprotected town to infect.  Uncertain how you feel about that, having saved him from the dolphin girls only to put others at risk of becoming seals.  Brushing your fingertips across your lips, remembering his kiss, you can't help but find the way his form cuts through the water sexy.  Certainly they'd be better off as seals than some of the other infections you've encountered.";
	increase score by 10;
	increase libido by 10;
	if libido of player > 100, now libido of player is 100;


to say dolcheckC:		[mostly tf victim]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it.  It takes a little time to find it, having partially melded itself shut, but you manage to start working it open.  As you begin to get it open, it starts to shift and move a little.  But as you open it up further, you find a mostly transformed victim inside.  They simply moan softly, not bothering to struggle against the strange suit encapsulating them.  The victim has a few traces of having once been [one of]a canine[or]a feline[or]a bovine[or]an equine[or]an avian[at random] creature.  The being inside is now mostly transformed into an inflatable dolphin creature, only giggling with a vapid, chirping trill and asking if you'd like to play.  You seal it back up since it's too far gone and hope you can find the vixen before it's too late.";


to say dolcheckD:		[complete tf - fight]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it.  At first, you struggle to find the seam, but then it pops into sharp relief.  But as you begin to open it, things start to go wrong.  The inflatable dolphin starts to move and open on its own, releasing its transformed victim upon you.  Whatever it was before, the victim has fully become an animated, inflatable dolphin toy.  '[one of]Ooo!  A playmate[or]Happy birthday to me[or]A new friend[or]I want to play[at random]!' the floating dolphin trills with a clicking laugh.  The balloon toy floats up into the air and moves to attack you while the now empty suit shuffles around, waiting for its opportunity to strike.";
	now dolcastlefight is 3;
	challenge "Bottlenose Toy";
	if dolcastlefight is 1:				[victory]
		say "     Despite the added difficulty of standing to fight on the wobbly castle floor, you've managed to beat the dolphin toy and toss it out of the castle.  With it swimming off to find some new amusement for itself, you turn your attention on the inflatable dolphin suit that created it.  Still partially deflated after performing its duty, it puts up a bit of a struggle, but you are able to squeeze it until fully deflated.";
	otherwise if dolcastlefight is 2:		[lose]
		say "[dolcheckA]";
	otherwise:						[flee]
		say "     Taking your only option for escape from the fight, you dive down the slide into the water and start swimming for it[if boatfound is 3].  You swim as quickly as you can to your boat.  The dolphin toy, thinking this is all part of some game or race, swims along with you, bumping her nose against you and nuzzling your groin.  You manage to stay focused despite this distraction and make it to the boat, pull up your anchor and sail off, much to the playful creature's momentary disappointment before the thought leaves its airy mind and it splashes off for fun elsewhere.  You pull back to shore to take a break before possibly returning, hoping the dolphin will have left the waters around the castle by then[otherwise if boatfound is 2].  You swim the short distance to your rowboat and detach your line.  You begin the hard row back to shore while the playful dolphin swims and dives around and even over your boat.  As you're approaching the shore, its airy mind thankfully gets distracted and it splashes off for fun elsewhere.  You continue to shore and pull your boat aground to take a break to recover your strength after your rush to shore before possibly returning[otherwise].  You swim as quickly as you can back to shore, but it is a long trip with the dolphin toy harassing you the whole time.  Thinking this is all part of some game or race, swims along with you, bumping her nose against you and nuzzling your groin.  You manage to stay focused with some effort despite the distraction and eventually make it back to shore.  The playful creature follows you all the way back, only getting distracted and splashing off for fun elsewhere as you're approaching the beach.  Tired after the long swim, you pull yourself onto the sandy shore and have to take a break before possibly returning[end if].";
		if boatfound is not 3:
			let dam be 15 - ( strength of player / 2 ) - (stamina of player / 2 );
			if dam < 0, now dam is 0;
			decrease hp of player by dam;
			if boatfound is not 2:
				increase libido of player by 10;
		move player to Public Beach;
		follow the turnpass rule;


to say dolcheckE:		[vixen]
	say "     With some effort, you make your way over to one of the large dolphin inflatables and start looking for the seam to open it.  It takes a little time to find it, having partially melded itself shut, but you manage to start working it open.  As you begin to get it open, it starts to shift and move with the struggles of someone inside.  When you get it open, you're pleased to see the orange fur of the vixen you seek.  Her fur has become a smooth, latex skin, but you continue on in the hope that it's not already too late.  As you get her head free and pull the breathing tube from her muzzle, her struggles grow all the more fervent.";
	say "     'Mmm... Can we play now?  No!  Ah!  Get me out of this silly thing!' she yips with a definite squeak to her voice.  You inform her that you're trying to free her, but that you want something in return.  'Oh!  That'd be fun!' she giggles.  'This thing's been teasing me for so long, I could certainly go for the real thing,' she adds with a moan.  After elaborating that you're actually after her stash of supplies, she nods and manages to focus enough to be more serious.  'No prob.  We'll split it if you can get me out of this mess,' she says eagerly, still fighting against the suit which seems very reluctant to release her.  With the both of you working at it, she's able to keep the suit from resealing her while you struggle to deflate it to the point it can no longer strive to hold her.";
	attempttowait;
	let x be 0;
	if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned, let x be 1;	[blade]
	say "     She hugs you tight and giggles merrily at her freedom.  She dives happily down the slide with a giggling 'Wheeeee!' and into the water.  Her new form takes to it readily as she happily floats across the waves.  You grab your stuff and head down after her splashing into the water as she frolics about.  She swims alongside you as you head to the lines securing the bouncy castle and [if x is 0]release[otherwise]cut[end if] them.  The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current.  You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[otherwise]start the long swim back to shore[end if] with the sleek vixen.  Once on the beach, you both stare out over the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea.  Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
	say "     During your trip back, you've come the realize that the vixen's still been considerably affected by her time in the dolphin suit.  While the impression you got from her old notes was different, she's certainly quite the airhead now.  She giggles and cavorts playfully, focusing on little past her own amusement from moment to moment.  Still worried about your reward, you keep talking to her, trying to keep her focused.  And while she won't divulge the location to you, you do thankfully get the impression she may still know where the stuff is hidden.";
	attempttowait;
	say "     It takes some prodding from you to keep her on track, but she leads you through the coastal neighbourhood.  She goes on about her new body, how sexy she's been finding this whole [']crazy-animal-sex-thingy['], and how much she's looking forward to just running around and having some fun instead of being such a stick-in-the-mud about it like she was before.  From the meandering path she takes, you worry that she has no idea where she's going, but she eventually leads you to an old house.  'See!  I knew I'd find my way back eventually.  This is my parent's old place, but they're not around, so I stashed my stuff under the porch so no one would find it.  Can you be a dear and get it out?  I don't want to tear my new, shiny skin,' she asks, running her paws over it with a happy giggle.";
	say "     It takes some squirming, but you manage to snag the pack of bottled water and, with the vixen's help, pull it and yourself free from under the porch.  She dances happily and gives you a kiss, splitting the pack with you.  Even split between the two of you, your water supplies have been considerably improved.  You ask if there's any food, but she shakes her head and grins.  'Nope.  I think I was out looking for some when I ran into those cute dolphin girls.  Mmm... I should see if I can find one of them again.  Just one this time, though.  As fun as that suit was, I do like being a sexy vixen,' she says, giving her tail a swish.  'Well, time for me to head off, sweety.  Thanks for the rescue,' she says, giving your ass a squeeze before dashing off with a girlish giggle.";
	increase carried of water bottle by 3;
	increase score by 50;
	now Bouncy Castle is unknown;
	now vixdol is 3;
	move player to Public Beach;
	follow the turnpass rule;


Instead of exploring while player is in Bouncy Castle:
	say "There is nowhere to explore out here.";

Instead of exploring while player is in Bouncy Castle:
	say "There is nowhere to scavenge out here.";

an everyturn rule:
	if vixdol is 2 and the player is in Slide Room:
		now dolcastleturn is 0;
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     You hear some noise coming from one of the suspended dolphins.  Following the moans, you struggle to open it up.  Inside you discover the vixen you were seeking, writhing in the throws of a rather powerful orgasm.  She's already become an inflatable and her arms seem to be fusing to her sides.  You quickly pull off the mouthpiece, but her eyes have gone vacant and she simply moans and trills happily as you try and ask her about her cache of supplies.  With her mind gone and her body well on its way to becoming just another inflatable dolphin toy, you grumble and seal her back up.";
			if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned:
				say "     Frustrated with the time you've wasted on this project, you leap back into the water and swim to the mooring lines securing the castle and cut through them.  The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current.  You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[otherwise]start the long swim back to shore[end if].  Once on the beach, you stare out of the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea.  Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
			otherwise:
				say "     Frustrated with the time you've wasted on this project, you leap back into the water and swim to the mooring lines securing the castle and untie them.  The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current.  You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[otherwise]start the long swim back to shore[end if].  Once on the beach, you stare out of the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea.  Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
			move player to Beach Plaza;
			now Bouncy Castle is unknown;
			now vixdol is 99;
			decrease score by 10;
	otherwise if vixdol is 2 and ( the player is in Bouncy Castle or the player is in Fencing Room or the player is in Bouncing Play Room or the player is in Ball Pit Room or the player is in Toy Room or the player is in Parapets ):
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     As you pause for a moment to catch your breath, you hear loud, muffled cries of ecstacy coming from somewhere on the upper level of the castle.  Given the mix of yiffs and trills to the sound and how they finish by becoming purely trills of delight, you sadly have to assume that that was the vixen girl finally giving in to whatever is happening to her.  Deciding there's little point in remaining here any longer, you push your way back to the entrance.";
			if pocketknife is owned or combat knife is owned or bonesaw is owned or infected sword is owned or cleaver is owned:
				say "     Frustrated with the time you've wasted on this project, you leap back into the water and swim to the mooring lines securing the castle and cut through them.  The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current.  You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[otherwise]start the long swim back to shore[end if].  Once on the beach, you stare out of the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea.  Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
			otherwise:
				say "     Frustrated with the time you've wasted on this project, you leap back into the water and swim to the mooring lines securing the castle and untie them.  The giant inflatable starts to drift away from shore, floating out to sea as the tide goes out and it's taken by the current.  You [if boatfound is 3 or boatfound is 2]climb back into your boat and head back to shore[otherwise]start the long swim back to shore[end if].  Once on the beach, you stare out of the water, feeling smug satisfaction as you watch the bouncy castle drift further and further out to sea.  Someone else will have to deal with it, but at least you've gotten rid of a bunch of those strange dolphin-making suits.";
			move player to Beach Plaza;
			now Bouncy Castle is unknown;
			now vixdol is 99;
			decrease score by 10;
	otherwise if vixdol is 1 or vixdol is 2:
		decrease vixcountdown by 1;
		if vixcountdown <= 0:
			say "     Your thoughts stray back to the vixen and dolphin girls you saw on the beach.  It's been several days, so it's probably too late to help her now.";
			decrease score by 10;
			now vixdol is 100;


[
Section X - Debug - Not for release

dolphincastletesting is an action applying to nothing.
understand "dolcastletest" as dolphincastletesting.

carry out dolphincastletesting:
	try resolving Snared Vixen;
	wait for any key;
	move player to Bouncy Castle;
]

Bouncy Castle ends here.