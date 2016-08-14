Version 1 of Imp by Wahn begins here.
[Version 1 - New Creature]

"Adds a Male Imp to Flexible Survival's Wandering Monsters table, with impreg chance"

when play begins:
	add { "Imp" } to infections of guy;

Section 1 - Monster Responses

to say Imp wins:
	if hp of player > 0:		[player submits]
		say "     A";
	otherwise:			[player loses]
		say "     B";

to say Imp loses:
	say "     With a screech and an aborted flutter of wings the imp crashes down, face-planting on the ground. A groan comes from his throat as the little demon lets his wings slacken, then pushes himself up a little to focus on you with his large, expressive eyes. 'Look, err... fighting you wasn't such a great idea and... how about we call a do-over, hm? I'll just be on my way and you can do whatever you did before. No hard feelings,' he says and gives a somewhat desperate smile, showing a surprisingly wide mouthful of sharp little teeth. Snorting about the new tone from the formerly so boisteous creature, you pick him up with one hand and start thinking what to do with him now.";
	say "     [Imp Sex Menu]";
	
to say Imp Sex Menu:
	setmonster "Imp";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tie him up and leave him";
	now sortorder entry is 0;
	now description entry is "Hog-tie the little demon and hang him up for someone else to find";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Wrap him around your dick and jerk off";
		now sortorder entry is 1;
		now description entry is "Use the little demon as a cocksleeve";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Stick him in your pussy";
		now sortorder entry is 2;
		now description entry is "Use the little demon as a living dildo";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Stick him in your ass";
	now sortorder entry is 3;
	now description entry is "Use the little demon as a living dildo";
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
				if (nam is "Tie him up and leave him"):
					say "[ImpNoSex1]";
				if (nam is "Wrap him around your dick and jerk off"):
					say "[ImpSex1]";
				otherwise if (nam is "Stick him in your pussy"):
					say "[ImpSex2]";
				otherwise if (nam is "Stick him in your ass"):
					say "[ImpSex3]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Just leave instead?";
			if the player consents:
				now sextablerun is 1;
				say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving the bruised imp behind alone.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
to say ImpNoSex1:
	say "     A";
	
to say ImpSex1:
	say "     A";

to say ImpSex2:
	say "     B";

to say ImpSex3:
	say "     C";

to say ImpDesc:
	setmongender 3;
	say "     A rapid flutter of wings draws your attention to an incoming threat - in the shape of a small, red-skinned creature about a foot in height. The slender being has a pair of bat-like wings on his back, a spade-tipped tail and its relatively handsome head is crowned by an unruly mop of black hair out of which two curved horns poke up. With nothing but a skimpy loincloth on that flutters aside from the wind more often than not, there is little doubt that this little demon is male.";
	say "     Swooping in on you as he spots you, the imp gives you a lewd grin and clears his throat, then booms in a demonic tone, 'Kneel! You're now mine, mortal!' The voice does have a proper horror-film ring to it, but the effect is pretty underwhelming with him being so tiny. You can't quite suppress a snort at the mis-match of his larger than life self-image and the demon's body, drawing a hateful glare from the imp. 'We'll see who laughs after I give you a well-deserved thrashing!' he screams and raises a hand, forming a ball of fire in it about an inch in diameter.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Imp"; [Name of your new Monster]
	now attack entry is "[one of]Swinging his arm like a baseball pitcher, the imp sends a fire-ball flying your way. Thankfully it is pretty small, so you're just a little singed.[or]In a lightning-quick flying maneuver, the little demon swoops past your face and gives your nose a kick. Ouch, that smarts![or]Swooping down between your legs, the imp leaves thin bloody scratches near your ankles.[or]As he flutters straight towards your face, you deflect the imp with your hands, earning some bloody scratches in the process.[at random]";
	now defeated entry is "[Imp loses]";				[ Text or say command used when Monster is defeated.]
	now victory entry is  "[Imp wins]";					[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[ImpDesc]";							[ Description of the creature when you encounter it.]
	now face entry is "that a fairly handsome male demon, with large expressive eyes and a broad mouth filled with small but sharp teeth. A pair of curved horns stick out of the unruly tangle of black hair on your head";
	now body entry is "that of a slender and skinny humanoid. Attached to your back are a pair of bat-like wings. These are red and almost as large as your body";
	now skin entry is "red";
	now tail entry is "You have a tight and compact butt with a long, slender tail attached. It is a classic devil tail: thin, red and ending in a spaded tip.";
	now cock entry is "human-like";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into a demonic, if rather cute appearance, with large eyes and a mouth with sharp teeth. Small horns push out of the mop of black hair forming on your head"; 
	now body change entry is "it is reshaped into a pretty compact and small, but still slender form. You are soon distracted from this change by the strange feeling of your skin stretching and pressing out from your back. Looking over your shoulder, you stare in wonder as two bulges of flesh push out of your back, then popping open in an almost orgasmic release. You now have a pair of blood-red bat wings on your back";
	now skin change entry is "your skin seems to smooth out and pull tight on your body, leaving you with a smooth and blemishless red skin";
	now ass change entry is "it tightens up into a tight ass, above which a demonic tail with spaded tip sprouts from your lower back";
	now cock change entry is "it seems to grow partially erect and twitches eagerly, hardening in its human-like shape";
	now str entry is 8;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now hp entry is 50;
	now lev entry is 5;
	now wdam entry is 5;
	now area entry is "Nowhere";							[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;											[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 6;  							[ Length infection will make cock grow to if cocks]
	now cock width entry is 2;								[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;										[ Number of Breasts infection will give you. ]
	now breast size entry is 0;								[ Size of breasts infection will try to attain ]
	now male breast size entry is 0;					[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;											[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;								[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;								[ Width of female sex  infection will try and give you ]
	now libido entry is 10;										[ Amount player Libido will go up if defeated ]
	now loot entry is "";	          					[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 00;								[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1;											[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender";		[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "demonic";							[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;									[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;							[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;	  		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;						[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";					[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Events


Section 4 - Endings

when play ends:
	if bodyname of player is "Imp":
		if humanity of player is less than 10:   [succumbed]
			say "     ";
		otherwise:		[sane]
			say "     ";

Section 5 - Drop Item

Imp ends here.
