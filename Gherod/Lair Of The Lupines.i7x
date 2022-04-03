Version 2 of Lair Of The Lupines by Gherod begins here.

"Adds the lair of the werewolf brutes as a set of locations, as well as related NPCs, to the game."

[Version 1 - File released]
[Version 2 - Vastly expanded Wyatt with new sex scenes. More progress on Jett's questline.]

Section 1 - The Rooms

Table of GameEventIDs (continued)
Object	Name
Discover The Werewolves Den	"Discover The Werewolves Den"

Discover The Werewolves Den is a situation.
ResolveFunction of Discover The Werewolves Den is "". Sarea of Discover The Werewolves Den is "Nowhere".

to connect LupinesPit:
	change the north exit of Lair Of The Lupines Pit to Lair Of The Lupines Bar;
	change the south exit of Lair Of The Lupines Bar to Lair Of The Lupines Pit;

a postimport rule:
	if Resolution of Discover The Werewolves Den is 1:
		now Find The Werewolves Den is resolved;
		AddNavPoint Hidden Rock Cavern Entrance;
		connect LupinesPit;
		move Jett to Lair Of The Lupines Main Hub;
		move Elstan to Lair Of The Lupines Pit;
		move Kirnon to Lair Of The Lupines Pit;
		move Rodion to Lair Of The Lupines Kitchen;
		move Wyatt to Lair Of The Lupines Common Room;

[---]

Table of GameRoomIDs (continued)
Object	Name
Hidden Rock Cavern Entrance	"Hidden Rock Cavern Entrance"

Hidden Rock Cavern Entrance is a room. It is a fasttravel. Hidden Rock Cavern Entrance is private.
The earea of Hidden Rock Cavern Entrance is "Avalon".
Description of Hidden Rock Cavern Entrance is "[Hidden Rock Cavern Entrance Desc]".

to say Hidden Rock Cavern Entrance Desc:
	say "     A very inconspicuous spot located right after a bunch of vegetation and dug towards a mountain, seemingly made to look like it sort of merges with the environment. It would easily make one think this was all arranged with the sole purpose of hiding this entrance. Whoever lives here does not want to be easily found. The rest of the pathway is very dark, [if daytimer is day]light ending briefly after a few first steps, [end if]keeping an outside viewer clueless of what they could find inside. You cannot hear anything from just standing at the entrance either, so it still must be a considerable distance between this spot and any points of interest. However, if you pay attention, you can spot a few lone strands of fur here and there, on the rocks and across the path, at the ground.";
	if Resolution of Discover The Werewolves Den is 0:
		say "     [bold type]You have a feeling that you probably should not venture forth, if anyone happens to live deeper inside...[roman type][line break]";

instead of smelling Hidden Rock Cavern Entrance:
	say "     This place smells like greenery and nature, but with a faint odor of... wolves?";

Table of GameEventIDs (continued)
Object	Name
Find The Werewolves Den	"Find The Werewolves Den"

Find The Werewolves Den is a situation.
ResolveFunction of Find The Werewolves Den is "[ResolveEvent Find The Werewolves Den]". Sarea of Find The Werewolves Den is "Avalon".

to say ResolveEvent Find The Werewolves Den:
	say "     As you walk through a few unknown paths in hopes of finding something interesting within the region of Avalon, you are led into an area almost completely covered by tall grass and bushes. Normally, this would not mean much, but there is a distinct smell flowing in the air that resembles wolves, yet you hear no movement nor any sort of howling. Moreover, when you inspect the dirty ground near this section of the woods, you notice large lupine footprints here and there. With your curiosity duly incited, you press on through the vegetation and find your way to some rocky cliffs. The path is not the easiest to traverse, but it eventually reveals that all this greenery seems almost purposefully meant to conceal an entrance to a cavern.";
	say "     Having stumbled upon this finding, you take note of its location immediately and wonder if it would be worth investigating.";
	move player to Hidden Rock Cavern Entrance;
	AddNavPoint Hidden Rock Cavern Entrance;
	now Find The Werewolves Den is resolved;

[---]

Table of GameRoomIDs (continued)
Object	Name
Rocky Dark Path	"Rocky Dark Path"

Rocky Dark Path is a room.
Rocky Dark Path is west of Hidden Rock Cavern Entrance.
Description of Rocky Dark Path is "[Rocky Dark Path Desc]".

to say Rocky Dark Path Desc:
	say "     This path extends deeper into the cavern, with barely any light illuminating the way, coming from just a few torches placed on the walls. It is quite obvious that this place is inhabited by someone, but the whole ambience is quite unwelcome. From here, you can hear an occasional howling, which faintly echoes through the rocky walls and ends up sounding more eerie than thrilling. If you continue further to the [bold type]West[roman type], you would be at the Werewolves['] den, while going the opposite direction, [bold type]East[roman type], would lead you to a section of the avalonian forest outside of this cave.";
	if Resolution of Discover The Werewolves Den is 0:
		say "     [bold type]There is a strange sensation in your mind that you are being watched. You might want to go back, unless you want to increase the chances of something happening to you...[roman type][line break]";

instead of smelling Rocky Dark Path:
	say "     This area's scent does not strike as anything particular, but the air feels colder than it is outside.";

instead of going west from Rocky Dark Path while Resolution of Discover The Werewolves Den is 0:
	say "     Despite your odd feelings about this place, you decide to press on further, [bold type]but something, indeed, takes place...[roman type][line break]";
	WaitLineBreak;
	say "     You have no time to react as you feel movement coming from behind you, followed by a sharp pain on the back of your skull, causing you to lose your senses and collapse on the ground. The last thing you hear is a couple of swift, but heavy, footsteps growing louder as this hulking figure approaches you, then a growl echoing through the dark rocky path...";
	WaitLineBreak;
	say "     Later, at some point, you wake up surrounded by more darkness... and an overwhelming smell of sex. Still dizzy from whatever just happened to you, and quite clueless in that matter, you only see more naked people of various shapes and forms barely visible within the obscurity of this place. Above you there is a trapdoor made of metal bars that does not seem hard to reach to, but it does take you a while to realize that you have probably been captured by someone. As your senses slowly return, so does an headache, likely from the impact you received when trying to enter this place. Maybe you should have stayed back and kept your curiosity from overtaking you, but it is too late now.";
	say "     Perhaps you should try to escape... It does not seem to be difficult as long as you can jump and swing yourself around.";
	move player to Lair Of The Lupines Oubliette;

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Main Hub	"Lair Of The Lupines Main Hub"

Lair Of The Lupines Main Hub is a room.
Lair Of The Lupines Main Hub is west of Rocky Dark Path.
Description of Lair Of The Lupines Main Hub is "[Lair Of The Lupines Main Hub Desc]".

to say Lair Of The Lupines Main Hub Desc:
	say "     You are standing in the main hub of the werewolf brutes['] lair, which connects to every area of interest within the entire den. The place is not as unwelcoming as the rest, with some furniture around that somewhat compensates the desolate and rocky look of the room, like couches and a central small table. It would be better, however, if they were in good conditions, as most of the seats are torn and shredded. There is only one large couch in decent conditions, located further ahead between the entrances to the other sections, and that one is claimed by the alpha, so it is kept vacant. You could head further [bold type]below[roman type], through some nearby stairs leading down, to arrive at the pit, [bold type]West[roman type] towards the feast room, [bold type]North[roman type] to the common room (besides this one) and [bold type]East[roman type] to leave this place through the rocky dark path.";

instead of smelling Lair Of The Lupines Main Hub:
	say "     You get a more distinct scent of masculine wolves, as they inhabit this place.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Pit	"Lair Of The Lupines Pit"

Lair Of The Lupines Pit is a room.
Lair Of The Lupines Pit is below Lair Of The Lupines Main Hub. [Also South from Lair Of The Lupines Bar, but is only later connected]
Description of Lair Of The Lupines Pit is "[Lair Of The Lupines Pit Desc]".

to say Lair Of The Lupines Pit Desc:
	say "     This particular area is located right underneath the main hub, and is a place where all the werewolf brutes get together to spar and have sex with each other and passersby they happen to claim for themselves. Most of the noise, grunts and moans come from here, due to that. Shaped like a circle, it contains a pit in the middle, like some sort of arena. In its center, you see a grid that leads to a kind of oubliette, down [bold type]below[roman type], and every else is just plain dirt on top of, you would presume, an otherwise irregular rocky floor. The rest of the decoration is very simple, as well, with only the occasional torch hanging on the wall, but they do have some larger ones on each corner of the pit to illuminate what is happening in the middle, which is where all the action takes place. If you tire of this place, you could always just go [bold type]up[roman type] towards the Main Hub.";
	if Resolution of Discover The Werewolves Den > 0:
		say "     You also notice that the pit connects directly to the bar, if you walk [bold type]North[roman type] from here.";

instead of smelling Lair Of The Lupines Pit:
	say "     The musk from the werewolves is much stronger here, and the smell of sex is more than enough to give you a tingle on the groin.";

instead of going down from Lair Of The Lupines Main Hub while (Resolution of Discover The Werewolves Den is 1 and player is not naked):
	say "     Before you decide to move anywhere deeper inside the Lair, Jett stops you with an imposing step. 'Nu-huh. Remember the rules? You gotta be naked. If you're shy, you can have a loincloth and that's it. And no funny stuff, or you know what happens.' He seems pretty serious about this rule, so you should [bold type]strip down all your gear[roman type] if you intend on continuing.";

instead of going west from Lair Of The Lupines Main Hub while (Resolution of Discover The Werewolves Den is 1 and player is not naked):
	say "     Before you decide to move anywhere deeper inside the Lair, Jett stops you with an imposing step. 'You need to be clothed to grab something to eat? Don't think so around here. Get rid of those, I want nothing with pockets near the kitchen.' He seems pretty serious about this rule, so you should [bold type]strip down all your gear[roman type] if you intend on continuing.";

instead of going north from Lair Of The Lupines Main Hub while (Resolution of Discover The Werewolves Den is 1 and player is not naked):
	say "     Before you decide to move anywhere deeper inside the Lair, Jett stops you with an imposing step. 'Smuggling any substances inside those pockets of yours? My boys don't need any of that shit. If you're not, whatever, just strip naked because I'm sure you know the rules by now.' He seems pretty serious about this rule, so you should [bold type]strip down all your gear[roman type] if you intend on continuing.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Oubliette	"Lair Of The Lupines Oubliette"

Lair Of The Lupines Oubliette is a room.
Lair Of The Lupines Oubliette is below Lair Of The Lupines Pit.
Description of Lair Of The Lupines Oubliette is "[Lair Of The Lupines Oubliette Desc]".

to say Lair Of The Lupines Oubliette Desc:
	say "     You are now in the werewolves['] slave storage, as they call it, which is a sort of oubliette located below the pit where they fight and fuck most of the time. Whoever they throw in here, however, does not seem to care about their fate, and is more than glad to be part of their harem. They are kept isolated from the rest of the world and brought up only for the werewolves['] personal pleasure. It is not too deep, however, and it would be quite possible for a regular person to escape through the opening [bold type]above[roman type], by removing the grid covering it. You also see some other unknown and random creatures, naked and curled in their corners, with what seems to be like cum oozing from their orifices. They do not seem in the mood to chat, and others are simply sleeping, so you pay no mind to them.";
	if Resolution of Discover The Werewolves Den is 0:
		say "     [bold type]Perhaps you should escape, lest you want to become a slave to the brutes.[roman type][line break]";

instead of smelling Lair Of The Lupines Oubliette:
	say "     It strongly smells like sex fluids and werewolf musk, to an almost unbearable level. The air is damp and it weighs on your head.";

instead of going up from Lair Of The Lupines Oubliette:
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Dexterity Check):[line break]";
	if diceroll + bonus >= 13:
		say "     As the trapdoor is not too far above you and is always unlocked, you manage to jump and hold yourself onto one of it metallic bars and swing it open with the momentum of your body and a few well-placed pushes. It takes you a few attempts, but you eventually manage to crawl out of it, abandoning the dungeon-like room.";
		move player to Lair Of The Lupines Pit;
	else:
		say "     You try to jump and hold yourself onto one the trapdoor's metallic bars, and while you succeed at some times, you fail to create the right momentum to swing it open and allow yourself to crawl away. Perhaps because you are too tired, and eventually, the ordeal exhausts you. There is no other choice but to wait it out until you can try again.";
		WaitLineBreak;
		follow the turnpass rule;

instead of going down from Lair Of The Lupines Pit:
	if Resolution of Discover The Werewolves Den is 0:
		say "     Now, why would you go back there? You should be worried in finding a way out of here!";
	else:
		say "     You approach the metal bar trapdoor with the intent of going down onto the oubliette below the pit. Are you certain you wish to proceed with this move? While in there, you will be treated as a slave to the werewolves like all the others resting below. Though, it should not be too hard to climb back out.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go down.";
		say "     ([link]N[as]n[end link]) - Stay up.";
		if Player consents:
			say "     Aware of what it means to be down in the oubliette, you pull the trapdoor open and carefully slide over the edge to land below in the dark, letting it close above you.";
			move Player to Lair Of The Lupines Oubliette;
		else:
			say "     Perhaps you will stay where you are, after all.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Feast Room	"Lair Of The Lupines Feast Room"

Lair Of The Lupines Feast Room is a room.
Lair Of The Lupines Feast Room is west of Lair Of The Lupines Main Hub.
Description of Lair Of The Lupines Feast Room is "[Lair Of The Lupines Feast Room Desc]".

to say Lair Of The Lupines Feast Room Desc:
	say "     This is probably the best decorated room in the entire lair, a feast room for all the werewolves to gather and, indeed, feast on whatever food is prepared in the kitchen, located [bold type]North[roman type]from here. They placed a massive table with benches surrounding it in the center, a whole chandelier of torches above it, and there are even pictures hanging on the walls next to some other torches to keep every corner of the room lit. Said pictures are, actually, quite normal-looking ones, of landscapes and historical figures, and there is even a portrait of their Alpha drawn in acrylic, a quite impressive display of skill. If you have nothing to do here, you could always just return to the Main Hub by heading [bold type]East[roman type] from here.";

instead of smelling Lair Of The Lupines Feast Room:
	say "     Sometimes, you can smell food being cooked from here, though in most cases it is just the werewolves['] natural scent.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Kitchen	"Lair Of The Lupines Kitchen"

Lair Of The Lupines Kitchen is a room.
Lair Of The Lupines Kitchen is north of Lair Of The Lupines Feast Room.
Description of Lair Of The Lupines Kitchen is "[Lair Of The Lupines Kitchen Desc]".

to say Lair Of The Lupines Kitchen Desc:
	say "     A quite cozy corner of the lair reserved for preparing food for the pack. There are plenty of cooking utensils, a stove, an oven, cabinets and armoires probably filled with food supplies and other relevant objects and supplements. It seems the werewolves are not as savage as they look, if they actually prepare their meals and have a designated cook to do so. Nothing else seems of relevance here, it is just a normal kitchen in an underground settlement. You can simply walk [bold type]South[roman type] to return to the feast room, a large entrance to give space to whoever comes from here carrying large plates of food. It is quite likely that these werewolves eat a lot.";

instead of smelling Lair Of The Lupines Kitchen:
	say "     It smells deliciously in here, most of the times, like good food being cooked by a skillful chef, whenever he is around.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Common Room	"Lair Of The Lupines Common Room"

Lair Of The Lupines Common Room is a room.
Lair Of The Lupines Common Room is north of Lair Of The Lupines Main Hub.
Description of Lair Of The Lupines Common Room is "[Lair Of The Lupines Common Room Desc]".

to say Lair Of The Lupines Common Room Desc:
	say "     This room serves as a common space, some kind of extension to the Main Hub, but a little more personal and quiet, as it is not directly above the pit. There are bookshelves placed next to the walls and seats in here, around a small table, for whoever wants to sit and read a book, something you do not imagine a werewolf brute doing often. You see that this particular area connects to several bedrooms and has a passageway towards the bar, going [bold type]down[roman type], as stairs on one of the sides of the room. You may also walk [bold type]South[roman type] to return to the Main Hub.";

instead of smelling Lair Of The Lupines Common Room:
	say "     You get a more distinct scent of masculine wolves, as they inhabit this place.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Bar	"Lair Of The Lupines Bar"

Lair Of The Lupines Bar is a room.
Lair Of The Lupines Bar is below Lair Of The Lupines Common Room. [Also North from Pit, but will only be connected later]
Description of Lair Of The Lupines Bar is "[Lair Of The Lupines Bar Desc]".

to say Lair Of The Lupines Bar Desc:
	say "     The bar area is a cozy place to hang out and have a drink among friends, and seems to serve as some sort of party room, with a bar counter, stools and entertainment objects such as a pool table and a punch machine. It seems the werewolves have booze to keep themselves happy in dire times. There are couches in here, and yes, they are torn apart, but you can still find some comfortable spots. Going [bold type]up[roman type] through the stairs at one of the sides of the room will take you to the Common Room.";
	if Resolution of Discover The Werewolves Den > 0:
		say "     You also notice that the bar connects directly to the pit, if you walk [bold type]South[roman type] from here.";

instead of smelling Lair Of The Lupines Bar:
	say "     You get a more distinct scent of masculine wolves, as they inhabit this place.";

Section 2 - The NPCs

Section 2-1 - Jett

Table of GameCharacterIDs (continued)
object	name
Jett	"Jett"

Jett is a man.
ScaleValue of Jett is 4. [normal sized]
Body Weight of Jett is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Jett is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Jett is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Jett is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Jett is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Jett is 8. [length in inches]
Breast Size of Jett is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Jett is 2. [count of nipples]
Asshole Depth of Jett is 16. [inches deep for anal fucking]
Asshole Tightness of Jett is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Jett is 1. [number of cocks]
Cock Girth of Jett is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Jett is 24. [length in inches]
Ball Count of Jett is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Jett is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Jett is 0. [number of cunts]
Cunt Depth of Jett is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Jett is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Jett is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Jett is false.
PlayerRomanced of Jett is false.
PlayerFriended of Jett is false.
PlayerControlled of Jett is false.
PlayerFucked of Jett is false.
OralVirgin of Jett is false.
Virgin of Jett is true.
AnalVirgin of Jett is false.
PenileVirgin of Jett is false.
SexuallyExperienced of Jett is false.
TwistedCapacity of Jett is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Jett is true. [steriles can't knock people up]
MainInfection of Jett is "Werewolf Brute".
Description of Jett is "[Jettdesc]".
Conversation of Jett is { "<This is nothing but a placeholder!>" }.
The scent of Jett is "     Jett's scent is intoxicating. It is so masculine that [if player is submissive]it inevitably arouses you, causing your muscles and orifices to relax and moisten in his presence[else if player is dominant]it fills you with an urge to dominate anyone, even him[else]it makes your groin tingle and your heart race[end if].".

to say JettDesc:
	say "     You would say that a normal werewolf brute is large, but this one is ridiculously massive. Jett is an alpha werewolf brute and one built of pure muscle, with a thick dark silver fur coat only damaged by battle scars around his chest, arms and some around his thighs. You can also spot one large scar across the left side of his face, which makes him look quite intimidating, at first glance. The Alpha does not wear anything to cover his hanging junk, which looks almost hyper-sized, even for somone of his stature. You also do not think anything would be able to cover that much cock and that pair of ostrich-egg sized balls, as even his furred sheath can barely contain all the meat within. His piercing yellow eyes loom over you like an observant owl whenever you come close, but curiously, they do not give any hostile sense. Much the contrary, more in the way of a caring parent looking over their children. All in all, you feel safe around Jett[if player is submissive], and very subservient[end if].";

JettDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-1-1 - Jett Talk

instead of conversing Jett:
	if Loyalty of Jett >= 20:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which you do without much thinking, and he holds you comfortably. 'Hey there, did you wanna chat?' he asks, affectionately patting your back and rubbing your side. It actually feels quite nice...";
	else if loyalty of Jett > 9: [happens automatically if player is submissive upon meeting him the first time]
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which really means that you are suggestively ordered to do so, and you comply without question. 'What brings my [boygirl] to big ol' Jett here?' he asks, affectionately patting your back and rubbing your side. It actually feels quite nice...";
	else:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, allowing you to speak your mind. 'What do you need? Hopefully you've managed to keep out of trouble...'";
	WaitLineBreak;
	say "[JettAlphaTalkMenu]";

to say JettAlphaTalkMenu:
	now JettDoneTalking is false;
	say "     [bold type]What matter would you like to discuss with Jett?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the alpha werewolf brute about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The pack";
	now sortorder entry is 2;
	now description entry is "Ask about the pack he leads";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His sexual preferences";
	now sortorder entry is 3;
	now description entry is "Ask about his sexual preferences";
	[]
	if Resolution of JettDominance is 1 or (Resolution of JettDominance >= 3 and Resolution of JettDominance <= 5):
		choose a blank row in table of fucking options;
		now title entry is "Offer Jett a gift";
		now sortorder entry is 99;
		now description entry is "Rodion, the cook, showed you what Jett most likes to receive. Do you wish to show intent to make the same offering";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[JettAlphaTalkHimself]";
				else if (nam is "The pack"):
					say "[JettAlphaTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[JettAlphaTalkSex]";
				else if (nam is "Offer Jett a gift"):
					say "[JettAlphaTalkOfferGift]";
				wait for any key;
				if JettDoneTalking is false:
					say "[JettAlphaTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Jett gives you an understanding nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JettAlphaTalkHimself:
	say "     You wish to ask Jett about himself, as the alpha of the werewolf brutes. He chuckles, seeming flattered by your interest. 'I was merely the first. Most of the size-changing magic went for me, which is why I'm this big, and naturally, I became the alpha when the other fuzzy pups began to show up,' Jett then puts on a grin as he eyes you from head to feet, 'The boys really need someone to watch out for them, and so I combined that with gatekeeper duty. They wanna talk to me, they come over here. Besides that, I get to decide which one of the pretty lads and gals may have access to some werewolf dick, should they ever find this place through one way or another...'";
	if loyalty of Jett >= 20:
		say "     [italic type]The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'And only the truly special ones get my sympathy. I'm glad to have met you, cute stuff. Maybe we'll be able to have some good fun soon.'[roman type][line break]";
	else if loyalty of Jett > 9:
		say "     [italic type]The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'Because that's what y'all come for, ain't it? Heh... There's no way you didn't come here voluntarily... Nobody lets a werewolf brute on them that many times without wanting some of that big hard cock...'[roman type][line break]";

to say JettAlphaTalkPack:
	if loyalty of Jett >= 20:
		say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... Well, you know Elstan, for instance. Although I've been realizing that I've probably not been the best leader for him, and this is why he doesn't see me as one. Well, looking back at my attitude when I first addressed you, I can see why. I think I've been letting my animalistic side out too much and should probably consider the fact I'm dealing with a pack of people, not just horny werewolves. Even if they are, indeed, horny werewolves, but you get my point. Either way, what I said about him in the past... Do please try to get along with him. Even if he's difficult. I'm sure deep down he's a good guy.'";
		say "     Considering it might be wise to tell Jett about the way Elstan treats you, you then rethink that decision and just let him know that you will try your best to get along with everyone. That leaves a smile on his muzzle.";
	else:
		say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... They're probably some spoiled brat who got turned into a big hung werewolf and think they're some big shit. They ain't worth anything unless they're sitting here, on my spot...' he then pauses to give you a grin, 'Or, you know, sitting on me like good little puppy slaves. I consider a good sub above that jackass, if I'm honest.' You wonder who he is talking about, specifically, as he seems to be referring to someone. He realizes this and tells you, 'I'm sure you'll meet him, eventually. Or you probably have, already. I don't care. Just don't reinforce his delusions, he ain't worth it when you've got something a lot better, right here...'";
		if loyalty of Jett > 9:
			say "     [italic type]'Especially a sexy cuteface such as you, who deserves proper treatment... Like all the good [boygirl]s who earn Jett's love and respect.'[roman type][line break]";

to say JettAlphaTalkSex:
	if loyalty of Jett >= 20:
		say "     Referring to the subject of sex, you decide to talk to him about it. While he would previously give you a much more eager response, he simply looks at you with a big smile and says 'I'm into anything you want as long as you're happy. And I mean... anything. I'm pretty sure I can do any kink I'm asked for someone I care about. And... you're on that list.' He tightens his embrace on you for brief seconds, reinforcing his words.";
	else:
		say "     Referring to Jett's favorite subject, you decide to have a bit of sex talk with him. His eyes shine as a wide smirk forms across his muzzle, enthusiasm evident the moment you bring up this matter. 'I've got quite a lot of things I like doing to my good lads... Between putting them to worship my muscles, my pits, pecs, feet, dick, balls, even my ass, sitting on them, choking them on my cock, smothering them with my body and feeling them squirm under me, filling them up with fucktons of loads until they look pregnant of triplets and cough it out from their mouths... Well fuck, I've even eaten some of my slaves and that got me fucking boned up! Guess I'm fucking depraved, huh...' While Jett got so carried away talking about what he likes, you've seen that his dick jumped to attention amidst conversation, hanging half-hard.";
		say "     'Well, shit, talking about this gets me hard everytime. Though I'm only down to do things my subs like, too. There's no point in dominating one if I don't see them losing their minds over it, heheh... Anyway, I'd be happy to explore this whole list with a very, very good slave...'";
		if loyalty of Jett > 9:
			say "     [italic type]'And so far... I've been popping raging boners just from thinking of you. Can't say the same for everyone... Makes you a special case.'[roman type][line break]";

Section 2-1-2 - Jett Sex

instead of fucking Jett:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

Section 2-2 - Rodion

Table of GameCharacterIDs (continued)
object	name
Rodion	"Rodion"

Rodion is a man.
ScaleValue of Rodion is 4. [normal sized]
Body Weight of Rodion is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Rodion is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Rodion is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Rodion is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Rodion is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Rodion is 8. [length in inches]
Breast Size of Rodion is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Rodion is 2. [count of nipples]
Asshole Depth of Rodion is 16. [inches deep for anal fucking]
Asshole Tightness of Rodion is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Rodion is 1. [number of cocks]
Cock Girth of Rodion is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Rodion is 15. [length in inches]
Ball Count of Rodion is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Rodion is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Rodion is 0. [number of cunts]
Cunt Depth of Rodion is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Rodion is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Rodion is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Rodion is false.
PlayerRomanced of Rodion is false.
PlayerFriended of Rodion is false.
PlayerControlled of Rodion is false.
PlayerFucked of Rodion is false.
OralVirgin of Rodion is false.
Virgin of Rodion is true.
AnalVirgin of Rodion is false.
PenileVirgin of Rodion is false.
SexuallyExperienced of Rodion is false.
TwistedCapacity of Rodion is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Rodion is true. [steriles can't knock people up]
MainInfection of Rodion is "Werewolf Brute".
Description of Rodion is "[Rodiondesc]".
Conversation of Rodion is { "<This is nothing but a placeholder!>" }.
The scent of Rodion is "     Rodion smells really sweet, like cake. This sort of confuses you, but it is quite pleasant.".

to say RodionDesc:
	say "     This burly werewolf brute is a timber-colored and fuzzy one with quite a belly, but still has a sturdy and beefy physique that surely shows a lot of strength. He is often wandering around the kitchen preparing meals for the others, with a radiant smile on his face most of the time. Currently, he is only wearing an apron, which already seems a few numbers below what he should be wearing, and with nothing else underneath. It barely manages to cover this quite prominent bulge between his legs, the cloth ending right at the bottom of his generous furred ballsack, leaving little to the imagination. Fortunately, you can tell he does not mind your presence. In fact, the lair's cook happily nods everytime you walk inside the kitchen and welcomes you, making him seem quite friendly.";

RodionDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-2-1 - Rodion Talk

instead of conversing Rodion:
	say "     The cook seems busy, but still allows you to approach him with a big cheerful smile. And like most werewolves, he also has many sharp teeth that come with that toothful grin which, if you did not know better, would probably send you mixed signals. 'Hey there! Drawn by the scents? I don't mind some company!' he happily says as you move next to him.";
	WaitLineBreak;
	say "[RodionTalkMenu]";

to say RodionTalkMenu:
	now RodionDoneTalking is false;
	say "     [bold type]What would you like to talk about with Rodion?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the cook about himself";
	[]
	if Energy of Rodion > 0:
		choose a blank row in table of fucking options;
		now title entry is "The pack";
		now sortorder entry is 2;
		now description entry is "Ask about his feelings on the pack";
		[]
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 3;
		now description entry is "Ask about his sexual preferences";
	[]
	if Energy of Rodion is 2:
		choose a blank row in table of fucking options;
		now title entry is "A gift for Jett";
		now sortorder entry is 99;
		now description entry is "Rodion mentioned you could do something to make Jett like you more. Ask him about it";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[RodionTalkHimself]";
				else if (nam is "The pack"):
					say "[RodionTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[RodionTalkSex]";
				else if (nam is "A gift for Jett"):
					say "[RodionTalkJettGift]";
				wait for any key;
				if RodionDoneTalking is false:
					say "[RodionTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Rodion gives you an understanding nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RodionTalkHimself:
	say "     You find yourself curious about the burly werewolf and decide to ask him to tell you something about himself, so that you would get to know him a little better. He immediately says 'Of course!' as he puts a heavy paw on your shoulder, pulling you to him and his incredibly soft fur, which also smells really nice. 'My name's Rodion and... I was actually a chef! Jett personally recruited me. We're buddies, by the way, he just doesn't like everyone to know we're pretty close, so you should probably pretend I didn't tell you that... But the alpha's a soft fuzzy wolfie when you get on his good side. Also remarkably strong...! Anyway, he needed someone to cook for the boys, so he brought me in. I'm in charge of making sure everyone eats well and stays as strong as they can!'";
	say "     The smoothness of his fur really makes you feel a little fuzzy yourself, just as if you were hugging a giant teddy bear. 'And of course, it's through what you eat where you get all the energy, strength and virility you need. Nobody can really replace me, they'd have to be as good of a cook as I am! And nobody wants poorly fed werewolves. They wouldn't be as happy as they are if it wasn't for my food, I guarantee you!' As he cheerfully talks, you just have to ask him about how he keeps his fur so soft and smelling so good. 'Oh, that? I wash it, cooking requires hygiene. And then, since I spend so much time baking afterwards, it probably catches the smell... But I gotta make cakes for the nice boys too! Hope it isn't too strange of a smell, though... Being a werewolf kind of took me a while to get used to.'";
	WaitLineBreak;
	say "     Once you are done talking, you let go of the soft werewolf, immediately missing his warm touch.";
	if Energy of Rodion is 0:
		now Energy of Rodion is 1;

to say RodionTalkPack:
	say "     When you ask Rodion about his thoughts on the rest of the pack, he thinks about it for a while before answering. 'Well, [bold type]Jett[roman type] is obviously my favorite... But I guess that doesn't come as a surprise. He's the one who got me here and personally ensured my transformation, if you get what I mean. The man's really strong... Sheesh, just thinking about it makes my fur stand up! A-anyway, uh...";
	say "     I suppose [bold type]Elstan[roman type] isn't too bad, even though he's particularly hard to get along with. I always manage to bribe him with some food and he sometimes, even reluctantly, opens up about his feelings to me. I totally disagree with his points of view, but he ain't a bad guy. Just... misunderstood? Though only Jett's stronger than him, so I give him some credit. The dude works hard to maintain that body! I just hope he doesn't end up doing anything out of spite... I-I should probably move along now.'";
	WaitLineBreak;
	say "     Who else do we have... [bold type]Kirnon[roman type] is an odd ball. Seems to be Elstan's best friend... That or he's just kissing his ass everytime. Honestly, don't really know much about him other that he's such a Elstan stan... Hah, funny pun! Er... Yeah, not much to say about him. Good butt, though.";
	say "     And, let's see... [bold type]Wyatt[roman type] is an interesting fellow. I suspect he doesn't fancy guys a whole lot, but I'm not allowed to comment on that... He often comes asking me if I can get him something that'd calm down his sexual urges because he just can't get enough satisfaction fucking dudes. Fuck, I'm commenting on it, aren't I?! Should learn to keep my mouth shut...'";
	WaitLineBreak;
	say "     'I guess the pack as a whole is fine. I've got a home here and I'm proud to call it so. And Jett is the best leader I could ever ask for.'";

to say RodionTalkSex:
	say "     Curious about what Rodion is into, you ask him about he likes sexually. He chuckles as he looks at you. 'Besides Jett? That werewolf's everything one could hope for... But I also like switching around. You see, I've got a lot to love, so anyone into more burly and stocky werewolves is welcome to show me some. Also love eating and feeding, got myself a bit of a feeder fetish thing. Always had that, actually, even when I was human, but I swear it's nothing related to my professional choice! I like feeling full and heavy, and also make others feel that blissful sensation of being stuffed with delicious food... Then there's a lot of fun to be had, especially with someone, heh... smaller than me.";
	say "     But I definitely don't mind bigger. Strong, hung, insatiable, dominant, passionate tops... Jett's perfect. Perfect size, perfect strength, perfect attitude... Honestly I recommend you to make him like you and see for yourself if you're into that. I can give you something that he'll enjoy receiving as a gift to help you out... er, in a near future, anyway!";
	if Energy of Rodion is 1:
		now Energy of Rodion is 2;
	if Libido of Rodion is 0:
		now Libido of Rodion is 1;

Section 2-2-2 - Rodion Sex

instead of fucking Rodion:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

Section 2-3 - Elstan

Table of GameCharacterIDs (continued)
object	name
Elstan	"Elstan"

Elstan is a man.
ScaleValue of Elstan is 4. [normal sized]
Body Weight of Elstan is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Elstan is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Elstan is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Elstan is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Elstan is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Elstan is 8. [length in inches]
Breast Size of Elstan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Elstan is 2. [count of nipples]
Asshole Depth of Elstan is 16. [inches deep for anal fucking]
Asshole Tightness of Elstan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Elstan is 1. [number of cocks]
Cock Girth of Elstan is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Elstan is 18. [length in inches]
Ball Count of Elstan is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Elstan is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Elstan is 0. [number of cunts]
Cunt Depth of Elstan is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Elstan is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Elstan is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Elstan is false.
PlayerRomanced of Elstan is false.
PlayerFriended of Elstan is false.
PlayerControlled of Elstan is false.
PlayerFucked of Elstan is false.
OralVirgin of Elstan is false.
Virgin of Elstan is true.
AnalVirgin of Elstan is true.
PenileVirgin of Elstan is false.
SexuallyExperienced of Elstan is false.
TwistedCapacity of Elstan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Elstan is true. [steriles can't knock people up]
MainInfection of Elstan is "Werewolf Brute".
Description of Elstan is "[Elstandesc]".
Conversation of Elstan is { "<This is nothing but a placeholder!>" }.
The scent of Elstan is "     Elstan's scent is quite beastlike and masculine, nearly intoxicatingly so[if player is submissive]. It arouses you, getting you to think how good it would be to serve him[else if player is dominant]. It fills you with an urge to compete with him for who is stronger[else]. It makes your groin tingle and your heart race[end if].".

to say ElstanDesc:
	say "     This brute seems to be a bodybuilder, judging by how much muscle he has, but you cannot deny that he is, by werewolf brute standards, a quite handsome fellow. The tall and muscular lupine beast has light brown fur and seems very proud of his physique, always standing up straight with his large chest puffed out. He could very well rival even Jett in strength, as you really cannot see anyone else with as much bulk as him other than the alpha himself. He does not wear anything to cover his sheathed bits, which hang heavily between his legs, and also seem to be bigger than most. However, his expression does not inspire confidence, making him seem not easily approachable. Whenever you pass by him, his crystal blue eyes only trace your figure with clear contempt.";

ElstanDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-3-1 - Elstan Talk

instead of conversing Elstan:
	say "     He barely seems to mind your presence when you try to address him, but he eventually turns to you with an unamused expression, 'What do you want?'";
	WaitLineBreak;
	say "[ElstanTalkMenu]";

to say ElstanTalkMenu:
	now ElstanDoneTalking is false;
	say "     [bold type]What would you like to talk about with Elstan?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the tough werewolf about himself";
	[]
	if Energy of Elstan > 0:
		choose a blank row in table of fucking options;
		now title entry is "The pack";
		now sortorder entry is 2;
		now description entry is "Ask about his feelings on the pack";
		[]
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 3;
		now description entry is "Ask about his sexual preferences";
	[]
	if Resolution of JettDominance is 2:
		choose a blank row in table of fucking options;
		now title entry is "Persuade Elstan to take Jett's spot";
		now sortorder entry is 99;
		now description entry is "Jett wanted you to persuade Elstan to take his spot while you did the deed. Shall you try";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[ElstanTalkHimself]";
				else if (nam is "The pack"):
					say "[ElstanTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[ElstanTalkSex]";
				else if (nam is "Persuade Elstan to take Jett's spot"):
					say "[ElstanTalkGiftJett]";
				wait for any key;
				if ElstanDoneTalking is false:
					say "[ElstanTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Elstan immediately starts to mind something else.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ElstanTalkHimself:
	say "     You want to know more about this werewolf, who seems sort of distant from everyone else apart from his friend. 'Why are you trying to get to know me? I don't date losers,' he replies, shrugging off any attempts of getting closer. You try to explain that it is nothing like that, you just want to know a bit more about himself. Knowing that he puts a lot of effort on his body, you compliment and appreciate his physique, which seems to get his interest somewhat. 'At least you have eyes. Fine, my name's Elstan. Remember it. And I'm the toughest werewolf brute you're ever gonna find, so you better also remember that.' He does not seem to lack in modesty, but you have a better idea of how to get him to keep talking.";
	say "     Reinforcing his ideas, you tell him that he does look really tough, probably even enough to rival the alpha all by himself. 'You mean Jett, the wannabe alpha? Pft, you want a real alpha, you come to me. I should be the one leading this pack. I have a much better idea where to put all these losers to work instead of fucking all day and hide like our lives depended on it. Stupid idea... We could have a fucking fortress, instead we're living in this underground shithole.' It seems he strongly disagrees with how things are done in here.";
	if Energy of Elstan is 0:
		now Energy of Elstan is 1;

to say ElstanTalkPack:
	say "     When asking him about the pack, he chuckles sarcastically. 'What pack? This ain't no pack, just a bunch of horny dogs. Jett doesn't put them to work, they don't do anything worthwhile, just fuck and eat all day... Pathetic. We could be shoving our dicks in literally every creature out there and make a real pack, our pack, much bigger. Then, we'd take over the entire city and we wouldn't have to hide in here like pussy cats! Could have all the shit we wanted with little effort. Demons, orcs, whatever you can think of, fuck them, they wouldn't stand a chance against us.' He really thinks strongly about this and you doubt there is anything you could do to change his mind.";

to say ElstanTalkSex:
	if Libido of Elstan <= 1:
		say "     There is no denying that Elstan looks really strong... and is actually very handsome for a werewolf. With this in mind, you decide to ask him about what he is most into, but he looks at you dead in the eye. 'How long will it take you to realize what I'm into?' he says, the a grin begins to show across his muzzle. 'Maybe I'll show you, one day... When you crawl [bold type]back to your place[roman type].' He says nothing more and just leaves you thinking. Does he mean the [bold type]oubliette[roman type]?";
		now Libido of Elstan is 1;
	else if Libido of Elstan is 2:
		say "     Given your last encounter, you tell him you would like to know more about his sexual interests, even though he gave you a glimpse of what really gets him going. 'Thought it'd be quite obvious when I brought you to my room. You still didn't get it? Dumb slut...' he chuckles when he insults you, not able to help himself but to smile. 'But that's alright. I'll know where to find your ass so I can keep reminding you.'";
		if player is submissive:
			say "     [italic type]And you blush, due to your submissive instincts, seeing how much he likes to belittle you. There is a lot of stuttering in your words afterwards, which amuses the werewolf. 'Oh... The little bitch likes being told [SubjectPro]'s a dumb slut? What a fucking loser...' The humiliation is real, but Elstan also begins to pop a boner, his crimson rod poking out of his thick furred sheath and rising up. 'You better start walking out of here while you can. I'll know where to find your ass when I feel like using it again.'";

Section 2-3-2 - Elstan Sex

instead of fucking Elstan:
	if Libido of Elstan <= 1:
		say "     You make an advance on Elstan, but he simply pushes you aside, looking angry. 'What the fuck do you think you're doing? You're not gonna get anything from me when you fucking want, bitch.' It looks like that will not work with him.";
	else:
		say "     You make an advance on Elstan, but he does not feel keen on letting you get any closer to him. 'What do you think this is? You ask and you get it? Fuck no. Go back to your hole and, if I feel like it, I might come pick you up.' It seems you will have to follow his rules if you want to get any of that meat again.";

Section 2-4 - Kirnon

Table of GameCharacterIDs (continued)
object	name
Kirnon	"Kirnon"

Kirnon is a man.
ScaleValue of Kirnon is 4. [normal sized]
Body Weight of Kirnon is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kirnon is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kirnon is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kirnon is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kirnon is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kirnon is 8. [length in inches]
Breast Size of Kirnon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kirnon is 2. [count of nipples]
Asshole Depth of Kirnon is 18. [inches deep for anal fucking]
Asshole Tightness of Kirnon is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kirnon is 1. [number of cocks]
Cock Girth of Kirnon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kirnon is 12. [length in inches]
Ball Count of Kirnon is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kirnon is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kirnon is 0. [number of cunts]
Cunt Depth of Kirnon is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kirnon is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Kirnon is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kirnon is false.
PlayerRomanced of Kirnon is false.
PlayerFriended of Kirnon is false.
PlayerControlled of Kirnon is false.
PlayerFucked of Kirnon is false.
OralVirgin of Kirnon is false.
Virgin of Kirnon is true.
AnalVirgin of Kirnon is false.
PenileVirgin of Kirnon is false.
SexuallyExperienced of Kirnon is false.
TwistedCapacity of Kirnon is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kirnon is true. [steriles can't knock people up]
MainInfection of Kirnon is "Werewolf Brute".
Description of Kirnon is "[Kirnondesc]".
Conversation of Kirnon is { "<This is nothing but a placeholder!>" }.
The scent of Kirnon is "     Kirnon smells masculine and beastlike, like a typical werewolf brute, except it is not a too strong of a scent. You do not feel particularly bothered by it and is, in fact, quite bearable.".

to say KirnonDesc:
	say "     This light-colored werewolf has a clear silver fur covering his muscular physique, and he does seem to be another bodybuilder, much like [if playermet of Elstan is true]Elstan[else]the other brute[end if] who he is almost always with, albeit overall smaller. He is also of average height, but his body looks especially fit from his waist down, namely his glutes and thighs, giving him a slightly different figure than most werewolves you can encounter in here. He also wears a loincloth, the standard underwear these werewolves wear, if any at all, and bulging somewhat less than the others. Attitude-wise, he often is focused on his own doings or thoughts and avoids eye contact with everyone.";

KirnonDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-4-1 - Kirnon Talk

instead of conversing Kirnon:
	say "     Once you announce your presence to the silver werewolf, he takes some time to acknowledge it, but eventually does turn to you and waits for you to say something.";
	WaitLineBreak;
	say "[KirnonTalkMenu]";

to say KirnonTalkMenu:
	now KirnonDoneTalking is false;
	say "     [bold type]What would you like to talk about with Kirnon?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the silver werewolf about himself";
	[]
	if Energy of Kirnon > 0:
		choose a blank row in table of fucking options;
		now title entry is "The pack";
		now sortorder entry is 2;
		now description entry is "Ask about his feelings on the pack";
	[]
	if Energy of Kirnon > 1:
		choose a blank row in table of fucking options;
		now title entry is "Elstan";
		now sortorder entry is 3;
		now description entry is "They seem to be very close. Ask him more";
	[]
	if Energy of Kirnon > 0:
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 4;
		now description entry is "Ask about his sexual preferences";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[KirnonTalkHimself]";
				else if (nam is "The pack"):
					say "[KirnonTalkPack]";
				else if (nam is "Elstan"):
					say "[KirnonTalkElstan]";
				else if (nam is "His sexual preferences"):
					say "[KirnonTalkSex]";
				wait for any key;
				if KirnonDoneTalking is false:
					say "[KirnonTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Elstan immediately starts to mind something else.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KirnonTalkHimself:
	say "     Curious about the silver-furred werewolf, you ask a few questions about himself, starting with his name, to get to know him better. He is not a beast of many words, but he does eventually speak. 'Kirnon's the name, and I don't really care enough to say more than that.' Before you cut the conversation short, you try to push a little bit more information from him, like commenting on his fit body. This bit of validation seemed to catch his attention a little. 'Yeah, well... I do workout. There's not a lot to do around here other than eating and that... It's pretty boring around here.' You then ask if he does not have any other hobbies or interests that he could indulge in to fight this boredom he speaks of.";
	say "     'Not stuff others would support. This place is filled with fragile masculinity. Yeah, I don't wanna talk about that.' You think you should drop the subject here.";
	if Energy of Kirnon is 0:
		now Energy of Kirnon is 1;

to say KirnonTalkPack:
	say "     You wonder what he has to say about the pack in general, so you decide to ask him about that. He does not need to think much on the matter and replies almost immediately, 'As I mentioned before, they're all insecure males. You gotta be tough, gotta be big and strong and whatnot to prove your worth among the pack... Fucking bullshit. I like the cook, though, he's cool and makes good food. Doesn't really care about what others say and keeps to himself. Other than that, I think the pack as a whole serves no real purpose other than just existing.' He then glances around, before leaning towards you and speaking with a low tone, almost whispering, 'I don't really agree with Elstan's ways, though. Jett isn't perfect, but Stan's got some thirst for conflict that I'm not a big fan of. He gets grumpy if I disagree with him, though. Just keep this between us.'";
	if Energy of Kirnon is 1:
		now Energy of Kirnon is 2;

to say KirnonTalkElstan:
	say "     Given that both him and Elstan seem to hang out together pretty much everytime, you decide to ask Kirnon about their relationship. 'We... are friends, and were ever since high school. Stan was this typical basketball jock, popular with the girls... and also some guys, besides the ones that looked up to him. We met after he started dating a friend of mine, when she introduced us, by the time their relationship was serious. When we went to college, things got weird. They broke up, and I had been hanging out with him for a while during the time they were together, so I felt the need to also give him support. This got us closer and... Yeah, that's pretty much it.'";
	say "     Seeing that he seems to hold some reserves on how to classify his friendship with Elstan, you ask him if they are really just friends or if there is something else more complicated. He shifts his gaze away from you and grunts, but after a brief silence, he replies, in a very low tone, 'Being turned into werewolf brutes made him figuratively blind and even more egotistical. When I tried to tell him I felt... differently towards him, he just shrugged it off. The next night I found him humping my ass in my bed, saying he wouldn't mind a sex bud. He totally missed the fucking point.' You can tell they share some sort of sexual intimacy, but it is not what Kirnon truly wanted. He refuses to continue this subject any further and presses you to change it.";
	if Energy of Kirnon is 2:
		now Energy of Kirnon is 3;

to say KirnonTalkSex:
	if Libido of Kirnon <= 1:
		say "     You ask Kirnon about his sexual preferences, curious about what he has to say. 'Yeah, uh... I'm not really talking about that, uh... in here. Maybe... if we're somewhere else. Look, if you go [bold type]below the pit[roman type], I can just grab and take you somewhere private when I have the time. That's safer.' It is unusual behavior for a werewolf to be so reserved regarding their sexuality, but Kirnon seems keen to only reveal that bit about himself when you [']volunteer['] as slave. Perhaps a brief stay at the [bold type]oubliette[roman type] would be in order?";
		if Libido of Kirnon is 0:
			now Libido of Kirnon is 1;
	else if Libido of Kirnon is 2:
		say "     Having had a better demonstration of what Kirnon really likes sexually, you tease him a bit about it, asking him to tell you more. 'You've seen what I'm into, now keep your mouth shut about it. I don't just reveal that to anyone, and if Stan knows you-... Just don't mention it again. Ever.' He really seems to want to keep that fact about him a secret, especially from Elstan... Or did you get that wrong? Nonetheless, you probably should not keep provoking him.";

Section 2-4-2 - Kirnon Sex

instead of fucking Kirnon:
	if Libido of Kirnon <= 1:
		say "     You try to make a move on Kirnon, but he seems very uninterested. Perhaps you should talk to him first? Or maybe find a way to have him approach you, instead...";
	else if Libido of Kirnon is 2:
		say "     As you have been together before, you feel confident enough to make a move on the silver werewolf. He does not push you away, but seems hesitant to accept. 'We... best not do that openly. I'll know where to find you if I'm in the mood.' It looks like you will still have to wait for him in the oubliette, but you feel that in a near future you will be able to get something more out of him.";

Section 2-5 - Wyatt

Table of GameCharacterIDs (continued)
object	name
Wyatt	"Wyatt"

Wyatt is a man.
ScaleValue of Wyatt is 4. [normal sized]
Body Weight of Wyatt is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Wyatt is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Wyatt is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Wyatt is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Wyatt is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Wyatt is 8. [length in inches]
Breast Size of Wyatt is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Wyatt is 2. [count of nipples]
Asshole Depth of Wyatt is 16. [inches deep for anal fucking]
Asshole Tightness of Wyatt is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Wyatt is 1. [number of cocks]
Cock Girth of Wyatt is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Wyatt is 16. [length in inches]
Ball Count of Wyatt is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Wyatt is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Wyatt is 0. [number of cunts]
Cunt Depth of Wyatt is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Wyatt is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Wyatt is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Wyatt is false.
PlayerRomanced of Wyatt is false.
PlayerFriended of Wyatt is false.
PlayerControlled of Wyatt is false.
PlayerFucked of Wyatt is false.
OralVirgin of Wyatt is false.
Virgin of Wyatt is true.
AnalVirgin of Wyatt is true.
PenileVirgin of Wyatt is false.
SexuallyExperienced of Wyatt is true.
TwistedCapacity of Wyatt is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wyatt is false. [steriles can't knock people up]
MainInfection of Wyatt is "Werewolf Brute".
Description of Wyatt is "[Wyattdesc]".
Conversation of Wyatt is { "<This is nothing but a placeholder!>" }.
The scent of Wyatt is "     Wyatt's scent is nicely masculine, albeit beastlike, and it is quite pleasant. You feel like this would attract a specific kind of people.".

to say WyattDesc:
	say "     This werewolf seems quite fit and tall, even among the others, though not nearly as hardcore as some, with nicely-sized muscles shaping up his athletic physique under that soft dark grey fur, not too big nor too diminutive. You can tell he takes quite good care of himself. He walks around with only a loincloth, which bulges somewhat, and seems to keep mostly to himself, though looks fairly approachable still. He has a pair of bright green eyes that instantly scan you once you lay yours on his figure, as if examining you back, with little subtlety. Maybe he does not care to be so, and once you are done inspecting him, he shifts his gaze back to some trinket he has in hand.";

WyattDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-5-1 - Wyatt Talk

instead of conversing Wyatt:
	say "     You approach the werewolf with the intent to talk to him, and he reacts positively. 'Hey there, [mister]. Is there something you need?'";
	WaitLineBreak;
	say "[WyattTalkMenu]";

to say WyattTalkMenu:
	now WyattDoneTalking is false;
	say "     [bold type]What would you like to talk about with Wyatt?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the athletic werewolf about himself";
	[]
	if Energy of Wyatt > 0:
		choose a blank row in table of fucking options;
		now title entry is "The pack";
		now sortorder entry is 2;
		now description entry is "Ask about his feelings on the pack";
		[]
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 3;
		now description entry is "Ask about his sexual preferences";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[WyattTalkHimself]";
				else if (nam is "The pack"):
					say "[WyattTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[WyattTalkSex]";
				wait for any key;
				if WyattDoneTalking is false:
					say "[WyattTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Wyatt gives a polite nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WyattTalkHimself:
	say "     You ask him about himself, as you intend to get to know him a bit better, and he seems happy to tell you a few things. 'Sure thing. I'm Wyatt, nice to meet you.' He then nods as you also introduce yourself. 'Someone with manners is a rare sight these days. Most just wanna get down to fuck on spot and don't bother getting to know who they're fucking with. I'm glad you're different... Or at least you gave a good first impression.' He puts on a cool smile as he leans back against a wall. 'You're like... sort of Jett's guest or something? I'm cool with that. It's nice that he doesn't mind different people visiting us occasionally. Most people who end up being brought here either want to say on that pit hole or run away.'";
	say "     This is not strange, as many succumb to their desires easily or panic right away and try hard to flee. You tell him you are just different and prefer keeping an open mind. 'An open mind, you say? That's refreshing to hear. I think you and I could get along just fine, [mister].";
	if Energy of Wyatt is 0:
		now Energy of Wyatt is 1;

to say WyattTalkPack:
	say "     Wondering what his ideas on the pack are, you ask him if he would be willing to share his perspective. He keeps his voice low and you just know he is going to share some unpopular opinion. 'There's too many dudes in here! Not that it's an issue or anything like that, but... I mean, yeah, since I've been made a werewolf I kinda let other dudes blow me if I'm really needing something soft around my cock, but seriously, where are all the chicks? Couldn't we also have these big tit werewolf ladies? Weird fucking thing. Sometimes I need pussy and I gotta... find some myself... somehow. I'm not confident enough to tell this to Jett and hope he'd understand, besides... he has bigger concerns.";
	say "     Although, you have to tell him that you meant this question to be directed towards the pack's dynamics, to which he then continues to speak. 'Ah, the pack itself is fine. I mean, there's some people who disagree with how stuff is done around here, others who are more than fine to not do shit, eat and fuck all day... I'm chill as long as we get by without any trouble. My only issues are what I mentioned just before... Yeah, it can get tough for me just because of that, but I know I'm probably the only dude who thinks this way. Guess this ain't Jett's fault, we just end up turning every slave we fuck into werewolves if we fill them up... And sometimes, that just can't be helped, you know? You gotta just finish inside... Uh, so, yeah, pack dynamics, there's that.'";

to say WyattTalkSex:
	say "     As you consider Wyatt's possible sexual preferences, you ask him to talk to you about them. 'Well I'm frickin' crazy about a nice pair of tits and a juicy wet pussy I can bury my whole dick inside. Seriously, I'm a simple dude! But I guess if there's some guy who's willing enough to please then I could have him suck me off. A tight ass also works... a hole's a hole, a mouth's a mouth, and if you're good you're good. Guess being a werewolf opened my sexuality a bit, but I still really like women and they seem non-existent in this pack. I considered leaving, but... really there's nowhere for me to go and food's good. Guess it ain't too bad, really, I just gotta get creative.'";
	if player is female and breast size of player > 0:
		say "     'Although... I definitely wouldn't say no to you, [mister]... You've got at least a few things I like. And you're pretty good looking.' He winks at you with a confident smirk.";
	if Libido of Wyatt is 0:
		now Libido of Wyatt is 1;

Section 2-5-2 - Wyatt Sex

instead of fucking Wyatt:
	if Libido of Wyatt is 0:
		say "     You think about making a move on him, but looking at him again, you realize it might not be a good idea to do such a thing without speaking to him first.";
	else:
		if "Player Male to Female" is listed in traits of Wyatt: [variant for players Wyatt knows he transformed]
			if FaceName of Player is "Husky Bitch" and BodyName of Player is "Husky Bitch" and Player is purefemale: [Player retains their female husky appearance]
				now Perception of Wyatt is 2; [Happens when player makes a move on Wyatt while looking like a Husky Bitch after MtF. Wyatt will remember the player as such the last time they had sex]
				if lastfuck of Wyatt - turns < 4:
					say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. 'Hey hottie... Do you mind coming back later? Right now I'm a little spent, sorry... But I promise to make it up to you.'";
				else:
					say "     You make a move on Wyatt, and he seems more than receptive to you. 'How's my favorite husky lover doing? I like that you keep taking good care of yourself... In fact, that alone gets me in the mood. What did you have in mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else if player is female and breast size of player > 0:
				if lastfuck of Wyatt - turns < 4:
					if Perception of Wyatt is 2: [first time Wyatt sees player as something other than female husky since the transformation or a time he saw the player looking like a female husky]
						say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. Plus, he notices your different appearance. 'Hey hottie... Uh... You look a bit different! Have you been taking care of yourself properly? I'd... recommend you don't get near any other males because... I would hate to see you lose those hot feminine curves of yours.' You tell the athletic werewolf that everything is still in place, despite the changes you have gone through lately. 'That's alright, you're still hot, and I'd still fuck you senseless... if I wasn't so spent from last time. Mind, maybe... coming back later? I promise to make it up to you.'";
						now Perception of Wyatt is 1; [still perceives the player as female, now knowing they look different, thus no longer commenting on that fact as long as it persists in this state]
					else if Perception of Wyatt is 1:
						say "     You make a move on Wyatt, but given that you have been together recently, he seems a little hesitant. 'Hey hottie... Do you mind coming back later? Right now I'm a little spent, sorry... But I promise to make it up to you.'";
				else:
					if Perception of Wyatt is 2:
						say "     You make a move on Wyatt, and he seems more than receptive to you, despite your different looks since he helped you transform. 'Oh, hey there... I see you've gotten a little different! Have you been taking care of yourself properly? I'd... recommend you don't get near any other males because... I would hate to see you lose those hot feminine curves of yours.' You tell the athletic werewolf that everything is still in place, despite the changes you have gone through lately. 'Ah, screw it, you're still hot and I still wanna fuck you. What did you have in mind?'";
						now Perception of Wyatt is 1;
					else if Perception of Wyatt is 1:
						say "     You make a move on Wyatt, and he seems more than receptive to you. 'How's my beautiful lover doing? At least still keeping away from nasty transformatives, I see. That's really good... So, what did you have in mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else: [player did not maintain the gender nor the transformation, may lead to a special MtF scene reusing the original scene for an easily accessible and complete Husky Bitch TF]
				say "     You attempt to make a move on Wyatt, but given the changes you have gone through, completely altering your appearance and body in the process, he does not reciprocate in the way you would wish. 'Uh... I see you went back with your decision... That's fine, I guess, uh... If that's what you want. Although I can't say it gets me in the mood, sorry. If you wanna keep having fun with me, you gotta put in the effort. Maybe just think on what you'll be missing out.' It seems the werewolf is turned off by your change in looks, although he does not seem to have gone away yet.";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Apologize for not being cautious about your transformation.";
				say "     ([link]N[as]n[end link]) - Excuse yourself.";
				if Player consents:
					say "     Guilt strikes you as you perceive the disappointment in Wyatt's eyes, and you are quick to apologize to him for your carelessness. 'Hm... If you really mean it, then maybe we can still fix that...' He approaches you slowly, locking his gaze on yours, then as you feel his touch above your shoulder, he pulls you to him, closer to that strong body covered in soft dark grey fur. 'Let's head over my bedroom. I'll give you what you need.' Before you know it, he has a strong hold of you as you are led to his private quarters...";
					WaitLineBreak;
					say "[WyattSpecialMtF]";
				else:
					say "     As it seems, Wyatt is not keen on having any fun with you looking the way you look, so you simply excuse yourself and leave. 'Oh, so that's it? You're just leaving? And here I thought we had something going on since that... Well, whatever. Just hope you're happier, at least.' He then says nothing more as you simply proceed to retreat.";
		else:
			if player is female and breast size of player > 0:
				if lastfuck of Wyatt - turns < 4:
					say "     You make a move on Wyatt, but given your recent exchange, he dismisses your advances. 'Yeah, I'm sorry. We're fucking horny all the time, but even us werewolf brutes need some time to cooldown, you know... But you can come back later.'";
				else:
					say "     You make a move on Wyatt, and he seems more than receptive to you. 'Oh, so you wanna have some fun together, eh? I'm down. What's on your mind?'";
					WaitLineBreak;
					say "[WyattSexMenu]";
			else:
				if lastfuck of Wyatt - turns < 8:
					say "     You make a move on Wyatt, but due to your recent exchange, he dismisses your advances. 'No, I'm not feeling like it. I already had enough. Try some other dude around here, they may be more than happy to take on your offer.'";
				else:
					say "     You make a move on Wyatt, which despite his preferences, seems to get him thinking. 'Well... You do seem nice enough and willing to make me feel good. I guess we can do something...'";
					WaitLineBreak;
					say "[WyattSexMenu]";

to say WyattSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Compliment his body";
	now sortorder entry is 1;
	now description entry is "Show him appreciation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to blow him";
	now sortorder entry is 2;
	now description entry is "Give Wyatt a blowjob";
	[]
	if player is female and breast size of player > 0 and Resolution of WyattRomance >= 1 and Resolution of WyattRomance < 99:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Allow Wyatt to give you some oral";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Get some vaginal sex";
		now sortorder entry is 4;
		now description entry is "Ask the werewolf to fuck you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Ask him to dominate you";
		now sortorder entry is 5;
		now description entry is "You are looking for something rough. Perhaps he would be in the mood for that";
	[]
	if player is not female and breast size of player is 0 and Libido of Wyatt >= 3: [for males, basically. Unlocked after having sex with Wyatt at least 2 other times]
		choose a blank row in table of fucking options;
		now title entry is "Ask him if he would fuck you";
		now sortorder entry is 6;
		now description entry is "You may end up with more or less than you ask for, but well... should you";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Compliment his body"):
					say "[WyattSexBodyWorship]";
				else if (nam is "Offer to blow him"):
					say "[WyattSexBlowjob]";
				else if (nam is "Have him lick your pussy"):
					say "[WyattSexFemaleCunnilingus]";
				else if (nam is "Get some vaginal sex"):
					say "[WyattSexFemalePussyFuck]";
				else if (nam is "Ask him to dominate you"):
					say "[WyattDominantSexFemale]";
				else if (nam is "Ask him if he would fuck you"):
					say "[WyattDominantSexMale]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself, as you have changed your mind. He simply nods, albeit visibly disappointed.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say WyattSexBodyWorship:
	say "     Looking over Wyatt's impressive physique, a thought crosses your mind as your eyes travel through his musculature, admiring every inch and corner of his mighty lean strength. The interest is evident in your gaze and the werewolf is quick to notice. 'Well, you've been looking at me for a while, is there anything you wanna say?' he asks, although you can tell the intentions behind his words as he gives you a teasing grin, bringing his paw-like hands over his hips and putting his muscular furred chest in full display. He even makes his pecs bounce with a great deal of amusement as he waits for an answer, noticing your eyes following the motions. When your focus finally returns, you tell him that you just think his body is quite attractive.";
	say "     He raises his arms and brings his hands behind his head, giving your yearning sight a bit of muscle flexing to show off a bit more. 'Is that so? I couldn't tell by the way you're looking at me or anything...' his tone is clearly sarcastic, but the amusement in his expression leads you to believe he actually likes this";
	if player is female and breast size of player > 0: [female scene]
		say ". 'So you like muscular guys? Strong and lean like me? Bet these muscles would feel amazing around that pretty body of yours... Well, you've got something I like too,' he means your breasts, as his eyes also stare back at you. Just the idea of the confident beastman in front of you taking interest in your body makes you unexplainably bothered, leaving you to figure out if you either like it or not. You also think his loincloth is hanging a little higher than usual.";
		WaitLineBreak;
		say "     'Tell you what... I'll let you touch me if you let me touch you. And there's no backing away once you're within my reach... But don't worry, I'll treat you right. The way none of these brutes can do...' You exchange looks silently for a while after he finishes speaking, and the decision lies on you to, perhaps, enjoy a body worship session. You will give Wyatt something to play with too, judging by the way he so thirstily looking at your tits.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Readily approach him.";
		say "     ([link]N[as]n[end link]) - Try to cut this out.";
		if Player consents:
			say "     There is no way you can resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. Take what you want.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. You get so distracted feeling up the bump of muscle that you barely notice him moving his hand over your chest, giving your breasts a firm, yet gentle, squeeze, followed by a sequence of rubbing that nearly gets you moaning. 'A deal's a deal,' he says, although you can tell this turns him on.";
			say "     'Nice ones you've got... But as you were so hypnotized by my body, how about you rub it all over? It might earn you a [']little['] reward in the end.' You have little to say against the werewolf's suggestion...";
			WyattSexBodyWorshipContinued;
		else:
			say "     You really only intended to compliment him, which led you to inadvertently let the whole situation escalate. As you realize this might get to something you do not want at the moment, you try excusing yourself and apologize Wyatt for the awkward moment. He drops the cocky attitude the minute you express discomfort. 'Oh, no worries... Maybe I misread your intentions and that's on me. Although... you can look at me anytime, I don't mind it at all,' he replies, smiling, as he still confidently stands, yet no longer explicitly teasing you with his body. 'Or perhaps some other time, then? Well, I don't intend to insist, but... I confess I'd like to spend some good time with you. Frankly, you're hot... And really nice...' His voice changes to a low, velvety and smooth tone at his last words.";
			say "     He still hopes to change your mind, with smooth talk and bedroom eyes, while patiently awaiting any further words from you.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Change your mind and, even if hesitantly, step towards him.";
			say "     ([link]N[as]n[end link]) - Keep your decision and excuse yourself.";
			if Player consents:
				say "     In your own defense, it is hard to resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. Take what you want.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. You get so distracted feeling up the bump of muscle that you barely notice him moving his hand over your chest, giving your breasts a firm, yet gentle, squeeze, followed by a sequence of rubbing that nearly gets you moaning. 'A deal's a deal,' he says, although you can tell this turns him on.";
				WyattSexBodyWorshipContinued;
			else:
				say "     Deciding to keep your decision, you thank him for the compliment and excuse yourself once more, indicating him that you shall be leaving. He does not hide his disappointment, but makes no further attempts at convincing you. 'Alright, then. Thanks for coming by! You're a really nice sight to have any time of the day.' The werewolf then nods as you head somewhere else.";
	else: [male scene]
		say ". 'So you're into muscular guys, huh? Bet you wished you were this hot and lean... Or maybe you just like being handled like a good little bitch by a stronger dominant male.' Now, Wyatt is clearly provoking you, however, you cannot help but keep staring, the whole situation leaving you unexplainably bothered. 'You're just desperate to feel me up all over, ain't that right? Heh... I can't really judge you. All the other werewolves are so readily available to fuck anyone who offers on request... it gets boring after a while. So easy to get...'";
		WaitLineBreak;
		say "     He keeps putting on a show by flexing his bulging biceps while looking at you right in the eye. 'Although, seeing you looking at me like a sad puppy makes me feel bad... So I might let you touch me. Maybe you just need to get closer to a real man to realize you might better fit the role of a female... I mean to just give you something to consider, of course.' You exchange looks silently for a while after he finishes speaking, and the decision lies on you to, perhaps, enjoy a body worship session. Alternatively, you can just walk away, in case you do not like the tone of what is happening.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Readily approach him.";
		say "     ([link]N[as]n[end link]) - Cut this out.";
		if Player consents:
			say "     There is no way you can resist such a handsome werewolf, especially when he is purposefully teasing you. In fact, you do not even give it much thought as your body begins to bring you closer, step after step. Wyatt only observes you moving, then slowly raises his arms once more. 'Come on, don't be shy. I know you wanna feel me up.' As temptation takes the reins, you place your hands over the werewolf's biceps, which puts a grin of mischief in his muzzle. 'Strong and solid, aren't they?' he asks, flexing them against your palms. 'I guess you could be a good [boygirl] for me and make sure I enjoy a nice massage. Bet you wouldn't want to waste such a generous offer...' he suggests, knowing you have little to say against it.";
			WyattSexBodyWorshipContinued;
		else:
			say "     You really only intended to compliment him, which led you to inadvertently let the whole situation escalate. As you realize this might get to something you do not want at the moment, you try excusing yourself and apologize Wyatt for the awkward moment. He hears you and laughs, playing it cool even after you have expressed discomfort. 'That's alright, I'm happy to have given you something to remember, at least. I guess I'll see you around, then.' The werewolf then drops his pose, pats you on the shoulder and lets you leave.";

to WyattSexBodyWorshipContinued:
	WaitLineBreak;
	say "     Being given green card to simply feel up the handsome wolfman means you can really just go all out. As you have given his biceps a good amount of rubbing, your hands begin to trail towards his furred chest. His pectoral muscles are quite sizable, not bodybuilder sized but still of a significant measure. They feel solid against your touch, but the soft fur, shorter and brighter in this section, improves this pleasant experience. Everytime he breathes in, you feel his chest expand, all while you keep rubbing his pecs. Eventually, you reach out for his nipples, which turn out to be somewhat sensitive to the werewolf. 'There's something you could do...' he speaks as you feel him reaching for the back of your head, slowly pulling you closer to his chest.";
	say "     He does not stop it until your lips collide with the surface of one of his furred pecs, then led to that very same nipple you were teasing just a few moments ago. 'Just helping you free your hands...' The werewolf smiles as you bring your tongue into play, wiggling it across that sensitive nub as you proceed to move your hands across the sides of his torso. As any werewolf brute, he is big[if scalevalue of player > 3], even for you[end if], due to how well he takes care of his body. All those muscles had a nice mass overall, which you feel up at every corner while your lips remain planted on his pecs. You also give his abs a rub, noticing how popped and rock solid they are, ondulating your touch with every bump of muscle.";
	WaitLineBreak;
	say "     With your focus so taken by such a beautiful body, you take some time to notice movement happening through one of his arms. Between you and him is his hard cock, which you turn down to look at. He is jerking himself off as you worship him, and given how hard it looks, everything points towards that you are doing a good job. Soon enough, Wyatt gently pulls your face back to his pecs, wanting you keep licking at his nips. 'Keep up the good work, [mister]...' This is all the encouragement you need to do your very best at moving your tongue around them, feeling his deep breaths pushing against your mouth while your head keeps locked between that large slab of muscle and the thick paw-like hand.";
	if player is female and breast size of player > 0:
		say "     'I could breed you all fucking day... Make you mine forever. Fuck, I know I want to...'";
	else:
		say "     'I could almost fuck your ass, [boygirl]... Maybe I will, if you keep being this well-behaved...'";
	WaitLineBreak;
	say "     Amidst his lusty words, he hastens his movements, jerking faster and faster. You think he might be getting closer, and your hands cannot have enough of that hot body, continuing to rub him all over while you are still stuck sucking on his chest. 'Yeah, worship me... You wanted it, and now you have it...' It comes to a point you also feel his entire body moving as he strokes so fast and hard, breathing deep and moaning lowly. You feel the pressure on the back of your skull disappearing as Wyatt brings his hand over his, and unsure if by a product of lust or sheer willingness to please in any way, you move your face over his furred armpit. His cock throbs compulsively then, his abs harden and he gets a bit louder, all a sign that you must have just done something he really, really likes.";
	say "     'Fuck...! I'm gonna c-...! A-aah...!' the werewolf moans as he shoots his load right across you, his spurts of thick lupine cum ending up in the floor at a significant distance from where you both are standing. They are a significant amount, and his climax lasts for almost a full minute. He can barely keep standing as his legs bend, his fists clench, his whole body tenses up and he nearly begins howling. 'Oh fuck... I made a mess... Wasn't expecting this to turn me on so much. Shit, I better clean it up before someone comes by...' He takes a few last deep breaths as he squeezes the last drops out of his cock, contemplating the next minutes he will spend trying to clean the floor.";
	WaitLineBreak;
	if player is female and breast size of player > 0:
		say "     'Thanks, hottie. That was fucking hot... I promise that one of these days I'll pay you back. You're not gonna want to leave...' he teases, giving you a wink and light tap on your butt while you are within his reach. It is probably for the best to leave Wyatt to his cleaning before someone, indeed, comes by and sees all this mess.";
	else:
		say "     'You're off the hook for now, [mister]... But keep staring at me like that and I might have to do something about it. I might be straight, but a hole's still a hole...' He shows you such a predatory glare that it gives you the chills, and suddenly you are not sure if this arouses or absolutely terrifies you. Still, you nod to him and decide to leave him be, as he has a lot of cleaning to do.";
	NPCSexAftermath Wyatt receives "Other" from Player;
	if Libido of Wyatt < 3:
		increase Libido of Wyatt by 1;

to say WyattSexBlowjob:
	say "     As you wonder what you would like to do with the athletic werewolf brute, you consider asking him if he would like to simply get blown, since you feel like giving him a blowjob.";
	if player is female and breast size of player > 0:
		say "     Given that your appearance is feminine enough for him, he seems very excited to hear your offer. 'Oh, for sure! I love getting my dick sucked by cuties like you... Damn, it's already getting me hard, just thinking about it.'";
	else:
		say "     He looks back at you, seemingly amused at your offer. 'Well, I won't say no to an eager cocksucker... and I could use the relief. Just hope you can handle it, my [guygal].'";
	say "     With the exchange of words done and intentions revealed, you move towards Wyatt as he beckons you to move to a more relatively private area with him. The werewolf locks his bright green gaze on your eyes and lets you descend upon him, as he tosses his loincloth to the side. Before you, there is a large furred sheath with a thick red tip poking out, soon coming out and growing bigger by the second. He leans back against the wall and lets you do what you want, as his half-hard meat hangs in front of you.";
	say "     Looking up at him, as if seeking his permission, he then nods as you proceed to bring your lips over to his cock. The feeling of your mouth soon enveloping its sensitive surface makes the dark grey werewolf grunt in pleasant surprise, You get your hands around his balls, only giving them a gentle squeeze and rubbing, as you keep on kissing and licking his dong. You opt for a slow approach, giving his manhood a lot of affection until you ensure it is fully hard, throbbing and yearning for something more. When that is the case, you then move to allow his cock past your lips and begin to suck it, letting it in progressively deeper until it fills your mouth completely. 'Guess you know what you're doing! Keep going...'";
	WaitLineBreak;
	say "     Wyatt's cock is rock solid by the time you are tempting it to go further towards your throat, its girthy shape giving you enough challenge to keep things interesting. With your hands, you continue to caress his sack and stroke at the base of his shaft as you get as many inches as you can of his length in your mouth. You never put your tongue to rest either, as it incessantly wiggles and loops around his dick, with your only intention being to bring him pleasure. He notices your dedication and smiles, observing your work from above and enjoying every second. Occasionally, he lets out a moan as the blissful sensations get the better of him, eventually leading him to simply give in to how good it feels.";
	say "     'Feels fucking amazing... You're good at this!' he exclaims joyfully as you continue to suck him, doing your very possible best at pleasing the werewolf with your mouth. 'Keep that up and I'll give you something...' Your reaction to his words is to pick up the pace and suck him harder, deeper than before and going faster with your strokes, which seems to entertain him. The smug smile on his face slowly turns into an expression of pure lust as you sense his climax nearing. Finally feeling it coming, the werewolf puts his hands on the back of his head and flexes his entire torso hard, readying himself for the surge of pleasure that is about to come. 'Fuck, you're gonna make me cum... Really soon...!'";
	WaitLineBreak;
	say "     His body does not fail his words, and soon enough, you feel his whole junk throbbing in your hands and mouth. Wyatt clenches his fists and flexes his entire body as the first gush of thick werewolf cum comes generously filling your mouth with a single spurt, then another, as hard as the previous, and you struggle to keep it all in. Eventually, the rest gushes out of your mouth and coats the entire lower half of your face, dripping down and, in general, making a mess. Your mouth remains completely filled up with the beastman's cum as he looks down on you with a satisfied grin, after catching his breath. 'Phew, that was a mouthful. I tried to warn you...' You nod as you wonder what to do with the cum in your mouth.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Swallow.";
	say "     ([link]N[as]n[end link]) - Spit it out.";
	if Player consents:
		LineBreak;
		say "     Thinking that spitting his cum out would be rude, you instead swallow it, the thick creamy liquid slowly making its way down your throat, leaving its typical aftertaste lingering at the back of your tongue.";
		if player is female and breast size of player > 0:
			say "     'Don't drink too much of it. I wouldn't want to have you lose that pretty face and become all burly and hairy... But I don't mind feeding you some more any time.' Wyatt then smiles as you head off to clean yourself up.";
		else:
			say "     'Glad we could find something pleasant for both. I suppose if you tend to do a good job consistently, you may have more of where it comes from.' Wyatt then smiles as you head off to clean yourself up.";
	else:
		LineBreak;
		say "     You think you would rather not swallow the cum that happened to enter your mouth and, instead, spit it out. Wyatt just laughs at you. 'What, was that too much for you to handle? Thought you would like its taste. Maybe I should have a talk with the cook to make some of that pineapple stuff.' He then smiles as you head off to clean yourself up.";
	NPCSexAftermath Player receives "OralCock" from Wyatt;
	if Libido of Wyatt < 3:
		increase Libido of Wyatt by 1;

to say WyattSexFemalePussyFuck:
	say "     You give the handsome werewolf a suggestive look as you step towards him, leading his gaze over your feminine body, then even lower. Once you are close enough, you whisper to him that you would like to be properly taken by him and allow him access to your goods, which inevitably react to the anticipation. Your sex grows moist and aroused as you approach the athletic wolfman, even more after seeing his happy expression facing your proposal. 'Did I hear that right?' he asks ask he grabs you by the hips, pulling you to him, a sudden lust bringing him to kiss you in the lips. His advance leads him to push you against the wall and pin you against it, to then bring his large hands lower to lift you.";
	say "     His kisses are passionate, fiery and intense, his tongue twirling around yours in an almost animalistic manner, and you can only wrap your legs around him as the tip of his cock begins to poke at your wet curls. It throbs, warm and thick, wanting to enter you immediately, but Wyatt seems to hold on for now. He continues to kiss you, then licks around your neck, only allowing his shaft to rub against your pussy. Albeit persistently, the werewolf remains contained in his actions, first taking his time to truly appreciate your body. His mighty physique contrasts with your softness and feminity, and his surprising strength keeps you placed way above the ground and against the wall with seemingly no effort.";
	WaitLineBreak;
	say "     Then, with a thrust, you begin to feel his determination to delay the inevitable falter, as the tip of his lupine cock begins to push against your lower lips. 'I wanna fuck you so bad...' he whispers, almost moaning, desperate to get inside you. Seeing no reason to stop him, you let him in, moving the lower half of your body against his member to show that you welcome him. Getting your message, he begins to thrust in once more, this time successfully pushing the tip of his cock into you. Soon, more of his shaft follows, pushing your womanhood open and making space for the girthy meat yearning for your moist insides. 'Feels so good... I'm gonna fuck you hard and deep...'";
	say "     His breathing deepens, as in preparation for what is coming next, and he indeed shows his determination to fulfill his word once you feel him push as much of his cock as he can into you, holding you in place for him to do his deed without any resistance, voluntary or not. His sizable member continues to drill you, only being pushed back out once it cannot go any further inside, and then the act is simply repeated, slowly at first. This gives you shivers of bliss all over, the touch of his cock deep within your womanhood, its girth enough to open you up delightfully... And then, the werewolf embraces you, pulling you close to him, tightly, as he steadily begins to pick up the pace.";
	WaitLineBreak;
	say "     'You feel so amazing...' he mindlessly mutters close to your ear, pushing into you deep as he begins to build up some roughness, lust starting to seriously overtake him. Although, you see no reason to care, as each time he pounds you deep, you only feel better and better. He does not just thrust back and forth like an inexperienced top would do, no, Wyatt actually has a serious hip moving game that seriously threatens to drive you crazy. You cannot quite tell the way he is doing it, but you feel every inch and corner of your feminine sex expertly stimulated by his cock, which goes straight into just the right spots. He might actually be catching up to your body language, as everytime you quiver in his arms, he seems to [']do that thing['] again and again...";
	say "     The closest you can describe his movements is as a mix of almost circular thrusting and grinding, as if he just knows where you need his cock to be. 'You like it when I do that?' he asks, not letting go of his passionate way of love making with you, not even as your pleasure becomes so overbearing you lose the ability to speak, only to be replaced by moaning. In fact, that fills him up with newfound motivation to carry on fucking you senseless, even faster and harder, your focus shifting away from his expert ways of taking you and more into his sheer might and strength, as the way he does it seems so effortless. You are only there, held by him, helpless, every thought of yours dissipating into only absolutely blissful lust.";
	WaitLineBreak;
	say "     He then decides to carry you away from the wall and onto a more comfortable surface, only to pin you down under his strong furred body. One of his thick arms is placed around the back of your neck as you feel your whole self nearly squished under him, only your legs remaining wrapped around the male's waist. Wyatt does not drop his gentleness when handling you, but his size compared to your more delicate frame is enough to make you feel powerless. Now, he has the full angle he needs to properly fuck you as he pleases, pleasure intensifying the faster he goes at it, pounding you not just like a battering ram, but also as an experienced love maker. The wolfman then stares deeply into your eyes for brief moments... and you feel his cock throb compulsively.";
	say "     'Ooh fuck...!' You hear him grunt, stalling his movement for a second, as if hesitating about something that you know is inevitably drawing closer...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Pull him to you, beg for it, do absolutely anything it takes for him to finish inside you.";
	say "     ([link]N[as]n[end link]) - Let him pull out.";
	if Player consents:
		say "     It should not be such a surprise for him that you end up touching him back, begging him to fill you, after he fucked you so good. However, you did not expect him to react to that so fast, somehow pushing his entire length in and properly knotting himself into you. 'Fuck it, I'm gonna breed you like- FUCK...!' he fails to finish his sentence before shooting his load straight into your womb. Each spurt is so powerful that you definitely feel it gushing into you, even as your own climax hits you like a truck running you over (figuratively), causing your body to quiver and squirm at the sheer amount of pleasure surging through you. Inevitably, you moan loudly as he fills you up more and more, his orgasm lasting for almost a full minute of non-stop cumming. These werewolves surely pack a lot in those large balls of theirs...";
		say "     'Fuck... I hope I don't regret it... But it felt so good...' he says, finally resting his body on top of yours. The weight of his bulk still keeps you from moving, but at least, you are comfortable snuggling with the werewolf brute as he patiently awaits for his knot to deflate. 'You're incredible... I wanna knock you up more often... Maybe even make some wolf pups with you...' he says, chuckling in the end, likely in a joking tone. 'It'd be fun breeding you over and over, though... I've always wanted to be a dad and raise kids with a beautiful woman... I wouldn't have to look for one if I just had you.' Now, you do not think he is joking anymore, and that reminds you of the massive deposit of werewolf cum that was just delivered into your womb.";
		WaitLineBreak;
		say "     'I admit, I may actually enjoy the idea of being a pack alpha, as long as my future pup bearer is willing to stick around. Maybe one day...' He says nothing more before kissing you on the lips, his tongue wildly exploring yours for the next moments. You make out all the way until Wyatt can pull out and away from you, but even that does not stop the kissing. It even feels like after all that, the handsome werewolf could go at it again, judging by how energetic his movements are when helping you up and, still, smooshing your lips away. Finally, he lets go of you, though you definitely can tell he wants you again, soon.";
		say "     'See you, and be careful out there. I'll be here, thinking of you... Looking forward for our next time.'";
	else:
		say "     Figuring it might be best to not conflict Wyatt's thoughts even further, you simply let him pull his cock out of you before it is too late. But this action leads the werewolf to aim his massive load directly at you, and soon, the inevitable happens. 'Fuck, I'm gonna cum...!' he warns you, and soon, you are getting showered by a large load of werewolf cum falling all over you. Each spurt is so powerful that some of it makes it past your head, although most ends up covering your whole body from your face to your waist. The werewolf, however, stares at you dead in the eye as his hand moves to stimulate your pussy, holding his cock firmly with his other hand, as the last shots are still being fired at you.";
		say "     'C'mon, I'm not letting you go without finishing you off...' You actually do not need much to hit your orgasm himself, together with his fingers rubbing against your sex and the feeling of his warm cum splashed all over your body... It is just too much for you not to quiver and squirm around helpless to the surge of overbearing pleasure taking you. 'Yeah, let go, babe... I want you to feel good...' His words only encourage your climax, quickly hitting its peak and lasting for a good while, enough to tire you out completely once it finally subdues.";
		WaitLineBreak;
		say "     'Fuck, that was hot... Mind doing it again soon? Once, you know, you can move your legs again,' he laughs, before he helps you up and goes fetch something to get you cleaned up. 'Am I always making such a mess on you? Damn, I gotta start thinking about finishing inside... Fuck the consequences of that, anything changes up in your body I can always help you turn it back to normal. Plus... Breeding you is an entertaining idea.' He leans in for a kiss before you can reply, then gives out a chuckle in the end. 'You're beautiful...'";
		say "     'Anyway, see you later, and be careful out there. I'll be here, thinking of you... Looking forward for our next time.'";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

to say WyattSexFemaleCunnilingus:
	say "     You give the handsome werewolf a suggestive look as you step towards him, leading his gaze over your feminine body, then even lower. Once you are close enough, you whisper to him that you would like something different from him, perhaps by putting that long tongue of his to work. He seems to like your idea, and this time, you lead the action by touching his paw-like hand with yours and bringing it over your body, letting Wyatt know he may touch you as he pleases. Of course, the athletic wolfman takes the opportunity to feel up your body, touching your curves as he slowly pulls you towards him. 'Well well, if that's all you want from me, I can just get started then. Better make my way there...'";
	say "     He then kisses you, moving his hands over your silhouette and towards your breasts, feeling them up with a gentle squeeze. You both step towards a nearby couch which Wyatt carefully pushes you onto to lie down across, almost as if making sure you are comfortable, while keeping himself on top of you exchanging tongues. Wyatt moves in passionately, holding you close to him through the entire process, and having dropped his loincloth, his hard cock now hangs free between his body and yours. 'Let's get to the fun part... Bet you taste really good down there,' the werewolf flirts right before moving his muzzle over your neck. He then proceeds to press his tongue against your skin and begins to make his way down on your body, running it by most of your erogenous spots.";
	WaitLineBreak;
	say "     From the neck through your collarbone, then to your chest, Wyatt gives your tits a nice rub as he circles your aureolae with his tongue, teasing you in almost torturous pleasure as he briefly looks into your eyes, knowing the effect he is having on you. Once he is satisfied with this, he proceeds to go lower, through your midriff, and with his hands, he pushes your legs open and prompts you to relax. The werewolf's head is soon right between them, his tongue wiggling around your wet curls and clit before he begins to press against them, licking up your juices that, by then, are plenty. Eventually, he begins to push into you, beginning to tonguefuck you with nimble and steady movements.";
	say "     As with any other lupine men, Wyatt's tongue has a good reach, and you definitely feel it poking at the insides of your vagina, leaking with moistness as the werewolf savors every bit. The pleasure this sends through your body causes you to squirm slightly, but while you are being held by the wolfman, you cannot run from its source... even if you wanted. He keeps you in position with little effort, as his strength is greater than yours, and makes you endure his surprisingly amazing oral skills for as long as he wants. Wyatt does not even keep the pacing going the same for long, as whenever you feel yourself being driven closer to the edge, he catches on quickly with your body language and takes slower movements to delay it just a little further.";
	WaitLineBreak;
	say "     'Mmh... You taste really good... Hope you're enjoying this as much as I am,' he says amidst a pause as he looks in your eyes once more, then dives back into eating you out. His tongue goes back in and drills through your sex expertly, teasing you in all the good spots, wiggling and twirling non-stop... It just drives you insane, with a bliss you can hardly persist through. In fact, it gets more and more difficult to hold your orgasm, to a point Wyatt is hardly moving his tongue just to keep you on edge. 'Looks like someone's enjoying themselves... Getting close, aren't you?' You nod to him, as you would, in fact, be completely unable to lie about it. 'And here I was just getting started...'";
	say "     His tongue runs over the surrounding area of your womanhood only so that the werewolf can see you squirm and moan in a way akin to desperation, and never forgetting about your sensitive clit. Although, his intention is never to overestimulate you, so every touch is made with utmost caution and gentleness. However, it comes to a point you just have to beg him for it because it is just too difficult to endure all the teasing. Having heard your pleas, he chuckles, and without warning, he pushes his tongue past your lower lips one last time, at the same time moving his hands over your breasts to caress them firmly. You simply feel your tits being fondled so nicely as that slick organ of his travels back and forth into your pussy, the combined stimulation more than enough to set you towards a powerful climax.";
	WaitLineBreak;
	say "     It comes and hits you like a thunder, dizzying you as your body and sex quiver in compulsions of bliss. This powerful wave of pleasure crashes down through your entire self all while Wyatt holds you still and continues to tonguefuck you, all the way until the very end of your climax. After having moaned helplessly, you must catch your breath as your senses begin to slowly return to you at normal levels, now able to think and process your surroundings, a feeling that shows how great of an orgasm that was. Wyatt slowly raises above you with a grin on his muzzle, then leans down to deliver a kiss to your mouth. You can still feel the scent and taste of your own love juices from him.";
	say "     'That was really fun... I don't mind doing it for you more often, all you have to do is ask away. And... I'll make sure you keep coming back for more,' he says, winking at you as he helps you stand. 'See you, gorgeous. I'll be around for when you want a round two, or... whatever number it is by now.'";
	NPCSexAftermath Wyatt receives "OralPussy" from Player;

to say WyattDominantSexFemale:
	say "     Having had sex with the werewolf at least a couple of times already, you wonder if he would be up to doing something more active than the usual, just to shake things up a bit. His eyes widen at your request, half in surprise with a hint of amusement, then replies with a cocky grin. 'So that's what you've been thinking about, huh? You want me to go rough on you? I mean... Fuck, that's hot, but also... Are you sure? I don't wanna hurt you or anything, though I guess if you mean it, then... I'd be happy to oblige...' You reassure him, that is exactly what you want, and this bolsters him with newfound confidence. 'Alright... I see how it is. I suppose we could arrange something...'";
	say "     He eyes you from head to feet, then crosses his arms and looks down at you. 'So you wanna get used like a cum rag, huh...? Slapped around and bred like the bitch you wanna be for me...?' He makes a pause there, staring at you intensely just to see if you back away immediately, but you do not. So, he continues, 'Alright... Though be warned I'll take whatever I want from you first. And when I get to fuck you, it's gonna be doggy-style. I'm gonna be ballsdeep in you, making you my little bitch... You're gonna be like just a sex toy, something for me to use for as long as I want... And in the end, you'll take my load, and I don't fucking care what happens next, you're here to please me. Me only.'";
	WaitLineBreak;
	say "     You cannot hide the fact that a promise for this sort of treatment really arouses you, as you find yourself imagining it already. The werewolf grins at your brief silence, quickly getting the message, but intends to get a direct response from you... And not without some additional teasing. 'Surely you'd like that, right? I mean, of course you wanna be owned by an alpha male. You get to feel my dick inside you after you've gotten it all hard and wet... then to carry my pups in your womb... Which you've been wanting really bad, I'm sure. We both win, yeah?' He goes ahead and also drops his loincloth, not subtly so at all, and you catch a very clear glimpse of his cock protruding through its surrounding furred sheath, slowly hardening before your eyes.";
	say "     Naturally, and seeing such a handsome sexy werewolf growing a boner right in front of you, the answer you give is an agreeable nod. Wyatt smiles and gestures you to approach him. 'Come here, then... You've got a job to do,' he orders, and you start walking towards him. As the wolfman grabs his dick with one hand, he uses the other to pull your head down and directly towards it. 'Open up and start sucking it for me, will ya? We'll get it in your pussy later...' Before you can even think about a reply, you find your mouth meeting the tip of the lupine cock as the latter is quickly pushed past your lips. It looks like you will have to blow him before you can have him take you from behind.";
	WaitLineBreak;
	say "     But it does not seem to be that much of a hard task, as Wyatt takes absolute control. He grabs your head and keeps thrusting into the back of your mouth, giving you time to adjust to his size and savor the pleasant taste of his cock, all while his juices start coming in. You feel that thick precum leaving his cock's slit and hitting your taste buds with a sweet tingle, but you are not given much time to savor the taste as he pulls your head back and forth, causing his cock to slide in and out of your mouth before making it towards your throat. 'Open up wide, my [guygal]! Gotta get all this meat inside... all the way in...' This definitely cuts your breath, since you are forced to swallow the werewolf's dong and have to hold it in as it throbs angrily.";
	say "     He thrusts into your face relentlessly as you place your hands over his furred thighs in a reflex of resistance, pushing slightly against him. He does eventually give you a brief moment to catch your breath, pulling his cock out of your mouth and holding your head by your jaw against his pelvis. 'You're doing pretty well...! Look at this dick, all perked up and throbbing... You did a good job there!' He gives his red meat some rubbing as he looks down at you, keeping your skull in place. Then, you find yourself being brought under his furred sack, each of his nuts almost about the size of tennis balls, and your whole face is buried under all that warm softness as they bounce on your face.";
	WaitLineBreak;
	say "     'Gonna give them a lick, right? Don't think I've placed you there to rest...' he tells you, and taking this as an order, you stick your tongue out and proceed to do as he says. 'Ooh, that's a good [boygirl]... Don't spare an inch, get them both, all over...' Following his directions, you lead your tongue through the entire curvature of his testicles, causing the werewolf to let out a growl of pleasure as he steadily jerks his cock. You make sure you get at least one of them in your mouth and tug on it, then repeating the process with the other, and never without wiggling your tongue all over the both of those orbs. They definitely feel full and heavy against your face, even more so when you press against them, a move which greatly pleases the wolfman.";
	say "     When not acting out of your own volution, however, Wyatt takes the lead and gets what he wants from you, and that really means he holds your head to fit as much as he can from his sack into your mouth. This time, he looks into your eyes with a grin and gives your cheek a couple of light slaps, cheerfully commending you, 'There you go, that's how you do it!' You carry on sating his whims, or rather, licking his balls, since the only other thing you can do is simply observe that large cock being stroked for the next few moments. 'Fuck... Seeing you down there actually turns me on... I'd be glad to make you my bitch anytime if you're gonna keep doing this good...'";
	WaitLineBreak;
	say "     With that said, he pulls his balls from your mouth and shoves his cock back in, thrusting into your throat. This time, he is even rougher, holding your skull with both his hands and fucking your face like he was already ballsdeep in your ass. 'Swallow that cock now, you'll be fine if you do...' You even feel his sack bouncing back and forth against your chin, the pounding power so strong you begin to drop some tears as you struggle to keep up. You do as he says, using your throat to swallow that cock and avoid gagging on it, feeling it bulge in your neck as he continues to facefuck you. Eventually, the werewolf tires of this and pulls out, but not without leaving you gasping for air.";
	say "     'Well fuck... That got me excited! Think now you're ready to get bred... I bet that's what you're really wanting right now, huh?' Upon receiving his command, you turn around and offer him your rear, butt up as you drop on all fours. You recalled that he wanted to take you doggy style, so you get in position. 'Love when my toys remember their place...' he comments, pleased to see you ready for him to get behind you and line up his dick with your womanhood. Then, he begins to press against it with only your juices serving as lubricant, and pushes slowly... 'Hope you're ready to take it, babe... I won't pull out until you're all filled up. Not even if you beg me to stop...'";
	WaitLineBreak;
	say "     You are sure he will follow through with his word, so you brace for the upcoming insertion, which is already happening. His girthy dong pushes your wet curls outwards bit by bit as he buries more of it inside you, [if scalevalue of player < 4]grunting at the tightness of your pussy's insides around his cock[else]enjoying your pussy's good reception of his cock[end if]. 'Fuuck yeah...! You take me so well, babe... Can't wait to fill you up with my pups...' By now, his hands are grabbing your hips and he is pulling you to him, going deeper and deeper into you, until you begin to feel the swollen knot against your stretched pucker. 'You could have this everyday... I wouldn't mind making you my permanent bitch... Fuck, I'd love it... Put you on a leash and make you mine...'";
	say "     Then, you feel Wyatt pulling out... only to thrust back in, and will only repeat these movements for the rest of your encounter, at first in a steady manner, then slowly rising the rhythm. His grasp on you remains tight and firm, not letting you back off nor move away any inch, keeping you in place to take that dick over and over... He goes at it even faster, hitting your cunt like a battering ram, pounding you with so much force that you think you might need several days to recover afterwards. This moment is all his, his pleasure placed atop yours, although you cannot help but enjoy the pounding, your vaginal walls all being thoroughly stimulated by the werewolf's significant girth, enhancing your experience even further. You are thoroughly fucked for so long that you lose track of time, all the way until Wyatt begins show signs of near stamina depletion.";
	WaitLineBreak;
	say "     You hear him pant as his movements get more sluggish, but a sudden push startles you as his knot gets inside you. He then leans his body over yours, pushing you towards the ground and placing his arm around your collarbones and chest, one hand over your tits and fondling them, although embracing you so tight you could think he was just about to choke you. Then, the werewolf howls in pleasure as he orgasms inside you, depositing a great amount of cum into your bowels, every single drop until the last. This triggers your climax as well, as you are struck by a massive wave of pleasure that causes your entire self to quiver and squirm in complete bliss. This goes on for a good while until Wyatt drops down on top of you, breathing heavily for the first few moments.";
	say "     'Fuck, babe... That was fucking hot... I could get used to this, you know...' You then feel him lick your neck affectionately as he patiently waits for his knot to deflate, resting atop you while you two snuggle on the ground.";
	WaitLineBreak;
	say "     It takes a while, but eventually, he pulls out of you and stands up, helping you in the process. 'Hope we can do this again. It's kinda hot thinking of forcing you down on me and making you take my cock and load... Fuck, I might enjoy this more than I though I would... Uh, better find a safeword! What do you think of periwinkle? Or... Mallet! Ah, well, just think of some, I'm sure it could come in handy, yeah?'";
	NPCSexAftermath Player receives "OralCock" from Wyatt;
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

to say WyattDominantSexMale:
	say "     Having had sex with the werewolf at least a couple of times already, you wonder if he would be up to doing something more active than the usual, to shake things up a bit. Even if your appearance is not what he most likes, you recall him claiming that a hole is still a hole, and so, taking those words into consideration, you proceed to ask Wyatt if he would like to fuck your ass. His eyes widen at your request, half in surprise with a hint of amusement, then replies with a cocky grin. 'So that's what you've been thinking about, huh? Is that your way to say you'd like me to treat you like a girl? But well, knowing you by now... Maybe you're keen on keeping that masculine appearance for a while...'";
	say "     He eyes you from head to feet, then crosses his arms and looks down at you. 'As I've said before, I prefer girls. But as I've also said before, a hole's just a hole. As long as I can shove my dick in, I don't care. So, unless you wanna get used like a cum rag and take my load once I'm finished, I'd suggest you look for someone else.' He makes a pause there, staring at you intensely just to see if you back away immediately, but you do not, just yet. So, he continues, 'And I'll take whatever I want from you first. If I get to fuck you, it's doggy-style only. When I'm there, it's only your ass I care about. And I won't be gentle either, though you probably like it rough anyway... To sum it up, you'll be my little bitch. Just a sex toy, even, something for me to use for as long as I want...' Following such an extensive list of conditions, you are left wondering if you would like to see this through, after all.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You are totally fine with just being used by him.";
	say "     ([link]N[as]n[end link]) - Maybe you are not so keen on these conditions.";
	if Player consents:
		say "     You cannot hide the fact that a promise for this sort of treatment actually arouses you, as you find yourself imagining it already. The werewolf grins at your brief silence, quickly getting the message, but intends to get a direct response from you... And not without some additional teasing. 'Surely you'd like that, right? I mean, it's not too different from what we've done. In fact, it just gets better... You get to feel my dick in your ass after you've gotten it all hard and wet... Which you've been wanting really bad, I'm sure. We both win, yeah?' He goes ahead and also drops his loincloth, not subtly so at all, and you catch a very clear glimpse of his cock protruding through its surrounding furred sheath, slowly hardening before your eyes.";
		say "     Naturally, and seeing such a handsome sexy werewolf growing a boner right in front of you, the answer you give is an agreeable nod. Wyatt smiles and gestures you to approach him. 'Come here, then... You've got a job to do,' he orders, and you start walking towards him. As the wolfman grabs his dick with one hand, he uses the other to pull your head down and directly towards it. 'Open up and start sucking it for me, will ya? We'll get it in your ass later...' Before you can even think about a reply, you find your mouth meeting the tip of the lupine cock as the latter is quickly pushed past your lips. It looks like you will have to blow him before you can have him take you from behind.";
		WaitLineBreak;
		say "     But it does not seem to be that much of a hard task, as Wyatt takes absolute control. He grabs your head and keeps thrusting into the back of your mouth, giving you time to adjust to his size and savor the pleasant taste of his cock, all while his juices start coming in. You feel that thick precum leaving his cock's slit and hitting your taste buds with a sweet tingle, but you are not given much time to savor the taste as he pulls your head back and forth, causing his cock to slide in and out of your mouth before making it towards your throat. 'Open up wide, my [guygal]! Gotta get all this meat inside... all the way in...' This definitely cuts your breath, since you are forced to swallow the werewolf's dong and have to hold it in as it throbs angrily.";
		say "     He thrusts into your face relentlessly as you place your hands over his furred thighs in a reflex of resistance, pushing slightly against him. He does eventually give you a brief moment to catch your breath, pulling his cock out of your mouth and holding your head by your jaw against his pelvis. 'You're doing pretty well...! Look at this dick, all perked up and throbbing... You did a good job there!' He gives his red meat some rubbing as he looks down at you, keeping your skull in place. Then, you find yourself being brought under his furred sack, each of his nuts almost about the size of tennis balls, and your whole face is buried under all that warm softness as they bounce on your face.";
		WaitLineBreak;
		say "     'Gonna give them a lick, right? Don't think I've placed you there to rest...' he tells you, and taking this as an order, you stick your tongue out and proceed to do as he says. 'Ooh, that's a good [boygirl]... Don't spare an inch, get them both, all over...' Following his directions, you lead your tongue through the entire curvature of his testicles, causing the werewolf to let out a growl of pleasure as he steadily jerks his cock. You make sure you get at least one of them in your mouth and tug on it, then repeating the process with the other, and never without wiggling your tongue all over the both of those orbs. They definitely feel full and heavy against your face, even more so when you press against them, a move which greatly pleases the wolfman.";
		say "     When not acting out of your own volution, however, Wyatt takes the lead and gets what he wants from you, and that really means he holds your head to fit as much as he can from his sack into your mouth. This time, he looks into your eyes with a grin and gives your cheek a couple of light slaps, cheerfully commending you, 'There you go, that's how you do it!' You carry on sating his whims, or rather, licking his balls, since the only other thing you can do is simply observe that large cock being stroked for the next few moments. 'Fuck... Seeing you down there actually turns me on... I'd be glad to make you my bitch anytime if you're gonna keep doing this good...'";
		WaitLineBreak;
		say "     With that said, he pulls his balls from your mouth and shoves his cock back in, thrusting into your throat. This time, he is even rougher, holding your skull with both his hands and fucking your face like he was already ballsdeep in your ass. 'Swallow that cock now, you'll be fine if you do...' You even feel his sack bouncing back and forth against your chin, the pounding power so strong you begin to drop some tears as you struggle to keep up. You do as he says, using your throat to swallow that cock and avoid gagging on it, feeling it bulge in your neck as he continues to facefuck you. Eventually, the werewolf tires of this and pulls out, but not without leaving you gasping for air.";
		say "     'Well fuck... That got me excited! Let's move on to your ass... I bet that's what you're really wanting right now, huh?' Upon receiving his command, you turn around and offer him your rear, ass up as you drop on all fours. You recalled that he wanted to take you doggy style, so you get in position. 'Love when my toys remember their place...' he comments, pleased to see you ready for him to get behind you and line up his dick with your anus. Then, he begins to press against it with only a generous drop of his own saliva, having coated the tip and shaft of his meat beforehand, and pushes slowly... 'Hope you're ready to take it, my [guygal]... I won't pull out until you're all filled up. Not even if you beg me to stop...'";
		WaitLineBreak;
		say "     You think he will actually follow through with his word, so you brace for the upcoming insertion, which is already happening. His girthy dong pushes your anal rings outwards bit by bit as he buries more of it inside you, [if scalevalue of player < 4]grunting at the tightness of your hole's insides around his cock[else]enjoying your hole's good reception of his cock[end if]. 'Ooh, you feel good... Heh, should've done this sooner, this is a much better way of using dudes. Fuuck yeah...!' By now, his hands are grabbing your hips and he is pulling you to him, going deeper and deeper into you, until you begin to feel the swollen knot against your stretched pucker. 'You could have this everyday if you wanted, so easily... Just saying...'";
		say "     Then, you feel Wyatt pulling out... only to thrust back in, and will only repeat these movements for the rest of your encounter, at first in a steady manner, then slowly rising the rhythm. His grasp on you remains tight and firm, not letting you back off nor move away any inch, keeping you in place to take that dick over and over... He goes at it even faster, hitting your ass like a battering ram, pounding you with so much force that you think your hole might need several days to recover afterwards. This moment is all his, his pleasure placed atop yours, although you cannot help but enjoy the pounding your prostate is taking, enhancing your experience even further. You are thoroughly assfucked for so long that you lose track of time, all the way until Wyatt begins show signs of near stamina depletion.";
		WaitLineBreak;
		say "     You hear him pant as his movements get more sluggish, but a sudden push startles you as his knot gets inside you. He then leans his body over yours, pushing you towards the ground and placing his arm around your collarbones and chest, embracing you so tight you could think he was just about to choke you. Then, the werewolf howls in pleasure as he orgasms inside you, depositing a great amount of cum into your bowels, every single drop until the last. It goes on for almost about a minute until he drops down on top of you, breathing heavily for the first few moments. 'Yeah, you did good... I might use you again if I find myself in the mood... I can always use a willing cumdump.'";
		say "     It takes a while for his knot to deflate, but eventually, he pulls out of you and stands up, leaving you lying on the ground with his cum leaking out of your butt. 'See you around. Hope you can move your legs in a bit,' he says, chuckling mockingly.";
		NPCSexAftermath Player receives "OralCock" from Wyatt;
		NPCSexAftermath Player receives "AssFuck" from Wyatt;
	else:
		say "     After thinking twice, maybe you do not want it to be done like this. Wyatt has his preferences, but so do you, and if things do not work out, then it is probably for the best to keep it that way. You are honest with him and tell him that this is not how you are feeling it and have decided to call it off. He shrugs, crossing his arms. 'I see, I see... Well, if you want something more passionate, you'd have to look more... you know, female. It's just how it works for me, it wouldn't be fair to tell you otherwise. We'd be fooling each other for no reason... But I appreciate the fact you find me that attractive. Maybe you could watch me taking someone the way you wanted me to take you...'";
		say "     Always the tease, Wyatt gives you a wink before the conversation ends. Maybe some things are not meant to be...? On another hand, if you were to be a female, maybe other options would open up. Surely there must be ways to accomplish this, even if temporarily, if you [italic type]really[roman type] wanted to.";

Section 3 - Events

Section 3-1 - Oubliette Scenes

An everyturn rule:
	if player is in Lair Of The Lupines Oubliette and a random chance of 1 in 3 succeeds:
		say "     During your stay in the Oubliette, you are a slave to the werewolves, and after lingering around for a while, your time to be treated like one comes...";
		WaitLineBreak;
		WerewolfBruteLairOublietteRoll;

to WerewolfBruteLairOublietteRoll:
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "[WerewolfBruteLairNPCSpecialScenes]";
		-- 2:
			say "[WerewolfBruteLairCaptor]";

to say WerewolfBruteLairNPCSpecialScenes:
	if Libido of Elstan > 0 or Libido of Kirnon > 0:
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1:
				if Libido of Elstan > 0:
					say "[WerewolfBruteLairElstanWorship]";
				else:
					say "[WerewolfBruteLairNPCSpecialScenes]";
			-- 2:
				if Libido of Kirnon > 0:
					say "[WerewolfBruteLairKirnonAssWorship]";
				else:
					say "[WerewolfBruteLairNPCSpecialScenes]";
	else:
		WerewolfBruteLairOublietteRoll;

to say WerewolfBruteLairCaptor:
	say "     You hear the noisy trapdoor above you open as the shadow of a really buff and ripped werewolf brute looks down on you, directly into your eyes. He stops, inspecting you from a distance as a grin forms across his muzzle. 'Well, hey there... Don't suppose you'd mind being passed around me and my mates for the next hours, would you?' He then grabs and pulls you up to him, giving your face a long lick as your body is nearly smothered against his furry bulk. 'I think I know your face... it's a really cute one, by the way. Fuckable and breedable, heheh... But you're in here, so that means you're a slave. And I really love obedient and willing slaves... Was I the one capturing you, by any chance? Damn, I've got good taste...' He hugs you tighter as he speaks, growling almost affectionately, and then gives you another lick while his erection comes to poke at your leg.";
	say "     'Hrng... I've popped a boner just thinking about what we're gonna do to you...' he comments, as indeed, his red rod has left the fur sheath. 'Hope you can swim, lil['] pup. You've seen how much one of us can cum... heh-heh...' The werewolf ends with a slow smirking chuckle before he throws you over his shoulder, keeping you there as he grabs your butt... To hold you there, of course. And to feel it up, too, as he nonchalantly walks away. Those strong paws of his do actually feel pretty nice against your buttocks as he squeezes them[if player is not naked] under your clothes[end if], even occasionally sliding a finger in between to rub at [if player is female]your sex, further ahead[else]your hole[end if]. It looks like he wants you ready for what you are about to experience. It all seems oddly familiar, as well... You begin to realize this might actually be that one werewolf who snatched you the first time. If that is true, then you know exactly what will happen next...";
	WaitLineBreak;
	say "     'Hey boys! Fun time, here! Brought a cute one to enjoy myself with, but... the more the merrier, right? Let's fill [ObjectPro] up!' The werewolf then taps your ass as he brings you to the ground[if player is not naked], hastily removing your clothes and tossing them to the side[end if]. Now, you are lying down on the dirty floor with your body completely exposed to the group of hulking werewolves who eagerly come to your position, soon circling you, all male with the fullest balls and hardest red cocks, eager to get started. They seem to be so excited that you can see them already stroking themselves, tongues out and panting at the idea of ravaging you together. 'I wanna have [PosAdj] mouth!' one exclaims, 'I want [if player is female][PosAdj] pussy[else][PosAdj] ass[end if]!' another says, 'I'm sure we could make [ObjectPro] take two of us [if player is female]in both [PosAdj] holes[else]in the same hole[end if]!'";
	say "     The werewolf who picked you, however, steps up and stops them from going all wild on you. 'Hey, piss off! I'm the one who picked [ObjectPro], so that means I get to call the shots! I'm merely sharing, because I could keep this slave to myself if I wanted to.' The others groan  at this brute's claim over you, but they eventually accept, probably because they are so horny they cannot be bothered to fight over these terms. 'Well, fuck! I just wanna get started! How do you feel about this?' The werewolf asks you as he places his throbbing cock in front of your face, looking down at you with a grin. He is not forcing you to do anything, but the beastly scent, his confident pose and the entire sight just compels you to give it a kiss. Then, a lick. Eventually, you are simply sucking on it, wrapping your lips around the girthy meat and sliding it deeper into your mouth. 'That's it, pup... Teach the boys how it's done. Make them jealous, too...' He ends that last sentence with a slow and mocking chuckle as he turns to the rest of the group from the corner of his eye.";
	WaitLineBreak;
	say "     As he pumps his rod down your throat, the remaining werewolves stroke their meats while they watch you give your captor a really good sucking, putting on an effort at pleasing the smiling beast. You think he might be getting off more from the fact he is being watched by his mates, receiving a blowjob from the prey he has captured, than from that by itself. 'You're a pretty eager one to please, aren't you, pup?' He pets you like one, caressing your ears as he leans down to look closer at you. 'Wanna share the love with my brothers? Or would you rather keep sucking this cock as they watch? Since you're loving it so much...' He directs you this question and leaves the decision in your hands.";
	LineBreak;
	say "     [bold type]Do you wish to continue sucking your captor's cock? Or would you rather have the others join in?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Keep sucking this cock.";
	say "     ([link]N[as]n[end link]) - Blow the others, as well.";
	if Player consents:
		LineBreak;
		say "     You love this one. Big, thick, juicy and, most importantly, throbbing hard. It belongs to your captor, the one who worked his ass to bring you here, and he is the one you are going to offer the pleasure to use your mouth. He puffs his chest and lets out a loud chuckle, his rubbing on your head intensifying as he pulls you to him, forcing more inches of his manhood down your throat. 'Hah! That's my pup! Loyal to [PosAdj] master! That's right, you suck my cock and have the others watch as I fuck your tight little throat, yeah?' The other werewolves groan in protest, even cursing at your captor, 'C'mon, you asshole! You're not gonna take [ObjectPro] all for yourself, are you?! What did you call us for?!' He does not care about this, only giving them a smug face.";
		say "     'Well, then get your own fucking bitch! There's plenty down there! For now, [SubjectPro] gets to suck my cock and you get to watch!' Your captor continues to thrust into your throat as he angrily replies back to his comrades, who limit themselves to stroking their cocks. They might have complained, but they are still rock solid and beating their junk like this was turning them on so much, an indeed curious dynamic among the werewolves['] clan. In the meantime, your jaw is numb with how much you have to stretch in order to get that big monster of a lupine dong in your mouth, nearly choking on it every time the beast thrusts in deep. His large, full furred sack bounces back and forth, hitting your chin whenever he makes a faster move, and all you hear is the constant huffing, grunting and moaning from the excited werewolves.";
		WaitLineBreak;
		say "     With how heavy his balls seem, you figured it would be a good idea to cup them in your hands, a move well received by your partner, who smiles in joy. 'That a good pup, taking the initiative to rub [PosAdj] master's balls...' He then lets out a pleased sigh as he slows down, letting you taste his cock with your tongue and give him a better amount of attention. 'Mmh... They feel better, now, thanks to you... And filling up reeeally good, too...' You do not know why, but this seems to excite him a lot as he is thrown into a blissful trance, truly enjoying your efforts at blowing him. Unfortunately, it is interrupted by one of his brothers, who seems impatient, 'Can we cum on [ObjectPro] now?! MY balls are aching!'";
		say "     'For fuck sake, let me enjoy the nice things for one second!' says the large werewolf whose dick is throbbing like mad in your mouth, seemingly at the verge of bursting into a crazy huge load. For now, though, it only leaks copious amounts of precum, which taste so good you cannot get enough of it. 'Fuck off, I'm gonna cum on [ObjectPro] now!' exclaims one of his comrades who, inadvertently, walks closer to you and, with a prolonged moan, lets out his generous deposit of cum all over your face and your captor's crotch. What could trigger annoyance in the hulking beast is turned, instead, into a peak of arousal as he sees his mate covering you with his jizz, which makes him inevitably being to unload his in your mouth. 'You little fuck...! Hnng pup, you gotta take it!'";
		WaitLineBreak;
		say "     His warning comes too late, as the first mouthful arrives and nearly makes you choke, forcing you to swallow an insane amount of werewolf cum like you were chugging down a large bottle of the stuff, all at once. The others take this as a signal to join the cum shower, and they too jerk off as fast as they can until they shoot their loads all across your body. Between the cock in your mouth force-feeding you buckets of cum that make your belly swell, you become completely coated from head to toe in lupine manjuice, lost in a cacophony of grunts and moans as they cover you in white cream. Your captor's balls were especially full, you are not done drinking his load even after half a minute, still swallowing drop thick drops of it and feeling your body getting heavier and fuller by the second.";
	else:
		LineBreak;
		say "     How could you refuse all those cocks?! Big, thick, juicy and, most importantly, all throbbing hard, yearning for your attention and all around you... Even the scent feels like a heavenly dream that only leaves you aroused at the thought of offering pleasure to so many at once. Your captor sees how hungrily you eye all his werewolf comrades and assumes you have made your decision. 'My pup wants to take them all like a champ? Well, boys... you're in luck. Looks like someone's insatiable!' He the pulls you away from his cock and beckons his comrades to come closer. 'C'mon, y'all! Make yourselves at home! Everyone gets some head!' The boys begin to approach with their cocks in hand, eager to put you to work.";
		say "     As their manhoods come close to your face, your mouth instinctively opens to welcome them, the girthy red meats filling your mouth, each on their own turn, as you go by them one by one. You usually keep your hands on two, one on each, and your lips wrapped around another at the center. Occasionally, the werewolf whose cock is in your mouth begins to thrust enthusiastically, nearly making you gag as his sizable erection invades your throat in such a rude manner... But, in all honesty, it does not bother you at all. The sexual energy surrounding the werewolf brutes is so high that it intoxicates you, making you thoroughly enjoy every second a cock is past your lips, the others pulsating in your grasp.";
		WaitLineBreak;
		say "     'Looks like my pup's gonna be a popular cocksucker, ain't that right?' says your captor, who proceeds to grab your head and pull it away from the cock you were sucking on, despite his mate's protests, without really caring much about it. 'Can't help but be a little slut for some werewolf cock, huh? he asks you, looking into your eyes before he slides his meatlog in your mouth, allowing you only to nod... Though you really did not think too much about it, either, 'Yeah... I know... Bet you'd love to stick around and be all my brothers['] cum dump. Let them fuck you by night, cup their growing balls by day, when they're asleep, making sure they build up some huge loads to put in you... Your dream life, right?'";
		say "     'Fuck, bro. That talk's turning me on...' says one of his mates, whose cock you are actually grabbing, 'Yeah, you keep talking like that, we might just have to keep [ObjectPro] around for longer...' another says, stroking himself right besides you, 'And cum all over [ObjectPro], too...' says the other one who is getting a handjob from you. 'You want our loads, pup? Wanna earn yourself a coating of wolf juice? Heh... bet you do.' He does not wait for your answer and simply pulls his dick out of your mouth, taking matters into his own hands, quite literally. You are encouraged to stroke the other cocks as fast as you can, and within only a few seconds, the cum rain kicks in. 'Here it comes, pup!' shouts your captor, and before you know it, you are being utterly covered by ridiculous amounts of cum!";
		WaitLineBreak;
		say "     Gallons of it, you could guess, are being delivered all over your body, the force so strong that it leaves your brain and senses numb, only a lust frenzy overtaking you as you let - and want it to - fall on your every spot and corner. You lose yourself in a cacophony of grunts and moans as they cover you in white cream, their loads coming one right after the other until you are no longer distinguishable from the layers upon layers of lupine jizz. This keeps going for so long that you have no idea how much time it passes, thick drops still falling onto you as you inevitably consider how much that would make you swell if they ever wanted to cum inside! With their knots, you would be in for quite a filling...";
	say "     Eventually, it all passes. The werewolves['] orgasms begin to subside and are simply left panting, with the few remaining drops of their loads slowly oozing out of their half-hard erections. 'You'll do a great pup for my mates, I'm sure. You'll enjoy the rest of the stay... Yeah?' Your captor says this while mischievously grinning, and after some prolonged eye contact as he pets your head like if you were, indeed, a pup, he begins to walk away as he gestures to other werewolves to gather around you. These are still energetic ones... Quite horny, hard cocks sticking out of their sheaths, dandling around in many sizes and shapes as they walk towards you... And there are so many of them...!";
	WaitLineBreak;
	say "     You quickly lose track of time as they toss you around, fuck your face, your [if player is female]holes[else]hole[end if], and even rubbing their meats on other parts of your body while they wait, all eager to put you on for a ride or mount you for hours and hours... They do not even address you as anything in particular, just using you as a fucktoy and filling you up with more loads until you cannot even walk. Your entire body feels so swollen that you can only roll around at some point, spread your legs for the next werewolf to fuck you silly while you choke on some other's cock, all while being utterly covered in lupine jizz, smelling like beast fluids and sweat. This mess drags on for what feels like the whole night...";
	WaitLineBreak;
	say "     Eventually, the brutes fall asleep and you are put back into the oubliette, leaving a trail of their cum all the way back here, as it is still leaking out of you. It takes a while until you can, somehow, process everything well enough to allow you to walk around, but you are going to feel like you have just arrived from a banquet for a good while... With the soreness of an all-out orgy you will not soon forget.";
	CreatureSexAftermath "Player" receives "OralCock" from "Werewolf Brute";
	CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Werewolf Brute";

to say WerewolfBruteLairElstanWorship:
	say "     You hear the noisy trapdoor above you open as the shadow of a very, very large and muscular werewolf brute looks down on you with a fierce look, his eyes piercing your soul like shiny and small dots of light. He only makes a grunt as he inspects you from a distance. 'You'll do,' he says, as he pulls you from the oubliette with the force of a beast, so effortlessly that you could as well be made of only feathers. You have seen large werewolves, but this one is especially big, he could very well have fooled you as the alpha brute. 'I don't like sharing. You're my bitch and only mine for now. Got it?' His voice is deep and commanding, almost to a threatening level, so you nod to him. 'Good. You're coming with me.' You immediately [bold type]recognize this werewolf as Elstan[roman type], who seems keen on using you for his personal pleasure this time.";
	say "     With that having been said, the brute roughly puts you over his shoulder and starts walking, carrying you with one arm wrapped around you and his hand on your butt. He does not seem to want to linger in the pit, as he goes straight into the dorms area. You are brought to one of the bedrooms, which seems to be a private one, his, to be exact. Then, as you thought you were going to be put on the bed, the werewolf instead tosses you onto the floor. 'That's your place. At least until you prove yourself.' He then moves his large paw over your face and presses down on you, obscuring it entirely from outside view. 'Worship me, bitch. Work that tongue over my soles. And you better do it right!'";
	WaitLineBreak;
	say "     You get the feeling he is not fully aware of how strong he is. There is barely any room to move your mouth around his large paw, but you try your best, sticking it out and licking over his soles the best way you possibly can, as enthusiastically as you can get. As you half expected, the brute does not really bother praising you for your effort, only giving himself sexual satisfaction as he observes you, jerking his huge canine cock with your eyes locked on your movements. He grunts, only occasionally, but out of some pleasure he gets from demeaning you, as you can tell. The brute often keeps grinding his footpaw against your face, only to feel greater stimulation from your hard work. 'Hrr... Get it between the toes... Just like that...'";
	say "     The increasing momentum you feel is a great indicative that the brute is truly enjoying himself, despite how grumpy he sounds. He seems to be jerking off faster as he forces you to worship his feetpaws, the rush of power getting him more and more horny. It helps the fact that you really cannot even match his physical strength, even if you wanted to try, as this brute is so ridiculously strong. However, the time he spends with his footpaw on your face comes to an end, as he seems to have had enough. 'I'm so fucking horny... Bend over the bed. Ass up,' he commands, impatiently waiting for you to get up as he puts his foot back and watches you. 'Quickly, bitch! Or you'll get me all soft again from waiting!'";
	WaitLineBreak;
	say "     When you finally manage to put yourself in position, the werewolf is already moving in to grope at your butt, give it a few hard slaps and enjoy your reactive flinching, as each time it grows more painful. Although, as you glance over your shoulder, the brute's cock keeps on throbbing, looking even bigger and harder than before. 'Does it hurt? Aw... Poor little bitch can't take a beating from a real alpha werewolf like me? Just wait until I'm done with you...' he mocks you as he places his dong right between your asscheeks, determined to take your anal entrance. It truly makes you almost yelp as he presses his girthy dong against your hole, slowly pushing it in with only his leaking precum serving as lube.";
	say "     'That's it... Ease in, bitch, you ain't gonna be rid of me so soon...' He leans over you, his muzzle close to your ear, as he whispers these words that are meant to taunt you, all while he shoves more and more of his girthy inches inside you. It feels like he is stretching your entire rear with every thrust he makes deeper, forcing you to arch your back and try your best at relaxing. His muscular arms are wrapped around your torso, his claws lightly scratching your chest, when one of his thick hands finds its way to your neck, grasping and squeezing it just enough to make you gasp. The control he has over you is absolutely intoxicating, rendering you powerless as you take his huge cock all the way to the knot.";
	WaitLineBreak;
	say "     'Your ass is so tight... Just the way I like. I'll leave you all stretched up... You won't even feel your legs...' he continues as he picks up the pace, his thrusts becoming deeper, harder and done faster, pounding your ass like a beast in heat, unable to stop nor slow down as soon as he catches his desired rhythm. This leaves you feeling utterly opened up from behind due to how thick his cock is, the length easily reaching [if player is male]your prostate, smashing it continuously and causing[else]quite sensitive depths, able to make you quiver from the[end if] tingling, overwhelming pleasure. It comes you a point you cannot help but moan, and each time you do it, the werewolf grasps your neck tighter just to hear you wheeze instead. You swear his cock throbs only at the sounds you make due to this.";
	say "     Then, you are violently pushed forward, slamming your face and arms against the bed, as the brute takes hold of your hips, changing to doggy style. 'I'll fucking breed you until you leak my cum from every hole in your body, cocksleeve. That's all you're good for.' With this said, he [italic type]really[roman type] picks up the pace. As before he was fucking you fast and hard, he know moves like a battering ram, pounding your ass with such speed and force that you feel your insides bouncing within your body... and an incredible pleasure in your rectum. You moan, groan and beg for more, lost in your lust, not necessarily with your words but with your body language, which pleases the werewolf.";
	WaitLineBreak;
	say "     'My balls are so fucking heavy... Fuck, I gotta... Hnng...!' You hear him roar as he makes one final push, his swollen knot going past your anal ring as he fully buries that big girthy rod inside you, throbbing and throbbing... Until this huge, ridiculous, even, load of warm beastly cum invades your bowels and begins to fill you almost like a balloon, swelling your belly in almost an instant, and extending through what seems like a full minute. 'Oooh yeahh... Good cum dumpster, heheh...' While he is still shooting into you, the werewolf leans down again, wrapping his muscular and furred arms around your torso and resting his muzzle next to your skull, just above your shoulder.";
	say "     'Mmh... Looks like we'll have to wait, now... I'm pleased with you. Hope you don't have any plans for today, because... I still got a few more loads to put in you...' he informs you, licking your face with his large tongue, coming from a maw that could terrify anyone with all those sharp teeth and a gaping end. 'There's a reason they call me the big bad wolf... heheh...' You can feel him already wanting to pound your ass again, even as his knot is still keeping him inside you, allowing little movement, but you know what expects you as soon as he finally gets his inevitable freedom back...";
	WaitLineBreak;
	clear the screen;
	say "     You have completely lost track of time and fail to realize how long it has passed, but when you regain awareness of your whereabouts, you find yourself back in the oubliette with a very swollen belly and several small puddles of cum next to your butt. It is still leaking, even, and your hole has been in better conditions. It feels stretched and overly-sensitive, but worse, you really cannot feel your legs. They barely obey your brain, which is not good if you intended to be able to walk. Perhaps you should rest a little longer...";
	NPCSexAftermath Player receives "AssFuck" from Elstan;
	if Libido of Elstan is 1:
		now Libido of Elstan is 2;

to say WerewolfBruteLairKirnonAssWorship:
	say "     You hear the noisy trapdoor above you open as the shadow of a muscular werewolf brute looks down on you, his flaring gaze looking like mere dots in the darkness. He says nothing as he makes eye contact with you, only coming down to grab you and jump back out with the agility of a feline, as strange as that may sound. With the dim light of the pit's torches, you are [bold type]able to recognize him as Kirnon[roman type], but he urges you to say nothing as he carries you to a more private area. This space is nothing more than a small storage room connecting to the pit, that barely anyone uses. He pushes the door open, puts you on the other side, enters and closes it back, locking it with a key he had tucked in the band of his loincloth.";
	say "     'Rules are, if you're down there, you're a slave and gotta do what you're told, no questions.' You nod, as even an average-sized werewolf brute can still be quite intimidating when serious, plus you are not exactly in a favorable condition. 'Good. What happens here stays between us. Got it?' And, once again, you nod without a word. Once he fully realizes you understand all the terms of this exchange, he drops his guard a little and proceeds to slide his loincloth down. The reason his bulge was not so big when compared to the others comes to full exposure, as Kirnon's cock might be the smallest you have ever seen in a werewolf, at least soft. Regardless of comparative size, it is still a quite admirable one, and you would seldom see a human carrying one like that.";
	WaitLineBreak;
	say "     The sight of the naked and muscular silver werewolf is something to cherish, however. What Kirnon lacks in size, he has in definition and shape, but what really catches your eyes is how thick his legs are. It gives you an idea of how large his glutes must be, that is, before he starts turning around, seeing that you've got your eyes on him. You were right, that fuzzy ass proved to be up to your expectations as a pair of marvelous and volumous furred buttocks are presented before you, with the nice bonus of his full balls hanging underneath. Kirnon only has to make sure his fluffy tail does not get in the way, and you get a clear view at his butthole once he begins to spread his asscheeks.";
	say "     He glances over his shoulder and back at you, then gives you an order, 'Get your face in there and eat me out.' His hole only blinks desperately at the antecipation, looking so eager that you would almost feel bad for refusing to give it attention. Rules are rules, however, and you must follow them even if you, by any chance, had any idea of refusing his command. Leaning your head over the werewolf's plump buttcheeks, you place your hands over his glutes and proceed to press your lips against that yearning pucker, giving it a kiss, then a tentative lick, only to cause the silver lupine to moan, 'Fuck...' He keeps good hold of himself, at least for now, as your tongue continues to wiggle against such a sensitive spot.";
	WaitLineBreak;
	say "     You can even feel his anal muscles relax and let you push more of your tongue in it, licking it so good that Kirnon starts clawing at the door, grinding his ass against your face and grunting in pleasure. He is not that tight either, which suggests that he does enjoy anal play a lot more than he seems to show. 'You're... doing well...' he says to you, amidst a moan that he tries so hard to not be loud about, and knowing that you really are having an effect on him, you give him a little bit more tongue further inside his butthole while your hands move to grab his asscheeks, completely indulging in the rimming action. Some jerking movements follow soon after you do that, and you realize the werewolf is stroking his own erection due to his excitement.";
	[if player is male and Libido of Kirnon >= 2:
		say "     But then, you catch him glancing over his shoulder as he seems about to say something. After a moment of hesitation, he goes ahead and asks, 'Can you... fuck me?' Facing such sensible request, you wonder if you would like to do such a thing...";
	else:
		WerewolfBruteLairKirnonAssWorshipJustLicking;]
	say "     As he continues to do this, going at it faster and faster, you put your biggest effort and essentially tonguefuck him until he starts panting, excitedly wagging his fuzzy tail above your head. You can tell you are doing an amazing job as he dives deeper into this lust frenzy, wiggling his butt against your face each time you press your tongue towards his butthole. He now mindlessly moans, lowly, enjoying every single bit of pleasure you are providing him. With enough time, you think the werewolf comes close to the point of no return and begins to edge, thoroughly enjoying your rimjob. 'Fuck, I can't hold it any longer... Don't stop... Please...' he practically begs, and you dare not deny his request.";
	WaitLineBreak;
	say "     His deep grunts and moans continue as he soon hits his orgasm, and next thing that happens is his hole twitching around your tongue as multiple gushes of werewolf cum are shot directly at the door, making a mess of its lower half section as he goes through the entirety of his load in pure ecstasy. 'Aah... Fuck... You did so good...' he says, complimenting your efforts as you give his ass a couple of final licks before the beast allows you to stand before him. 'You... You keep your mouth shut about this. You hear me?' You only nod in response. 'You better. I... I may... pick you up to do this again. You know where to be.'";
	say "     Kirnon then grabs you and carries you back to the oubliette, where he carefully drops you before closing the metallic trapdoor above you.";
	NPCSexAftermath Kirnon receives "Other" from Player;
	if Libido of Kirnon is 1:
		now Libido of Kirnon is 2;

Section 3-2 - Jett Special Scenes

[Jett stops the player from leaving the first time]
instead of going up from Lair Of The Lupines Pit while Resolution of Discover The Werewolves Den is 0:
	say "     As you try to sneak through this hub, which leads deeper into a dark passage that you suppose could be an exit, you hear movement coming in your direction. Quickly, you start glancing around for a place to hide, but when you can finally react, it is too late. A strong, masculine and rough voice speaks to you, coming from the biggest werewolf brute you have ever seen, standing right in front of you and keeping you from leaving. 'Now, now... where do you think you're going?' he asks, crossing is very muscular arms in front of his chest and looking down on you with a grin on his lupine muzzle, wagging his fluffy tail slowly behind his monstrous legs. The sheer size of his furred sheath is almost terrifying, with how massive it is, and you can smell him from here, an intoxicating masculine scent that gets you weak on the knees.";
	say "     In reality, his mere presence is making your blood flow, arousing you at each passing second. You try to shake that feeling away as your heart races faster, excitement fueling your body from every angle and inch, tempting you to drop your chance at escaping this place, and from the looks of the huge werewolf brute in front of you, he knows exactly what effect he is having on you. 'And here I was thinking my comrades['] hospitality was so unmatched nobody ain't leaving our humble abode... I guess not everyone shares this sentiment.' You instantly feel apologetic, even without any real reason to be, but suddenly, you feel unworthy of his generosity. It is quite difficult to think clearly when he smells this good, but you have enough resolve to focus on not begging him to ravage you right in this spot and, instead, converse with him.";
	WaitLineBreak;
	say "     You try to explain how you came to be here, that some werewolf brought you here after you faced one in the wilderness, and since then, you have been fucked by plenty of them so many times that you lost count. He hears you, and while he looks intimidating, he does not look hostile, actually paying attention to you. 'My boys know how to enjoy themselves, that's for sure. Usually, however, any slaves they capture stay in the oubliette until they're left with nothing in their brains. In all honesty, it bores them, that's why they keep bringing in new people. Now, you don't really have to stay, although you haven't started begging for my dick just yet. You've got more resolve than most, heheh...'";
	say "     The massive werewolf gives the base of his sheath a little scratching, which makes it dandle heavily between his legs. He must be the hungest of them all, without a doubt. As your eyes laid on it for quite some time, he chuckled as he noticed you staring directly at his crotch. 'If you do stay, however, I'll let you play with it. If you manage to not turn into a brainless little slut afterwards, I'll even adopt you as my personal servant. If you do lose your mind, though, it's just sex slave for you. I imagine you wouldn't mind either...' His grin widens, but he then returns to a more serious tone, once more crossing his arms and no longer teasing you for entertainment.";
	WaitLineBreak;
	say "     'Alright, enough fooling around. I'm Jett, the alpha of the pack. You wanna leave, you're free to do so, as long as you keep the location of this place a secret. I'm not as pleasant when people fuck with me. If I've got to make someone pay for betraying me, they'll wish they had thought twice before being such fools. I'm sure you can tell I can rip anyone in half with these...' he then flexes both his arms, biceps as massive as your whole head, maybe even a little bigger than that. 'Can always squeeze them between my quads if my arms won't do the job, heheh... In short, Jett will be your best friend if you behave and follow the rules, but if you double-cross him... You're in for a lot of pain. So, remember that, and you'll be fine.'";
	say "     Nodding at his declaration, he then gives you a friendlier smile. 'Good thing you understand. There's [bold type]another rule when nagivating through my lair. You gotta be naked[roman type]. No arguing there. My boys all hang out with nothing covering their sexy bodies, so you should follow their example. No smuggling weird shit either, and no picking fights with any of my lads. If you wanna fight someone, you'll fight me, and you won't like it. Got that too?' You nod again, to his pleasure. 'Good. Now, do as you please. I'll be here, keeping watch. You always have to get through me to enter, so [bold type]make sure you're all bare naked[roman type] before trying to walk inside.'";
	WaitLineBreak;
	say "     After he made sure you understood everything he said, he lets you pass, heading for a seat on a large couch that seems to have been chosen for his size, specifically.";
	if player is submissive:
		say "     [italic type]'But you do look like a very, very good [boygirl], so I'm sure you won't disappoint me. And if you keep me thinking that way about you, then I'll let you sit on my lap whenever you're in need of an alpha werewolf brute to take care of you... I'll even let you lean your head between these...' He gives you bedroom eyes as he widen his manspread, leaning back on his couch, giving out that confident attitude as he even makes his huge pecs bounce, seeming like they have a mind of their own. 'I don't make that offer to just anyone...' You think he probably caught on your submissive instincts, and he may have actually really liked that.[roman type][line break]";
		now Loyalty of Jett is 10;
		WaitLineBreak;
	say "     You are now free to get out or go back in, as long as you follow Jett's aforementioned rules. You also know how to get here, as you will note the place's location once you leave through the dark passage [bold type]west[roman type] of here.";
	move player to Lair Of The Lupines Main Hub;
	AddNavPoint Hidden Rock Cavern Entrance;
	now Resolution of Discover The Werewolves Den is 1;
	now Find The Werewolves Den is resolved;
	connect LupinesPit;
	move Jett to Lair Of The Lupines Main Hub;
	move Elstan to Lair Of The Lupines Pit;
	move Kirnon to Lair Of The Lupines Pit;
	move Rodion to Lair Of The Lupines Kitchen;
	move Wyatt to Lair Of The Lupines Common Room;

Table of GameEventIDs (continued)
Object	Name
JettDominance	"JettDominance"

JettDominance is a situation.
ResolveFunction of JettDominance is "". Sarea of JettDominance is "Nowhere".

[RES STAGES]
[0 - Nothing ]
[1 - Initiated path, can gift Jett ]
[2 - Has shown intention to gift Jett, sent on to deliver a message to Elstan ]
[3 - Has talked to Elstan, persuaded through charisma check ]
[4 - Persuaded Elstan through exhaustion and persistence ]
[5 - Persuaded Elstan by begging him ]
[6 - First gift for Jett completed ]

to say JettAlphaTalkOfferGift:
	if Resolution of JettDominance is 1:
		say "     As you recall your encounter with the cook, Rodion, back at the kitchen, you think that perhaps this is the right time to make your [']specia['] offer to the alpha werewolf, who is just sitting on his couch, staring at you with that usual smug grin of his. Something about this makes you feel dirty, but of a good kind, and your heart skips a beat due to the rush of the antecipation. Once he sees you are still hesitating, only having considered in silence what you shall be doing next, he tilts his fuzzy head and leans forward slightly, 'Is there any problem? All of a sudden you look anxious for something...' Jett keeps his eyes on you as you think of a reply, on top of everything else, and you figure the best solution is to tell him all about it.";
		say "     'Oh, I see... So you've befriended Rodion? That's good to know, I'm pleased that you've been getting along with my crew. And it even seems he's revealed you a way to personally gift me. I've to say I'm flattered you went into such trouble just to find something I liked... Does that mean you intend to make an offer as well?' His smile is nicer than you would expect, and you do not feel so intimidated now. You really just want him to like you, and if that is the way you must do it, then why not give it a shot? You nod to his question, replying positively, and he chuckles amusedly. 'Oh, I see... Now I truly am flattered. Well, then do me a favor, if you will.' You nod once more, displaying your availability to receive his request.";
		WaitLineBreak;
		say "     'As you know, I'm also a gatekeeper, so I can't really leave this place too often before things start going wild. Who knows who might come across that entrance while I'm not looking. Back when you arrived, it was merely one of my grunts who caught you snooping outside, so I didn't really pay much attention, though we've had... problems before, with undesired guests, so my vigilance has been even greater ever since. This to say... I would love to accept your gift, but I must find a replacement for my current post, just for a while...' His eyes look over you as he leans back to his couch, a hint of a smirk beginning to show on his muzzle, and you begin to fear what this request is, for some reason.";
		say "     'Could you maybe... well, [bold type]persuade Elstan[roman type] down there [bold type]in the pit[roman type] to take the spot while we complete our arrangement? Then, return to me and I shall make preparations for our private session.' To this request, your eyes widen. He is sending you on a short distanced quest to deliver a message, and not to just anyone. To Elstan, of all the werewolves in here, who has the fame of being quite a rival to Jett. You struggle to comprehend the meaning of this request, but it seems he is leaving you no other choice if you want to proceed further. 'I shall be waiting for you. Hope you get to show me how much of a good and efficient [boygirl] you are. That'd be pleasant to see...'";
		WaitLineBreak;
		say "     With that said, you tell him you will be right back... That is, if you intend to continue this.";
		now Resolution of JettDominance is 2; [next stage]
		say "     (Your next task is to talk to Elstan down in the pits and select the corresponding talking option. Then, return to Jett and select the same option as before to continue the quest).";
	else if Resolution of JettDominance is 3 or Resolution of JettDominance is 4 or Resolution of JettDominance is 5:
		say "     With the request completed, you tell Jett that you have delivered the message to Elstan. He smiles and leans back on his couch. 'You've managed to convince that brute to do it? My, color me impressed. May I know what tactic you've employed?' You proceed to explain how you have managed, as per his request, once more.";
		WaitLineBreak;
		if Resolution of JettDominance is 3:
			say "     You tell him that you have managed to say the right words to him and he saw better ways to show what he is worth to the lair. Elstan then accepted your reasoning and was convinced to do this favor for Jett. 'A silver-tongued diplomat, aren't you? I wouldn't expect you to be able to use words to persuade that brat. In fact, I'm very pleased to hear you've managed to choose this path and be successful. It... also brings me some additional information about this guy. Perhaps I can keep him tame if I show more appreciation for his efforts... which I admit, it's a fact I often overlook.'";
		else if Resolution of JettDominance is 4:
			say "     You tell him that you simply stood there for as long as possible until he said yes, nothing more than a good old tactic of winning through exhaustion. He laughs, amused by your choice of tactics. 'My, that is definitely a good one! Bother him until he does what he's told! It seldom fails on him. Although, try not to get on bad terms. I'm not looking to have an enemy within these walls. In fact, I do care about Elstan. He's simply impossible to deal with, that's the problem, but anyway. Maybe not all hope is lost...'";
		else if Resolution of JettDominance is 5:
			say "     You do try to tell him how you have managed to do it, but you cannot help but feel embarassed about your tactic of choice. As you explain everything that happened, Jett's expression changes to a worrysome one. 'Oh, boy... You didn't have to put yourself in such position. Elstan's just a pushover, he likes to bark but he doesn't actually get anything done. Might I suggest next time to simply bore him until he accepts the task at hand? In last case, you just return to me and I'll advise you properly.' He beckons you to approach him, and so you do, only to be surprised by a gentle stroke over your face. 'Just remember you're a very strong person. You've managed to endure this apocalypse with your mind intact, and you're still kicking. You can face a lot more shit than the average person around here, and you don't have to do anything you don't really want to. So feel free to keep up that cute smile of yours, it'd be a shame if you lost it!'";
			say "     'Unless you actually liked to be put in that position, then I... won't judge you, I guess. Nonetheless, you got the job done, so that's something good.'";
		WaitLineBreak;
		say "     Jett then gets up and stands in front of you, his towering frame become even more evident, and with a happy smile on his muzzle, he puts his large hand over your shoulder. 'Now that congratulations are in order, let's get to what brought you here in the first place... I'm pretty sure Elstan will be here any moment, so we can start going to my personal chambers.' He beckons you to walk in front of him as he directs your way through a discrete pathway parting from the main hub into a corridor, then into a door, which he unlocks. Then, you are led to what seems like a hallway of an apartment, to your surprise. It is even resized to Jett's impressive height and size, so everything seems quite big compared to an average person.";
		say "     The werewolf then closes the door behind you, and you hear a lock kicking in. 'To keep undesired guests from entering,' he says, and gestures you to walk forward, then turn right, as to dismiss any worries you may have. He follows you closely as you arrive at a bedroom with a massive bed, which is in fact almost the entire room. There are pillows and... quite not what you would expect from an [']alpha brute['], as the decoration of choice, despite the rocky walls, feels very cozy and colorful. He even has a plushie of a cute little green blob monster, and you are quick to ask about it, as it just is too unexpected. He laughs it out as beckons you to take a seat atop his bed's sheets, which are extremely comfortable.";
		WaitLineBreak;
		say "     'Yes, I admit my personal chambers may look as something quite unexpected to people who haven't known me in a while...' he jokingly says, but you notice his expression changing when looking back at the plushie. 'That was a gift from my parents back when I was a small kid, and it was one of my favorite toys. Obviously we... eventually disconnect from such stuff as we lose interest in children's plays and whatnot, so this one was among many others back at my parents' house. So... Well, I've had lost contact with them for a while, but they used to live in the area. When this whole shit started, I've decided to visit the place, and... Found this little guy, still undamaged, among the debris. No trace of my parents, however. Which is probably a good thing.'";
		say "     You ask him if he thinks they might have succumbed to the nanites, and he shrugs. 'They might have, they might not. Whatever the case, we didn't leave in good terms. But that little plushie over there gave me memories... Happy childhood memories. It's such a shame we can't go back and make it all be fine, right?' Well, this you were not expecting. Jett definitely seems to be more than meets the eye, and him opening up to you like this just reminds you that he is still a person, and not just the leader of the werewolf brutes pack, much less an animalistic brute. Eventually, you reach out for his shoulder in an instinct, as in hopes to comfort him. 'Huh, this is not what we came here for, is it? I'm sure you had something else more fun in mind... And I've probably ruined the mood, huh.'";
		WaitLineBreak;
		say "     Perhaps the mood does not need to be ruined, so you let him know that you are happy he invited you here. He shows you a genuine smile as he gently places one of his massive furred arms over your shoulders. 'Well, I have an idea of what Rodion told you. Did he show you his [']cake[']?' You nod, as that was exactly what happened. 'Yeah, I do love eating someone out. Though not just anyone, mind you. I'm mostly turned on by the pleasure I can give to someone, and let's say our cook really likes ass play.' He looks at you in brief silence as he has you lean onto him, his soft fur tickling your body before you find yourself sinking into his coat. Jett feels really warm, and on top of that, he truly is massive.";
		say "     'Mind if we just cuddle? To be honest, I'm enjoying this...'";
		say "     You see no reason to refuse his request, since you went through all this trouble already. Besides, he feels very nice against your naked body, more even as you lie down together. He holds you like a teddy bear, really close to him, though mindful of his strength to not completely smother you. As you both are bare, you feel each other's presences to their fullest. The both of you share no additional words, only enjoying the peace and quiet of the place in a very comfortable and large bed, with the company of one another. It is a relaxing time, so much that you eventually doze off along with the alpha werewolf brute, feeling safe and good.";
		WaitLineBreak;
		say "     Time passes, and you wake up still next to him. You both have not moved even an inch away from each other, but you catch a glimpse of Jett sleeping like a baby while holding you close. It is probably time to wake him up from the nap, as Elstan is likely to get grumpy for waiting too long, so you poke him until he opens his eyes. 'Huh... Oh, we... slept? That's... odd.' He begins to get up, and you immediately miss his warm presence next to you. 'Have I missed being with a sane person for this long...? I barely recognize myself, sometimes.' Jett looks back at you and speaks in a seemingly apologetic manner, 'I've probably made you waste your time... But if it counts for anything, I'm glad for this moment. It was definitely an enjoyable gift.'";
		say "     As it seems you have accomplished your objective anyway, you tell him everything is fine, as long as Jett appreciated it. 'Not quite what you had in mind, I take it... Rodion wasn't too far off what I truly like receiving. I've had good moments with him as well, but each person is different. I'm hoping we can have a different kind of fun in the future, you and me. And that I promise it won't be just cuddling...' the werewolf chuckles.";
		WaitLineBreak;
		say "     Finally, you two start leaving Jett's private quarters and back onto the lair's main hub. Elstan fulfilled his word and is taking his gatekeeper duty seriously, while also sitting on Jett's couch. He does not see this as an insult, much the contrary. The alpha is quite amused at how Elstan looks in the leader's spot. 'Enjoying your few moments of glory?' he teases, to which the young muscular werewolf grunts. 'Are you done fucking? Nobody's been here other than a few others carrying slaves leaking cum off their holes. You know, as if we didn't have enough lying there in the pits being useless.' The alpha beckons him to get up, but looks at him in the eye as he speaks. 'Those are the same ones that keep running away and coming back, so you don't have to worry. Besides, if you care about the lair so much, try paying more attention to what's happening around you instead of your own muscles. Which, by the way...' he taps Elstan's hip in a brief pause, 'Yeah, you're taking really good care of yourself...'";
		say "     Elstan stares back at Jett, confused by his last compliment, which just came after a taunting commentary about his lack of attention. He does not seem to be able to process that. 'Uh... What do you... Thanks, I guess?' The alpha chuckles, then properly thanks Elstan for the favor. 'I appreciate you taking your time to help me out. You're dismissed.' The large werewolf then takes back his seat as he gestures Elstan to leave, if he wants to. You nod back at him, and as you have shared a moment of intimacy, you believe [bold type]you have formed a bond with Jett.[roman type][line break]";
		now Resolution of JettDominance is 6;
		now Loyalty of Jett is 20; [His attitude changes drastically towards the player]

Section 3-3 - Rodion Special Scenes

Table of GameEventIDs (continued)
Object	Name
RodionEvents	"RodionEvents"

RodionEvents is a situation.
ResolveFunction of RodionEvents is "". Sarea of RodionEvents is "Nowhere".

to say RodionTalkJettGift:
	now RodionDoneTalking is true;
	say "     As you remember one of your conversations with Rodion about Jett, the alpha werewolf, regarding a gift he would like, you decide to ask him more about that. The burly werewolf chuckles and smiles at your question, enthusiasm visible in his eyes. 'Oh, so you do want to make Jett like you, is that right? Hah, well! It is true, I can help you.' He then stops what he is doing and leads you over to a counter in the deepest corner of the kitchen, and you get the feeling you are about to prepare some food with him. However, he only turns to you and begins to talk. 'There is one type of cake that Jett never refuses when presented. I must dare say, it is the only one he cannot resist. Would you please close the door as I make preparations?'";
	say "     Surely, a cake would require some ingredients to be placed on the counter for use. Though, you are wondering why he did not close the door before moving all the way to this side of the kitchen. Perhaps you should just [bold type]go close the door[roman type]? Or did [bold type]you want to take care of something else[roman type] before committing to this?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go close the door.";
	say "     ([link]N[as]n[end link]) - Excuse yourself and leave.";
	if Player consents:
		LineBreak;
		say "     By his request, you nod to him and let him know that you shall, indeed, be closing the door for him. 'Thank you! This shouldn't take long to set up,' he says, smiling and nodding, as you turn your back and, with several steps, arrive at the door to close it. You do so discretely, as to not alert anyone else outside, just in case. The door is a bit heavy, though, so it takes you a while until you manage to fully close it. It now feels a bit stuck, but you should be able to open it back if you were not trying to be so careful, or just ask Rodion. He is a strong and burly guy, surely a heavy door would be no match for him. Speaking of him, he does not seem to be making a sound. You hear no cabinets nor any movement for a while, but anyway, you are done closing it, now it is time to turn back and...'";
		say "     'Gotta get that door fixed sometime. Sorry about that!' says Rodion as your eyes finally land on him in such an unexpected sight. The burly werewolf brute has one of his legs on top of the counter with his bare and massive furry ass pointed towards you, all spread out and exposing his soft butthole. His fuzzy tail wags happily as he looks at you, holding his head with one hand on the counter as he beckons you to come. 'Thought I'd give you a personal demonstration. Don't be shy! It's alright to come closer...' You are not so sure this is the type of [']cake['] you were expecting, but since the opportunity presents itself... Do you [bold type]wish to go along with this[roman type] or should you just [bold type]tell him you have to be elsewhere?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go along and approach Rodion's ass.";
		say "     ([link]N[as]n[end link]) - Maybe you should just leave.";
		if Player consents:
			say "     Not minding where this is going, you walk towards Rodion as he answers with another big smile. You can only notice how huge his ass is when you finally get closer, so plump and massive, with each buttcheek popping out like fat bubbles. It is so round and soft, with the consistency of a powerful sizable ass and a perfect blend of muscle and fat. 'This is his favorite. Oh, and don't mind the size of mine, he doesn't discriminate. What counts is the intention, your willingness to provide him with something personal, putting yourself vulnerable for him... And giving him a tasty snack in the process.' You remain there, observing Rodion attentively as he speaks, your eyes following his buttcheeks bouncing up and down as he moves his ass teasingly.";
			say "     With one hand, he grabs one of his asscheeks and spreads it further to the side, giving you an even clearer view of his hole. It looks very soft and receptive, and it even winks at you. 'He likes a good show too, so make sure you put on a really nice one. For the ladies, or if you just happen to have a pussy on you, just let him see how moist and juicy it is, as he will prefer to go for it. But for those without one, just show him he can own your ass and eat it for as long as he pleases. He has got such a long and nice tongue too, great reach... I got so excited I couldn't stop grinding my butt on his muzzle, wanting more of that skillful tongue in me...' As he continues speaking, his hole begins to throb in need...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Give him a lick, then [']devour his cake['].";
			say "     ([link]N[as]n[end link]) - Just thank him for the demonstration.";
			if Player consents:
				say "     You respectfully step closer to that marvelous ass, placing one hand atop one of his bubbly buttcheeks to give it a slow and steady rub. This, as a sign that you intend to approach him, makes the werewolf moan softly, and he makes no move to stop you either. Following your initial intention, you lean over your head between his buns, right on that warm area, putting your tongue out to press against his winking hole. Its softness shows how receptive his ass is, and he seems to have great control over it, enough to relax his anal muscles and allow your tongue to dig deeper inside. As you wiggle it, Rodion only moans in pleasure, mindlessly pressing his ass back against your face, as if beckoning you to continue.";
				say "     Having received such a positive feedback, you carry on eating the burly wolfman's ass out, now fully committed to accept his offering, and place both hands on his buttcheeks. With your head properly tucked in between them, you provide Rodion a full experience of ass worship and rimming that just sets his cravings skyrocketing. His breathing gets immediately more intense as pleasure begins to overtake him, that sensitive pucker of his yearning more and more for your attention, and you do not let him down. By digging your tongue so deep inside him, licking at the inner walls of his butthole and pushing even further ahead, you manage to drive the cook insane with lust. He cannot help but jerk himself off, causing his hole to throb around your tongue as his prostate pulsates.";
				WaitLineBreak;
				say "     It does not take you a lot to realize this might be one of Rodion's favorite things, getting his ass eaten out so voraciously, and you make sure you do not disappoint. 'Fuck...' an almost whispering word escapes his lips amidst a moan, the werewolf barely able to hold himself against such an experience, one which you can clearly see that turns him on beyond anything. You really put on a lot of effort into devouring his ass by pressing your whole face against it, squashing your lips on that hole and pushing your tongue in, wiggling and flicking it around. Thanks to the immensely positive reception Rodion shows before your commitment, confidence prevails in you, causing you to feel like the best ass licker in town.";
				say "     This is set to last for a considerable amount of time, as you follow up with lots of licking and butt massaging, causing Rodion to further lean himself over the counter so you can have even better access to his rear. His fluffy tail wags around excitedly at the pleasure he is receiving, though a fair bit above you so it does not brush against you constantly. He completely loses himself in the nearly a lusty stupor as he continues to stroke his own cock. 'Feels so fucking good... Ooh... P-please, don't stop...' he begs, and your gestures imply that you will not even consider stopping while that tasty grand ass is practically hugging your face. Instead, you lift his buttocks and get more of your mouth pushed against his soft hole.";
				WaitLineBreak;
				say "     The whole thing starts looking like you just have the cook's ass laying on top of your face, both of his legs having found their way up the counter as Rodion holds himself onto the wall at the end of it. He also wiggles and grinds his ass against your face, much alike how he said he did to Jett, although you think the big alpha had a much easier time managing this whole situation. With such enthusiasm, if he was actually sitting on your face, you would probably be in trouble, completely overwhelmed by his sheer size, strength and weight. But the circumstances, right now, actually help you, giving you the simple freedom of movement to continue eating his ass, getting a good taste of how his enormous buttcheeks would feel around your face.";
				say "     'Fuck, I'm... Getting close... Pleeease, don't stop now...!' He picks up the pace then, and you fully bury your tongue inside his ass, to the very last inch you can push, and begin to wiggle and lick at his insides with as much enthusiasm as you can muster. This proves to be very effective as Rodion's moans increase in both frequency and volume, his ass now seriously grinding against your face, and then, his pucker begins to throb as he warns 'I'm cumming, fuck... Yes!' You dare not to slow down, not even one bit, as your tongue continues to wiggle as fast as you can make it, and you feel his orgasm with each throb of his anal ring. Rodion shoots his load all the way while your face is still filling the space between his buttocks.";
				WaitLineBreak;
				say "     He pants as the last drops leak from his dick, you finally pulling away and standing up to face the burly werewolf. 'Phew, that... That was really hot! Fuck, you're good at this...' Rodion then slowly gets off the counter and looks at the mess he has made, a little embarassed of the whole situation. 'I should probably clean this up before it dries, or... someone sees this! Doing this in the kitchen, of all places, I'm...' he stops talking, grabs a cloth and begins to clean up the cum, which now you get to see, and it was actually a lot. The cook keeps making sure there is no drop left on his counter, almost in an obsessive manner. You approach him and ask if he is alright, as he seems quite distressed...";
				say "     'O-oh? I am, yes! I... I just don't know what came over me! I have no idea why I did that, I suppose I must've been-...' You then stop him and let him know that you actually enjoyed this, or you would not have taken the step to pleasure him like you did. He looks back at you and smiles after a while, seemingly calming himself down. 'Okay, maybe... Maybe I needed that. I'm glad you didn't think of it as inappropriate, even though it probably was... You know, most werewolves here are expected to be tops and I... I prefer the other way around. It messes me up when I don't manage to keep hold of myself... But thank you! You're really nice! We could probably do this again sometime... I-if you want.'";
				WaitLineBreak;
				say "     With the awkwardness out of the way, Rodion returns to his cheerful self. 'Alright, so... I guess you get the idea of what Jett likes the most, yeah? If you do this, then let me know how it goes! I'm sure he'll like it a lot!' Now that the quite hands-on demonstration of what to offer Jett is done, you have absolute certainty of what kind of [']cake['] Rodion meant. Perhaps [bold type]you could try this plan with the alpha werewolf to make him like you more[roman type], but you feel like [bold type]you have actually bonded with the burly werewolf cook[roman type] a little as well[roman type]. Only time will tell how this will develop.";
				now Resolution of RodionEvents is 1; [Begins Rodion's Events]
			else:
				say "     The idea is clear and you get it, so you proceed to politely thank him. Rodion takes a moment to come back to himself as he hears you speak. 'Oh, right! Yeah, that's pretty much it!' he says, getting out of the counter and recomposing himself. 'Uhm... I got a little carried away there, I'll admit! But indeed, it should be everything you need to impress Jett, if you so wish. He loves eating a nice and big cake, yeah!' It seems that, translating what he just said, Jett appreciates a good amount of supple ass. In all honesty, it does not surprise you.";
				say "     'Well, you seem like you have seen a lot of stuff out there, maybe you'll be successful once you wish to present him a gift like this. That is, if that's your intention, of course.' Perhaps [bold type]you now know how to try to make Jett like you more[roman type]. Rodion seems happy to have helped you in some way, even though his methods were a little excessively visual.";
				now Resolution of RodionEvents is 99; [Terminates Rodion's Events]
			now Resolution of JettDominance is 1; [Advances Jett's dominant path]
		else:
			say "     You tell him, without the intention to sound rude, that this is not exactly what you had in mind when he spoke of a cake and a gift. 'Oh! I... apologize!' he says, immediately recomposing himself, getting out of the counter and putting his apron back. 'I'm so sorry! I... It seems I've got the wrong message! Well, uh... This is sort of embarassing, really! I thought you'd like a personal demonstration on how to give Jett what he really likes, but... I, well, t-this is pretty much it, really. He loves eating a nice cake, yeah!' You cannot help but think that Rodion really seems embarassed that you refused his generous approach, but it seems that, translating what he just said, Jett appreciates a good amount of supple ass. In all honesty, it does not surprise you.";
			say "     'Well, you seem like you have seen a lot of stuff out there, maybe you'll be successful once you wish to present him a gift like this. That is, if that's your intention, of course.' Perhaps [bold type]you now know how to try to make Jett like you more[roman type], but this whole situation was a little odd. You take note of what you learned and excuse yourself, thanking Rodion in the process... As awkward as it may have been.";
			now Resolution of RodionEvents is 99; [Terminates Rodion's Events]
			now Resolution of JettDominance is 1; [But still advances Jett's dominant path]
		now Energy of Rodion is 3;
	else:
		LineBreak;
		say "     You tell Rodion that you just remembered you had to take care of something before going further with this, since it might take some time and you want to make sure you are ready. He accepts your reasons wholeheartedly and nods. 'Oh, yes, it would take some time, so I understand if you have other responsibilities to attend to before we do this. I'll be happy to show you my cake another time then! Just let me know.' With that said, you finally excuse yourself and proceed to leave the kitchen.";

Section 3-4 - Elstan Special Scenes

to say ElstanTalkGiftJett:
	say "     You take a deep breath before you bring this subject, as you have a feeling Elstan will not take it too greatly, but you have decided to give it a shot. Politely, you tell him that you have a message from the alpha werewolf, or rather, a request. He immediately interrupts you, puffing out his chest as he places his hands over his hips. 'Oh, the alpha has a [']request['] for me and he sends his new little bitch to deliver the message? Cute. You really are a little slut, aren't you? Doing everything you're told?' He then laughs, just enjoying making fun of you for a while. 'Now, what does his royal ass want? I'm actually curious. It's not everyday I get asked a personal favor from him.'";
	say "     As uncalled for as that was, you have a task at hand and intend to complete it, so you disregard Elstan's attitude and proceed to inform him of Jett's will. He... does not look happy upon hearing your words. 'What the fuck? He wants me to do his job?! And not only that, just the job he could very well fucking do on his own and leave me in charge of things that matter, since he can't fucking do it at all! That fucking prick sends you here for what, so I don't fucking punch him in the face?!' You swear even his massive muscles start pumping at the rage that has been built inside him. He really does not seem to like Jett, and now you really just had been shown proof of that. Nonetheless, your job is not done...";
	WaitLineBreak;
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Charisma Check):[line break]";
	if diceroll + bonus >= 12: [Managed to calm him down]
		say "     Perhaps you feel inspired today, or you are just extremely charismatic, but you manage to pull the seemingly impossible. Through a carefully placed speech and words, you try telling Elstan that, perhaps, this is Jett's way to show he trusts him and wants to find a way to improve their relationship. It may be because he cares that he has sent you to ask Elstan to replace him for a while, and this is more of a test to you than it is to him. The brown muscular werewolf seems to think twice before he says his next thing.";
		say "     'Alright, look. I don't fucking like when he just picks me as his second option, or uses me to cover the frickin' holes he leaves behind. Well, I'd gladly put my dick in his asshole to teach him a fucking lesson, but you get what I mean. It just fucking sucks to be in my place! All I get from him is this kind of treatment, as if I'm secondary! Or if I just wasn't good enough for his standards. Whatever, I still think I should've taken his place because I'm plain better at doing his job than he is.' You give him an understanding look, but then, you figure you can tell him that if he does prove he can do a better job than him, he might be sending the right message to the alpha.";
		WaitLineBreak;
		say "     'Hm... You do have a point. I can do gatekeeping. And I can do it better than him. Yeah, I'll just show him that. You know what... You're not that bad after all. Still a little bitch, and I'll still make fun of you and treat you like one, but at least I know deep down you've got a brain. That's better than most...' The way he glares at you once he says that makes you feel a little uneasy, but you thank him for his... compliments? Let us call them that, for now.";
		say "     'Go [bold type]tell Jett[roman type] I'll be there. Just gimme a sec,' he says, before you have confirmation that your task is on its way to completion.";
		now Resolution of JettDominance is 3; [persuaded Elstan successfully]
	else: [No luck there...]
		say "     You try to reason with Elstan, but he is having none of that. He truly thinks Jett is being an asshole by doing this. 'Fuck you! And fuck him! I'm not doing any of that. Good fucking luck trying to be his little bitch, you're not getting his favor at the cost of my fucking hard work!' Well, that complicates things. You cannot really return to Jett without completing this, so... What shall you do?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take even more time trying to convince him.";
		say "     ([link]N[as]n[end link]) - Just beg him to do this for you and tell him you would do anything for it.";
		if Player consents:
			say "     Well, this is going to take a while, but you really have to succeed in this task. Figuring that Elstan will need a whole lot of convincing, you give up on your next few hours to follow him on his workout routine, much to his annoyance.";
			WaitLineBreak;
			follow the turnpass rule;
			say "     'You're really insistent, aren't you? Or you just like watching me lift some weights and punch stuff? Because if it ain't none of that, I'm thinking you're just trying to piss me off.' You tell him it is not that, in fact, you are simply trying to fulfill a request the alpha werewolf brute dearly asked of you. Though, everytime you mention Jett, Elstan grunts and reacts negatively. You know for a fact there is some rivalry between them, which is indeed adding a certain difficulty to this task. Nonetheless, you must insist, and so, you try to spend some time accompanying the muscular werewolf's exercises. Amidst one, he puts his weights on the ground and looks at you dead in the eye.";
			say "     'Fuck this, I'll do this fricking stupid shit he asked so you can fuck off and leave me alone! Fuck's sake, how can you be so fucking persistent?! That ain't the kind of bitch I like, for sure. Not one who bitches about what they fucking want done for them!' It is clear Elstan does not like being told what to do, but it is not like you were given any choice. He forced you to insist... 'Just go fucking [bold type]tell Jett[roman type] I'll be there, I need only a sec to get finished around here. And you... Just fuck you! I'll fist your ass open senseless right on spot if I have to look at you any fucking minute longer!' He then turns around to leave and finish his workout.";
			WaitLineBreak;
			say "     Your persistence tactic worked, and so, you can call this quest a success. Now, you can go back to Jett.";
			now Resolution of JettDominance is 4; [persuaded through persistence and exhaustion]
		else:
			say "     Out of desperation, you simply beg him to please take the spot, and that you shall do anything for him to make that happen. You think that just annoyed him even more, but that also caused his hanging furred sheath to thicken visibly. 'You fucking slut... Is that all you've got to say?! So things don't work out in your favor and you just beg like a bitch? You truly are one, after all!' He then walks towards you and, suddenly, you find yourself pinned against the wall, with his large paw-like hand surrounding your neck...";
			WaitLineBreak;
			say "     'Beg me. Go on... Do what you do best, slut...' He leans his head over to the side of your skull, then presses his muscular chest against your body, and you start feeling something throbbing against you, as if it was just slowly growing. This is the game he wants to play, so you oblige, although the force of his thick fingers around your vulnerable throat is making it somewhat difficult for you to speak. You give him what he wants to hear and beg him to help you, which makes him growl lowly. 'Bitches like you turn me on, you know... But it's such a shame you simp for that crappy alpha over there when you could have someone so much better to serve...'";
			say "     His grasp tightens, which makes you whimper, and in turn, the werewolf gives your whole face a big and long lick. 'I'll go take that fake-ass alpha's spot, since you really want his dick up your [if player is female]pussy[else]ass[end if], just so you can get that curiosity out of your mind. You've got a much better one here, longing to breed you like the good bitch you are...' You then feel a very girthy and heavy cock slapping against your midriff. 'Consider this a favor from me... I don't give them away that often. And in turn... just get down under that trapdoor over there, and I'll grab you for a good, deep, hard fuck...' Elstan then gives your face another lick before telling go of your neck, which aches from the strain. 'Go [bold type]tell Jett[roman type] I'll be there, I just need a sec.'";
			WaitLineBreak;
			say "     Now, you can finally catch your breath as the werewolf steps back from you, looking at you dead in the eye. It makes your heart skip a beat before he turns around to go finish his workout.";
			say "     You have had your own reasons to do this, but whatever they were, it made you feel quite dirty. Either way, you can go back to Jett.";
			if Libido of Elstan < 1:
				now Libido of Elstan is 1;
			now Resolution of JettDominance is 5; [persuaded Elstan... through questionable ways]


Section 3-5 - Wyatt Special Scenes

Table of GameEventIDs (continued)
Object	Name
WyattRomance	"WyattRomance"

WyattRomance is a situation.
ResolveFunction of WyattRomance is "". Sarea of WyattRomance is "Nowhere".

[RESOLUTION STAGES]
[0: Romance not yet initiated]
[1: Romance Route initiated]
[At night, when passing by the common room, player may feel curious to explore the bedrooms when hearing some noise.]
[Player must have spoken to Wyatt and have had sex with him at least once.]
[Player must NOT have 'Male Preferred' feat, as it would lead to inconsistencies with the scenes. This would also not make sense with Wyatt's romance path.]
[While the scenes are different for Males and Females, they merge in the end as the player will have to end the scene as a Female.]

[In order to continue the romance, Player must be female and have a feminine appearance. On a certain point forward, going to Wyatt while looking male will prompt him to 'help' the Player transform into a Husky Bitch.]

instead of going to Lair Of The Lupines Common Room while (Resolution of WyattRomance is 0 and PlayerFucked of Wyatt is true and daytimer is night and "Male Preferred" is not listed in Feats of player):
	say "     Upon walking into the Common Room within the lair of the werewolves, at this time of the day, you occasionally hear some noises, presumably of sexual nature, coming from the bedrooms. It is always a curious event that leaves you wondering what could be happening on the other side of the stone doors, but until now, you never really found the will to investigate the matter. Though, this time, you feel as if there is an attempt to keep silent, as it is almost whispering moans you hear. They, unfortunately for their producer, echo through the hall and are easily audible by someone who happens to be fairly close, like you. Should you choose to inspect the source of the noise, it is best that you proceed with caution as to not alert anyone of your presence, lest you intend on getting caught and present yourself to unforeseeable consequences.";
	Linebreak;
	say "     [bold type]Shall you let your curiosity take the reins[roman type]? You should find no difficulty in keeping quiet, for now.";
	say "     [link](1)[as]1[end link] - Go ahead and investigate.";
	say "     [link](2)[as]2[end link] - Let the wolves have their fun in peace.";
	say "     [link](3)[as]3[end link] - Leave and ignore strange noises coming from here, from this point onwards.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to give an excuse, [link]2[end link] to tell him that you've been curious about him or [link]3[end link] to blatantly flirt with the beast that could surely handle someone your size.";
	if calcnumber is 1:
		LineBreak;
		say "     What issue is there in being a little curious? It is not like catching one of these brutes in sexual activities is a rare thing, anyway. As they seem so open about it, you are pretty sure that even if you were caught looking, you would simply be greeted and even, perhaps, invited to join. With certainty on your side, you proceed forward and into the hall leading to all the different bedrooms, following the source of the moans. It is when you get closer that your doubts begin to arise, as you think you just heard something more feminine-sounding. As you have not encountered any female werewolf brutes, you think that maybe it could be one of the slaves that have not been turned yet, but such a thing is very rare as most slaves are males, still. Definitely curious, you attempt to know more.";
		say "     As you step closer to the bedroom in question, you can conclude there is definitely a female inside, or at least someone with a high pitched voice associated with the female sex, if you must not assume their gender by the sound of their vocals alone. In fact, that would be wise in a world like this where transformative infections seldom discriminate whichever bodies they touch. Upon closer inspection, you realize the door is closed, but not locked. Judging by certain furniture sounds from inside, creaking rhythmically, with the occasional grunt and moan coming out, you are certain these individuals are having sex.";
		WaitLinebreak;
		say "     You suppose you could [bold type]try take a peek inside quietly, but that is a much riskier action[roman type]. It is very likely that you will be caught, but if you fear what may come from that, you [bold type]may simply choose to leave[roman type] and not bother them at all.";
		say "     ([link]Y[as]y[end link]) - Quietly push the door open and satisfy your curiosity.";
		say "     ([link]N[as]n[end link]) - You consider this an inappropriate breach of privacy and will just take your leave.";
		if Player consents:
			LineBreak;
			say "     Ready to accept any consequences that may come from your decision, you slowly push the heavy stone door open just enough so you can observe what is happening inside. So far, you are fine, but what your eyes lay upon is definitely a quaint sight. You have a clear shot at the bulk of a dark grey werewolf, which you easily recognize as Wyatt, fucking who seems to be a female husky, significantly smaller than him, as he buries his whole cock inside her with each thrust. With a more careful look, you realize that thick shaft of his is covered with a condom, but it is quite hard to see as you doubt there would be any size of condoms big enough to fully coat that entire thing.";
			say "     When you give it some thought, you remember the time when you conversed with Wyatt about his sexuality and preferences. It all then makes sense, as if he poured any of his personal fluids inside the husky, that would likely transform her due to their infectious nature. The werewolf prefers females, and transforming her into a werewolf brute like him would defeat the purpose of having picked a female slave. But your thoughts do not remain focused for much longer, as the sight of his vicious and passionate fucking, embracing the husky with his powerful furred arms, almost making her disappear out of sight due to his enormous physique in comparison, is something that inevitably draws your attention.";
			WaitLineBreak;
			say "     The thrusts are relentless, and while the husky's pussy looks almost impossibly stretched around the werewolf's girty shaft, she seems to be in pure bliss as the brute takes her with intense pounding. He takes hold of her affectionately, in a way you have never seen a werewolf brute do, and looks so overtook in his lust, his focus so great, that he does not even become aware of your presence. You remain here, observing the intercourse between the brute and the feminine husky, the way Wyatt embraces and kisses her while he is ballsdeep inside her with such vigor, enjoying every second of it as his partner of choice quivers and squirms in total pleasure.";
			LineBreak;
			say "     With all this happening right before your eyes, [bold type]what comes to your mind?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - This makes you horny and you feel an urge to touch yourself.";
			say "     ([link]N[as]n[end link]) - Maybe you should just quietly observe and be ready to leave.";
			if Player consents:
				LineBreak;
				say "[WyattSpecialVoyeur]";
			else:
				LineBreak;
				say "     The thrusting does not ever stop, not until it eventually leads the wolfman to push his cock all the way into her, knot and everything, once he is about to reach his climax. Then, he does not hold back, grunting and moaning as each and every spurt of cum is shot. The louder noises startle you as Wyatt turns his head up in complete ecstasy, urging you to hide behind the door and out of view. You stand there until his orgasm eventually ends, and with this memory in your mind, you figure it is time to leave him be before he notices you. One last glance shows the werewolf quiety cuddling with the female husky, caressing her chin affectionately as they embrace each other, Wyatt remaining knotted to her for, most likely, the next few minutes.";
		else:
			LineBreak;
			say "     Perhaps it is for the best to leave them be. This is their home, after all.";
	else if calcnumber is 2:
		say "     Perhaps it is for the best to leave them be. This is their home, after all.";
	else if calcnumber is 3:
		say "     Why should you bother the wolves in their own home ever? You decided that you have no interest in things like these and shall avoid them if similar situations arise.";

to say WyattSpecialVoyeur:
	say "     It is true that you always had a thing for this athletic werewolf. You cannot tell if it is his looks alone or the chill and cool guy attitude, but he just turns you on. Seeing him in pure bliss and lust as he fucks someone he is truly into does things to you, like blood rushing to your erogenous areas and tempting you to bring yourself some sexual pleasure. Before you know it, you have your hands over your [if player is male]cock, which was throbbing hard by now[else if player is female]pussy, which was seriously moistening up[else]sensitive spots[end if], as lust overtakes you and clouds your better judgement. Perhaps the risk of him seeing you is also contributing to this... Maybe you would not mind if he caught you.";
	say "     As you continue to observe the neverending thrusts, you are eventually rewarded with the sight of the wolfman pushing his cock all the way into the husky's pussy, knot and everything, as he is about to reach his climax. Then, he does not hold back, grunting and moaning as each and every spurt of cum is shot. The louder noises only makes it all seem more exciting as your gaze remains locked in the scene, watching Wyatt unload inside the husky as she, too, quivers in bliss. Once his orgasm subdues, he lowers himself upon his partner and embraces her to cuddle, as he must wait for his knot to deflate. Even this is a hot sight, as you get a good shot at every part of the brute, his ass and balls raised up as he lies down on top of her.";
	say "     It almost looks like he lined himself up like that on purpose...";
	WaitLineBreak;
	say "     'Hey you... Enjoying the show?' says the werewolf, without even turning to you. This unsettles you, as you have no idea how he knew you were there. Maybe you were a little too loud? Though, he does not seem angry at all. 'I knew you were watching since the start. I got a mirror here pointing towards the door.' Following his explanation, you do try to look for this mirror, as it has naturally escaped your eyes, and you confirm what he just said. There is a small mirror on top of the bedside table turned towards you, which would allow Wyatt to look over the entrance easily. At this fact, you just give a nervous smile. 'It's fine, just because it's you. I'd have told anyone else to piss off.'";
	say "     By now, the werewolf is able to pull his cock away from the husky, and he begins to do so... 'Alright lass, let's take you back to the- Oh shit...' You then see a whole stream of cum following the tip of his half-hard dick and the husky's pussy leaking a significant amount of his cum. It would appear that the condom could not hold the force of his orgasm and got torned. 'Close the door, will you? I've got to take care of something here real quick...' He then bends under the bed to fetch a box, opens it and grabs a bottle with a white liquid inside, looking much like cum. He then brings the bottle over to the husky, whose fur seems to be already changing its tone. At first, you are confused, but as she drinks its contents, you see her fur returning to its former color, giving you an idea of its purpose.";
	WaitLineBreak;
	say "     'There you go... good girl,' he praises her, giving her a kiss as she finishes up the drink. Wyatt then goes ahead and begins explaining himself as he sits down at the edge of the bed, letting the husky rest for a few moments. 'That was just some husky cum, which shifts its drinker's appearance towards a female husky... in most cases. I keep a supply of transformatives to ensure I don't end up turning slaves into werewolf brutes. This girl here's my favorite, and keeping her as an exclusive slave was the only favor I could get from the alpha... I try to keep her looking this way, but as you can see, it's pretty hard. Accidents happen... More often than not,' Wyatt explains as he looks down at the torn condom lying on the floor, in a messy puddle of his own sex fluids.";
	say "     'I guess I told you about this side of me before, right? Thought I haven't told anyone I sneak female slaves into my bedroom and try to not get them turned.' But husky cum cannot come from a female, so you ask him where he managed to get that. 'Well, as you know, it's pretty hard to get stuff past Jett... so, one day, I captured a male husky and milked him off as much as I could, enough to acquire a generous amount. He must be a werewolf by now, though, so if I need more, I either gotta go on a capturing spree or wait until someone gets one and doesn't use him up until he's all changed up.' While you both talk, the werewolf bends over the bed again to fetch his box, then puts it between you and him so you both can have a look at its contents once it is open.";
	WaitLineBreak;
	say "     'Though, I don't like taking chances, so I also harvest a second item to do the job.' Wyatt then slides his hand over the top of the box and takes it off, revealing what is inside. You see the bottle of husky cum he mentioned surrounded by a pile of fur. 'Her own fur also works, though I'm led to believe cum is just a stronger transformative. If you're wondering how I know all of this, well... We've got a really smart guy in the lair that taught me all this, though it's best I don't call his name, maybe.' You then confirm that Wyatt also collects some fur from the female husky in order to secure her appearance and that he definitely has enough knowledge on how to manipulate the nanite infection, even if it does not come directly from him.";
	say "     'Hey, I know it's a lot to ask, but... Care to keep this between you and me? I know I'm probably doing something that'll piss off the others, so I'd like to avoid having to try to explain myself and risking getting it all taken away. I'd be really happy if you kept it a secret.' The athletic werewolf then slides one of his thick paw-like hands over your jaw, caressing it affectionately as he looks directly in your eyes.";
	WaitLineBreak;
	if player is female and breast size of player > 0:
		WyattSpecialVoyeurFemaleRoute;
	else:
		WyattSpecialVoyeurMaleRoute;

to WyattSpecialVoyeurFemaleRoute:
	say "     'Though, I... wouldn't mind to just keep you, either. You're beautiful...' he says, as you notice his cock slowly growing between his furred legs. 'If I had someone like you to make sweet love with everyday, I wouldn't need to do any of this. Plus, I'd keep you safe... No need to worry about scavenging for supplies out there, or evading dangerous creatures. And you'd get a big, strong, hung, and moderately smart, werewolf brute as a boyfriend. But I'd truly be the lucky one, here...' You see Wyatt getting closer and closer to you as he speaks, having pushed the box out of the way, to a point his muzzle is mere inches away from your face. He then stops moving, but you feel the air around you becoming... different. Hotter, if you had to describe it, as the werewolf's breathing gets deeper and his dick even harder.";
	say "     'I'd love to fuck you, [mister]... And don't you worry about our guest, she's fast asleep.' He means the husky girl he fucked before, who really seems deep in her slumber to notice anything happening around her. But, by now, Wyatt is slowly embracing you, his muscled big arms sliding across yours as he brings himself even closer to you. His intentions are clear, but [bold type]you still have not had a chance to express your will[roman type]...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You really want him to fuck you.";
	say "     ([link]N[as]n[end link]) - You [italic type]do not really[roman type] want him to fuck you, but...";
	if Player consents:
		LineBreak;
		say "     There is nothing else you would want more than to have this big wolf on top of you, fucking your brains out as passionately as he did to the female husky before you. With that said, you let him approach eagerly as his body meets yours and you begin to feel his weight on you. 'I see that you want it too, right? Can't wait to make you feel so good...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you give him entry, taken by your lusts. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it towards your sex, which is all moistened up by now.";
	else:
		LineBreak;
		say "     ... There is something you cannot quite tell in the way your body responds to his advances, as if you subconsciously wanted this to happen. His beastlike scent feels stronger, to an almost overbearing way, as his body meets yours and you begin to feel his weight on you. 'Let me take care of you... I'll make you feel really good...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you feel nearly compelled to give him entry. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it towards your sex, which is compulsively moistening up.";
	say "     You feel his hands over your breasts, squeezing them gently and rubbing at your, as his tongue passionately invades your mouth with the dedication of a true lover. It feels like he truly appreciates you and prioritizes your pleasure over his, though you continue to feel his throbbing shaft pressing against your wet curls, warmth pulsating from its rock solid girth. Unable to resist, you let him push you atop the bed, not too far from the resting female husky next to you two. His large bulk manages to pin you down underneath him with ease, and as the werewolf grows even more excited, he finally begins to push his cock into you, slowly and gently. This scent you have been catching from him leaves you pleasantly relaxed, your womanhood effectively lubricated, and allows him to easily enter you as he releases a low growl of joy.";
	WaitLineBreak;
	say "     Despite his previous intercourse with the female husky, Wyatt's erection is so genuinely hard that it could have fooled you into believing he has not had any sex for a while. The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No further words are shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
	say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
	WaitLineBreak;
	say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
	say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Oh, shit, I forgot... Fuck...!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
	WaitLineBreak;
	say "     'I... Fuck, I don't know what got into me... Uh... hold on a sec.' Wyatt then carefully stands up out of the bed and goes to grab a towel, which he offers to you and even helps you clean yourself. 'That was a big load... And I just had came! You're... amazing!' His cheerful expression causes you to smile as you exchange a few more words before returning to the initial subject that led you both to this. 'So... Yeah, uh... I mean... You... We... We could be sort of... lovers, right? Or is that something you're not interested in? I-if not, that's totally fine, I... don't mind keeping it casual at all! Though I... Yeah, I'd like if you thought about that, so you don't have to give me an answer right now.'";
	say "     It feels like Wyatt is asking you to be his lover, though he does not want to pressure you on that matter. You tell him that is fine and that you shall give him an answer later, once you give it some thought. It is a rather odd request, though, as you have not known each other for that long, but the werewolf must be feeling quite lonely. With some words of comfort, you manage to maintain that smile on his face as you finish cleaning yourself from the mess he has made, getting ready to leave. 'You're leaving? Yeah, I should bring the husky girl back to the pit, she can't just stay here... But hey, I really enjoyed this. I hope we can... repeat it.'";
	WaitLineBreak;
	say "     You cannot deny that a part of your mind is telling you that you really want to repeat this, as the unexplainable desire that struck you before rises again at the mere thought of it. There was something odd about his scent when he was fucking you, almost addictive in its nature... But you must shake these thoughts away as you move to leave, saying goodbye to Wyatt.";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;
	now Resolution of WyattRomance is 1;

to WyattSpecialVoyeurMaleRoute:
	say "     'Though... You're also... different. You're not really bound to these walls and, despite the state of things out there, you can still hold some thoughts... Unlike most slaves we have. I don't know why, but... I do feel unexplainably attracted to you, even though you don't look like my type. But... we could change that too... That is, if you'd allow me. I've got plenty of materials to make you the perfect female... All you have to do is to let me take care of you.' You see Wyatt getting closer and closer to you as he speaks, with his box in reach, to a point his muzzle is mere inches away from your face. He then stops moving, but you feel the air around you becoming... different. Hotter, if you had to describe it, as the werewolf's breathing gets deeper and his cock begins to rise.";
	say "     'It's okay if you don't want it, though. But you'd look so hot as a girly husky yourself... Makes me hard just picturing you like that... Oh, and don't worry about our guest, she's fast asleep.' He means the husky girl he fucked before, who really seems deep in her slumber to notice anything happening around her. But, by now, Wyatt is slowly embracing you, his muscled big arms sliding across yours as he brings himself even closer to you. His intentions are clear, but [bold type]you still have not had a chance to express your will[roman type]...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You just cannot resist his advances... [bold type](MtF Warning)[roman type][line break]";
	say "     ([link]N[as]n[end link]) - No, this is going too far... you must try hard to resist his charms!";
	if Player consents:
		say "     ... There is something you cannot quite tell in the way your body responds to his advances, as if you subconsciously wanted this to happen. His beastlike scent feels stronger, to an almost overbearing way, as his body meets yours and you begin to feel his weight on you. 'You're going to look beautiful, trust me. And you'll enjoy it...' he almost whispers before he starts kissing you, his long tongue soon meeting yours as you feel nearly compelled to give him entry. Soon, his mighty bulk is pressing down against you as he takes you in his total embrace, rubbing his large lupine cock between your legs, slowly driving it deeper in between them as you feel your butthole, as if per some inevitable fact, yearning for it.";
		say "     'I know what the likes of you really enjoy, so I suppose you can have the rest of that bottle... How's that?' With a grin, he resumes pushing you atop the bed, pinning you down under him with his hulking body, giving you no room to escape his grasp, and... you really cannot even muster the will to attempt such a thing, as the sight of such a masculine werewolf brute on top of you makes your arousal spike uncontrollably. The scent emanating from him is overbearing, a masculine beastlike fragrance that clouds your mind to a point you can only think about satisfying him. It only gets worse - or better - as he jerks himself off in anticipation of what he is about to do with you.";
		WaitLineBreak;
		if player is male:
			say "     Your [cock of player] cock only throbs as hard as it can be right before the werewolf, to which he looks at with a smile. 'Would you look at that... Seems like you're enjoying the view.' Then, as unlikely as it could have seem from what you know of him, Wyatt also gives you a hand and strokes your dick for a while, his large paw-like hand rubbing all over that sensitive cockhead of yours, but so slowly that you definitely feel you are not getting enough stimulation. Your body beckons you to thrust into his hand, yet you are held tight between his strong legs, unable to move. 'So eager to become a girl for me, aren't you? Then we should get started on that...'";
		say "     As he seems to be done teasing you, the werewolf finally grabs the bottle of husky cum he gave to the dog girl, which is still at least three quarters full, and opens it, with the evident intent of making you drink its contents. The brute leans over on top of you, with more of his body keeping you pinned down, holds your head up and brings the bottle to your lips. Amidst all this, you can feel his throbbing shaft against your midriff, its warmth obviously clashing against your average body temperature. 'There's still a lot left in it. I'd say... you can have it all.' As he finishes speaking, a grin forms across his muzzle as he pours the husky cum into your mouth and looks in your eyes with evident lust. Your mind cannot even consider the possibility of refusing the brute's will, as your body remains stuck in a stupor of horniness.";
		say "     When your tongue makes contact with the creamy liquid, you feel ecstatic. It is not long until its saltiness beings to slowly travel down your mouth, and when the husky cum fills it, you proceed to swallow it. Wyatt is actually very careful with this as to not make you choke on it, turning this into an actual pleasant experience as you savor that seed's taste to its maximum. 'That's it... What a good girl you're gonna be...'";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     You begin to feel its effects in your body soon enough, but you still have a lot of cum to chug down. Wyatt keeps the bottle inclined so you can have more, the canine cum still steadily being poured into your mouth...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     As the transformation gradually takes place, your lust is also fueled further the more you drink, which in turn also arouses the werewolf...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     'Only half way to go now...' he says, already mindlessly stroking himself while holding the bottle with one hand...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     You yet continue to drink it diligently, just as you are told, your body remaining receptive to the changes...";
		WaitLineBreak;
		infect "Husky Bitch";
		say "     'Just a little more... Can't wait to fuck you...'";
		WaitLineBreak; [To avoid Latex TF and to reaffirm normal female husky infection. Also to remove cock and add a vagina, in case the previous infections don't make that happen]
		now FaceName of Player is "Husky Bitch";
		now Face of Player is "slim, feminine muzzle and large, perky ears over a canine";
		now BodyName of Player is "Husky Bitch";
		now Body of Player is "that of a bipedal dog, with digitigrade legs and paw-like hands";
		now SkinName of Player is "Husky Bitch";
		now Skin of Player is "[one of]softly furred[or]densely furred[or]white-furred[at random]";
		now TailName of Player is "Husky Bitch";
		now Tail of Player is "You have a long and fluffy dog's tail swaying behind you";
		now Cock Count of Player is 0;
		now Ball Size of Player is 0;
		now Cock Length of Player is 0;
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 10;
		now Cunt Tightness of Player is 3;
		now Breast Size of Player is 4;
		now Nipple Count of Player is 4;
		say "     You do not even realize that you have reached the end of the bottle's contents until nothing more drops in your mouth, instead having to see Wyatt putting it away with a huge smile on his face as he sees your new form before him. 'You're so... fucking hot...' he exclaims, immediately pressing his dong between your legs and your newly acquired pussy, already craving for its first cock. 'I wanna fuck you so badly...' the werewolf moans, pushing his large cock against your wet curls as you feel his hands over your breasts, gently squeezing and rubbing them all over. His scent is so powerful, so great, that you practically beg him to enter you with your body language, moaning helplessly at his touch. This really excites him, until he finally pushes his cock into you, slowly and carefully, as he releases a grunt of joy.";
		WaitLineBreak;
		say "     Despite his previous intercourse with the female husky, Wyatt's erection is so genuinely hard that it could have fooled you into believing he has not had any sex for a while. The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No a single word is shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
		say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
		WaitLineBreak;
		say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
		say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Oh, shit, I forgot... Fuck...!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
		WaitLineBreak;
		say "     'I... Oh, what the fuck?! I... Did... Did you... Fuck I fed you all that husky cum! A-are you okay?!' he worringly asks, once he comes to his senses after that overtaking lust both you and him went through. And, indeed, you are now a female husky, but you cannot say you feel bad about it. In fact, your body does not let you have such thoughts when you have just experienced a massive surge of pleasure from such a handsome werewolf. Still, you do regain some soberness over the time, and confusion takes its place in your brain. 'I'm so sorry... I mean, you... you look really hot like that, but... I should've taken a hold of myself...' He looks over your cum drenched body for a while, his mind seemingly gone for a brief seconds, and you can swear his half-hard cock just gave out a throb.";
		say "     'U-Uh... Right! Just hold on a sec.' Wyatt's mind then comes back, and he decides to carefully stand up and out of the bed to go grab a towel, which he offers to you and even helps you clean yourself. 'Well, uh... It's not like this is irreversible, right? You could... always just... find a way to go male again, I suppose. But... Would it be too much if I asked you to give your new body a go? You might like it and... We could... uh... you know... we could date? I-I don't care if you were a dude before, now you're a beautiful... fucking sexy dog girl...' He takes a deep breath as he has to, once again, take hold of his thoughts. 'Right, uh, you don't have to say anything right now, just... consider it, yeah? We could have tons of fun together...'";
		WaitLineBreak;
		say "     It feels like Wyatt is asking you to be his lover, though he does not want to pressure you on that matter. You tell him that is fine and that you shall give him an answer later, once you give it some thought and experiment with this new... body. It is a rather odd request, though, as you have not known each other for that long, but the werewolf must be feeling quite lonely, and he did just cause your gender to change. With some words of comfort, you manage to maintain that smile on his face as you finish cleaning yourself from the mess he has made, getting ready to leave. 'You're leaving? Yeah, I should bring the other husky girl back to the pit, she can't just stay here... But hey, I really enjoyed this. I hope we can... repeat it. The sex part, I mean.";
		WaitLineBreak;
		say "     You cannot deny that a part of your mind is telling you that you really want to repeat this, as the unexplainable desire that struck you before rises again at the mere thought of it. There was something odd about his scent when he was changing you, then fucking you, almost addictive in its nature... But you must shake these thoughts away as you move to leave, saying goodbye to Wyatt. It takes you a while to get used to how your body moves, but you are quick enough to adapt.";
		NPCSexAftermath Player receives "PussyFuck" from Wyatt;
		now Resolution of WyattRomance is 1;
		TraitGain "Player Male to Female" for Wyatt;
	else:
		say "     Even though the touch of his body feels great on you, as his large physique takes you for a warm embrace, the idea of him switching your gender is too much for you. Part of you wants to give in, but you are just not comfortable with this, and there is this corner in your brain that propels you to resist. It is difficult to refuse such a handsome, caring and passionate werewolf when he is practically rubbing himself against you, his penis erect as lust overtakes him, but you... cannot let this happen. You push against him and tell him to stop a few times, until he realizes you do not want this. Knowing better than to go against your will, Wyatt stops and stares back at you with a seemingly embarassed look.";
		say "     'Shit, I'm sorry... I... don't know what got into me... I-I didn't mean to force myself upon you...' You tell him it is alright, you would just prefer to keep your appearance, and if that does not work for him, it is fine. You were the one to walk up on him and behave inappropriately, in the first place. 'Yeah... Let's... just forget this happened, alright? I'm gonna take this husky back to the pit and... You should go, too.' With you both agreeing that you should just part ways for now, you proceed to say your goodbyes as you walk out of Wyatt's room.";
		say "     Perhaps some things are just not meant to be.";
		now Resolution of WyattRomance is 99;

to say WyattSpecialMtF:
	say "     The minute the werewolf pushes you into his bedroom, he closes the door behind you and proceeds to push you atop his bed. He takes his loincloth off at that moment, revealing the soft, but thick, furred sheath hanging between his strong thighs. 'Seems like you've been a bad girl... So I'm not going to be as gentle.' From a drawer he pulls, he also takes a bottle full of a creamy white liquid, which you know very well what it is. 'And something also tells me you just do this on purpose... Maybe you like when I pin you down under me and make you drink some random husky dude's cum. Maybe you love seeing your body regain its womanly curves, feeling that wet pussy return to its due place, then to get stretched and fucked by me just as if it was your first time.'";
	say "     Then, Wyatt laughs as he walks up to you. Slowly, his body meets up with yours as he climbs on top of the bed, placing himself just above you, his knees on each side of your shape, properly pinning you down under him as his weight settles in. 'Well... It's funny how much I'm into that too. How I like seeing you becoming a beautiful woman just for me. So... I'll gladly make you turn into a girl... As many times as necessary... Over and over again. Maybe one day you'll realize that is your true form. Otherwise... Why would you keep coming back to me? You just can't help it, can you...?' His musky scent is now much stronger than before, already leaving you slightly lightheaded. 'I bet you look forward to the day I finally claim you as my very own personal fucktoy. Shaped to my likes. Perfected for my pleasure...'";
	WaitLineBreak;
	say "     As he seems to be done teasing you, the werewolf finally grabs the bottle of husky cum he kept with him, which is still at least three quarters full, and opens it, with the evident intent of making you drink its contents. The brute leans over on top of you, with more of his body keeping you pinned down, holds your head up and brings the bottle to your lips. Amidst all this, you can feel his throbbing shaft against your midriff, its warmth obviously clashing against your average body temperature. 'There's still a lot left in it. I'd say... you can have it all.' As he finishes speaking, a grin forms across his muzzle as he pours the husky cum into your mouth and looks in your eyes with evident lust. Your mind cannot even consider the possibility of refusing the brute's will, as you feel utterly subdued by him.";
	say "     When your tongue makes contact with the creamy liquid, you begin to feel unexplainably ecstatic. It is not long until its saltiness beings to slowly travel down your mouth, and when the husky cum fills it, you proceed to swallow it. Wyatt is actually very careful with this as to not make you choke on it, turning this into an actual pleasant experience as you savor that seed's taste to its maximum. 'I gave it a little spice, this time. Make sure you get everything, right to the last drop...'";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     You begin to feel its effects in your body soon enough, but you still have a lot of cum to chug down. Wyatt keeps the bottle inclined so you can have more, the canine cum still steadily being poured into your mouth...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     As the transformation gradually takes place, your lust spikes drastically the more you drink, which in turn also arouses the werewolf...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     'Only half way to go now...' he says, already mindlessly stroking himself while holding the bottle with one hand. There is a fiery, unexplainable desire for his cock hitting you all of the sudden...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     You yet continue to drink it diligently, just as you are told, your body remaining receptive to the changes... And you are just feeling more and more horny... Its taste is so addictive...";
	WaitLineBreak;
	infect "Husky Bitch";
	say "     'What a good girl! You're almost done... Come on, just a little more...";
	WaitLineBreak; [To avoid Latex TF and to reaffirm normal female husky infection. Also to remove cock and add a vagina, in case the previous infections don't make that happen]
	now FaceName of Player is "Husky Bitch";
	now Face of Player is "slim, feminine muzzle and large, perky ears over a canine";
	now BodyName of Player is "Husky Bitch";
	now Body of Player is "that of a bipedal dog, with digitigrade legs and paw-like hands";
	now SkinName of Player is "Husky Bitch";
	now Skin of Player is "[one of]softly furred[or]densely furred[or]white-furred[at random]";
	now TailName of Player is "Husky Bitch";
	now Tail of Player is "You have a long and fluffy dog's tail swaying behind you";
	now Cock Count of Player is 0;
	now Ball Size of Player is 0;
	now Cock Length of Player is 0;
	now Cunt Count of Player is 1;
	now Cunt Depth of Player is 10;
	now Cunt Tightness of Player is 3;
	now Breast Size of Player is 4;
	now Nipple Count of Player is 4;
	say "     You do not even realize that you have reached the end of the bottle's contents until nothing more drops in your mouth, instead having to see Wyatt putting it away with a huge smile on his face as he sees your new form before him. 'That's more like it. Back to being a beautiful husky girl for her werewolf man.' he exclaims, immediately pressing his dong between your legs and your newly acquired pussy, already craving for its first cock. 'I'm fucking throbbing...' the werewolf moans, pushing his large cock against your wet curls as you feel his hands over your breasts, gently squeezing and rubbing them all over. His scent is so powerful, so great, that you practically beg him to enter you with your body language, moaning helplessly at his touch. This really excites him, until he finally pushes his cock into you, slowly and carefully, as he releases a grunt of joy.";
	WaitLineBreak;
	say "     The brute, with his large girth, pushes your curls open in a delightful stretch, inch by inch burying more of his length inside you. It is evident that the lean werewolf is extremely turned on by you, and perhaps even more with the whole situation that preceded your transformation, putting on all the effort he can muster to provide you as much pleasure as possible. He keeps you trapped in his arms, his sexual desire taking the reins, further emphasized by each throb his manhood gives every time he licks your face. No a single word is shared between you two, only his thrusts against your sex as he feels your pussy wrapped around more and more of his cock.";
	say "     Every moment he is inside you is passionate and fiery, though his gentle manners drop as your pussy grows accustomed to the intrusion. With every thrust comes a harder and deeper one, progressively picking up the pace as the werewolf becomes more assertive in his moves. You feel that large cock of his in its hardest state, pulsating inside you, going back and forth with persistence and force, a vigor Wyatt shows during the entire time. With deep thrusts he fills you with his girth, pushing as much as he can of his member inside you, never letting go of you. His heartbeat joins yours as his hulking furred body tightens yours in his grasp, fucking you even harder, even faster...";
	WaitLineBreak;
	say "     You can tell the male is so aroused that his entire focus shifts towards the insides of your womanhood, quivering around his sizable dick as he continues to fuck you. The lust overtaking you, clouding your every thought and judgement, only drives you towards your orgasm as the werewolf carries on, his manhood throbbing excitedly at the sight of your climax. He looks at you with the happiest smile as you only squirm and quiver in utter bliss, still feeling his hard meat inside you, and you absolutely cannot help it. Your erogenous regions feel so delightfully sensitive that everytime he rubs your breasts or his cock gives out a throb and moves a mere inch, you feel overwhelmed with pleasure.";
	say "     Seeing you so lost in it greatly arouses the werewolf, who then is startled by several consecutive throbbings that his cock begins to give. 'Grrr... I wish I could breed you, but... F-Fuck!' He hastily pulls his cock out of you and, within nearly a fraction of seconds, he blows his load with so much force it rains all over your body in several spurts. You think some of it might have flown over your head and hit the wall, and a glance would confirm your suspicions. Wyatt cums so much and so hard that you are given a full body coating of the stuff, his orgasm lasting close to a full minute. He then only remains there, panting, his cock still hard and leaking its last drops, on his knees above you and atop the bed.";
	WaitLineBreak;
	say "     'Well, fuck. That was fun! Just... be careful with whom you fuck with. While this is fun, it's kind of a drag to milk a husky dude for that much cum so often. And I do prefer fucking you looking like this. A perfect, hot girl ready to be put in bed and fucked senseless.' As the thrill of sex ends, you see that Wyatt seems to have returned to his usual self with a big smile on his muzzle. He even helps you get all cleaned up and ready to return outside, but not before giving you a long, deep and passionate kiss against the wall right next to the door. 'Make sure you keep coming back. You're always fun to hang out with. And fuck... Hard and deep...' he ends, shooting a wink at you as he gives your butt a little playful slap.";
	NPCSexAftermath Player receives "PussyFuck" from Wyatt;

Lair Of The Lupines ends here.
