Version 1 of Gray Squirrel by Stripes begins here.
[Version 1.1 - Endings added]

"Adds a Gray Squirrel infection for use with Macadamia."

Section 1 - Monster Responses

when play begins:
	add { "Gray Squirrel" } to infections of guy;
	add { "Gray Squirrel" } to infections of furry;
	add { "Gray Squirrel" } to infections of Rodentlist;

to say losetograysquirrel:
	say "non-combative.";

to say beatthegraysquirrel:
	say "non-combative.";

to say graysquirreldesc:
	say "non-combative.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Gray Squirrel"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "non-combative."; [ Successful attack message ]
	now defeated entry is "[beatthegraysquirrel]"; [ Text when monster loses. ]
	now victory entry is "[losetograysquirrel]"; [ Text when monster wins. ]
	now desc entry is "[graysquirreldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "at once adorable and sexy as a squirrel. You have cute whiskers, a short muzzle and rounded ears. You have a long mane of flowing hair that always seems permed";
	now body entry is "[if player is female]very sexy, always moving to show off its shapely form. You possess wide hips, a slender waist and overall feminine lines[else]very sleek and agile, with great flexibility[end if]. Your hands end in dainty little paws with claws made for climbing";
	now skin entry is "gray fur";
	now tail entry is "You have a big, bushy squirrel's tail.";
	now cock entry is "pink";
	now face change entry is "your head reshapes itself, jaw and cheekbones reforming into a small muzzle. Your ears change, growing rounded as long locks of well-styled hair flows out from the back of your head. Soon you have a cute and sexy squirrel's head atop your shoulders";
	now body change entry is "your spine starts to bend and flex as you become a cute and sexy squirrel with dainty, nimble paws with hard claws for climbing at your fingertips";
	now skin change entry is "smooth, fluffy gray fur spreads over you. It has a lighter tone across the chest and loins, drawing the eyes there";
	now ass change entry is "a long tail forms, rapidly filling out with a large, fluffy coat of gray fur and forming into a big squirrel tail with a noticeable curl at the end";
	now cock change entry is "it shifts and takes on a largely human form with a natural flesh tone to it"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 12;
	now int entry is 6;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 12; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6; [ Number of nipples the infection will give a player. ]
	now breast size entry is 6; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if player is female][one of]womanly[or]full-figured[or]wide-hipped[at random][else][one of]flexible[or]slender[or]cute[or]pretty[at random][end if]";
	now type entry is "[one of]squirrel[or]sciurine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 3 - Endings

when play ends:
	if bodyname of player is "Gray Squirrel":
		if humanity of player < 10:
			if HP of Macadamia >= 13:
				say "     As your humanity slips away and your squirrel nature takes over, you are drawn to rejoin Mack at the bunker and hole up with him there, turning it into a fortified squirrel den for the both of you. His plans come together as he brings in more and more of his nuts for safe storage, as well as a few other luxury items, including a large jacuzzi, which gets filled with nuts. Either there was much more than he'd let on at the factory or he's stored a lot more from elsewhere in the city. Either way, you're pleased with your mate's impressive nuts and are more than happy to show him just how you are by letting him fill you again and again with his hot nut butter. In this special love nest, you and he snuggle and fuck merrily, the squirrel topping you repeatedly on his mounds of nuts, in the nut jacuzzi and anywhere else he'd like to take you.";
				if player is female:
					say "     As his sexy doe, he pumps you full of his nut butter until you're plump and full with his kits. You are bred repeatedly by the virile squirrel, birthing several litters over the course of the winter. When spring comes, these horny squirrels, bucks and does alike, flood out into the city and beyond, breeding and infecting others en masse. You, now fully Hazel, and Macadamia stay in your love nest, continuing to breed and add to this new horde of energetic and lustful rodents.";
				else if player is mpreg_ok:
					say "     As his sexy [if player is male]male [end if]doe, he pumps you full of his nut butter until you're plump and full with his kits. Despite being [if player is male]male[else]neuter[end if] yourself, you can still become pregnant and so you are bred repeatedly by the virile squirrel, birthing several litters over the course of the winter. When spring comes, these well-hung horny bucks flood out into the city and beyond, breeding and infecting others en masse. You, now fully Hazelnut, and Macadamia stay in your love nest, continuing to breed and add to this new horde of energetic and lustful rodents.";
				else:
					say "     As his sexy male doe, he pumps you full of his hot seed over and over again. Your sexy body never stops turning him on and your virile mate is always ready for another go. You both spend a long and enjoyable winter together with the squirrel atop you almost constantly fucking you.";
			else:
				say "     As your humanity slips away and your squirrel nature takes over, you are drawn to the city park. You live there, snacking on the nuts and fucking those you come across. You catch a mate for yourself when the soldiers come through the city, dropping from the trees onto the lone, scared [if player is female or cocks of player is 0]guy as he's running through the woods[else]girl as she's running through the woods[end if]. Soon enough, you've got another sexy squirrel companion to snuggle and fuck.";
		else:
			if HP of Macadamia >= 13:
				say "     As the time for rescue draws near, you try your best to convince Mack to come with you. Finally, your sexy body wins out over the squirrel's hoard of nuts. He's very disappointed to have to leave most of it behind, only able to take a few jars of his specially prepared nuts with him in his pack. He gives you a grin and a wink, munching on some of them while the soldiers work to evacuate you before offering some to the soldiers. Thinking nothing of it, they snack on a few as well, finding them very tasty. Later, at the base, you spot signs of them starting to get a little squirrelly and grin. And soon enough, Mack's working on turning them into sexy does eager for another taste of the squirrel's nut butter.";
				say "     Having nothing more than a common squirrel infection, you are processed fairly quickly and eventually you and Mack are released, now with a pack of ex-soldier does in tow. You all take over a large peanut plantation, setting up a small roasting operation using Mack's special nut butter as their seasoning and distributing them. He breeds his harem of does, siring many more sexy, horny squirrels, who spread out and take over other plantations, adding to your mate's growing business empire[if player is female]. You, as his first and favorite mate, are his special doe and bred often. The squirrel still loves to call you Hazel affectionately[else if player is male]. You, as his first and favorite mate, are his special male doe and mounted often. The squirrel still loves to call you Hazelnut affectionately[else]. You, as his first and favorite mate, are his special doe and mounted often. Despite your own lack of gender, you are always eager to let Macadamia fuck you and fill you with his nut butter, and he still loves to call you Hazelnut affectionately[end if][if player is male]. Mack is also not a jealous lover, more than willing to share his does with you and let you mount and breed them, often while he watches or fucks you or another of the girls himself[end if].";
			else:
				say "     After being rescued by the soldiers, you're processed fairly quickly because of your common squirrel infection. Upon your eventual release, you find some work at a nut processing plant. Your affinity for nuts makes you a good employee, having a knack for spotting bad nuts and helping to improve the seasoning mixes[if player is not neuter]. Not that you tell anyone about that last part, instead slipping your own sexual fluids into the mix to add a little something special to them[else] by coming up with new combinations and improvements the company can make[end if]. The popularity of the company's product goes up and those people who start to show signs of going squirrelly from the product are simply put down to having picked up the infection from somewhere.";

Gray Squirrel ends here.
