Version 1 of Queen Bee by Stripes begins here.

"Adds a Queen Bee creature to Flexible Survival's Wandering Monsters table."

Section 1 - Monster Responses

when play begins:
	add { "Queen Bee" } to infections of girl;
	add { "Queen Bee" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Queen Bee" } to infections of Insectlist; [list of insectile infections]
	add { "Queen Bee" } to infections of Internallist; [list of infections w/internal male genitals]

to say losetoqueenbee:
	say "     You were beaten by the creature.";
	if player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beatthequeenbee:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if player consents:
			say "     The player agreed to sex. Fun times begin.";
			if player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";


to say queenbeedesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Queen Bee"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "No fighting"; [ Successful attack message ]
	now defeated entry is "[beatthequeenbee]"; [ Text when monster loses. ]
	now victory entry is "[losetoqueenbee]"; [ Text when monster wins. ]
	now desc entry is "[queenbeedesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "mostly human, beautiful and regal in appearance, with large, dark eyes and lips as sweet and golden as honey. Your flowing hair is yellow and black and has a pair of long antennae rising from them";
	now body entry is "slender and [if player is female]feminine with its slender waist and curving hips, making you a striking figure of womanly beauty. At your side are a pair of smaller, insectile arms suitable for holding small items and caressing tightly held lovers. Around your neck is a collared puff of golden-orange fur. Along with the pair of gossamer wings, glimmering like crystal, that rest against your back, it looks very much like a regal cloak[else]effeminate with its slender waist and curving hips. At your side are a pair of smaller, insectile arms suitable for holding small items and caressing tightly held lovers. Around your neck is a collared puff of golden-orange fur. Along with the pair of gossamer wings, glimmering like crystal, that rest against your back, it looks very much like a regal cloak. All in all, you look very much the sexy [']queen['] bee[end if]";
	now skin entry is "a mixture of chitin plates and golden-bronze tanned";
	now tail entry is "Resting lightly against your rear is a large, striped bee abdomen, complete with a stinger.";
	now cock entry is "[one of]armor-protected[or]honeyed[or]golden[at random]";
	now face change entry is "your vision blurs. Something in your eyes change and colors seem more vibrant, standing out against the duller browns and grays of the city. As your marvelling at what you see, your face shifts form, becoming beautiful and feminine. Long, thick flowing hair of bright yellow and deep black sprouts from your head and washes down to your shoulders in seconds. A tingle runs through your mind as insectile antennae are added";
	now body change entry is "you are transformed to once-again become the sexy [if player is not female][']queen['][else]queen[end if] bee. Your figure is tall and [if player is female]womanly[else]effeminate[end if], with a slender waist and curved hips that draw the eye to your beautiful form. As the transformation spreads up, you form a furred collar and your shimmering wings to be your regal cloak";
	now skin change entry is "your skin becomes at first quite human with a golden-bronze tan. But as the transformation continues, chitinous plates form over your forearms and lower legs as well as your midriff and groin";
	now ass change entry is "a bulge forms at the base of your spine. You are filled with pleasure and a strange sense of promise for the future as it grows and becomes a bee abdomen. There is an orgasmic joy as its stinger grows out";
	now cock change entry is "it turns a golden yellow and smells richly of sweet honeyed cum. Your genitals change and move inwards behind protective plates of chitin, emerging when aroused";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 15;
	now cha entry is 20;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 6; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;
	now cunt width entry is 5;
	now libido entry is 35; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of][if player is female]feminine[else]effeminate[end if][or]slender[or]idealized[or]elegant[or][if player is female]womanly[else]effeminate[end if][or]sexy[or]beautiful[or]regal[cycling]";
	now type entry is "[one of]apian[or]bee-like[or]insectile[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Definitions

Definition: a person is queenbeecocked:
	if cockname of player is "Queen Bee", yes;
	no;


Section 4 - Endings

when play ends:
	if bodyname of player is "Queen Bee":
		if player is pure:
			project the figure of QueenBee_icon;
		if humanity of player < 10:
			say "     With your mind losing itself to the buzz of the nanites in your mind, you slip further and further into your role as the queen bee. Together you and Honey set up a new hive together[if HP of Joanna > 0 and HP of Joanna < 90] in one of the buildings beside Joanna's flower garden[else]in an abandoned building at the edge of the park[end if], filling it with a honeycombed hive full of cute and hardworking bee girl drones and boytoy warriors to serve you. Honey becomes a second queen for the hive by consuming the remaining royal jelly, sharing in the royal duties and the breeding required to fill the new hive.";
		else:
			say "     When the military comes to rescue you and the other survivors they can find, your sexy body helps to charm the soldiers into letting Honey come along. Her small, girlish looks and her cute offer of honey from her precious bag further help to win over the gruff soldiers. As you're heading off, she grins and winks playfully to you, acting like an innocent little girl in front of the soldiers while you keep them distracted with your regal form. A sample of the honey is tested just to be safe, but it is clean and non-infectious, as you already know. Honey keeps up her little girl act, claiming to be orphaned and that you'd become infected while rescuing her (which is true enough), and is released into your custody.";
			say "     Together, you and Honey look for the perfect place to set up your new hive. Eventually you find it in the form of a large factory next to a field of flowers. The flowers, enlarged and sexualized by the nanites, bloom all year round and are a delicious and fun source of pollen for the growing hive. Most of the factory is converted into the honeycomb hive, but the bottling section is left intact. When you start adding more and more drones (through breeding and the occasional [']volunteer[']), there is no shortage of hard work to get it up and running again so you can start bottling the hive's honey for sale. While not infectious, it is a mild aphrodisiac and tempts the occasional visitor to the factory hive to become another hardworking bee girl drone or boytoy warrior. For her loyalty and devotion, you have Honey eat the remaining royal jelly, becoming a sexy female queen to rule by your side and help with breeding workers.";


Queen Bee ends here.
