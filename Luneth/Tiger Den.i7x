Version 1 of Tiger Den by Luneth begins here.
[Version 1.0 - reworked entire location and added effects - Luneth]
[Version 1.1 - rewrote and expanded TigerVsTaur scene - Luneth]
[ Original concept by Sarokcat]

"Adds a tiger den to Flexible Survival with a few anthro tigers, and some small quests vs the tigertaurs..."

Book 1 - Default Tiger Den Environment [Regular Chase Route]
[The effects of change for the tiger's den under the default route will be more about balancing out lust and community. These changes will often be seen as practical and survival based.]

Chapter 1 - Tiger's Den Entrance [TDen_Entrance]
[This should be the only current way to enter the tiger den and should be the fast travel point, but should not be sleepsafe since its basically the gates to the area. I would also like to show a progression here with helping Chase, basically helping him is also making the place more fortified.]
[The entrance will need to have the huge gate that separates the underground part of the zoo from the above ground part. This area will not be sleep safe and will be the fast travel point. A one in three chance will always go into effect when you fast travel to the gate whether or not a tigertaur will attempt to break in leading to a fight(this may end up changed later on in the content depending on how things go with the tigertaurs). Tigertaur players will not also not be allowed through the gate.]

Table of GameRoomIDs (continued)
Object	Name
TDen_Entrance	"TDen_Entrance"

TDen_Entrance is a room. It is fasttravel. TDen_Entrance is not sleepsafe. It is private.
understand "Tiger's Den" as TDen_Entrance.
understand "Tiger's Den Entrance" as TDen_Entrance.
RoomID of TDen_Entrance is "TDen_Entrance".
Printed Name of TDen_Entrance is "Tiger's Den Entrance".
the scent of TDen_Entrance is "The scent coming through from the gate in front of you smells strongly of tigers.".
Description of TDen_Entrance is "[TDen_Entrance desc]".
[TODO]
[This should be the only fast travel point in the tigers den]
[You should not be able to sleep here, or if you do should be a guaranteed fight with a tigertaur]
[Every time you fast travel here you should have a 1 in 4 chance to get in a fight with a tigertaur that is trying to break in]
[Tigertaur players should not be allowed in no matter what, and I will either add a bad end or a way to rush players out if they attempt to become one in the den]
[Players will need proof of who they are to gain entrance, more than likely something simple like a bracelet item or something]


to say TDen_Entrance desc:
	say "     After following the dark passage from the surface, you finally manage to find your way to the thick gate that separates the Tiger's Den from the rest of the zoo. The only guiding light in the tunnel coming from lit torches on either side of the huge fence, casting ominous shadows all around you. Taking a closer look at the metal, you can tell that the gates are made of heavy iron and are already showing signs of rust beginning to form. You're also able to make out a shadow just on the other side of the gate.";
	say "     Heading north will lead you right up to the gate and then into the main area of the Tiger's Den.";

Section 1 - Events
[This will cover the events of this location.]

Part 1 - Attempting to enter the Tiger's Den event
[This should be a quick simple event that will showcase whether the player is able to enter the Tiger's Den. It should trigger when you attempt to enter the first floor main area from the entrance.]
[I would also eventually like to create more variations that will deal with Kano's and other characters corruption levels.]
[after going to First Floor Main Area:
	say "     Reaching your hand out to touch the surface of the gate, the chains that are wrapped around the other side rattle a bit. Looking past the metal you can see the shadow stalking forward. Once within the light of the torches, the incredibly massive form of Kano can seen clearly along with his equally massive axe, the tigerman looks you up and down before finally speaking.";
		if player is a tigertaur and has not earned the trust of the den:
			say "     'Get lost beast, we don't allow your kind within these walls.' You attempt to explain to Kano who you are, but the beastman doesn't seem to really care, 'I don't care who you [']used['] to be, right now you're wearing the same form as the enemy of the den and that's more than enough for me, so lets try one more time, Get... The... Fuck... Out!' The now hostile looking tigerman is scary enough, but the way his axe is currently spinning around his paw is even worse, causing you to take a few steps back from the gate. Looks like he won't allow you to enter the Tiger's Den as long as you're wrapped in this tigertaur shape, but perhaps his opinion could be changed if you showed the streak that you're truly an ally to them.";
		else if player doesn't have entrance bangle and has not earned the trust of the den:
			say "     'Sorry kid, but we can't be to careful, I'm gonna have to ask ya to leave.' You attempt to explain to Kano that you have already been inside the Tiger's Den, they even gave you that bangle to show that you're a friend of the streak. 'Alright, well if they gave you one, then let's see it.' You're mouth opens and shuts a few times before you finally tell him that you don't have it on your person at the moment, 'Well if you want in, then I would advise you to remember where you left that armband and then come back.' The tigerman doesn't exactly look mad, but you can definitely tell he's getting annoyed at this point. Deciding that arguing with the guy would get you absolutely nowhere, you try and remember where you stuck that bangle.";
		else if player does have entrance bangle and has not earned the trust of the den:
			say "     'You know the deal, let's see the goods.' You are tempted to crack a dirty joke, but Kano would prolly have a bit of comedy of his own for you as well, a [']I don't care about that bangle anymore, you aren't coming in['] shaped joke. Raising your arm up, the lights from the torches cause the material of the armband to glitter in the darkness. 'Alright looks good, let me get the gate open for ya' Kano unravels the huge chains as if they were nothing and finally opens the gate and without another word he ushers you inside.";
			move player to First Floor Main Area;
		else if player has earned the trust of the den: [At this point the bangle and your shape won't matter anymore in terms of entering]
			if player is tigertaur:
				say "     'Hey[if Player is not defaultnamed] [name of Player][end if].' Before you can even consider the form that you're in, Kano is already unchaining and opening the gate. 'You've proven yourself to the streak enough as is... while we may not like the form you've chosen, that's besides the point. I mean let's be honest, at this rate your name and actions are common knowledge around here and that comes with its own perks, like not needin['] avoid certain infections.' With a smile on your face, you thank Kano for his words. While he doesn't say anything further, he does attempt to give you a small smile... which to be honest looks more like a grimace, but you decide to cut the normally stone faced tigerman a break and not comment on that little fact. With a bit of pep in your step, you finally enter past the gate and into the main area of the Tiger Den.";
			else:
				say "     'Hey[if Player is not defaultnamed] [name of Player][end if].' Before you can even consider the entrance bangle, Kano is already unchaining and opening the gate. 'You've proven yourself to the streak enough as is... that gaudy lil['] trinket doesn't really matter anymore. I mean let's be honest, at this point your name and actions are common knowledge around here and that comes with its own perks, like not needin['] to show anythin['] to get inside.' With a smile on your face, you thank Kano for his words. While he doesn't say anything further, he does attempt to give you a small smile... which to be honest looks more like a grimace, but you decide to cut the normally stone faced tigerman a break and not comment on that little fact. With a bit of pep in your step, you finally enter past the gate and into the main area of the Tiger Den.";
		else if player is the leader of the den: [TODO: At this point the bangle and your shape won't matter anymore in terms of entering]
			say "     ...";
		else if player is the leader of the dens mate: [TODO: At this point the bangle and your shape won't matter anymore in terms of entering]
			say "     ...";]

Section 2 - Features
[This will cover special features of this location.]

Part 1 - Random battle scene
[A quick scene that has a 1/4 chance to trigger where a tigertaur will attempt to break into the Tiger's Den, but is more than willing to go through you. This will have the chance to trigger whenever you fast travel to the entrance, but may be a removed feature later depending on how you deal with the tigertaurs.]
[I would also like add in a part for Kano to help the player battle if the tigertaur is his son, this won't replace the current pet but would need flavor text as well as some damage done each turn.]
[I would also like to create a variation ending to the scene based on if you simply beat the tigertaur or if you fuck it.]
[I would also eventually like to create more variations that will deal with Kano's and other characters corruption levels.]
[after fast travelling to the Tiger's Den Entrance with a 1/4 chance of triggering:]
	[if Kano's son:
		say "     ...";
	else:
		say "     As you make your way through the dark tunnel towards the gate that leads to the Tiger's Den, you feel the ground begin to shudder a bit under foot. The sound of heavy footsteps hitting the ground soon follows, quickly you turn back to the entrance, a lightning fast shadow can be seen moving from within the darkness. Before you can really ready yourself for a confrontation, a tigertaur leaps into the lights of the torches, with a loud roar it's clear that the large beast is intent on battle. From the other side of the gate you hear, 'Show that stupid cumdump [if player is male]what a real man can do [else]who the top bitch in the room is [end if]and kick that pussies ass kid!'";
		battle tigertaur;
		say "     Having finally bested the predator and causing it to retreat, you slowly begin to catch your breath. From behind you Kano speaks up, 'Hey not bad kid, with moves like that should be able to really help out around here, well if you got the stuff to get inside that is.' Turning back towards the gate you can see that the large tigerman waiting for you to show him the bangle that will gain you entrance to the Tiger Den.";]

Chapter 2 - First Floor Main Area [TDen_FFMainArea]
[What we now see as the tigers den will be the new first floor main area. The main pat of the room will be made up of the tigers laying on cots with some supplies and a staircase leading upstairs to where the zoo vets had their offices. The new aspect I want to add here is the upgrade system, this will allow players to offer up certain items to the community. This will also lead to the cots possibly becoming beds, the fabric separating their room becoming something a bit more private and so on.]

Table of GameRoomIDs (continued)
Object	Name
TDen_FFMainArea	"TDen_FFMainArea"
TDen_FFMainArea	"Tiger Den"

TDen_FFMainArea is a room. It is private.
RoomID of TDen_FFMainArea is "TDen_FFMainArea".
Printed Name of TDen_FFMainArea is "First Floor Main Area".
the scent of TDen_FFMainArea is "The enclosed basement hideout smells strongly of tigers.".
Description of TDen_FFMainArea is "[TDen_FFMainArea desc]".

to say TDen_FFMainArea desc:
	say "     The first floor of the Tiger's Den seems to be used as a communal bedroom by the survivors that have managed to take refuge here. This large concrete basement bears a slight resemblance to your own emergency bunker back at the library, and while it seems to be not quite as well hidden, its size certainly seems to make up for it. Parts of the huge room are however sectioned off by crates of what you can only assume are supplies. All around the room you can see anthro tigers doing what they can to make the best of the situation that they're in, sadly most look either scared or at worst a bit on the broken side. It looks like they have barricaded the defensible entry way with scavenged furniture and items, and with the traps they have placed in the empty maintenance tunnels, it seems like they should be safe from most of the infected as long as they can stay here, although several of the tigers do eye you warily as you move around the den, just in case you decide to do something stupid and cause trouble.";
	say "     Heading south will take you to the entrance.";
	say "     Heading east will take you to the restroom.";
	say "     Heading west will take you to the locker room.";
	say "     Heading northeast will take you to the clinic.";
	say "     Heading northwest will take you to the supply closet.";
	say "     Heading north will take you into the garage.";
	say "     Heading up will take you to the second floor.";

TDen_FFMainArea is north of TDen_Entrance.
TDen_Bathroom is east of TDen_FFMainArea.
TDen_LockerRoom is west of TDen_FFMainArea.
TDen_Clinic is northeast of TDen_FFMainArea.
TDen_SupplyCloset is northwest of TDen_FFMainArea.
TDen_Garage is north of TDen_FFMainArea.
TDen_SFMainArea is above TDen_FFMainArea.

Section 1 - Events

Section 2 - Features
[I think I will attempt to create a new type of object/npc that the player can click on to see random events rather than use walk in events for everything since that can get quite annoying when you just don't wanna see them.]
[TODO:For if Wahn works on this with me.]
[When you enter the location Chase will be listed in the objects of the room and this object will be listed next to him]
[when you click on it a pop up will appear and ask if the player wants to inspect what's going on in the area]
[if you click yes then it will choose random events with a timer put on each in terms like "oh this event just fired? ok well it can't fire again for another 20 turns" or whatnot]
[I will prolly also spread this feature to other locations as well and break it down between sex and story events]
[story events would be something like the player just watching as for example chase gets his ear talked off by a tiger that really likes him and being able to see how he handles the situation for characterization]
[sex events would be something like going into the locker room and finding someone fucking either a main NPC or just some of the random tigers]
[the reason to split it up is some people just don't want certain scenes either sex or story this way they can look for what they are into]


Chapter 3 - Locker Room [TDen_LockerRoom]
[The main reason for the locker room is that it is the one "private" place for them to store their belongings. Most of the items that are kept inside the lockers are things pertaining to their past lives or other things that they hold dear, the player will have a chance to find out what is in these lockers, but depending on how you find out the other people may not be pleased. Since the room is not often used it is also the perfect place to talk discreetly.]

Table of GameRoomIDs (continued)
Object	Name
TDen_LockerRoom	"TDen_LockerRoom"

TDen_LockerRoom is a room. Description of TDen_LockerRoom is "[TDen_LockerRoom desc]".
RoomID of TDen_LockerRoom is "TDen_LockerRoom".
Printed Name of TDen_LockerRoom is "Locker Room".

to say TDen_LockerRoom desc:
	say "     The locker room has a pretty standard appearance to it. Looking around the area, you can see six rows of compartments. Stepping down one aisle, you can see that each row has ten full length lockers. The entire room only has a single one of its many ceiling lights working, the random flickering of the bulb casting unnerving shadows around the room. Oddly enough, in the back you can also make out a washer and dryer, but their current state lets you know that at the very least neither have been used recently.";
	say "     Heading west will take you to the main area.";
	say "     Heading east will take you to the showers.";

TDen_LockerRoom is west of TDen_Showers.

Section 1 - Events

Section 2 - Features

Chapter 4 - Bathroom [TDen_Bathroom]
[This area is really simple, I basically just wanted a room that could do two things, one serve as a place for the watersport content, and two also offer the possibility for glory hole content.]

Table of GameRoomIDs (continued)
Object	Name
TDen_Bathroom	"TDen_Bathroom"
TDen_Bathroom	"Washroom"

TDen_Bathroom is a room. Description of TDen_Bathroom is "[TDen_Bathroom desc]".
RoomID of TDen_Bathroom is "TDen_Bathroom".
Printed Name of TDen_Bathroom is "Bathroom".

to say TDen_Bathroom desc:
	say "     Just a simple employee bathroom. Inspecting the room you can make out the usual things you would expect of a washroom. Three destroyed toilet stalls line one side of the room, while on the opposite side a huge mirror takes up most of the upper wall. Underneath the large mirror are a pair of sinks for washing your hands. Straight back from the entrance of the washroom however is a much larger stall with its door slightly ajar, it must have been at one time the handicap stall, looking further you can see a hole in one of the sides, could it be a... glory hole. The room smells disgusting, mixed with how unhygienic it must be you can't help but want to run out of here as fast as you can.";
	say "     Heading west will take you back into the main area.";

[say "     Just a simple employee bathroom. Inspecting the room you can make out the usual things you would expect of a washroom. Three [repaired bathroom]toilet stalls[else]destroyed toilet stalls[end if] line one side of the room, while on the opposite side a huge mirror takes up most of the upper wall. Underneath the large mirror are a pair of sinks for washing your hands. [repaired bathroom and water returned to tigers den]Straight back from the entrance of the washroom however is a much larger stall with its door slightly ajar, it must have been at one time the handicap stall, looking further you can see a hole in one of the sides, could it be a... glory hole.[else bathroom is repaired but water is not on]The room smells disgusting, mixed with how unhygienic it must be you can't help but want to run out of here as fast as you can.[end]";]

Section 1 - Events

Section 2 - Features

Chapter 5 - Showers [TDen_Showers]
[Another easy area that I wanted to serve as a place to spy on some of the characters bathing. This can mean just bathing or masturbating, or even sexy shower fun with the player.]

Table of GameRoomIDs (continued)
Object	Name
TDen_Showers	"TDen_Showers"

TDen_Showers is a room. Description of TDen_Showers is "[TDen_Showers desc]".
RoomID of TDen_Showers is "TDen_Showers".
Printed Name of TDen_Showers is "Showers".

to say TDen_Showers desc:
	say "     A decent sized shower room that more than likely was used for when people were on their way home from work, but didn't want to leave while covered in the grime of the day. Inspecting the room you can see that the floors as well as the walls are both covered in whitish-blue tiles and all around the room are ten showerheads for bathing. The room reeks of stale water with a hint of mildew, to be honest you are a little shocked that the room hasn't been blocked off due to the unhygienic atmosphere of the showers.";
	say "     Heading east will take you to the locker room.";

[A decent sized shower room that more than likely was used for when people were on their way home from work, but didn't want to leave while covered in the grime of the day. Inspecting the room you can see that the floors as well as the walls are both covered in whitish-blue tiles and all around the room are ten showerheads for bathing. [got the water working for the tigers den]The whole room has a clean feeling to it now that the water is working, not to mention that you can feel your body covered in moisture just by entering the room[else]The room reeks of stale water with a hint of mildew, to be honest you are a little shocked that the room hasn't been blocked off due to the unhygienic atmosphere of the showers[end if].]

Section 1 - Events

Section 2 - Features

Chapter 6 - Supply Closet [TDen_SupplyCloset]
[This will be the location that the player will be able to deliver supplies to the Tiger's Den.]

Table of GameRoomIDs (continued)
Object	Name
TDen_SupplyCloset	"TDen_SupplyCloset"

TDen_SupplyCloset is a room. Description of TDen_SupplyCloset is "[TDen_SupplyCloset desc]".
RoomID of TDen_SupplyCloset is "TDen_SupplyCloset".
Printed Name of TDen_SupplyCloset is "Supply Closet".

to say TDen_SupplyCloset desc:
	say "     The decent sized room has crates along each of its walls, more than likely filled with supplies. One crate however stands by itself in the center of the room with the words 'Donations Welcome!' painted on a sheet of paper that has been taped onto the box. Other than that, the room is by far pretty unimpressive.";
	say "     Heading southeast will take you to the main area.";

Section 1 - Events

Section 2 - Features

Chapter 7 - Clinic [TDen_Clinic]
[This area will be mostly for Kimani, but it will also have some events to help showcase some of the other inhabitants medical needs.]

Table of GameRoomIDs (continued)
Object	Name
TDen_Clinic	"TDen_Clinic"

TDen_Clinic is a room. Description of TDen_Clinic is "[TDen_Clinic desc]".
RoomID of TDen_Clinic is "TDen_Clinic".
Printed Name of TDen_Clinic is "Clinic".

to say TDen_Clinic desc:
	say "     What was once an examination room for the zoo, has now been converted into a makeshift clinic. There are vials of chemicals along the walls and the counterspace is covered in different medical equipment, the only area free of clutter is the examination table for potential patients. There is also what looks to be a fridge or freezer in one corner more than likely used to keep samples fresh.";
	say "     Heading southwest will take you to the main area.";

Section 1 - Events

Section 2 - Features

Chapter 8 - Garage [TDen_Garage]
[This area will be for the most part pretty vacant, well at least until you're able to capture your very own tigertaur.]

Table of GameRoomIDs (continued)
Object	Name
TDen_Garage	"TDen_Garage"

TDen_Garage is a room. Description of TDen_Garage is "[TDen_Garage desc]".
RoomID of TDen_Garage is "TDen_Garage".
Printed Name of TDen_Garage is "Garage".

to say TDen_Garage desc:
	say "     While the garage is actually a pretty decent size, there is only a single run down jeep that by the looks of it has been scrapped for most of its parts. A few spare tires are off to the right hand side of the room and the smell of gasoline is still thick in the air. Glancing around at just how much open space is here you can't help but start thinking of how this area could be used in the future...";
	say "     Heading south will take you to the main area.";

Section 1 - Events

Section 2 - Features

Chapter 9 - Second Floor Main Area [TDen_SFMainArea]
[The second floor main area will be how you access the other characters bedrooms, but it will also serve as a meeting area for the heads of the den to discuss what they should do next going forward.]

Table of GameRoomIDs (continued)
Object	Name
TDen_SFMainArea	"TDen_SFMainArea"

TDen_SFMainArea is a room. Description of TDen_SFMainArea is "[TDen_SFMainArea desc]".
RoomID of TDen_SFMainArea is "TDen_Garage".
Printed Name of TDen_SFMainArea is "Second Floor".

to say TDen_SFMainArea desc:
	say "     Stepping off the landing of the stairs, you give a cursory glance around the area. The only things of actual note are a cluttered table and a whiteboard against one of the walls. Looking first at the table, it is covered with a large guest style map of the zoo, with small animal toys spread across it, almost as if each one has a meaning for its placement. Turning your head to the side to check the whiteboard instead, you can see some familiar names along with a form of listing arrangement... could this be some sort of voting system? There are also two hallways in the back that you can only assume lead to zoo staff offices.";
	say "     Heading down will take you to the first floor.";

Section 1 - Events

Section 2 - Features

Chapter 10 - Chase's Bedroom [TDen_ChaseBedroom]

Section 1 - Events

Section 2 - Features

Chapter 11 - Taiga's Bedroom [TDen_TaigaBedroom]

Section 1 - Events

Section 2 - Features

Chapter 12 - Kimani's Bedroom [TDen_KimaniBedroom]

Section 1 - Events

Section 2 - Features

Chapter 13 - Kano's Bedroom [TDen_KanoBedroom]

Section 1 - Events

Section 2 - Features

Chapter 14 - Ginger's Vent [TDen_GingerVent]

Section 1 - Events

Section 2 - Features

Chapter 15 - Twin's Bedroom [TDen_TwinsBedroom]

Section 1 - Events

Section 2 - Features

Book 2 - Monogamous Tiger Den Environment [Monogamous Dom/Sub Chase Route]
[The effects of change for the tiger's den under the monogamous route will be more about building a family. These changes will often be seen as sweet and heartwarming. This will also be the only version of the tiger's den that will have the slower aging effect of offspring. The dom chase parts will be much more linear, since he is in charge of the den itself, while the sub chase route will present a decent amount of options the player can choose as the leader of the den.]

Book 3 - Primal Tiger Den Environment [Primal Dom/Sub Chase Route]
[The effects of change for the tiger's den under the primal route will be more about lust and sexual servitude. These changes will often be seen as intense and oppressive. This will also be the only version of the tiger's den that will have the potential loss of companions permanently. The dom chase parts will be much more linear, since he is in charge of the den itself, while the sub chase route will present a decent amount of options the player can choose as the leader of the den.]

Book 4 - Tiger Den Acquisition Event
[this needs to be altered to include the new characters as well as new choice points and companion reactions]
[the tigertaur sex option should be removed or if that option is chosen chase should just leave you]
[I will have to see if this event can be tied into the introduction of the tigertaur enemy and give a special exception to whatever that scientists name is that has a tigertaur battle since that battle doesn't even take place anywhere near the zoo]

Chapter 1 - TigerVSTaur
[TODO: TigerVSTaur]
[This needs the gender locks removed since this is meant to be a non sexual scene, the transformation moment for the bad choices are there but the players choice removes accountability]
[TODO: this event needs to introduce the tigertaur as a regular enemy]

Table of GameEventIDs (continued)
Object	Name
TigerVSTaur	"TigerVSTaur"

TigerVSTaur is a situation.
ResolveFunction of TigerVSTaur is "[ResolveEvent TigerVSTaur]". The level of TigerVSTaur is 9.
Sarea of TigerVSTaur is "Zoo".

Section 1 - Event

to say ResolveEvent TigerVSTaur:
	if ScaleValue of Player > 3:
		say "     Looking at some of the seriously overgrown paths of the zoo ahead of you, it looks like that would be a bit of a hard fit for someone of your size. Maybe you'll want to come back if you get a bit smaller...";
	else:
		say "     Traveling down one of the zoo pathways, you hear a thunderous roar coming from somewhere nearby, followed by what sounds like a pretty heavy impact. After a few seconds the only sound that can be heard is some light growling. Cautiously, you peek through the greenery and your eyes fall on two apex predators that are slowly circling each other. While both have the appearance of their infection being based on tigers, that's were the similarities end. One of the combatants seems like a simple male anthro tiger in a pair of green basketball shorts... your mind reels for a moment at the thought of a living beastman being [']normal['] now. Looking over at the other however is a completely different story, as the herm creature looks more like a hybrid between a tiger and some sort of centaur. What catches you off-guard about the taur is that from your line of sight, you can clearly see some sort of... chastity belt or at least something very similar around the creatures female sex.";
		say "     The anthro tiger is definitely on the losing side of this fight and his back is literally up against a wall. The tigertaur however seems amused by the beastman's predicament and appears to be toying with its prey. Stepping forward to get a better look, a twig snaps under your foot, alerting both of the felines to your presence. Time seems to stop for a moment as the three of you stare at each other. The anthro tiger is the first to react, 'Run and get out of here!' Faster than your eyes can follow, the tiger's claws slice into the tigertaur's side, causing a loud roar to erupt from within the injured hybrid's throat. It looks like the anthro tiger's going to try and fight a losing battle to give you the chance to escape...";
		LineBreak;
		say "     [bold type]What should you do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Join the anthro tiger in attempting to fight off the tigertaur!";
		say "     [link](2)[as]2[end link] - Turn the tables and side with the tigertaur against the anthro tiger!";
		say "     [link](3)[as]3[end link] - Sit back and watch to see what happens.";
		say "     [link](4)[as]4[end link] - Run as fast as you can to escape.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to fight the tigertaur, [link]2[end link] to fight the tiger or [link]3[end link] to watch, or [link]4[end link] to run.";
		if calcnumber is 1: [help chase]
			Linebreak;
			say "[TigerVSTaur_Helped_Chase]";
			now HP of Chase is 1;
			now PlayerMet of Chase is true;
			move player to TDen_FFMainArea;
			AddNavPoint TDen_Entrance;
			now Resolution of TigerVSTaur is 1;
		else if calcnumber is 2: [help Kage]
			LineBreak;
			say "[TigerVSTaur_Helped_Kage]";
			now Resolution of TigerVSTaur is 2;
		else if calcnumber is 3: [watch]
			Linebreak;
			say "[TigerVSTaur_Watched]";
			now Resolution of TigerVSTaur is 99;
		else if calcnumber is 4: [run]
			Linebreak;
			say "[TigerVSTaur_Ran]";
			now Resolution of TigerVSTaur is 99;
		now TigerVSTaur is resolved;

Section 2 - Event Choices

to say TigerVSTaur_Helped_Chase:
	say "     Rather than using this opportunity to run, you instead rush forward, your conscience demanding that you help the tiger. You make a beeline for the large taur, and thankfully for you the creature is still completely focused on the much smaller predator in front of it. Once you are close enough, you pull back and kick out as hard as you can into one of the hybrid's hind legs, causing a massive roar of both pain and rage to erupt from the tigertaur. Despite the tiger yelling at you to run, a look of gratitude crosses his face at your assistance. The two of you jump back from the furious apex predator, circling the herm, its amber gaze alternating between the both you. Then the taur bursts into laughter, 'So, where I thought I would have to be dealing with four little sailors... now their is a fifth. I'm a man that does so love a good mystery, but seriously let's keep it to five, if I ended up having to deal with ten... well that would just become tedious, don't you think Alex?'";
	say "     You're shocked by how masculine the thing sounds, since at least by its appearance it looks to be a more feminine based herm. You and the beastman that you now know to be named Alex exchange confused looks at first, as far as you can tell, this creature while maybe not completely feral, is definitely unhinged. The anthro tiger is the first to act, his speed and agility making him look more like a blur of living static, 'Screw you Kage!' You decide that since this is his fight, you'll let him take point while you offer support. It's actually hard to focus on the fight, your eyes are constantly pulled to the near reality-defying moves that Alex is pulling out of thin air. Still, you do your best to aid him with well placed kicks and punches. Eventually the huge taur starts to show signs of exhaustion, whether by the workout of the fight or simply the wounds the two of you have inflicted, your not sure.";
	WaitLineBreak;
	say "     Alex turns his head towards you and gives a firm nod to get your attention, 'Alright let's wrap this up!' The two of you rush at the tigertaur in an attempt to finally put down your opponent, but at the last minute the hybrid uses its powerful hindquarters to jump into the nearby foliage. The creature's cackling laugh can be heard from what feels like every direction, but the sound starts to become fainter, a thankful sign of the taur retreat, even if only temporarily. 'Thanks a ton for your help,' the tiger says in a pleasant rumbling voice. 'I was in a load of trouble there on my own, and if you hadn't come along when you did, I'm sure I would have been sprouting a new pair of paws and giving in to the infection myself,' he says, before looking around and trotting over and pulling a large backpack out of some bushes where it was obviously thrown when the combat started.";
	say "     Hefting the rather large pack easily up on his shoulders, he turns back to you and gestures for you to follow as he starts walking down some of the zoo pathways. Moving along, you take the opportunity to introduce yourself[if Player is not defaultnamed] as [name of Player][end if]. You turn towards the anthro tiger as the two of you continue to catch your breath after the fight and decide to ask Alex what exactly was going on before you arrived. 'Not here... we don't know if that psycho is gonna try to backtrack and set up an ambush, we need to get to den first.' You ask the tiger if the [']den['] is where he has been holing up to hide from the larger feline, 'Haha, nah, that's were all of us tigers live. By the way, don't listen to that oversized plush toy, the name's Chase. I mean I used to go by Alex, but new world, new rules ya'know?'";
	WaitLineBreak;
	say "     After straightening his basketball shorts, Chase turns onto a new pathway, deeper into the zoo grounds. Right before you're able to catch up with the striped anthro though he stops dead in his tracks, that is the only warning that you receive before finding yourself being grabbed and hoisted into the leaves of a nearby tree. You find yourself with the tiger's bare chest at your back and his clawed paw covering your mouth. The thought that you made the wrong choice in helping this man is screaming within your head and you start struggling against his iron grip. He simply whispers a, 'Shhhh,' in your ear and with his free hand points out towards the bend in the pathway ahead. Fear begins to grip you as you can feel how fast the tiger's heart is beating, but what comes into view is a bit... well not what you were expecting. A rather portly hippo makes his way into your line of sight carrying a large sack, a calm expression on his snout and you can hear him loudly humming to himself.";
	say "     You can't believe that [']this['] is what has Chase freaked out, especially after the fight you two just had with the tigertaur. Another soft whisper pours into your ear, 'Looks can deceiving, trust me. Keep an eye on the tall grass on the sides of the path.' At first you notice nothing, but then you see it, the way that the long grass is moving in the wind is... odd, almost like it's being moved physically. The tiger's grip on you tightens further and you realize why, a small female gazelle comes running into view along one of the paths. Chase whispers a comment, 'Shit... she needs to get out here and fast.' Unfortunately that doesn't happen, and as soon as the small anthro lays eyes on the hippo she instantly runs towards him, sobbing for him to please help her. A defeated huff can be heard from behind you, instead though you focus on the scene before you.";
	WaitLineBreak;
	say "     A warm and welcoming smile spreads across the hippos mouth, but once the girl is close enough, the semi-aquatic man reaches out a single hand and grabs her by the face before quickly slamming her down on the pavement. From your vantage point you can tell that she's unconscious and struggle against Chase's grip to rush and help her, but the tiger attempts to keep you still. The sound that you're making must have alerted the chubby anthro as he scans the area, 'Anyone else out there? Come out, it's safe here... I will keep you all... safe.' The hollow sound of his voice puts you on edge and thankfully Chase is holding you steady as movement through the tall grass closes in towards the hippo, revealing eight large anthro chameleons, each with blades held tightly in their grip. The group of creatures cower before the hippo, as if frightful of punishment for not being able to drive more prey to him. Nobody moves for a few minutes, but eventually the reptiles retreat back into the foliage and the hippo simply hoists the gazelle up and drops her into his sack, the earie humming returning as he goes on his way.";
	say "     Chase keeps you up there for a bit, more than likely wanting to make sure there is no longer any serious threats in the area. Once he drops from the tree you realize the position that this leaves you in, being carried almost bridal style by the anthro. You quickly attempt to disentangle yourself from the tiger, who for his part simply raises an eyebrow and chuckles, before a much more sober expression takes over his muzzle, 'I know that you wanted to do something back there, but we would have been way too outnumbered. We would have just joined her in that bag.' Thinking back on what you saw, you decide to ask Chase who that was, 'Don't know to be honest. Some of us are just trying to survive, but other people? Well let's just say that some have seen this nightmare as a way to achieve their own form of dark paradise... Come on, we need to get back to the den.' The two of you continue make your way back to the tiger's place in near silence, the worry about what could be around the next bend keeping you both on your toes.";
	WaitLineBreak;
	say "     The beastman leads you through the mostly unused maze of paths in the animal care area of the zoo, eventually leading you to a small employee entrance into the zoo maintenance tunnels. Glancing around to be sure the coast is clear, he leads you down. 'I worked near here before this all happened, and liked to visit the zoo and the big cats on my lunch break, so when shit started getting weird I ended up heading to the zoo again. Turns out that was even more of a mess than most of the rest of the area, though most of the animals were gone at that point, still was plenty of changed around. Ended up taking shelter in the tiger's cage for while, since well, I figured most of the other creatures wouldn't look there... and hey if I actually encountered one of [']em myself, I would kind of rather end up becoming a tiger than most of the other animals around,' Chase says with a shrug as he leads you through the maze of paths, finally stopping at a large iron gate wrapped up in chains.";
	say "     A loud growl can be heard on just the other side, but in the dim light you can't make out what exactly it is and take a step closer to the tiger. This causes Chase to chuckle a bit, 'Kano seriously? I get that you're really into that whole brooding old guy thing, but your making my friend a little on the nervous side.' A figure steps out of the shadows to reveal another anthro tiger, but this one is massive compared to Chase. When the new male finally speaks, you get what was meant by old guy comment, the man's voice makes him sound like he's around maybe fifty or sixty. He also has a very thick accent, you can't be sure without asking him, but you would assume it's from somewhere in Asia. 'You talk too much Chase. You want me nicer, then stop trying to impress this new one. You act like a little boy that just discovered he is a man.' At first you're worried that you might have just stepped into a another fight, but Chase simply laughs it off, 'Eh you love it, if I wasn't around you would prolly just grow bored and start growing mold on your fur and we both know it gramps, haha!'";
	WaitLineBreak;
	say "     The only response is a deep sigh that definitely sounds like this man has had to suffer this type of cocky conversation daily, 'You know the rules boy, I can't let you in without an inspection.' The smaller tiger simply nods his head and helps you get into position, 'We have to be careful about those tigertaurs, so... yeah, no tigertaurs allowed, haha!' Once the larger feline is in front of you, you can really see his size, the man is literally built like a tank. He inspects you quickly but efficiently and then moves on to Chase and repeats. He stops though when he notices the splatter of blood still on the small anthro's claws, 'What's this?' Chase looks a bit sheepish, but honestly replies that it's tigertaur blood, a simple mmhmm is his only reply. You are both finally cleared to enter the den, however after you pass the gate and are about to open the door Kano speak up, 'Was it...?' Chase doesn't turn around when he answers, 'Yeah... it was Kage. I woulda been in big trouble if [if Player is not defaultnamed] as [name of Player][else]they [end if]hadn't bailed me out.'";
	say "     Glancing behind you for a moment, you see the large tiger's head drop and his eyes close, the man looks like he just got punched in the gut. You quickly follow after Chase into the large open room filled with gear and other tigers. Not wanting to lose your train of thought, you decide to ask the tiger why Kano seemed so upset, 'Well, because Kage is his son...' Silence hangs between the two of you until Chase finally tries to brighten the mood and continues the previous conversation that you were having. 'Sadly I never did actually encounter a tiger that day, but there must have been enough of whatever is causing the changes left over in their den to change me, I still don't regret it though... this body is so much better than my old one was,' he says, flashing you a grin. 'And hey!' Chase says as he opens his arms clearly meaning to show off the room.";
	WaitLineBreak;
	say "     Furniture is placed haphazardly all over, causing the place to look like a major battle took place here at some point. 'At least I'm not alone like this,' the tiger man says with a grin as he points out several other tiger men and tiger women who look up to see what's happening. 'Welcome to the Tiger Den,' your guide says somewhat smugly as he leads you further inside. 'How about I give you a guided tour? Well maybe not so much a guided tour, as introduce you the big players of the den!' That sounds like at the very least something interesting to do and nod your head in agreement. 'Well you already met Kano who in charge of our security, and you already met the number one runner around here, yours truly!' At that exact moment, another tiger steps out from behind a crate, 'Number one runner huh? Nice try buddy, but we both know that we're about the same, well except that I look ten times better doing it, haha.'";
	say "     Looking at this new arrival, you are a little shocked his punk appearance from his really tight pants, to his bare chest, and finally his face which showcases black eyeliner under his eyes and each ear being fully pierced, the long mohawk on top of his head is a nice touch as well. The guy quickly gets in-between you and Chase however and quickly grabs your hand shocking you as he actually pulls it up and presses a soft kiss to it, 'I'm Mateo by the way baby.' Looking over at your friend you can see his annoyance plain and simple and you just as quickly wrench your hand back. This leaves Mateo with a pout on his face, but Chase seems to enjoy it going by him laughing and commenting on the fact that you have taste. 'Anyway, seeya Mateo. Do you know if Kimani is in her office?' The sad tiger finally perks up a bit and points over at a very small tiger woman with very odd stripe patterns smoking a cigarette.";
	WaitLineBreak;
	say "     Chase is one to first to comment, 'Dammit Ginger, if Kimani sees her smoking again she is gonna have a conniption fit!' Mateo simply cracks up laughing as Chase makes his way over to the girl and you quickly follow after him, 'Ginger put that out right now, unless you enjoy getting lectures from the doc!' The female tiger looks bored for the most part as she exhales what was in her lungs, 'Quick question Chase, are you my dad?' Rolling his eyes at her comment, he glances at you and blushes then informs you that he is [']not['] her father! 'Well I'm glad we got that out of the way, so you're not my dad? Then how about this, choke on a cock!' Your mouth drops open at her words, but Chase just seems to roll with it, at least until the three of you hear a voice being cleared behind you. Chase looks a bit nervous but decides to speak anyway, 'H- Hey Kimani, what's up?!' The false cheerfulness adding a level of cringe to the situation. 'What's up? You tell me, since all I can see at the moment is a young girl smoking something that is bad for her health and you doing nothing about it!'";
	say "     Her accent is soft and you can't place it, but you must admit it does sound very beautiful and elegant. Chase is doing his best impression of a deer in the headlights before he finally finds his voice, 'Ummm, well I was showing around someone new... but we need to go now!' With that he grabs your hands and pulls you away, the voices of the two bickering female behind you now. 'Yeah well, that was a two for one special that we could have done without, haha. Kimani is the vet around here, which makes her the closest thing to a doctor we got. And Ginger... well if you ever need to do some illegal lock picking or hacking she's your girl. But anyway, now that you know the big players, I should prolly get back to those two before they kill each other, but stick around I'd love to talk to ya some more!' With a bright smile the guy send you a wink and is heading back towards the literal cat-fight you both just escaped.";

to say TigerVSTaur_Helped_Kage:
	say "     Rather than using this opportunity to run, you instead rush forward, deciding to completely bypass the large taur and make a beeline for the anthro. Unfortunately for the beastman that's still completely focused on the much larger predator in front of him, you've chosen a side in this confrontation and you prefer to place bets on winning teams. Looking at those fangs and claws that the felines are packing and the damage that they could cause if you got caught in the middle, choosing to take the low path seems like the most effective. A wicked smile forms on your lips as you finally reach your target and using the pavement, you slide in and kick out, your foot connecting with the anthro's shin and causing a roar of both surprise and pain to erupt from the mans chest.";
	say "     Taking the opportunity that you've presented, the tigertaur quickly grabs the beastman by the throat and shakes him roughly for a moment. With the last bit of strength that the tiger has he spits in the taur's smug face, something between a chuckle and a purr reverberates through the large creatures chest, 'Now Alex is that any way to treat an old friend?' You're shocked by how masculine the thing sounds since at least by its appearance it looks to be a more feminine based herm. Tightening its grip to silence the anthro for a moment, the large hybrid flicks its eyes toward you, 'Now this is a surprise, I could have handled this oversized kitten myself but, now I'm intrigued. Why would you attempt to help me when Alex here was willing to risk himself to save you?' An amused smile forms on your face as you raise your hand and count off on your fingers your reasons.";
	WaitLineBreak;
	say "     First off, you doubt you were ever [']really['] in danger, seeing as the taur seemed pretty focused on its prey. Secondly, you've seen these [']hero['] types and nine times out of ten, they are usually just attempting to make up for their own crimes or at the very least trying to feed their own sense of pride. With your final finger you let out a snicker and simply state that ever since you were a kid you thought that the idea of a real life taur was just kinda badass. A glint of amusement can be seen in the herm's amber eyes, 'Oh I definitely like the way you think, haha!' Your conversation is interrupted by a gurgling sound coming from the anthro. Looking over you can see him starting to foam at the mouth and his eyes have rolled up into the back of his head. The taur rolls its eyes at the jerking motions of the tiger's body and loosens its grip, now able to breathe, Alex simply slumps forward unconscious.";
	say "     With a huff of annoyance, the tigertaur simply drops the anthro onto the pavement, 'How tedious, first he interrupts our conversation just because he needs oxygen, and then after he gets his way he simply decides to go to sleep. Quite a rude man wouldn't you say?' The two of you chuckle at the hybrid's dark joke. Placing one of its powerful paws on Alex's tail, the taur turns and gives you its full attention, 'I suppose an introduction is in order, I mean it's not often I encounter someone that... shares in some of my basic principles, bonus points for that wicked sense of humor.' The wink that is sent your way, causes you to snort with laughter and a much more relaxed smile to find its way to your lips. 'My names Kage, and before all of this, I was just a mild mannered college student.' Feeling bold, you raise a single eyebrow and ask the herm if any of that was true, 'Ooo I was hoping you would be something special and I'm glad I wasn't disappointed. Well my name [']is['] Kage and I was a college student but, as far as being mild mannered goes... well we all have the mask we wear for the rest of the world and then we have our true face.'";
	WaitLineBreak;
	say "     While the tigertaur's words are tinged with a dark meaning, you can't deny that this being has a point. 'Also, seeing as the world is the way it is now, I suppose I should clarify something about myself. You seem have a decent head on your shoulders, so I'm going to assume that you noticed that tight little cunt that I have in back, right?' You're so caught off guard by the herm's comment that a bark of laughter bursts from your mouth. So far the tigertaur has presented itself as someone that can be a depraved individual when it comes to action but, it seemed much more refined on the verbal front and you say as much. 'Ah I see, but I thought we were getting along quite well. The thing is that with class, elegance, and the rest of those tedious acts we present to world, they are built around a lack of trust, plain and simple. A way to assert superiority, while being able to hide behind what most would simply call good taste, haha.'";
	say "     A guttural groan coming around your feet as Alex chooses that exact moment to start coming around. Without skipping a beat, Kage quickly kicks one of its large paws out and once again the tiger is returned to dreamland. 'As I was saying before being rudely interrupted, class is an illusion that people put up to make themselves seem larger. Think of a toad, it will inflate itself to ward of predators... but at the end of the day it is still simply a toad, haha!' Oddly enough the creature's chuckle feels warm, even if its words are a bit cold. 'Anyway, back to the cunt issue. While I'm sure that you may have noticed it, and let's be honest these tits [']are['] quite impressive if I do say so myself. I still live my life as a male and have the cock to back up that claim.... all the way to the hilt if necessary, haha!' While those final words could be seen as a threat, you honestly think that this may simply be the tigertaur's own style of humor and you join him in his laughter.";
	WaitLineBreak;
	say "     Oddly enough, Kage is now looking at you with a warm almost fond expression, 'You're an unusual person, but I like that. [']Normal['] people tend to be boring and while they live in glass houses they do so love to throw stones, don't they?' The taur's eyes flash for a moment, a hint of sadness can be seen within, but as quickly as it appears, it's gone. 'Anyway, isn't it customary for new friends to share an experience to cement their newfound bond?' The confused expression on your face must be showing as Kage is quick to explain, 'Well I already I have my prize after all, I could allow you to use it, sharing is caring and all that.' Without really thinking about what your saying, you ask the tigertaur if that's really alright? Wouldn't he prefer to keep Alex for himself? 'Haha, you are sweet to think about my perspective but, I have no plans on [']mating['] with this betrayer. I will be quite satisfied with shattering its mind, and while yes forcing myself on him would quicken that process, it would make it far too easy and thus spoil my fun little scheme of vengeance, not to mention I don't particularly want to sully myself by touching him more than needed.'";
	say "     This is all a bit new to you, most of the people in the city seem to follow the [']fight, fuck, own['] rule. Kage seems to created a new rule just for himself, [']fight, own, break[']. While you are thinking about the implications of this ideal, Kage seems to grow impatient, 'Well? Heads or tails? All I ask is you make it... an experience to be remembered.' A cruel smile forms on the herms muzzle, and shockingly enough you find it infectious, as your own mouth mirrors his.";
	LineBreak;
	say "     [bold type]<Writer's Note: Ran out of time to build a full-on sex menu for this fork. It is open for later expansion through polls or commissions. Sorry about this.>[roman type][line break]";
	[LineBreak; [TODO: maybe se this up like a talk menu since this should also reference gender orc and bliss]
		say "     [bold type]What should you do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Tell Kage that you want the tiger's throat.";
		say "     [link](2)[as]2[end link] - Tell Kage that you want to break in the tiger's bubble butt.";
		say "     [link](3)[as]3[end link] - Tell Kage you are more interested in him than the tiger.";
		say "     [link](4)[as]4[end link] - Tell Kage while you're appreciative you just aren't really in the mood.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to tiger throat, [link]2[end link] to tiger ass or [link]3[end link] to tigertaur, or [link]4[end link] to not in the mood.";
		if calcnumber is 1: [skullfuck Chase]
			Linebreak;
			say "     [TigerVSTaur_Throat_Fuck]";
			now HP of Chase is 99;
			now PlayerMet of Chase is true;
		else if calcnumber is 2: [break Chase's virginal ass]
			LineBreak;
			say "     [TigerVSTaur_Ass_Fuck]";
			now HP of Chase is 99;
		else if calcnumber is 3: [mess around with Kage]
			Linebreak;
			say "     [TigerVSTaur_Sexy_Kage]";
		else if calcnumber is 4: [no sexy times]
			Linebreak;
			say "     [TigerVSTaur_No_Sexy_Time]";

to say TigerVSTaur_Throat_Fuck:
	say "     ...";

to say TigerVSTaur_Ass_Fuck:
	say "     ...";

to say TigerVSTaur_Sexy_Kage:
	say "     ...";

to say TigerVSTaur_No_Sexy_Time:
	say "     ...";
]
to say TigerVSTaur_Watched:
	say "     Not moving a muscle, you simply stare at the two felines. The beastman continues to shout at you to run and escape all while attempting to land attacks on the much larger cat, however after a few moments the taur eventually seems to understand that you are no threat and concentrates on its much smaller prey. While the anthro does manage to get some decent hits in, the battle is decided quickly when the tigertaur simply grabs the beastman by the throat and shakes him roughly for a moment. With the last bit of strength that the tiger has he spits in the taur's smug face, something between a chuckle and a purr reverberates through the large creatures chest, 'Now Alex is that any way to treat an old friend?' You're shocked by how masculine the thing sounds since at least by its appearance it looks to be a more feminine based herm.";
	say "     The tiger that you now know is called Alex finally speaks, 'Kage we didn't know each other long enough to be friends, besides I don't go by Alex anymore, the names Chase bitchboy!' You can't be sure at first, but something that [']Chase['] says definitely seems to piss the bigger cat off, going by the low growl and the flattening of its ears at least. 'Bitchboy?! Wouldn't that name be more fitting for someone that actually abandoned somebody because they were too scared to act?' The bravado of the anthro dissipates almost instantly at the tigertaur's words, 'Kage... everything was happening so fast, none of us had any idea what was going on and as far as we could tell the world was ending all around us.'";
	WaitLineBreak;
	say "     The broken sound in Chase's voice makes you wonder what exactly did happen in those first few days, while things may be chaotic now, it had to be worse when people were still fighting for their humanity. 'You don't think that all of us wish we could go back and change how shit went down?! But it's not too late Kage, I mean your dad is with us st-hhhh' Whatever the anthro was gonna continue saying is cut off by the tightening of the taur's paw around his throat, 'Don't you dare mention that bastard to me!' The pure rage in those words is accompanied by a violent shredding of Chase's basketball shorts, leaving the poor feline completely naked  and the act makes you want to create even more distance between yourself and the large apex predator, but after a few moments of dead silence the creature finally speaks, 'Ya'know Alex, this is a perfect moment of reflection don't you think? You mentioned going back and changing how things turned out, but the truth is that life just doesn't work that way does it? In the real world there are actions and reactions and at the end of the day you have to accept responsibility for your choices, only children think they can do what they want without consequences... time to grow up peter pan.'";
	say "     With those final words the tigertaur leans in closer to the terrified anthro's face and forces its long tongue into the struggling beastman's mouth. At first nothing seems to happen, well other than Chase struggling to escape Kage's grip. Then you see it, the anthro's backside seems to being growing larger and takes on the shape of a huge hump. You aren't sure exactly what the nanites are attempting to do to the beastman at first, at least until you see an extra pair of legs slowly begin to push their way out of Chase's still growing butt. That's not the only change though, your eyes darting between the feline's emerging breasts and its sheath being stretched backwards in a mimicry of Kage's.";
	WaitLineBreak;
	say "     The transformation happens so fast, eventually you are looking at two tigertaurs. One seemingly proud of itself, while the others eyes are filled with despair. 'There you go Alex, now you have paid for your crimes, but I wonder, will your little bitch friends welcome you back with open arms? Or view you as simply another enemy because of your form? I happen to know for a fact that that arrogant bastard at least will cut you down without a second thought.' A bit of that rage you saw before begins to resurface, but Kage simply shakes its head and continues speaking, 'I suppose I could take you with me, I mean I'm not a heartless monster after all, would you like that kitten?' Chase simply looks at the ground and nods in agreement, although it does look as if their are tears in the freshly made taur's eyes.";
	say "     'Don't worry kitten, all that pain will go away soon. I'm not really sure why but I'm a special case, most tigertaurs don't have the same... connection to who they were as me and eventually you will forget everything before this moment. That's my gift to you, a clean slate free of guilt or remorse.' Taking Chase by the arm, Kage leads the new tigertaur right by where you have been watching. Turning its head in your direction once it is close enough, 'Thank you for not interfering in matters that do not involve you, it would have been tedious to have to put you both down.' A wicked smile spreads across Kage's muzzle, 'As a gift for knowing your place, I will allow you to leave without conflict, after all I already got my prize... just need a few more to complete my collection.' With that the two tigertaur walk past you and into the brush of the newly formed jungle.";

to say TigerVSTaur_Ran:
	say "     With one final look back at the battling felines you internally say thank you for the save and quickly turn away from the carnage. Running as fast as your legs will allow, the last sound that can be heard as you get away is a loud thunderous roar of victory. But at least you escaped the chaos unscathed.";

Section 3 - Companion Moments
[This section will cover companion comment and action inserts]

Part 1 - Example

[
to say TigerVSTaur_Companion_01:
	if bee girl is listed as companion of player:
		say "     'Those are some really big kitties!'";

to say TigerVSTaur_Companion_02:
	if bee girl is listed as companion of player:
		say "     Honey buzzes higher into air, using the foliage to hide herself while she watches the scene before.";

]

Part 2 - First Moment
[Traveling down one of the zoo pathways, you hear a thunderous roar coming from somewhere nearby, followed by what sounds like a pretty heavy impact, after a few seconds the only sound that can be heard is some light growling. [TigerVSTaur_Companion_01] Cautiously, you peek through the greenery and your eyes fall on two apex predators that are slowly circling each other.]

Part 3 - Second Moment
[The tigertaur however seems amused by the beastman's predicament and appears to be toying with its prey. [TigerVSTaur_Companion_02]Stepping forward to get a better look, a twig snaps under your foot, alerting both of the felines to your presence.]

Book 5 - Companion Events
[
Section 1 - Honey
[TODO I want this to be something that will trigger when you enter the tigers den with honey as your active companion]

if bee girl is listed in companionList of Player: [Honey's assessment] [TODO Wahn]
	say "     Glancing over at Honey, you ask her what she thinks about the place. 'Hmm, well everyone looks super nice at least and I mean [']Hello Kitties[']!' You just kinda of stare the little bee girl for a second, not really sure why them being cats is so important, or if they would appreciate being called kitties. Upon further inspection, you also notice that... yeah, your friends eyes have officially glazed over. Finally turning back towards you, Honey can't even keep flying in place apparently, as she's practically dancing with energy. 'Do you think I could pet one of them?! I mean just look at them, they are like fluffy with a capital F!' Unfortunately one of the female tigers chooses at that exact moment to walk by and going by the [']deer in headlights['] expression on her face has no idea what to do with the information that she just received.";
	say "     Sadly, Honey hasn't realized that her excited outburst has been overheard. The tigresses covers her muzzle with one of her paws in an attempt to stifle her laughter and you're about to stop the dancing bee from embarrassing herself further, but the feline stops you with a wink. With grace the striped woman creeps up behind Honey until she is directly behind the bee, 'Who are you calling [']Fluffy[']!' The tigress's booming voice even startles you a bit, sadly it also scares the dickens out of Honey, who quickly turns around and bursts into tears from the shock of being caught. The smirk on the feline's muzzle quickly disappears and you both crouch down to check on the small insect. Honey's crying eventually reduces to sniffles and is just staring up at the tigress with big wet eyes. The striped woman reaches out and gently pats the bee girls head, 'I'm sorry sweety, I didn't mean to scare you that bad, I was only trying to tease you for the [']kitty['] comments.";
	WaitLineBreak;
	say "     Looking at the ground, you can hear a muffled sorry come from Honey, which causes a sad expression to cross the felines face. 'It's alright, I know you were just excited. So what's your name honey?' This causes the bee girl to look up in confusion, 'Honey.' Misunderstanding, the tigress attempts to explain that honey is just something people use when someone doesn't know another persons name. This causes the insect to giggle through her remaining tears, 'No, my name is Honey!' Realization seems to cross the striped woman's eyes, 'Ah, well then I guess that makes sense for a sweet girl like you to have a sweet name as well, hehe. Well my name is Cassie and from before our little misunderstanding I'm guessing that you like cats huh?' This puts a smile on Honey's lips, 'Yeah! I wish that I had fur, it must be really soft! Hmm, but if I could get fur that easily then I would also prolly want huge boobs like your too!'";
	say "     That last comment causes Cassie to choke on her words for a moment before she quickly recovers, 'Well, all breast sizes are special in their own way. I mean look at yours, they are super cute and I know tons of women that would love for theirs to be that perky.' This quickly devolves into both girls talking about the different breasts in The Tigers Den. After a bit, you finally interrupt their conversation to let Honey know that it's time to go, the bee girl looks sad, well that is before Cassie decides to open her arms for a hug. With lightning speed the insect rushes into the warm embrace, 'Yay! Ahh it's fuzzy [']and['] jiggly!' Both women laugh at how open Honey is with her words and opinions, but eventually the hug ends and both you and the bee girl continue on your journey. However, this time Honey's leaving with a new friendship under her belt.";
	add TigerDen_Intro to traits of Honey;

Section 2 - Urik
else if orc supersized breeder is listed in companionList of Player: [Urik's assessment]
	say "     Glancing over at Urik, you ask him what he thinks about the current situation here.";

Section 3 - Karen

else if Retriever Girl is listed in companionList of Player: [Karen's assessment]
	say "     Glancing over at Karen, you ask her what she thinks about the current situation here.";

Section 4 - Klauz

else if Felinoid Companion is listed in companionList of Player: [Klauz's assessment]
	say "     Glancing over at Klauz, you ask him what he thinks about the current situation here.";

Section 5 - Denise

else if Gryphoness is listed in companionList of Player: [Denise's assessment]
	say "     Glancing over at Denise, you ask her what she thinks about the current situation here.";

Section 6 - Artemis

else if rubber tigress is listed in companionList of Player: [Artemis's assessment]
	say "     Glancing over at Artemis, you ask her what she thinks about the current situation here.";

Section 7 - Rachel

else if mouse girl is listed in companionList of Player: [Rachel's assessment]
	say "     Glancing over at Rachel, you ask her what she thinks about the current situation here.";

Section 8 - Ryousei

else if royal tiger is listed in companionList of Player: [Ryousei's assessment]
	say "     Glancing over at Ryousei, you ask him what he thinks about the current situation here.";

Section 9 - Korvin

else if gshep is listed in companionList of Player: [Korvin's assessment]
	say "     Glancing over at Korvin, you ask him what he thinks about the current situation here.";

Section 10 - Brutus

else if demon brute is listed in companionList of Player: [Brutus's assessment]
	say "     Glancing over at Brutus, you ask him what he thinks about the current situation here.";
]

Book 6 - Tiger Den Dungeon
[right now this is just a working title for the area, but the "dungeon" will be able to accessed through one of the closed off ventilation shafts. The point of the dungeon will be to gain new items that will be required for helping out the Tiger's Den(wood, metal, water, ect), as well as introducing a new NPC that will be far more "feral" than the normal tigers in the den and the player will have to decide on their fate.]

Tiger Den ends here.
