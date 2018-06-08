Version 1 of Bargain Bin by Wahn begins here.
[ Originally Designed by Sarokcat ]
[ Version 1 - Rewrite by Wahn]

"Adds the Bargain Bin to Nermine's Mysterious Shop in Flexible Survival"

Section 1 - Bargain Bin

when play begins:
	now bargainbinusagetotal is 0;

Bargain Bin is a man.
The description of Bargain Bin is "     This large bin seems filled with a number of small packets, bottles, and charms, boxes, pieces of fabric and who knows what else. You can't even see the bottom of it. Certainly an interesting opportunity to find... something in there. Above the bin someone has posted a recently drawn sign reading, 'Bargain Bin. Pay and draw one item out. Price: One packet of food and one bottle of water. No returns and refunds!' You aren't exactly sure just how much of a bargain this bin really is right now, but you could still find something useful right? Maybe you should try [link]hunt[as]sort Bargain Bin[end link]ing a bargain, or [link]sort[as]sort Bargain Bin[end link]ing through the bin?".

the linkaction of Bargain Bin is "Possible Actions: [link]smell[as]smell Bargain Bin[end link], [link]sort[as]sort Bargain Bin[end link][line break]";

the scent of bargain bin is "The bargain bin smells like omens and mysteries... at a discount price.".

strangebottledrink is a number that varies.
bargainbinusagetotal is a number that varies.

bargainhunting is an action applying to nothing.

understand "hunt bargain" as bargainhunting.
understand "hunt bin" as bargainhunting.
understand "buy bargain" as bargainhunting.
understand "sort bin" as bargainhunting.
understand "sort bargain bin" as bargainhunting.
understand "sort bargain" as bargainhunting.
understand "hunting bargain" as bargainhunting.

check bargainhunting:
	if Bargain Bin is not visible, say "What?" instead;

carry out bargainhunting:
	if food is owned and water bottle is owned:
		say "     Pulling out a small bit of food and a water bottle you set them out on the counter where Nermine quickly makes them disappear. Having paid your fee you eagerly begin to sort through the bargain bin to see what you can find...";
		LineBreak;
		say "[bold type]You lose 1 food![roman type][line break]";
		decrease carried of food by 1;
		say "[bold type]You lose 1 water bottle![roman type][line break]";
		decrease carried of water bottle by 1;
		LineBreak;
		increase bargainbinusagetotal by 1;
		let Z be a random number between 1 and 30;
		if Z is 1: [funeral urn /kiss]
			Say "     You pull out a [bold type]small urn of some sort[roman type], and look at it curiously. Nermine sighs behind you as she sees what you are holding. 'What Nermine's customer found is a funeral urn. It is very old, and very bad luck to posess. Nermine is not sure how it found its way into her bargain bin again, but she will try to find a better place to put it this time.' With that said, the jackaless gently takes the small urn from your hands, and places it down on a shelf somewhere behind the counter. 'The apologetic jackaless hopes bad luck hasn't rubbed off on her dear visitor already. So much so that she will make sure,' Nermine says as she leans over the counter even further, her black muzzle brushing over your mouth even as you open it to respond.";
			say "     Before you know it, her tongue is exploring your mouth even as her muzzle rubs up against your face, in what is actually a surprisingly pleasant kiss. After a second, she pulls her tongue out of your mouth, leaving you standing there slightly stunned as she gives you another soft lick across the cheek. 'There. That should counter any bad luck the urn might have caused. Nermine would suggest to let her know immediately if the sneaky urn starts appearing at other places once more,' the sexy jackaless says with a wink as she returns to her normal place at the counter.";
			LineBreak;
			say "     After a second, you realize that you now don't have anything to show for your hunt through the bargain bin, but at least you got a nice kiss for your efforts? That's something of a bargain, isn't it?";
			ScoreGain 5;
		else if Z is 2: [magic drink]
			If strangebottledrink < 3:
				Say "     Looking through the bin, you spot a small vial labeled [']Drink Me[']. Amused at the old Alice in Wonderland reference, you decide to pull the small vial out and take a sip. You are somewhat disappointed when nothing magical seems to happen immediately and your size remains the same, although your body does seem to be strangely invigorated by the unusual drink, and you realize that [bold type]you are no longer hungry or thirsty[roman type].";
				now thirst of player is 0;
				now hunger of player is 0;
				increase strangebottledrink by 1;
			else if "Spartan Diet" is listed in feats of the player:
				say "     Finding another of those vials of liquid tucked away within the bin, you decide to take the small vial of liquid with you, as refreshing as the small vial is it is obviously worth at least two full water bottles when you go to drink it later...";
				LineBreak;
				say "[bold type]You gain 2 water bottles![roman type][line break]";
				increase carried of water bottle by 2;
			else:
				Say "You smile as you once more come across one of those strange and very refreshing vials of liquid. Quickly pulling the small vial out of the bin, you waste no time in taking a small sip of the strangely colored liquid within. To your disappointment the drink seems somewhat less refreshing this time, although you can still feel your body tingling as the liquid obviously does something to you.";
				LineBreak;
				say "[bold type]'Spartan Diet' has been added to your feats![roman type][line break]";
				add "Spartan Diet" to feats of the player;
		else if Z is 3: [magic bag]
			if "Strong Back" is listed in feats of the player:
				say "     Hunting through the strange bin of unusual bargains, you feel some kind of strap tangle around your arm and quickly pull it out to see what you managed to catch. Much to your disappointment, the strap is attached to a small, ornamental bag of some sort. Glancing in the bag, you can see that it is empty, and even putting something inside it seems to have no effect on either the bag or the item. Sighing, you tuck your new purchase into your pack, realizing that sometimes you win, and sometimes you lose.";
			else:
				Say "     Reaching around in the strange bin of treasures, you feel some kind of strap tangle around your arm as you move the unusual items around. Pulling your arm out, you see that you have actually pulled out an odd belt pouch and realize you just ended up purchasing it by pulling it out of the bin. Sighing, you take a look at the pouch and realize it is empty. Just another small storage bag then. At least it looks like it can be strapped easily to your backpack. After securing your new pouch, you begin to put a few small items in it just to help sort things out, and are surprised to realize that items in your new pouch don't seem to weigh much of anything compared to those outside the pouch. Excited at this new discovery, you quickly fill your new pouch up to the brim, and while it may not be large enough to hold everything you have, it certainly makes carrying your current load much easier!";
				LineBreak;
				say "[bold type]'Strong Back' has been added to your feats![roman type][line break]";
				add "Strong Back" to feats of the player;
		else if Z is 4: [charisma necklace]
			Say "     Sorting through the strange bin of unusual treasures, your eye catches on a [bold type]breathtaking silver necklace[roman type]. Slowly pulling it out of the bin, you admire its fine craftsmanship. Unable to resist the urge to put your lovely new piece of jewelry on, you swiftly clasp it around your neck, and while it doesn't seem to do anything strange or magical, you certainly admire the way it accentuates your good looks in the mirror that Nermine produces for you to look into.";
			LineBreak;
			say "[bold type]Your charisma has increased by 1![roman type][line break]";
			increase charisma of player by 1;
		else if Z is 5: [kinky porn]
			if "Like Attracts Like" is listed in feats of the player:
				if player is kinky:
					say "     Sorting through the strange bin, you feel a small static shock from one of the items buried in it. Curiosity makes you grasp whatever that was and pull it out. You find yourself holding a [bold type]metal pendant of some kind[roman type], an unusual occult design stamped on one side, while on the other is the image of some undetermined beast. While the amulet is actually kind of eerie, you did just buy it so you slip it over your head as you look around the shop, somehow seeming almost instantly in tune with your inner instincts.";
					LineBreak;
					say "[bold type]Your sanity has decreased by 25![roman type][line break]";
					decrease humanity of player by 25;
				else:
					say "     Rummaging around in the strange bin, you find your hands rustling up against several small folded pieces of paper. Curious you pull the sheaf of paper out and unfold it so you can get a better look at what is written on it. Much to your surprise, you see the papers are filled with [bold type]detailed stories and images of beasts and humans copulating[roman type] in all sorts of strange and twisted manners. As you slowly look through the papers, you find yourself growing increasingly more and more aroused by the strange scenes you find depicted there, wondering just how it would feel to take part in some of those actions. Hearing movement behind you, you quickly fold the papers up and stick them in your pack with a blush as you notice Nermine leaning over curiously to see what you are staring at so intently. Perhaps you should study your purchase later and in private. Strange, before now, you never realized just how kinky you really are...";
					LineBreak;
					say "[bold type]'Kinky' has been added to your feats![roman type][line break]";
					add "Kinky" to feats of the player;
			else:
				Say "     Hunting through the bin, you find your hands drawn to a small charm of some sort. There is just something irresistible about it... you can't help but take hold of the piece of jewelry and pull it out of the bin. Holding it up, you find yourself admiring the [bold type]strange-looking charm[roman type]. It almost looks like a stylized version of your own form right now! You wonder if this charm would be as attractive to other people or infected like yourself, and end up shrugging as you hang your new purchase off your backpack. Guess you'll find out before long!";
				LineBreak;
				say "[bold type]'Like Attracts Like' has been added to your feats![roman type][line break]";
				add "Like Attracts Like" to feats of the player;
		else if Z is 6: [cat charm]
			if furry is not banned and guy is not banned:
				Say "     Poking absently through the bin, your eye catches on a [bold type]small cat-like charm[bold type] tucked away in the corner. Pulling the litle piece of jewelry out you smile at the stylized image of a pouncing cat as you rub the strange metal charm between your fingers. Then suddenly, it seems to slip through your fingers - or rather melt, as you try to catch it and notice that the thing didn't slip but rather is covering part of your fingers now as a silver sheen. Before you have much time to stare at it, the flowing metal seems to be absorbed by your skin, vanishing without a trace. As you scratch your head, puzzled about the strange effect, you realize your body is feeling slightly different...";
				LineBreak;
				say "[bold type]Your dexterity has increased by 1![roman type][line break]";
				increase dexterity of player by 1;
				infect "Felinoid";
			else:
				say "     Poking absently through the bin, your eye catches on a [bold type]small cat-like charm[bold type], tucked away in the corner. Pulling the litle piece of jewelry out you smile at the stylized image of a pouncing cat as you rub the strange metal charm between your fingers. Then suddenly Nermine snatches the golden charm from your hand with a handkerchief and carefully puts it into a jewelry box. 'Nermine can tell that her customer will not want this item. She is sorry, but the bargain bin can be unpredictable at the best of times. Full of apologies, the jackaless offers her guest the paid items in return, as well as a suggestion. Maybe Nermine's dear customer should be thinking to not be so picky. More fun is to be had that way,' she adds philosophically.";
				LineBreak;
				say "[bold type]You gain 1 food![roman type][line break]";
				increase carried of food by 1;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
		else if Z is 7: [magpie jewelry]
			Say "     Sorting through the bin, your eye is caught by a [bold type]sparkly piece of jewelry[roman type] half-hidden under other items. The pretty little thing is making you smile at finding it as you pull it out. Closer inspection reveals that the shiny item is piece of costume jewelry - certainly not worth all that much, but it looks pretty, so you're happy nonetheless at calling it your own.";
			if "Magpie Eyes" is listed in feats of the player:
				say "     Smiling at your new piece of jewelry, you tuck your newest acquisition away with the rest of your small collection of glittery and shiny things. Finding a new treasure to keep makes you feel even better about yourself as you look around the store, your keen eyes seeking out new treasures to add to your collection.";
				LineBreak;
				say "[bold type]Your perception has increased by 1![roman type][line break]";
				increase perception of player by 1;
			else:
				say "     Flipping the small piece of jewelry over and over in your hands, your eyes seem drawn to its every sparkly movement. The little piece of glass and gilt fascinates you with the pleasant way it reflects light and catches your gaze. Finally you blink, and happy at your new purchase tuck it away for later, the first piece of what might eventually become a small collection of glittery and shiny things. Your eyes dart around the area, now trained to better pick out small useful items in the oddest places, especially if they are shiny!";
				LineBreak;
				say "[bold type]'Magpie Eyes' has been added to your feats![roman type][line break]";
				add "Magpie Eyes" to feats of the player;
		else if Z is 8: [puzzle box]
			Say "     Reaching deep into the bin, you find a hand-sized square box. Running your fingers over its smooth sides you notice it seems to have odd lines carved into it. Deciding to pull the box out for a better look, you realize you have just purchased some kind of [bold type]Chinese puzzle box[roman type], covered in small blocks seemingly able to be pushed or moved around the surface of the small container. Eager to see what might be inside, you spend some time working at and manipulating the box, slowly figuring out its secrets as you draw closer to finishing the puzzle. Finally with a triumphant cry you manage to slide the lid of the box open, only to find a small piece of paper within. Pulling out the paper you note it reads, 'The treasure is not in the finding, but in the journey.' All that work for a small fortune-cookie saying? Still you feel that all that work on the puzzle box has definitely helped you at puzzling out problems, so maybe it wasn't a waste after all...";
			LineBreak;
			say "[bold type]Your intelligence has increased by 2![roman type][line break]";
			increase intelligence of player by 2;
		else if Z is 9: [biting monster]
			Say "     Reaching deep into the bin, you feel something moving under all of those strange items piled in it! A heartbeat later, whatever it is chumps down on your searching fingers, making you withdraw your hand immediately. Looking down at it, you can't help but stare as blood slowly drips from your fingers, trickling down from a [bold type]nasty bite-wound[roman type] on your hand. Nermine seems rather embarrassed by the whole affair as she helps you bandage up your new wound, and the jackal glares at the bin for a minute as if reprimanding whatever bit you. 'Nermine is sorry, sometimes things are not happy to end up in bargain bin. The jackaless apologizes and decides to make good for such a sad misunderstanding,' the jackal says with a shrug, then quickly refunds your food and water, and even places an extra packet of food and bottle of water out for the inconvenience.";
			LineBreak;
			say "[bold type]You lose 25 HP![roman type][line break]";
			decrease HP of player by 25;
			if HP of player < 0:
				now HP of player is 1;
			say "[bold type]You gain 2 food![roman type][line break]";
			increase carried of food by 2;
			say "[bold type]You gain 2 water bottles![roman type][line break]";
			increase carried of water bottle by 2;
		else if Z is 10: [pocket watch]
			say "     Sorting through the bin, you come across an [bold type]old-fashioned pocket watch[roman type]. Your curiosity getting the better of you, you pull the antique out of the bin to examine it closer. The unusual brass watch seems to feel slightly warm in your hands as you wind it up, and you are hit with a sudden dizzy spell as soon as you finish winding the watch, making you stagger slightly. Blinking, you catch yourself and stare around you feeling slightly befuddled, before realizing the watch is no longer in your hands. Sighing at the loss of the interesting looking timepiece, you prepare to move on, though you feel like something has changed, even if you can't quite put your finger on what...";
			extend game by 16;
		else if Z is 11: [FS Game Box]
			say "     Pushing items around in the bin, you feel a cardboard box move beneath your hands. Deciding to give this a closer look, you pull it out of the bin. You blink in surprise as you stare at the image of one of those blue-furred gryphons grinning back at you from what appears to be a computer game. Looking at the box title, you see it says, 'Flexible Society, the best-selling transformative strategy game in years!' Blinking at that strange proclamation, you look at the box some more, before deciding to take it with you. Maybe once you get out of here and find a working computer you can find out just what all the fuss is about...";
			ScoreGain 100;
			stop the action;
		else if Z is 12: [full transformation items]
			say "[plrtcl]";
		else if Z is 13: [Mag-iphone]
			say "     Rummaging through the bin, you find yourself blinking as you feel the familiar sleekness of a cell phone. Pulling the small phone out, you note that it appears to be labeled as a Mag-iPhone, causing you to wonder about what kind of strange knock-off phone you managed to find. Poking at the device a little closer, you find out much to your surprise that not only does it still have some power, it seems to have a signal as well! Feeling excited you quickly try dialing to try to get someone outside of the containment area for help. You grin as the phone begins to ring, only to blink and stare at the phone as someone answers in a strange almost purring voice...";
			say "     You aren't quite sure what the purring voice is saying, the thick accent of the female speaker making it hard to understand. Though you think she is telling you that you have reached someplace called Siz'Calit in the land of Nimin, and wants to know if you are calling about the large delivery of pus fruit she ordered... Feeling very confused, you apologize to the strange woman about the obviously wrong number, before hanging up and staring at the phone for several minutes. Deciding maybe it would be best to not try calling any other random numbers, you slip the Mag-iphone back into the bargain bin where it belongs, before continuing on your way.";
			ScoreGain 20;
		else if Z is 14: [infection samples]
			say "     Hunting through strange bin full of items, you find yourself touching what appears to be some sort of plastic bag. Overcome with curiosity, you quickly pull it out of the bin and take a look inside. You are surprised to see that the bag contains several [bold type]neatly labeled samples taken from creatures inside the city[roman type]. 'Ah Nermine was looking for those!' you can hear the jackal-like shopkeeper say as you inspect the items, making you look up at her instead. 'If the fine-looking customer doesn't want to keep those, Nermine is more than willing to buy them found items,' she says with a grin on her soft, silver-painted muzzle while you try to decide what to do with the items.";
			if furry is banned:
				say "     Taking another quick glance at the contents, you decide that you have no interest in any of the bestially infected items and return the bag to Nermine while she puts your earlier payment back on the counter. Checking the items she lays out, you find yourself grinning as you realize the sly jackal-woman slipped you an extra package of food as well.";
				LineBreak;
				say "[bold type]You gain 2 food![roman type][line break]";
				increase carried of food by 2;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
			else:
				say "     [bold type]Do you give them back to the jackaless?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, let her have her stuff back.";
				say "     ([link]N[as]n[end link]) - Nope. These are yours now!";
				if player consents:
					LineBreak;
					say "     Deciding you definitely don't need any more of the infectious items from creatures within the city, you quickly hand the bag full of stuff over to Nermine while she puts your earlier payment back on the counter. Checking the items she lays out, you find yourself grinning as you realize the sly jackal-woman slipped you an extra package of food as well.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					increase carried of food by 2;
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of water bottle by 1;
				else:
					LineBreak;
					say "     Deciding to keep the items yourself, since they could come in handy in this strange city you are stuck in, you stuff the bag into your pack. Nermine sighs slightly at your choice and shakes her head as she goes back to standing at the counter.";
					LineBreak;
					if girl is not banned:
						say "[bold type]You gain 1 tuft of chin fur![roman type][line break]";
						increase carried of tuft of chin fur by 1;
						say "[bold type]You gain 1 skunk goo![roman type][line break]";
						increase carried of skunk goo by 1;
					if guy is not banned:
						say "[bold type]You gain 1 chipped tooth![roman type][line break]";
						increase carried of chipped tooth by 1;
						say "[bold type]You gain 1 pirate bandana goo![roman type][line break]";
						increase carried of pirate bandana by 1;
					if hermaphrodite is not banned:
						say "[bold type]You gain 1 dog milk![roman type][line break]";
						increase carried of dog milk by 1;
					say "[bold type]You gain 1 honeycomb![roman type][line break]";
					increase carried of honeycomb by 1;
					say "[bold type]You gain 1 fish![roman type][line break]";
					increase carried of fish by 1;
		else if Z is 15: [Dr Matt samples]
			if girl is banned and ( hermaphrodite is banned or furry is banned ):
				say "     Searching through the bargain bin, you find a [bold type]small travel pouch[roman type] tucked away in the corner. Curious about what may be inside, you pull the container out and open its zipper. Sadly, when you flip the flap at the top open, all you find is a wad of used bubblegum and a bottle of water. Ugh! Oh well, can't win them all and at least you got some water back...";
				LineBreak;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
			else:
				say "     Searching through the bargain bin, you find a [bold type]small travel pouch[roman type] tucked away in the corner. Curious about what may be inside, you pull the container out and open its zipper. Sadly, when you flip the flap at the top open, you blink in surprise as you note it seems to contain a bottle of water along with [if girl is not banned]two nicely labeled samples of goo[else]a wad of used bubblegum[end if], and [if hermaphrodite is not banned and furry is not banned]two small vials of gryphon milk[else]a wad of used bubblegum[end if]. Staring at the items for a moment, you realize that you are obviously not the [if HP of doctor matt is 0 or HP of doctor matt is 100 or HP of doctor matt is 103]only person to consider keeping some of the strange things to be found[else]first person the good doctor Matt sent out in the city to retrieve samples for him[end if]. Emptying the pouch out into your own backpack, you wonder just what happened to the former owner of if, and if they are happier as whatever they are now.";
				LineBreak;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
				if hermaphrodite is not banned and furry is not banned:
					say "[bold type]You gain 2 gryphon milk![roman type][line break]";
					increase carried of gryphon milk by 2;
				if girl is not banned:
					say "[bold type]You gain 2 glob of goo![roman type][line break]";
					increase carried of glob of goo by 2;
		else if Z is 16: [strange doll]
			if dollfound is 0:
				say "     Reaching into the bin, you find your hand meeting some kind of plush stuffed toy, its soft form almost seeming to jump into your hand as you pull the strange thing out. Looking at what you found, you blink as you find yourself holding a miniature version of yourself, the [bold type]little plush doll appearing to be an exact replica of your current self[roman type], down to the smallest detail. Eyeing the unusual doll carefully, it seems almost alive, which is strangely disconcerting in a way...";
				say "     [bold type]Do you decide to keep it?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, this isn't creepy at all!";
				say "     ([link]N[as]n[end link]) - Waaah! Did it just move on its own?! Hell no!";
				if player consents:
					LineBreak;
					say "     Turning the unusual thing over in your hands several times and admiring the fine detail, you nearly drop the doll as it begins to shift and move on its own. The little depiction of yourself stretches and turns its head from side to side as it looks around, before focusing its piercing little gaze on you. Blinking, you put the miniature person carefully down on the ground, where it explores its new surroundings for a minute before returning to sit at your feet, obviously happy to stay with you.";
					now strange doll is tamed;
					now dollfound is 1;
				else:
					LineBreak;
					say "     Uncomfortable by even touching the thing, you drop the creepy doll back into the bargain bin, shaking your head the wasted opportunity at finding something actually useful that won't murder you in your sleep. As you turn away, you see that Nermine decided to take pity on you, and your payment is sitting back up there on the counter while she busies herself a little ways away. Nodding gratefully and feeling a bit better about the event, you tuck the food and water back away in your pack carefully, not sure if you will try your luck again in the strange bin or not...";
					LineBreak;
					say "[bold type]You gain 1 food![roman type][line break]";
					increase carried of food by 1;
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of water bottle by 1;
			else:
				say "     Searching through the bin again, you blink as your hand finds a small doll-sized pack and some accessories. Pulling them out, you stare at the items in puzzlement for a minute, before passing them along to your miniature doll self to play with. It never hurts to accessorize right?";
				LineBreak;
				say "[bold type]The dexterity of your strange doll increases by 1![roman type][line break]";
				increase dexterity of strange doll by 1;
		else if Z is 17: [strength pill]
			say "     Sorting through the bin, you come across a strange folded piece of paper. Pulling it out and unwrapping it, you barely manage to catch the [bold type]small pill[roman type] that was wrapped in the paper before it falls out. Looking at the pill in confusion for a second, you then notice there seems to be something written on the paper. As it turns out, the pill is some kind of miracle muscle enhancer, though it does warn of side effects...";
			say "     [bold type]Do you take the pill?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Sure! Why shouldn't you put random pills into your body?";
			say "     ([link]N[as]n[end link]) - Hell no, who knows what it might do!";
			if player consents:
				LineBreak;
				say "     Shrugging off the possibility of side effects, you eagerly pop the pill in your mouth and swallow. As your muscles begin to burn slightly, you nevertheless can't help but wonder if that was the smartest thing you could have done. You moan as the strange pill works its changes on your body, your muscles spasming with pleasure as you hold onto the counter... Eventually the changes stop, and you stand there panting for several minutes, before realizing you should probably be moving on soon. You can't help but pause to admire your new muscles for a minute however, although for some reason thinking clearly about anything other than your muscles and sex seems to be harder than ever...";
				LineBreak;
				say "[bold type]Your strength has increased by 2![roman type][line break]";
				increase strength of player by 2;
				increase capacity of player by 10;
				say "[bold type]Your intelligence has decreased by 1![roman type][line break]";
				decrease intelligence of player by 1;
				say "[bold type]Your sanity has decreased by 5![roman type][line break]";
				decrease humanity of player by 5;
			else:
				LineBreak;
				say "     Glancing at the pill of unknown origin in your hand, you frown and put it back in its wrapping paper, crumpling that to a compact ball. With an aimed throw, you then lob it into what you assume to be an ancient waste-bin, only to have Nermine comment, 'The friendly jackaless would like to request that her customers not throw litter into other dimensions. The urn of Ka'lak serves another purpose.' With a somewhat sheepish expression, you step up to the urn, glancing down through its opening and seeing nothing but a dark shaft, going deeper than the piece of pottery is long...";
		else if Z is 18: [cock charm]
			if "Cold Fish" is listed in feats of player:
				say "     Sorting through the strange bin, you feel a small shiver after touching one of the items in the bin and reflexively release it, protecting yourself from the influence the [bold type]little piece of jewelry[roman type] might have. You withdraw your hand and clutch it tightly as the shivers run up your arm and then down your body, filling your loins with heat and arousal. Nermine, noticing your odd expression, slides back the water and food. 'Some items in the bargain bin do not agree with some people. Nermine's eager customer may try again or leave matters be.'";
				LineBreak;
				say "[bold type]You gain 1 food![roman type][line break]";
				increase carried of food by 1;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
				LibidoBoost 25;
			else if "Horny Bastard" is listed in feats of the player:
				say "     Pushing through the strange piles of unusual items stuffed into the overflowing bin, you find a [bold type]small silver charm shaped like a [one of]feline[or]canine[or]demonic[or]equine[or]goat[or]dolphin[or]bestial[or]bear[at random] cock[roman type]. The small piece of jewelry glints in your hand as you pull it out of the bin, the lewd appearance of the finely detailed miniature cock making you grin. Somehow owning it leaves you feeling hornier and perhaps more bestial than ever, and you slip the little thing onto a charm bracelet so you can wear it at all times. Now if only you could go out and find a real cock just like it...";
				LineBreak;
				say "[bold type]Your libido has increased to 100![roman type][line break]";
				now libido of player is 100;
				SanLoss 10;
			else:
				say "     Pushing through the strange piles of unusual items stuffed into the overflowing bin, you blink as you come across a [bold type]shiny silver charm[roman type] on a charm bracelet [bold type]shaped a bit like a canine cock[roman type]. Grinning you pull the small piece of jewelry out of the bin, feeling slightly amused that someone would actually go to such great effort to make and design such a thing. With a chuckle, you experimentally slip the bracelet onto your arm where it seems to fit perfectly. Somehow the feel of the silver cock-charm against your skin makes you feel slightly more aroused almost immediately. You can feel your body warming up in arousal as your libido goes into high gear, and somehow thoughts of all sorts of bestial sex seem to become even more attractive to your increasingly lust-fogged mind. Your hands stray down to rub your groin needfully as you begin to pant, finding it impossible to think of anything other than sex anymore, lovely, hot, bestial, sex... mmmmm yum...";
				LineBreak;
				say "[bold type]'Horny Bastard' has been added to your feats![roman type][line break]";
				add "Horny Bastard" to feats of the player;
		else if Z is 19: [Nermine's romance novels]
			if RomanceBooksFound is 0: [first time]
				say "     Reaching into the bin, you can feel what seems to be some sort of book-cover under your hands. As you feel around, you realize that it isn't just one book, but a [bold type]small bundle of books tied together[roman type]. Curious, you draw the lot of them out of the bin, and are surprised to see the image of a half-naked jackal pirate looking at you from the cover of the first book. Slightly confused and curious you glance at the covers of the other books you pulled out with it, and see they all depict rather sexy-looking jackal men posing suggestively in a variety of different situations. You open one of the books and begin to flip through it, and quickly realize it is a rather hardcore romance novel featuring several bestial people, chief among them a handsome male jackal lead that swash-buckles his way through the hearts and beds of a large number of various women.";
				say "     You blush slightly in embarrassment and arousal at some of the scenes depicted in the books, causing Nermine to look over at you to see what is so distracting. Upon spying what you are reading and the other books you are holding, the jackal shopkeeper coughs uncomfortably drawing your attention. 'Ah, Nermine was wondering where those had gotten to,' she says as she steps closer, reaching out and intending to tuck the lot of them out of your grasp. 'Nermine has no explanation for how such private material ended up in the bargain bin. She would be very reluctant to let them go and offers her customer to buy them back. Double the price will suffice, will it not?' she says, looking at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					increase carried of food by 2;
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of water bottle by 2;
					now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
			else if RomanceBooksFound is 1: [repeat with the player having given her the books before]
				say "     Once more feeling a package of books stashed away in the bargain bin, you pull it out, and seeing the jackal-like hero on the cover, wave it at Nermine with a small grin. The jackal shopkeeper blushes in embarrassment as she says, 'How do Nermine's personal items end up in the bin again and again? She is not amused by this!' The sorceress lets her gaze wander around in her store, glancing this way or that from the corner of her eye as if to catch a sneaky prankster in the act. With a hint of a scowl on her muzzle, she turns back to you, carefully smoothing the expression over before she ways, 'Nermine would be very reluctant to let her personal items go and offers her customer to buy them back. Double the price will suffice, will it not?' She looks at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					increase carried of food by 2;
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of water bottle by 2;
					Now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
			else if RomanceBooksFound is 2: [player took the books before]
				say "     Once more feeling a package of books stashed away in the bargain bin, you pull it out, and are acutely surprised to see it being a stack of books with a jackal-like hero on the cover. Didn't you already buy this from her? Weird. Maybe she had more copies, or something else is going on here. Who knows... with magic in the room, it's anyone's guess. With a shrug, you raise the books and wave the bundle at Nermine with a small grin. The jackal shopkeeper blushes in embarrassment as she says, 'How do Nermine's personal items end up in the bin again and again? She is not amused by this!' The sorceress lets her gaze wander around in her store, glancing this way or that from the corner of her eye as if to catch a sneaky prankster in the act. With a hint of a scowl on her muzzle, she turns back to you, carefully smoothing the expression over before she says, 'Nermine would be very reluctant to let her personal items go and offers her customer to buy them back. Double the price will suffice, will it not?' She looks at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					increase carried of food by 2;
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of water bottle by 2;
					Now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
		else if Z is 20: [creature]
			say "     Rummaging through the bargain bin you find yourself feeling rather strange as you do so, almost as if something in the bin itself is affecting you. Feeling vaguely worried, you begin to pull your hand out of it, only to find it seems stuck on something, or more like [bold type]something or someone is holding onto you[roman type] and trying to drag you into the bin! The feeling is both strange and disturbing as you fight to free your hand, and Nermine seems to notice your distress. As you struggle, the jackal-woman comes over to investigate the problem. Just before she reaches you though, something seems to give in the bin, and you stagger backwards, almost knocking the shopkeeper over as you do so, with the jackal-woman just barely managing to catch you before you drag both of you down to the ground. Unfortunately something else staggers out of the bin as well, and you find yourself face to face with a [one of]Rubber tigress[or]Horseman[or]Leopardman[or]Plush Lion[or]Tigress hooker[or]Satyr[at random] staggering unsteadily into the room.";
			say "     The surprise visitor doesn't take long to catch their bearing, and fixes lust-filled eyes on your body. You gape in surprise for a second, idly wondering just how the hell the creature fit into the bargain bin in the first place, before quickly preparing to fight as it steps towards you eagerly. The moment is broken by a sharp growl from over your shoulder, and the beast stops in its tracks and begins to back up in fear. Glancing over your shoulder, you see Nermine fixing the creature with a deadly glare and a scowl on her muzzle. 'There is to be no fighting in Nermine's shop. This she will not tolerate!' she says with a sharp bark. With the wave of a slender paw-hand, the door that you could have sworn leads into a storage room is thrown open, showing a trash-filled alleyway instead. The beast quickly turns tail and runs out through the door, leaving you both impressed and a little worried as the surprisingly intimidating jackal-woman turns her gaze on you.";
			WaitLineBreak;
			say "     Tension abates as Nermine smiles, walking over to give you a small peck on the cheek together with a smile before wandering back to her side of the counter. 'Nermine must say, she is not sure how that got in the bin, but she would advise her handsome customer to be more careful about the things they pick out of the bargain bin from now on,' she says with a teasing wink, and you curse slightly as you realize that technically you just purchased the creature that immediately ran off... maybe next time you should try looking for a collar and leash beforehand? Or maybe you should just hope there isn't a next time...";
		else if Z is 21: [parchment]
			if "City Map" is listed in feats of the player:
				say "     Looking through the strange bin of bargain items, you come across a rolled parchment, which seems slightly warm to the touch. Curious, you pull the item out of the bin and unroll it to take a closer look. Much to your surprise, the parchment seems to contain [one of]a recipe for chili con carne[or]a discourse on the proper way to amuse a dragon, with a side note at the bottom that failure to properly amuse said dragon may result in being tasty with barbecue sauce[or]a rather strange yet hauntingly pretty drawing of a feline-headed woman[or]the secret to life... actually all the parchment has written on it is the number 42...[or]some rambling intellectual discourse on the nature of reality, and whether or not the writer was or was not in fact part of a computer game... quite boring really[or]some sort of plan for world domination, which apparently came up short in execution due to a lack of readily available 'flying attack porcupines.' Considering the state in which the city is in right now, you certainly hope that lack isn't going to be remedied anytime soon[or]a recipe for excellent sugar cookies, apparently the secret is a dash of orange peel and just the right mix of pure and brown sugar[or]a copy of The Declaration of Independence[']... no wait, apparently it is a copy of [']The Declaration of Enslavement['] instead... after reading a few of the strangely familiar yet altered statements contained within, you find yourself shuddering slightly[or]a rather steamy love letter (or perhaps lust letter) from one unnamed individual to another[or]A oddly scrawled message that says only, 'The cake is a lie! Trust in muffins instead!' Very odd indeed..[run paragraph on][at random]. You stare at the contents for a minute, before rolling the parchment back up and carefully placing it down on the counter, sure that it will prove of little use to you now in the changed city.";
			else:
				say "     Looking through the strange bin of bargain items, you come across a piece of rolled parchment, which seems slightly warm to the touch. Curious, you pull the item out of the bin and unroll it to take a closer look. What you find on its inside is some sort of color-coded [bold type]map of the city[roman type], with several rather familiar-looking landmarks clearly noted... although at the same time, something seems subtly off about the layout. Looking closely at the strange map and its hand-drawn depiction of a modern city on so ancient a material, you notice something fascinating. It doesn't actually seem to be depicting the city as it was, but as it actually currently is, with blocked streets noted carefully, as well as several new areas delineated and marked, as well as with several safe routes to those areas clearly noted!";
				say "     As you watch the parchment map, you catch sight of actual movement in its content! Looks as if someone was drawing on it, right before your eyes, marking another street slowly and declaring it impassible, changing all of the travel routes nearby to allow for that fact. Realizing what a treasure you have found, you grin happily as you tuck your new city map away in your pack safely.";
				LineBreak;
				say "[bold type]'City Map' has been added to your feats![roman type]";
				add "City Map" to feats of the player;
				say "[bestowcitymapfeat]";
		else if Z is 22: [collar]
			if player is submissive:
				say "     Reaching down into the depths of the bargain bin, your hand touches on a rather familiar shape, pulling the item up, you find yourself smiling to see you have found a lovely little [bold type]slave's collar[roman type]. Looking at the collar reminds you of how much fun it can be to submit to a stronger more dominant mate, and your mind drifts to several of the sexy creatures in the city, lingering on just how much fun it could to be to just be theirs, their happy little slutty pet, happy to serve their every whim and need. Panting slightly as you think back on all your former submissions, you find yourself feeling increasingly happy and ready for thing to come, as you slip the collar into your pack as a happy reminder of all the submissive pleasure in your past, and hopefully all the lovely times in your future as well...";
				LineBreak;
				say "[bold type]You gain 25 XP![roman type][line break]";
				increase XP of player by 25;
			else if "Dominant" is listed in feats of the player:
				say "     Reaching down into the depths of the bargain bin, your hand touches on a rather familiar shape, pulling the item up, you find yourself smiling to see you have found a lovely little [bold type]slave's collar[roman type]. Looking at the collar reminds you of how much fun it can be to play the stronger role as the dominant mate, and your mind drifts to several of the sexy creatures in the city. Your thoughts linger on just how much fun it could to be make them be yours for a little while as your slutty playthings, made to service your every whim and need. Panting slightly as you think back on all those you could dominate, you find yourself feeling increasingly happy and ready for thing to come. You slip the collar into your pack as a happy reminder of all the possible dominant pleasures you've already enjoyed and those hopefully still to come.";
				LineBreak;
				say "[bold type]You gain 25 XP![roman type][line break]";
				increase XP of player by 25;
			else:
				say "     Searching through the piles of strangely colored and unusual items in the bargain bin, you find your eye caught by a rather unusual-looking collar. Pulling the object out, you realize that it is made for a human neck instead of that of an animal, and looking closer shows you that instead of a normal latch, this collar appears to have a small lock instead, making it impossible for the wearer to remove it without the key. For some reason, merely examining the collar makes your body increasingly aroused. The feel of its soft leather over your skin seems surprisingly sexy, and your arousal only intensifies when you realize that it is actually [bold type]a slave collar[roman type]. The thought makes you blush slightly as you realize that it is the perfect collar for one to wear when one is submitting to one's master or mistress, and several shiny metal rings on it serve a perfect attachment-points for a leash...";
				say "     You can't help but pant slightly at the amazingly arousing yet disturbing thought of being used like a submissive sex-pet, and try to discard the collar... only to find yourself pausing slightly, unable to bring yourself to throw away such an amazingly sexy item, and the promise of happy submission it carries. Looking around slightly to see if Nermine is watching, you slide the collar into your pack almost guiltily, feeling increasingly submissive and slutty due to your action and whatever hold the collar has over you...";
				LineBreak;
				say "[bold type]'Submissive' has been added to your feats![roman type][line break]";
				add "Submissive" to feats of the player;
		else if Z is 23: [bad luck]
			if "Bad Luck" is listed in feats of the player:
				say "     Reaching into the bargain bin, you almost groan as you feel your bad luck building up, likely going to ruin whatever attempt you make at retrieving an item from the bin. Feeling rather annoyed at the unfair world, you sigh helplessly and decide not to fight fate as you grab whatever comes to hand before pulling it out to look at it, obviously not expecting much given your luck. Imagine your surprise however, when the item you pulled out appears to be a [bold type]custom soda holder[roman type], the kind used at beaches and for parties, and mostly full as well! What a nice surprise you find yourself thinking for a minute... right before the first soda slips out of the holder, and lands right on your foot!";
				say "     Jumping in pain, you accidentally toss the soda holder up in the air. More cans slip of it as it tumbles end over end, and you groan and cry out as you are pelted with a short heavy rain of soda cans. When the ruckus finally stops you hear a small noise, and glance over to see Nermine valiantly covering her muzzle with one delicate paw as she tries not to laugh too hard at your antics. Sighing you realize your bad luck was obviously still working full force, though as you glance down around you, you at least managed to get some soda out of the deal... just be careful not to open them too soon after all that shaking.";
				LineBreak;
				say "[bold type]You have gained 5 soda cans![roman type][line break]";
				increase carried of soda by 5;
				say "[bold type]You lose 50 HP![roman type][line break]";
				decrease HP of player by 50;
				if HP of player < 0:
					now HP of player is 1;
			else:
				say "     Reaching into the bargain bin with high hopes, you feel something rather thin and metallic under your fingers. Pulling it out you find yourself staring into a rather [bold type]nicely-made hand mirror[roman type]. Admiring the fine looking object, you take a look at your reflection, only to gasp in surprise as it shows you kneeling on the floor in front of a shadowy figure, your features strange and twisted. They are a mixture of several other beasts, only somehow weaker and less dominant, your eyes wide and glazed without any sign of free will left, though obviously still recognizable as your own. Strangely enough even as you stare at it, the eyes of the shadowy figure turn and bore into your own eyes, and you gasp and drop the mirror in surprise.";
				say "     The sound of the mirror shattering as it hits the floor snaps you out of your shock, and you look down at the mess even as Nermine tsks at you sadly. 'Is going to be seven years bad luck from now on, Nermine fears.' Her pronouncement makes you shudder slightly, as you feel a chill go down your spine... As creepy as the mirror was, you can't actually bring yourself to feel bad that it was destroyed.";
				if "Bad Luck" is not listed in feats of player:
					LineBreak;
					say "[bold type]'Bad Luck' has been added to your feats![roman type][line break]";
					add "Bad Luck" to feats of the player;
		else if Z is 24: [Nermine lecture]
			say "     As you start to reach into the bargain bin to search, [bold type]Nermine reaches out and stops you[roman type]. 'Nermine has bad feeling about the bin at this time. Maybe her friendly customer would like to accept a bit of advice on things from Nermine instead?' she says, and glancing down into the seemingly bottomless bin, you swear you see something moving around in the piles of strange charms and items! Feeling rather lucky that Nermine intervened, you nod absently, and listen with increasing interest as the jackaless gives you several rather useful tips and teaches you a few small tricks to help keep you alive in the city as it is now. You come out of it feeling like you learned some important things! Although strangely enough after your conversation, just what it was that you were taught is hard to recall. You do remember they were quite significant...";
			LineBreak;
			if a random chance of 1 in 3 succeeds and nerminefeat is 0:
				say "[bold type]Quite significant indeed...[roman type][line break]";
				wait for any key;
				now nerminefeat is 1;
				featget;
			else:
				say "[bold type]You gain 75 XP![roman type][line break]";
				increase XP of player by 75;
		else if Z is 25: [medical armband]
			if "Expert Medic" is listed in feats of the player:
				say "     Rummaging through the bargain bin, you feel a rather familiar plastic case in the bin, and smile as you grip it and pull it out. Much to your delight, as you thought, the item was [bold type]a medkit[roman type]! With your practical medical skills, this should be quite useful indeed you think with a smile as you tuck the medkit away in your bag.";
				LineBreak;
				say "[bold type]You gain a medkit![roman type][line break]";
				increase carried of medkit by 1;
			else:
				say "     Rummaging through the bin, you feel some sort of cloth band snag in your fingers, and being somewhat interested in what kind of cloth item is in a bin like this, you pull it out for a better look. You blink in surprise to find it is a surprisingly [bold type]functional-looking armband, with the sign of the red cross[roman type] on it. Somewhat on impulse, you slide the armband on and admire it for a minute. Just the feeling of its weight on your arm makes you feel a bit safer and more like a paramedic, and you pose in amusement for a minute like you were about to bandage someone up... only to realize that you actually feel like you know how to bandage someone professionally!";
				say "     Surprised, you look down at your new armband in wonder, only to discover that it is nowhere to be found! Shaking your head slightly at the weirdness of the situation, you look around for it a little while, before sighing and realizing that despite the disappearance, your strange new medical skills are there to stay...";
				LineBreak;
				say "[bold type]'Expert Medic' has been added to your feats![roman type][line break]";
				add "Expert Medic" to feats of the player;
		else if Z is 26: [compass]
			say "     Looking through the strange bin full of treasures and junk (and you can't actually be sure which is which...) you find your attention drawn to a rather [bold type]interesting-looking compass[roman type] made out of some iridescent metal. Feeling curious you pull the compass out and look at it closely, only to be surprised as the needle on its face starts to spin around and around with increasing speed. Just staring at the spinning needle makes you feel quite dizzy and disoriented, and you stumble around for a minute, your head swimming as you blink and try to clear it. By the time your vertigo clears, you note with shock that the compass seems to have vanished! Looking up from your empty hand, the next surprise is already waiting for you, as Nermine's store seems to have vanished as well, and you now are in some place completely different with absolutely no idea how you got there!";
			wait for any key;
			let P be a random number between one and six;
			if P is 1:
				Move player to The PALOMINO;
			if P is 2:
				Move player to Zoo Entrance;
			If P is 3:
				Move player to Museum Foyer;
			If P is 4:
				Move player to Park Entrance;
			If P is 5:
				Move player to Beach Plaza;
			if P is 6:
				Move player to State fair;
		else if Z is 27: [mutation idol]
			if "Mutable" is listed in feats of the player or AngryHorguth is 1:
				say "     Rummaging through the bargain bin, you come across several unusual items, most of which you ignore, but eventually you find a rather strange and [bold type]shiny rock[roman type] which seems to call to you. Rolling the rock around in your hand with some amusement, you enjoy the way it seems to glow with an inner light, only to cry out in pain as it starts to sink into your unprotected hand! Pulling your hand out of the bin, you wave it around trying to dislodge the rock, while the jackal shopkeeper shakes her head in amusement. The rock actually seems to meld into your skin despite your best efforts to dislodge it however, and a moment later your skin seems to tingle and harden somewhat, becoming slightly tougher. While somewhat of a relief that that is all that happens, it is still rather disconcerting, not to mention painful!";
				LineBreak;
				say "[bold type]Your stamina has increased by 1![roman type][line break]";
				increase stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxHP of player by level of player plus 1;
				say "[bold type]You lose 10 HP![roman type][line break]";
				decrease HP of player by 10;
				if HP of player < 0:
					now HP of player is 1;
			else if "Resistant" is listed in feats of the player:
				say "     Poking through the rather unusual bargain bin cautiously, you come across a strange-looking stone statue, which looks like some kind of primitive idol. Pulling the idol out of the bin for a better look, you see that it appears to be a squat humanoid made up of many different animals mixed together, the melding of the different beasts remarkably smoothly done for such a sculpture. As you look it over, you are surprised to see that its visage has changed all of a sudden to one of displeasure. You yelp softly and push the thing away out of fear to see as the small stone figuring stretches its misshapen limbs out, before seeming to fade away as a small nimbus of dark haze envelops the idol. The sensation of oncoming changes builds in your hands as the strange idol's effects cause several random infections to affect you.";
				say "     'Ah! It seems to Nermine that [bold type]Horguth the Changeable is upset[roman type] with her bargain-hunting customer. Perhaps at trying to avoid his influence?' the jackaless says with no little amusement, as you stare at your now empty hand in disbelief as the tingles spread up your arms.";
				LineBreak;
				say "[bold type]You lose some sanity![roman type][line break]";
				decrease humanity of player by a random number between 8 and 15;
				now AngryHorguth is 1;
				randominfect;
				randominfect;
				randominfect;
			else:
				say "     Poking through the rather unusual bargain bin cautiously, you come across a strange-looking stone statue, which looks like some kind of primitive idol. Pulling the idol out of the bin for a better look, you see that it appears to be a squat humanoid made up of many different animals mixed together, the melding of the different beasts remarkably smoothly done for such a sculpture. As you turn it from side to side to get a better look, you are surprised and nearly drop the small idol when its head turns and winks one reptilian eye at you, while its other feline eye watches you closely. Your mouth drops open in shock as you hold the idol out for Nermine to see, just as the small stone figurine stretches its misshapen limbs out, sending a beam of rainbow light to wash over you while the idol itself fades away into nothingness.";
				say "     'Ah! Nermine sees her customer has found a bargain indeed. How fortunate to get the [bold type]blessing of Horguth the Changeable[roman type]. The ancient god does not show himself to just anyone. Some may consider such a blessing to be mixed, for surely change shall come much more easily now, both good and bad.' The jackaless says this with no little amusement, as you stare at your now empty hand in disbelief.";
				LineBreak;
				say "[bold type]'Mutable' has been added to your feats![roman type][line break]";
				add "Mutable" to feats of the player;
		else if Z is 28: [rescue beacon]
			say "     Looking through the bin full of items, you come across an item that looks like some kind of strange radio, and feeling somewhat hopeful you pull it out of the bin. Interestingly enough, the item appears to be some kind of [bold type]military radio beacon[roman type], probably some sort of distress beacon of one kind or another. More importantly, it looks like it might still work as well! Feeling excited for a moment, you realize that if you were to trigger the beacon, the military might hurry up their efforts to come rescue you! Then again, they might be a little disappointed to find it wasn't a military team that set it off... but still it would be worth it to get out of this crazy town... unless you feel more comfortable staying in the changed city after all...";
			say "     [bold type]Do you trigger the beacon?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yeah! The sooner you are rescued the better!";
			say "     ([link]N[as]n[end link]) - No! As strange as life here is, you don't want this adventure to end too quickly.";
			if player consents:
				LineBreak;
				say "     Deciding it should be worth it to get the heck out of this crazy place even a bit sooner, you trigger the beacon, watching carefully as you do so. Fortunately enough, it seems to work just fine and its readouts start blinking slowly as it begins to transmit its position to whoever may be monitoring it. Feeling a grin tug at your face as hope for rescue is renewed, you tuck the small device away in your pack carefully to make it easier for the military to find you, and continue about your business.";
				extend game by -24;
			else:
				LineBreak;
				say "     Staring at the beacon idly, you find yourself wondering if maybe it couldn't be used to ward off the military instead of calling them in. After only a little bit of fiddling, you find a way to make it transmit white noise on the emergency channel as well, and with a grin you realize all you need to find is a good place to drop your new little jamming device, and it will surely hinder the military's efforts in the city enough to delay them for a while.";
				extend game by 16;
		else if Z is 29: [slave training books]
			if "Good Teacher" is listed in feats of the player:
				say "     Looking through the rather unusual bin, you find a strange and rather modern book tucked away amidst the charms and crystals, and with some amusement decide to pull it out for a closer look. Much to your surprise, the title of the book is [bold type]'Pets, slaves, and proper behavior.'[roman type] Feeling somewhat curious, as well as interested in being a good teacher for your pets, you decide to flip through the book absently, and move to skim the book, only to find your eyes caught by the text as you begin to read the book carefully and intently, whether you intended to or not! Of course you quickly realize the book is nothing like what you expected, as instead of being a book for the trainer, it appears to be a book designed to help pets and slaves learn proper behavior instead!";
				say "     As you read about all the pleasures of being at the feet of your master, and the proper way to wear rubber paws and tail-buttplugs, and especially tips on how to move properly on all fours when being walked on a leash, you find it harder and harder to hold onto your sense of self. Before long you are almost panting with desire and arousal as you flip through the pages as fast as you can, as eager to learn the next lesson as any good pet would be. Eventually though the small volume is finished, and you find yourself standing there with a happy smile on your face for several minutes before you turn back to the front to read the book again...";
				WaitLineBreak;
				say "     Fortunately you manage to catch yourself and realize what you are doing before you actually open the cover and begin your next round of slavery training. Shuddering slightly you toss the rather strange training manual back in the bargain bin, though you know that if you come across it in the bin again, you will end up reading again... somehow that thought just seems to be increasingly erotic the longer you think about it.";
				LineBreak;
				say "[bold type]You lose some sanity![roman type][line break]";
				decrease humanity of player by a random number between 10 and 25;
				if HP of player < 0:
					now HP of player is 1;
				follow the turnpass rule;
			else:
				say "     Sorting through the bin, you are surprised to find a rather modern-seeming book tucked away amidst all the rest of the clutter. Deciding that anything in this bin is probably not quite what it seems, you curiously pull the book out to take a look at it. You blink in surprise as you look at the title, [bold type]'How to train a good pet (and how to make your slaves love you) Volume IV'[roman type] Feeling rather amused at the title, you decide to flip through the book absently, only to find yourself blushing slightly at all the pictures of women and men in animal costumes being trained alongside regular animals. Strangely enough, most of the training tips contained within would apply equally well to both intelligent beasts and wild animals, and as you skim the book in a kind of rapt fascination, you find yourself learning quite a bit about how to train your pets to work and fight with you better... or your slaves...";
				say "     After skimming it once, almost toss the rather disturbing (yet also oddly helpful) book away, only to stop and tuck it away in your pack on impulse... who knows it just might come in handy again sometime...";
				LineBreak;
				say "[bold type]'Good Teacher' has been added to your feats![roman type][line break]";
				add "Good Teacher" to feats of the player;
		else:
			say "     Rummaging through all the strange items in the bin, you find yourself pulling out an object you are sure you have seen somewhere else around the city, and sigh despondently as you tuck your new common item back in your backpack.";
			LineBreak;
			let minorbargain be a random number from 1 to number of filled rows in the table of random critters;
			choose row minorbargain from the table of random critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					say "[bold type]You acquired 1 [loot entry]![roman type][line break]";
					add loot entry to invent of player;
					say "[bold type]You acquired some dirty water![roman type][line break]";
					increase carried of dirty water by 1;
				else:
					if guy is not banned and furry is not banned:
						say "[bold type]You acquired a Chipped tooth![roman type][line break]";
						increase carried of Chipped tooth by 1;
					else if girl is not banned and furry is not banned:
						say "[bold type]You acquired some Skunk Goo![roman type][line break]";
						increase carried of Skunk Goo by 1;
					else if hermaphrodite is not banned and furry is not banned:
						increase carried of panther milk by 1;
						say "[bold type]You acquired some panther milk![roman type][line break]";
					else:
						say "[bold type]You acquired some dirty water![roman type][line break]";
						increase carried of dirty water by 1;
					say "[bold type]You acquired some dirty water![roman type][line break]";
					increase carried of dirty water by 1;
			else:
				if guy is not banned and furry is not banned:
					say "[bold type]You acquired a Chipped tooth![roman type][line break]";
					increase carried of Chipped tooth by 1;
				else if girl is not banned and furry is not banned:
					say "[bold type]You acquired some Skunk Goo![roman type][line break]";
					increase carried of Skunk Goo by 1;
				else if hermaphrodite is not banned and furry is not banned:
					say "[bold type]You acquired some panther milk![roman type][line break]";
					increase carried of panther milk by 1;
				else:
					say "[bold type]You acquired some dirty water![roman type][line break]";
					increase carried of dirty water by 1;
				say "[bold type]You acquired some dirty water![roman type][line break]";
				increase carried of dirty water by 1;
	else:
		say "     Sorting through your pack, you are ashamed to realize you can't afford to draw something out of the bargain bin right now. You blush under Nermine's curious gaze, as you casually move off to look through the rest of the store instead.";
	if bargainbinusagetotal > 41: [ie 42 or greater, arbitrary number chosen to limit bin usage. should allow most (possible all) things to be found.]
		say "With the removal of your latest findings, the Bargain Bin appears oddly empty. The few things left in it are ones you have rejected already. Won't be any more bargains from this bin."; [feel free to replace this text with anything that makes more sense]
		move Bargain Bin to dark basement;
		remove Bargain Bin from play;

[ Plush Lion / rubber tigress / chocolate lab in bin ]
to say plrtcl:
	if humorous is banned or furry is banned or ( guy is banned and girl is banned and hermaphrodite is banned):
		say "     As you start to dig in one corner of the bin, Nermine steps up to you and lays a slender paw-hand on your arm. 'Nermine can tell that her bargain-hunting customer will not be wanting anything from that corner. She is sorry, but the bargain bin is like that some times. As not to leave her hopeful visitor dissatisfied, Nermine will gladly refund the items paid - maybe to be held ready for another go at finding something desirable?' With that, the jackaless gives you back your food and the water bottle. 'But Nermine also has to comment that maybe her dear customer should be thinking to not be so picky. More fun is to be had that way,' she adds philosophically.";
		LineBreak;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		say "[bold type]You gain 1 water bottle![roman type][line break]";
		increase carried of water bottle by 1;
	else:
		let Q be a list of numbers;
		if guy is not banned, add 1 to Q;  [Plush Lion]
		if girl is not banned, add 2 to Q;  [Rubber tigress]
		if hermaphrodite is not banned, add 3 to Q;  [Chocolate Lab]
		sort Q in random order;
		now tempnum is entry 1 of Q;
		if tempnum is 1:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across some sort of [bold type]little lion doll[roman type]. Pulling out the plush toy, you grin in amusement as you wonder just what a cute little thing like this was doing in such a strange place. Suddenly you feel slightly dizzy, and the new doll seems to slip from your hands as you stagger slightly before bracing yourself on the counter. Looking down you realize that while you don't actually see the doll anymore, you see plenty of soft plush lion fur. It's spreading all over your body! Panicking slightly, you try to shake the stuff off of you - to no avail! As your head starts to fill with fluff, you blink as you realize that having such nice, soft, leonine fur could be a good thing.";
			LineBreak;
			say "     Now, if only you could find another plush lion to play with you...";
			setmonster "Plush Lion";
			choose row monster from the table of random critters;
			now skinname of player is "Plush Lion";
			now cockname of player is "Plush Lion";
			now bodyname of player is "Plush Lion";
			now facename of player is "Plush Lion";
			now tailname of player is "Plush Lion";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Plush Lion";
		else if tempnum is 2:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across an [bold type]inflatable tiger[roman type]. Pulling out the small rubber toy, you grin in bemusement at what a silly little thing like this is doing in such a strange place. Looking it over quickly, it seems to have surprisingly survived its time in the bargain bin unpunctured. You give it a light squeeze between your hands and it pops with an odd, meow-like bang, causing you to jump back in surprise. The popped balloon toy hangs limply in your hands... which start to tingle. Looking down, you realize that the toy's rubber skin is melting into your own and spreading all over your body! Panicking slightly, you try to shake the stuff off of you - to no avail. As your head shifts an inflates into a more feline form, you blink your plasticky eyes as you realize that having such lovely, smooth skin could be a good thing.";
			LineBreak;
			say "     Now, if only you could find another rubber kitty to play with you...";
			setmonster "Rubber tigress";
			choose row monster from the table of random critters;
			now skinname of player is "Rubber tigress";
			now cockname of player is "Rubber tigress";
			now bodyname of player is "Rubber tigress";
			now facename of player is "Rubber tigress";
			now tailname of player is "Rubber tigress";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Rubber tigress";
		else:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across a strange chocolate treat. Held in a rather plain box, this two-pound [bold type]chocolate hound[roman type] is small, but solid. You presume it must be a leftover from Easter and pop the top to take a better look. Certainly, you feel, this would make a tastier treat than some of your recent meals. Your mouth waters as the scent of delicious, quality milk chocolate fills the air. You pull it out and look it over, telling yourself you'll just take a nibble and save the rest for the next time you're hungry. The canine confectionary seems well molded, with considerable attention to detail, further instilling the idea that it's a quality product in your mind. But then, you start to notice flaws and few details being slightly off... and more and more after that.";
			say "     Turning the chocolate figure around to look at its front end again, you realize that it isn't actually a lack of detail - the chocolate itself is rapidly growing soft! More so than the warmth of your hands could realistically make it... and soon, it is actually flowing down over your hands as if it had a life of its own! You can't help yourself and start gobbling down the chocolate, licking off the tasty treat from your fingers and moaning in pleasure as its smooth sweetness flows down your throat even as your hands get stickier and the brown starts to spread up your arms. As you lick up the last of the flowing chocolate, you realize that your hands underneath have become chocolate paws! Panicking slightly, you try to shake the stuff off of you - to no avail. Soon you are blinking your dark chocolate eyes as the chocolate sinks deeper and you become solid chocolate like the dog you found.";
			LineBreak;
			say "     Now, if only you could find another confectionary to play with you...";
			setmonster "Chocolate Lab";
			choose row monster from the table of random critters;
			now skinname of player is "Chocolate Lab";
			now cockname of player is "Chocolate Lab";
			now bodyname of player is "Chocolate Lab";
			now facename of player is "Chocolate Lab";
			now tailname of player is "Chocolate Lab";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Chocolate Lab";

Table of Game Objects (continued)
name	desc	weight	object
"jackal romance novels"	"A small stack of romance novel paperbacks, most of them depicting a dashing jackalman on their fronts, generally shirtless and in a heroic pose. They look realatively well-thumbed, seems like Nermine read them more just than a few times..."	0	jackal romance novels

instead of sniffing jackal romance novels:
	say "     Somehow, the scent of the books makes you think of hot desert sands, as well as the sea.";

jackal romance novels is a grab object.
the usedesc of jackal romance novels is "[jackal romance novels use]";

to say jackal romance novels use:
	say "     You page through one of the novels and start reading about the adventures of the hero of the book, a dashing jackalman who is a devil with his sword - and an amazing lover too, as it turns out. For books that are really quite explicit and hardcore, you have to say that you do enjoy the writing in its own right as well. Nermine certainly has a good taste in her special literature...";
	LibidoBoost 10;

instead of trading the jackal romance novels when the current action involves the Nermine:
	say "     As you offer the books to her, Nermine instantly snatches them from your grasp and quickly hides them under her counter. Then she tells you, 'The humble storekeeper is grateful for the return of her private property. As she has offered her vistior before, she will pay twice the buying price.' With a slightle embarrassed expression, she quickly hands you two packets of food and also two water bottles, then acts as if the whole deal didn't happen.";
	LineBreak;
	say "[bold type]You gain 2 food![roman type][line break]";
	increase carried of food by 2;
	say "[bold type]You gain 2 water bottles![roman type][line break]";
	increase carried of water bottle by 2;
	say "[bold type]You lose jackal romance novels![roman type][line break]";
	decrease carried of jackal romance novels by 1;
	now RomanceBooksFound is 1; [gave them back to Nermine]

Section 2 - Strange Doll Companion

strange doll is a pet. "The strange looking doll that you found in the bargain bin of the unusual shop, the small doll seems to always look exactly like you, changes and all. The most unusual part of the whole thing is how it happily follows along behind you loyally wherever you go, its plush body moving on its own through some unknown method. Still just looking at the little thing manages to bring a smile to your face.".
strange doll is a part of the player.
The weapon damage of strange doll is 7.
The level of strange doll is 1.
The Dexterity of strange doll is 10.
The summondesc of strange doll is "     You pull the strange little doll from the shop out of your pack, and set it on the ground next to you, the doll lies there for a minute on the ground, before twitching and picking itself up. The little miniature version of you looks around the area, before looking up at you and saluting, obviously ready and willing to help.".
The assault of strange doll is "[one of]The strange doll picks up something from the ground nearby, and tries to stab your attacker with it![or]Running up under your attacker, your strange plush doll tosses itself at their legs, tangling them up![or]The strange doll of you mimics your attack, striking at your opponent![or]Your opponent suddenly cries out in pain, your little ally having managed to score a hit in a sensitive area.[or]Taking advantage of your foes distraction, your little doll gets in several good hits.[or]All of a sudden your opponent stops fighting and begins to try to claw at their face, taking the opportunity to land an extra hit, you notice your little plush doll managed to climb up and put its hands over their eyes.[or]All of a sudden your opponent is startled by a sudden rain of debris tossed at it by your little ally, causing it to fall backwards[or]Imitating you, your little mini me attacks the beast with wild abandon![at random]".
the fuckscene of strange doll is "The little doll doesn't respond to your strange offer.".

dollfound is a number that varies.

the scent of strange doll is "The strange doll smells strangely like you.".

when play ends:
	if strange doll is tamed:
		if humanity of player < 10:
			if bodyname of player is "Plush Lion":
				say "     The little plush doll you got at the shop seems as happy to be a plush lion creature as you are now, and you find your muzzle pulling back in a grin full of amusement as you look down at your little companion, an idea striking you. Soon with a little work and some extra stuffing your plush doll is of a much more appropriate size to be a proper companion to you, and you can't help but admire your handiwork as you stare at the newest lovely plush little lioness for the pride. Your former doll seems to approve of her newly altered body, purring and rubbing herself up against you, eager and happy to be a proper little member of your plush pride.";
			else:
				say "     The strange doll from the shop stays with you, even as you surrender fully to the infection, following you around through the city and mimicking your actions as you settle into your new life. Eventually your lust clouded mind will begin to recognize that the strange doll you found is becoming more and just like you, as it grows in size daily, and seems to take on a more realistic appearance. You aren't able to figure out just when the little toy finishes changing, but before you know it, instead of being kept company by an animate toy, you have a perfect twin of your new self keeping you company instead. The two of you sharing your new life and fate together eagerly.";
		else:
			if a random chance of 1 in 2 succeeds:
				say "     Escaping from the city with your sanity, it was easy enough to sneak your little doll through the military as just a toy, the soldier who examined it even commenting on how cute it was. Once in the outside world, you bring the doll with you most places, as sort of a living good luck charm, even letting your little mini you help with your chores and work when no one is looking. You find it easy to confide in and talk to the attentive little doll, and come to enjoy its quiet company in your life, its easy acceptance of your body and your shared experiences in the city making it the perfect listener.";
			else:
				say "     Rescued by the military, they seem to have no problem letting you leave the city with your little doll, even thinking it cute how much the little thing looks like you. You grin at how little they realize, and smile and nod as they let you go free. Once safe in the outside world, you take the doll with you until you find a place to stay, enjoying its presence as it keeps you company most nights, at some point you would swear it was actually growing larger as time goes on, but you shrug it off as unimportant. Eventually you are woken up in the night by something on top of you, and you struggle until you realize it is the strange little doll, which now looks exactly like you, and not very doll like at all. You try to talk, but your double just kisses you lewdly, before whispering into your ears that since you have been such a good master for it, it will take care of all those evil chores and work and things for you, so you can relax.";
				say "     You are nervous at first, but no one seems to tell the difference between you and the doll, and so you can lounge around and relax, finding it strangely easy to do nothing as you stay at home, not even bothering to try to think for long periods of time. Eventually you realize that you are shrinking one day, when your double reaches down to pet you on the head, you try to figure out what you can do about this, but it seems like such hard work to think. Several days later when your former doll picks you up and sets you on a shelf, you realize that you have actually become a doll version of yourself, while the other doll lives your old life! You try to struggle and tell someone what has happened, but your size and cuteness means no one takes you seriously, not that you have much luck even talking to them either... soon though you begin to wonder what the point in trying is, its so much easier to just go with the flow and do what your large master does, like a good little mimicking doll...";

Bargain Bin ends here.
