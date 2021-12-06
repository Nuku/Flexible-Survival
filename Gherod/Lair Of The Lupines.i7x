Version 1 of Lair Of The Lupines by Gherod begins here.

Section 1 - The Rooms

Table of GameEventIDs (continued)
Object	Name
Discover The Werewolves Den	"Discover The Werewolves Den"

Discover The Werewolves Den is a situation.
ResolveFunction of Discover The Werewolves Den is "". Sarea of The Werewolves Den is "Nowhere".

to connect LupinesPit:
	change the north exit of Lair Of The Lupines Pit to Lair Of The Lupines Bar;
	change the south exit of Lair Of The Lupines Bar to Lair Of The Lupines Pit;

a postimport rule:
	if Resolution of Discover The Werewolves Den is 1:
		connect LupinesPit;

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
	if loyalty of Jett > 9: [happens automatically if player is submissive upon meeting him the first time]
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which really means that you are suggestively ordered to do so, and you comply without question. 'What brings my [boygirl] to big ol' Jett here?' he asks, affectionately patting your back and rubbing your side. It actually feels quite nice...";
	else:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, allowing you to speak your mind. 'What do you need? Hopefully you've managed to keep out of trouble...'";
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
	say "     You wish to ask Jett about himself, as the alpha of the werewolf brutes. He chuckles, seeming flattered by your interest. 'I was merely the first. Most of the size-changing magic went for me, which is why I'm this big, and naturally, I became the alpha when the other fuzzy pups began to show up,' Jett then puts on a grin as he eyes you from head to feet, 'The boys really need someone to watch out for them, and so I combined that with gatekeeper duty. They wanna talk to me, they come over here. Besides that, I get to decide which one of the pretty lads and gals may have access to some werewolf dick, should they ever find this place through one way or another...'";
	if loyalty of Jett > 9:
		say "     [italic type]The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'Because that's what y'all come for, ain't it? Heh... There's no way you didn't come here voluntarily... Nobody lets a werewolf brute on them that many times without wanting some of that big hard cock...'[roman type][line break]";

to say JettAlphaTalkPack:
	say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... They're probably some spoiled brat who got turned into a big hung werewolf and think they're some big shit. They ain't worth anything unless they're sitting here, on my spot...' he then pauses to give you a grin, 'Or, you know, sitting on me like good little puppy slaves. I consider a good sub above that jackass, if I'm honest.' You wonder who he is talking about, specifically, as he seems to be referring to someone. He realizes this and tells you, 'I'm sure you'll meet him, eventually. Or you probably have, already. I don't care. Just don't reinforce his delusions, he ain't worth it when you've got something a lot better, right here...'";
	if loyalty of Jett > 9:
		say "     [italic type]'Especially a sexy cuteface such as you, who deserves proper treatment... Like all the good [boygirl]s who earn Jett's love and respect.'[roman type][line break]";

to say JettAlphaTalkSex:
	say "     Referring to Jett's favorite subject, you decide to have a bit of sex talk with him. His eyes shine as a wide smirk forms across his muzzle, enthusiasm evident the moment you bring up this matter. 'I've got quite a lot of things I like doing to my good lads... Between putting them to worship my muscles, my pits, pecs, feet, dick, balls, even my ass, sitting on them, choking them on my cock, smothering them with my body and feeling them squirm under me, filling them up with fucktons of loads until they look pregnant of triplets and cough it out from their mouths... Well fuck, I've even eaten some of my slaves and that got me fucking boned up! Guess I'm fucking depraved, huh...' While Jett got so carried away talking about what he likes, you've seen that his dick jumped to attention amidst conversation, hanging half-hard.";
	say "     'Well, shit, talking about this gets me hard everytime. Though I'm only down to do things my subs like, too. There's no point in dominating one if I don't see them losing their minds over it, heheh... Anyway, I'd be happy to explore this whole list with a very, very good slave...'";
	if loyalty of Jett > 9:
		say "     [italic type]'And so far... I've been popping raging boners just from thinking of you. Can't say the same for everyone... Makes you a special case.'[roman type][line break]";

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
Kirnon	"Kirnon"

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

Section 3 - Events

[Oubliette scenes]
An everyturn rule:
	if player is in Lair Of The Lupines Oubliette and a random chance of 1 in 3 succeeds:
		say "     During your stay in the Oubliette, you are a slave to the werewolves, and after lingering around for a while, your time to be treated like one comes...";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1:
				say "[WerewolfBruteLairCaptor]";
			-- 2:
				say "[WerewolfBruteLairElstanWorship]";

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
		say "     As their manhoods come close to your face, your mouth instinctively opens to welcome them, the girthy red meats filling your mouth, each on their own turn, as you go by them one by one. You usually keep your hands on two, one on each, and your lips wrapped around another at the center. Occasionally, the werewolf whose cock is in your mouth begins to thrust enthusiastically, nearly making you gag as his sizeable erection invades your throat in such a rude manner... But, in all honesty, it does not bother you at all. The sexual energy surrounding the werewolf brutes is so high that it intoxicates you, making you thoroughly enjoy every second a cock is past your lips, the others pulsating in your grasp.";
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
	say "     You hear the noisy trapdoor above you open as the shadow of a very, very large and muscular werewolf brute looks down on you with a fierce look, his eyes piercing your soul like shiny and small dots of light. He only makes a grunt as he inspects you from a distance. 'You'll do,' he says, as he pulls you from the oubliette with the force of a beast, so effortlessly that you could as well be made of only feathers. You have seen large werewolves, but this one is especially big, he could very well have fooled you as the alpha brute. 'I don't like sharing. You're my bitch and only mine for now. Got it?' His voice is deep and commanding, almost to a threatening level, so you nod to him. 'Good. You're coming with me.'";
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
	CreatureSexAftermath "Player" receives "AssFuck" from "Werewolf Brute";

[Jett stops the player from leaving the first time]
instead of going to Lair Of The Lupines Main Hub while Resolution of Discover The Werewolves Den is 0:
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
		say "     [italic type]'But you do look like a very, very good [boygirl], so I'm sure you won't disappoint me. And if you keep me thinking that way about you, then I'll let you sit on my lap whenever you're in need of an alpha werewolf brute to take care of you... I'll even let you lean your head between these...' He gives you bedroom eyes as he widen his manspread, leaning back on his couch, giving out that confident attitude as he even makes his huge pecs bounce, seeming like they have a mind of their own. 'I don't make that offer to just anyone...'[roman type][line break]";
		now Loyalty of Jett is 10;
		WaitLineBreak;
	say "     You are now free to get out or go back in, as long as you follow Jett's aforementioned rules. You also know how to get here, as you will note the place's location once you leave through the dark passage [bold type]west[roman type] of here.";
	AddNavPoint Hidden Rock Cavern Entrance;
	now Resolution of Discover The Werewolves Den is 1;

Lair Of The Lupines ends here.
