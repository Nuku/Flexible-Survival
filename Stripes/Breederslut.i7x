Version 1 of Breederslut by Stripes begins here.

"Adds a Breederslut infection for use with Dominick."

Section 1 - Monster Responses

when play begins:
	add { "Breederslut" } to infections of furry;
	add { "Breederslut" } to infections of Caninelist;		[list of canine infections]
	add { "Breederslut" } to infections of Knotlist;		[list of cock infections with a knot]

to say losetobreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say beatthebreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say breederslutdesc:
	say "ERROR-Breederslut - You should not be able to encounter them.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Breederslut";
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";
	now defeated entry is "[beatthebreederslut]";
	now victory entry is "[losetobreederslut]";
	now desc entry is "[breederslutdesc]";
	now face entry is "that of a cute doggy with a mid-length muzzle, pointed ears and a happy if vapid expression";
	now body entry is "quite short, not even five feet tall, and with a cute, feminine build.  As a Shiba Inu, you've got an overall canine frame and, while bipedal, are quite comfortable moving down onto all fours (for presenting yourself).  You limbs are short and end in partially paw-like hands.  Just above your crotch, you have the word [']fucktoy['] tattooed there, always showing through any fur or scales you might have";
	now skin entry is "golden brown and snowy white fur now covers your";
	now tail entry is "You have a short, fluffy tail that curls up cutely.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "pleasant tingles spread across your face.  Your mouth distorts, forming a cute little muzzle with a happy doggy smile on it.  Your eyes shift position and your ears become short and pointed.  By the time the transition is over, you're left with the head of a very cute Shiba Inu atop your shoulders";
	now body change entry is "you start to transform.  Shivers of pleasure run through you as your body is changed, becoming small and canine.  By the time it's done, you've become an cute and feminine Shiba Inu anthro.  After a momentary pause, fresh pinpricks can be felt just above your crotch.  Looking down, you can see a tattoo-like marking saying [']fucktoy['] appear there";
	now skin change entry is "pinpricks spread across your skin.  From these points, a fluffy coat of fur forms.  It's a lovely shade of golden brown across your limbs, shoulders and back, and a snowy white across your chest and neck and chin";
	now ass change entry is "your lower spine tingles.  A short, fluffy tail forms above your ass, curling up cutely so as to never hide your cute tush";
	now cock change entry is "takes on a markedly canine shape.  It keeps a soft, pinkish flesh tone while gaining a sheath as well.  And while it strangely appealing to you, you feel no immediate desire to put your new doggy dong to the test";
	now str entry is 8;
	now dex entry is 8;
	now sta entry is 8;
	now per entry is 8;
	now int entry is 8;
	now cha entry is 16;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 12;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 16;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 12;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "cute";
	now type entry is "[one of]canine[or]doggy[or]doge[or]pedigree[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Breederslut":
		if humanity of player is less than 10:
			if hp of Dominick is 0:
				say "***never met Dominick.";
			otherwise:
				say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Breederslut ends here.
