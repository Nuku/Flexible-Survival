Nermine by Sarokcat begins here.

"Adds a large group of scattered npcs to Flexible Survival with a variety of responses and goals..."

Section 1- The Mysterious Shop

The Mysterious Shop is a room.

The description of The Mysterious Shop is "Bells jingle softly as you enter this rather quiet and eccentric shop, this strange shop seems to be still open and doing fine even without power. Softly scented candles cast a dim light over shelves covered with strange and unusual items which seem to be displayed in no discernable order.  You can[apostrophe]t see any of the normal things you would expect to find in a mall shop however, no nicely packed boxes, no brand name items clamoring for your attention, no well marked shelves, just a rather large strange assortment of items spread out as far as the eye can see. Children[apostrophe]s toys are placed next to expensive looking decorations,  candle holders lying next to ornamental fans from the orient, almost as if someone merely grabbed anything that interested them, and then spread their new treasures out for people to see. Compared to most other shops you have been in, this one seems quite strange and mysterious indeed although with the city in the state it is currently in you probably shouldn[apostrophe]t be too surprised at the strange things you find, although for some reason you can never quite remember seeing this shop here before....";
Nermine is in The Mysterious Shop.
Bargain Bin is in The Mysterious Shop.

before entering the Mall Atrium:
	change the west exit of mall atrium to nothing;
	change the east exit of mall atrium to nothing;
	change the north exit of mall atrium to nothing;
	change the northwest exit of mall atrium to nothing;
	change the northeast exit of mall atrium to nothing;
	change the outside exit of The Mysterious Shop to The Mall Atrium;
	let T be a random number between one and five;
	if T is 1:
		change the west exit of mall atrium to The Mysterious Shop;
	if T is 2:
		change the east exit of mall atrium to The Mysterious Shop;
	If T is 3:
		change the north exit of mall atrium to The Mysterious Shop;
	If T is 4:
		change the northeast exit of mall atrium to The Mysterious Shop;
	otherwise:
		change the northwest exit of mall atrium to The Mysterious Shop;



section 2- Nermine

Nerminetalk is a number that varies.
Nerminearoused is a number that varies.
Nerminefound is a number that varies.
LastNerminefucked is a number that varies. LastNerminefucked is usually 250.
Nerminefucked is a number that varies. Nerminefucked is usually 0.

Nermine is a woman.
The description of Nermine is "You spot what must be the store owner, her strange countenace making you blink several times in surprise.  Leaning up against the store counter next to the register is a lovely Female Jackaless, her soft black fur shining softly as she is framed in the soft light from the candles on the counter.  The rather Anubis like figure seems to be currently dressed in a rather loose fitting white t – shirt as she leans forward on the counter, her face is brushed with soft swirls of silver paint as she grins at you.";


The conversation of Nermine is { "[Nerminetalking]" };

To say Nerminetalking:
	if Nerminetalk is 0:
		say "'Ah a new customer!' The strange jackal says with a grin as you approach the counter, her voice soft and beautiful though tinged with a strange accent you don[apostrophe]t quite recognize. 'My name is Nermine, and I will be happy to help you out with whatever you need!' The jackal woman continues, the candlelight shining off her eyes and her silver makeup as she tilts her head to get a better look at you. 'You look like you have plenty of problems, well don[apostrophe]t worry! Whatever the problem, Nermine[apostrophe]s shop probably has some solution for it.' Nermine says with a small smile, 'Of course use solution at own risk and all that, and some of my items might not come that cheaply..' She continues, her light voice seeming tinged with amusement as she gestures around at the strange array of items scattered around the shop, 'Or perhaps you just wish to try your luck yes? Nermine has several items that might be fun for you to try out relatively cheaply...' She gestures at the small bin near the counter marked 'Bargain bin', 'Either way, you let Nermine know what she can do for you, or with you.' The sexy Jackaless says with a wink of her silver painted eye, making you wonder if she meant that last comment to be quite as suggestive as it sounded...";
		increase Nerminetalk by 1;
		stop the action;
	if Nerminetalk is 1:
		say "'[one of]You need help finding what you need? Nermine can help![or]Don[apostrophe]t hesitate to ask me any questions you might have![or]You say shop was at other end of mall before? Are you really sure?[or]Doesn[apostrophe]t the candlight seem rather romantic and mysterious to you too?[or]Have you tried our new vanishing drinks? Nermine will give you free sample as soon as she can find where they went...[or]I hear there is a nice museum in this town, maybe you can find some nice items there as well.[or]I keep meaning to go see what happened at the egypt exhibit, but it doesn[apostrophe]t do to leave the store unattended for long...[or]I am actually enjoying the strange things going on outside, I get fewer odd looks from the customers now, of course I get fewer customers as well...[or]Did you know jackals were considered to be very mystical animals and sacred to Anubis?[or]What a very fine [cock of player] cock you have there!' Nermine says, with a smile, making you blush[or]I like your [skin of player] skin, but Nermine very much prefers her own soft fur, it is a lovely shade of black don[apostrophe]t you agree?[at random]'";






Instead of fucking the Nermine:
	if lastNerminefucked - turns is less than 6:
		say "'Sorry, I know you want to have more fun with me, and I certainly wouldn[apostrophe]t mind having some more fun with you,' The jackaless says with a soft wink, 'But I do have a store to run here sadly, and even if I don[apostrophe]t have many customers to take care of, and definitely no customers as nice as you, who knows what trouble the stock would get up to if I wasn[apostrophe]t here to keep an eye on things most of the time.' She says as she gestures with one of her black furred hands at the shelves full of odd items packing the store. 'Don[apostrophe]t worry though, we should be able to have a little time to ourselves again as soon as I have taken care of things here, do come back and see me then!' Nermine says, a small grin pulling at the edges of her black muzzle as she stares at you with lust filled eyes.";
		stop the action;
	otherwise:
		now lastNerminefucked is turns;
		say "'Sorry, but Nermine[apostrophe]s sex scenes are still under consideration by higher powers known as game writers,' The jackal woman tells you, her strange terms making you blink,  'Do not worry though, Nermine is looking forward to much fun times playing with you, and is sure they will get to it very quickly before Nermine puts curse on them.'."; 



when play ends:
	if Nerminearoused is 2:
		if humanity of player is less than 10:
			say ".";
		otherwise:
			say "..";


Section 3- Magic Bargain Bin

Bargain Bin is a man.
The description of Bargain Bin is "This large bin seems filled with a number of small packets, bottles, and charms, who knows what you could find in there? Above the bin someone has posted a recently drawn sign reading, 'You try bargain bin? You pull it out you bought it, one pick for one packet of food and one bottle of water.' Reading the sign you aren[apostrophe]t exactly sure just how much of a bargain this bin really is right now, but you could still find something useful right? Maybe you should try HUNTing a bargain, or SORTing through the bin?";

strangebottledrink is a number that varies.

bargainhunting is an action applying to nothing.

understand "hunt bargain" as bargainhunting;
understand "hunt bin" as bargainhunting;
understand "buy bargain" as bargainhunting;
understand "sort bin" as bargainhunting;
understand "hunting bargain" as bargainhunting;

check bargainhunting:
	if Bargain Bin is not visible, say "what?" instead;


carry out bargainhunting:
	if "food" is listed in invent of player and "water bottle" is listed in invent of player:
		say "Pulling out a small bit of food and a water bottle you set them out on the counter where Nermine quickly makes them disappear. Having paid your fee you eagerly begin to sort through the bargain bin to see what you can find...[line break]";
		delete food;
		delete water bottle;
		let Z be a random number between one and ten;
		if Z is 1:
			Say "You pull out a small urn of some sort, and look at it curiously, Nermine sighs behind you as she sees what you are holding, 'Is funeral urn, very old, and very bad luck, Nermine is not sure how it found its way into bargain bin again, but she will try to find a better place to put it this time.' Nermine says as she takes the small urn from your hands, and places it down on a shelf somewhere behind the counter.  'Nermine only hopes bad luck hasn[apostrophe]t rubbed off on you already, she will give you kiss for luck to make sure.' The Jackal says as she leans over the counter even  further, her black muzzle brushing over your mouth even as you open it to respond.  Before you know it her tongue is exploring your mouth even as her muzzle rubs up against your face, in what is actually a surprisingly pleasant kiss. After a second, she pulls her tongue out of your mouth, leaving you standing there slightly stunned as she gives you another soft lick across the cheek. 'There that should counter any bad luck urn might have given you, let me know if you find the sneaky thing in bin again.' The sexy jackaless says with a wink as she returns to her normal place at the counter.  After a second you realize that you now don[apostrophe]t have anything to show for your hunt through the bargain bin, but at least you got a nice kiss for your efforts? That[apostrophe]s something of a bargain isn[apostrophe]t it?";
		if Z is 2:
			If strangebottledrink is less than 3:
				Say "Looking through the bin, you spot a small vial labeled 'Drink Me', Amused at the old Alice in Wonderland reference, you decide to pull the small vial out and take a sip. You are somewhat disappointed when nothing magical seems to happen immediately and your size remains the same, although your body does seem to be strangely invigorated by the unusual drink, and you realize that you are no longer hungry or thirsty.";
				now thirst of player is 0;
				now hunger of player is 0;
				increase strangebottledrink by 1;
				stop the action;
			if "Spartan Diet" is listed in feats of the player:
				say "Finding another of those vials of liquid tucked away within the bin, you decide to take the small vial of liquid with you, as refreshing as the small vial is it is obviously worth at least two full water bottles when you go to drink it later...";
				Add "water bottle" to invent of player;
				Add "water bottle" to invent of player;
			otherwise:
				Say "You smile as you once more come across one of those strange and very refreshing vials of liquid, quickly pulling  the small vial out of the bin you waste no time in taking a small sip of the strangely coloured liquid within. To your disappointment the drink seems somewhat less refreshing this time, although you can still feel your body tingling as the liquid obviously does something to you.";
				add "Spartan Diet" to feats of the player;
		If Z is 3:
			if "Strong Back" is listed in feats of the player:
				say "Hunting through the strange bin of unusual bargains, you feel some kind of strap tangle around your arm, and quickly pull it out to see what you managed to catch. Much to your disappointment, the strap is attached to a small ornamental bag of some sort, glancing in the bag you can see that it is empty, and even putting something inside it seems to have no effect on either the bag or the item. Sighing you tuck your new purchase into your pack, realizing that sometimes you win, and sometimes you lose.";
			otherwise:
				Say "Reaching around in the strange bin of treasures, you feel some kind of strap tangle around your arm as you move the unusual items around. Pulling your arm out you see that you have actually pulled out a strange type of belt pouch, and realize you just ended up purchasing it by pulling it out of the bin. Sighing you take a look at the pouch, and realize it is empty, and just another small storage bag to you. At least it looks like it can be strapped easily to your backpack, as you tie your new pouch onto your backpack, you begin to put a few small items in it just to help sort things out, and are surprised to realize that items in your new pouch don[apostrophe]t seem to weigh much of anything compared to those outside the pouch. Excited at this new discovery, you quickly fill your new pouch up to the brim, and while it may not be large enough to hold everything you have, it certainly makes carrying your current load much easier!";
				add "Strong Back" to feats of the player;	
		If Z is 4:
			Say "Sorting through the strange bin of unusual treasures, your eye catches on a breathtaking silver necklace, and you slowly pull it out of the bin, admiring its fine craftsmanship. Unable to resist the urge to put your lovely new piece of jewelry on, you swiftly clasp it around your neck, and while it doesn[apostrophe]t seem to do anything strange or magical, you certainly admire the way it accentuates your good looks in the mirror that Nermine produces for you to look into.[line break]";
			increase charisma of player by 1;
			say "your charisma has increased by 1!";
		if Z is 5:
			if "Like Attracts Like" is listed in feats of the player:
				if "Kinky" is listed in feats of the player:
					say "Sorting through the strange bin, you feel a small static shock from one of the items in the bin, and curious pull the item out.  You find yourself holding a strange pendant of some kind, an unusual occult design stamped on side side of the pendant, while on the other side is the image of some undetermined beast. While the amulet is actually kind of eerie, you did just buy it so you slip it over your head as you look around the shop, somehow seeming almost instantly in tune with your inner instincts.";
					decrease humanity of player by 25;
				otherwise:
					say "Rummaging around in the small bin, you find your hands rustling up against several small folded pieces of paper. Curious you pull the folded sheaf of paper, and unfold it so you can get a better look at what is written inside. Much to your surprise, you see the papers are filled with detailed images of beasts and humans copulating in all sorts of strange and twisted manners.  As you slowly look through the papers, you find yourself growing increasingly more and more aroused by the strange scenes you find depicted there, wondering just how it would feel to take part in some of those actions.  Hearing movement behind you, you quickly fold the papers up and stick them in your pack with a blush as you notice Nermine leaning over curiously to see what you are staring at so intently.  Perhaps you will take time out later to enjoy your newfound purchase again, although it seems strange that you never realized just how kinky you really were before now...";  
					add "Kinky" to feats of the player;
			otherwise:
				Say "Hunting through the bin, you find your hands drawn to a small charm of some sort, something about it seems to just draw you to it, pulling it out of the bin you find yourself admiring the strange looking charm, it almost looks just like you do now.  You wonder if this charm would be as attractive to other people or infected like yourself, and end up shrugging as you hang your new purchase off your backpack, you suppose you will find out!";
				add "Like Attracts Like" to feats of the player;
		if Z is 6:
			Say "Poking absently through the bin, your eye catches on a small catlike charm, tucked away in the corner.  Pulling the charm out you smile at the stylized image of a pouncing cat as you rub the strange metal charm between your fingers.  Suddenly the charm seems to slip and melt through your fingers, and you look around hurriedly to see where your new purchase went, strangely you can[apostrophe]t seem to see the little charm anywhere, but even as you look you realize your body is feeling slightly different....";
			infect "Felinoid";
			increase dexterity of player by 1;
			say "your dexterity has increased by 1!";
		If Z is 7:
			Say "Sorting through the bin, your eye is caught by a strange sparkly piece of jewelery in the bin, the pretty piece making you smile as you pull it out.  Closer inspection reveals that the item is nothing more then a simple piece of very sparkly costume jewelry, but somehow the strange piece makes you feel better as you stare at it.[line break]";
			if "Magpie Eyes" is listed in feats of the player:
				say "Smiling at your new piece of jewelry, you tuck your newest acquisition away with the rest of your small collection of glittery and shiny things. Finding a new treasure to keep makes you feel even better about yourself as you look around the store, your keen eyes seeking out new treasures to add to your collection.[line break]";
				increase perception of player by 1;
				say "your perception has increased by 1!";
			otherwise:
				say "Flipping the small piece of jewelry over and over in your hands, your eyes seem drawn to its every sparkly movement, the little piece of glass and gilt fascinating you with the pleasant way it catches your gaze. Finally you blink, and happy at your new purchase tuck it away for later, the first piece of what might eventually become a small collection of glittery and shiny things, as your eyes dart around the area, now trained to better trained to look for small useful items in the oddest places, especially if they are shiny!";
				add "Magpie Eyes" to feats of the player;
		If Z is 8:
			Say "Reaching deep into the bin, you find a strange square box, running your fingers over its smooth sides you notice it seems to have odd lines carved into it. Deciding to pull the box out for a better look, you realize you have just purchased some kind of chinese puzzle box, the small blocks seeming to be able to pushed or moved around the surface of the wooden box.  Eager to see what might be inside, you spend some time working at and manipulating the box, slowly figuring out its secrets as you draw closer to finishing the puzzle.  Finally with a triumphant cry you manage to slide the lid of the box open, only to find a small piece of paper within, pulling out the paper you note it reads, 'The treasure is not in the finding, but in the journey.' All that work for a small fortune cookie like saying?  Still you feel that all that work on the puzzle box has definitely helped you at puzzling out problems, so maybe it wasn[apostrophe]t a waste after all...[line break]";
			increase intelligence of player by 2;
			say "your intelligence has increased by 2!";
			stop the action;
		if Z is 9:
			Say "Reaching deep into the bin, you find something seems to bite you and draw your hand back out of the bin quickly, you stare at your fingers as blood drips slowly from a nasty wound on your hand.  Nermine seems rather embarrassed by the whole affair as she helps you bandage up your new wound, and the jackal glares at the bin for a minute as if reprimanding whatever bit you.  'Nermine is sorry, sometimes things are not happy to end up in bargain bin, can make for bad misunderstandings,' The jackal says with a shrug, as she quickly refunds your food and water, and even places an extra packet of food and bottle of water out for the inconvenience.";
			Add "food" to invent of player;
			Add "food" to invent of player;
			Add "water bottle" to invent of player;
			Add "water bottle" to invent of player;
			decrease hp of player by 25;
		otherwise:
			say "Rummaging through all the strange items in the bin, you find yourself pulling out a strange item you are sure you have seen somewhere else around the city, and sigh despondantly as you tuck your new common item back in your backpack.";
			let minorbargain be a random number from 1 to number of filled rows in the table of random critters;
			choose row minorbargain from the table of random critters;
			if there is a loot entry:
				if loot entry is not " ":
					add loot entry to invent of player;
					say "you acquired 1 [loot entry][line break]";
					add "dirty water" to invent of player;
					say "you acquired some dirty water!";
				otherwise:
					add "pirate bandanna" to invent of player;
					say "you acquired a pirate bandanna!";
			otherwise:
				add "Chipped tooth" to invent of player;
				say "you acquired a Chipped tooth!";
	Otherwise:
		say "Sorting through your pack, you are ashamed to realize you can[apostrophe]t afford to draw something out of the bargain bin right now.  You blush under Nermine[apostrophe]s curious gaze, as you casually move off to look through the rest of the store instead.";




Nermine ends here.
