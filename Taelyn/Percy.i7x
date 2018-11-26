Version 1 of Percy by Taelyn begins here.
[Version 1.0 - New Character - Taelyn]

"Adds a Pangolin NPC to Flexible Survival, entering the game as a new event NPC"

[ Percy, the Pangolin                                                                      ]
[                                                                                          ]
[ HP of Percy                                                                              ]
[   0: starting state, not met yet                                                         ]
[   1: encountered his initial event                                                       ]

[ Dexterity of Percy                                                                       ]
[   0: starting state                                                                      ]
[   1: enlarged state                                                                      ]

[ Strength of Percy                                                                        ]
[   0: starting state                                                                      ]
[   8: crafting time 1 day                                                                 ]

[ Stamina of Percy                                                                         ]
[   0: starting state                                                                      ]
[   1: Makeshift-Spear                                                                     ]
[   2: Leather Vambraces                                                                   ]
[   3: Gambeson                                                                            ]

[Future Content Notes:                                                                     ]
[Add Entreances to the West(Snowy Forest), North(Kobold Caverns), and East(Mystical Forest)]
[Adding mini questlines to unlock more Percy content, relationship, and equipment          ]

an everyturn rule: [bugfix for old exports]
	if HP of Percy > 0 and Percy is in NPC Nexus:
		move Percy to Ironscale Hollow;

the linkaction of Percy is "[Percylinkaction]".

to say Percylinkaction:
	say "Possible Actions: [link]talk[as]talk Percy[end link], [link]smell[as]smell Percy[end link][line break]";

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Percy	"Percy"

Percy is a man.
ScaleValue of Percy is 2. [small sized]
SleepRhythm of Percy is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cocks of Percy is 1. [cock]
Cock Length of Percy is 6. [cock length]
Cock Width of Percy is 2. [ball size]
Testes of Percy is 0. [no balls]
Cunts of Percy is 0. [no pussy]
Cunt Length of Percy is 0. []
Cunt Width of Percy is 0. []
Breasts of Percy is 2. [2 nipples]
Breast Size of Percy is 0. [flat]
Humanity of Percy is 70.
OralVirgin of Percy is true.
Virgin of Percy is true.
AnalVirgin of Percy is true.

The description of Percy is "[PercyDesc]".
The conversation of Percy is { "mew" }.
Percy is in Ironscale Hollow.

The scent of Percy is "[PercyScent]";

to say PercyScent:
	say "     The pangolin has a surprisingly complex scent.  He smells very earthy, with a hint of iron from his work. There's a slight masculine musk, but it is somewhat hidden by a strangely herbal scent.";

to say PercyDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Percy: [HP of Percy], Dexterity: [Dexterity of Percy], LIBIDO: [libido of Percy], LUST: [lust of Percy], Strength: [Strength of Percy], Stamina: [Stamina of Percy] <- DEBUG[line break]";
	if Dexterity of Percy is 0: [regular Percy]
		say "     Percy stands on the tips of his clawed feet, trying to seem taller than the four feet that he is. Though he has a somewhat stocky build, his smooth, sand-colored skin still hints to the lean muscles underneath. Thick, steel-colored scales cover his back and sides, each scale highlighted with yellow-gold on its edge. Percy's long and broad tail stretches behind him, just barely off of the ground, giving him a slight hunch forward when standing unsupported.  His head is somewhat conical in shape with a dark nose on the end of his muzzle. He smiled meekly as he avoids your gaze with his mossy-green eyes. Though not wearing any traditional clothes, Percy still wears a leather apron, preventing you from getting a good look at his [']naughty bits['].";
	else if Dexterity of Percy is 1: [Percy has become Medium sized]
		say "     A";

Section 2 - Talking with Percy

instead of conversing the Percy:
	if HP of Percy is 0: [not encountered yet]
		say "     ERROR: Percy shouldn't be where a player can see him yet! Please report to Wahn on the FS discord or forum and quote this tracking number for easier bugfixing: [HP of Percy]";
	else: [repeat talk with regular Percy]
		say "[PercyTalkMenu]";

to say PercyTalkMenu:
	say "     What do you want to talk to Percy about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Stamina of Percy is 0:
		choose a blank row in table of fucking options;
		now title entry is "Rumors";
		now sortorder entry is 1;
		now description entry is "Ask if Percy knows anything of interest";
	[]
	if Stamina of Percy is 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about him";
		now sortorder entry is 2;
		now description entry is "Ask about him";
	[]
	if Stamina of Percy > 0 and Strength of Percy > 0: [crafted item NOT ready for pickup]
		choose a blank row in table of fucking options;
		now title entry is "Check if the crafting is done yet";
		now sortorder entry is 18;
		now description entry is "Check to see if Percy has finished crafting";
	[]
	if Stamina of Percy > 0 and Strength of Percy is 0: [crafted item ready for pickup]
		choose a blank row in table of fucking options;
		now title entry is "Pick up your finished item";
		now sortorder entry is 19;
		now description entry is "Collect an item Percy made";
	[]
	if Stamina of Percy is 0: [not crafting anything yet]
		choose a blank row in table of fucking options;
		now title entry is "Crafting";
		now sortorder entry is 20;
		now description entry is "Ask Percy about crafting you an item";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Rumors"):
					say "[PercyTalk1]";
				if (nam is "Ask about him"):
					say "[PercyTalk2]";
				if (nam is "Check if the crafting is done yet"):
					say "[PercyTalk18]";
				if (nam is "Pick up your finished item"):
					say "[PercyTalk19]";
				if (nam is "Crafting"):
					say "[PercyTalk20]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     The pangloin bears a slight look of disappointment as you step back to leave.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PercyTalk1: [Rumors]
	let randomnumber be a random number from 1 to 3;[fix to 4 once drap list is created]
	if randomnumber is:
		-- 1:
			say "     'I'm sure you know this didn't used to be a forest[if player is not defaultnamed], [name of player][end if]. They sprouted up almost overnight once the infection hit. I wouldn't try harming the trees around here though. There's more to them that meets the eye.'";
		-- 2:
			say "     'So[if player is not defaultnamed][name of player], [end if]have you visited the snowy part of the forest to the east?  There's a cave there where Miyuki lives.  They are an interesting person, to say the least.'";
		-- 3:
			say "     'A Knight and Squire tried to attack me the other day.  They kept calling me a monster.' Percy looks slightly saddened by the thought. 'Not all the knights are like that though, you know? Those are just the ones that lost themselves to the infections. Some of the sane ones come to me to have new equipment forged.'";
		-- 4:
			say "     'If you need a good source of leather, those [bold type]Herm Hyenas[roman type] sometimes drop scraps of them now and then. Just... promise me you'll be careful[if player is not defaultnamed], [name of player][end if].'";
	wait for any key;
	say "[PercyTalkMenu]";

to say PercyTalk2: [Percy History]
	say "     'You... You want to hear about me[if player is not defaultnamed], [name of player][end if]?' Percy fidgets anxiously, tapping his claws together. 'Well I'm not that interesting. I used to live here as a normal human before the infection. I had a small home business where I made or repaired various things before selling them. I worked on everything from furniture to suits of armor. I didn't make much, but I loved it.' The pangolin's eyes were bright as he talked. You could tell that his craft was something he was comfortable with, something he knew well.'";
	say "     'When the infection came, I had been working on a piece of antique pangolin scalemail.' You both give each other a knowing look. It was obvious as to where his story was going. 'I don't know how I got infected.  Maybe it was just in the air, but either way, I started changing. Scales started sprouting, my head felt like mashed potatoes, claws grew, my tail sprouted, and the whole world spun as I got smaller.' Percy looks off to the side thoughtfully. 'Looking back on it, I was probably one of the lucky ones. Not only am I alive, but I'm strong, fast...' You comment about how his little waddle didn't seem very fast, at which he blushed. 'I meant rolling! And because of that and my scales, I'm still me, at least mentally.' He gave you a friendly smile. 'Besides, I don't know if it's because of the infection, but I've started to like being a pangolin. After all, it let me meet you, right[if player is not defaultnamed], [name of player][end if]?'";
	now HP of Percy is 3;

to say PercyTalk18:
	if Strength of Percy is 2:
		say "     The doors to Percy's workshop are open and he seems to be busy putting on the finishing touches. It shouldn't be long now.";
	else if Strength of Percy > 2 and Strength of Percy < 5:
		say "     The doors to Percy's workshop are closed, but the sounds behind them are softer. It seems that Percy is getting close to finishing.";
	else if Strength of Percy > 4:
		say "     The doors to Percy's workshop are closed, and by the loud noises and music playing in the background, it seems like it will be some time until his work is complete.";
	wait for any key;
	say "[PercyTalkMenu]";

to say PercyTalk19:
	if Stamina of Percy is 1: [spear]
		say "     Percy hands you a spear that feels fairly good in your hands.  You can't even tell that the shaft used to be a hoe, but the blade at the end was still recognizable as your old pocket knife. 'I hope this helps.  It's not my best work, but it should be reliable.'";
		increase carried of Makeshift-Spear by 1;
	else if Stamina of Percy is 2:[Vambrace]
		say "     Percy hands you a pear of leather vambraces. The design engraved into it's surface is elegant and makes Percy's skill as a armor clear. 'The materials took some working with, but I think they turned out well.'";
		increase carried of leather vambraces by 1;
	else if Stamina of Percy is 3:[Gambeson]
		say "     Percy hands you what looks like a coat made out if a quilt.  Despite it's poofy appearance, the gambeson was surprisingly heavy for cloth armor. 'It takes a while to stitch together that many layers of cloth. You would be surprised how effective it can be though.'";
		increase carried of Gambeson by 1;
	now Strength of Percy is 0;
	now Stamina of Percy is 0; [reset]
	wait for any key;
	say "[PercyTalkMenu]";

to say PercyTalk20: [Workshop]
	if Strength of Percy > 0: [old countdown not done yet]
		say "     He's still working on your last project. Wait a bit for him to finish.";
	else:
		say "[PercyCraftingMenu]";

Section 3 - Fucking Percy

instead of fucking the Percy:
	say "     This option is unavailable at this time. (WIP)";[Remove this when adding fucking]
	[if (lastfuck of Percy - turns < 6): [he got fucked in the last 15 hours = 5 turns]
		say "     'Sorry, I would love to spend some more time with you, but it looks like neither of us really are ready for that,' Percy says apologetically, 'Maybe we should take it slow and you should come back and visit me again later.'";
	else: [ready for sex]
		say "     Walking up to Percy, you allow your gaze to take in everything on offer. Sliding an arm around the tiger's side, you place a kiss to his throat. 'Someone's in a mood today, huh?' Turning to further embrace you, a content sigh escapes your lips. 'So what did you have in mind babe?'";
		wait for any key;
		say "[PercySexMenu]";]

to say PercySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Percy's shaft in your pussy";
		now sortorder entry is 3;
		now description entry is "Offer vaginal sex to the dorky pangolin";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Percy's shaft in your ass";
	now sortorder entry is 4;
	now description entry is "Offer anal sex to the dorky pangolin";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Take Percy's shaft in your pussy"):
					say "[PercySex1]";
				if (nam is "Take Percy's shaft in your ass"):
					say "[PercySex2]";
					now lastfuck of Percy is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro pangolin, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PercySex1: [vaginal on the player]
	say "     A";

to say PercySex2: [anal on Percy]
	say "     A";

Section 5 - Percy Quests And Events

Part 1 - Pangolin Encounter

instead of going northwest from Urban Forest while (HP of Percy < 1):
	say "     Following a path north, you stumble across what you at first thought was a cave, but you quickly realize that it is some kind of tunnel or burrow in the side of a raised mound of earth. Keeping your distance at first, you can see that the passage is round with deep claw marks furrowed into its walls. You begin to wonder what sort of terrible creature would be powerful enough to construct it when you hear the rustle of leaves nearby. Ducking behind a bush, you wait, hiding from or ready to ambush whatever appears.";
	say "     A small creature, a little over four feet tall, emerges from the forest path. His legs are fairly short, giving him a slight wobble to his step, and a long and broad tail stretches behind him. His back is completely covered in thick scales, and his fingers are tipped with powerful looking claws. Despite the reptilian-like traits though, he doesn't look like any kind of lizard that you have seen before. He looks more like some sort of scaled armadillo, one who apparently is singing to himself.";
	WaitLineBreak;
	say "     The creature mumbles and hums something about [']dancing if he wanted to['] while carrying a bundle of wood. He even shuffles his feet a little to the tune in his head until a slight breeze blows from behind you. The singing creatures nose twitches a few times before he turns towards where you are hiding. He squints for a moment, followed by a look of surprise. You quickly stand up out of reflex, ready to fight or run. Your potential attacker, however, drops the bundle of wood, and for a moment, he opens his mouth and looks as if he is going to wave to you in greeting, only to stop and curl up into a tight ball of scales before suddenly rolling away into the burrow!";
	say "     [bold type]Do you want to go after the creature?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Follow the strange creature.";
	say "     ([link]N[as]n[end link]) - Leave it be for now.";
	if player consents:[Follow]
		LineBreak;
		say "     Having piqued your interest, you come out from your hiding place and begin your pursuit, following the panicked little guy into what you now assume is his burrow. To your surprise, the tunnel is dimly lit by small yellowish crystals embedded in the earthen walls. Not that there was much to see. Most of the tunnel is the same; a rounded passage carved out by claws and large enough for even larger creatures to pass through relatively unhindered. Just as you begin to wonder just how long this tunnel is, a wooden wall comes into view. It is built out of whole logs and solid enough that it would take a massive force to break through. Luckily, there is also a door, which means that you haven't reached a dead-end. There was even a sign hanging above it with a hammer and anvil crudely drawn on it. You reach for the ironwork handle and pull tentatively. Unfortunately, the door seems to be barred from the other side and no amount of pulling is going to change that.";
		say "     [bold type]Knock on the door?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, knock on the door.";
		say "     ([link]N[as]n[end link]) - No, you don't know what's behind that door.";
		if player consents:[Knock]
			LineBreak;
			say "     With no other options available to you, you do the one sensible thing left and knock. 'One moment!' you hear from the other side, the voice seeming a little flustered. [if the perception of the player > 16]You can hear some shuffling and mumbling as it sounds as if he's quickly cleaning up before the tip tapping of his claws against the floor get closer to the door. There is a decently loud clunk sound as the door's lock is disengaged at last[else]Things go quiet for a moment, leaving you to wonder if this is such a good idea, until you finally hear the clunk of the lock being released[end if].";
			say "     The door slowly swings open with a creak, revealing the scaly creature from before. Now that you are much closer than your previous encounter, you can see him in more detail. From the front, he has smooth, sand-colored skin that shows off his lean muscles despite his naturally stocky build. The scales that covers his back are a matte-steel color with a yellow-gold trim on the edges. His tail is long and broad, more on the flat side, but still clearly powerful since in his worry, it knocks over a coat rack beside him, sending it rolling across the room for a few feet. His eyes are a mossy-green, and his face bears a mixed expression of nervousness, embarrassment, and slight surprise at seeing you again.";
			WaitLineBreak;
			say "     'Oh, uh... It's you again!' he says, then starts fidgeting with his claws. 'I'm sorry about what happened back there. I got a little spooked and... You don't seem dangerous, so why don't you come in for a little bit so that I can make up for being rude earlier,' he said before stepping aside and gesturing for you to enter. 'My name is Perceval, by the way. Most seem to just call me Percy the Pangolin. Not the most creative but it's the one thing people seem to remember about me.' You introduce yourself[if player is not defaultnamed] as [name of player][end if] before looking around.";
			say "     The pangolin's home is very cozy despite being underground. It is temperate, decently lit, and fairly spacious. But in addition to the homely touches, there is an entire room in the back that looks like a workshop, complete with anvil, forge (currently unlit), and various tools, some of which you have no idea what they are used for. Percy wobbles over to a storage cabinet and begins rifling through his supplies before offering you a bottle of water, which you happily put away for later. 'It's the least I can do,' he says before stepping behind a counter and giving you a small smile. 'So um... Yeah. I also run a little blacksmith shop if you hadn't noticed already. I'm pretty good too! I service the entire Urban Forest area, so if you... You know, need something made, just stop by, and I'll see what I can do, alright?'";
			say "     However you feel about the little guy, he at least seems like he could be useful. After all, it's not always easy to come across good equipment, and from the sound of it, he might know the area fairly well. Either way, this pangolin seems like a good ally to have.";
			LineBreak;
			say "[bold type]You gain 1 water bottle![roman type][line break]";
			increase carried of water bottle by 1;
			LineBreak;
			say "[bold type]You've discovered Ironscale Hollow![roman type][line break]";
			now Ironscale Hollow is known;
			now HP of Percy is 2;
			wait for any key;
			move player to Ironscale Hollow;
		else:[Don't Knock]
			say "     You decide it best just to leave for now. You can always return later if you change your mind.";
			wait for any key;
			move player to Southern Burrow Entrance;
			now HP of Percy is 1;
	else:[Don't Follow]
		say "     You aren't quite sure what that was all about, but you have other things to do. You know where the burrow is, and you can always return to look for him if you want.";
		wait for any key;
		move player to Southern Burrow Entrance;
		now HP of Percy is 1;

Part 2 - Pangolin Reencounter

instead of going north from Southern Burrow Entrance while (HP of Percy < 2):
	say "     You head down into the burrow where you had seen the strange creature from before roll down. The tunnel is dimly lit by small yellowish crystals embedded in the earthen walls. Not that there was much to see. Most of the tunnel is the same; a rounded passage carved out by claws and large enough for even larger creatures to pass through relatively unhindered. Just as you begin to wonder just how long this tunnel is, a wooden wall comes into view. It is built out of whole logs and solid enough that it would take a massive force to break through. Luckily, there is also a door, which means that you haven't reached a dead-end. There was even a sign hanging above it with a hammer and anvil crudely drawn on it. You reach for the ironwork handle and pull tentatively. Unfortunately, the door seems to be barred from the other side and no amount of pulling is going to change that.";
	say "     [bold type]Knock on the door?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, knock on the door";
	say "     ([link]N[as]n[end link]) - No, you don't know what's behind that door";
	if player consents:[Knock]
		LineBreak;
		say "     With no other options available to you, you do the one sensible thing left and knock. 'One moment!' you hear from the other side, the voice seeming a little flustered. [if the perception of the player > 16]You can hear some shuffling and mumbling as it sounds as if he's quickly cleaning up before the tip tapping of his claws against the floor get closer to the door. There is a decently loud clunk sound as the door's lock is disengaged at last[else]Things go quiet for a moment, leaving you to wonder if this is such a good idea, until you finally hear the clunk of the lock being released[end if].";
		say "     The door slowly swings open with a creak, revealing the scaly creature from before. Now that you are much closer than your previous encounter, you can see him in more detail. From the front, he has smooth, sand-colored skin that shows off his lean muscles despite his naturally stocky build. The scales that covers his back are a matte-steel color with a yellow-gold trim on the edges. His tail is long and broad, more on the flat side, but still clearly powerful since in his worry, it knocks over a coat rack beside him, sending it rolling across the room for a few feet. His eyes are a mossy-green, and his face bears a mixed expression of nervousness, embarrassment, and slight surprise at seeing you again.";
		WaitLineBreak;
		say "     'Oh, uh... It's you again!' he says, then starts fidgeting with his claws. 'I'm sorry about what happened back there. I got a little spooked and... You don't seem dangerous, so why don't you come in for a little bit so that I can make up for being rude earlier,' he said before stepping aside and gesturing for you to enter. 'My name is Perceval, by the way. Most seem to just call me Percy the Pangolin. Not the most creative but it's the one thing people seem to remember about me.' You introduce yourself[if player is not defaultnamed] as [name of player][end if] before looking around.";
		say "     The pangolin's home is very cozy despite being underground. It is temperate, decently lit, and fairly spacious. But in addition to the homely touches, there is an entire room in the back that looks like a workshop, complete with anvil, forge (currently unlit), and various tools, some of which you have no idea what they are used for. Percy wobbles over to a storage cabinet and begins rifling through his supplies before offering you a bottle of water, which you happily put away for later. 'It's the least I can do,' he says before stepping behind a counter and giving you a small smile. 'So um... Yeah. I also run a little blacksmith shop if you hadn't noticed already. I'm pretty good too! I service the entire Urban Forest area, so if you... You know, need something made, just stop by, and I'll see what I can do, alright?'";
		say "     However you feel about the little guy, he at least seems like he could be useful. After all, it's not always easy to come across good equipment, and from the sound of it, he might know the area fairly well. Either way, this pangolin seems like a good ally to have.";
		LineBreak;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
		LineBreak;
		say "[bold type]You've discovered Ironscale Hollow![roman type][line break]";
		now Ironscale Hollow is known;
		now HP of Percy is 2;
		wait for any key;
		move player to Ironscale Hollow;
	else:[Don't Knock]
		say "     You decide it best just to leave for now. You can always return later if you change your mind.";
		wait for any key;
		move player to Southern Burrow Entrance;

Section 6 - Rooms

Part 1 - South Entrance

Southern Burrow Entrance is a room. Southern Burrow Entrance is northwest of Urban Forest.
The description of Southern Burrow Entrance is "[SouthBurrow desc]".

to say SouthBurrow desc:
	say "     If it wasn't for the degraded fences and crumbling houses, you could almost believe that you were in a natural forest. The birds sing in harmony, and the gentle breeze blowing through the leaves bring with it the herbal scent of the trees and earth around you. You've come to a point where the path splits.";
	LineBreak;
	say "     To the [bold type]North[roman type] is a large burrow that continues deep into an earthen mound. Fresh tracks cover the ground, both coming to and from the tunnel, as well as passing by.";
	LineBreak;
	say "     To the [bold type]Southwest[roman type] is the entrance to the Urban Forest. You can still see the edge of the tree line if you look hard enough, and the buildings in the area are more intact than where you currently are.";
	[say "To the [bold type]Northeast[roman type] looks to be a clearing among the trees. Some kind of glade, though you get a somewhat strange feeling as you look towards it. You could almost swear seeing a glint of blue from it.";]

Part 2 - Ironscale Hollow

Table of GameRoomIDs (continued)
Object	Name
Ironscale Hollow	"Ironscale Hollow"

Ironscale Hollow is a room. It is fasttravel. Ironscale Hollow is sleepsafe. It is private.
Ironscale Hollow is north of Southern Burrow Entrance.
The description of Ironscale Hollow is "[IronscaleHollow desc]".

the scent of Ironscale Hollow is "It smells of dirt and iron.".

to say IronscaleHollow desc:
	say "     All passages in the burrow converge on this one main chamber, each tunnel blocked by a solid wooden door with a hefty iron lock to prevent any would-be raiders or rapists from getting in. You hadn't noticed the first time you were here, but each door also has a small peep-hole to let him see who's knocking. Like the rest of the burrow, the [']Hollow['] was dug into the earth, though it also has stone flooring and [if findwires is 2 and fixedgens is 2]even electric lighting, now that the power has returned.[else]oil-lamp lighting. There seem to be some electric lights as well, but the power doesn't seem to be running.[end if] Homely decorations are scattered about, as well as a few chairs and a table for customers to wait at.";
	say "     Two other rooms can be seen through their respective doorways. One leads to the bedroom, which looks to be fairly well kept, but simple. The other leads to the workshop, complete with racks of tools hanging over a workbench, an anvil, a forge, and a few other things that you aren't even sure what they are. Percy is [if Strength of Percy > 1]hard at work in his workshop crafting the item you commissioned him to make.[else]standing at his front desk with shelves of sample ironwork behind him. You suspect that he has some sort of stepstool behind there that lets him see over the table. He fidgets idly with his claws as if unsure what to say.[end if]";

[Place holder until drops are created]
when play begins:
	add "leather scrap" to invent of Ironscale Hollow;
	add "leather scrap" to invent of Ironscale Hollow;
	add "leather scrap" to invent of Ironscale Hollow;
	add "leather scrap" to invent of Ironscale Hollow;
	add "leather scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;
	add "cloth scrap" to invent of Ironscale Hollow;

Section 7 - Workshop

to say PercyCraftingMenu:
	LineBreak;
	say "     What kind of crafting would you be interested in?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "A Makeshift-Spear";
	now sortorder entry is 1;
	now description entry is "Ask Percy about crafting a Makeshift Spear";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Leather Vambraces";
	now sortorder entry is 2;
	now description entry is "Ask Percy about crafting Leather Vambraces";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gambeson";
	now sortorder entry is 3;
	now description entry is "Ask Percy about crafting a Gambeson";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "A Makeshift-Spear"):
					say "[PercyCrafting1]";
				else if (nam is "Leather Vambraces"):
					say "[PercyCrafting2]";
				else if (nam is "Gambeson"):
					say "[PercyCrafting3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to keep the supplies you have to yourself, at least for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

Part 1 - Makeshift-Spear

to say PercyCrafting1: [Con 1]
	if pocketknife is owned and Broke-Ass Hoe is owned and freecred > 49: [create the item]
		say "     'Oh hey, your pocket knife and broken hoe would be perfect for making a Makeshift-Spear. I would just need the two materials and 50 Freecreds.'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, craft the item.";
		say "     ([link]N[as]n[end link]) - No, keep the materials.";
		if player consents:
			LineBreak;
			say "     You hand Percy the materials who looks them over with experienced eye. 'Hmmm. This knife is old but well made, Likely military. Cold War maybe?' The Pangolin puts the two materials off the side before returning his focus to you. 'Anyways, this shouldn't take too long. I'll have to remove the blade and fasten it to the haft, then secure it with some binding. I should have it done in a [bold type]few hours[roman type].'";
			LineBreak;
			say "[bold type]Pocketknife removed.[roman type][line break]";
			delete pocketknife;
			LineBreak;
			say "[bold type]Broke-Ass Hoe removed.[roman type][line break]";
			delete Broke-Ass Hoe;
			now Strength of Percy is a random number from 2 to 3; [sets the needed time to a random value]
			now Stamina of Percy is 1;
			CreditLoss 50;
		else:
			LineBreak;
			say "     You decide to keep your items for now.";
			wait for any key;
			say "[PercyCraftingMenu]";
	else: [explain the requirements]
		say "     'If you need an easy and cheap weapon and you have a [bold type]pocket knife[roman type] and a suitable haft, like a rake or [bold type]hoe[roman type], I can make you a simple survival spear for 50 freecreds.'";
		wait for any key;
		say "[PercyCraftingMenu]";

Part 2 - Leather Vambraces

to say PercyCrafting2: [Con 2]
	if carried of leather scrap > 4 and freecred > 49:
		say "     'Using your five pieces of scrap leather, I can make you leather vambraces to protect your forearms for 50 Freecreds if you want.'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, craft the item.";
		say "     ([link]N[as]n[end link]) - No, keep the materials.";
		if player consents:
			say "     'Alright, this shouldn't take too long. I should have it done in a [bold type]few hours[roman type].'";
			say "[bold type]Leather Scraps x5 Removed[roman type][line break]";
			now Strength of Percy is a random number from 3 to 5; [sets the needed time to a random value]
			now Stamina of Percy is 2;
			decrease carried of leather scrap by 5;
			CreditLoss 50;
		else:
			say "     You decide to keep your items for now.";
			wait for any key;
			say "[PercyCraftingMenu]";
	else:
		say "     'If you have five suitable pieces of scrap leather, I can make you leather vambraces to protect your forearms for 50 Freecreds.'";[replace forearms with arm desc once done]
		wait for any key;
		say "[PercyCraftingMenu]";

Part 3 - Gambeson

to say PercyCrafting3: [Con 2]
	if carried of cloth scrap > 9 and freecred > 74:
		say "     'Using your ten pieces of scrap cloth, I can make you a medieval Gambeson for 75 Freecreds. It's a kind of cloth chest armor.'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, craft the item.";
		say "     ([link]N[as]n[end link]) - No, keep the materials.";
		if player consents:
			say "     'Alright, this shouldn't take too long. I should have it done in a [bold type]day or so[roman type].'";
			say "[bold type]Cloth Scraps x10 removed.[roman type][line break]";
			now Strength of Percy is a random number from 7 to 9; [sets the needed time to a random value]
			now Stamina of Percy is 3;
			decrease carried of cloth scrap by 10;
			CreditLoss 75;
		else:
			say "     You decide to keep your items for now.";
			wait for any key;
			say "[PercyCraftingMenu]";
	else:
		say "     'If you have five suitable pieces of scrap cloth, I can make you a kind of cloth chest armor called a Gambeson for 75 Freecreds.'";
		wait for any key;
		say "[PercyCraftingMenu]";

An everyturn rule:
	if Strength of Percy is 1:
		if Percy is visible:
			say "     Percy emerges from the workshop, stepping up to the counter, smiling towards. 'I finished your commission. Come over and I'll show you.'";
		else:
			say "     [bold type]You wonder if Percy is done working on your project. Maybe you should check in with him sometime.[roman type][line break]";
		now Strength of Percy is 0;
	if Strength of Percy > 1: [countdown]
		decrease Strength of Percy by 1;

Percy ends here.
