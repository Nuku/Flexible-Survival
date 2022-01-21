Version 1 of Lair Of The Lupines by Gherod begins here.

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
		connect LupinesPit;

[---]

Table of GameRoomIDs (continued)
Object	Name
Hidden Rock Cavern Entrance	"Hidden Rock Cavern Entrance"

Hidden Rock Cavern Entrance is a room. It is a fasttravel.
The earea of Hidden Rock Cavern Entrance is "Avalon".
Description of Hidden Rock Cavern Entrance is "[Hidden Rock Cavern Entrance Desc]".

to say Hidden Rock Cavern Entrance Desc:
	say "     A very inconspicuous spot located right after a bunch of vegetation and dug towards a mountain, seemingly made to look like it sort of merges with the environment. It would easily make one think this was all arranged with the sole purpose of hiding this entrance. Whoever lives here does not want to be easily found. The rest of the pathway is very dark, [if daytimer is day]light ending briefly after a few first steps, [end if]keeping an outside viewer clueless of what they could find inside. You cannot hear anything from just standing at the entrance either, so it still must be a considerable distance between this spot and any points of interest. However, if you pay attention, you can spot a few lone strands of fur here and there, on the rocks and across the path, at the ground.";
	if Resolution of Discover The Werewolves Den is 0:
		say "     [bold type]You have a feeling that you probably should not venture forth, if anyone happens to live deeper inside...[roman type][line break]";

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
	if loyalty of Jett > 9: [happens automatically if player is submissive upon meeting him the first time]
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
SexuallyExperienced of Wyatt is false.
TwistedCapacity of Wyatt is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wyatt is true. [steriles can't knock people up]
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
	now title entry is "Offer to blow him";
	now sortorder entry is 1;
	now description entry is "Give Wyatt a blowjob";
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
				if (nam is "Offer to blow him"):
					say "[WyattSexBlowjob]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You politely excuse yourself, as you have changed your mind. He simply nods, albeit visibly disappointed.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

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

Section 3 - Events

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
		say "     [italic type]'But you do look like a very, very good [boygirl], so I'm sure you won't disappoint me. And if you keep me thinking that way about you, then I'll let you sit on my lap whenever you're in need of an alpha werewolf brute to take care of you... I'll even let you lean your head between these...' He gives you bedroom eyes as he widen his manspread, leaning back on his couch, giving out that confident attitude as he even makes his huge pecs bounce, seeming like they have a mind of their own. 'I don't make that offer to just anyone...'[roman type][line break]";
		now Loyalty of Jett is 10;
		WaitLineBreak;
	say "     You are now free to get out or go back in, as long as you follow Jett's aforementioned rules. You also know how to get here, as you will note the place's location once you leave through the dark passage [bold type]west[roman type] of here.";
	move player to Lair Of The Lupines Main Hub;
	AddNavPoint Hidden Rock Cavern Entrance;
	now Resolution of Discover The Werewolves Den is 1;
	connect LupinesPit;
	move Jett to Lair Of The Lupines Main Hub;
	move Elstan to Lair Of The Lupines Pit;
	move Kirnon to Lair Of The Lupines Pit;
	move Rodion to Lair Of The Lupines Kitchen;
	move Wyatt to Lair Of The Lupines Common Room;

a postimport rule:
	if Resolution of Discover The Werewolves Den is 1:
		AddNavPoint Hidden Rock Cavern Entrance;
		move Jett to Lair Of The Lupines Main Hub;
		move Elstan to Lair Of The Lupines Pit;
		move Kirnon to Lair Of The Lupines Pit;
		move Rodion to Lair Of The Lupines Kitchen;
		move Wyatt to Lair Of The Lupines Common Room;

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

Section 3-2 - Wyatt Special Scenes

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
	WaitLineBreak;
	say "     << Author's Note: More content to be added in the future. >>";

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
		now Resolution of WyattRomance is 1;
		TraitGain "Player Male to Female" for Wyatt;
	else:
		say "     Even though the touch of his body feels great on you, as his large physique takes you for a warm embrace, the idea of him switching your gender is too much for you. Part of you wants to give in, but you are just not comfortable with this, and there is this corner in your brain that propels you to resist. It is difficult to refuse such a handsome, caring and passionate werewolf when he is practically rubbing himself against you, his penis erect as lust overtakes him, but you... cannot let this happen. You push against him and tell him to stop a few times, until he realizes you do not want this. Knowing better than to go against your will, Wyatt stops and stares back at you with a seemingly embarassed look.";
		say "     'Shit, I'm sorry... I... don't know what got into me... I-I didn't mean to force myself upon you...' You tell him it is alright, you would just prefer to keep your appearance, and if that does not work for him, it is fine. You were the one to walk up on him and behave inappropriately, in the first place. 'Yeah... Let's... just forget this happened, alright? I'm gonna take this husky back to the pit and... You should go, too.' With you both agreeing that you should just part ways for now, you proceed to say your goodbyes as you walk out of Wyatt's room.";
		say "     Perhaps some things are just not meant to be.";
		now Resolution of WyattRomance is 99;

Lair Of The Lupines ends here.
