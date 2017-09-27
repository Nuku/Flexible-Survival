Version 1 of Mall Rat For FS by Stripes begins here.
[Version 1]

"Adds an Mall Rat infection to Flexible Survival for use with Lucy the Mall Rat."

Section 1 - Monster Responses

when play begins:
	add { "Mall Rat" } to infections of furry;
	add { "Mall Rat" } to infections of Rodentlist;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mall Rat"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "non-combative."; [Text used when the monster succeeds on an attack]
	now defeated entry is "non-combative."; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "non-combative."; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "non-combative."; [ Description of the creature when you encounter it. ]
	now face entry is "that of a cute looking rat with a long, narrow muzzle and twitching whiskers. You've found a few rings and hoops to hang from your large, round ears. You find words like 'cool', 'rad', 'awesome', 'dude' and 'like' slipping into your vocabulary a lot more"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a slender mall rat, with nicely trimmed [if cunts of player > 0]and painted [end if]nails on the end of your rat-like fingers. You find your body very cool looking and you want to totally find the trendiest new clothes to help show it off"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "well-groomed brown fur across your"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long and slender rat's tail growing from your backside. You've found and hung some shiny hoops and bangles from it."; [ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]human[or]pink[purely at random]"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head fills with thoughts of just hanging out with your friends at the mall as a long, ratty muzzle forms on your face"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body shifts, becoming tall and slender with a [if cunts of player > 0]shapely[otherwise]handsome[end if] figure. Your hands and feet turn into nimble, rat-like paws with small claws at the fingertips. You find raiding a trendy store for some sweet threads to wear jumping much higher on your priority list of things to do during the apocalypse. And maybe some of those sweet sneakers with blinkers"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "creamy-brown fur spreads across your body. You're quite pleased to see that despite it having just grown in, it's already well groomed (except for a few stylish ruffles)"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long and slender rat tail grows from your rear. It is pink, hairless and definitely in need of some accessories"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts and becomes pleasantly human-like and flesh-toned"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 22; [ The monster's starting hit points. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 8; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 3; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 10; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]cool[as decreasingly likely outcomes]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "[one of]mallrat[or]rat[or]murine[or]ratty[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;
	now altcombat entry is "default";

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Definitions

Definition: a person is mallratfaced:
	if the facename of the player is "Mall Rat", yes;
	no;

Definition: a person is mallratskinned:
	if the skinname of the player is "Mall Rat", yes;
	no;

Definition: a person is mallratbodied:
	if the bodyname of the player is "Mall Rat", yes;
	no;

Definition: a person is mallratcocked:
	if the cockname of the player is "Mall Rat", yes;
	no;

Definition: a person is mallrattailed:
	if the tailname of the player is "Mall Rat", yes;
	no;


Section 4 - Endings

when play ends:
	if bodyname of player is "Mall Rat":
		if humanity of player is less than 10:
			if hp of Lucy <= 1:
				if Smith Haven Mall Lot South is known:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall growing more frequent, you make your way back there to join the rats in their happy life of coolness and relaxing. You have a happy life there with all those other cool dudes and pretty girls relaxing around the shopping center. You do make the occasional excursion out into the city. Usually, you only do these when one of the rats really needs something done out in the city";
					if hp of Ronda > 0:
						say ". The slut rats lurking below are occasionally a problem, but with an awesome [if cocks of player > 0 and cunts of player > 0]mall rat[else if cunts of player > 0]gal[otherwise]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes.";
					else:
						say ".";
				else:
					say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of finding someplace to settle down that'd be cooler than a dingy old bunker, your wanderings bring you to a large mall. Entering the shopping plaza, you are pleased to find other rats already living there. They turn out to be a great bunch of cool dudes and pretty girls for you to hang around with and you soon settle in there to stay, having found a new home for an awesome mall rat like you.";
			else:
				say "     Your life of roaming and wandering slowly becomes less and less attractive to you. With thoughts of the sweet mall and your even sweeter girlfriend waiting for you there, you make your way back there to join the rats in their happy life of coolness and relaxing. You and Lucy get along wonderfully, making what everyone agrees is a cute couple. But that doesn't stop either of you from continuing your horny habits of sleeping around, Lucy with many of the other mall rats and you with many of the mall's visitors and those you meet on your new much-rarer excursions out into the city. Usually, you only do these when one of the rats really needs something done out in the city. ";
				if hp of Ronda > 0:
					say "     The slut rats lurking below are occasionally a problem, but with an awesome [if cocks of player > 0 and cunts of player > 0]rat[else if cunts of player > 0]gal[otherwise]dude[end if] like you around to help, their uncoolness is kept from harshing everyone's good vibes.";
		else:
			if hp of Lucy <= 1:
				say "     You thankfully survive your time in the city until you're picked up and transported safely to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released. You travel away from the city and find a new city to call your home.";
				say "     You get a job managing a large mall, the work coming naturally to you. You are an easy-going, laid-back manager and make friends with all the store owners and patrons quite easily. The local youths like you as well, finding you much more tolerant of their slacker ways of hanging around the mall to while away their afternoons. They treat your mall well and you have little problem with shoplifting, graffiti or other complaints you hear from the directors of other malls. And when you see a few of them start to get rat tails of their own, you can't help but smile.";
			else:
				say "     As you're preparing for the military pick-up, Lucy tries to act cool about your leaving, but you know she's upset to see you going. Kissing her, you tell her that you and Rod have a plan. Hugging her, you head back to the bunker to take care of your final preparations and are transported to the military processing camp. While there is a slight interest in examining you as one of the few with the mall rat infection able to resist the pull to remain at the mall, the mall rats are known to be a peaceful and safe strain so you draw little scrutiny for it. You are eventually processed and released.";
				say "     It is at this point that you begin your search to find a new home. Using what information you can pick up from other survivors and the teams from Zephyr and RSX, you eventually follow some leads to Fairhaven. There you find a large and unoccupied mall in that much safer city. With a growing community of peaceful mutants living in one part of the city and large facilities for those other groups in another, you know you've found the place. You pass word along with a team heading back to Rod at Smith Haven Mall along with a rolled up copy of the mall map and several photos.";
				say "     It takes some time to arrange and quite a bit of convincing, but eventually Rod and a large portion of the mall rat population move to the Fairhaven Mall. Now safe from the slut rat menace, the rats happily make this new mall into their hope, cleaning it up and adding their own personal brand of cool to the huge shopping center, making it what you all know to be the true heart of the city you now call home.";
				say "     It takes a little convincing, but you manage to get Lucy to move into a home with you. Since it's right across the street from the mall, she doesn't feel so bad about that and quickly becomes acclimatized by adding several cool decorations from the mall. You particularly like the bubble gum machines she keeps stocked by the door. A welcome treat for you and any guests.";
				say "     She also reopens her nail salon, painting the nails for the mall rat girls and any other patrons who might want to make themselves look prettier. You work with Rod, keeping an eye on things around town for the more mall-ridden rats and acting as go-between for the rat colony leader and the other groups around town.";

Mall Rat For FS ends here.
