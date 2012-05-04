Version 1 of Wildcat For FS by Stripes begins here.

"Adds a Wildcat creature to Flexible Survivals Wandering Monsters table with impregchance"


Section 1 - Monster Responses

when play begins:
	add { "Wildcat" } to infections of hermaphrodite;
	add { "Wildcat" } to infections of furry;

to say losetowildcat:
	say "     Defeated by the powerful feline, you are pushed to the ground beneath her as she growls.  She places a heavy paw on your chest, holding you down with her weight, but careful not to crush you if you're don't resist.  Her paws slide to the leather belts used to hold on her armour and unbuckles her chestpiece and codpiece.  Her exposed breasts and cock are quite large, impressive organs you're sure you'll be getting familiar with quite soon.";
	if cunts of player > 0 or a random chance of 1 in 3 succeeds:
		say "     Grabbing you in her strong paws, she drags you over to a nearby car and presses you down atop its hood.  Getting atop you, she buries your head in her ample bosom.  You can feel her hard cock probing between your legs and you whimper softly in a mix of worry and anticipation of having that big, throbbing, feline cock stuffed into you.  With her strong scent surrounding you, you nuzzle over to her large nipple and start licking and sucking at it, making her rumble in pleasure.";
		say "     With her cock lined up against your [if cunts of player > 0]wet pussy[otherwise]tight asshole[end if], she thrusts steadily into you, rather restrained for wild feline[if cunt length of player < 10 or cunt width of player < 6].  Her massive cock spreads your tight hole open painfully, making you thankful for her slow approach[otherwise].  Her massive cock sinks into you slowly, making you moan as it stuffs you[end if].  As she thrusts, you quickly grow to enjoy the powerful mating of the feline atop you.  You can feel the strength of her large body under the soft fur covering it.  The hard cock stuffing you stimulates your sensitive inner walls with soft barbs that only add to your pleasure.  As you nurse from her large nipple, your rewarded with creamy milk.  It is very arousing, if having a slightly rusty taste to it.";
		say "     As your excitement builds, so does her pace, pounding harder and faster, making the car creak beneath you as the whole front end sags on its old shocks with each hard slam into you near the end.  There is no discomfort at all from this wild sex, quite the opposite actually.  Each powerful push she makes sends shivers of delight through your loins until finally you start cumming hard.  As your [if cunts of player > 0]cunt[otherwise]ass[end if] clenches down around her thick piston in climax, she mrowls loudly and starts pumping blast after blast of thick, feline seed into you until you're stuffed to the point of overflowing.  When she's finally done draining her large balls into you, she gets off the hood and walks off, leaving you there leaking her cum from your abused but very satisfied body.";
		say "[impregchance]";
	otherwise:
		say "     Holding you pinned down under her, she takes her huge cock in a paw and starts stroking it quickly.  With it pointed at your face, you can see the throbbing meat clearly and get spurts of her precum splattering onto you almost immediately.  As you watch her paw sliding over that feline shaft, you can see her heavy ballsac twitching moments before her hot semen starts to blast onto you in thick, heavy spurts.  With you face coated in her seed, you can't help but have some leak into you mouth when she applies a little extra pressure to your chest to get you to gasp.  Getting a taste of it, you can't help but start licking your lips to get more.  Soon, your running your hands through it to gather it up to suck off your fingers.  Satisfied, the powerful feline leaves you like that, strapping her makeshift armour back on while you greedily gobble down as much of her cum as you can get.";

to say beatthewildcat:
	say "     Managing several strong hits on the armoured feline, you force her back.  She growls makes to swing at you again, but then pounces ten feet up onto a pile of junk, then leaps off somewhere on the other side, making her escape.";


to say wildcatdesc:
	say "     Emerging from a pile of junk, rises a looming, feline form.  This gigantic feline is over seven feet tall and about five wide at the shoulders.  Her head is shaped much like a housecat's, but much larger and more feral.  She has some striped markings and [one of]a notched ear[or]a scarred muzzle[or]a scratched nose[or]is using a Buick hood ornament as an eyepatch[at random].  The big kitty has loose pieces of junk, mostly car panels, parts and hubcaps strapped on to act as both camouflage and armour over her brown and rust-coloured fur.  She has warped and bent a car hood into a chestplate, covering her large breasts and midriff.  Given the marks on it and the size of her massive paws, she probably did it by hand.  Looking down further, you spot another bulging plate between her legs.  Given you experience with creatures in this city, you don't need to see underneath it to know what's waiting there for you if this wildcat has her way.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Wildcat";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]Your ears ring after the wildcat bashes you in the head with her powerful fist![or]The giant cat grabs a rusty muffler from the pile of clubs you in the side with it![or]The feline herm tackles you with her huge body![or]The grabs your head and slams it against her armoured chestplate.  Clang![or]The wild feline grabs large handfuls of debris from the junkpile and hurls it at you with a growl![or]Wrapping her powerful arms around you in a bearhug, she grinds her covered crotch against you![or]Finding an old car radiator in the junk, she wields it with ease and batters you with it![or]The big feline slashes at you with her powerful claws, growling deep in her throat![or]The wildcat herm gets her paws on you, grabbing your ass and groin roughly as she fondles you with a rough chuckle![at random]";
	now defeated entry is "[beatthewildcat]";
	now victory entry is "[losetowildcat]";
	now desc entry is "[wildcatdesc]";
	now face entry is "that of a feline, with some striping across your brow";
	now body entry is "large and powerfully built.  You have broad shoulders and strong arms and legs.  Your hands and feet have become feline paws, though your fingers are still able to flex and manipulate objects";
	now skin entry is "a coat of rusty fur with some darker brown markings which has spread across your";
	now tail entry is "You have a fluffy, feline tail with rusty, brown fur that twitches from time to time.";
	now cock entry is "[one of]barbed[or]feline[or]barbed feline[or]rust red[at random]";
	now face change entry is "your head changes and shifts, becoming that of a feral wildcat";
	now body change entry is "your body shifts and changes, becoming larger than your once human body.  Your shoulders grow broad and powerful before the changes spread down your arms and legs and the same happens to them.  As the infection spreads to your hands and feet, they shift into feline paws";
	now skin change entry is "rusty, brown fur spreads across your body.  Dark brown markers appear on your back and sides as the infection spreads through you";
	now ass change entry is "your hips become strong and firm as a long, feline tail grows from your ass.  It is covered in rusty, brown fur";
	now cock change entry is "shifts and turns a rust red colour as it takes on a feline shape and gains soft, stimulating barbs";
	now str entry is 22;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 18;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 18;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 100;			[ The monster's starting hit points. ]
	now lev entry is 9;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 16;			[ Monster's average damage when attacking. ]
	now area entry is "Junkyard";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 10;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 6;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 16;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 33;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]


when play ends:
	if bodyname of player is "Wildcat":
		if humanity of player is less than 10:
			say "     As it becomes harder to maintain your human thoughts, you are drawn back to the large scrapyard.  There, your instincts lead you across the maze of wrecked cars and old junk to a work area.  Several large, powerful felines are at work here, stripping down the old cars and fashioning weapons and armour from them.  You pick up a car side panel and start to warp it into shape with your powerful paws.  There is a brief glance from hulking cats before they get back to work, accepting you among them as you start to make your own suit of junkyard armour.  It is a long process to make, but it is your own and you celebrate by letting one of the sexy felines help you take it off.  Your yowls of lust carry across the junkyard that night, and many other nights as you enjoy the pleasures of your big, powerful lovers.";
			say "     When the soldiers come into the city in force, you and the other felines are ready for them, having fortified by the scrapyard with improvised weapons and defences.  You capture or drive off the squads sent against you, acting as protectors of those who live in the discarded junk.  Your people make trades with several other factions, selling tools and weapons from your forges for supplies or captured soldiers to further add to your numbers.";
		otherwise:
			say "     Once out of the infected city, your powerful body makes many people you meet worried at first.  But you are a gentle giant, more interested in tinkering with old junk or working on cars.  You get a job as a mechanic and are quite successful at it.  Your powerful body is an asset at this work, helping you move heavy parts with ease.  Working for a trucking company, you enjoy coming in each day to maintain their fleet of diesel trucks.  Its particularly fun to show off in front of the tough truckers, easily slinging around heavy engine parts with one hand.  Impressed, you even get a few who aren't put off by your feline form and who'll slip off with you to your office for a little break after dropping off their big rig.";

[ Edit this to have the correct creature name as well]
Wildcat For FS ends here.