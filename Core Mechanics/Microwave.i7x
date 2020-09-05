Version 1 of Microwave by Core Mechanics begins here.
[ Version 1 - Put into its own file after expansion by Starshard ]

"Adds a Microwave to desinfect items in FS."

Section 1 - Basic Functionality

Lab Microwave is an object. It is in Primary Lab. It is fixed in place. Understand "microwave" as Lab Microwave.
Description of Lab Microwave is "A small microwave lays, almost hidden, in the corner, perhaps you could [bold type]microwave[roman type] something.".

Purifying is an action applying to one thing.

understand "microwave [owned grab object]" as purifying.

Check Purifying:
	if Lab Microwave is not visible and Brennan's Microwave is not visible and Library Microwave is not visible, say "Now where do you want to microwave that?" instead;
	if Player is in Breakroom and findwires is not 2 and fixedgens is not 2, say "The power isn't on." instead;

Carry out Purifying:
	if purified of noun is empty:
		say "You don't think that can get any more pure, at least not this way.";
		stop the action;
	let num be 0;
	ItemLoss noun by 1;
	say "After microwaving the [noun] on a low setting, you are left with [purified of the noun].";
	ItemGain purified of the noun by 1;

Section 2 - New Items

Table of Game Objects (continued)
name	desc	weight	object
"distilled cum"	"Some creature's seed boiled down to a concentrated, powdery, form? That can't be dangerous!"	1	distilled cum
"distilled booze"	"The results of purifying some tainted booze you found around the city. It might be a bit strong, but hopefully shouldn't be infectious." 	1	distilled booze

distilled cum is a grab object. understand "cum" as distilled cum. understand "distilled" as distilled cum. distilled cum is cum.
distilled booze is a grab object. understand "booze" as distilled booze. understand "distilled" as distilled booze.

Usedesc of distilled cum is "[DistilledCumUse]".
Usedesc of distilled booze is "[DistilledBoozeUse]".

to say DistilledCumUse:
	say "Or not so eagerly, as you don't think eating this powder will be the most pleasant experience... And you're gonna want something to wash it down with. It takes some effort to force the slightly bitter powder down your throat, but once it hits your belly, your body is filled with a sudden warmth that quickly pools and focuses between your legs...";
	increase thirst of Player by 5;
	grow cock by 3;
	grow balls by 2;

to say DistilledBoozeUse:
	say "The liquid burns your throat as you swallow it down, but a very pleasant warmth spreads through your body as it hits your stomach, making you shudder as you grow more aroused and are hit by a small urge to giggle. Strong stuff, this.";
	PlayerDrink 5;
	increase Libido of Player by 10;
	if Libido of Player > 100, now Libido of Player is 100;
	SanLoss 5;

instead of sniffing distilled cum:
	say "You might want to be careful about sniffing this, you don't want to snort this stuff.";

instead of sniffing distilled booze:
	say "Bringing the bottle to your nose to take a cautious sniff, you quickly pull it away as the strong scent of it hits your nose. Whew, definitely some strong stuff. Maybe you should've taken your chances with leaving it infectious instead.";

Section 3 - Items to purify

[ Water ]
Purified of dirty water is "water bottle".

[ Milk ]
Purified of acid milk is "distilled milk".
Purified of batcubus milk is "distilled milk".
Purified of cheetah milk is "distilled milk".
Purified of dog milk is "distilled milk".
Purified of cow milk is "distilled milk".
Purified of cowboy milk is "distilled milk".
Purified of acid milk is "distilled milk".
Purified of gryphon milk is "distilled milk".
Purified of margay milk is "distilled milk".
Purified of panther milk is "distilled milk".

[ Food ]
Purified of blue gel is "food".
Purified of cheese is "food".
Purified of cheesecake is "food".
Purified of Dog Treats is "food".
Purified of Easter egg is "food".
Purified of gingerbread is "food".
Purified of musky cock flower is "food".
Purified of lembas bread is "food".
Purified of glob of goo is "food".
Purified of mammoth jerky is "food".
Purified of pink gel is "food".
Purified of pita bread is "food".
Purified of purple gel is "food".
Purified of psionic egg is "food".
Purified of psionic larva is "food".
Purified of roasted nuts is "food".
Purified of skunk goo is "food".
Purified of sticky sushi is "food".
Purified of tentacle tip is "food".
Purified of awesome fruit is "food".
Purified of awesomer fruit is "food".
Purified of awesomest fruit is "food".
Purified of wyvern goop is "food".

[ Cum ]
Purified of centaur cum is "distilled cum".
Purified of earthen seed is "distilled cum".
Purified of demon seed is "distilled cum".
Purified of fennec semen is "distilled cum".
Purified of gecko cum is "distilled cum".
Purified of hawkman male cum is "distilled cum".
Purified of orc cum is "distilled cum".
Purified of gryphon cum is "distilled cum".
Purified of pewter seed is "distilled cum".
Purified of rhino cum is "distilled cum".
Purified of sea dragon cum is "distilled cum".
Purified of silver semen is "distilled cum".
Purified of smilodon cum is "distilled cum".
Purified of wolf cum is "distilled cum".
Purified of orc femcum is "distilled cum".

[ Alcohol ]
Purified of mead horn is "distilled booze".
Purified of orc brew is "distilled booze".
Purified of Pan's Special Reserve is "distilled booze".
Purified of pony cider is "distilled booze".
Purified of satyr wine is "distilled booze".
Purified of satyress wine is "distilled booze".
Purified of egg nog is "distilled booze".

[ Soda ]
Purified of sports drink is "soda".

Microwave ends here.
