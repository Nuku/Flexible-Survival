Version 1 of Snake For FS by Stripes begins here.

"Adds a Snake creature to Flexible Survivals Wandering Monsters table"


Section 1 - Monster Responses

when play begins:
	add ( "Snake" ) to infections of tailweapon;

to say losetosnake:
	if hp of player > 0:
		say "     Giving in, you sag to your knees and submit to the giant serpent";
	otherwise:
		say "     Beaten, you sag to your knees, no longer able to resist the giant serpent";
	say ".  The two-tone snake winds its body around yours, squeezing and constricting.  It nips and bites at you, seeping venom into your wounds.  You grow warm and woozy, and strangely aroused.  You start to moan as the snake's squeezing starts to feel more enjoyable and pleasing, though it's hard to say if it is squeezing you less or your perception of those clenching coils has changed.  As the venom continues to excite you, you cum hard before the serpent releases you and slithers away.";


to say beatthesnake:
	say "     Beaten, the snake withdraws a little and corkscrews the end of its tail tightly, flashing the rich orange underside of its tail in warning before slithering away with another hiss.";


to say snakedesc:
	say "     As you travel across the plains, there is a rustle in the grass beside you.  Turning quickly, you spot what would be a common ring-necked snake, were it not for its great size.  This serpent has grown to the size of a boa and is almost two meters in length.  This one has silvery scales across its body with bright yellow-orange along the underbelly.  Its dark gray head has an orange band at its neck and a pale yellow jaw, which blends into the brighter underside.  The enlarged snake hisses at you and attacks.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Snake";
	now attack entry is "[one of]The snake winds itself around your leg, squeezing as it tries to scale your body![or]The ring-necked snake snaps at your arm as you try to attack it![or]The ringneck hisses and snaps at your leg![or]The serpent manages to wind itself around you, constricting your body![or]As you attack, the snake whips its tail around your arms and latches on, squeezing them powerfully![at random]";
	now defeated entry is "[beatthesnake]";
	now victory entry is "[losetosnake]";
	now desc entry is "[snakedesc]";
	now face entry is "now a snake's head, with beady eyes and a forked tongue slipping from your jaws to sniff the air";
	now body entry is "a strange mix of man and serpent, having a slender, flexible body capable of slithering across the ground, but you still retain your arms and legs.  They are slender and flexible as well, ending in clawed digits.  You have a slit which automatically conceals your genitals when you begin to slither, but leaves them out and exposed otherwise";
	now skin entry is "smooth, silver-gray scales across your back and sides.  Your chest and inner thighs are a bright, caution-yellow with droplets of black bleeding into the colourful, scaly";
	now tail entry is "You have a long, snake's tail extending from your hips.  It has silvery scales with a bright orange underside.  When you are frightened or aggressive, it curls tightly and flashes the bright underside in warning.";
	now cock entry is "[one of]hemipenis[or]serpentine[at random]";
	now face change entry is "your head flattens and gains an extended jaw.  Your ears disappear down to small holes and your eyes move to the sides of your serpent head to form beady, black orbs.  There is a band of bright colour around your neck and on the underside of your jaw";
	now body change entry is "your spine pops repeatedly, extending and growing at it becomes more flexible.  As your body becomes more serpentine, you retain your limbs, but they become slender and flexible as well.  You are able to tuck against your sides to allow your snake body to slither across the ground or walk, as you prefer at any moment.  Your hands and feet gain sharp claws at the end of their digits";
	now skin change entry is "it is shed from your body, sliding off of you like a snake's skin, revealing scaly hide underneath.  Your new skin is silver in colour, with a bright patch of yellow from your jaw down to your inner thighs";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your hips shift and pop, your ass almost disappearing away as a long snake tail extends in its place";
	now cock change entry is "becomes slick and pointed as it bifurcates into hemipenes, like a snake or lizard.  While not two cocks, the pair can wriggle or slide against one another for stimulation while thrusting into a lover's hole";
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 18;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 10;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "nochange";		[ Invalid sex entry value, resulting in no changes to gender ]
	now hp entry is 20;			[ The monster's starting hit points. ]
	now lev entry is 2;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "Plains";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Snake":
		if humanity of player is less than 10:
			say "     As your serpent instincts take over as your humanity fades away, you travel back to the grassy plains at the edge of the city.  There you set up a nest in a burrow you made among the cluster of trees.  There a many of the enlarged snakes around and they make fine lovers when you cannot capture larger prey to sate your lusts before sating your hunger";
			if facename of player is "Snake":
				say ".  Your venom is quite powerful and arousing, getting your victims so aroused they cannot help but mate you vigorously before you finish them off";
			if cocks of player > 0:
				say ".  You do release a few of the females and herms after properly fucking them, somehow knowing they'll grow full of large eggs which will hatch into new snakes";
			if cunts of player > 0 and "Sterile" is not listed in feats of player:
				say ".  Your temporary lovers fill you with their seed, filling you with clutches of eggs which will hatch and grow into more enlarged serpents";
			say ".";
		otherwise:
			if facename of player is "Snake" and skinname of player is "Snake" and tailname of player is "Snake" and cockname of player is "Snake":
				say "     The military rescue gets you out of the infected city and back to civilization.  But you don't suit civilization very well anymore.  You manage to get a job at large firm which specializes at buying out smaller companies and selling them off.  You particularly enjoy the idea of you capturing and then crushing each like smaller prey.  While this makes you quite successful at your job, you make few friends.";
				say "     Outside of work, your predatory nature makes you lustful and aggressive.  You often travel the night streets in search of prey to slake your wild lusts upon.  Your arousing venom quickly gets them so horny that they willingly mate with you lustfully before you finally leave them there in a daze from your venom and the afterglow.  Your bite is very effective and your lovemaking so effective that you never hear word of any of them ever reporting the event or considering pressing charges at all[if cocks of player > 0], even those who grow full with eggs[end if], as a shady detective you hire informs you";
				if cunts of player > 0 and "Sterile" is not listed in feats of player:
					say ".  You gain a few clutches of eggs from these nocturnal lovers you pick.  Much like snakes in the wild, you feel no affection for these young serpents and ship them off to boarding schools at a very young age";
				say ".";
			otherwise:
				say "     The military rescue gets you out of the infected city, but not unchanged.  Having partially become a snake, you don't fit in well and have trouble finding a place for yourself.  Buying out a small pawn shop, you do fairly well.  Your strange appearance is helpful when dealing with some of your shadier customers, for you are not at all above fencing their [']found['] items for a small cut.  As well, being infected, you are a natural person for other infected people to deal with, and with raided items from the infected city providing a good source of cheap wares, you are able to make a good living.";


Snake For FS ends here.