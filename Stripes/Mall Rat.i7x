Version 1 of Mall Rat by Stripes begins here.
[Version 1]

"Adds a Mall Rat infection to Flexible Survival for use with Lucy the Mall Rat."

Section 1 - Creature Responses

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Rat"; [name of the overall species of the infection, used for children, ...]
	add "Mall Rat" to infections of RodentList;
	add "Mall Rat" to infections of FurryList;
	add "Mall Rat" to infections of NatureList;
	add "Mall Rat" to infections of BipedalList;
	add "Mall Rat" to infections of TailList;
	now Name entry is "Mall Rat"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "non-combative."; [ Successful attack message ]
	now defeated entry is "non-combative."; [ Text when monster loses. ]
	now victory entry is "non-combative."; [ Text when monster wins. ]
	now desc entry is "non-combative."; [ Description of the creature when you encounter it. ]
	now face entry is "that of a cute looking rat with a long, narrow muzzle and twitching whiskers. You've found a few rings and hoops to hang from your large, round ears. You find words like 'cool', 'rad', 'awesome', 'dude' and 'like' slipping into your vocabulary a lot more"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a slender mall rat, with nicely trimmed [if Player is female]and painted [end if]nails on the end of your rat-like fingers. You find your body very cool looking and you want to totally find the trendiest new clothes to help show it off"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "well-groomed brown fur across your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a long and slender rat's tail growing from your backside. You've found and hung some shiny hoops and bangles from it."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]pink[purely at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your head fills with thoughts of just hanging out with your friends at the mall as a long, ratty muzzle forms on your face"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body shifts, becoming tall and slender with a [if Player is female]shapely[else]handsome[end if] figure. Your hands and feet turn into nimble, rat-like paws with small claws at the fingertips. You find raiding a trendy store for some sweet threads to wear jumping much higher on your priority list of things to do during the apocalypse. And maybe some of those sweet sneakers with blinkers"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "creamy-brown fur spreads across your body. You're quite pleased to see that despite it having just grown in, it's already well groomed (except for a few stylish ruffles)"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a long and slender rat tail grows from your rear. It is pink, hairless and definitely in need of some accessories"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts and becomes pleasantly human-like and flesh-toned"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 22; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 10; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]cool[as decreasingly likely outcomes]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]mallrat[or]rat[or]murine[or]ratty[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;





Section 3 - Definitions

Definition: a person is mallratfaced:
	if FaceName of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratskinned:
	if SkinName of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratbodied:
	if BodyName of Player is "Mall Rat", yes;
	no;

Definition: a person is mallratcocked:
	if CockName of Player is "Mall Rat", yes;
	no;

Definition: a person is mallrattailed:
	if TailName of Player is "Mall Rat", yes;
	no;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Mall Rat Infection"	"Infection"	""	Mall Rat Infection rule	1000	false

This is the Mall Rat Infection rule:
	if Player has a body of "Mall Rat":
		trigger ending "Mall Rat Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if HP of Lucy <= 1:
				if Smith Haven Mall Lot South is known:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall growing more frequent, you make your way back there to join the rats in their happy life of coolness and relaxing. You have a happy life there with all those other cool dudes and pretty girls relaxing around the shopping center. You do make the occasional excursion out into the city. Usually, you only do these when one of the rats really needs something done out in the city";
					if HP of Ronda > 0:
						say ". The slut rats lurking below are occasionally a problem, but with an awesome [if Player is herm]mall rat[else if Player is female]gal[else]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes";
					say ".";
				else:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of finding someplace to settle down that'd be cooler than a dingy old bunker, your wanderings bring you to a large mall. Entering the shopping plaza, you are pleased to find other rats already living there. They turn out to be a great bunch of cool dudes and pretty girls for you to hang around with and you soon settle in there to stay, having found a new home for an awesome mall rat like you.";
			else:
				say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall and your even sweeter girlfriend waiting for you there, you make your way back there to join the rats in their happy life of coolness and relaxing. You and Lucy get along wonderfully, making what everyone agrees is a cute couple. But that doesn't stop either of you from continuing your horny habits of sleeping around, Lucy with many of the other mall rats and you with many of the mall's visitors and those you meet on your new much-rarer excursions out into the city. Usually, you only do these when one of the rats really needs something done out in the city";
				if HP of Ronda > 0:
					say ". The slut rats lurking below are occasionally a problem, but with an awesome [if Player is herm]rat[else if Player is female]gal[else]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes";
				say ".";
		else:
			if HP of Lucy <= 1:
				say "     You thankfully survive your time in the city until you're picked up and transported safely to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released. You travel away from the city and find a new city to call your home.";
				say "     You get a job managing a large mall, the work coming naturally to you. You are an easy-going, laid-back manager and make friends with all the store owners and patrons quite easily. The local youths like you as well, finding you much more tolerant of their slacker ways of hanging around the mall to while away their afternoons. They treat your mall well and you have little problem with shoplifting, graffiti or other complaints you hear from the directors of other malls. And when you see a few of them start to get rat tails of their own, you can't help but smile.";
			else:
				say "     As you're preparing for the military pick-up, Lucy tries to act cool about your leaving, but you know she's upset to see you going. Kissing her, you tell her that you and Rod have a plan. Hugging her, you head back to the bunker to take care of your final preparations and are transported to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released.";
				say "     It is at this point that you begin your search to find a new home. Using what information you can pick up from other survivors and the teams from Zephyr and RSX, you eventually follow some leads to Fairhaven. There you find a large and unoccupied mall in that much safer city. With a growing community of peaceful mutants living in one part of the city and large facilities for those other groups in another, you know you've found the place. You pass word along with a team heading back to Rod at Smith Haven Mall along with a rolled up copy of the mall map and several photos.";
				say "     It takes some time to arrange and quite a bit of convincing, but eventually Rod and a large portion of the mall rat population move to the Fairhaven Mall. Now safe from the slut rat menace, the rats happily make this new mall into their hope, cleaning it up and adding their own personal brand of cool to the huge shopping center, making it what you all know to be the true heart of the city you now call home.";
				say "     It takes a little convincing, but you manage to get Lucy to move into a home with you. Since it's right across the street from the mall, she doesn't feel so bad about that and quickly becomes acclimatized by adding several cool decorations from the mall. You particularly like the bubble gum machines she keeps stocked by the door. A welcome treat for you and any guests.";
				say "     She also reopens her nail salon, painting the nails for the mall rat girls and any other patrons who might want to make themselves look prettier. You work with Rod, keeping an eye on things around town for the more mall-ridden rats and acting as go-between for the rat colony leader and the other groups around town.";

Mall Rat ends here.
