Version 1 of Prairie Dog For FS by Stripes begins here.

"Adds a Prairie Dog creature to Flexible Survival's Wandering Monsters table with impregchance"


Section 1 - Monster Responses

when play begins:
	add { "Prairie Dog" } to infections of hermaphrodite;
	add { "Prairie Dog" } to infections of furry;
	add { "Prairie Dog" } to infections of Rodentlist;

to say losetoprairiedog:
	say "     Beaten, the prairie dogs swarm over you, pulling you to the dusty ground.  They grope, fondle and tease you all over, rubbing their furry bodies over yours.  One pushes her human-sized cock into your mouth while others start stroking and pumping at theirs[if cocks of player > 1].  The horny burrowers push and scuffle with one another over your multiple cocks, unable to consider riding one without making it too hard for the others to enjoy the other(s).  In the end, they end up licking, kissing and nipping at them, making you moan and quiver[otherwise if cocks of player is 1 and cock length of player < 7].  Another of the burrowers finds her way over to your erection and sinks her wet cunt down onto it with a barking moan[otherwise if cocks of player is 1 and cock length of player < 10].  Another of the burrowers finds her way to your erection and struggles to take your proportionally huge cock into her wet cunt, eventually releasing a loud, barking moan as she manages to sink down onto it[otherwise if cocks of player is 1].  Your cock, incredibly huge to them is lavished attention on by a pair of the burrowers, who rub their furred breasts against your hard length as they lick, kiss and nip at it, making you moan and quiver[end if][if cunts of player > 0].  There is a bit of an argument over who will get to enjoy your cunt, but in the end, one emerges victorious and stabs her throbbing member into you.  She pounds away at you roughly, quite worked up by his scuffle over breeding rights with the others[otherwise if anallevel > 1].  There is another argument over who will get to enjoy your ass, but in the end, one emerges victorious and stabs her throbbing member into you[end if][if breasts of player > 2].  Having multiple sets of breasts, you are able to accommodate many of them, who each take one to fondle and grope while suckling from your hard nipple[otherwise if breasts of player is 2].  A pair of them get lucky and are able to claim your breasts, groping and fondling one each while their suckle from your hard nipple[end if].  They continue this wild orgy, cumming onto and into you until you are sticky with their seed and cumming hard yourself.  Satisfied, the rodents scurry back down into their holes, which close up behind them as if they had never been.[impregchance]";

to say beattheprairiedog:
	say "     After smacking around the prairie dog horde, they eventually have enough and retreat back underground, taking their wounded with them.  The holes they came out of close up behind them quickly, as if they had never been.";


to say prairiedogdesc:
	say "     You hear a squeaking, barking sound coming from behind you and turn around, but find nothing there.  Soon there are others all around you as the call is answered.  Still seeing nothing, you try to continue on only to have your legs sink into a hole in the ground.  More holes open up around you as prairie dog creatures emerge from the earth.  The sandy, brown rodents are larger than normal and are about three feet tall and walk on their hind legs.  Some have found toy hard hats, bandanas or small shovels to use, but most are nude save for their fur.  Their breasts seem quite large on their small bodies, as do their swollen sheaths and balls.  As you are pulling yourself out of the hole, they charge to attack you!";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Prairie Dog";
	now attack entry is "[one of]The prairie dogs bite and nip at your legs![or]The burrowing rodents swing at you with sticks and toy shovels from all sides![or]A team of the rodents charge at you, latching onto your legs and trying to pull you down![or]As you try to ward off the blows from those closest to you, four at the back take another by the arms and legs, swinging and launching her to land in your face  She pounds at your head while grinding her earthy-smelling ballsac in your face![or]One of the prairie dogs rides on the shoulders of another and climbs onto your back to nip and scratch at you while the others keep at you from all sides![or]Your legs and hips are scratched and clawed from the horde around you![at random]";
	now defeated entry is "[beattheprairiedog]";
	now victory entry is "[losetoprairiedog]";
	now desc entry is "[prairiedogdesc]";
	now face entry is "now that of a prairie dog, a burrowing rodent with small nose, sharp teeth and a sleek profile for sliding through tight tunnels";
	now body entry is "is short and a little plump looking, through able to stretch and wriggle through tight spaces.  You have short arms and legs ending in little paws with small, clawed fingers";
	now skin entry is "dirty brown fur";
	now tail entry is "Your tail is short and thin, covered in dusty, brown fur.";
	now cock entry is "pink";
	now face change entry is "it shifts and changes shape, growing a small, broad muzzle with a little nose.  Your ears move up and back, turning into round little ears that are held flat to your rodent-like head";
	now body change entry is "you become shorter and a little stockier.  Your arms and legs tingle and throb as they reshape themselves into short limbs ending in small paws with clawed digits.  You have a growing urge to dig through some soft, sandy dirt";
	now skin change entry is "you gain a coat of sandy brown fur";
	now ass change entry is "ass shifts and grows into a plump bottom.  Even as your ass is changing, a small tail extends from your behind";
	now cock change entry is "becomes pink and human-like";
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 16;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 12;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 12;
	now int entry is 14;
	now cha entry is 12;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 52;			[ The monster's starting hit points. ]
	now lev entry is 5;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Plains";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 6;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 3;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 60;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 1;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]chubby[or]flexible[at random]";
	now type entry is "rodent";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Prairie Dog":
		if humanity of player is less than 10:
			say "     As your new instincts take over, your body shrinks down further, becoming smaller and end up about three feet tall, though your sexual organs remain unchanged in size.  You head back to the dry plains and wander them.  As you go, you can see the dry grasses continuing to slowly spread over the ruined buildings, making it much more beautiful, you feel.  Coming to what appears to be a grassy spot like all others, you can read the subtle signs now and start to dig.  You burrow through the soft earth with ease, enjoying the feel of it against your paws as you tunnel down.  You only have to go a few feet to find the underground tunnels of the other prairie dogs and scurry through along them to find the warren.";
			say "     Joining the others, you have a wonderful romp to welcome you among them before its back to work.  You and the others continue your tunnels and the demolition of the last few buildings.  As some soldiers are sent to investigate the plains, they are quickly surrounded by burrowing rodents emerging all around them.  They are pounced and mated by the coterie until they are prairie dogs themselves and pulled down into the tunnels.";
			if centaurmate is 1 or centaurmate is 2:
				say "     In an effort to seal off the plains area, the military starts with electric fences, then moving on to a wide ditch and high concrete wall to keep the mutated centaurs contained.  This barrier proves to be of little consequence to your people, who simply dig a long, secret tunnel past it, emerging far from their lines.  Most are happy to stay in the great grasslands that have been created, but some long to spread out, escaping and travelling out to other prairies and farmlands at the heart of the continent to create new warrens there.";
			otherwise:
				say "     The military's containment efforts, while sufficient for dealing with the centaurs and other creatures of the plains, are easily ignored by your people.  For those few who wish to leave this beautiful, dry grassland that has been created, they need only take a secret escape tunnel dug by the coterie.  Those who leave make their way to other prairies and farmlands at the heart of the continent to create new warrens there.";
		otherwise:
			say "     You survive your experience in the infected city, but don't escape unscathed.  With your stature reduced and your body much like that of an overgrown prairie dog, you don't fit in well with humanity at large.  After some odd jobs, you buy yourself an empty plot of land in the country and build a small home for yourself above ground with a much more extensive burrow underneath.  This work comes to you quite easily, having an affinity for the earth and tunnelling.  The burrow you create is quite modern, with pipes and electrical sent down from the small entryway building, allowing you modern conveniences in a warm, dry den.";
			say "     Word of your ingenious construction spreads and your home is bought by a mole man for a sizeable sum.  With the funds, you build yourself a new place and set up a construction firm to create other.  You specialize in building and digging modern burrows for underground dwelling infected people.  After only a few years, you are quite successful and make a final, grand burrow for yourself.  This one is larger both above and below ground, being on a much larger plot of land.  The upper rooms are mainly for your guests, friends and lovers who prefer such living quarters while the ultra-modern burrow below with its throw rugs, pillows and HDTV is cozier for you.";

[ Edit this to have the correct creature name as well]
Prairie Dog For FS ends here.