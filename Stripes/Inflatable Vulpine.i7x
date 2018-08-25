Version 1 of Inflatable Vulpine by Stripes begins here.
[ Version 1.1 - Airheaded message fix ]

"Adds an Inflatable Vulpine infection for use with Bubble the Inflatable Vixen"

Section 1 - Monster Responses

last_infvulp_airhead is a number that varies. last_infvulp_airhead is usually 255.
infvulpstate is a number that varies.

when play begins:
	add { "Inflatable Vulpine" } to infections of girl;
	add { "Inflatable Vulpine" } to infections of furry;
	add { "Inflatable Vulpine" } to infections of Vulpinelist; [list of vulpine infections]
	add { "Inflatable Vulpine" } to infections of Knotlist; [list of cock infections with a knot]
	add { "Inflatable Vulpine" } to infections of Latexlist; [list of latex/rubber/PVC skin infections]

to say losetoinfvulp:
	say "     You were beaten by the creature.";
	if player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beattheinfvulp:
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


to say infvulpdesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Inflatable Vulpine"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]"; [ Successful attack message ]
	now defeated entry is "[beattheinfvulp]";
	now victory entry is "[losetoinfvulp]";
	now desc entry is "[infvulpdesc]";
	now face entry is "vulpine in form, but inflatable. Your face by default has a vacuous grin and living decals for eyes, making you look cartoonishly cute. Despite your attempts to stay focused, air-headed thoughts pop into your empty head from time to time";
	now body entry is "[infvulpbody]";
	now skin entry is "smooth, latex skin. While predominantly orange, you also have black paws and feet as well as a white chest, giving you a fox pattern overall. These sections are all joined by seams";
	now tail entry is "Your fox tail is like a living balloon of orange latex with a white tip. It has a small air nozzle at the end, like you've seen on inflatable toys.";
	now cock entry is "[one of]inflatable[or]latex[or]orange latex[or]knotted[or]balloony[at random]";
	now face change entry is "it quickly becomes hard to concentrate. Your head feels increasingly lighter and your worries drift away as air causes your changing head to inflate. A vulpine muzzle and cartoonishly foxish ears pop from your face as it turns into a balloon-like head[infvulp_reset]";
	now body change entry is "[infvulpbodychange][infvulp_reset]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it becomes glossy and shifts like liquid plastic. You turn a bright orange in color, though areas of black and white start to distinguish themselves as well. These sections divide off into patches joined together by melted seams as your skin becomes a thin layer of colorful latex";
	now ass change entry is "a sense of pressure grows there. This feeling builds up until finally, with a cartoonish 'Pop!' you suddenly gain a balloon-like fox tail";
	now cock change entry is "it feels like it's swelling up, though no change in size is occurring. While pleasurable, this mysterious feeling continues until finally the pressure releases in a blast of spooge. Your [cock size desc of player] penis becomes a balloon version of a cock, vulpine in shape with an inflatable knot at the base. It even comes with a sheath of white latex skin to house it when deflated";
	now str entry is 8; [ These are now the creature's stats... ]
	now dex entry is 8; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8; [ These values may be used as part of alternate combat.]
	now per entry is 8;
	now int entry is 6;
	now cha entry is 16;
	now sex entry is "nochange"; [ Infection will move the player toward this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 14; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;
	now cunt width entry is 5;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if infvulpstate <= 2][one of]inflatable[or]balloony[or]slender[or]sexy[or]plasticky[or]light[or]buoyant[at random][else][one of]inflatable[or]balloony[or]plump[or]huggable[or]over-inflated[or]rounded[or]plasticky[or]light[or]buoyant[at random][end if]";
	now type entry is "[one of]vulpine[or]foxish[or]inflatable[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


to say infvulpbody:
	if infvulpstate <= 2:
		say "empty, filled only with air like a balloon. You've got a very sexy figure, with [if player is female]lovely curves and a narrow waist[else]a slender physique[end if]. Your arms and legs end in paw-like hands with pads of textured latex";
	else:
		say "empty, filled only with air like a balloon. You've got a rounded and full figure thanks to your increased inflation level, making you adorably plump and huggable";

to say infvulpbodychange:
	if infvulpstate <= 2:
		say "it grows lighter and you giggle merrily for no reason. As your insides are replaced with air, you gain [if player is female]a lovely curves and a narrow waist[else]slender physique[end if]. Your hands change, puffing up into cute paws, and soon your feet do the same. By the time it's over, your body is that of some kind of inflatable balloon creature";
	else:
		say "it grows lighter and you giggle merrily for no reason. As your insides are replaced with air, you gain a rounded and full figure as you keep inflating until you're adorably plump and huggable. Your hands change, puffing up into cute paws, and soon your feet do the same. By the time it's over, your body is that of some kind of inflatable balloon creature";

to say infvulp_reset:
	now last_infvulp_airhead is turns;


Section 3 - Everyturn Airhead

an everyturn rule:
	now tempnum is intelligence of player + 6;
	increase tempnum by humanity of player / 10;
	decrease tempnum by libido of player / 10;
	if a random chance of 5 in tempnum succeeds and last_infvulp_airhead - 2 > turns:
		if facename of player is "Inflatable Vulpine" or bodyname of player is "Inflatable Vulpine":
			now last_infvulp_airhead is turns;
			let T be a random number between 1 and 3;
			if T is 1:
				say "     [one of]Overcome with a fit of giddiness, you giggle happily for no reason.[or]You bounce around happily, an empty-headed cheeriness filling you.[or]You're briefly distracted as a colorful scrap of paper blows by and you end up chasing it.[or]The vapid chorus to some silly pop song come to mind and soon you're humming along happily. As you try to sing along to the song in your head, you try to remember the rest of the lyrics, but keep substituting sexual words throughout without even realizing it.[in random order]";
				if morale of player < ( charisma of player + perception of player ) / 2:
					increase morale of player by 1; [half of 'maxmorale']
			else if T is 2:
				say "     [one of]You start listing off the creatures you've seen, trying to come up with your own [']top 10 sexiest['] list.[or]An air-headed, lustful thought pops into your head to go off in a random direction and ask the next creature you find to fuck you. It sounds like such a fun game full of surprises.[or]You lose track of what you were doing, sit down and start masturbating without a care in the world. You're doing this for a few minutes before reality sets back in and you regain control of yourself.[or]You plop yourself down with a happy giggle and masturbate with a vacant grin on your face. You stop suddenly a few minutes later when you suddenly realize what you're doing.[in random order]";
				increase libido of player by 3;
			else:
				say "     [one of]You end up staring at your reflection in [if the player is in the bunker]a bathroom mirror[else]a window[end if], smiling happily at how cute you look.[or]You are about to rush outside to find some cute mutants to [']play['] with. Thankfully you come to your senses and head back into cover.[or]Seeing a cute mutant passing by, you imagine having some fun with them and almost rush off after them as they turn the corner.[or]You're captivated by touching your altered features, especially pleased by your balloon-like nature.[or]You forget yourself momentarily, overcome by vapid, vulpine thoughts.[in random order]";
				decrease humanity of player by 2;
		else:
			now last_infvulp_airhead is -2147483648;

Section 4 - Endings

[
when play ends:
	if bodyname of player is "Inflatable Vulpine":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Inflatable Vulpine ends here.
