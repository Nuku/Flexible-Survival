Version 1 of Lair Of The Lupines by Gherod begins here.

Section 1 - The Rooms

Table of GameEventIDs (continued)
Object	Name
Discover The Werewolves Den	"Discover The Werewolves Den"

Discover The Werewolves Den is a situation.
ResolveFunction of Discover The Werewolves Den is "". Sarea of The Werewolves Den is "Nowhere".

[---]

Table of GameRoomIDs (continued)
Object	Name
Hidden Rock Cavern Entrance	"Hidden Rock Cavern Entrance"

Hidden Rock Cavern Entrance is a room. It is a fasttravel. Hidden Rock Cavern Entrance is private.
The earea of Hidden Rock Cavern Entrance is "Avalon".
Description of Hidden Rock Cavern Entrance is "[Hidden Rock Cavern Entrance Desc]".

to say Hidden Rock Cavern Entrance Desc:
	say "     A very inconspicuous spot located right after a bunch of vegetation and dug towards a mountain, seemingly made to look like it sort of merges with the environment. It would easily make one think this was all arranged with the sole purpose of hiding this entrance. Whoever lives here does not want to be easily found. The rest of the pathway is very dark, [if daytimer is day]light ending briefly after a few first steps, [end if]keeping an outside viewer clueless of what they could find inside. You cannot hear anything from just standing at the entrance either, so it still must be a considerable distance between this spot and any points of interest. However, if you pay attention, you can spot a few lone strands of fur here and there, on the rocks and across the path, at the ground.";

instead of smelling Hidden Rock Cavern Entrance:
	say "     This place smells like greenery and nature.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Rocky Dark Path	"Rocky Dark Path"

Rocky Dark Path is a room.
Rocky Dark Path is west of Hidden Rock Cavern Entrance.
Description of Rocky Dark Path is "[Rocky Dark Path Desc]".

to say Rocky Dark Path Desc:
	say "     This path extends deeper into the cavern, with barely any light illuminating the way, coming from just a few torches placed on the walls. It is quite obvious that this place is inhabited by someone, but the whole ambience is quite unwelcome. From here, you can hear an occasional howling, which faintly echoes through the rocky walls and ends up sounding more eerie than thrilling. If you continue further to the [bold type]West[roman type], you would be at the Werewolves['] den, while going the opposite direction, [bold type]East[roman type], would lead you to a section of the avalonian forest outside of this cave.";

instead of smelling Rocky Dark Path:
	say "     This area's scent does not strike as anything particular, but the air feels colder than it is outside.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Lair Of The Lupines Main Hub	"Lair Of The Lupines Main Hub"

Lair Of The Lupines Main Hub is a room.
Lair Of The Lupines Main Hub is west of Rocky Dark Path.
Description of Lair Of The Lupines Main Hub is "[Lair Of The Lupines Main Hub Desc]".

to say Lair Of The Lupines Main Hub Desc:
	say "     You are standing in the main hub of the werewolf brutes['] lair, which connects to every area of interest within the entire den. The place is not as unwelcoming as the rest, with some furniture around that somewhat compensates the desolate and rocky look of the room, like couches and a central small table. It would be better, however, if they were in good conditions, as most of the seats are torn and shredded. There is only one large couch in decent conditions, located further ahead between the entrances to the other sections, and that one is claimed by the alpha, so it is kept vacant. You could head further [bold type]below[roman type], through some nearby stairs leading down, to arrive at the pit, [bold type]West[roman type]towards the feast room, [bold type]North[roman type] to the common room (besides this one) and [bold type]East[roman type] to leave this place through the rocky dark path.";

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
		say "     [bold type]Perhaps you should escape, lest you want to become a slave to the brutes[roman type] (Scenes to be added in the future).";

instead of smelling Lair Of The Lupines Oubliette:
	say "     It strongly smells like sex fluids and werewolf musk, to an almost unbearable level. The air is damp and it weighs on your head.";

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

instead of conversing Jett:
	if loyalty of Jett >= 9: [happens automatically if player is submissive upon meeting him the first time]
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which really means that you are suggestively ordered to do so, and you comply without question.";
	else:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, allowing you to speak your mind.";
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
	say "     You wish to ask Jett about himself, as the alpha of the werewolf brutes. He chuckles, seeming flattered by your interest. 'I was merely the first. Most of the size-changing magic went for me, which is why I'm this big, and naturally, I became the alpha when the other fuzzy pups began to show up,' Jett then puts on a grin as he eyes you from head to feet, 'The boys really need someone to watch out for them, and so I combined that with gatekeeper duty. They wanna talk to me, they come over here while I get to decide which one of the pretty lads and gals may have access to some werewolf cock, should they find this place.' The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'Because that's what y'all come for, ain't it? Heh...'";

to say JettAlphaTalkPack:
	say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... They're probably some spoiled brat who got turned into a big hung werewolf and think they're some big shit. They ain't worth anything unless they're sitting here, on my spot...' he then pauses to give you a grin, 'Or, you know, sitting on me like good little puppy slaves. I consider a good sub above that jackass, if I'm honest.' You wonder who he is talking about, specifically, as he seems to be referring to someone. He realizes this and tells you, 'I'm sure you'll meet him, eventually. Or you probably have, already. I don't care. Just don't reinforce his delusions, he ain't worth it when you've got something a lot better, right here...'";

to say JettAlphaTalkSex:
	say "     Referring to Jett's favorite subject, you decide to have a bit of sex talk with him. His eyes shine as a wide smirk forms across his muzzle, enthusiasm evident the moment you bring up this matter. 'I've got quite a lot of things I like doing to my good lads... Between putting them to worship my muscles, my pits, pecs, feet, dick, balls, even my ass, sitting on them, choking them on my cock, smothering them with my body and feeling them squirm under me, filling them up with fucktons of loads until they look pregnant of triplets and cough it out from their mouths... Well fuck, I've even eaten some of my slaves and that got me fucking boned up! Guess I'm fucking depraved, huh...' While Jett got so carried away talking about what he likes, you've seen that his dick jumped to attention amidst conversation, hanging half-hard.";
	say "     'Well, shit, talking about this gets me hard everytime. Though I'm only down to do things my subs like, too. There's no point in dominating one if I don't see them losing their minds over it, heheh... Anyway, I'd be happy to explore this whole list with a very, very good slave... As long as you're one, we can do anything.'";

instead of fucking Jett:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

Table of GameCharacterIDs (continued)
object	name
Rodion	"Rodion"

Rodion is a man.
ScaleValue of Rodion is 4. [normal sized]
Body Weight of Rodion is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Rodion is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
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
The scent of Rodion is "     .".

to say RodionDesc:
	say "     This one is the cook, a timber-colored fuzzy werewolf with quite a belly, but still has a sturdy and beefy physique that surely shows a lot of strength. He is often wandering around the kitchen preparing meals for the others, with a genuine smile on his face most of the times. Currently, he is wearing only an apron, with nothing else underneath, and there is a quite prominent bulge between his legs even with the cloth covering his groin. He does not mind your presence, and seems to be quite friendly.";

instead of conversing Rodion:
	say "     The cook seems too busy to talk, right now (will be added in a future update).";

instead of fucking Rodion:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

Table of GameCharacterIDs (continued)
object	name
Elstan	"Elstan"

Elstan is a man.
ScaleValue of Elstan is 4. [normal sized]
Body Weight of Elstan is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
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
AnalVirgin of Elstan is false.
PenileVirgin of Elstan is false.
SexuallyExperienced of Elstan is false.
TwistedCapacity of Elstan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Elstan is true. [steriles can't knock people up]
MainInfection of Elstan is "Werewolf Brute".
Description of Elstan is "[Elstandesc]".
Conversation of Elstan is { "<This is nothing but a placeholder!>" }.
The scent of Elstan is "     .".

to say ElstanDesc:
	say "     This brute seems to be a bodybuilder, judging by how much muscle he has. The tall and muscular werewolf brute has a shiny dark fur and seems very proud of his physique. He might be the second strongest werewolf in the pack, as far as you can tell, and would probably be the alpha if it were not for Jett. He does not wear anything to cover his sheathed bits, which hang heavily between his legs. They seem to also be bigger than most. His expression does not inspire confidence, however, as he does not seem easily approachable. His eyes perceive you with contempt whenever you pass by him.";

instead of conversing Elstan:
	say "     He seems to ignore your attempts at communicating with him. Perhaps he is not in the mood to talk? (will be added in a future update).";

instead of fucking Elstan:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

	Table of GameCharacterIDs (continued)
	object	name
	Elstan	"Elstan"

Kirnon is a man.
ScaleValue of Kirnon is 4. [normal sized]
Body Weight of Kirnon is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kirnon is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kirnon is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kirnon is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kirnon is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kirnon is 8. [length in inches]
Breast Size of Kirnon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kirnon is 2. [count of nipples]
Asshole Depth of Kirnon is 16. [inches deep for anal fucking]
Asshole Tightness of Kirnon is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kirnon is 1. [number of cocks]
Cock Girth of Kirnon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kirnon is 18. [length in inches]
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
The scent of Kirnon is "     .".

to say KirnonDesc:
	say "     This light-colored werewolf has a clear silver fur covering his muscular body, but this one seems to have especially strong legs and glutes. He is also of average height, when compared to the other brutes, and does not seem too approachable, often having his arms crossed and avoiding eye contact with everyone. With you, he does not even make an effort to acknowledge your presence when you walk next to him. He seems completely uninterested in you.";

instead of conversing Kirnon:
	say "     He seems to ignore your attempts at communicating with him. Perhaps he is not in the mood to talk? (will be added in a future update).";

instead of fucking Kirnon:
	say "     << Author's note: This is not possible, yet. Will be added in a future update. >>";

Lair Of The Lupines ends here.
