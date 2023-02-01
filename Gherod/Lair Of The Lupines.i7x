Version 4 of Lair Of The Lupines by Gherod begins here.

"Adds the lair of the werewolf brutes as a set of locations, as well as related NPCs, to the game."

[Version 1 - File released]
[Version 2 - Vastly expanded Wyatt with new sex scenes. More progress on Jett's questline.]
[Version 3 - 1 new Jett and Elstan sex scenes each]
[Version 4 - 1 new Elstan blowjob scene and new "Pride Hurt" variant on his Oubliette scene]
[ -- Split Elstan and Wyatt from the main file]

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

a postimport rule:
	now Sterile of Wyatt is false;

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
	say "     You would say that a normal werewolf brute is large, but this one is ridiculously massive. Jett is an alpha werewolf brute and one built of pure muscle, with a thick dark silver fur coat only damaged by battle scars around his chest, arms and some around his thighs. You can also spot one large scar across the left side of his face, which makes him look quite intimidating, at first glance. The Alpha does not wear anything to cover his hanging junk, which looks almost hyper-sized, even for someone of his stature. You also do not think anything would be able to cover that much cock and that pair of ostrich-egg sized balls, as even his furred sheath can barely contain all the meat within. His piercing yellow eyes loom over you like an observant owl whenever you come close, but curiously, they do not give any hostile sense. Much the contrary, more in the way of a caring parent looking over their children. All in all, you feel safe around Jett[if player is submissive], and very subservient[end if].";

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
		say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... They're probably some spoiled brat who got turned into a big hung werewolf and think they're some big shit. They ain't worth anything unless they're sitting here, on my spot...' he then pauses to give you a grin, 'Or, you know, sitting on me like good little puppy slaves. I consider a good sub above that jackass, if I'm honest.' You wonder who he is talking about, specifically, as he seems to be referring to someone. He realizes this and tells you, 'I'm sure you'll meet him, eventually. Or you probably have, already. I don't care. Just don't reinforce his delusions, he ain't worth it. The guy has to learn some manners.'";

to say JettAlphaTalkSex:
	if loyalty of Jett >= 20:
		say "     Referring to the subject of sex, you decide to talk to him about it. While he would previously give you a much more eager response, he simply looks at you with a big smile and says 'I'm into anything you want as long as you're happy. And I mean... anything. I'm pretty sure I can do any kink I'm asked for someone I care about. And... you're on that list.' He tightens his embrace on you for brief seconds, reinforcing his words. 'But yeah, into a lot of stuff myself.'";
		say "     'Specifically, it's what I think I've already told you. Muscle and body worship, facefucking, facesitting, a little bit of cuddling, domination, knocking up subs full of cum, and... I've tried some stuff with a special kind of mushrooms that makes people smaller. There's fun things that can be done with significant size differences like that, stuff I've personally never even imagined, but... Some of that stuff is really hot. We could try it out sometime, if you're into that. No limits here, it's just whatever you'd be into.'";
	else:
		say "     Referring to Jett's favorite subject, you decide to have a bit of sex talk with him. His eyes shine as a wide smirk forms across his muzzle, enthusiasm evident the moment you bring up this matter. 'I've got quite a lot of things I like doing to my good lads... Between putting them to worship my muscles, my pits, pecs, feet, dick, balls, even my ass, sitting on them, choking them on my cock, smothering them with my body and feeling them squirm under me, filling them up with fucktons of loads until they look pregnant of triplets and cough it out from their mouths... You know, any stuff I can imagine that sounds fun enough.' While Jett got so carried away talking about what he likes, you've seen that his dick jumped to attention amidst conversation, hanging half-hard.";
		say "     'Well, shit, talking about this gets me hard everytime. Though I'm only down to do things my subs like, too. There's no point in dominating one if I don't see them losing their minds over it. Hate a partner that only cares about that stuff and has no mind of its own. I appreciate a spark in people.'";

Section 2-1-2 - Jett Sex

instead of fucking Jett:
	if Loyalty of Jett < 10:
		say "     You really do not think you are at that level with the alpha. Perhaps you should think it over before making such advances on Jett without having earned some level of respect. Maybe you should ask someone who is closer to him what you can do to earn his respect. The cook, for example, would be an idea.";
	else if Loyalty of Jett > 9 and Loyalty of Jett < 20:
		say "     Despite seeing how receptive he seems to be of you, you cannot help but think something is still off. Maybe you should ask someone who is closer to him what you can do to breach his shell. The cook, for example, would be an idea.";
	else if Loyalty of Jett >= 20:
		say "     Now that the air between you is lighter, you are confident enough to ask him if he would be interested in having some fun with you. He nods and replies with a smile, 'Oh, ";
		if Libido of Jett is 0:
			say "for sure. I've been looking forward to this a while ago, actually. I feel like it'd be fun with you... Hm, I even have a suggestion, if you would like to come with me?'";
			say "     Do you want to go with Jett right now? It is likely that he will bring you to his chambers and go through some [']unfinished business['] with you.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go for it.";
			say "     ([link]N[as]n[end link]) - Not right now.";
			if Player consents:
				say "     You nod, showing your interest in this proposal of his. 'Oh, I'm sure it won't come as a surprise. We've already talked about it... Well, you did. And it actually got me thinking... It'd be rude of me to refuse such a gift, so I thought... I gotta appreciate it for real.' With that said, Jett gives you a tap on the side of your butt.";
				WaitLineBreak;
				now Libido of Jett is 1;
				say "[JettAlphaSex69Scene]";
			else:
				say "     You decide against it, at least for now. He gives you an understanding nod. 'Alright, if you have the time and the energy for it, let me know.'";
		else:
			say "but of course! I'm always happy to have some fun with you, and it's always entertaining. What's on your mind?";
			say "[JettAlphaSexMenu]";

to say JettAlphaSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go for a 69";
	now sortorder entry is 1;
	now description entry is "Get Jett to eat you out while you suck his dick";
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
				if (nam is "Go for a 69"):
					say "[JettAlphaSex69Scene]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding against this, you excuse yourself away from Jett. He nods respectfully.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say JettAlphaSex69Scene:
	say "     With both your intentions made clear, you and Jett proceed to retreat into his chambers once more, through a discrete pathway parting from the main hub into a corridor, then into a door, which he unlocks. Then, you are led to his internal apartment's hallway and through a few extra-sized divisions. As you take a turn into to the bedroom, Jett pulls you to him and begins to make out with you, without further words. You get a taste of his tongue's nimbleness as it voraciously invades your mouth, skillful enough to leave you longing for more. Your bodies join one another in a tight embrace as the massive werewolf holds you gently, then carries you to the comfortable bed that awaits your passionate lovemaking.";
	say "     In fact, Jett seems to be the most passionate werewolf in the entire lair, reminding you of a gentle giant as he handles your body with such care. But you have both come here with one specific thing in mind, and as such, the alpha brute lies down on the bed, legs still past the edge of the mattress and with his back turned down, and holds you on top of him. With formidable strength and absolutely no effort, he raises you and lines up your [if player is female]womanhood[else]ass[end if] with his muzzle, then descends your body in a way that you end up sitting right on his muzzle. You kind of have to find some balance amidst all this, but the grip he keeps on your hips helps you remain atop his face.";
	WaitLineBreak;
	say "     Immediately, you feel that furred long muzzle of his pressed between your buttcheeks and tongue seeking your [if player is female]moistened labia[else]hole[end if], and it definitely does not disappoint. Without holding back once, the alpha werewolf begins to eat you out like a famished beast, pushing that slick organ of his deep into you as it wiggles against the walls of your [if player is female]pussy[else]bottom insides[end if]. All this does not come without a pleasant extra, however, as you get a great and broad view of Jett's muscular body down below, especially that absolutely massive red cock of his throbbing compulsively at every other second, oozing copious amounts of precum, and accompanied by a huge set of balls that you can only see the girth of from here.";
	if PlayerFucked of Elstan is true:
		say "[italic type]. It is all even bigger than Elstan's... Though you should probably not mention that to either of them, and especially not him[roman type].";
	else:
		say ". It is probably safe to assume he is, indeed, the hungest and most virile of all the werewolves...";
	say "     All the stimuli, both visual and sensorial, combined brings you a lot of joyous pleasure, so much that you cannot help yourself but moan as your sensitive [if player is female]woman bits are[else]pucker is[end if]played with, licked and tonguefucked so masterfully that even your breath becomes desperate. Everything feels so good, the way he can reach so deep inside you, caressing just the right spots[if player is female] within your vagina[else if player is male], even managing to reach your prostate[else]within your fleshy tunnel[end if], and he does not ever stop. He is so dedicated to it that he refuses to give you a break, even if you dared asking and pretended you wanted one. In fact, you want this to never end...";
	WaitLineBreak;
	say "     Suddenly, you feel a thick, powerful hand pushing you forward, and you find yourself facing that almost monstrous shaft mere inches away from your eyes. Your arms have fallen forward against the werewolf's lower body, and now your hands remain in reach of such magnificent meat. With little doubt about what you should do, you press your lips against that pulsating rod, soon bringing your tongue into play and proceed to... worship it, would be the right expression. Every inch, coated in sweet precum, must be touched, caressed and appreciated with the best of your abilities, with your hands and mouth, so that you can really make Jett happy. Judging by how solid his erection is, you think you may be on the right track, if not even completely certain.";
	if player is male:
		say "     [italic type]To reciprocate your attention, one of the alpha's hands moves towards your [cock of player] cock as Jett decides to jerk you off, slowly but firmly and steadily, which, combined with all the tonguing you are getting, makes you absolutely lose your mind. His touch seems to escalate the more intensely you rub and suck on that big dick of his, but it is so massive you can really just lick at the sides and suck on the tip comfortably. This seems to be enough to please the werewolf, however, as he makes your penis feel so good with his fuzzy paw-like hand, showing surprising dexterity and precision for something so thick and large. It certainly confirms that Jett had never lost his touch and lovemaking skills.";
		say "     With your hole still thoroughly stimulated during all this and your cock being stroked so good, you can barely focus on providing oral attention to that well deserving monster cock of his, but he seems to take delight on torturing you with pleasure. It also means that you can not last that much longer either, so eventually, your body speaks for itself. Jett gets this and begins to stroke you harder, tongue you deeper - not knowing that was still even possible! - and it fully commits. You cum right there, all over the alpha werewolf's fuzzy chest, moaning with your lips still wrapped around his dick. 'Mmh... You might... wanna watch out...' he warns you, though during your lust stupor, you fail to process that information in time before...";
	else:
		say "     [italic type]To reciprocate your attention, one of the alpha's hands moves towards your chest as Jett decides to fondle it, slowly but firmly and steadily, which, combined with all the tonguing you are getting, makes you absolutely lose your mind. His touch seems to escalate the more intensely you rub and suck on that big dick of his, but it is so massive you can really just lick at the sides and suck on the tip comfortably. This seems to be enough to please the werewolf, however, as he makes your [if breast size of player > 0]tits[else]pecs[end if] feel so good with his fingers all over your nipples, as sensitive as they are. Such dexterity and attention certainly confirms that Jett had never lost his touch and lovemaking skills.";
		say "     With your [if player is female]pussy[else]hole[end if] still thoroughly stimulated during all this and your erogenous zones feeling properly appreciated, you can barely focus on providing oral attention to that well deserving monster cock of his, but he seems to take delight on torturing you with pleasure. It also means that you can not last that much longer either, so eventually, your body speaks for itself. Jett gets this and begins to intensify his gestures, tongue you deeper - not knowing that was still even possible! - and it fully commits. You hit your climax right there, moaning with your lips still wrapped around his dick as this wave of pleasure surges through you. 'Mmh... You might... wanna watch out...' he warns you, though during your lust stupor, you fail to process that information in time before...";
	WaitLineBreak;
	say "     ... Well, before you are showered by a real alpha werewolf's load, that is, shooting all over your body (and, in consequence, his, as you are on top of him still) with a nearly continuous stream of creamy white jizz. 'Hnng... Yeah, that's... what I meant. Fuck, feels good...' he moans and grunts as spurt after spurt leaves him and lands directly on the both of you, making a mess of the ceiling, sheets and even floor. This big guy's load surely matches his size, and you have earned a personal demonstration of that.";
	say "     With the deed done, Jett chuckles as he helps you get up. He is very attentive to your needs and even brings you a relatively clean towel for you to get rid of that mess all over your body. 'Hey, I've enjoyed myself, hope you did too. And don't mind the mess, I'll take care of it.' Once you are all cleaned up and set to leave, Jett escorts you out of his chambers and lets you go... after giving your butt another loving tap.";
	NPCSexAftermath Player receives "OralCock" from Jett;

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
[Moved to his own file]

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
[Moved to his own file]

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
					say "[WerewolfBruteLairElstanWorship]"; [On Elstan's file]
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
		say "     As you recall your encounter with the cook, Rodion, back at the kitchen, you think that perhaps this is the right time to make your [']special['] offer to the alpha werewolf, who is just sitting on his couch, staring at you with that usual smug grin of his. Something about this makes you feel dirty, but of a good kind, and your heart skips a beat due to the rush of the antecipation. Once he sees you are still hesitating, only having considered in silence what you shall be doing next, he tilts his fuzzy head and leans forward slightly, 'Is there any problem? All of a sudden you look anxious for something...' Jett keeps his eyes on you as you think of a reply, on top of everything else, and you figure the best solution is to tell him all about it.";
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
[Moved to his own file]

Section 3-5 - Wyatt Special Scenes
[Moved to his own file]

Lair Of The Lupines ends here.
