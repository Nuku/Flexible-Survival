Version 1 of Ice Fox by Wahn begins here.
[Version 1 - new npc/infection]

"Adds an Ice Fox NPC to Flexible Survival's urban forest"

[ MiyukiRelationship                                          ]
[   0: not met                                                ]
[   1: met, apologized for the intrusion                      ]
[   5: met, gave BJ                                           ]
[  10: player fucked by Miyuki                                ]
[ 100: met, angered - no further contact                      ]

[ lust of Miyuki - blessing quest                             ]
[   0: not started                                            ]
[   1: Carambola quest started                                ]
[   2: Carambola acquired                                     ]
[   3: blessing ready                                         ]
[   4: blessing given                                         ]

[ HP of Miyuki - arctic fox quest                             ]
[   0: not started yet                                        ]
[   1: player got told to check out the foxes in the zoo      ]
[   2: player chickened out once                              ]
[   3: rescued the captives, is Miyuki's mate                 ]
[  99: player refused to become Miyuki's mate                 ]
[ 100: player failed                                          ]

MiyukiRelationship is a number that varies.
lastSnowStarGiven is a number that varies. lastSnowStarGiven is usually 10000.

Section 1 - Events

Section 2 - Monster Responses

[Noncombat Creature]

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Ice Fox";
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of an anthro fox, with a narrow and delicate muzzle and small but sharp teeth. Two pointy ears rise from the top of your triangular head, giving you exceptional hearing"; [ "Your face is (your text)." ]
	now body entry is "that of an anthro fox, standing tall on digitigrade legs. A band of scales runs from your throat down towards your crotch and inner thighs, giving a partially draconic appearance too. This is also helped by further scales on the backs of your forearms and shins, culminating in feet with impressive toe-claws";
	now skin entry is "[one of]white furred[or]a snow-white coat of fur sprouting from your[at random]"; [ "Your body is covered in (your text) skin." ]
	now tail entry is "Nine prehensile fox tails weave through the air behind you, snow white except for their charcoal tips.";
	now cock entry is "[one of]vulpine[or]pointy[or]pinkish[at random]";
	now face change entry is "its mouth pushes out into a slim muzzle and the ears tapering to points and wander steadily upwards. All in all, your whole head seems to stretch and reform into the more triangular visage of a fox, your slim new muzzle full of sharp teeth and your bright shining eyes seeing the world around you in an entirely new, and more sexual light"; [ "Your face feels funny as (your text)." ]
	now body change entry is "its muscles twitching and tremble and bones reform, shaping your being into a more slim and streamlined form. A row of scales solidifies in an unbroken band from your throat all the way to your inner thighs, as well as on the backs of your forearms and your shins. Meanwhile, your hands seem to narrow and your fingers grow closer together as soft claws push their way out of your new slightly paw-like hands. Finally, your feet take on a shape more fitting the digitigrade stance and form draconic toe-claws";
	now skin change entry is "a strange warmth begins to spread across your body, and a soft downy layer of pure white fur begins to push out of your skin, longer thicker fur beginning to grow in even as you begin to stroke your soft white undercoat, until you have a full pelt full of soft layered fox fur";
	now ass change entry is "it becomes tight and firm and nine long fox tails sprout out of your tailbone. It takes a few seconds before you manage to get them under control, not quite as easy as one thinks due to the fact that they actually are prehensile appendages";
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canine cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath";
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Both";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 80;
	now lev entry is 8;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;              [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;
	now cock length entry is 9;        [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of nipples the infection will give a player. ]
	now breast size entry is 4;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 4;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;
	now cunt length entry is 9;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;
	now loot entry is "snow star";     [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]anthro[or]lithe[or]slender[at random]";
	now type entry is "[one of]vulpine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";


Table of Game Objects (continued)
name	desc	weight	object
"snow star"	"A glistening disk of solidified water, forming a beautiful little star shape. It is about as large as a silver dollar, incredibly thin and seems fairly delicate. Yet despite this, the piece of ice endures in your possession without cracking or melting. What an amazing present from Miyuki."	0	snow star

instead of sniffing snow star:
say "     The little piece of ice smells fresh, a little like a menthol bonbon.";

snow star is a grab object.
the usedesc of snow star is "[snow star use]";

to say snow star use:
	say "     You pull out the little star of ice and look at it from close up, enjoying the shimmer of light in its facet for a moment. Then you place it on your outstretched tongue, trembling in pleasure as it melts right away and a little bit of Miyuki's magic fills your body.";
	PlayerDrink 10;
	infect "Ice Fox";

Section 4 - Location

Snowy Forest Trail is a room. Snowy Forest Trail is northeast of Urban Forest.
The description of Snowy Forest Trail is "     You're on a narrow trail through the urban forest, in an area of fairly dense growth. Fragments of the buildings formerly occupying this part of the city are few and far between, with trees and other plants forming what seems to be a century-old forest. Interestingly, this part of the woods is a lot cooler than the rest of the city, with some snow covering low-hanging branches and the ground under your feet. Despite this, you don't actually feel uncomfortable, which might actually be a wholly positive result of the nanites. Towards the north, this effect only gets more pronounced - there are white flakes in the air there, falling at a placid pace to settle in a glistening blanket of undisturbed snow.".
earea of Snowy Forest Trail is "Forest".

Forest Cave Entrance is a room. Forest Cave Entrance is north of Snowy Forest Trail.
The description of Forest Cave Entrance is "[ForestCaveEntranceDesc]".
earea of Forest Cave Entrance is "Forest".

to say ForestCaveEntranceDesc:
	say "     In the midst of the sprawling and dense urban forest, with not a trace of civilization in sight now, you stand before what seems to be a small hill or mound. Everything around you is covered in a blanket of freshly fallen snow that quietly crunches with every step you take and more white flakes are falling in a gentle but steady shower. Interestingly, they actually seem to originate all from the same spot - an opening in the side of the hill, high enough to walk into. From there, the snow gets blown out into the surrounding area, creating beautiful whirls and eddies in the air as it gets blown through the air.";
	if MiyukiRelationship is 0: [player doesn't know her]
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. They are just two human-sized paws, so it seems they must belong to an anthro...";
	else if MiyukiRelationship > 0 and MiyukiRelationship < 100:
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. Looks like Miyuki is home. Thinking back to your last encounter, you wonder if you should visit her. Might be fun...";
	else if MiyukiRelationship is 100:
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. Looks like Miyuki is home. You're not sure if you want to take the chance of another encounter with her, after how last time went...";

Frozen Cave Tunnel is a room. Frozen Cave Tunnel is northeast of Forest Cave Entrance.
The description of Frozen Cave Tunnel is "     You're in what seems like a natural cave tunnel, leading steadily downwards in a slow curve. Might actually be a spiral, now that you think of it - remembering the part you've already got behind you and what you can see ahead. And you can actually see, despite being underground and in a cave, thanks to the ever-present snow all around you. Each flake has a tiny and dim glow to it, making them whiter than white and creating a beautiful sparkling effect that covers the ground in a smooth layer and has settled into all of the cracks and rough surfaces of the cave walls. Seeing wondrous sights like this makes it hard to remember that you're still in the city sometimes, and that all of this didn't exist just a short while ago.".

Ice Fox's Den is a room. Ice Fox's Den is below Frozen Cave Tunnel.
The description of Ice Fox's Den is "[IceFoxDenDesc]";

to say IceFoxDenDesc:
	say "     You're in a moderately sized cavern, spreading out around you. On the smooth black stone floor (granite, if you'd have to guess), there are some pieces of furniture scattered about, tables and chairs, plus a number shelves - all of them white. Hard to say if that is their natural color or if it's just the thin layer of frost covering them. In the back, there is what can only be called a nest - a circular affair of many blankets on the ground, with countless big and small pillows piled in it. The walls enfolding the place seem fairly natural and cave-like, with sparkling snow having settled on every bump and unevenness, filling the place with a smooth and even light. Finally, the ceiling above you is quite a sight, as what seems to be a snow-storm whirls in the air there, centered on a palm-sized star of a snow flake, with more and more snow constantly being created as steamers of flakes are sent to blow up the tunnel up to the surface.";
	if HP of Miyuki > 2 and HP of Miyuki < 100:
		say "     Two openings in the cave walls allow access to adjoining rooms, one in the southeast and another in the northwest.";

Snow Rabbit's Warren is a room.
The description of Snow Rabbit's Warren is "[SnowRabbitsWarrenDesc]";

to say SnowRabbitsWarrenDesc:
	say "     You're in a mid-sized cave that is split into two parts by a not quite hip-high wall of ice. The far side of it has a colossal mound of snow, almost reaching the rocky ceiling at its highest point. Numerous snow-white rabbits are hopping around in this enclosure, and also digging into the snow, creating tunnels and chambers within. The little animals look basically just like oval fluffs of fur when they sit down, only extending their surprisingly long legs when they move around. On the 'visitor' side of the cave, Russel has made a camp for himself in a little niche, with a sleeping bag rolled out as well as stacks of supplies that he needs to care for his charges.";
	say "     Sadly, the former zookeeper seems to busy for anything but helping his animal friends settle in right now, so you don't even have a chance to chat with him.";

Snow Fox Enclosure is a room.
The description of Snow Fox Enclosure is "[SnowFoxEnclosureDesc]";

to say SnowFoxEnclosureDesc:
	say "     You're in a mid-sized cave that is split into two parts by a not quite hip-high wall of ice. The far side of it has what seems to be a miniature cliff molded out of its back wall, with a comfy fox-sized cave dug into it and a sloping path to the top up one side. All of this is covered in a liberal scattering of snow. Numerous snow-white foxes are moving around in this enclosure, yipping and with some chasing each other up to the lookout spot and down again. Aubrey the foxtaur is in their midst, playing with the little vulpines by throwing several rubber balls for her charges to run after and bring back. She seems totally focused on playtime with the foxes, barely registering you other than a friendly smile and wave as you come in. On your side of the ice wall, there is a big nest of warm blankets in one corner of the irregularly shaped room. Looks like Aubrey and Barbara share it.";
	say "     The anthro fox Barbara doesn't seem to be in right now, most likely gathering supplies to feed the gang of refugees.";

Section 5 - Events

instead of going Down from Frozen Cave Tunnel while (Miyuki is in Ice Fox's Den and MiyukiRelationship is 0): [first encounter]
	move player to Frozen Cave Tunnel;
	say "     In the midst of the cave stands what must be the person living here - an anthro fox with snow-white fur, as well as some flexible draconic scales that run in a broad band from her throat, between two shapely breasts and all the way down to the inside of her thighs. She bears more scales on the backs of her forearms, as well as the shins of her legs, with them becoming more pronounced further down and ending at the sharp toe-claws that make her paws appear more like a dragon's than a foxes. Finally, there is a grand total of nine flexible fox tails fanned out behind her, swaying gently left and right. All of this is readily visible to you as she doesn't seem to need - or want - to wear clothes. Inevitably, your gaze wanders down between her thighs, where you spot a thin slit between two scale-plates.";
	say "     The dragon-fox is standing right underneath the big snowflake rotating close up to the ceiling, looking at it with her arms raised, sending pale wispy streamers of energy up to it. This seems to charge up the frosty star, making it spin even faster, with more snow forming in the surrounding air. It blows towards the cavern entrance in a strong gust - or in other terms... right at you! Surprised, you can't help but let out a strained gasp as you stand against the gale, barely keeping upright despite the blowing wind. The sound draws the attention of the ice fox, who stops what she was doing and turns her muzzle to look at you. Raising an eyebrow in a quizzical expression, she takes a few steps closer and says, 'What do we have here? An uninvited trespasser...'";
	WaitLineBreak;
	say "     Stopping the snowy gale threatening to push you over with a flick of her wrist, the anthro fox comes to stand before you with a smirk on her muzzle and arms crossed in front of her shapely chest. She looks you up and down quite closely, her gaze resting on your crotch for a few seconds before she looks you right in the eye. 'And what an interesting visitor you are to come visit Miyuki. Still, just walking into a woman's bedroom unbidden. I think that demands an apology...' She smiles at you and you become aware of movement behind her back - several of those long tails of hers curve around, pointing at her crotch, where the tip of a vulpine shaft starts to push outwards from the elongated slit between her scales.";
	LineBreak;
	say "     [bold type]Looks like someone wants a blowjob. How do you react to this?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Give the herm(?) what she wants.";
	say "     [link](2)[as]2[end link] - Give her an earnest apology.";
	say "     [link](3)[as]3[end link] - You're not just gonna submit to her willy nilly. Show her who's the boss.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to give her a BJ, [link]2[end link] to apologize or [link]3[end link] to squash her idea of dominating you.";
	if calcnumber is 1:
		LineBreak;
		say "     You know how the world works these days, so you introduce yourself [if player is not defaultnamed]as [name of player] [end if]and then readily crouch down in front of her, taking in the dragon-fox's manhood. It is well-sized at about ten inches in length and light pink, tapering a little along its length till it reaches a pointy tip. The base of it just outside her scaled slit holds a noticeable bulge - no doubt, this swells up to a full-sized knot when she is balls-deep inside her partner and cums. Experimentally, you stroke the smooth scales between her legs, finding them warm to the touch and flexible. Miyuki may be scaly in parts, but she is far from cold-blooded, that's for sure. Your searching fingers dip into her slit too, feeling warm skin inside that forms the root of her cock. 'Someone is eager to explore,' the fox tells you from above, smiling down at you. 'You might just find something else that is fun in there sometime - but right now, I really feel like getting sucked.'";
		say "     Her cock throbs at that exclamation and you can see a glistening drop of pre form at its tip, tempting you to lean forward and lick the tasty treat off. Miyuki gives a pleased yip as your tongue brushes over her dickhead for the first time, followed by your lips closing around it and gently suckling the hard shaft. You proceed to go down on her, steadily sliding more and more of the erection into your mouth while exploring its fleshy length with your tongue, feeling every little ridge and vein. Her tip is halfway down your throat by the time you reach the pre-knot bulge, bumping its with your lips. 'Nnnghh - you're good at this,' your foxy host tells you in a pleased tone, stroking your head while her dick throbs in your throat.";
		WaitLineBreak;
		say "     Holding your position, you let Miyuki enjoy the feeling for as long as you can, then pull back and gasp for breath before starting to go down on her once more. The slick vulpine shaft slides easily into your mouth now, allowing you to bob up and down on it in a rapid pace. As you give the dragon-fox a blowjob that you hope she won't forget anytime soon, you can't help but chuckle around the dick in your mouth. It truly is amazing what situations the nanite apocalypse creates... here you are, blowing an anthro half-dragon half-fox sorceress in her icy den, bobbing on a nonhuman cock and now closing your fingers around her knot to squeeze and jerk it too. That last thing does make Miyuki go churr in pleasure, her paw-hands having to grip your shoulders tightly as she has to hold on.";
		say "     You can feel the bulge under your fingers expand moment by moment, a clear sign that she enjoys something tightly wrapped around her knot and is getting quite close - so you go all out in your blowjob, really sucking hard on her dick and squeeze her tightly. Just a few heartbeats later, you are rewarded with a heavy throb of her cock and cum splurging forth, spurting right down your throat and into your stomach. You can feel her dick pulse against your tongue, again and again, as it deposits a full load of ice fox cum into your body. Damn, where is all of that coming from?! She doesn't even have balls! But then... who cares - certainly not you, with the nice and warm filling she's just given you, sating what hunger you might have had with her rich load.";
		WaitLineBreak;
		say "     Pulling back on the throbbing shaft when you eventually can't help but need to take a breath, you nevertheless keep its tip between your lips, catching all of her spurting cum on your tongue while breathing hard through your nose. While you concentrate on not losing out on any of her load, your gaze wanders up the slick shaft that was in your throat until a second ago, right to the thick knot under your grasping fingers. Fuck, that's a big one! If she ties that with someone, Miyuki is certainly gonna stay bound to them for a long while. You caress and squeeze the bulge of flesh while her orgasm slowly ebbs off, swallowing more than one mouthful of her tasty load before she is done.";
		say "     Eventually, you are pulled back to your feet by the surprisingly strong ice fox, with her planting a hungry kiss on your lips. Miyuki's tongue explores your mouth, wrestling with your own and stealing a taste of her own load before she pulls back to smile broadly at you. 'Now THAT was an amazing apology. I think I got a new favorite to have their lips wrapped around my dick! You're forgiven, sweetie. And feel free to visit me again in the future. There is so much fun we can have... But for now, give me a little privacy to clean up, will you?' Friendly but determined, she ushers you out of her cave, leaving you a bit bewildered and at the same time aroused about what you just experienced there.";
		move player to Forest Cave Entrance;
		PlayerEat 25;
		now MiyukiRelationship is 5; [player gave her a BJ]
	else if calcnumber is 2:
		LineBreak;
		say "     As you apologize for your intrusion, introduce yourself [if player is not defaultnamed]as [name of player] [end if]and give her a little bow just to be sure (given the name and her appearance making you think Asian folklore, you think it fits), Miyuki nods gracefully and replies, 'Well, at least you're well mannered. Not that I wouldn't have preferred a... different apology.' She strokes her fox-like shaft demonstratively and gives you a wink before going on, 'But fine - you're forgiven for your intrusion. I do have to ask you to leave now though... since you don't seem to be interested in taking care of my 'little fox' down here, I guess I'll have to do it myself.' Friendly but determined, she ushers you out of her cave, leaving you a bit bewildered at what you just experienced.";
		move player to Forest Cave Entrance;
		now MiyukiRelationship is 1; [player apologized to her]
	else:
		LineBreak;
		say "     As you scoff and ignore her request, telling her she can forget about this and stepping forward to do... you don't know what exactly, Miyuki's brows draw together and she shakes her head in disappointment. 'How rude,' she says with a slight ruffle to her muzzle and flicks her paw-hand at you. With a creak of frost forming impossibly fast, you freeze in your movements and feel yourself get incredibly stiff - and not in a good way. The burning feeling of ice touching your skin creeps up your extremities in an eye-blink, followed by a pressure on your chest that makes it hard to breathe in against the carapace of ice forming there. Then finally, you feel the creeping frost crawl up your neck and start to spread over your face, at which point you pass out from the sudden hypothermia.";
		WaitLineBreak;
		say ".";
		say "..";
		say "...";
		say "....";
		say ".....";
		say "     You awake wet and chilled to the bone, lying on the forest path that brought you to Miyuki's frosty cave. Groaning and rubbing warmth back into your stiff limbs, you glance back in the direction of the mound holding her den - lying in the middle of the snowed-in section of the forest. A single line of paw-prints leads up to where you were unceremoniously dumped. Hell, seems like she didn't even have to drag you - just picked your ice statue up and set you down here. She is one strong ice fox, that's for sure!";
		move player to Snowy Forest Trail;
		now MiyukiRelationship is 100; [she doesn't want to see the player again]

instead of going to Ice Fox's Den while (Miyuki is in Ice Fox's Den and MiyukiRelationship > 99):
	say "     A gale of frozen air blows you backwards as you try to enter the ice fox's den, chilling you to the bone. Seems like you are not welcome there.";

after going to Ice Fox's Den while (Miyuki is in Ice Fox's Den and MiyukiRelationship > 0): [she greets the player, at a minimum]
	move player to Ice Fox's Den;
	say "     The beautiful ice fox looks up as she sees you come in, greeting you with the words, 'Ah, welcome [name of player]. Always a pleasure to have you as a visitor. Come join me.'";

instead of going to Ice Fox's Den while (Miyuki is in Ice Fox's Den and MiyukiRelationship > 0 and MiyukiRelationship < 100 and lust of Miyuki is 0):
	if debugactive is 1:
		say "     DEBUG: Miyuki Blessing Event Introduction - lust of Miyuki: [lust of Miyuki] [line break]";
	move player to Ice Fox's Den;
	say "     Walking into the den of Miyuki the ice fox, you see her standing next to an anthro corgi, caressing the young woman's large, bulging belly. 'I can't wait to see our cubs. You'll be an amazing mother, Leandra,' the dragon-fox tells her noticeably smaller partner, leaning down a little to plant a kiss on her muzzle. 'Me too,' the canine replies dreamily, her tail wagging as she leans in against Miyuki and licks her muzzle in turn. 'I do worry a bit though - I mean, you told me that all of this,' the corgi says and indicates her stomach, 'is only two of them. Two eggs that you've put into me in a [italic type]very[roman type] memorable night. They're clearly not that... um, small. That means I'll have a hell of a time to push the little ones out. Can I - can we - have them here? I read it helps with the pain if you are able to hold the father's hand during the birthing, you know?'";
	say "     'Of course love,' Miyuki says in a very caring tone, caressing the corgi as she leads the young woman to the entrance and then making some introductions between yourself and the canine house-guest. After a little bit of casual discussion, Leandra says that she needs to go and get home, at which point the ice fox hands her a basket overstuffed with fish and other foodstuffs. That's one way to keep [']em fresh, you guess. Looks like the corgi and her growing offspring will be taken care of for some days with that load. Happy and quite heavily loaded with the basket, Leandra exchanges another kiss with Miyuki and leaves. After she vanishes, the ice fox sorceress waits for about a minute to make sure she is gone, then whirls around to face you, a quizzical expression on her face.";
	WaitLineBreak;
	say "     'Now what in the world did she mean about being afraid of pain and all of that?! I didn't want to frighten her so I kept quiet when Leandra mentioned it. It's good that you happened in at just the right time. Can you shed light on this for me?' the sorceress asks in a quite determined manner. Somewhat puzzled that she doesn't know about this basic fact of life, you begin laying out the details, as far as you remember them. How a woman's water breaks, contractions set in, hours upon hours of those sometimes, then finally a new life being pushed out into the world. From her shocked reaction, you have to assume that Miyuki must be white as a sheet under her fur right now, gaping at you speechlessly. 'But, but - I... I barely have any words. This is so primitive. Like animals out in the wilderness. I can't believe that anyone would be made to suffer like that. The priestesses of the All-Mother would never let it happen!'";
	say "     Bidding her to slow down, you ask what exactly Miyuki means, so she tells you of the central nature goddess of her homeland, worshiped almost universally by all species and granting blessings to expectant mothers. You wisely postpone the question of why a goddess like that isn't revered on earth to another day (not wanting to get Miyuki started on tales of religious persecution), and instead ask her about the nature of those blessings. Apparently children, eggs, and the like are supposed to be delivered painlessly, and fairly instantly, in her experience. Still shaking her head about the fact that you never heard about her goddess, Miyuki adds, 'The prayer to beseech the goddess is common knowledge. Anyone in the faithful can recite it and be heard. I guess I know what I'll be doing with Leandra next time she comes by.'";
	WaitLineBreak;
	say "     The next words that come from Miyuki's mouth are, 'Okay, where is the local sacred grove? I - oh, wait. You do not [italic type]have one[roman type].' Ending in a groan, she puts on a frown and tells you, 'The one thing I need is the juice of a Mother's Star. It's a fruit. Yay big, with five lobes. You know, symbolizing the ways that the All-Mother created for things to be born.' Raising her hand, she counts them off finger by finger: 'Spontaneous Generation, Budding, Division, Egg-Laying and Live Birth. Come on, there must be something like that here. They're green, then turn yellow when ripe.' That last detail makes you pause for a second, remembering a tropical fruit that fits the description fairly well - a carambola, otherwise known as a starfruit. You mention it to Miyuki, who gets a quite relieved expression, and says, 'I would be very thankful if you could bring me one or more of those then please. If you want, I could even bless you too.";
	say "     Something like a carambola tree can grow in the city, but that would be fairly hard to find in a random garden. [bold type]Maybe it'd be more worthwhile to check out a botanical garden, or the zoo actually.[roman type] You're fairly certain they have a lot of tropical plants of all sorts there...";
	now lust of Miyuki is 1; [Carambola quest started]
	now Carambola Tree is not resolved;

Carambola Tree is a situation. Carambola Tree is resolved.
The sarea of Carambola Tree is "Zoo".

instead of resolving a Carambola Tree:
	say "     Remembering Miyuki's request, you keep an eye out for the tropical carambola tree during your exploration of the expansive City Zoo grounds. With all of the roaming infected, blocked pathways, and whatnot, it isn't easy at all, but eventually, you do spot the characteristic yellow fruit hanging from a tree not far away. You hurry over to it and pick those that look ripe and juicy and are hanging low enough. Yet just as you want to leave with the lucky find, a large tigertaur steps into your way from behind the nearby bushes. 'What do you think you are doing? That's my tree, and my fruit!' she growls, annoyed that you've intruded in what she sees as her territory. Without any further hesitation, the tigress attacks!";
	challenge "Tigertaur";
	if fightoutcome < 20: [player won]
		say "     Having triumphed in the clash against the aggressive cat, you pack your hard-won fruit into your backpack. Now you just got to deliver them to Miyuki...";
		now lust of Miyuki is 2; [Carambola acquired]
		now Carambola Tree is resolved;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     On top of everything else that the tigertaur did to you, she also snatches up the fruit, stuffing them into a satchel carried over her shoulder. As you eventually get back to your feet and leave the tree afterwards, you refrain from picking another carambola - who knows, the tigress might be watching. Maybe you should come back another time when you're better prepared to clash with her.";
	else if fightoutcome is 30: [fled]
		say "     Legging it, you run off and shake the angry tigertaur off with some difficulty. Sadly, in the process of the wild chase, you lose all of the carambola you picked. Looks like all of this excitement was for nothing. You'll have to go back to the tree and pick some new ones if you want to help Miyuki out.";

Arctic Enclosure is a situation. Arctic Enclosure is resolved.
The sarea of Arctic Enclosure is "Zoo".

instead of resolving a Arctic Enclosure:
	if HP of Miyuki is 1:
		say "     Remembering Miyuki's request, you roam through the expansive area of the zoo and search for the arctic animal enclosure. Despite there being numerous signs all over the place with maps, it is actually fairly hard to find. Some areas are completely impassable due to being claimed by overgrown plants or dangerous ferals. Following a quite circuitous route and having to go off-trail into what feels like a tropical jungle, you eventually reach a mid-sized building standing in the shadow of the border wall. There are no lights or power anywhere here, meaning that the whole bank of heat exchange units on the side of the building is sitting still and silent. This doesn't look good for the comfort of anyone who might still be living in there.";
		say "     Stepping out from between the tropical trees, you move along the remains of the path that once led to the building, making sure that you don't stumble over any roots or debris on the ground. Noticing how far off all of the mating calls and other noises of the zoo seem right now, you wonder why this section is so deathly quiet. Then your gaze falls upon what must be the reason: The large wooden display at the entrance of the arctic enclosure is totally scratched up at one end, with large vertical lines that look like someone sharpened their claws there. The same claws most likely carved a message in the rest of the board - 'Fuck off! They're all mine!' Seems like someone or something territorial claimed this place, explaining why you haven't seen anyone else since you stumbled into the forest to get here.";
		say "     [bold type]Do you want to keep going?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, you're here on a mission after all.";
		say "     ([link]N[as]n[end link]) - Ehh, maybe some other time.";
		if player consents:
			LineBreak;
			say "[ArcticEnclosureEntry]";
		else:
			LineBreak;
			say "     Glancing at the claw-marks, you come to the decision that right now might not be the best time to challenge whatever moved in here. Quietly turning around and walking back into the jungle, you leave the Arctic Enclosure behind for now.";
			now HP of Miyuki is 2; [went to the Arctic Enclosure but postponed further exploration]
	else if HP of Miyuki is 2: [repeat visit after chickening out before]
		say "     Remembering Miyuki's request, you roam through the expansive area of the zoo and search for the arctic animal enclosure. This time you know more or less where you're going, but territories have shifted, so it still takes quite some time to reach your destination. After following a quite circuitous route and having to go off-trail into what feels like a tropical jungle, you eventually reach a mid-sized building standing in the shadow of the border wall. There are no lights or power anywhere here, meaning that the whole bank of heat exchange units on the side of the building is sitting still and silent. This doesn't look good for the comfort of anyone who might still be living in there.";
		say "     Stepping out from between the tropical trees, you move along the remains of the path that once led to the building, making sure that you don't stumble over any roots or debris on the ground. Noticing how far off all of the mating calls and other noises of the zoo seem right now, you're reminded of the reason why it's so deathly quiet: The large wooden display at the entrance of the arctic enclosure is totally scratched up at one end, with large vertical lines that look like someone sharpened their claws there. The same claws most likely carved a message in the rest of the board - 'Fuck off! They're all mine!' Seems like someone or something territorial claimed this place.";
		say "     [bold type]Do you want to keep going?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, you're here on a mission after all.";
		say "     ([link]N[as]n[end link]) - Ehh, maybe some other time.";
		if player consents:
			LineBreak;
			say "[ArcticEnclosureEntry]";
		else:
			LineBreak;
			say "     Glancing at the claw-marks, you come to the decision that right now might not be the best time to challenge whatever moved in here. Quietly turning around and walking back into the jungle, you leave the Arctic Enclosure behind for now.";

to say ArcticEnclosureEntry:
	say "     Steeling your nerves, you step forward and pull open one of the swinging doors to the building, biting your lip to avoid cursing when it creaks loudly. Thankfully, there is another door about ten feet ahead, which might just have prevented most of the noise from being heard inside the building. Looks like a kind of airlock system, meant to reduce heating costs by keeping the cold inside of the building. Sadly, with no power, this just means that the place can't even benefit from the breeze of wind that blows through the zoo from the coast, so what awaits you inside is stuffy, warm air. The hallway behind the doors has information sheets on one wall, pointing out all sorts of things about arctic animals, which is barely legible in the dim surroundings of the powerless building. Turning the other way, you see an enclosure, empty of any inhabitants. A sign declares that it is supposed to hold 'Lepus arcticus', or polar rabbits.";
	say "     Moving on to the next enclosure, you find it empty as well, with the sign 'Vulpes lagopus' telling you that arctic foxes were in there at one point. As for the third enclosure, the crunch of broken glass under your feet tells an unmistakable story. Looks like the 'Panthera uncia' (snow leopards) that were in there shattered the window from the inside out, and some scraps of cum-encrusted clothing scattered on the floor show that they took their time enjoying the guests when they did. Still, none of this is fresh, so you somehow doubt that the predator claiming the building is one of them. A door with the sign 'Staff Only' on the back wall is hanging ajar, leaving another area open for exploration.";
	WaitLineBreak;
	say "     Entering the zookeeper's part of the building, you find yourself checking over a ransacked common room, several storerooms in the same untidy state, and then following a narrow corridor that leads to the back end of the enclosures. Before you even get to the end of it, you already hear someone's rhythmic grunting as well as breathless whimpers. Cautiously looking around the corner, you see the behind the scenes parts of the zoo - a food preparation area and a large cage to separate animals from the rest if needed. In the former, you see the source of the noise; there's a large tigertaur there, hands clamped on the shoulder and neck of an arctic foxtaur as he ruts her from behind and pushes the whimpering woman down. Meanwhile, the cage is filled with about a dozen ferals, Arctic foxes and rabbits, and one anthro of each species.";
	say "     The captives seem to be former zookeepers, judging from their shredded uniforms and the fact that they clearly care for their animal friends. The female arctic fox in there is riding herd on her charges and making sure they don't pounce on the trembling group of rabbits at the other end of the cage, closest to yourself. A male anthro rabbit is standing protectively next to the animals, holding on to one of the cage bars. Looks like he and his compatriot haven't been getting much sleep and are about ready to keel over, what with the need to keep watch on their animal friends all the time. Then the rabbit suddenly becomes aware of your presence and turns his white head towards you, eyes going wide. 'Please, help us,' he whispers weakly, reaching out between the bars to plead to you.";
	say "     [bold type]Do you want to attack the tigertaur?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let's do it.";
	say "     ([link]N[as]n[end link]) - Eeh, you'd rather not.";
	if player consents:
		LineBreak;
		say "     As you slowly sneak forward to get into a good position to attack, the rabbit zookeeper waves his hands to cheer you on - or maybe rather tell you something, as you're not even halfway to the rutting tigertaur before you suddenly hear a predatory chuckle from behind you that makes your blood go cold. 'What have we here? A new toy to play with,' the [italic type]other[roman type] tigertaur living in this building growls out, baring her sharp fangs in a toothy smile. Whirling around, you see that the herm has the white fur color of an arctic fox to go with an otherwise totally tigertaur body. Seems like she's the offspring of the dominant male rutting in this room. And that is about all the chance you get to check her out before the tigress attacks you with an eager growl.";
	else:
		LineBreak;
		say "     You hesitate, glancing at the powerful beast rutting its captive, then slowly move backwards into the corridor that brought you here. The rabbit zookeeper gives you an alarmed look and waves his hand as if to tell you something, but he vanishes from sight as you creep out of the room. Suddenly, a predatory chuckle from behind you makes your blood go cold. 'What have we here? A new toy to play with,' the [italic type]other[roman type] tigertaur living in this building growls out, baring her sharp fangs in a toothy smile. Whirling around, you see that the herm has the white fur color of an arctic fox to go with an otherwise totally tigertaur body. Seems like she's the offspring of the dominant male rutting in the other room. And that is about all the chance you get to check her out before the tigress attacks you with an eager growl.";
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times (for example) or until the player loses or flees]
		now inasituation is true; [disables normal scenes]
		if GroupFightCounter is 1:
			say "     As the first tigertaur goes down, the other one glances towards you from his position on top of the foxtaur and gives a hostile growl while humping his hips a few times more. He stays in position like that for a short moment, then grumbles, 'I hate being interrupted when breeding a bitch. You'll pay for that!' He shoves his unwilling partner down to the ground, pulling a still throbbing cock out of her pussy and shooting streaks of cum over her black and white striped fur. He then turns your way and attacks with a snarl.";
		challenge "Tigertaur";
		increase GroupFightCounter by 1;
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     Knocking out both of the tigertaurs, you find yourself cheered on by the two transformed zookeepers, and also the arctic foxtaur after she has had a chance to recover at least a little bit from the rough fuck. 'Where did you come from all of a sudden?' she asks in a relieved tone, immediately adding, 'No matter, we're so glad that you came along and gave this fucker what he deserved.' Going to grab some paper towels, she wipes his cum off her fur and pussy, then throws the crumpled wipes at him before following up with a kick between his legs. Looking at the white tigertaur, she sighs, 'I can't believe this bitch is my daughter. She's exactly like him! No chance to convince her otherwise, believe me I've tried.' Grimacing sadly at the unconscious tigertaur, the foxtaur then steps over her to retrieve the key for the cage and frees her compatriots.";
		say "     After some quick introductions of Aubrey (the foxtaur), Russel (the anthro rabbit zookeeper) and Barbara (the arctic fox zookeeper), the four of you huddle together to talk. 'We need to get out of here before they come to again, but where can we go? Last we saw, the whole city was affected, and hiding out in this building was less than a good idea,' Russel says in a whispered conversation while glancing over to the knocked out tigers, at which point you are happy to mention that you were actually sent here specifically to find people like them with a need for a place to stay. The three of them look at you with surprised expressions, then at each other to exchange meaningful looks. 'Well, whoever this Miyuki person is, she can't be worse than our current host, can she?' Aubrey, and her anthro friends agree. 'We accept, as long as we can bring the animals too. They need our protection to get through all of this.'";
		WaitLineBreak;
		say "     Getting the whole group of them to Miyuki's cave is a truly arduous task, especially since the rabbits are prone to flee in all directions when startled. Only Russell can get them to move in the same direction again, while his college Barbara has a hell of a time keeping the arctic foxes from trying to eat any rabbits. Meanwhile, Aubrey keeps an overwatch position together with you, allowing your group to bypass many dangerous situations. At the end of the ordeal, you're thoroughly exhausted, but manage to deliver your rescueees safely to the snowy forest. As they herd their animal charges down the tunnel into the ice fox's quarters, your three companions are in awe at the winter wonderland you brought them to, and are visibly relieved to find themselves in cooler temperatures.";
		say "     Miyuki is overjoyed at having guests and happily guides them into an adjoining cave that she created just for them, then returns to talk to you with a large smile on her lips. 'You're amazing, you know that. I never guessed that you'd have to go through so much effort to get them here. Such a depraved dimension,' she says, shaking her head in disbelief. A smirk appears on her muzzle as the ice fox sorceress adds, 'Hmm, such bravery on your part calls for a proper reward. Yes, definitively! You know what, I'll give you the honor of being my new lifemate here! Oh, what fun we'll have together!'";
		say "     [bold type]What do you reply?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Thank her for the honor.";
		say "     ([link]N[as]n[end link]) - Err... no thanks?";
		if player consents:
			LineBreak;
			say "     Smiling as you accept, you reach out for Miyuki's hand-paw and gently guide it to your lips to kiss it. This clearly pleases the sorceress, as she sways her many tails left and right and gives your ass a grope with one hand. 'I look forward to enjoying some time with you, my love.'";
			now HP of Miyuki is 3; [player is her mate]
		else:
			LineBreak;
			say "     'What do you mean, you don't want to be my mate?!' Miyuki calls out in a huff. Crossing her arms, she grumbles and gives you a sour look, then makes a throwing-away gesture. 'Pah! Otherworldly barbarian. You don't know what you're missing.' And with that, she turns away from you, literally giving you a cold shoulder as temperatures seem to suddenly plummet around you.";
			now HP of Miyuki is 99; [mateship refused]
		change the northwest exit of Ice Fox's Den to Snow Rabbit's Warren;
		change the southeast exit of Snow Rabbit's Warren to Ice Fox's Den;
		change the southeast exit of Ice Fox's Den to Snow Fox Enclosure;
		change the northwest exit of Snow Fox Enclosure to Ice Fox's Den;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Brought down by the father-daughter team of tigertaurs, you collapse on the ground from sheer exhaustion and are quickly dragged into the middle of the room. Locking away the freshly bred foxtaur, the two tigertaurs focus on you instead, taking you from both ends, with the male humping you while his offspring fucks your face. You're shared between those two for hours, with them changing positions again and again, until each orifice you have has been filled by both their cum multiple times. At the end of this ordeal, you're added to the cage of their sex toy captives, to be used and bred at the tigertaur's leisure.";
		now bodyname of player is "Tigertaur Sex Toy";
		end the story saying "You certainly won't be getting out from that situation!";
	else if fightoutcome is 30: [fled]
		say "     Managing to flee from the building, you shake the angry tigertaurs off with some difficulty. Sadly this means that they're now forewarned about you wanting to move in on their territory. They'll surely be ready for you next time, and might very well set traps. Somehow you don't think going back would be such a good idea, so you resolve not to. [bold type]You've failed this task for Miyuki.[roman type]";
		now Arctic Enclosure is resolved;
		now HP of Miyuki is 100; [failed]

instead of going to Ice Fox's Den while (Miyuki is in Ice Fox's Den and MiyukiRelationship < 100 and lust of Miyuki is 2):
	if debugactive is 1:
		say "     DEBUG: Miyuki Fruit Delivery - lust of Miyuki: [lust of Miyuki] [line break]";
	move player to Ice Fox's Den;
	say "     Arriving in the ice fox sorceress's den, you greet Miyuki and carefully pull the star-shaped fruit you acquired for her out of your backpack. The dragon-fox smiles as she accepts them one by one, concentrating a little bit until a thin sheen of ice covers each of them before she sets them aside into a bowl in a nearby wall shelf. 'There, that should keep them fresh until it is time to use them,' Miyuki says with a happy expression, then walks back to you on her slender paws and gives you a kiss on the cheek. 'Thank you, my brave friend. This will help greatly, not only Leandra, but also several other new friends I have made since coming to this world.' Glancing down, you can see her scaled genital slit open a little, the tip of her cock poking out as Miyuki thinks of her sexual partners. 'And of course, if you want to receive the All-Mother's blessing yourself, just come to me, and I will perform the rite.'";
	now lust of Miyuki is 3; [blessing ready]

Section 6 - NPC

Miyuki is a woman. Miyuki is in Ice Fox's Den.
The description of Miyuki is "[MiyukiDesc]".
The conversation of Miyuki is { "placeholder" }.

instead of sniffing Miyuki:
	say "     Miyuki has an interesting scent - crisp and fresh, reminding you of fallen snow. There are some undertones of a pleasant furry smell, as well as a faint hint at... peppermint?";

to say MiyukiDesc:
	say "     Miyuki is a truly beautiful anthro fox, with a fairly slim build that incorporates just the right amount of feminine curves. She doesn't seem to like wearing clothes, so you have a full view of the snow-white coat of fur covering most of her body, perfectly accompanied by a head of long and flowing hair that shows a silver shimmer on top of that. The fur darkens to charcoal gray and black towards the ends of her limbs, creating the impression of long 'gloves' and 'socks' - intermixed with some gray-ish scales on the backs of her forearms and along her shins. There are further scales down her front, forming a trail from her neck, between a pair of generous breasts and all the way down to her inner thighs. A fan of nine long fox tails completes the image of an exceptional being, especially since she waves their charcoal gray tips towards you playfully...";

instead of conversing the Miyuki:
	LineBreak;
	say "What do you want to talk with Miyuki about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Miyuki's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The City";
	now sortorder entry is 2;
	now description entry is "Talk to her about what's going on";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Becoming an ice fox";
	now sortorder entry is 3;
	now description entry is "Talk to her about maybe becoming like her";
	[]
	if lust of Miyuki is 3:
		choose a blank row in table of fucking options;
		now title entry is "Be blessed by her";
		now sortorder entry is 4;
		now description entry is "Request that Miyuki perform a prayer to the All-Mother";
	[]
	if lust of Miyuki > 2 and HP of Miyuki < 3:
		choose a blank row in table of fucking options;
		now title entry is "Offer to help her with other things";
		now sortorder entry is 5;
		now description entry is "The on the sorceress's good side by giving her some assistance";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is:
					-- "Herself":
						say "[MiyukiTalk1]";
					-- "The City":
						say "[MiyukiTalk2]";
					-- "Becoming an ice fox":
						say "[MiyukiTalk3]";
					-- "Be blessed by her":
						say "[MiyukiTalk4]";
					-- "Offer to help her with other things":
						say "[MiyukiTalk5]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the ice fox, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MiyukiTalk1: [talk about her]
	say "     As you ask Miyuki about herself, a sly smile crosses the ice fox's muzzle. 'Curious, aren't you? But a woman needs to have some secrets, you know. Let's just say I came here from... a different place. One that isn't so drearily warm all the time. Everything around these parts is in flux right now, and things are bound to stay quite interesting for a long time... so I decided to stay. It wasn't hard to set up a nice little den afterwards.' With a sweep of her arm, she indicates her warm nest, as well as the few pieces of frost-rimmed furniture in the icy cave. Then she glances up at the rotating snow-star, sending another stream of energy its way to ramp up the little snowstorm once more.";

to say MiyukiTalk2: [talk about the city]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     Miyuki nods sagely as you bring up the city, then says, 'You've got quite a few interested parties on the premises right now. Plenty of demons roaming this place or that, and I've seen a few of their winged opponents soar in the sky. And don't even ask me to how many deities realms that 'museum' place connects. Whoever thought it was a good idea to stack sacred items to the roof in one place?' She chuckles a little as if the mere thought was ridiculous.";
		-- 2:
			say "     Miyuki smiles a little as you bring up the city, one of her hands moving to idly stroke around the rim of one of her nipples. 'You know, it is refreshing to get to a place that isn't quite as... stuck up about its morals. Why, I was here barely five minutes before a bit of a loudmouth dog demanded that I spread myself for him. Typical for your customs, eh? So very direct...' She grins at your expression, and before you can decide if you want to tell her about what actually is going on, the ice fox goes on to say, 'Of course, I was direct too and showed the insistent puppy what a surprise I've got for guys like him. They usually hit quite a different tone once their tail is raised and ass fucked. I wonder if the eggs took and I got some kits with the guy. They'd be good for him - motherhood changes even the most hard-boiled man.";
		-- 3:
			say "     Miyuki grins as you bring up the city and says, 'It is really nice how... malleable this place is.' Raising one hand, she points at the large snow-star rotating under the ceiling, which increases its brightness and speed as she sends a little streamer of energy up to it. The cloud of whirling snowflakes around it multiplies several times over and a gust of wind carries them out of the cave to swirl up the winding tunnel to the surface. 'Everything here is just humming with power. Almost seems like no one used magic for centuries - but that can't be right, can it?'";

to say MiyukiTalk3: [talk about becoming an ice fox]
	if lastSnowStarGiven - turns > 8: [didn't give the player one in the last day]
		say "     You step up to Miyuki and compliment her about herself, the fox's beautiful body and her snow-white fur. She seems to eat up the praise, becoming quite pleased and smiling at you, until she eventually asks in a chuckle, 'So - what is it that you want from me? I recognize shameless flattery building up to a request.' Oops - busted! You start to apologize, but she just waves you off and says, 'You can tell me sweet nothings all day every day, sweetie. But aside from that - really, just tell me what you want.' You explain that you absolutely love her looks and would be thrilled to be just like her.";
		say "     'Hmhm,' the ice fox says in a thoughtful tone, then replies, 'What you're asking is not quite as easy as your people's normal transformations, but... I like you, so let's give it a try.' With a flourish, she stretches out her charcoal-gray paw-hand between you, palm up, and waits for one of the snow-flakes dancing in the air to land on it. With a smile, the sorceress then starts to very gently blow over it, and before your very eyes the tiny speck of ice grows and grows into a thin disc. No, a star actually - a snow star! 'Here, my gift to you!' Miyuki says with a chuckle, handing you the little star for you to keep.";
		increase carried of snow star by 1;
		now lastSnowStarGiven is turns;
	else: [gave the player one already that day]
		say "     As you start asking for another snow star, Miyuki shakes her head in a slow gesture of negation. 'I'm sorry, I gave you one today already. That little star was a piece of my personal magic, you know. As much as I wish it was, that is not limitless. So... maybe tomorrow, okay?'";

to say MiyukiTalk4: [be blessed]
	say "     As you make your request, Miyuki answers, 'Of course[if player is not defaultnamed] [name of player][end if]. It's the least I can do for your help. Come lay down, and please bare your stomach.' The ice fox sorceress leads you to her comfortable nest so that you can get comfortable, then retrieves one of the carambola fruit preserved in ice. Kneeling down next to you, she holds up one hand and concentrates until a bowl of clear ice forms in it. She then slowly squeezes the yellow fruit in her surprisingly strong hand, cracking its ice shell and pressing quite a bit of juice out to drip into the bowl. Miyuki dips two fingers into the juice and starts to paint on your belly, going back several times as she draws a five-pointed star on your skin. As she finishes it, the sorceress intones, 'Hear me, All-Mother! I beseech you to bless this being of your creation. Guide [ObjectPro of player] through bringing a new generation into this world, so that life may flourish.'";
	say "     When Miyuki falls silent after the last words are spoken, you feel a pleasant warmth radiating out from the star painted on your belly, suffusing all of your form and making you feel very well and rested, more so than at any point since this whole mess started.";
	LineBreak;
	say "[bold type]Your stamina has increased by 2![roman type][line break]";
	increase stamina of player by 2;
	LineBreak;
	say "[bold type]'All-Mother's Blessing' has been added to your feats![roman type][line break]";
	add "All-Mother's Blessing" to feats of player;
	now lust of Miyuki is 4; [player blessed]

to say MiyukiTalk5: [helper quest]
	if HP of Miyuki is 0: [not started yet]
		say "     Stepping up to Miyuki and asking if she needs any other help, you earn a beaming smile from the ice fox. 'That's so nice of you to ask. I'm liking this dimension more and more. Come for the unclaimed magic, stay for the friendly locals, ha!' A thoughtful expression spreads over her face, and the sorceress lets her gaze sweep over the glistening walls of her ice cave. Then she taps the side of her muzzle and nods to you. 'There is one thing that I could use the help of a local on. As you well know, I've been working hard to make this place a bit more like home - not so terribly warm and sunny. I really don't know how you folks could live here like this before. A few of my guests told of mystic devices called [']aircon['], but from what I understood those stopped working when the [']lectricity['] or something failed. Since this will make living out there more difficult, I would like to extend invitations to those poor folks who are suffering. So please, go out and spread the word, will you?'";
		say "     Thinking about what Miyuki just said, you vaguely remember that the city zoo had an enclosure with arctic animals. Those seem to be the most likely candidates for whom her invitation might apply. As you tell the ice sorceress, she smiles broadly and strokes your cheek. 'I knew having a helpful local would be useful. Especially one as [if player is MProN]handsome[else]pretty[end if] as yourself.' With a wink, she shoos you to get going, then focuses her attention on the giant snow-star under the ceiling. 'Time to make a bit more room,' she murmurs under her breath, then concentrates deeply. The star grow noticeably thicker before separating into two copies of itself. One of the glistening structures floats through the room to settle against a wall and begins to cut its way into it. The razor-sharp edges shave away rock, starting to excavate an opening.";
		LineBreak;
		say "     Time for you to go search for Miyuki's intended guests. Looks like you should be off to find the [bold type]Arctic Enclosure[roman type] in the City Zoo.";
		now Arctic Enclosure is not resolved;
		now HP of Miyuki is 1; [ice fox quest started]
	else if HP of Miyuki < 3: [quest started, nothing done yet]
		say "     Miyuki smiles as you offer your help again and asks, 'Have you found any of those poor folk suffering from heatstroke yet? I'm sure they'd want to come here too and keep me company. You did mention a place called the [']zoo['] before. Maybe start there?'";
		LineBreak;
		say "     Time for you to go search for Miyuki's intended guests. Looks like you should be off to find the [bold type]Arctic Enclosure[roman type] in the City Zoo.";

instead of fucking the Miyuki:
	if lastfuck of Miyuki - turns < 4:
		say "     As you step up to Miyuki and give her lewd looks, she smiles but then raises a hand, laying it against your chest to hold you back. 'As much as I'd love to have more fun with you... a woman does need a bit of time to catch her breath. Later, okay sweetie?'";
	else:
		if MiyukiRelationship < 5:
			say "     As you step up to Miyuki and give her lewd looks, a foxy smile crosses her muzzle and she takes your hand to pull it to her chest. 'I knew you couldn't resist this for long,' she says in a very eager tone, guiding your hand to brush over her the soft fur and warm, flexible scales of her upper body. Soon, your hand comes to rest on one of her shapely breasts, cupping its full curve and giving it a playful squeeze.";
		else:
			say "     As you step up to Miyuki and give her lewd looks, a foxy smile crosses her muzzle and she takes your hand to pull it to her chest. Guided by the ice fox, your fingers brush over the soft fur and warm, flexible scales on her upper body, then come to rest cupping one of her shapely breasts.";
		say "[MiyukiSexMenu]";

to say MiyukiSexMenu:
	LineBreak;
	say "What do you want to do with Miyuki?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give her a BJ";
	now sortorder entry is 1;
	now description entry is "Wrap your lips around that dragon-fox cock";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take her canine shaft in your pussy";
		now sortorder entry is 2;
		now description entry is "Let Miyuki hump you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give yourself to Miyuki (ovipositor doggy style)";
	now sortorder entry is 3;
	now description entry is "Let Miyuki egg you";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is:
					-- "Give her a BJ":
						say "[MiyukiSex1]";
					-- "Take her canine shaft in your pussy":
						say "[MiyukiSex2]";
					-- "Give yourself to Miyuki (ovipositor doggy style)":
						say "[MiyukiSex3]";
					-- otherwise: say "Sex menu failed!";
				wait for any key;
				now lastfuck of Miyuki is turns;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the ice fox sorceress, shrugging your shoulders as she gives you a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MiyukiSex1: [BJ for Miyuki]
	say "     Sliding your fingers down over the band of scales on Miyuki's belly, you rub the narrow slit between the flexible little plates down at her crotch. Then you plant a kiss on the white fox's muzzle and tell her that you want to see - and taste - her cock. With a broad smile, she gives you an affectionate lick in return and nods, prompting you to slip a finger between the ridges of her slit, feeling the warm flesh inside as it starts to push out in a growing erection. A pointy dickhead slides right into your waiting palm, with the shaft to go with it hardening even quicker than that as you start to fondle and stroke her sex. Soon, Miyuki is fully erect and waiting for you to make the next move.";
	say "     You eagerly crouch down in front of her, taking in the dragon-fox's manhood. It is well-sized at about ten inches in length and light pink, tapering a little along its length till it reaches a pointy tip. The base of it just outside her scaled slit holds a noticeable bulge - no doubt, this swells up to a full-sized knot when she is balls-deep inside her partner and cums. Experimentally, you stroke the smooth scales between her legs, finding them warm to the touch and flexible. Miyuki may be scaly in parts, but she is far from cold-blooded, that's for sure. Your searching fingers dip into her slit too, feeling warm skin inside that forms the root of her cock. 'Someone is eager to explore,' the fox tells you from above, smiling down at you. 'You might just find something else that is fun in there sometime - but right now, a cock is what you asked for, so this is what you get.'";
	WaitLineBreak;
	say "     Her shaft throbs at the snow-white fox's last exclamation and you can see a glistening drop of pre form at its tip, tempting you to lean forward and lick the tasty treat off. Miyuki gives a pleased yip as your tongue brushes over her dickhead for the first time, followed by your lips closing around it and gently suckling the hard shaft. You proceed to go down on her, steadily sliding more and more of the erection into your mouth while exploring its fleshy length with your tongue, feeling every little ridge and vein. Her tip is halfway down your throat by the time you reach the pre-knot bulge, bumping its with your lips. 'Nnnghh - you're good at this,' your foxy host tells you in a pleased tone, stroking your head while her dick throbs in your throat.";
	say "     Holding your position, you let Miyuki enjoy the feeling for as long as you can, then pull back and gasp for breath before starting to go down on her once more. The slick vulpine shaft slides easily into your mouth now, allowing you to bob up and down on it in a rapid pace. As you give the dragon-fox a blowjob that you hope she won't forget anytime soon, you can't help but chuckle around the dick in your mouth. It truly is amazing what situations the nanite apocalypse creates... here you are, blowing an anthro half-dragon half-fox sorceress in her icy den, bobbing on a nonhuman cock and now closing your fingers around her knot to squeeze and jerk it too. That last thing does make Miyuki go churr in pleasure, her paw-hands having to grip your shoulders tightly as she has to hold on.";
	WaitLineBreak;
	say "     You can feel the bulge under your fingers expand moment by moment, a clear sign that she enjoys something tightly wrapped around her knot and is getting quite close - so you go all out in your blowjob, really sucking hard on her dick and squeeze her tightly. Just a few heartbeats later, you are rewarded with a heavy throb of her cock and cum splurging forth, spurting right down your throat and into your stomach. You can feel her dick pulse against your tongue, again and again, as it deposits a full load of ice fox cum into your body. Damn, where is all of that coming from?! She doesn't even have balls! But then... who cares - certainly not you, with the nice and warm filling she's just given you, sating what hunger you might have had with her rich load.";
	say "     Pulling back on the throbbing shaft when you eventually can't help but need to take a breath, you nevertheless keep its tip between your lips, catching all of her spurting cum on your tongue while breathing hard through your nose. While you concentrate on not losing out on any of her load, your gaze wanders up the slick shaft that was in your throat until a second ago, right to the thick knot under your grasping fingers. Fuck, that's a big one! If she ties that with someone, Miyuki is certainly gonna stay bound to them for a long while. You caress and squeeze the bulge of flesh while her orgasm slowly ebbs off, swallowing more than one mouthful of her tasty load before she is done.";
	WaitLineBreak;
	say "     Eventually, you are pulled back to your feet by the surprisingly strong ice fox, with her planting a hungry kiss on your lips. Miyuki's tongue explores your mouth, wrestling with your own and stealing a taste of her own load before she pulls back to smile broadly at you. 'Now THAT was fun! You're one great cocksucker sweetie.'";
	PlayerEat 10;
	if MiyukiRelationship < 5:
		now MiyukiRelationship is 5; [player gave a BJ]

to say MiyukiSex2: [Miyuki fucks player pussy]
	setmonster "Ice Fox";
	choose row monster from the table of random critters;
	say "     Sliding your fingers down over the band of scales on Miyuki's belly, you rub the narrow slit between the flexible little plates down at her crotch. Then you plant a kiss on the white fox's muzzle and tell her that you want to see - and feel - her cock. With a broad smile, she gives you an affectionate lick in return and nods, prompting you to slip a finger between the ridges of her slit, feeling the warm flesh inside as it starts to push out in a growing erection. A pointy dickhead slides right into your waiting palm, with the shaft to go with it hardening even quicker than that as you start to fondle and stroke her sex. Soon, Miyuki is fully erect - including the pre-knot bulge at the base of her shaft, just outside her slit.";
	say "     'Now what a certain someone has woken my little fox, I wonder that I should do with it...' the ice sorceress adds playfully in almost a purr. Seeing the deep need to be fucked in your gaze, she gives an amused yip and licks her muzzle in anticipation. 'About time I sank myself into a sweet pussy again,' she says with a chuckle, then strokes your cheek and beckons to follow you with one of her nine tails as she walks over towards her warm nest. Arriving at the large ring of blankets and pillows just a step behind the fox, you are helped out of your clothes by her eager hands, then climb into the her soft camp, lying back in its very comfortable expanse.";
	WaitLineBreak;
	say "     Miyuki joins you immediately, getting on all fours and bending her head down between your legs, sticking her pointy muzzle right between your thighs. You can feel the soft brush of her nose against your skin as she takes in your scent, followed by a pleased sound from your foxy lover. 'Let's see if you taste as good as you smell,' she says eagerly and stretches her neck a little more, sticking out her tongue to lap your sex. The stroke of her warm, wet tongue over your nether lips and clit sends pleasant shivers up your spine, making you tremble in lust and bury your fingers in the softness of the bedding. 'Mmhmm...' Miyuki hums in satisfaction as she slips her tongue in between your folds, wiggling it around playfully.";
	say "     For you don't know how long, you just give yourself to her oral service, closing your eyes to concentrate on nothing but the brush of that eager tongue, passing over your sensitive parts again and again. Then eventually, something else - something new - nudges your nethers. It is a little hotter than Miyuki's tongue, and... firmer, it seems. Opening your eyes once more, you see your white-furred partner's face just above your head, the pointy muzzle drawn into a broad smile. She has crawled on top of you, holding herself up on her slender arms and is rubbing her cock against your sex. 'Ready for the time of your life, sweetie?' she asks in impish amusement and wiggles her eyebrows at you.";
	WaitLineBreak;
	say "     Your happy nod is the last thing Miyuki was waiting for, moving her hips to sink herself into you right away. Your wet and already aroused nethers part easily around the pointy tip, allowing her to slide the gray shaft deep into the waiting cave and filling you out very well. Finally nudging your opening with the bulge of her pre-knot, she rests for a moment and simply looks into your eyes, purring out the words, 'You feel amazing baby.' Then she bends her muzzle down to make out with you, sharing kiss after kiss before she eventually starts to rock her hips up and down, fucking you in a slow but steady rhythm. You can't help but moan out loud at having her eleven-inch cock sawing in and out of your body, especially when she gives the little extra push to pop her bulge into you, then out again. Seems like she really enjoys something tight wrapped around that part of her cock!";
	say "     Miyuki's slow, gentle start at having sex with you builds quickly to a quite vigorous pounding, as the ice fox humps your eager pussy with seemingly boundless stamina, really pushing all of your buttons as she does so. She doesn't have balls to slap against your crotch, but the bulge at the base of her cock almost serves the same way - as she thrusts up till the little thud of it against your nethers, then follows up by another sharp hump to pop it inside. Quite a sensation to take that thing into your body, making you thankful for her prolonged oral service that relaxed and stretched your hole. Especially now that Miyuki seems to be getting closer and closer to an orgasm and her knot starts to swell up noticeably with every further thrust.";
	WaitLineBreak;
	say "     Then suddenly, Miyuki hammers her hips forward forcefully, making you wince a little at the girth of her knot pushing past your nether lips. You can feel why she did it right away, as a hard throb goes through her shaft a second later, making the knot swell even further - past any hope to pass in or out of you and tying you securely to your foxy lover's body. She lets out a satisfied moan - almost a growl - and grinds against you hard, and a heartbeat later, the first heavy spurt of cum paints your insides white. Throb after throb, Miyuki unloads her load of cum deep into your body, soaking you with her seed and making it cascade into your womb as the opening of it can't resist the raising pressure of more and more cum having nowhere else to go.";
	say "     For a little while, Miyuki is totally occupied with her own orgasm, unable to concentrate on anything but the height of male arousal at the time of climax, but she quickly catches herself again. Her canine shaft is still spurting more into you, but the fox now is focusing on your pleasure too, sliding her hand down to [if player is male]jerk your own cock[else]rub your clit[end if] with eager attention, pushing your already sky-high arousal even further. It doesn't take long at all before she manages to push you over the edge to join her in bliss, [if player is male]your shaft spurting long strings of cum to make a mess of your whole front[else]your pussy leaking copious amounts of femcum, soaking your pressed-together crotches.";
	WaitLineBreak;
	say "     Lying under your sexy fox partner, you shiver and pant as you ride out your orgasm, thoroughly enjoying the feelings she gives you - of a very full pussy, with the large knotted cock inside, and an even fuller womb, simply sloshing with Miyuki's potent load. 'I hope it takes,' she tells you, putting her paw-hand on your belly, 'You'd surely give me some very cute little fox kits. Mmmm, I love breeding people. It is so sexy to know someone is carrying your kits!' With that said, the ice fox gets back to playfully making out with you, stroking and caressing your body while she waits for her knot to go down. The cuddling with your soft-furred partner goes on another quite comfortable forty minutes or so before that eventually happens, more than enough time for your womb to thoroughly soak in the load that has been put inside it...";
	fimpregchance;
	if MiyukiRelationship < 10:
		now MiyukiRelationship is 10; [player got fucked]

to say MiyukiSex3: [Miyuki fucks player pussy - doggy style and ovi]
	setmonster "Ice Fox";
	choose row monster from the table of random critters;
	say "     Sliding your fingers down over the band of scales on Miyuki's belly, you rub the narrow slit between the flexible little plates down at her crotch. Then you plant a kiss on the white fox's muzzle and tell her that you want her to take you as she pleases. With a broad smile, the sorceress gives you an affectionate lick in return and says, 'Stroke me.' Eager to follow her order, you to slip a finger between the ridges of her slit, feeling the warm flesh inside as it starts to push out. A blunt-headed tube of flesh slides right into your waiting palm, with the shaft to go with it hardening rapidly start to fondle and stroke her appendage. It looks fairly interesting - with a relatively rigid shaft, but a flexible opening instead of a dickhead at the end. Your curiosity pushes you to experiment a little with it and as you push the tip of your index finger into the fleshy tube, you realize that it is hollow and quite stretchy.";
	say "     'Do you like playing with my ovipositor? Wait till you feel it inside you! Mmmm, I can't wait to lay some eggs in that sexy [if player is female]pussy[else]ass[end if] of yours!' the ice sorceress adds playfully in almost a purr. Seeing the deep need to be fucked in your gaze, she gives an amused yip and licks her muzzle in anticipation. 'About time I sank myself into a sweet [if player is female]pussy[else]ass[end if] again,' she says with a chuckle, then strokes your cheek and beckons to follow you with one of her nine tails as she walks over towards her warm nest. Arriving at the large ring of blankets and pillows just a step behind the fox, you are helped out of your clothes by her eager hands, then climb into the her soft camp, getting onto all fours in its very comfortable expanse.";
	WaitLineBreak;
	say "     Miyuki joins you immediately, kneeling behind you and placing her paw-hands on the raised buttocks of your behind. She squeezes and gropes your ass playfully, then [if player is female]moves on further down, brushing over your nether lips with a finger[else]brushes a finger up and down your crack[end if], dipping in just the tip to wiggle it inside you a little. 'Oh yeah, I'll enjoy egging you,' the white fox says in an eager tone, then leans forward to stick her muzzle between your thighs. Breathing in deeply, she takes in your scent and lets out a satisfied sound, followed by the words, 'Let's see if you taste as good as you smell.' And with that, she sticks out her tongue to lap over your [if player is female]sex[else]pucker[end if]. The stroke of her warm, wet tongue over your nether lips and clit sends pleasant shivers up your spine, making you tremble in lust and bury your fingers in the softness of the bedding. 'Mmhmm...' Miyuki hums in satisfaction as she slips her tongue into your hole after a little bit of teasing, wiggling it around playfully.";
	say "     For you don't know how long, you just give yourself to her oral service, closing your eyes to concentrate on nothing but the brush of that eager tongue, passing over your sensitive parts again and again. Then eventually, something else - something new - nudges your [if player is female]nethers[else] pucker. It is a little hotter than Miyuki's tongue, and... firmer, it seems. Opening your eyes once more and glancing over your shoulder, you see your white-furred partner beaming down at you from where she is kneeling right behind you. She raises what is in her hand - the long fleshy tube of her ovipositor, slick and prepared to plunge into your depths. 'Ready for the time of your life, sweetie?' she asks in impish amusement and wiggles her eyebrows at you.";
	WaitLineBreak;
	say "     Your happy nod is the last thing Miyuki was waiting for, moving her hips to sink herself into you right away. Your wet [if player is female]and already aroused nethers part[else]and relaxed pucker stretches[end if] easily around the pointy tip, allowing her to slide the gray shaft deep into the waiting cave and filling you out very well. Miyuki keeps going until you can feel the slight ridges of her scaly crotch against your buttocks, having buried herself all the way inside you. 'You feel amazing baby,' she purrs, then bends her muzzle down to make out with you, sharing kiss after kiss before she eventually starts to rock her hips back and forth, fucking you in a slow but steady rhythm. You can't help but moan out loud at having her fourteen-inch ovipositor sawing in and out of your body, especially when she changes the angle of thrust every so often, rubbing spots that you never knew you had. Seems like she wants to make this as good as possible for both of you.";
	say "     Miyuki's slow, gentle start at having sex with you builds quickly to a quite vigorous pounding, as the ice fox humps your [if player is female]eager pussy[else]raised ass[end if] with seemingly boundless stamina, really pushing all of your buttons as she does so. Her scaly crotch hits your buttocks again and again, creating slapping noises that echo throughout the underground home around you. Quite a sensation to take that long ovipositor of hers into your body, making you thankful for her prolonged oral service that relaxed and stretched your hole. Especially now that Miyuki seems to be getting closer and closer to an orgasm and you can feel something large and bulgy at the base of her appendage.";
	WaitLineBreak;
	say "     Then suddenly, Miyuki hammers her hips forward forcefully, making you groan at the depth of her sudden penetration - but then, another sensation starts to occupy your senses - pressure against your stretched [if player is female]pussy[else]asshole[end if]. In what seems like an unstoppable expansion, her shaft grows in diameter, stretched out by an oval shape pushed along inside it. An egg! Miyuki breathes hard and you can hear her strain a bit as she pushes again and again with inner muscles, making the bulge wander down her ovipositor until it is a little more than halfway past your stretched opening. At that point your strained muscles pull tight around her hollow appendage, squeezing the egg along to almost squirt into your depths. 'Fuck yeah, it feels great to egg you. I've been missing this feeling,' Miyuki groans in lust, leaning forward to kiss the side of your neck.";
	say "     The ice fox's ovipositor keeps up its rhythmic contractions, working the egg ever further into your body until it eventually starts to peek out of the tube at the end. 'Time to give this little thing another good push,' your sexy partner says with a smile on her muzzle, then pulls back a little bit before giving you another hard and deep thrust. ";
	if player is female:
		if cunt length of player > 13: [longer than her cock]
			say "As Miyuki reaches her deepest penetration yet, her ovipositor pushes out the slick egg in almost a squirt, sending it sliding deeper into your large pussy. ";
		else: [shorter than her cock]
			say "Forcing its way past the opening of your womb, Miyuki's ovipositor pushes out the slick egg in almost a squirt, sending it to lodge securely in your innermost self. ";
	else: [ass-fuck]
		say "As Miyuki reaches her deepest penetration yet, her ovipositor pushes out the slick egg in almost a squirt, sending it sliding ever deeper into the twisting tunnel of your asshole. You don't think you've ever had anything that far up there before. ";
	say "'Damn - putting an egg in such a nice and tight hole feels great. Too bad I can't tie with you like this though... I like having my knot stuck in someone too. Oh well, maybe next time...' Miyuki says in a well-satisfied tone, then wraps her arms around you from behind, seeking out your crotch. Wound up as getting eaten, fucked and egged has made you, it doesn't take her long in stroking your [if player is female]clit[else if player is male]cock[else]crotch[end if] till you reach your own orgasm, trembling hard in her grasp as a breathtaking climax rocks your body.";
	WaitLineBreak;
	say "     'That - was very, very good,' Miyuki tells you in a pleased tone, licking behind your ear playfully. Then she slowly pulls her ovipositor out of you, allowing it to retract fully into her scaled slit. The snow-white fox follows up by laying down next to you, her arms holding and caressing your body and especially your slightly swollen belly. Exhausted from the sex, you stay cuddled up with her for quite a while before eventually getting back up and collecting your clothes and gear from where it lies strewn about on the ground.";
	ovichance;
	if MiyukiRelationship < 10:
		now MiyukiRelationship is 10; [player got fucked]

[
Section 7 - Endings

when play ends:
	if (MiyukiRelationship > 0 and MiyukiRelationship < 100): [player met her and had friendly relations]
		if humanity of player < 10: [player went feral]
			say "     ...";
		else:
			say "     ...";
]

Ice Fox ends here.
