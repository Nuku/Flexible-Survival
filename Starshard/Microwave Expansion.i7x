Version 1 of Microwave Expansion by Starshard begins here.

"Makes additional items available to be purified by the microwave."

Section 1 - New Items

Table of Game Objects(continued)
name	desc	weight	object
"distilled cum"	"Some creature's seed boiled down to a concentrated, powdery, form? That can't be dangerous!"	1	distilled cum
"distilled booze"	"The results of purifying some tainted booze you found around the city. It might be a bit strong, but hopefully shouldn't be infectious." 	1	distilled booze

distilled cum is a grab object. understand "cum" as distilled cum. understand "distilled" as distilled cum. distilled cum is cum.
distilled booze is a grab object. understand "booze" as distilled booze. understand "distilled" as distilled booze.

the usedesc of distilled cum is "[DistilledCumUse]".
the usedesc of distilled booze is "[DistilledBoozeUse]".

to say DistilledCumUse:
	say "Or not so eagerly, as you don't think eating this powder will be the most pleasant experience... And you're gonna want something to wash it down with. It takes some effort to force the slightly bitter powder down your throat, but once it hits your belly, your body is filled with a sudden warmth that quickly pools and focuses between your legs...";
	increase thirst of player by 5;
	grow cock by 3;
	grow balls by 2;

to say DistilledBoozeUse:
	say "The liquid burns your throat as you swallow it down, but a very pleasant warmth spreads through your body as it hits your stomach, making you shudder as you grow more aroused and are hit by a small urge to giggle. Strong stuff, this.";
	decrease thirst of player by 5;
	if thirst of player < 0, now thirst of player is 0;
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 5;

instead of sniffing distilled cum:
	say "You might want to be careful about sniffing this, you don't want to snort this stuff.";

instead of sniffing distilled booze:
	say "Bringing the bottle to your nose to take a cautious sniff, you quickly pull it away as the strong scent of it hits your nose. Whew, definitely some strong stuff. Maybe you should've taken your chances with leaving it infectious instead.";

Section 2 - Additional items to purify

The purified of acid milk is "distilled milk".
The purified of batcubus milk is "distilled milk".
The purified of cheetah milk is "distilled milk".
The purified of cow milk is "distilled milk".
The purified of cowboy milk is "distilled milk".
The purified of acid milk is "distilled milk".
The purified of gryphon milk is "distilled milk".
The purified of margay milk is "distilled milk".
The purified of panther milk is "distilled milk".

The purified of blue gel is "food".
The purified of cheese is "food".
The purified of cheesecake is "food".
The purified of Dog Treats is "food".
The purified of Easter egg is "food".
The purified of gingerbread is "food".
The purified of musky cock flower is "food".
The purified of lembas bread is "food".
The purified of glob of goo is "food".
The purified of mammoth jerky is "food".
The purified of pink gel is "food".
The purified of pita bread is "food".
The purified of purple gel is "food".
The purified of psionic egg is "food".
The purified of psionic larva is "food".
The purified of roasted nuts is "food".
The purified of skunk goo is "food".
The purified of sticky sushi is "food".
The purified of tentacle tip is "food".

The purified of centaur cum is "distilled cum".
The purified of earthen seed is "distilled cum".
The purified of demon seed is "distilled cum".
The purified of fennec semen is "distilled cum".
The purified of egg nog is "distilled cum".
The purified of gecko cum is "distilled cum".
The purified of hawkman seed is "distilled cum".
The purified of orc cum is "distilled cum".
The purified of gryphon cum is "distilled cum".
The purified of pewter seed is "distilled cum".
The purified of rhino cum is "distilled cum".
The purified of sea dragon cum is "distilled cum".
The purified of silver semen is "distilled cum".
The purified of smilodon cum is "distilled cum".
The purified of wolf cum is "distilled cum".
The purified of orc femcum is "distilled cum".

The purified of mead horn is "distilled booze".
The purified of orc brew is "distilled booze".
The purified of Pan's Special Reserve is "distilled booze".
The purified of pony cider is "distilled booze".
The purified of Satyr wine is "distilled booze".
The purified of Satyress wine is "distilled booze".

The purified of sports drink is "soda".

Microwave Expansion ends here.
