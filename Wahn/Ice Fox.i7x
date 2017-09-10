Version 1 of Ice Fox by Wahn begins here.
[Version 1 - new npc/infection]

"Adds an Ice Fox NPC to Flexible Survival's urban forest"

[ MiyukiRelationship                                          ]
[   0: not met                                                ]
[   1: met, apologized for the intrusion                      ]
[   5: met, gave BJ                                           ]
[ 100: met, angered - no further contact                      ]

MiyukiRelationship is a number that varies. 

Section 1 - Events

Section 2 - Monster Responses

[Noncombat Creature]

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
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
	now tail entry is "A full nine of prehensile fox tails weave through the air behind you, snow white except their charcoal tips.";
	now cock entry is "[one of]vulpine[or]pointy[or]pinkish[at random]";
	now face change entry is "its mouth pushes out into a slim muzzle and the ears tapering to points and wander steadily upwards. All in all, your whole head seems to stretch and reform into the more triangular visage of a fox, your slim new muzzle full of sharp teeth and your bright shining eyes seeing the world around you in an entirely new, and more sexual light"; [ "Your face feels funny as (your text)." ]
	now body change entry is "its muscles twitching and tremble and bones reform, shaping your being into a more slim and streamlined form. A row of scales solidifies in an unbroken band from your throat all the way to your inner thighs, as well as on the backs of your forearms and your shins. Meanwhile, your hands seem to narrow and your fingers grow closer together as soft claws push their way out of your new slightly paw-like hands. Finally, your feet take on a shape more fitting the digitigrade stance and form draconic toe-claws";
	now skin change entry is "a strange warmth begins to spread across your body, and a soft downy layer of pure white fur begins to push out of your skin, longer thicker fur beginning to grow in even as you begin to stroke your soft white undercoat, until you have a full pelt full of soft layered fox fur";
	now ass change entry is "it becomes tight and firm and nine long fox  tails sprout out of your tailbone. It takes a few seconds before you manage to get them under control, not quite as easy as one thinks due to the fact that they actually are prehensile appendages";
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canine cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath";
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Both";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 80;
	now lev entry is 8;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;              [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;
	now cock length entry is 9;        [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
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
	now non-infectious entry is true;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";


Table of Game Objects (continued)
name	desc	weight	object
"snow star"	"A glistening disk of solidified water, forming a beautiful little star shape. It is incredibly thin and seems delicate, yet despite this, the piece of ice endures in your posession without cracking or melting. What an amazing present from Miyuki."	1	snow star

instead of sniffing snow star:
say "     The little piece of ice smells fresh, a little like a menthol bonbon.";

snow star is a grab object. 
the usedesc of snow star is "[snow star use]";

to say snow star use:
	say "     You pull out the little star of ice and look at it from close up, enjoying the shimmer of light in its facet for a moment. Then you place it on your outstretched tongue, trembling in pleasure as it melts right away and a little bit of Miyuki's magic fills your body.";
	PlayerDrink 10;
	infect "Ice Fox";

Section 4 - Location

Snowy Forest Tail is a room. Snowy Forest Trail is Northeast of Urban Forest.
The description of Snowy Forest Tail is "     You're on a narrow trail through the urban forest, in an area of fairly dense growth. Fragments of the buildings formerly occupying this part of the city are few and far between, with trees and other plants forming what seems to be a century-old forest. Interestingly, this part of the woods is a lot cooler than the rest of the city, with some snow covering low-hanging branches and the ground under your feet. Despite this, you don't actually feel uncomfortable, which might actually be a wholly positive result of the nanites. Towards the north, this effect only gets more pronounced - there are white flakes in the air there, falling at a placid pace to settle in a glistening blanket of undisturbed snow.".

Forest Cave Entrance is a room. Forest Cave Entrance is North of Snowy Forest Trail.
The description of Forest Cave Entrance is "[ForestCaveEntranceDesc]";

to say ForestCaveEntranceDesc:
	say "     In the midst of the sprawling and dense urban forest, with not a trace of civilization in sight now, you stand before what seems to be a small hill or mound. Everything around you is covered in a blanket of freshly fallen snow that quietly crunches with every step you take and more white flakes are falling in a gentle but steady shower. Interestingly, they actually seem to originate all from the same spot - an opening in the side of the hill, high enough to walk into. From there, the snow gets blown out into the surrounding area, creating beautiful whirls and eddies in the air as it gets blown through the air.";
	if MiyukiRelationship is 0: [player doesn't know her]
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. They are just two human-sized paws, so it seems they must belong to an anthro...";
	else if MiyukiRelationship > 0 and MiyukiRelationship < 100:
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. Looks like Miyuki is home. Thinking back to your last encounter, you wonder if you should visit her. Might be fun...";
	else if MiyukiRelationship is 100:
		say "     A single track of delicate paw-prints with surprisingly large claw-marks leads into the cave. Looks like Miyuki is home. You're not sure if you want to take the chance of another encounter with her, after how last time went...";

Frozen Cave Tunnel is a room. Frozen Cave Tunnel is Northeast of Snowy Forest Trail.
The description of Frozen Cave Tunnel is "     You're in what seems like a natural cave tunnel, leading steadily downwards in a slow curve. Might actually be a spiral, now that you think of it - remembering the part you've already got behind you and what you can see ahead. And you can actually see, despite being underground and in a cave, thanks to the everpresent snow all around you. Each flake has a tiny and dim glow to it, making them whiter than white and creating a beautiful sparkling effect that covers the ground in a smooth layer and has settled into all of the cracks and rough surfaces of the cave walls. Seeing wondrous sights like this makes it hard to remember that you're still in the city sometimes, and that all of this didn't exist just a short while ago.".

Ice Fox's Den is a room. Ice Fox's Den is below Frozen Cave Tunnel.
The description of Ice Fox's Den is "     You're in a moderately sized cavern, spreading out around you. On the smooth black stone floor (granite, if you'd have to guess), there are some pieces of furniture scattered about, tables and chairs, plus a number shelves - all of them white. Hard to say if that is their natural color or if its just the thin layer of frost covering them. In the back, there is what can only be called a nest - a circular affair of many blankets on the ground, with countless big and small pillows piled in it. The walls enfolding the place seem fairly natural and cave-like, with sparkling snow having settled on every bump and unevenness, filling the place with a smooth and even light. Finally, the ceiling above you is quite a sight, as what seems to be a snow-storm whirls in the air there, centered on a palm-sized star of a snow flake, with more and more snow constantly being created as steamers of flakes are sent to blow up the tunnel up to the surface.".

Section 5 - Events

instead of going Down from Frozen Cave Tunnel while (Miyuki is in Ice Fox's Den and MiyukiRelationship is 0): [first encounter]
	move player to Frozen Cave Tunnel;
	say "     In the midst of the cave stands what must be the person living here - an anthro fox with snow-white fur, as well as some flexible draconic scales that run in a broad band from her throat, between two shapely breasts and all the way down to the inside of her thighs. She bears more scales on the backs of her forearms, as well as the shins of her legs, with them becoming more pronounced further down and ending at the sharp toe-claws that make her paws appear more like a dragon's than a foxes. Finally, there is a grand total of nine flexible fox tails fanned out behind her, swaying gently left and right. All of this is readily visible to you as she doesn't seem to need - or want - to wear clothes. Inevitably, your gaze wanders down between her thighs, where you spot a thin slit between two scale-plates.";
	say "     The dragon-fox is standing right underneath the big snowflake rotating close up to the ceiling, looking at it with her arms raised, sending pale whispy streamers of energy up to it. This seems to charge up the frosty star, making it spin even faster, with more snow forming in the surrounding air. It blows towards the cavern entrance in a strong gust - or in other terms... right at you! Surprised, you can't help but let out a 
	strained gasp as you stand against the gale, barely keeping upright despite the blowing wind. The sound draws the attention of the ice fox, who stops what she was doing and turns her muzzle to look at you. Raising an eyebrow in a quizzical expression, she takes a few steps closer and says, 'What do we have here? An uninvited trespasser...'";
	WaitLineBreak;
	say "     Stopping the snowy gale threatening to push you over with a flick of her wrist, the anthro fox comes to stand before you with a smirk on her muzzle and arms crossed in front of her shapely chest. She looks you up and down quite closely, her gaze resting on your crotch for a few seconds before she looks you right in the eye. 'And what an interesting visitor you are to come visit Miyuki. Still, just walking into a woman's bedroom unbidden. I think that demands an apology...' She smiles at you and you become aware of movement behind her back - several of those long tails of hers curve around, pointing at her crotch, where the tip of a vulpine shaft starts to push outwards from the elongated slit between her scales.";
	Line Break;
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
		Line Break;
		say "     You know how the world works these days, so you readily crouch down in front of her, taking in the dragon-fox's manhood. It is well sized at about ten inches in length and light pink, tapering a little along its length till it reaches a pointy tip. The base of it just outside her scaled slit holds a noticable bulge - no doubt, this swells up to a full-sized knot when she is balls-deep inside her partner and cums. Experimentally, you stroke the smooth scales between her legs, finding them warm to the touch and flexible. Miyuki may be scaly in parts, but she is far from cold-blooded, that's for sure. Your searching fingers dip into her slit too, feeling warm skin inside that forms the root of her cock. 'Someone is eager to explore,' the fox tells you from above, smiling down at you. 'You might just find something else that is fun in there sometime - but right now, I really feel like getting sucked.'";
		say "     Her cock throbs at that exclaimation and you can see a glistening drop of pre form at its tip, tempting you to lean forward and lick the tasty treat off. Miyuki gives a pleased yip as your tongue brushes over her dickhead for the first time, followed by your lips closing around it and gently suckling the hard shaft. You proceed to go down on her, steadily sliding more and more of the erection into your mouth while exploring its fleshy length with your tongue, feeling every little ridge and vein. Her tip is halfway down your throat by the time you reach the pre-knot bulge, bumping its with your lips. 'Nnnghh - you're good at this,' your foxy host tells you in a pleased tone, stroking your head while her dick throbs in your throat.";
		WaitLineBreak;
		say "     Holding your position as long as you can, you let Miyuki enjoy the feeling for as long as you can, then pull back and gasp for breath before starting to go down on her once more. The slick vulpine shaft slides easily into your mouth now, allowing you to bob up and down on it in a rapid pace. As you give the dragon-fox a blowjob that you hope she won't forget anytime soon, you can't help but chuckle around the dick in your mouth. It truly is amazing what situations the nanite apocalypse creates... here you are, blowing an anthro half-dragon half-fox sice foxeress in her icy den, bobbing on a nonhuman cock and now closing your fingers around her knot to squeeze and jerk it too. That last thing does make Miyuki go churr in pleasure, her paw-hands having to grip your shoulders tightly as she has to hold on.";
		say "     You can feel the bulge under your fingers expand moment by moment, a clear sign that she enjoys something tightly wrapped around her knot and is getting quite close - so you go all out in your blowjob, really sucking hard on her dick and squeeze her tightly. Just a few heartbeats later, you are rewarded with a heavy throb of her cock and cum splurging forth, spurting right down your throat and into your stomach. You can feel her dick pulse against your tongue, again and again, as it deposits a full load of ice fox cum into your body. Damn, where is all of that coming from?! She doesn't even have balls! But then... who cares - certainly not you, with the nice and warm filling she's just given you, sating what hunger you might have had with her rich load.";
		WaitLineBreak;
		say "     Pulling back on the throbbing shaft when you eventually can't help but need to take a breath, you nevertheless keep its tip between your lips, catching all of her spurting cum on your tongue while breathing hard through your nose. While you concentrate on not losing out on any of her load, your gaze wanders up the slick shaft that was in your throat until a second ago, right to the thick knot under your grasping fingers. Fuck, that's a big one! If she ties that with someone, Miyuki is certainly gonna stay bound to them for a long while. You caress and squeeze the bulge of flesh while her orgasm slowly ebbs off, swallowing more than one mouthful of her tasty load before she is done.";
		say "     Eventually, you are pulled back to your feet by the surprisingly strong ice fox, with her planting a hungry kiss on your lips. Miyuki's tongue explores your mouth, wrestling with your own and stealing a taste of her own load before she pulls back to smile broadly at you. 'Now THAT was an amazing apology. I think I got a new favourite to have their lips wrapped around my dick! You're forgiven, sweetie. And feel free to visit me again in the future. There is so much fun we can have... But for now, give me a little privacy to clean up, will you?' Friendly but determined, she ushers you out of her cave, leaving you a bit bewildered and at the same time aroused about what you just experienced there.";
		move player to Forest Cave Entrance;
		PlayerEat 25;
		now MiyukiRelationship is 5; [player gave her a BJ]
	else if calcnumber is 2:
		Line Break;
		say "     As you apologize for your intrustion and give her a little bow just to be sure (given the name and her appearance making you think asian folklore, you think it fits), Miyuki nods gracefully and replies, 'Well, at least you're well mannered. Not that I wouldn't have preferred a... different apology.' She strokes her fox-like shaft demonstratively and gives you a wink before going on, 'But fine - you're forgiven for your intrusion. I do have to ask you to leave now though... since you don't seem to be interested in taking care of my 'little fox' down here, I guess I'll have to do it myself.' Friendly but determined, she ushers you out of her cave, leaving you a bit bewildered at what you just experienced that.";
		move player to Forest Cave Entrance;
		now MiyukiRelationship is 1; [player apologized to her]
	else: 
		Line Break;
		say "     As you scoff and ignore her request, telling her she can forget about this and stepping forward to do... you don't know what exactly, Miyuki's brows draw together and she shakes her head in disappointment. 'How rude,' she says with a slight ruffle to her muzzle and flicks her paw-hand at you. With a creak of frost forming impossibly fast, you freeze in your movements and feel yourself get incredibly stiff - and not in a good way. The burning feeling of ice touching your skin creeps up your extremeties in an eye-blink, followed by a pressure on your chest that makes it hard to breathe in against the carapace of ice forming there. Then finally, you feel the creeping frost crawl up your neck and start to spread over your face, at which point you pass out from the sudden hypothermia.";
		WaitLineBreak;
		say ".";
		say "..";
		say "...";
		say "....";
		say ".....";
		say "     You awake wet and chilled to the bone, lying on the forest path that brought you to Miyuki's frosty cave. Groaning and rubbing warmth back into your stiff limbs, you glance back in the direction of the mound holding her den - lying in the middle of the snowed-in section of the forest. A single line of paw-prints leads up to where you were unceremoniously dumped. Hell, seems like she didn't even have to drag you - just picked your ice statue up and set you down here. She is one strong ice fox, that's for sure!";
		move player to Snowy Forest Tail;
		now MiyukiRelationship is 100; [she doesn't want to see the player again]

[
instead of going Down from Frozen Cave Tunnel while (Miyuki is in Ice Fox's Den): [she greets the player, at a minimum]
	move player to Ice Fox's Den;
	say "     <greeting or otherwise>";
]

Section 6 - NPC

Miyuki is a woman. Miyuki is in Ice Fox's Den.
The description of Miyuki is "[MiyukiDesc]".
The conversation of Miyuki is { "placeholder" }.

instead of sniffing Miyuki:
	say "     Miyuki has an interesting scent - crisp and fresh, reminding you of fallen snow. There are some undertones of a pleasant furry smell, as well as a faint hint at... peppermint?";

to say MiyukiDesc:
	say "     Miyuki is a truly beautiful anthro fox, with a fairly slim build that incorporates just the right amount of feminine curves. She doesn't seem to like wearing clothes, so you have a full view of the snow-white coat of fur covering most of her body, perfectly accompanied by a head of long and flowing hair that shows a silver shimmer on top of that. The fur darkens to charcoal grey and black towards the ends of her limbs, creating the impression of long 'gloves' and 'socks' - intermixed with some grey-ish scales on the backs of her forearms and along her shins. There are further scales down her front, forming a trail from her neck, between a pair of generous breasts and all the way down to her inner thighs. A fan of nine long fox tails completes the image of an exceptional being, especially since she waves their charcoal grey tips towards you playfully...";

instead of conversing the Miyuki:
	Line Break;
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
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Her beginnings"):
					say "[MiyukiTalk1]";
				if (nam is "The City"):
					say "[MiyukiTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the ice fox, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
			
to say MiyukiTalk1: [talk about her]
	say "     ";
	
to say MiyukiTalk2: [talk about the city]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     <first random thing she says about the city>";
		-- 2:
			say "     <second random thing she says about the city>";
		-- 3:
			say "     <third random thing she says about the city>";
		

instead of fucking the Miyuki:
	if lastfuck of Miyuki - turns < 4:
		say "     As you step up to Miyuki and ...";
	else if MiyukiRelationship < 6: 
		say "     <comments about 'I knew you couldn't resist me for long'>";
	else:
		say "    [MiyukiSexMenu]";
	
to say MiyukiSexMenu:
	Line Break;
	say "What do you want to do with Miyuki?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her mouth";
	now sortorder entry is 1;
	now description entry is "Slide your dick between her lips";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go down on her pussy";
	now sortorder entry is 2;
	now description entry is "Lick her snatch and get Miyuki off";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 3;
		now description entry is "Sink your manhood into the ice fox's pussy";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her ass";
		now sortorder entry is 4;
		now description entry is "Sink your manhood into the ice fox's ass";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "69 and scissor with her";
		now sortorder entry is 5;
		now description entry is "Share mutual oral pleasure and grinding with the ice fox";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Let her lead";
		now sortorder entry is 6;
		now description entry is "Give yourself to the ice fox";
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
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck her mouth"):
					say "[MiyukiSex1]";
				if (nam is "Go down on her pussy"):
					say "[MiyukiSex2]";
				if (nam is "Fuck her pussy"):
					say "[MiyukiSex3]";
				if (nam is "Fuck her ass"):
					say "[MiyukiSex4]";
				if (nam is "69 and scissor with her"):
					say "[MiyukiSex5]";
				if (nam is "Let her lead"):
					say "[MiyukiSex6]";
				now lastfuck of Miyuki is turns;
				increase libido of Miyuki by 1;
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the proud ice fox, shrugging your shoulders as she gives you a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MiyukiSex1: [fuck her mouth]
	say "...";

to say MiyukiSex2:  [lick her pussy]
	say "...";

to say MiyukiSex3:  [fuck her pussy]
	say "...";

to say MiyukiSex4:  [fuck her ass]
	say "...";

to say MiyukiSex5:  [69 and scissoring]
	say "...";

to say MiyukiSex6:  [Miyuki straddles the player's face]
	say "...";


[
Section 7 - Endings

when play ends:
	if (MiyukiRelationship > 0 and MiyukiRelationship < 100):  [player met her and had friendly relations]
		if humanity of player < 10: [player went feral]
			say "     ...";
		else:
			say "     ...";
]

Ice Fox ends here.
