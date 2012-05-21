Stable Related Quests by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the stables area."


Section 1- Equineguardpost [onyx quest part 1]

Equineguardpost is a situation.
The sarea of Equineguardpost is "Stable";

 

Instead of Resolving a Equineguardpost:
	if onyxkeys is 1:
		say "Investigating the dimly lit halls of the whorsehouse, you find your way to a rather small room that the equines appear to have converted into a guardpost of sorts. Glancing inside carefully, you spy two of those wannabe horsemen you saw outside relaxing in the area, more importantly however, you also spy several small bundles of keys tossed around the room, obviously left there by guards that aren[apostrophe]t on shift right now. Realizing that one of those bundles of keys almost certainly has the key to Onyx[apostrophe]s cell, you realize you wont get a better chance while the more powerful guards our out roaming. You still prepare yourself for a rough fight as you prepare to attack the stallionbois.";
		challenge "Stallionboi";
		challenge "Stallionboi";
		if lost is 0:
			say "With the guards temporarily unable to stop you, you quickly rummage through the makeshift guardpost, and grab as many different sets of keys as you can find before leaving as fast as possible. With the jingling mass of keys in hand, you feel sure that you have the key to Onyx[apostrophe]s cell with you now, and quite possibly the key to some other places in the stables as well...";
			now onyxkeys is 2;
			stop the action;
			now Equineguardpost is resolved;
		otherwise:
			say " Beaten and left to lie in the corridor outside the guardpost, you barely manage to crawl back towards the entryway, your battered and well used form needing quite a bit of rest before you can attempt something like that again...";
			stop the action;
	otherwise:
		say "Wandering through the dimly lit halls of the hotel, you hear some raucous laughter coming from up ahead. Moving cautiously you look into the room ahead, only to spy a couple of horsemen hanging out and laughing while they drink some sort of barely fermented brew. You spend a second to glance around the crude guardpost, but seeing nothing worth the fight with the horse guards, you slip away quietly and continue your trip through the quiet halls of the building.";

	
Section 2- Kitchenkegger

Kitchenkegger is a situation.
The sarea of Kitchenkegger is "Stable";

Instead of Resolving a Kitchenkegger:
	say "Wandering through the halls of the stables, you hear strange noises coming from behind one of the employee passages, and being curious at the time move to investigate. As you travel down the dimly lit service passages, the strange noise resolves itself into  rather drunken sounding singing, which only serves to increase your curiosity as you continue to approach. You eventually find yourself outside of a set of large double doors marked 'kitchen' from which the singing seems to originate. Figuring that whatever or whoever is singing doesn[apostrophe]t sound terribly dangerous, and that if you are ever going to find some useful supplies it would be in a kitchen, you steel yourself for combat as you swing the doors open and step inside.[line break]";
	say "Stepping into the kitchen you are in for something of a surprise however, as a trio of what appear to be draft horse hybrids are staggering around singing, even as they expertly prepare several meals from the supplies gathered here. The horses notice you immediately, and cheer slightly as they all grab mugs of some dark frothy liquid and toast your arrival. Feeling rather surprised you stare at the rather shaggy and relatively smaller horsemen as they chug their drinks, before cheering and refilling them again as they break out into drunken song once again. Relaxing slightly, you find yourself rather surprised as one of them tries to shove a mug full of some dark frothy brew in front of you as well, and you look up to see all three of them smiling happily at you as they lift their own mugs... do you take a drink?";
	if player consents:
		say "Feeling rather dubious, but unable to turn down the strange chefs hospitality you lift your mug and they cheer and do likewise. Taking a tentative drink, you find the liquid seems to be a rather finely brewed draft beer, which certainly explains the actions of the drunken chefs. Enjoying the taste, and not wanting to annoy your hosts, you drain your drink in several deep swallows, before gasping for breath, your head swimming as you feel a pleasant buzz set in, even as your new equine friends clap you on the back companionably and refill your mug.  You drink the next mug much more slowly as you look around, though your attention is soon drawn back to the equines in the room, as they begin to kiss and grope each other even as they sing broken snatches of drunken song. You chuckle with some amusement, and one of the beasts reaches out to involve you in their impromptu orgy, only to be foiled when another one of them grabs them from behind and shoves their rod into their fellow cook. Feeling rather tipsy and much less inhibited now after a few drinks, you nonetheless decide you should probably stay out of the orgy for now, unless you want to stay here permanently, you set your mug down and give the distracted chefs a happy wave as you stagger back out into the halls once again...";
		decrease humanity of player by 10;
		decrease thirst of player by 20;
		if thirst of player is less than 0, now thirst of player is 0;		
		stop the action;
	otherwise:
		say "Deciding not to drink, you calmly set the mug down and try to look around some more, only to be surprised by the sheer variety of sharp pointy implements the strange horselike chefs are immediately wielding. Looking around you as they move forward, one of them wielding a cleaver almost as long as your arm, you quickly decide discretion is the better choice here, as you run out the doors again in a panic, their laughter and renewed singing chasing you down the halls almost all the way to the entryway. Finally relaxing before continuing on your way, you ponder how many sharp pointy dangerous objects are always readily at hand in a large kitchen, and resolve to stay away from such a dangerous place in the future.";
		now Kitchenkegger is resolved;
	
Section 3-  Stablestoreroom

[onyx quest part 2]

Stablestoreroom is a situation.
The sarea of Stablestoreroom is "Stable";

Instead of Resolving a Stablestoreroom:
	if onyxkeys is 3:
		say "Carefully exploring the stables interior leads you to a room near the front of the area which is almost hidden in a small alcove. Peeking inside cautiously you find the small room is packed with all sorts of strange items, though most of it appears to be clothing of various sizes. Looking around at the large unorganized piles of random stuff, you figure this must be where they toss the personal items from their captives when they search them. You sigh slightly as you realize that the necklace Daisy sent you after is probably buried somewhere in the large amount of clutter stacked up in the small room. Figuring you had better get started looking, you shake your head slightly as you begin sorting through the room looking for the necklace the changing mare described.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 16:
			say "Sifting through the disorganized piles of junk, you find yourself growing frustrated at the seemingly unending supply of debris and geegaws stacked around the room. You are about to give up the search, when you spot a small silver glint which appears to have recently been unearthed due to your poking around in the piles. Pulling the item out, you find it is a rather intricately patterned necklace in the shape of several interlocking leaves, the inscription on the back reads, To Diana From Oscar. Smiling at your good fortune, you tuck the small necklace away in your pack, sure that this is the item that Daisy sent you to retrieve, and still smiling softly you slip out of the room and head back to the entranceway, sure that Onyx will want to see your recent find.";
			now onyxkeys is 4;
			Now Stablestoreroom is resolved;
			stop the action;
		otherwise:
			say "You grow increasingly frustrated as you sift through the disorganized piles of junk, and you feel increasingly exposed the longer you spend hunting through the small room. Eventually you get a bit careless, and shove a pile of junk the wrong way, and barely manage to leap out of the way as it and several other nearby heaps tip over. You stumble out the open door as a growing cascade of junk and memorabilia nearly trips you, the loud noise of cell phones and jewelery and other items banging into each other as the room rearranges itself making you wince at your clumsiness. Looking around quickly, you sigh as you realize you aren[apostrophe]t the only one who noticed the noise, as you see one of the equine stablebeasts heading down the corridor right towards you!";
			fight;
			say "Looking back at the room after the fight is over, you see that all the activity has shifted the already disturbed piles around even more, and you groan as you realize that you will have to start all over again in your search for the necklace. Sighing you pull yourself up and resolve to come back again later to continue the search, as you are sure the noise of your recent encounter is sure to draw more of the equine beasts to this location soon enough, and you have no desire to deal with a large group of the beasts right now...";
	otherwise:
		say "Carefully exploring the stables interior leads you to a room near the front of the area which is almost hidden in a small alcove. Peeking inside cautiously you find the small room is packed with all sorts of strange items, though most of it appears to be clothing of various sizes. Feeling slightly curious you poke around the piles of stuff for a bit, however it seems that the horsemen have already picked out anything of practical use before dumping the leftover bits and pieces in here for later. Sighing with disappointment, you close the door behind you as you slip back out into the dimly lit halls of the Stables...";





Section 4-  ignoredmemo

[Fancy intro quest]

ignoredmemo is a situation.
The sarea of ignoredmemo is "Stable";

Instead of Resolving a ignoredmemo:
	say "Wandering through the halls of the stables, you come across a desk that seems to have a small pile of papers tossed on it haphazardly, feeling curious as to who would bother with paperwork while the world is going crazy, you decide to take a look at some of the pages. Surprisingly enough, all of the papers seem to be about the same thing, someone called Fancy requesting help and materials from someone only noted as 'The Stablemaster'.  Leafing through the different requests, you find that the tone of them varies from pleading to demanding as this Fancy points out that the stables is still somewhat a shambles, and while most of the employees are well trained enough not to comment, and they all love their jobs, she seems to feel that everyone would be much better off for a few repairs being made around the place. She also mentions that with the appropriate help she could do most of the simple stuff herself and with the mares when they aren[apostrophe]t busy with clients. You find the situation seems a bit curious, and looking at all the obviously ignored memos, you find yourself wondering if maybe you should talk to this Fancy about her situation and see what she might be willing to offer for a bit of help.";
	now fancyquest is 1;
	now ignoredmemo is resolved;


Section 5- Transformationledger

Transformationledger is a situation.
The sarea of Transformationledger is "Stable";

Instead of Resolving a Transformationledger:
	say "While looking through the stable halls, you find yourself at a room with a large desk and a large leather bound book sitting open atop it. Out of curiosity you move into the room and start to thumb through the pages of the strange book, only to discover it's a record of the once human names and their new whorse names of many of the stable occupants, along with the transformations of the whorses working there. The descriptions that stand out are the ones that seem to be special orders like the horse hyena hybrid slut ordered by the hyena gang. Or the hawk horse hybrid. Shuddering at some of the descriptions and finding yourself aroused at others you flip to the last page before putting the book away and find your name listed in the last entry and next to it is the name Obsidian. following that you see the words new fetishes followed by leather, rubber, bondage... and an invoice that describes an outfit being made for you. With shaking hands you put the book down feeling slightly less human.";
	decrease humanity of player by 15;
	now Transformationledger is resolved;




Section 6- findinghardware 

[fancy quest part 2]

findinghardware is a situation.
Recoveredhardware is a number that varies.


Instead of Resolving a findinghardware:
	if fancyquest is 4:
		if Recoveredhardware is 3:	
			say "Returning to the lot of the hardware store, you sigh to see that several creatures are still lurking around in the area, although at least they don[apostrophe]t seem to have messed with the piles of equipment and laden carts the horsemen left around. You still need to clear them all out before you can signal the horsemen to come finish up with their looting.";
			fight;
			fight;
			if lost is 0:
				say "Signaling the horsemen again, you sigh with relief as they show up rather quickly, obviously having been loitering nearby unwilling to give up on the loot they had gathered. The lead horseman greets you brusquely as he begins to direct people to finish the loading of the carts and forklifts in preparation for moving out, while you and a few other horsemen keep watch.  This time it isn[apostrophe] much of a surprise when several wyverns and gryphons swoop down on the area again, and you are ready for them when they draw close to attack!";
				challenge "Wyvern";
				challenge "Wyvern";
				challenge "Hermaphrodite Gryphon";	
				challenge "Hermaphrodite Gryphon";
				if lost is 0:
					say "The lead horseman nods at you in grudging thanks as he leads the horsemen out of the lot before more of the infected creatures can show up and interfere. And you feel a bit better as you head back to the library again, feeling rather hopefully that you might have earned at least a bit of grudging respect for all your efforts, though it took several attempts to actually do so.";
					now fancyquest is 5;
					now findinghardware is resolved;
					stop the action;
				otherwise:
					say "The lead horseman snorts at your prone form derisively as several of the horsemen snicker at you openly as they finish driving the aerial beasts off this time. 'Some help you were.' He says with a sneer on his equine muzzle as they wheel their new loot away, leaving you lying there helplessly for any beast in the area as they head back to the stables.";
					fight;
					now fancyquest is 5;
					now findinghardware is resolved;
					stop the action;
			otherwise:
				say "Driven off again by the beasts, you sigh and wonder if you will ever manage to get this task completed, but considering that Fancy is counting on your help, you return to the library for some rest before trying again.";
				stop the action;
		if Recoveredhardware is 2:
			say "You return to the lot of the hardware store, and are somewhat relieved to find that the creatures that were here earlier appeared to have wandered back off into the city again, leaving the small fort and the store itself empty and abandoned.  You cautiously check the area for any stragglers, only to sigh with relief as you find none. Activating the small radio transceiver again, you wait nervously for the horsemen to arrive again, and while the leader of the equines snorts at you with disdain on arrival, they seem gratified to find the store empty and full of useful items and loot. You feel somewhat encouraged as he eventually nods at you before leaving to coordinate the looting of the place, leaving a couple of horsemen with you on lookout as they begin to get things moving. Which is definitely a good idea, as the sound of the forklifts starting up, and the loud laughter of several of the equines as they begin to enjoy sorting through the tools and equipment quickly begins to attract several of the creatures from the city to come investigate.";
			fight;
			fight;
			fight;
			if lost is 0:
				say "One of the horsemen gives you an approving nod as you finish driving off the last of the beasts attacking your part of the fort, and you feel rather proud of yourself as you look behind you at all the work being done at the store, as items are efficiently loaded up onto makeshift carts and the forklifts move some of the cars around so they have better access to the store itself. One of the equines at the wall gestures at you, and you glance over just in time to catch the medkit he tosses at you with an equine grin on his muzzle. Nodding in thanks you begin to start patching yourself up slightly, only to be interrupted by several large shadows sweeping over the area, it looks like the aerial creatures have decided to bypass the fort and start attacking you and the others directly!";
				Increase hp of player by 10;
				Add "medkit" to invent of player;	
			otherwise:
				say "One of the horsemen gives you a pat on the shoulder as he helps you up after driving off the rest of the creatures, and while you are certainly embarrassed at the situation, and having needed their help at this point, at least they managed to keep things going while you were being 'entertained' by your recent partner. Feeling somewhat weak after the exertion, when one of them hands you a draft beer and a medkit, you only nod gratefully as you drain the cool drink. You blink for a moment in surprise though as you feel a surge of power shoot through you, and groan as you realize it was a draft Horse beer you just drank, and while it definitely makes you feel a bit better, you can already feel your body changing In response.  Though you have little time to comment or react as several shadows blot out the sky, and you realize some of the aerial creatures have arrived and are attacking you and your fellow lookouts directly!";
				infect "Horseman";
				infect "Horseman";
				increase hp of player by 40;
				Add "medkit" to invent of player;	
				challenge "Wyvern";
				challenge "Wyvern";
				challenge "Wyvern";	
				challenge "Hermaphrodite Gryphon";	
				challenge "Hermaphrodite Gryphon";
				if lost is 0:
					say "Looking around after the aerial assault is over, you realize that the horsemen have rather efficiently finished their looting, and are waiting there to head out with hand carts piled high with tools and equipment, and several horsemen rather enthusiastically (if poorly) driving some heavily laden forklifts, at least one of which seems to be loaded with a massive generator of some kind. As you look over the situation and find the leader of the horsemen looking at you, you certainly realize that they can[apostrophe]t actually fight themselves while so heavily laden with equipment, and it is up to you once again to deal with the creatures outside and lead them off while the equines make their way back to the stables with their new loot. Sighing slightly, you patch your wounds the best you can, and prepare to lead the creatures off, only to be stopped by the head of the horsemen as he grasps your elbow and hands you a medkit, 'Found this in there, and thought ya might need it, you ain[apostrophe]t done Too bad so far, now we just need to finish up.' He says with a rather awkward smile and a slap on your back before he goes back to organizing the rest of the horses. Feeling a little better about your earlier failure, you tuck the medkit away safely, before dropping down outside of the fort to lead the remaining creatures away from the equine looters.";
					let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
					increase diceroll by bonus;
					if diceroll is greater than 16:
						say "You lead the creatures on a merry chase around this part of the city, before finally managing to lose them near the library itself.  Panting with exertion and actually feeling rather hopeful, you duck into the library, eager both for a bit of rest after your long day, and to see what Fancy thinks of your success.";		
						Add "medkit" to invent of player;	
						now fancyquest is 5;
						now findinghardware is resolved;
						stop the action;
					otherwise:
						say "You lead the creatures away from the hardware store for a while, but it isn[apostrophe]t long before you are outmaneuvered in the narrow streets, and brought to bay as several of the horny creatures close in on you!";
						fight;
						challenge "Leopardman";
						fight;
						if lost is 0:
							say "Victorious at last, you sigh as you stagger back towards the library, definitely feeling like you need a break before continuing back to the stables to see if the hardware made it back there safely.";
							Add "medkit" to invent of player;	
							now fancyquest is 5;
							now findinghardware is resolved;
							stop the action;
						otherwise:
							say "You drag your well used body back towards the library, feeling increasingly sore and tired as you do so, though hopefully at least the equines managed to get back to the stables safely after you created the distraction.";	
							Add "medkit" to invent of player;	
							now fancyquest is 5;
							now findinghardware is resolved;
							stop the action;
				otherwise:
					Say "Driven back and well used by the flying creatures, you see the horsemen have been forced to scatter and take cover, and while several heavily laden carts and forklifts are there obviously ready for moving things back to the stables, obviously that isn[apostrophe]t going to be happening anytime soon.  You can see that many of the horsemen have already fled in a disorganized rout, and you seeing that several of the flying creatures are still hanging around hopefully looking for stragglers, you decide to get out of there as well. Once you are a little ways away however, you sigh and shake your head as you realize that you have failed yet again, and will have to go back at some point to recover the items for Fancy, though you wonder if the horsemen will even come again considering all the problems so far...";
					now Recoveredhardware is 3;	
					stop the action;		
		if Recoveredhardware is 1:
			say "Returning to the hardware store and its fortress like lot, you prepare yourself once again to take on the wolverine guards, and preparing yourself again you move into their maze-like fortress. You are more careful this time in regards to the cars and supports in the area, but it still isn[apostrophe]t long before the noise of your passage alerts the dangerous wolverines as to your arrival, and you brace yourself for a tough fight!";
			challenge "Wolverine Guard";
			challenge "Wolverine Guard";
			if lost is 0:
				say "Victorious over the guards of this little fort at last, you stagger over and take a look in at the store itself, only to find signs that a couple creatures have recently vacated the area, probably due to the sounds of combat.  You wonder for a minute if the guards were here to protect the hardware store, or whoever was hiding here, still the question seems academic at this point, and having at least temporarily secured the store, you take a moment to rest, before activating the radio transceiver to signal the horsemen to come visit. Now you just have to protect the impromptu fort until the horsemen arrive and finish looting the place, unfortunately you are all too aware of the fact that any kind of large commotion like your recent combat, and the large amount of moving stuff the horsemen will be doing, is certain to attract plenty of attention from the creatures roaming the area. Indeed as you move back to the entrance of the area, you can already see several creatures heading your way to investigate the situation.";
				fight;
				fight;
				if lost is 0:
					say "Having driven back the first of the creatures, several more are in the process of trying to assault the makeshift fort, when the horsemen arrive and lay into them from behind. With the creatures attention fully fixed on you and transforming you themselves, they are easy prey for the horsemen, and are soon either driven off, or captured to be taken back to the stables for later.  The leader of the small group of horsemen gives you a grudging nod of acceptance as he and his group head in and begin moving things around inside, though he does leave a few of his horsemen with you to help keep watch as they begin to get the forklifts moving and begin to gather the supplies they need.  Which is probably a good thing as it isn[apostrophe]t long before all the activity begins to attract several more of the creatures from the city!";
					fight;
					fight;
					if lost is 0:
						say "One of the horsemen gives you an approving nod as you finish driving off the last of the beasts attacking your part of the fort, and you feel rather proud of yourself as you look behind you at all the work being done at the store, as items are efficiently loaded up onto makeshift carts and the forklifts move some of the cars around so they have better access to the store itself. One of the equines at the wall gestures at you, and you glance over just in time to catch the medkit he tosses at you with an equine grin on his muzzle. Nodding in thanks you begin to start patching yourself up slightly, only to be interrupted by several large shadows sweeping over the area, it looks like the aerial creatures have decided to bypass the fort and start attacking you and the others directly!";
						Increase hp of player by 20;
						if hp of player > maxhp of player, now hp of player is maxhp of player;
						Add "medkit" to invent of player;	
					otherwise:
						say "One of the horsemen gives you a pat on the shoulder as he helps you up after driving off the rest of the creatures, and while you are certainly embarrassed at the situation, and having needed their help at this point, at least they managed to keep things going while you were being 'entertained' by your recent partner. Feeling somewhat weak after the exertion, when one of them hands you a draft beer and a medkit, you only nod gratefully as you drain the cool drink. You blink for a moment in surprise though as you feel a surge of power shoot through you, and groan as you realize it was a draft Horse beer you just drank, and while it definitely makes you feel a bit better, you can already feel your body changing In response.  Though you have little time to comment or react as several shadows blot out the sky, and you realize some of the aerial creatures have arrived and are attacking you and your fellow lookouts directly!";
						infect "Horseman";
						infect "Horseman";
						increase hp of player by 40;
						Add "medkit" to invent of player;	
						if hp of player > maxhp of player, now hp of player is maxhp of player;
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";	
					challenge "Hermaphrodite Gryphon";	
					challenge "Hermaphrodite Gryphon";
					if lost is 0:
						say "Looking around after the aerial assault is over, you realize that the horsemen have rather efficiently finished their looting, and are waiting there to head out with hand carts piled high with tools and equipment, and several horsemen rather enthusiastically (if poorly) driving some heavily laden forklifts, at least one of which seems to be loaded with a massive generator of some kind. As you look over the situation and find the leader of the horsemen looking at you, you certainly realize that they can[apostrophe]t actually fight themselves while so heavily laden with equipment, and it is up to you once again to deal with the creatures outside and lead them off while the equines make their way back to the stables with their new loot. Sighing slightly, you patch your wounds the best you can, and prepare to lead the creatures off, only to be stopped by the head of the horsemen as he grasps your elbow and hands you a rather well balanced sledgehammer, 'Found this in there, and thought you could probably use it better than we could, and you[apostrophe]ve been doing a pretty impressive job so far I have to admit, I can see why Fancy likes you,' He says with an awkward smile and a slap on your back before he goes back to organizing the rest of the horses. You find yourself smiling and feeling a bit more confident as you take a few swings of your new weapon, before tucking it through one of the straps on your pack, and dropping down outside of the fort to lead the remaining creatures away.";
						let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
						let diceroll be a random number from 1 to 20;
						say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
						increase diceroll by bonus;
						if diceroll is greater than 16:
							say "You lead the creatures on a merry chase around this part of the city, before finally managing to lose them near the library itself.  Panting with exertion and actually feeling rather hopeful, you duck into the library, eager both for a bit of rest after your long day, and to take a look at the new sledgehammer the horseman handed you.";			
							Add "medium sledge" to invent of player;	
							now fancyquest is 5;
							now findinghardware is resolved;
							stop the action;
						otherwise:
							say "You lead the creatures away from the hardware store for a while, but it isn[apostrophe]t long before you are outmaneuvered in the narrow streets, and brought to bay as several of the horny creatures close in on you!";
							fight;
							challenge "Leopardman";
							fight;
							if lost is 0:
								say "Victorious at last, you sigh as you stagger back towards the library, definitely feeling like you need a break before continuing back to the stables to see if the hardware made it back there safely.";
								Add "medium sledge" to invent of player;	
								now fancyquest is 5;
								now findinghardware is resolved;
								stop the action;
							otherwise:
								say "You drag your well used body back towards the library, feeling increasingly sore and tired as you do so, though at least you have a new weapon to look at, and hopefully the equines managed to get back to the stables safely after you created the distraction.";	
								Add "medium sledge" to invent of player;	
								now fancyquest is 5;
								now findinghardware is resolved;
								stop the action;
					otherwise:
						Say "Driven back and well used by the flying creatures, you see the horsemen have been forced to scatter and take cover, and while several heavily laden carts and forklifts are there obviously ready for moving things back to the stables, obviously that isn[apostrophe]t going to be happening anytime soon.  You can see that many of the horsemen have already fled in a disorganized rout, and you seeing that several of the flying creatures are still hanging around hopefully looking for stragglers, you decide to get out of there as well. Once you are a little ways away however, you sigh and shake your head as you realize you will have to go back soon to recover the items for Fancy, though maybe you should rest up first.";
						now Recoveredhardware is 3;	
						stop the action;		
				otherwise:
					say "Driven back by the creatures, when the horsemen arrive they find the store lot to be full of a decent sized group of various creatures currently in possession of the junkyard fort, and the head horseman glares at you as he stares at the well defended location, and evaluates matters. Sighing he gestures for his men to keep on moving, though before he leaves he glances down at you derisively, 'If Fancy didn[apostrophe]t have her eye on you for some reason I[apostrophe]d be tempted to take you back with us for training just so this trip wouldn[apostrophe]t be a total loss...' He says with a snort before continuing on his way, leaving you feeling rather embarrassed as you lie there trying to recover before heading back to the library.";
					now  Recoveredhardware is 2;
					stop the action;
			otherwise:
				say "Battered and beaten from your encounter with the wolverines, you eventually manage to crawl away from the area to recover, though you know you will still need to return at some point to try again if you want to gain access to the items the stables needs.";
				now Recoveredhardware is 1;
				stop the action;	
		if Recoveredhardware is 0:
			say "Wandering down the streets of the city, you come across a sign for a major hardware store, and mindful of Fancy[apostrophe]s request, you decide to see if this one has been looted and destroyed like so many of the other ones, or if it is still intact enough to be worth looting. Turning the corner into the sheltered lot, you find yourself blinking with surprise at the scene laid out in front of you, as the lot in front of you is covered in cars and other bits of junk and salvage piled up n some kind of semblance to a small fortress. Looking at the construction carefully you can immediately see several items that you figure would be quite useful for the stables to have, and more importantly what appears to be several small sturdy forklifts which were obviously used to maneuver things into shape, and are probably still working even now. Figuring that if anyplace has the construction materials and tools that the stables needs, it would be this place, you begin to look for a way in so you can clear this place out of whatever has taken up residence so you can signal the horsemen to come loot the place. [line break]";
			say "Moving cautiously into the makeshift fortress, you note that it has been inexpertly propped up with beams and items from within the store, and tools are strewn around the area haphazardly as well, which while good  in that it indicates there is plenty here to loot, is bad for you in that it is nearly impossible to navigate the twisty maze silently, or safely. And even as you think that, you can see one of the cars nearby start to slide towards you as you bump one of the beams supporting it!";
			let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 16:
				say "You nimbly dodge the falling car, but the loud crash certainly alerts anyone nearby to the fact that they definitely have a visitor, and you groan as you see several wolverine guards heading your way at speed.";
			otherwise:	
				say "You twist and dodge as best you can, and the car only manages to clip you on the way down, but it still hurts like hell, and the loud crashing noise has probably alerted whoever lives here to the fact that they now have a visitor. Looking around, you sigh as you see several wolverine guards heading your way, obviously this is just not your day.";
				decrease hp of player by 25;
			challenge "Wolverine Guard";
			challenge "Wolverine Guard";
			if lost is 0:
				say "Victorious over the guards of this little fort, you stagger over and take a look in at the store itself, only to find signs that a couple creatures have recently vacated the area, probably due to the sounds of combat.  You wonder for a minute if the guards were here to protect the hardware store, or whoever was hiding here, still the question seems academic at this point, and having at least temporarily secured the store, you take a moment to rest, before activating the radio transceiver to signal the horsemen to come visit. Now you just have to protect the impromptu fort until the horsemen arrive and finish looting the place, unfortunately you are all too aware of the fact that any kind of large commotion like your recent combat, and the large amount of moving stuff the horsemen will be doing, is certain to attract plenty of attention from the creatures roaming the area. Indeed as you move back to the entrance of the area, you can already see several creatures heading your way to investigate the situation.";
				fight;
				fight;
				if lost is 0:
					say "Having driven back the first of the creatures, several more are in the process of trying to assault the makeshift fort, when the horsemen arrive and lay into them from behind. With the creatures attention fully fixed on you and transforming you themselves, they are easy prey for the horsemen, and are soon either driven off, or captured to be taken back to the stables for later.  The leader of the small group of horsemen gives you a grudging nod of acceptance as he and his group head in and begin moving things around inside, though he does leave a few of his horsemen with you to help keep watch as they begin to get the forklifts moving and begin to gather the supplies they need.  Which is probably a good thing as it isn[apostrophe]t long before all the activity begins to attract several more of the creatures from the city!";
					fight;
					fight;
					if lost is 0:
						say "One of the horsemen gives you an approving nod as you finish driving off the last of the beasts attacking your part of the fort, and you feel rather proud of yourself as you look behind you at all the work being done at the store, as items are efficiently loaded up onto makeshift carts and the forklifts move some of the cars around so they have better access to the store itself. One of the equines at the wall gestures at you, and you glance over just in time to catch the medkit he tosses at you with an equine grin on his muzzle. Nodding in thanks you begin to start patching yourself up slightly, only to be interrupted by several large shadows sweeping over the area, it looks like the aerial creatures have decided to bypass the fort and start attacking you and the others directly!";
						Increase hp of player by 20;
						Add "medkit" to invent of player;	
					otherwise:
						say "One of the horsemen gives you a pat on the shoulder as he helps you up after driving off the rest of the creatures, and while you are certainly embarrassed at the situation, and having needed their help at this point, at least they managed to keep things going while you were being 'entertained' by your recent partner. Feeling somewhat weak after the exertion, when one of them hands you a draft beer and a medkit, you only nod gratefully as you drain the cool drink. You blink for a moment in surprise though as you feel a surge of power shoot through you, and groan as you realize it was a draft Horse beer you just drank, and while it definitely makes you feel a bit better, you can already feel your body changing In response.  Though you have little time to comment or react as several shadows blot out the sky, and you realize some of the aerial creatures have arrived and are attacking you and your fellow lookouts directly!";
						infect "Horseman";
						infect "Horseman";
						increase hp of player by 40;
						Add "medkit" to invent of player;	
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";	
					challenge "Hermaphrodite Gryphon";	
					challenge "Hermaphrodite Gryphon";
					if lost is 0:
						say "Looking around after the aerial assault is over, you realize that the horsemen have rather efficiently finished their looting, and are waiting there to head out with hand carts piled high with tools and equipment, and several horsemen rather enthusiastically (if poorly) driving some heavily laden forklifts, at least one of which seems to be loaded with a massive generator of some kind. As you look over the situation and find the leader of the horsemen looking at you, you certainly realize that they can[apostrophe]t actually fight themselves while so heavily laden with equipment, and it is up to you once again to deal with the creatures outside and lead them off while the equines make their way back to the stables with their new loot. Sighing slightly, you patch your wounds the best you can, and prepare to lead the creatures off, only to be stopped by the head of the horsemen as he grasps your elbow and hands you a rather well balanced sledgehammer, 'Found this in there, and thought you could probably use it better than we could, and you[apostrophe]ve been doing a pretty impressive job so far I have to admit, I can see why Fancy likes you,' He says with an awkward smile and a slap on your back before he goes back to organizing the rest of the horses. You find yourself smiling and feeling a bit more confident as you take a few swings of your new weapon, before tucking it through one of the straps on your pack, and dropping down outside of the fort to lead the remaining creatures away.";
						let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
						let diceroll be a random number from 1 to 20;
						say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
						increase diceroll by bonus;
						if diceroll is greater than 16:
							say "You lead the creatures on a merry chase around this part of the city, before finally managing to lose them near the library itself.  Panting with exertion and actually feeling rather hopeful, you duck into the library, eager both for a bit of rest after your long day, and to take a look at the new sledgehammer the horseman handed you.";			
							Add "medium sledge" to invent of player;	
							now fancyquest is 5;
							now findinghardware is resolved;
							stop the action;
						otherwise:
							say "You lead the creatures away from the hardware store for a while, but it isn[apostrophe]t long before you are outmaneuvered in the narrow streets, and brought to bay as several of the horny creatures close in on you!";
							fight;
							challenge "Leopardman";
							fight;
							if lost is 0:
								say "Victorious at last, you sigh as you stagger back towards the library, definitely feeling like you need a break before continuing back to the stables to see if the hardware made it back there safely.";
								Add "medium sledge" to invent of player;	
								now fancyquest is 5;
								now findinghardware is resolved;
								stop the action;
							otherwise:
								say "You drag your well used body back towards the library, feeling increasingly sore and tired as you do so, though at least you have a new weapon to look at, and hopefully the equines managed to get back to the stables safely after you created the distraction.";	
								Add "medium sledge" to invent of player;	
								now fancyquest is 5;
								now findinghardware is resolved;
								stop the action;
					otherwise:
						Say "Driven back and well used by the flying creatures, you see the horsemen have been forced to scatter and take cover, and while several heavily laden carts and forklifts are there obviously ready for moving things back to the stables, obviously that isn[apostrophe]t going to be happening anytime soon.  You can see that many of the horsemen have already fled in a disorganized rout, and you seeing that several of the flying creatures are still hanging around hopefully looking for stragglers, you decide to get out of there as well. Once you are a little ways away however, you sigh and shake your head as you realize you will have to go back soon to recover the items for Fancy, though maybe you should rest up first.";
						now Recoveredhardware is 3;	
						stop the action;		
				otherwise:
					say "Driven back by the creatures, when the horsemen arrive they find the store lot to be full of a decent sized group of various creatures currently in possession of the junkyard fort, and the head horseman glares at you as he stares at the well defended location, and evaluates matters. Sighing he gestures for his men to keep on moving, though before he leaves he glances down at you derisively, 'If Fancy didn[apostrophe]t have her eye on you for some reason I[apostrophe]d be tempted to take you back with us for training just so this trip wouldn[apostrophe]t be a total loss...' He says with a snort before continuing on his way, leaving you feeling rather embarrassed as you lie there trying to recover before heading back to the library.";
					now  Recoveredhardware is 2;
					stop the action;
			otherwise:
				say "Battered and beaten from your encounter with the wolverines, you eventually manage to crawl away from the area to recover, though you know you will still need to return at some point to try again if you want to gain access to the items the stables needs.";
				now Recoveredhardware is 1;
				stop the action;
	otherwise:
		say " Wandering through the streets of the city you come across the lot of what appears to have once been a major hardware store, though the area currently looks a bit like a fortress right now, as someone or several someones have obviously been scavenging cars and other items from around the city, and piling them up around the store. Whoever it was has also obviously been using some of the tools from the hardware store to help reinforce their not so little junk fortress, making the prospect of getting inside seem even more intimidating. Sighing as you look the situation over, you shake your head and decide to continue on your way, as even though the hardware store is probably well stocked with quite a few useful items, you can[apostrophe]t really think of a need for that much  hardware, and any smaller items you need can probably be found elsewhere for less of a fight then this obviously promises to be.";


Table of Game Objects (continued)
name	desc	weight	object
"medium sledge"	"A rather well balanced, professional sledgehammer, this particular one seems to also have been reinforced with some steel sheathing on the handle, and while heavy it certainly looks like it could do a lot of damage to either a wall, or any creature that gets in your way."	15	medium sledge

medium sledge is an armament. It is part of the player. It has a weapon "[one of]your sledgehammer[or]your well balanced sledgehammer[or]your heavy weapon[at random]". The weapon damage of medium sledge is 18. The weapon type of medium sledge is "Melee". It is not temporary.

instead of sniffing medium sledge:
	say "The large sledge smells of metal and broken concrete, plaster and heads.";


Section 7-  horsepowering[Fancy quest part 3]

horsepowering is a situation.
The sarea of horsepowering is "Stable";

generatorfixing is a number that varies;



Instead of Resolving a horsepowering:
	if generatorfixing is 3:
		say "Wandering the halls of the stables, you notice that someone has obviously started trying to patch the place up, as several areas show signs of recent construction, and the area is considerably cleaner then it was before. You are however distracted from your sightseeing when a horseman appears down the hallway and notices you, you brace yourself for a fight, however you are pleasantly surprised when he merely waves you over. Curious you follow him down the hall where he leads you to a large open room filled with various types of machinery, including what is obviously the brand new generator you helped the horses liberate from the hardware store, as well as the leads for what you can only assume are the solar panels. 'Miss Fancy said we weren[apostrophe]t allowed to play with this anymore, so we left it to you like we were told,' The horseman says with a shrug of his impressive shoulders, before leaning closer and whispering loudly, 'She gets scary when she gets angry, so we try to do what she says, no one likes celibacy after all... besides shes kinda hot herself' He says with a chuckle as he leaves you to your work. With a sigh you begin looking over the generator and the wiring setup, and pull out several of the books you brought to use as reference material while you try to figure the complicated mess of wiring out.";
		let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "After an hour of examining the situation and referring to the books you brought several times, you think you have worked out what you need to do to get things up and running. Unfortunately it looks like it will require some very delicate wiring on your part, and you begin to carefully apply yourself to the rather dangerous problem, hoping you can manage to get it sorted without too much trouble.";
			let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 14:	
				say "After several hours of careful and conscientious work, you think you are finally ready to try out your modifications to the generator and the electrical system. With a nervous smile you reach over and switch the generator on, bracing yourself just in case your modifications somehow make the whole thing explode or burn the place down around your head. Fortunately, while the generator is quite loud, and the sound of all the machinery in the room starting up does make you jump, your attention to detail and careful hands seem to have resulted in a disasterless generator installation! Grinning happily with relief, you leave the heavy reference books here in case you or some other horse needs them for repairs later, and shut the heavy double doors behind you as you head back out into the stables. You can[apostrophe]t wait to see Fancy[apostrophe]s reaction to this latest triumph of yours, and the other equines reaction too of course...";
				now generatorfixing is 4;
				now  horsepowering is resolved;
			otherwise:
				say "Everything is going fine with the wiring until you slip at just the wrong moment and let one of the bare wires you are patching touch you. The world flashes in rainbow colours for a minute as you spasm and flail in agony, destroying most of your work and scattering your notes all over the place. Fortunately you only brushed the wire, but it is still enough of a shock that it takes you several minutes to recover, and your mouth tastes of ozone. Looking down at your shaking hands, you sigh and realize you wont be able to continue any kind of delicate work for a while, and proceed to gather your books back up and stagger out into the stables proper, forced to come back and start over again at a later time.";
				decrease hp of player by 25;
				increase thirst of player by 10;
				stop the action;
		otherwise:
			say "After several hours of pondering the situation, you sigh and feel hopelessly lost at trying to figure the mess of wires out. Feeling a headache coming on, you reluctantly pack up your books and head back out into the stables, resolving to come back later with a fresher mind to try to figure out how to install the generator without frying yourself or the stables.";
			stop the action;
	otherwise:
		say "Wandering around the stables, you come across a large set of closed doors with several 'danger, high voltage' signs prominently displayed. Due to the general lack of power in this part of the city, you would be tempted to investigate the room, but the heavy chain and padlock holding the doors closed is more then enough to keep you at bay as you turn back to the stable corridors.";


after going to the Grey Abbey Library when generatorfixing is 1:
	say "Returning to the library after your trip to the stables, you spend a while hunting through several of the electrical texts there, and while they do appear to be helpful, strangely enough the library appears to be lacking a 'Connecting large generators to old wiring for dummies.' Book. Which just goes to show you the sad state of literature in this current age, you would think no one really expected to be overrun with strange nanomachines which turn people into sex crazed monsters or something, and failed to prepare adequately for the situation. Which is rather unfair when you think about it, though you do find quite a bit of helpful information here anyways, but perhaps you could find some more specialized information out in the city itself?";
	now generatorfixing is 2;
	try looking;

Section 8-  technicalbookstore

[Fancy quest part 3]

technicalbookstore is a situation.

Instead of resolving a technicalbookstore:
	if generatorfixing is 1:
		say "You spend a while hunting through several of the electrical texts there, and while they do appear to be helpful, strangely enough the library appears to be lacking a 'Connecting large generators to old wiring for dummies.' Book. Which just goes to show you the sad state of literature in this current age, you would think no one really expected to be overrun with strange nanomachines which turn people into sex crazed monsters or something, and failed to prepare adequately for the situation. Which is rather unfair when you think about it, though you do find quite a bit of helpful information here anyways, but perhaps you could find some more specialized information out in the city itself?";
		now generatorfixing is 2;
		stop the action;
	if generatorfixing is 2:
		say "Poking around the overrun city, you find yourself outside of a rather small technical bookstore, which obviously caters to the colleges and professional market. Considering your need for some practical and advanced books on electrical wiring, this seems like the perfect time to go inside and have a look around. Unfortunately, it seems you aren[apostrophe]t the only one who thought the bookstore would be a nice place to visit, and you are jumped almost as soon as you enter!";
		fight;
		say "With that over, and the creature having left, you recall your original intention and check out the electricians section. You find several very good basic books, and even a few addressing situations very close to the one the stables is currently facing! Grinning happily at your luck, you snag several of the books and head back out into the streets for now, confident that with a bit of study and some luck, you will be able to fix things back at the stables.";
		now generatorfixing is 3;
		stop the action;
	otherwise:
		say "Wandering the streets of the city, you come across a small almost overlooked bookshop that appears to be stuffed with survival guides and useful technical manuals. Deciding on impulse to check inside to see if there is any useful information for your current situation, you carefully slip inside the store, the smell of sex filling your nose as you enter, and you can see that someone has been enjoying themselves in here for quite some time. Sexual fluids stain the floor, and several of the books have obviously been used as masturbatory aids rather recently, moving deeper in carefully, you startle the creature which has obviously been either stuck in here for a while, the lust filled beast reaching for you eagerly!";
		fight;
		say "The fight over, and the creature having left through the door you left open when you entered, you gather your wits around you and begin to look around for some book or bit of information worth all the effort. Unfortunately, while you find survival guides for everything from zombie apocalypses, to nuclear winter, but the only survival guide dealing with any situation even remotely resembling your own, happens to be a guide to a computer game! Idly flipping through the 'Flexible Survival' Strategy guide, doesn[apostrophe]t seem to help you to much, although several of the tips in there might actually come in handy you think as you slip back out into the city again.";
		increase xp of player by a random number between 1 and 10;



Section 9-  contract hyenegotiation[Fancy quest part 4]

contract hyenegotiation is a situation.
provingstallionhood is a number that varies.

Instead of resolving a contract hyenegotiation:
	if provingstallionhood is 1:
		say "Wandering the streets of the of city, you realize as you hear laughter and cheering echoing off the empty buildings, that your wandering feet have brought you into the hyena gangs territory. Sighing rather nervously you decide you should probably go deal with the hyenas like Fancy asked, and pulling out the letter she gave you and holding it in front of you carefully, you approach the sounds of hyena revelry. As you turn the corner you see a large group of hyenas laughing and enjoying themselves as they watch a couple of captured infected from the rest of the city fight in the middle of a makeshift arena. It isn[apostrophe]t long however before one of them notices you, and soon most of them are watching your approach curiously, their arena match temporarily forgotten. Steeling yourself, you hand one of the nearby hyenas the letter from fancy, and grin as he reads out your intention to take over the stables, and your intention to renegotiate their current agreement as part of your bid to take over the stables. Several of the hyenas laugh with amusement at your audacity, and you find yourself feeling rather amused for a minute as well[line break]";
		if matriarchowned is 1:
			say "After several minutes of laughter as everyone appreciates the irony of their matriarch taking over the stables as well, one of your gang members steps forward and fills out their agreement to the new contract for you. Though even he can[apostrophe]t stop chuckling as he does so. Looking around at the gathering, you find several of the gang members are laughing so hard at the irony of the situation, as well as the jokes going around, that they are nearly unable to stand. Grinning with amusement as well, you wave to your happy gang members, and let them go on about their business enjoying the arena fights, sure that they will have a much more amusing party after your little visit as well, though you do wish you could have hung around a bit longer to enjoy several of your gang sluts with the others... though sadly duty calls...";
			now provingstallionhood is 2;
			now contract hyenegotiation is resolved;
			stop the action;
		if matriarchdefeated is 1 or matriarchdefeated is 2:
			say "One of the hyenas steps forward and looks at you with amusement, 'A slutty little pet like you wants to take over the stables? Yeah like that is going to happen!' He says with an amused laugh, several of the other hyenas nearby echoing his laugh with amusement. 'Well hell, if the horses are stupid enough to actually let something like that happen, far be it for us to stop them. Though if you actually become the head horsey, well that would sure help us deal with the crazy bastards... after all its not like you won[apostrophe]t do whatever the matriarch says after all is it?' He says with amusement, the truth of his statement making you blush slightly, even as your changing body heats up with desire as you remember your time underneath the matriarch. Seeing your reaction, the hyena negotiator smirks as he snags the paper from you and scrawls his agreement on it, before slapping you on the ass and sending you on your way back to the stables, the entertainment starting up again behind you as you leave like a good little submissive slut.";
			now provingstallionhood is 2;
			now contract hyenegotiation is resolved;
			stop the action;
		otherwise:
			say "After laughing for a bit, one of the hyenas steps forward with a smirk on his face, and the laughter begins to taper off as he addresses you. 'Well you know, this actually sounds pretty fun, and at least you came here to deal with us in person unlike the current arrogant bastard in charge. Tell ya what...' The hyena says with an evil grin as he shows off his sharp carnivores teeth. 'Why don[apostrophe]t you give us a bit of amusement, show us just what kind of stablemaster material you are, since we are here for a show why don[apostrophe]t you put one on for us?' He says with a smile as he gestures to the arena and the two creatures currently ready to fight in the next battle, a feline creature and what appears to be a canine creature gathered from around the city.  'If you defeat both of those bastards, I[apostrophe]ll give you a chance and we can sign your little paper, if you lose however... well lets just say, you don[apostrophe]t want to lose.' The hyena says with a feral grin. The gathered gang members don[apostrophe]t wait for you to agree, and before you know it, many clawed hyena hands are shoving you into the makeshift arena, and you stagger for a minute, and look up, only to see they have already released the first monster!";
			challenge "Wolftaur";
			challenge "Leopardman";
			if lost is 0:
				say "Having defeated the surprisingly powerful beasts, you pant and try to relax for a minute, only to be caught up in the cheering and laughter of the hyenas as they grab you and haul you out of the arena. You are slapped on the back several times, and shoved around in the large crowd before eventually finding yourself back in front of what you assume is the same hyena you talked to before. As he steps forward you note he is holding the agreement fancy gave you, and that is now signed as well. 'Not a bad show there,' He says with some amusement as he hands you the paper. 'It was definitely fun to watch, and we certainly enjoyed it. Of course we would probably enjoy matters even more if you would shake up that stable of uptight equines a bit for us as well. So really win or lose it[apostrophe]s all good.' He says with an amused chuckle, which is shared by most of the hyenas around you as they slap you on your ass and back and send you on your way back to the stables.";
				now provingstallionhood is 2;
				now contract hyenegotiation is resolved;
				stop the action;
			otherwise:
				say "You barely have time to look up from the ground where your recent mating left you, before the hyenas descend on your already abused body, their hands wandering over your sensitive body and teasing and stroking your [skin of player] skin. Before long you are dragged into the crowd, where tons of spotted forms rub up against you, and before you know it their thick knotted cocks are rubbing up against you as well as every orifice on your body is stuffed full of their thick hyena meat. You lose track of time and the number of cocks that use your weakened body through the evening, your body responding with increasing eagerness to their assault as they pass you around like a party favor as the celebration continues. You hear the sounds of several other fights going on in the background, but find it hard to care about anything other then the next lovely black cock that is about to be stuffed into you. Eventually your mind is unable to take any more stimulation, and you pass out even as they continue to use your all to pliant and sexy form to slake their perverse desires.  When you finally wake up much later, you are relieved to discover that while you are almost completely covered in the hyenas sticky cum, they appear to have left you lying there on the street where the party was rather than taking you with them.  Shifting your aching body slightly, you hear something crinkle, and you look down to see that someone has tossed a note and the paper from fancy down next to you. Picking up the note first, you begin to read the hyenas message. 'Well that was certainly a fun night, almost worth the concessions you asked for, so hey we signed your little paper. Not that we really think a weakling like you has a chance to take over the stables, but at least if you do we know it won[apostrophe]t be hard to renegotiate if we really need to. Besides, the thought of such an eager hyena slut in charge of the stables is pretty amusing you have to admit.' It says, and you sigh as you check and see that yes they did indeed sign the new agreement, though somehow you really don[apostrophe]t think you will be telling Fancy about just how you got the hyena gang to agree as you pick yourself up and head back to the library to clean up.";
				infect "Herm Hyena";
				infect "Herm Hyena";
				infect "Herm Hyena";
				infect "Herm Hyena";
				now provingstallionhood is 2;
				decrease humanity of player by 50;
				now contract hyenegotiation is resolved;
				stop the action;
	otherwise:
		say "Wandering through the streets of the empty city, you are surprised to hear several loud bursts of laughter and the sounds of cheering coming from down one of the side streets.  Feeling slightly curious, you carefully peek down the side street, only to see what appears to be a large gathering of those hyenas that have been wandering the city, many of them wearing bandannas and watching some sort of game or event. Realizing there are far to many of them to have a hope of engaging safely, you quickly back off and go back the way you came, shuddering slightly at your close call, and glad none of the beasts noticed you. Although some part of you is still whispering how much fun it would have been to let all those lusty spotted beasts play with your body until you were just as lusty and sexy as they are...";
	
Section 10-  Horsepitfight[Fancy quest part 4b]

Horsepitfight is a situation.
The sarea of Horsepitfight is "Stable";
	
instead of resolving a  Horsepitfight:
	if provingstallionhood is 2:
		say "Wandering through the halls of the stables, you notice there seems to be a bit of hush over the area, and you almost aren[apostrophe]t surprised when several stallions appear up ahead and gesture you to follow them. You feel increasingly nervous as they lead you to a rather large conference room, with seats scattered around the area, and a cleared circle in the center. From the smell of sweat and sex in the room, it is fairly obvious that the horsemen practice combat here on a fairly regular basis, and just as obvious what happens to the loser. Shaking your head slightly to clear it, you wince as several rather large horsemen step into the center of the circle and smirk at you, looking around you can see a number of other horsemen in the area pretending not to be interested in the building situation. 'Well so your the new blood eh? I just don[apostrophe]t see it happening, not for someone as scrawny as you anyways..' One of the horsemen in the circle says with a laugh, setting several of the others to chuckling as well. 'You may have impressed those hyenas out there, but if you want to get any further you will have to show us you can take on some real stallions, of course if you win we certainly wont object any further to your making the attempt... But if you lose....' The stallion pauses for dramatic effect, and you hear a jingle from one side of the circle and look over to see one of the other stallions showing off a full set of bondage gear obviously intended for use on you. You feel slightly nervous as you see the fully lockable gloves designed to make the hands resemble full hooves, and the straps which would force you to walk on all fours at all times... 'So what do you think, you ready to take us on little mare?' The horseman says with a smug grin on his face and an obviously erect cock as he draws your attention back to him and the other 2 standing proudly in the circle. Looking around at all the other horsemen watching, you realize that if you lose this battle you certainly won[apostrophe]t be walking out of here on two legs, if they even let you leave again.  Do you step into the ring to take up the challenge?";
		if player consents:
			say "The brutish horsemen grin eagerly as you step into the ring, two of them backing off while the one in the middle prepares to fight you first, and as the spectators gather, you feel increasingly nervous as you prepare for the upcoming three combats, knowing you won[apostrophe]t get a chance to rest until the end... either your end or theirs...";
			challenge "Horseman";
			challenge "Horseman";
			challenge "Horseman";
			if lost is 0:
				say "As the last of the powerful stallions fall before you, you hear the room around you erupt into cheering, much to your surprise. The loud noise startling you after your intense concentration on the combat, though as you look around now, you can see your fight has seriously impressed the gathered stallions. Looking down at the defeated horsemen, you can see from their groggy looks of awe, that you won[apostrophe]t be facing any problems from that direction either.  You feel a grin splitting your face as you look around the room in triumph, and several of the stallions come by to clap you on the back companionably before they let you leave the room. As you head back through the stables to the entrance, you find yourself feeling pretty confidant that Fancy won[apostrophe]t have any more trouble getting those stallions agree to work with you.";
				now provingstallionhood is 3;
				now Horsepitfight is resolved;
			otherwise:	
				say "You lie there helplessly on the floor, your body well used by the large stallions already, only to groan helplessly as you hear the laughter of the other stallions as they close in around you. You moan and try to struggle limply as they slip your new harness on, though the straps of leather feel increasingly comfortable as they slip into place on your changing body, the leather straps pushing your increasingly large female breasts out and making them incredibly sensitive. The tail ring holding your tail up and exposing your increasingly sexy pert little ass and fresh and dripping mare sex, and the boots locking on your hands and feet and making it impossible for you to even handle the simplest of things like doors and feeding yourself.  Though perhaps the last and most intense embarrassment is when they slip your new halter over your head, the bit fitting nicely in your new equine muzzle and preventing any attempt at speech you might make. Fully outfitted like a slutty little mare, you can only moan helplessly as their hands rove over your new sexy and sleek body, and you find yourself finding it hard to concentrate on anything except the touch of all the powerful male stallions surrounding you. And you completely give up trying to think about things when one of them slides their thick stallionhood into your damp needy pussy, making you cry out with pleasure around the bit much to their amusement. As the first of the many stallions surrounding you begins to use your newly bound body, you find yourself trying to recall what you were doing here, something about a quest? No thats silly what kind of quest would a slutty mare like you have... unless it was to see just how many of these sexy stallions surrounding you you can get to blow their load in your cunt that is...";
				now provingstallionhood is 4;
				now humanity of player is 0;
				now body of player is "";
				now bodyname of player is "equine";
				now scalevalue of player is 3;
				now bodydesc of player is "sultry";
				now bodytype of player is "[one of]equine[or]horse-like[at random]";
				now the daycycle of player is 0;
				follow the turnpass rule;					
		otherwise:
			say "The brutish horsemen snort derisively at you, but let you leave for now, though one of them comments snidely that you can prepare all you want, but if you aren[apostrophe]t ready to handle them, you certainly aren[apostrophe]t ready to handle a powerful stallion like the stablemaster. Striding back down the halls of the stables as the horsemen laugh in amusement, you resolve to return sometime soon to wipe the smirks off of their equine muzzles.";
	otherwise:
		say "Wandering through the halls of the stables, you hear a strange cheering sound coming from nearby, somewhat curious you look down the hall towards what appears to be the door to one of the convention rooms, which has a sign hanging on the door. Moving closer you read the rather crudely lettered sign, which merely says 'Fight club' with a small scrawl underneath it which reads 'losers will be sluttified.' You jump slightly as you hear another cheer from behind the closed doors, and underneath the cheer, the unmistakable moans of sex. Shuddering slightly, you back off down the corridor and continue along your way.";

when play ends:
	if provingstallionhood is 4:
		say "You quickly settle into your new life as a stable pet, your mind constantly clouded with desire, and your body aroused and needy all the time. The leather straps of your halter and harness rub over you softly with every step, and you have found it increasingly hard to even feed yourself with the bit in your mouth constantly and your lack of hands now that the boots they put on you have finished giving you proper hooves. Still you find it hard to mind much, considering your many masters are always eager to whip out their lovely large cocks and feed you your favorite liquid treat, and your needy excited pussy never goes unattended for very long as well. And if you don[apostrophe]t really understand why sometimes the horsemen smirk at you oddly or make comments regarding you... well at least you know your masters are all happy with you, and that is all a slutty little bondage pet like you needs now isn[apostrophe]t it!";




hellgatherquest is a number that varies.



Section 11-  goldenfocushunt

[Fancy quest part 5a]

goldenfocushunt is a situation.
The sarea of goldenfocushunt is "Museum";
	
instead of resolving a  goldenfocushunt:
	if hellgatherquest is 2:
		say "Wandering the halls of the rather large museum nervously, you finally come across a small alcove in a corner, which has several shiny golden pieces of jewelry on display, including luckily enough, the golden necklace Nermine painstakingly described to you! Feeling rather guilty you glance around you quickly, before examining the glass barrier protecting the items closely, trying to figure out just how to handle your first venture into grand larceny, although several of the pieces Nermine doesn[apostrophe]t need should make you quite well off if you can ever get out of this place... You finally find some kind of latch towards the rear of the display you think you can manage to bash open with some effort, and you get to work. It is almost an hour of rather exhausting labor later when you finally manage to pop the bulletproof glass case open, and it crashes to the floor with a loud thud. The noise is soon joined by a loud and annoyed roar from the direction of the foyer, and you wince as you realize that either one of the silent alarms was still working, or Valerie[apostrophe]s hearing is much more sensitive than you thought. You barely have time to swipe the item Nermine sent you for off its display, before you have to turn to face the sounds of the rapidly approaching sphinx, abandoning any hope of swiping anything else as the museum guardian rounds the corner at a run.";
		challenge "sphinx";
		if lost is 0:
			move player to The Mysterious Shop;
			now hellgatherquest is 3;
			now goldenfocushunt is resolved;
			stop the action;
		otherwise:
			stop the action;
	otherwise:
		say "Wandering through the halls of the deserted museum, a glint of something shiny catches your eye, and you pause for a minute to look in one of the many alcoves lining the halls of the museum. The sight of several rather stunning pieces of historical golden jewelry takes your breath away for a bit, as you admire the craftsmanship and the carvings in the sides of the pieces. Considering the circumstances, you are almost tempted to try to take some of the item with you, if it weren[apostrophe]t for the rather strong looking glass surrounding the jewelery, that and the fact that you are pretty sure Valerie out in the foyer would probably object rather strongly and violently to any theft of museum property...";





Stable Related quests ends here.





