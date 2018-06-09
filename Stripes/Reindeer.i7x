Version 2 of Reindeer by Stripes begins here.
[ Version 2.1 - Updated to extended heat table - no MPreg heat yet - Stripes ]
"Adds a Christmas-themed Reindeer creature to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses

when play begins:
	add { "Reindeer" } to infections of guy;
	add { "Reindeer" } to infections of furry;

to say reindeerdesc:
	setmongender 3; [creature is male]
	choose row monster from the table of random critters;
	now lootchance entry is 33;
	say "     You can feel a disturbing chill in the air and even start to shiver as the temperature drops abruptly. As you try to bundle yourself up against the unexpected cold, you hear some jingling bells from above. Looking around you, you can see snow start to fall just as a reindeer begins to fly down. The reindeer has a few Christmas decorations hanging from its antlers and golden bells attached to red straps on his body. As he swoops lower, he laughs merrily, leaving another stream of light snow in his wake.";
	say "     The holiday reindeer has no wings or other means to fly, he simply is, trotting lightly in the air as he does. You find yourself wondering how such an infection could come about during the middle of summer. [one of]Perhaps his office had a Christmas-in-July party[or]Maybe he worked at the mall and the holiday decorations fell on him[or]Maybe one of the reindeer from the zoo ran into someone who particularly loved the holiday[or]Perhaps he was finally getting around to taking down his Christmas lights when the infection struck[or]Perhaps a forty year old fruitcake was involved[or]Maybe there was an old carton of egg nog at the back of the fridge[in random order]. As he swoops in again, he strokes his stiff cock, firing a few shots of cum at you, intent on sharing some of his holiday cheer.";


to say reindeerattack:
	if a random chance of 2 in 5 succeeds:
		say "     While coming in for another flying attack, the reindeer spurts more cum at you from his throbbing shaft, clearly excited by the fight. It splashes onto your [one of]face[or]shoulder[or]arm[or]groin[or]chest[purely at random]. Its scent, like brandy egg nog, is enticing and lustful images of [one of]a kinky sleigh ride[or]you under the reindeer[or]sucking him for more[or]fondling his Christmas balls[or]sitting in the reindeer's lap[purely at random] pop into your head. You shake your head, trying to clear it to focus, but the reindeer swoops in during your lapse in attention. He ";
		increase libido of player by a random number from 3 to 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
		choose row monster from the table of random critters;
		increase lootchance entry by a random number between 3 and 10;
		if lootchance entry > 80, now lootchance entry is 80;
		if libido of player >= 110:
			say "grabs you and rubs his cock against your hip. You find yourself too aroused to resist the sexy reindeer further and give in to his lustful holiday spirit!";
			now HP of player is 0;
			continue the action;
	else:
		say "     The reindeer swoops in to attack and ";
	let T be a random number between 1 and 6;
	if T is 1:
		say "gropes you with a merry laugh as his candy-cane scented breath wafts past your nose!";
	if T is 2:
		say "dangles some mistletoe above your head and kisses you lustfully. His tongue dives into your surprised mouth and the taste of candy canes washes across your tastebuds!";
	if T is 3:
		say "grinds his hard cock against your hip, leaking precum as he struggles to hold you down!";
	if T is 4:
		say "tries to push you to the ground with a loud tinkling of bells!";
	if T is 5:
		say "banks sharply, getting behind you. He grinds firmly against your rear while his hoofed paws grope your chest. You can feel his precum leaking out as he tries to cum on you, but you shake him off. The scent of his egg-nog flavored precum hangs in the air, arousing you further!";
		increase libido of player by a random number from 2 to 5;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
	if T is 6:
		say "spins around you quickly, swirling up a snowy wind. The temperature plummets further, making your teeth chatter as the cold seeps deep inside you. When he finally spins off dizzily, you brush off the layer of snow, but the cold has taken its toll on you!";


to say losetoreindeer:
	say "     Unable to resist the arousing holiday cheer of the reindeer male, you give in and kiss him lustfully. Once in his arms, the cold chill around you is still there, but he feels like a warm fireplace, stoking the fires of your libido. He gives a happy bleat and returns the kiss, filling your mouth with the taste of candy canes. His hoof-like hands move across your chest and down to your hips before pushing you to your knees.";
	say "     He strokes your head and pushes his cock to your mouth, telling you to [one of]suck his yule log[or]fondle his sugar plums[or]lick his candy cane[or]drink his tasty egg nog[purely at random]. You groan a little, but take it in happily in your aroused state, licking and sucking it eagerly. It is slender, but long, with ample balls, each the size of large tree ornaments. His pre tastes of delicious egg nog, spiked rather heavily with brandy, making you give in more and more to his merriness. When he spurts a few shots of cum down your throat, you give in entirely and present yourself to him even as you feel your strength returning.";
	if cunts of player > 0:
		say "     He gives a merry laugh which causes his jingle bells to ring and lines up his cock behind you. With another spurt of pre, he starts to slide his slender cock into you. You moan in pleasure as the joyous male starts to rut you with the loud jingle-jangle of bells. His slender cock is easy to take but fills your pussy nice and deep.";
		if cunt length of player < 12:
			say "     Your pussy leaks juices steadily in your hyper-aroused state, dripping onto the cold ground to make a frozen puddle. But you only feel the heat of your strong buck atop you as he ruts with you. When he gives a few last shoves into you, you groan loudly and climax as his reindeer cock pushes past your cervix[if cocks of player > 0]. Your cock throbs beneath you and spills your semen across the ground[end if]. His thick seed sprays into you moments later, filling your womb with his holiday cheer. This load is quite substantial, a ball-draining, womb-filling, doe-breeding flow that leaves you panting on the ground but filled with warmth and happiness.[impregchance]";
		else:
			say "     Your pussy leaks juices steadily in your hyper-aroused state, dripping onto the cold ground to make a frozen puddle. But you only feel the heat of your strong buck atop you as he ruts with you. When he gives a few last shoves into you, you groan loudly as he sheathes his cock entirely in your depths and climaxes[if cocks of player > 0]. Your cock throbs beneath you and spills your semen across the ground[end if]. His thick seed blasts into you moments later, spraying against your cervix and flowing up into your womb to fill you with his holiday cheer. This load is quite substantial, a ball-draining, womb-filling, doe-breeding flow that leaves you panting on the ground but filled with warmth and happiness.[impregchance]";
	else:
		say "     He gives a merry laugh which causes his jingle bells to ring and lines up his cock behind you. With another spurt of his pre, this time to lube your tail-hole, he starts to slide his slender cock into you. You moan in pleasure as the joyous male starts to rut you with the loud jingle-jangle of bells. His cock fills you nice and deep but isn't painful to take at all.";
		say "     You leak precum onto the cold ground, only feeling the heat of your strong buck atop you. When he gives a few last shoves into you, you groan loudly and cum hard, spilling your seed moments before his hot cum sprays into you, filling you with his holiday cheer. This load is quite substantial, a ball-draining, belly-plumping, ass-flooding flow that leaves you panting on the ground but filled with warmth and happiness.";
	say "     He gives you a final, minty-sweet kiss under the mistletoe before flying off to spread more holiday cheer with others. As he leaves, the temperature gradually returns to normal, but his hot special present keeps you warm inside until then.[impregchance]";
	increase morale of player by a random number from 2 to 4;
	decrease humanity of player by a random number from 2 to 5;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	now libido of player is ( libido of player * 3 ) divided by 4;
	increase HP of player by ( maxHP of player / 5 );
	if HP of player > maxHP of player, now HP of player is maxHP of player;

to say beatthereindeer:
	say "     'Oh, you Scrooge. Where's your holiday spirit?' he whines as your continued resistance frustrates him. Having had enough, the holiday reindeer finally flies off, heading elsewhere for someone to fill with a load of his special holiday cheer.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Reindeer"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[reindeerattack]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthereindeer]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoreindeer]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[reindeerdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "transformed into that of a reindeer, with a ruminant's muzzle, cute ears and arching antlers"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of an anthropomorphic reindeer with long, slender limbs. You have hoof-like hands and fully hoofed feet"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "warm, brown fur"; [ Skin desc., format as the text "Your body is covered in (your text)." ]
	now tail entry is "Atop your ass, you have a cute, flagged caribou tail of white and brown fur."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]caribou[or]deer-like[or]reindeer[at random]"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you grow a long muzzle. A strange tingle at your brow grows out into a small set of antlers"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you become a shapely reindeer with an alluring, girlish figure. Your limbs are long and slender, able to walk on two or four legs. Your hands reshape themselves, gaining hoof-like fingers while your feet fully become hard hooves"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "warm, brown fur spreads across it"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you gain a short tail covered in brown and white fur, just like a caribou's"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it reshapes itself, becoming slender and reindeer-like"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "egg nog"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 33; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or]festive[at random]";
	now type entry is "[one of]caribou[or]reindeer[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Egg Nog

Table of Game Objects (continued)
name	desc	weight	object
"egg nog"	"AKA chicken milk. That holiday drink, spiked rather heavily with brandy by the smell of it."	1	egg nog

egg nog is a grab object. It is a part of the player. egg nog is infectious. understand "chicken milk" as egg nog. The strain of egg nog is "Reindeer". egg nog is temporary.

the scent of egg nog is "The egg nog smells fresh and strongly of good brandy, making you want to drink it and remember Christmases past.".

The usedesc of egg nog is "[nogging]";

to say nogging:
	say "[line break]     You drink down the tasty egg nog, feeling the warmth of the brandy-rich flowing into you. You are filled with a burst of the holiday spirit and a lustful longing for someone to share this feeling with. You feel a little better all around because of it even as the warmth changes from that of the alcohol to the warmth of your activated infection.";
	PlayerEat 3;
	PlayerDrink 6;
	increase HP of player by ( Stamina of player / 2 );
	if HP of player > maxHP of player, now HP of player is maxHP of player;
	increase morale of player by a random number from 0 to 1;
	increase morale of player by a random number from 0 to 1;
	decrease humanity of player by a random number from 3 to 8;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	increase libido of player by a random number from 3 to 8;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
	if libido of player > 100, now libido of player is 100;
	if humanity of player < 1:
		say "     Drunk on the egg nog, you drink all of it you have down, losing yourself in the holiday spirit as your mind unravels.";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Reindeer":
				now monster is y;
				break;
		now tailname of player is "Reindeer";
		now facename of player is "Reindeer";
		now skinname of player is "Reindeer";
		now bodyname of player is "Reindeer";
		now cockname of player is "Reindeer";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		end the story saying "You gave in to the holiday spirit.";
		now battleground is "void";


Section 4 - Holiday Madness

heatturnskipper is a truth state that varies. heatturnskipper is normally false.	[skips a second heat roll if the player loses a turn]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
Choose a blank row from Table of infection heat;
	now infect name entry is "Reindeer"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 15; [ Total cycle - from start to starting again. Default is 7. ]
	now heat duration entry is 12; [ This is how many days of the cycle you are actually in heat. Default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "Naughty, festive thoughts start to creep into your head. Thoughts of sugar plums and sodomy, of candy cane dildos and creamy reindeer egg nog. Your dripping cunny feels hot, like a warm fireplace in need of someone to stoke it. You start humming The Twelve Days of... Uh oh."; [ This is the text that is written to the screen when the player comes into heat]
	now inheat entry is "[reindeerheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false; [no mpreg heat at present]

to say reindeerheat:
	let diceroll be ( libido of player plus a random number between 0 and 100 );
	if heatturnskipper is true:
		now heatturnskipper is false;
	else if diceroll < 90:
		increase libido of player by a random number between 0 and 3;
	else if diceroll < 130:		[90 - 130]
		say "Holiday ditties play in your head as you squeeze your thighs together, moaning during a bout of holiday reindeer mating season.";
		increase libido of player by a random number between 2 and 5;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 0 and 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 0 and 1;
		if libido of player > 100, now libido of player is 100;
	else if diceroll < 155:		[130 - 155]
		say "Your mind starts to wander [one of]and you start thinking about finding some holiday decorations for the bunker. Your thighs feel wet as you think of snuggling up by a roaring fire next to the tree with someone special[or]and you set off in search of Christmas lights. You finger yourself as you rummage about until you regain your senses[or]and you start humming carols while taking a break to play with yourself for a few minutes[or]to old holiday specials and you start singing some of your favorite songs from them. You start to get turned on as you change a few words around to make them quite bawdy[or]while looking around for a [']present['] to stuff in your [']stocking with care['][or]to gift ideas for the people and creatures you've encountered in the city. Almost invariably, you think of a rather naughty gift you could share with them[at random].";
		increase libido of player by a random number between 3 and 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
		if libido of player > 100, now libido of player is 100;
	else if diceroll < 170:		[155 - 170]
		say "Your heat-filled pussy leaks juices and clouds your mind so thoroughly with mindless holiday cheer that you have to take a long break to masturbate, though with only limited satisfaction. You only come to your senses hours later.";
		decrease libido of player by a random number between 5 and 10;
		now heatturnskipper is true;
		follow the turnpass rule;
	else if diceroll < 185:		[170 - 185]
		say "[reindeerbreastheat]";
	else:					[185 - 200]
		if egg nog is owned:
			delete egg nog;
			increase libido of player by a random number from 3 to 8;
			if libido of player > 100, now libido of player is 100;
			say "As a wave of holiday merriment washes over you, you bleat lustfully and drive a pair of fingers into your sopping pussy. Feeling the strength of your heat pulsing through you, you are so thirsty. You look around for something to satisfy your thirst for holiday cheer. Remembering the egg nog, you pull it out from your pack and take a drink.[nogging]";
		else if "egg nog" is listed in invent of the location of the player:
			say "As a wave of holiday merriment washes over you, you bleat lustfully and drive a pair of fingers into your sopping pussy. Feeling the strength of your heat pulsing through you, you are so thirsty. You look around for something to satisfy your thirst for holiday cheer. Spotting the egg nog, you grab it and take a drink.";
			let num be 0;
			repeat with Q running through invent of the location of the player:
				increase num by 1;
				if q matches the text "egg nog", case insensitively:
					add q to the invent of the player;
					break;
			remove entry num from invent of the location of the player;
			increase carried of egg nog by 1;
			process egg nog;
		else:
			say "[reindeerbreastheat]";
			increase libido of player by a random number from 3 to 8;
			if libido of player > 100, now libido of player is 100;


to say reindeerbreastheat:
	if breast size of player < 2 or breasts of player is 0:
		say "You moan lustfully and fondle your chest, teasing your nipples. Your heat is quite unbearable, with your sweet juices running down your legs and filling the air with the scent of your arousal. As you continue to play with yourself, your nipples tingle and grow larger and fuller as your breasts change.";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Reindeer":
				now monster is y;
				break;
		follow the breast change rule;
	else:
		say "You moan lustfully and fondle your chest, teasing your nipples. Your heat is quite unbearable, with your sweet juices running down your legs and filling the air with the scent of your arousal. As you continue to play with yourself, your nipples start to leak milk, rich and scented like brandy egg nog. Delighted at this, you continue to milk yourself until this surge of lust passes.";
		[copied entirely from the 'milk me' section]
		repeat with T running from one to ( ( breasts of player ) / 2 ):
			increase carried of egg nog by 1;
		increase libido of player by a random number from 3 to 8;
		increase libido of player by a random number from 3 to 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by a random number between 1 and 3;
		if "Cold Fish" is listed in feats of player, decrease libido of player by a random number between 1 and 3;
		if libido of player > 100, now libido of player is 100;


Section 5 - Endings

when play ends:
	if bodyname of player is "Reindeer":
		if humanity of player < 10:
			say "     As your mind fails, it empties of most things, filled instead with Christmas songs, holiday specials and festive recipes. You prance outside, feeling light on your feet even as the temperature starts to drop around you. Pulling the heat out of your environment, you use this energy to fly, taking to the air with natural ease. You trot merrily through the air, starting to laugh and cheer as the spirit of the season fills you. For it is the holiday season. It is always the holiday season now, in your mind.";
			say "     You fly around the city, soon spotting the reindeer from before and move to join him. He is very pleased to see you joining him in the holiday spirit. He fits you with a festive harness festooned with bells. He then mounts you in mid-air, taking you as his mate and filling you with a large, thick load of caribou cum.";
			say "     When the soldiers come into the city in force, you have fun sharing the spirit of the season with them for a while, but their particularly grinchy attitude is unpleasant. Together, you both decide to fly off into the night to spread your cheer elsewhere. There is soon a growing herd of flying reindeer roaming across the countryside, leaving special presents in good, big girls and boys.";
		else:
			say "     After dealing with the military and being treated to be non-infectious, you are released and decide to move to the north, far from the outbreak site. You settle down for a peaceful life of simple pleasures surrounded by a collection of holiday ornaments. You are filled with the holiday spirit all year round, giving you a happy and generous personality, always feeling it is better to give than to receive.";
			say "     This positive attitude lands you an office job early into the new year after lending a helping hand to the man who would become your boss. Having few transformees in your area, the meeting changes his preconceptions of the infected and you become the first one he employs. You happily work there, keeping morale up with your cheerful nature. You seem to make what would be a boring job quite pleasant for all your coworkers.";
			say "     This goes on for most of the year until December rolls around. You are an obvious choice for organizing the company Christmas party and happily take on the task. Seeing the holidays on display all around you in the city fills you with increasingly bubbling energy, reawakening your infection so that you almost float with joy at times.";
			if cocks of player > 0 and cunts of player > 0:			[HERM]
				say "     The Christmas party is a smash hit. Everyone particularly enjoys the egg nog and generous and thoughtful gifts are shared. As the party goes on, things become more bawdy as your 'special' egg nog takes effect and your coworkers start to become herm reindeer like yourself. The power of the season, having reawakened your dormant infection, has allowed you to transform them with your thick cum and milk passed off as the holiday drink. The office becomes a large orgy of sex and rutting, with you mating many of your coworkers. Late into the night, you and your boss take turns being the doe repeatedly, giving her the present she wanted most of all - you as her mate.";
			else if cunts of player > 0:					[FEMALE]
				say "     The Christmas party is a smash hit. Everyone particularly enjoys the egg nog and generous and thoughtful gifts are shared. As the party goes on, things become more bawdy as your 'special' egg nog takes effect and your coworkers start to become reindeer like yourself. The power of the season, having reawakened your dormant infection, has allowed you to transform them with your thick milk passed off as the holiday drink. The office becomes a large orgy of sex and rutting, much to your delight. Late into the night, you let your boss rut you repeatedly, giving him the present he wanted most of all - you as his mate.";
			else:									[MALE]
				say "     The Christmas party is a smash hit. Everyone particularly enjoys the egg nog and generous and thoughtful gifts are shared. As the party goes on, things become more bawdy as your 'special' egg nog takes effect and your coworkers start to become reindeer like yourself. The power of the season, having reawakened your dormant infection, has allowed you to transform them with your thick cum passed off as the holiday drink. The office becomes a large orgy of sex and rutting, with you mating many of your coworkers. Late into the night, you and your boss take turns rutting his secretary, whom everyone knows he's wanted for years, making it such a touching gift for her boss.";

Reindeer ends here.
