Version 1 of Nermine Quests by Wahn begins here.
[ Originally Designed by Sarokcat ]
[ Version 1 - Rewrite by Wahn]

"Adds Quests to Nermine in Flexible Survival"

Section 1 - Meeting Event

Strange Shop is a situation.

Instead of resolving a Strange Shop:
	say "     Traveling through the deserted streets of the city, you stumble into a small gathering of Ashen dragators that appear to be squabbling over which of them gets what looks like a recently captured human. Unfortunately they notice you almost immediately and a cry goes up as a number of them turn your way. Apparently your appearance has helped simplify the argument as they are eager to get another person to breed, and around eight or so of the dangerous fiery beasts immediately head your way. Staring at the large number of creatures arrayed against you, you do the only sensible thing in this situation and run. There really isn't anything you can do for their current captive, even if you tried...";
	say "     The beasts are hot on your heels as you dart through alleyways and down the mostly deserted streets of the city. You just can't seem to shake your pursuers however, and as you run from them in a reckless sprint, you find that the chase is attracting a good deal of additional from other infected in the city. Glancing back, you are shocked to see that there are now a group of gryphons squabbling with a wyvern above, the only reason one of them hasn't swooped down yet being their disagreement of who gets to do it. Then a pair of harpies joins the throng, further heating up the shouting and screeching match. Man, you really built a train of predators eager to snatch you! And worse yet, the dragators are gaining ground on you too!";
	WaitLineBreak;
	say "     Your eyes dart around, looking desperately for any avenue of escape, only to spot an alley up ahead. Taking a chance, you make a hard turn into the alley and see a half-open door only twenty or so feet ahead. Putting on one last burst of speed, you waste no time in diving through it, slamming the wooden door shut behind you. Panting loudly, brace against the door from the inside - partially to hold it shut, partially so you don't collapse in exhaustion, not really registering what is around you. Indeed, you close your eyes to listen, dreading sounds of clawed paws thundering down the alley, followed by splintering wood. But... they don't actually materialize. All is silent on the other side of the door. Could it be that you have shaken your pursuers?";
	if RareQuesting is 13: [naked jackal bitch for the jackalman player]
		project the figure of Nermine_naked_icon;
	else:
		project the figure of Nermine_clothed_icon;
	if NermineTalk is 0: [never met Nermine]
		say "     'Well, that is interesting,' a feminine voice suddenly says close to you, making you flinch in shock at its sudden appearance. Blinking and looking around, for the first time taking in where you actually ended up, you see that it is a... store, maybe? The place is only partially lit, with a number of thick candles bathing the room in a soft glow. All around you, there are high shelves stuffed with all sorts of wondrous items, many of them looking ancient - from books to various masks, statues, and mystic paraphernelia. The person who spoke to you is a woman, an anthro jackaless from the looks of her, standing right in front of you and looking you up and down with interest. 'Welcome to Nermine's store. The friendly jackaless eagerly greets her prospective customer.'";
		WaitLineBreak;
		say "     Baffled at the sudden change of pace in things, you gape at Nermine for a second, then warn her that a whole throng of creatures might break down the door any second now. She raises one eyebrow in wonderment and gently pulls you away from the door while saying, 'Now why would the concerned guest think that? Nermine can assure her visitor that there is little to fear in her storage room. Certainly nothing that would break out.' And with that, she twists the ornate door-handle, opening the wooden door into what clearly is a mid-sized storage room, overstuffed with more strange items. She smirks mysteriously as she walks in on slender paws, then pulls a small wooden box out of one of the shelves, carrying it with her as she walks back out into the store and closes the door once more.";
		say "     Things are really, really weird in here - and by the time Nermine opens up her box and starts to ask, 'Would Nermine's visitor also like a cup of t-' ...you've already sprinted through the store and are out through what appears to be the front door of the store, with a dangling 'Open' sign and a large glass window flanking it. As the door falls shut behind you with the sound of a several little bells ringing, you are surprised that you actually are standing in the Smith Haven Mall, of all places. You've been here before, but... this strange store isn't something you remember about the place. Oh well, whatever brought you into it surely saved your bacon. Maybe it's worth to check it out and talk a bit more to Nermine...";
	else: [met her before]
		say "     'Well, that is interesting,' a feminine voice suddenly says close to you, making you flinch in shock at its sudden appearance. Blinking and looking around, for the first time taking in where you actually ended up, you see that it is... Nermine's store. The jackaless is standing before you, illuminated by the glow of several nearby candles. 'Nermine welcomes her guest back into her store. The need must have been great, if the back door was taken...' At her nod to the door you are still bracing against, you remember the trail of creatures that were following you and warn Nermine about them possibly breaking through it - but she just pulls you away from the door with a gentle paw-hand. 'Now why would the concerned visitor think that? Nermine can assure her friend that there is little to fear in her storage room. Certainly nothing that would break out.'";
		WaitLineBreak;
		say "     With that said, she twists the ornate door-handle, opening the wooden door into what clearly is a mid-sized storage room, overstuffed with more strange items. She smirks mysteriously as she walks in on slender paws, then pulls a small wooden box out of one of the shelves, carrying it with her as she walks back out into the store and closes the door once more. Opening what she is carrying and revealing leaves inside, the jackaless asks, 'Should Nermine make two cups of tea? It might provide some relaxiation for overstressed nerves.' Once more baffled by the strangeness that is her and her store, you accept, drinking a cup of admittedly excellent tea with the storekeeper before you eventually step out into the mall.";
	move player to Mall West Wing;
	now Strange Shop is resolved;
	
Section 2 - Quest Events

Bacchus Wine is a situation. The level of Bacchus Wine is 4.
The Sarea of Bacchus Wine is "Museum".
WineFound is a number that varies.

when play begins:
	add Bacchus Wine to badspots of guy;

Instead of resolving a Bacchus Wine:
	if WineFound is 0 or WineFound is 2: [regular scene or repeat after quest]
		if WineFound is 2:
			say "     Wandering through the museum halls, you return once more to the casks full of rich dark satyr wine, you realize that while you don't need any more wine for Nermine, you could still take a drink or two yourself...";
		else:
			say "     Wandering through the twisting corridors of the museum, you come across a small cask of some sort placed up against the wall. Investigating closer, you see that the cask is full of some dark red liquid, and a tantalizing fruity smell fills the air near it, making your mouth water. While looking around to see who may have left this cask here, you spot a small flagon lying up against the wall. It would be perfect for taking a taste of the liquid...";
		say "     [bold type]Do you indulge?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let's take a drink.";
		say "     ([link]N[as]n[end link]) - Nah, better not...";
		if player consents:
			LineBreak;
			say "     The hefty scent of the strange drink filling your nostrils, you dip the quickly collected flagon into the cask and fill it. The rich red liquid smells delightful as you bring it up to your lips to drink. A fantastic taste rolls over your tongue in an explosion of sweet tartness, followed by a pleasant burn on the way down. You can't help but swoon for a second as your head gets filled with arousal and the images of dancing nymphs and satyrs. OH! This must be pure satyr wine - more potent than what they usually carry and drink. Seems like they dilute it a bit.";
			say "     Getting more than a bit drunk and giddy as you drink, you can't bring yourself to stop swallowing more of the amazing dark wine. You guzzle the rest of the delicious liquid gold as fast as possible, and stare blearily at your now empty cup. Looking over the cask once more, you are about to walk up to it and get a refill when the sounds of several carousing satyrs reach your ear. Uh-oh, they're on their way here! Realizing you are poaching their booze, you quickly drop the flagon and stagger back out into the museum halls. Eventually your head clears up enough and you manage to find your way back to the museum foyer, feeling much more like partying and drinking wine then you did before finding the cask.";
			PlayerDrink 10;
			say "[bold type]Your sanity has been reduced by 5![roman type][line break]";
			decrease humanity of player by 5;
			infect "Satyr";
			infect "Satyr";
		else:
			LineBreak;
			say "     Deciding it is best not to mess with strange casks and other such things in these dark halls, you continue on your way leaving the drink untouched.";
	else if WineFound is 1: [player is supposed to bring wine to Nermine]
		say "     Traveling down the museum halls, you spot several satyrs bemoaning their current lack of booze, then setting out to 'get a refill'. They seem fairly focused on getting more wine, not really noticing you as you stand in a shadowy archway when they move past. Remembering Nermine's request for some of the satyr wine straight from the source, you attempt to stealthily follow the nimble goat-men through the halls.";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 15:
			say "     Carefully moving through the halls, you have to duck down and hide several times as other creatures pass, but you eventually manage to follow the group of satyrs to a small alcove where they seem to have hidden several large wooden casks. The eager revellers quickly refill their flagons and flasks and leave, giving you the perfect opportunity to sneak into the alcove and look around. There are several more clay flagons scattered around on the floor, so it is easy for you to pick one and step up to the casks. Checking them out, one after another, you see that there is one that seems to be even darker and richer-smelling then the rest.";
			say "     Carefully raising its lid, you dip the flagon into the enticingly-smelling liquid and wait for it to fill, stoppering it when it after pulling the vessel out of the cask. Staring at the clay jug, you realize you now have the item Nermine asked for, and a surge of pleasure at the thought of being such a good little dog for your mistress shoots through you and makes your tail wag softly. After a minute you shake yourself and realize you should probably get out of here before any of the goat-men come back. Quickly heading out into the twisting halls of the museum, you hope you don't encounter too much trouble finding your way back...";
			now WineFound is 2;
		else:
			say "     Sadly your clumsy feet are not up to following the nimble beasts quietly enough, and while the rest continue on, two of them turn back to see what the noise was.";
			challenge "Satyr";
			challenge "Satyr";

Stolen Jewelry is a situation.
The Sarea of Stolen Jewelry is "Museum".
HyenaTrailing is a number that varies.

Instead of resolving a Stolen Jewelry:
	if RareQuesting is 8:
		say "     Traveling through the dimly lit hallways of the museum, you eventually find the room you are looking for in the egyptian section and wander inside hopefully. Sadly it doesn't take more than a short look for you to determine that just as Nermine feared, the items you are looking for have already been stolen. Sighing at how much more complicated this is going to be you carefully begin searching the room for any sign of who the thief might be, or where they have taken it.";
		let bonus be (( the perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 15:
			say "     Hunting through the room with a fine tooth comb, several times, you eventually turn up an interesting clue, a small tuft of hyena hair which was caught on one of the glass display lids. Wondering what a group of hyenas got into the museum to rob it, you realize that at least now you have something to ask [bold type]Valerie[roman type] about.";
			now HyenaTrailing is 1;
			now Stolen Jewelry is resolved;
			stop the action;
		else:
			say "     When you haven't found a clue after several hours of searching, you are forced to sigh and throw up your hands in disgust. Noting that all your searching seems to be attracting attention, you quickly head back to the foyer, forced to return later if you want to discover anything more about the mysterious thieves.";
			Stop the action;
	else:
		say "     Traveling through the relatively empty halls of the museum, as you pass one of the rooms in the egyptian wing, you are startled to see that someone has broken into several of the exhibits. From the looks of things, the thief or thieves made off with a bunch of antique jewelry. Sighing, you realize this was probably inevitable with the power to the alarms cut, and you walk away shaking your head sadly. Some part of you isn't quite sure if you are more depressed at the theft of the jewelry itself, or the fact that someone else beat you to it...";

Instead of conversing the Valerie while HyenaTrailing is 1:
	say "     'Hyenas? In the museum?' the sphinx says with a confused look as she looks around the foyer incredulously. 'If the city wasn't in the state its currently in, I would say you were going crazy.' Valerie adds a little haughtily, rejecting the mere idea out of hand. When you explain why you are asking however, she lets out a low growl. 'Someone stole from the museum? How horrible! But... hm, they didn't come through here, I can tell you that for sure. I'd have noticed, believe me!' She pauses to think for a minute. 'Hmm... that means they must have found another way to break in. I'd help you search, but given what you told me, I think it is even more important that I stay here and guard the entrance. Who knows what other furry barbarians might move in to sack the place otherwise!'";
	say "     She fans out her feathered wings for a moment, as if ready to pounce the next person walking in the door, then folds them back in again and sits down to stare at the entrance. Crossing her forepaws on the information desk, she glances sideways to you and adds, 'I'll hold this post. Meanwhile, you go and find whatever [bold type]alternative entry[roman type]point the thieves took. Give em a good thumping if you run into the bastards and please make sure they can't get in that way anymore.";
	now HyenaTrailing is 2;

Alternative Entry is a situation. The level of Alternative Entry is 8.
The Sarea of Alternative Entry is "Museum".
when play begins:
	add Alternative Entry to badspots of guy;
	add Alternative Entry to badspots of furry;

Instead of resolving a Alternative Entry:
	if HyenaTrailing is 2:
		say "     After returning to the egyptian exhibit you proceed to attempt to backtrack the hyena thieves trail through the dim hallways of the museum, relying on your keen powers of observation to help, (and perhaps a little luck as well...).";
		let bonus be (( the perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 15:
			say "     Carefully following the trail, you eventually come to an 'Employees Only' door in one of the outlying corners of the museum. Approaching the door, you think you hear some kind of faint rumbling noise coming from the other side. Feeling a surge of hope at the thought that the thieves might still be in the museum, you slowly creep up on the door as silently as possible. Finally at the door, you prepare yourself before throwing the door open wide and leaping forward, only to stumble backwards as you find you have just woken up a sleeping sabretoothed cat!";
			challenge "Sabretooth";
			if fightoutcome < 20: [player won]
				say "     You sigh in relief at having driven off so dangerous a beast, and after a moment to rest, you take a look inside the dark room the large cat was using for a den. Searching the area, you manage to discover a maintenance door which has had its lock broken quite recently. Opening the door, you see that it is an entrance to the the subway system and sewers. You sigh as you realize that trying to track the beasts through the filth of the sewers yourself will be pretty pointless at this point. Who knows what lives in there, and the stinking runoff will have washed away their tracks for sure. With a sigh, you close the door securely and barricade it with a nearby shelf. There, that should at least make Valerie happy.";
				if New Ewe Storeroom is known and Mary is in New Ewe Storeroom: [player rescued Mary]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the previously lost sheep, was down in the underground for an extended time before you rescued her. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to check by the [bold type]New Ewe[roman type] store sometime soon.";
				else if NESProgress is 2: [player knows Mary is in the underground]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the lost sheep, is still somewhere underground. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to try finding [bold type]Little Lost Lamb[roman type] through the sewers sometime soon.";
				else if NESProgress is 3: [player rescued Mary from the underground, hasn't checked in with her yet]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the previously lost sheep, was down in the underground for an extended time before you rescued her. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to check by the [bold type]New Ewe[roman type] store sometime soon. She'll hopefully have made her way there by now.";
				else: [no contact with the New Ewe Crowd yet]
					say "     Hm, you wonder for a moment what you should do now, without much success. Tracking in the sewers is hopeless - even a bloodhound would capitulate to the stench, and the darkness and dirt pretty much rule out reading footprints. The only other idea that comes to you would be to find some friendly sewer-dweller who might have seen the hyenas pass through... but that's highly unlikely, right? A bit beaten and distraught, you walk back to the entrance of the museum. Maybe you should take a while off from this task to clear your head. Go out and maybe find a [bold type]store[roman type] that still has supplies to loot or something like that. You've still got your everyday survival to think of after all...";
				now HyenaTrailing is 3;
				now Alternative Entry is resolved;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Feeling much abused as the beast deposits you outside its lair, you slowly pull yourself back together before staggering your way down the halls to try to find your way back to the foyer. Once you finally manage to get there, you groan as you realize you aren't sure exactly where you found the large cat's lair. Seems like you will have to try tracking the thieves back to it all over again...";
				stop the action;
			else if fightoutcome is 30: [fled]
				say "     Running away as fast as you can from the beast, you stumble through numerous rooms before eventually finding your way back to the foyer. Once you calm yourself enough to think about things rationally again, you realize you aren't sure exactly where you found the large cat's lair. Seems like you will have to try tracking the thieves back to it all over again...";
		else:
			say "     After several hours wandering the halls, you are forced to admit that you have completely lost the trail of the thieves, and sigh as you set out to try to find your way back to the museum foyer so you can try again.";
			stop the action;
	else:
		say "     Wandering through the halls of the museum, you hear a faint rumbling noise from nearby, looking around you realize it is coming from one of the nearby 'Employees Only' doors. Your curiosity getting the better of you, you slowly open the door a crack and peek inside. You are startled to find yourself peeking right into the face of a large sabretooth cat! After a second of panic, the rumbling noise comes again, and you realize that the sound is the cat's soft snoring, the beast obviously having not gotten a good nights sleep in years, you decide to slowly close the door and let sleeping giant man-eating pussycats lie...";

[ Questioning Mary about the Hyena Thieves has been moved to the file "New Ewe Store.i7x" ]

Hyena Challenge is a situation. The level of Hyena Challenge is 12.
when play begins:
	add Hyena Challenge to badspots of hermaphrodite;
	add Hyena Challenge to badspots of furry;

Instead of resolving a Hyena Challenge:
	if HyenaTrailing is 4:
		 if matriarchdefeated > 0 and matriarchowned is 0: [player is the omega hyena]
			say "     Moving through the city with purpose, you quickly head to the hyena gang hideout you know so well from your earlier failed attempts to challenge the matriarch. Approaching the building, you find several of the gang members talking about their most recent score from the museum. Realizing they must know what happened to the items Nermine wanted, you try to steel your courage as you go over to demand the more dominant hyenas tell you what they know. Recognizing you as their matriarch's submissive little pet hyena, the other gang members break into laughter at your meek attempt to challenge them.";
			say "     Their voices make you remember your time underneath the matriarch and cause you to quickly hunch down submissively without thinking. Seeing your reaction, the gang members seem to be even more amused, as they call out lewd suggestions even as you slowly slink away, realizing that without the ability to be taken seriously by them, this part of your quest is now definitely over, as is any hope you might have had of ever being anything other than a submissive little slut for the gang of laughing hyenas...";
			now Hyena Challenge is resolved;
		else if matriarchowned is 1: [player is the hyena matriarch]
			say "     Following the trail of the stolen jewelry, you approach your gang's hideout, wondering just what your little hyenas have been up to while you were gone. You knew the were exploring the sewers for ways out of town, but robbing the museum wasn't in the cards - at least to your knowledge. Throwing the door to the warehouse open, you don't have time to ask any questions, as you find that your subjects saw you coming, and are all gathered around and grinning as your trusty lieutenant Gina presents with a large wrapped package. Distracted from your purpose, you find yourself grinning as well as you eagerly open your present, a hyena-like laugh of pleasure slipping out as you see that they are presenting you with a nice new set of jewelry from the museum, as a gift to their matriarch.";
			say "     Grinning and commending your eager gang for their service, you slip on all but the items that Nermine asked for, then drag Gina off to thank her properly for her thoughtfulness. As you push her to lie back on a sofa right in the middle of the main room, then start to strip, the rest of the hyenas present in the hideout laugh and cheer, aroused by the show. Eventually after several hours, you lie in a comfortable heap of exhausted hyenas cuddling up to their matriarch after the orgy that followed. Several of them are stroking and admiring your new soft black fur, and the comfort of your position makes you wonder if you really want to give up even a small part of your new pretties. With the thought still active in your mind, you gather up the shiny trophies and get dressed. They do make you feel so much better-looking, so maybe you should just talk to Nermine about quitting while you are ahead...";
			now NermineTalk is 3;
			now RareQuesting is 9;
			LineBreak;
			say "[bold type]Your charisma has increased by 2![roman type][line break]";
			increase charisma of player by 2;
			now Hyena Challenge is resolved;
		else:
			say "     Following the trail of clues leads you to the edges of the territory claimed by the gang of herm hyenas and though you are pretty sure they have what you are looking for somewhere in their territory, you have no clue where to begin your search. It seems pretty obvious that you are going to need to ask some of the gang members for help in that regards, although you doubt they will cooperate without a fight. After some searching you do manage to find a pair of the anthro hermaphrodites lounging around the area, and while they seem friendly enough at first as they try to convince you to join their gang, their mood swiftly changes when they realize you have other plans. Changing their behaviour in an instant, they turn and attack, striking at you before you can respond!";
			say "[bold type]You lose 15 HP![roman type][line break]";
			decrease HP of player by 15;
			let HyenaFightCounter be 0;
			now fightoutcome is 0; [reset]
			while fightoutcome < 20 and HyenaFightCounter < 2: [runs for 2 times or until the player loses or flees]
				now inasituation is true;
				challenge "Herm Hyena";
				increase HyenaFightCounter by 1;
			now inasituation is false; [reset]
			if fightoutcome < 20: [player won]
				say "     After defeating the hyenas, they are more than willing to admit your dominance, and with a pair of matching grins easily agree to lead you to their hideout. Given how cheerful the tricky beasts are about the whole situation, you suspect you are walking right into a trap, but since it is probably the only way you will find out what happened to the items Nermine wants, you have no choice but to follow along. Eventually after quite a bit of walking, you find yourself outside one of the large warehouses in the area, and looking around you realize you could have been here much quicker if they had brought you directly here. All the extra walking was just buying time so that a large number of hyenas could gather here and be ready for you, all of them grinning at chuckling at you as the two hyenas you beat earlier quickly duck away from you to join the crowd.";
				say "     Sighing as you look around, you realize there is no way you could beat all of these hyenas in combat, so you try calling out and telling them you are only looking for three very specific pieces of jewelry from the museum, and hoping they are in the mood to listen. The air is filled with the laughter of the hyenas at your bold questioning, the noise making you feel somewhat less human as it echoes throughout the area. Then suddenly, their laughter stops as quickly as if someone had flipped a switch. From the jostling crowd of gang-members, a much larger hyena steps into sight, her muscular body adorned with many loops of jewelry and necklaces. As she sizes you up, you do the same - and realize that what is obviously the leader of the hyenas is wearing the items you came her for!";
				WaitLineBreak;
				say "     The large hyena grins as she sees you have recognized her jewelry, and in a mocking tone of voice introduces herself as the matriarch of the gang, and that while the items you want are only the least part of her treasure, they are still hers. You sigh and turn away to leave, only to be stopped cold by the fact that the crowd of hyenas has closed all the way around while your back was turned. Hearing a particularly cruel chuckle by the matriarch, you turn to face her once more. 'Aww - poor little treasure-seeker. You've come so far, I couldn't just let you leave without giving you the chance to win your baubles, could I?' Grinning broadly and showing her sharp teeth, she gestures to two hyenas standing by her side and points you out to them. Looking around at unbroken ring of hyenas, you see that there is no way out - especially as they start to chant, 'Fight! Fight! Fight!' with eager expressions. An impromptu arena forms in seconds, with you in the center.";
				now fightoutcome is 0; [reset]
				now HyenaFightCounter is 0; [reset]
				while fightoutcome < 20 and HyenaFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true;
					challenge "Herm Hyena";
					increase HyenaFightCounter by 1;
				now inasituation is false; [reset]
				if fightoutcome < 20: [player won]
					if cocks of player > 0:
						say "     Looking down at the matriarch's defeated guards, you are surprised to hear the crowd of hyenas cheer your victory as loudly as they cheered for their own kind, their praise making you feel slightly more dominant as you straighten up and stretch from your hard-won victory. After several minutes of cheering, and jesting, the crowd grows silent again in anticipation as the matriarch herself steps forward with a grin, and looking around you realize that win or lose, this particular fight is definitely a unique opportunity. If you lose now, you are pretty sure you won't have another chance at getting the items back for Nermine, and so you resolve to fight your hardest to prove your dominance over the powerful matriarch.";
						challenge "Hyena Matriarch";
						if fightoutcome < 20: [player won]
							say "     Lying there proudly as you enjoy your victory over the formerly proud matriarch, you grin as the hyenas party around you, celebrating your victory as they make you honorary matriarch for a time. You are treated to your pick of everything the gang has, and the hyenas definitely throw one hell of a party. Eventually though, it is time for you to go, the former matriarch handing over the items you wanted easily enough, while the rest of the gang begins to settle down to the rough task of deciding who gets to be the next matriarch. As you walk away down the city streets, you find yourself almost wishing you could go back and claim the matriarch's throne from them on a more permanent basis...";
							now matriarchowned is 0;
							now RareQuesting is 9;
							now Hyena Challenge is resolved;
						else if fightoutcome > 19: [lost or fled]
							say "     After several hours of being passed around by the numerous gang members, all eager to get a shot at the person who thought they could challenge the matriarch, you are left alone to recover while the orgy continues without you. Eventually you manage to recover enough from the matriarch's dominant use of your all too willing body, and slowly drag yourself away from the gang's territory. As you stagger down the streets of the city, the cum of many different hyenas matting your thick black fur, you groan as you realize that you certainly don't have a chance of recovering the items Nermine wants from the hyena stronghold now... even as the part of you that the hyena matriarch brought out is wondering if maybe you shouldn't just give up on your silly quest and go back and become a nice little submissive hyena for the much more powerful gang of hyenas...";
							now matriarchdefeated is 0;
							now Hyena Challenge is resolved;
					else: [female or neuter player]
						say "     Looking down at the matriarch's defeated guards, you are surprised to hear the crowd of hyenas cheer your victory as loudly as they cheered for their own kind, their praise making you feel slightly more dominant as you straighten up and stretch from your hard-won victory. After several minutes of cheering, and jesting, the crowd grows silent again in anticipation as the matriarch herself steps forward with a grin, and looking around you realize that win or lose, this particular fight is definitely a unique opportunity. If you lose now, you are pretty sure you won't have another chance at getting the items back for Nermine, and so you resolve to fight your hardest to prove your dominance over the powerful matriarch.";
						say "     You shift your stance as you prepare for combat, only to jump back in shock as a black knotted dildo bounces off your head. As the crowd around you explodes once more into laughter, you pick up the strange thing and stare at it, realizing it is come kind of strap on. Glancing up at the matriarch, where she grins at you as she strokes her own thick knotted cock, you blush as you realize exactly what kind of dominance battle is in front of you, even as you slip the item on. You gasp as it grows warm and seems to become almost real as you settle it into place, your body growing even hornier as fondle the realistic toy. After a minute you hear the matriarch chuckle at your distraction, and shaking your head, you brace yourself and prepare to fight in however pornographic a way you need to.";
						Challenge "Hyena Matriarch";
						if fightoutcome < 20: [player won]
							say "     Lying there proudly as you enjoy your victory over the formerly proud matriarch, you grin as the hyenas party around you, celebrating your victory as they make you honorary matriarch for a time. And you get to put your new temporary cock to good use several more times, before one of the hyenas shows you how to take it off, your body feeling kind of empty at the loss of your new member, though when you ask about maybe keeping the strap on around, the hyenas warn you that prolonged use of the item makes it permanent, which while it doesn't sound too bad to you right now, is probably something to consider for later, as you turn your attention back to the forming party.";
							say "     You are treated to your pick of everything the gang has, and the hyenas definitely throw one hell of a party. Eventually though, it is time for you to go, the former matriarch handing over the items you wanted easily enough, while the rest of the gang begins to settle down to the rough task of deciding who gets to be the next matriarch. As you walk away down the city streets, you find yourself almost wishing you could go back and claim the matriarch's throne from them on a more permanent basis...";
							now matriarchowned is 0;
							now RareQuesting is 9;
							now Hyena Challenge is resolved;
						else if fightoutcome > 19: [lost or fled]
							say "     After several hours of being passed around by the numerous gang members, you lose track of time as new cocks penetrate your [if cunts of player > 0]pussy[else]body[end if], everyone being eager to get a shot at the person who thought they could challenge the matriarch and dump a load or two in you. At some point you lose the strapon they gave you, as one of the hyenas rips it off you making you cry out, while the rest laugh at you, since now they know why you came to the fight so ill prepared with a cock of your own. Obviously you are such a submissive slut you don't need one after all!";
							say "     After even more sex in form of a prolonged gangbang, you are finally left alone to recover while the orgy continues without you, and eventually you manage to recover enough from the matriarch's dominant use of your all too willing body, and slowly drag yourself away from the gang's territory. As you stagger down the streets of the city, the cum of many different hyenas matting your thick black fur, you groan as you realize that you certainly don't have a chance of recovering the items Nermine wants from the hyena stronghold now... even as the part of you that the hyena matriarch brought out is wondering if maybe you shouldn't just give up on your silly quest and go back and become a nice little submissive hyena for the much more powerful gang of hyenas...";
							now matriarchdefeated is 0;
							now Hyena Challenge is resolved;
				else if fightoutcome > 19: [lost or fled]
					say "     Defeated and humiliated in front of the laughing gang of hyenas, you are forced to slink away in disgrace from the arena, even as an orgy and several more impromptu challenge matches break out behind you. You are almost safely away when you hear the Hyena matriarch calling out teasingly behind you, inviting you to come back and try again whenever you feel up to it. Her challenge makes you blush with shame, as you resolve to do just that.";
			else if fightoutcome > 19: [lost or fled]
				say "     Defeated by the hyenas, you have no choice but to slink back off down the streets of the city, wondering how you could lose to just a couple hyenas after having come this far successfully... You resolve to try again as soon as you have recovered.";
	else:
		say "     Travelling through the streets of the mostly deserted city, you come across an area completely painted in some kind of strange gang signs placed one on top of the other. Noticing that the paint is still fresh in some places, you decide it might be best to leave the area as quietly and quickly as possible, before one of the strange gang members returns and finds you here.";

Anubis Statue is a situation.
The Sarea of Anubis Statue is "Museum".
statuequest is a number that varies.

Instead of resolving a Anubis Statue:
	if statuequest is 0:
		say "     Wandering through the twisting (and possibly shifting) corridors of the museum, you find yourself face to face with a large statue of a jackal-man. The statue seems to be made out of some strange black stone and you almost get the feeling that it is looking straight at you. A helpful museum info-plaque tells you that this depicts the god Anubis, who was worshiped in ancient egypt...";
	else if statuequest is 1:
		say "     Traveling through the mind-bending jumble of museum halls that seem to be connected with one another more or less randomly (and with shifting sequences of what room leads where), you find your feet leading you through the halls until you reach an empty pedestal, occupying a prominent position in one of the egyptian exhibits. A helpful museum info-plaque tells you that a statue depicting the god Anubis is supposed to be there. Weird. It seems to have vanished without a trace. Well, at least it's not smashed to pieces by some transformed people rutting and knocking it over but still... the situation seems strange, and you find yourself looking around carefully in case it is some sort of trap.";
		say "     You almost don't spot the strange jackal-headed man standing over in the shadows watching you, his eyes gleaming with amusement. He is garbed in an egyptian-style and quite elaborate tunic, its golden thread creating an impressive contrast to the deeply tanned skin on his muscular form, as well as the night-black fur of his canine head. 'Ah there you are, I have been keeping an eye on you for a little while now,' the man says in a rich and powerful voice, walking up to you with a grin on his muzzle. 'It's been fun watching you turn the tables on that little jackaless, but at this point she isn't about to let you get any stronger or get any more power over her now, is she?' the jackal-man says with amusement as you are forced to agree with his statement. 'Well I find the whole situation amusing enough I might be willing to help you out instead. What do you say?' he asks you with an even wider grin on his canine face.";
		say "     [bold type]Take the deal?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. For a stranger you just met, he seems to be surprisingly trustworthy.";
		say "     ([link]N[as]n[end link]) - Err... no. You don't even know this dude!";
		if player consents:
			LineBreak;
			say "     'Excellent! I knew I could count on you to know what is good for you,' the jackal-headed man says as he rubs his claw-tipped hands together in amusement. 'First things first though. I requre a task from you for my help... trust me, it will be well worth the effort,' he says and you listen attentively to what comes next. 'Go to the [bold type]zoo[roman type] here in town, and bring me back these particular [bold type]pheromone[roman type] samples they have stored there. Be sure not to drop any - I know for a fact that you won't find a second set anywhere else.' Tapping the side of his narrow muzzle with a finger in a knowing gesture, the strange man pulls a little scroll of - paper? No actually it's papyrus, from behind his back, handing it to you. 'Oh and If you happen to run into any of those annoying cats while you're at it... give them a good pounding if you don't mind.' With that said, he grins at you and walks through one of the high archways leading out of the room, being gone before you can think of asking any questions.";
			now statuequest is 0;
			now anubisrequest is 1;
		else:
			LineBreak;
			say "     'That's too bad,' the strange man says with a sad look on his face. 'I was so looking forward to watching you play with that lovely little jackaless some more.' With a teasing look on his jackal muzzle, he turns and begins to walk away. Before he vanishes through a tall archway, he looks back over his shoulder, throwing you a casual, 'If you change your mind, you know where to find me.'";
	else if statuequest is 2:
		say "     Returning to the museum with the samples the strange man sent you to retrieve, you luckily manage to retrace your steps to the empty pedestal, and are unsurprised to find the jackal-like man leaning up against it with an amused grin. 'Found them I see?' he says with a smirk as he takes the bundle of vials from you eagerly. 'Trust me, these little beauties will make it more than worth your while,' the jackalman says as he begins to carefully mix the pheromones together, the scent of some strange sort of musk filling your nose as he does so. 'Ah there we go!' he says happily as he takes a whiff of the completed project, seeming satisfied as he pulls out a familiar looking ankh with a jackal embossed on it.";
		say "     The man gives you a wink as he slowly pours the mixture over the ankh, and the metal seems to almost absorb the liquid into itself. 'There we go now, once you use this little beauty, that little shopkeep won't be able to keep her hands off of you. The jackal musk and enhanced pheromone mix should make sure of that,' the man says with a grin as he hands you the strangely scented ankh. 'I told you this little side trip of yours would be beneficial to both of us now didn't I? I look forward to seeing how it works out,' he says in a voice filled with amusement as he turns and wanders off into the dark museum halls again.";
		now statuequest is 0;
		LineBreak;
		say "[bold type]You gain a strange ankh![roman type][line break]";
		increase carried of strange ankh by 1;


Bestial Pheromones is a situation. The level of Bestial Pheromones is 4.
The Sarea of Bestial Pheromones is "Zoo".
anubisrequest is a number that varies.
when play begins:
	add Bestial Pheromones to badspots of girl;
	add Bestial Pheromones to badspots of furry;

Instead of resolving a Bestial Pheromones:
	if anubisrequest is 0:
		say "     Traveling through the zoo, you come across one of the medical labs used for treatment of the animals, and decide to look inside. Looking around you realize this is actually one of the labs where they store and keep track of sperm and pheromones collected from the animals in several large coolers. While the coolers still seem to be functioning, probably due to some sort of emergency power supply, many of the vials are strewn across the area and smashed open, showing clearly you aren't the first person to search the area. The broken vials exude a scent that makes your head swim in arousal, and as you look around the room, and you realize that some of the fluids in here is almost certainly from the recent visitors rubbing one out or fucking right in the midst of all this chaos. Looking around quickly in case the arousing smells have attracted anything to the area, you quickly retreat before you run the danger of succumbing to the powerful scents and do something you shouldn't.";
	else if anubisrequest is 1:
		say "     Hunting through the zoo, you follow the signs and with some luck manage to find the medical lab that is supposed to house the pheromones and chemicals the jackal-like man sent you to fetch. Unfortunately you don't seem to be the only one who has found the place, as a couple of felines are basking outside in the powerful scent emanating from within.";
		let CheetahFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and CheetahFightCounter < 2: [runs for 2 times or until the player loses or flees]
			now inasituation is true;
			challenge "Cheetah Woman";
			increase CheetahFightCounter by 1;
		now inasituation is false; [reset]
		if fightoutcome < 20: [player won]
			say "     Driving off the pair of sleek cheetahs, you look inside the room carefully, finding it to be full of several large coolers, several of which are standing open, their contents spilled out upon the floor. You now realize why the felines were so attracted to this place - the mingled musk and pheromones of numerous animals filling the air is quite a potent mixture, making your thoughts wander as you look around. Realizing you can't stay here long without giving in to your primal urges, you quickly pull out the paper the jackal-man gave you and begin to search the area, hoping the vials you need aren't lying among those smashed on the floor.";
			let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Intelligence Check):[line break]";
			increase diceroll by bonus;
			if diceroll > 16:
				say "     Quickly determining the filing system, you manage to hunt down all of the pheromones and chemicals on the list, noting with some surprise they seem to be mostly canine and jackal pheromones and some pheromone enhancing chemicals. You wonder idly what the strange man wants with these particular chemicals, but given the way the strong musk in the room is making your head spin with arousal, you decide to worry about that later. Ducking outside you look down at the double handful of vials you have now and wonder if you really should return them to that strange man in the museum. Then again, the thought of being even more powerful and jackal-like is very tempting as well. Tucking the items in your pack, you resolve to decide later, as you head back out into the zoo.";
				now statuequest is 2;
				now Bestial Pheromones is resolved;
			else:
				say "     You search the area as fast as you can, rummaging through the different vials even as your mind grows more and more clouded with lust. The musk of many different species fills your brain as your jackal nose inhales them happily, causing you to be more and more aroused and focused on touching and stroking your sensuous fur instead of searching the area as time goes on. Eventually you are so aroused that you barely can stop yourself from downing a vial or two of obviously recently collected lion seed, your body so sexually needy that you can think of little else. Forcing yourself to put the vials down you stagger back out into the zoo, running through the overgrown pathways in a vain attempt to clear your head and put some distance between you and the tempting musk-filled room. If you stayed there any longer, that would surely have put your remaining humanity at risk. Once your head has cleared slightly, you realize that if you want to find the items the jackal man asked for, you will need to return, hopefully being more careful this time though...";
				LineBreak;
				say "[bold type]Your sanity decreases by 15![roman type][line break]";
				decrease humanity of player by 15;
		else if fightoutcome > 19: [lost or fled]
			say "     Driven back by the sleek powerful felines, you are forced to retrace your steps down the zoo pathways, needing to rest and relax before you can try again... if you try again anyways.";

Twisted fruit grove is a situation. The level of twisted fruit grove is 4.
The Sarea of Twisted fruit grove is "Park".
FelinoidRescued is a number that varies.
Vinetrapped is a number that varies.
when play begins:
	add Twisted fruit grove to badspots of hermaphrodite;

Instead of resolving a Twisted fruit grove:
	if FelinoidRescued is 1: [player lost the fight to save the Felinoid]
		say "     Traveling through the twists and turns of the park, you notice the scenery seems to slowly be twisting and changing, again becoming even more vine-covered and lewd with every step you take. Remembering the last time you were here, you grip your weapon tightly as you hurry quickly down the path, eager to get this over with. The landscape seems to grow increasingly disturbing as you travel, until eventually you are back at the thin curtain of vines from before, the strange twisted glade mostly quiet now, save for a large mass of vines near the area where the felinoid who saved you before was dragged off. You can still see some movement as the beast struggles within his viney prison, and hope you aren't too late to help return the favor. Stepping forward you realize as the glade explodes into motion again that without a distraction in the form of a large cat, this is going to be a much harder fight indeed...";
		let PlantFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and PlantFightCounter < 5: [runs for 5 times or until the player loses or flees]
			now inasituation is true;
			challenge "Parasitic Plant";
			increase PlantFightCounter by 1;
		now inasituation is false; [reset]
		if fightoutcome < 20: [player won]
			Say "     Finally beating off the barrage of plants, you look up and realize that you have managed to reach the tree itself, leaving a trail of devastated plants behind you. You waste no time in filling the small basket Nermine gave you with the soft, fleshy fruits, their strangely tempting smell washing over you as you stuff the basket in your backpack to make sure you won't lose any of the fruit after all the trouble you went through to get them. After zipping it up, you look around the glade. It looks like the path of destruction you cut through the plant creatures is still open and you could probably make it back out easily if you hurried. But at the same time... the bundle of vines where the felinoid is trapped is now writhing as the beast inside makes one last valiant effort to escape.";
			say "     You can hear a piteous yowl, which is suddenly muffled, likely by one of the plants finally managing to work its way into the beast's mouth. A vague twinge of guilt fills you as you glance at the way out again, before looking back at the trapped felinoid. The beast did help you when you needed it before... but there are several fresh plants in the way you would have to fight through before you could manage to free the cat. On one hand, now that you have what you came for, there really isn't any more reason for you to stick around... but then, returning the favor by freeing the trapped felinoid would be a worthy task in and of itself.";
			say "     [bold type]Do you want to free the felinoid?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Rescue the cat. It's only right!";
			say "     ([link]N[as]n[end link]) - Fuck it, you're out of here!";
			if player consents:
				LineBreak;
				let PlantFightCounter be 0;
				now fightoutcome is 0; [reset]
				while fightoutcome < 20 and PlantFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true;
					challenge "Parasitic Plant";
					increase PlantFightCounter by 1;
				now inasituation is false; [reset]
				if fightoutcome < 20: [player won]
					say "     Beating back the plant creatures, you quickly begin to hack and cut away at the vines encasing the trapped felinoid. The beast clearly notices that something is going on, as it lashes out vaguely in concert with your own efforts, struggling and gnawing at its viney prison as he struggles desperately to get free. Finally managing to cut the large feline loose, you see the proud (if a bit worse for wear) creature stagger out of the now limp vine cocoon. He seems somewhat disoriented as he takes in great gulps of fresh air, his sides heaving mightily. Realizing that the grove is on the move again apparently angered at being robbed of its trapped prey, you quickly push and prod the felinoid until he gets the idea, the two of you staggering down the path you hacked on the way in, your combined might quickly making short work of the few plants that send shoots sprouting up in your way to entangle and trip the two of you.";
					say "     Once you are far enough outside the glade to have left the outermost offshoots behind, you practically collapse to the ground. That was one tiring adventure - and the massive amount of effort to fight off so many of the plants, as well as cutting the large cat free catches up to you all at once. Lying there on the ground panting helplessly, you blink as suddenly the large felinoid's face is right above yours, and you freeze as you realize that you are practically helpless in this position with the large beast standing above you. The feline looks down at you with his strangely intelligent eyes for a minute, lowering his muzzle down to sniff your face several times, before sticking his tongue out and giving you a long lick on your cheek. You blink as the beast backs off, sitting up as the male cat slowly weaves his way through the thankfully regular plants in the rest of the park, obviously still unsteady on his feet. He shoots you one last grateful look over his shoulder before vanishing between two bushes.";
					WaitLineBreak;
					say "     Sitting still where you are, your heart still beating quickly, you wonder just what that was all about. Did the creature actually appreciate the risk you took for his sake? Shaking your head for a moment, you realize the felinoid probably had the right idea about leaving too, as you can't stay here resting much longer. Who knows what else might stumble over you in this weakened state. Hauling yourself back to your feet, you quickly make your way back towards the entrance of the park, more than happy to be done with your task in the vine-shrouded corner of the park.";
					now FelinoidRescued is 2;
					now RareQuesting is 2;
					now Twisted fruit grove is resolved;
					stop the action;
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock-like flowers invade your every orifice as they begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and more plant-like, your mind starting to fade as you realize that before much longer you will be more plant than animal, rooted here in the glade like several of the other strange plants.";
					say "     Struggling in your viney bonds, there is no one left to save you this time. Your struggles slowly fade, as your mind fills with the strangely relaxing scent of the glade, and your body gives in to the wonderful pleasure of the vines massaging it. Soon you can't even remember why you would want to struggle, or even why you would want to do anything other than relax here in your nice safe cocoon, your mind slowly fading completely as your new roots sink into the soil and vines growing from yourself beginning to entwine with those around you.";
					now vinetrapped is 1;
					decrease humanity of player by 100;
					now body of player is "Parasitic Plant";
					now bodyname of player is "Parasitic Plant";
					attributeinfect "Parasitic Plant";
					follow the turnpass rule;
				else if fightoutcome is 30: [fled]
					say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see the cocoon holding the felinoid, still weakly struggling in its bounds. There is not a speck of fur visible of the large feline, but you know that he is in there from the trapped yowls and mews he is giving. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to struggle against his viney prison on his own.";
					WaitLineBreak;
					say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that it is too late to try again now. The cat would surely have been fully transformed if you ever went back...";
					infect "Parasitic Plant";
					LineBreak;
					say "[bold type]Your sanity decreases by 25![roman type][line break]";
					decrease humanity of player by 25;
					stop the action;
			else:
				LineBreak;
				say "     Unable to bring yourself to face another series of fights - for a creature that would probably only try to convert you later anyways - you quickly turn and run down the path you came in by, feeling vaguely guilty as you put the strange glade and the trapped feline behind you. Too late to change your mind now, as the cat would surely have been fully transformed if you ever went back...";
			now RareQuesting is 2;
			now Twisted fruit grove is resolved;
			stop the action;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock-like flowers invade your every orifice as they begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and more plant-like, your mind starting to fade as you realize that before much longer you will be more plant than animal, rooted here in the glade like several of the other strange plants.";
			say "     Struggling in your viney bonds, there is no one left to save you this time. Your struggles slowly fade, as your mind fills with the strangely relaxing scent of the glade, and your body gives in to the wonderful pleasure of the vines massaging it. Soon you can't even remember why you would want to struggle, or even why you would want to do anything other than relax here in your nice safe cocoon, your mind slowly fading completely as your new roots sink into the soil and vines growing from yourself beginning to entwine with those around you.";
			now vinetrapped is 1;
			decrease humanity of player by 100;
			now body of player is "Parasitic Plant";
			now bodyname of player is "Parasitic Plant";
			attributeinfect "Parasitic Plant";
			follow the turnpass rule;
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see the cocoon holding the felinoid, still weakly struggling in its bounds. There is not a speck of fur visible of the large feline, but you know that he is in there from the trapped yowls and mews he is giving. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to struggle against his viney prison on his own.";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that distracted the plant creatures will end up joining their ranks...";
			infect "Parasitic Plant";
			LineBreak;
			say "[bold type]Your sanity decreases by 25![roman type][line break]";
			decrease humanity of player by 25;
			now inasituation is false;
			stop the action;
	if RareQuesting is 1:
		say "     Traveling through the twists and turns of the park, you notice the scenery seems to slowly be twisting and changing, becoming even more vine covered and lewd with every step you take. Remembering the quest Nermine sent you on, you take this to be a sign you are headed in the right direction, and hurry quickly down the path eager to get this over with. The landscape seems to grow increasingly disturbing as you travel, until eventually the path ahead is blocked by a thin curtain of vines sporting strange flowers. Looking through the hanging vines you can see what appears to be a quiet glade with a strangely warped tree in the center, a number of strange small vine-covered bushes scattered in the area around it. Looking closely at the tree you can see several large flesh-coloured fruits hanging from its branches, and you notice a strong enticing smell hanging in the air, drawing you forward.";
		say "     Before you know it, you are moving forward as if in a trance, ready to step into the glade - but just before you actually do, a movement from the other side of the warped tree draws your attention and breaks you out of it. The vines forming the boundary back there are being pushed aside as one of the golden-furred felinoids roaming the area slowly stalks into open, his head held high as he sniffs the air, obviously as entranced by the teasing scent as you were. You freeze as you watch the beast slowly cross the glade, your hand poised to draw the vines aside as he approaches the tree. And then the deception is revealed - as all of the plants seem to explode into motion around the startled feline, the vines and tendrils lying across the ground suddenly slithering and reaching out to trap and entwine the feral beast! The felinoid roars as he rips the vines apart even as they try to twist around and cocoon him, trying to push more flowers with their entrancing scent into his face and sink cock-like fruit into any opening they can find.";
		WaitLineBreak;
		say "     Blinking, you realize how narrowly you avoided the plant's trap - if you had been as unsuspecting as the large predatory cat was, you probably would already be completely trapped by now. But then of course... you also realize the felinoid has just provided you with a perfect distraction. All of the greenery is busy with him, giving you the best chance you'll ever get to snatch up some of the fruit Nermine desires! Before you can stop to think, you dart through the curtain of hanging vines, which try to cling to and rip at you as you push through them, almost as if sensing your purpose. Quickly charging across the glade at a run, you pull the basked from where you had it strapped to your back, your eyes on the fruit hanging temptingly from the tree. The large plant sways its branches as you near it, its leaves rustling in alarm, followed by what seems to be a commanding creak and crack of the wood.";
		say "     Reacting to the commotion, part of the more mobile plant creatures focus their attention more on you, with one or two actually letting go of the felinoid and sending their writhing tendrils worming your way. Glancing their way, you feel cautiusly confident that you can make the snatch and grab before they intercept you - and you would have... if the tree hadn't forced a snare-like root through the surface at that moment. Catching your ankle, it tips you up and causes you to sprawl painfully across the ground just a little bit away from your goal. You roll over and prepare for a fight as the vines begins reach you several heartbeats later, intending to entrap you.";
		LineBreak;
		say "[bold type]You lose 25 HP![roman type][line break]";
		decrease HP of player by 15;
		let PlantFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and PlantFightCounter < 3: [runs for 3 times or until the player loses or flees]
			now inasituation is true;
			challenge "Parasitic Plant";
			increase PlantFightCounter by 1;
		now inasituation is false; [reset]
		if fightoutcome < 20: [player won]
			say "     You pant in victory as the last of the green vine-like menaces are defeated, and waste no time closing up to the tree at least. It seems to creak in outrage as you begin filling the basket with strange fruit in a hasty rush to get out of here. Hearing a roar makes you glance over to the large felinoid that gave you this chance, and you see that it is still struggling against the plants - but the inevitable end result is clear as more and more tendrils latch onto it. Soon, they will immobilize the cat and those plants that are just 'helping' their brethren will no doubt turn your way. Realizing you don't have much time left, you quickly close the lid of the basket, hoping you have managed to get enough of the strange fruit to satisfy Nermine, since you certainly don't intend to return to any place this dangerous again if you can help it.";
			say "     Your muscles tense to start running, but then a pityable mewl draws your attention once more to the felinoid. Vines are levering open its maw while a tendril with a cock-like fruit rears up before it, ready to plunge itself down its throat. No - you can't just leave the feral beast. Unintentional or not, it helped you greatly in your task, so you dash towards the writhing cocoon of vines. Kicking, wrenching and tearing a few of the main trunks where they sprout from the ground, you leave the green menaces injured - gushing clear sap that should have gone to strengthen their vines. Between the fact that the damaged plants partly let go of the felinoid to lash out at you in retaliation and several of the their remaining vines having gone limp, this gives the feline beast another chance to get out.";
			WaitLineBreak;
			say "     The felinoid clearly realizes what you are doing and wakes his last reserves of energy, roaring out load as it starts to lash out with its claws to shred the unravelling cocoon of vines. You have to gain some distance as not to get trapped yourself the plants do their utmost to punish your intrustion, but even so - the intervention was enough to get the feral cat free. Ripping out of the tangle of greenery, it dashes past your position in full flight and you don't waste any time hanging around either. At a fast sprint, the clingy vine curtain is no real barrier as you forcefully shove through, tearing off some of the tendrils that just didn't want to let you go. Outside the glade, you keep going for a good minute or two, gaining enough distance to feel halfway safe.";
			say "     Resting your hands on your knees as you lean over and pant in exertion, you suddenly feel a strange tingling sensation against the side of your neck and catch a whiff of strange, yet somehow pleasant musk. Looking up, you find yourself eye to eye with the felinoid you rescued, his face merely inches from your own. Must have been the large cat's whiskers you felt, brushing against you as he moved up close. You freeze for a second as the feline beast sniffs you and rubs the side of his furry head against your cheek and shoulder - again giving you a breath of its musky scent. Then he backs off and looks you up and down with strangely intelligent eyes before turning around and stalking off. Before the feral beast vanishes from sight, you see that he is hurt - fur matted with blood in several places and showing a slight limp. Those plants really got nasty in the end, when they knew they were losing their newest captive...";
			LineBreak;
			say "     Soon finding yourself all alone, you let out the breath you hadn't realized your were holding, and straighten up before heading back to the park entrance at a run, deciding you have definitely had more than enough excitement for today.";
			now FelinoidRescued is 2; [player won the fight to save the Felinoid]
			now RareQuesting is 2;
			now Twisted fruit grove is resolved;
			stop the action;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock like flowers invade your every orifice as the plants begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and plant like, your mind starting to fade as you realize that before much longer you will be more plant then animal, rooted here in the glade like several of the other strange plants. But then suddenly the vines around you rip and tear, and you blink and gasp at your sudden freedom, and a new wave of strong masculine musk washes over you as you fight to pull your way out of your viney cocoon.";
			say "     Looking up you can see that the strange Felinoid managed to drag its way over close enough to where you were trapped to claw you free. Its attempt seems to have cost it dearly, as it is now being quickly overwhelmed by many of the parasitic plants from the area. Taking advantage of the distraction of the glade full of plants, you quickly stagger away, pulling vines off of yourself as you go. You only stop to look back once you have managed to duck through the hanging curtain of vines without incident, to see the felinoid giving you a sad pleading look as it is dragged back into a cocoon of its own. You feel vaguely guilty as you stagger exhaustedly down the pathway back towards the park entrance, realizing that the feline beast spent much of its strength to free you, and all you could do was run away...";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse again, barely feeling human anymore, as the musk of the parasitic plants and the musk of the strange felinoid linger in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that helped you will end up meeting the fate it saved you from...";
			infect "Parasitic Plant";
			infect "Felinoid";
			LineBreak;
			say "[bold type]Your sanity decreases by 25![roman type][line break]";
			decrease humanity of player by 25;
			now FelinoidRescued is 1; [player lost the fight to save the Felinoid]
			stop the action;
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see that while some of the plants are following you, most have focused back on the felinoid. There is barely anything left to see of the large feline, most of him being hidden in a cocoon of vines. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to fend for himself and be entrapped by the plants.";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that distracted the plant creatures will end up joining their ranks...";
			infect "Parasitic Plant";
			LineBreak;
			say "[bold type]Your sanity decreases by 25![roman type][line break]";
			decrease humanity of player by 25;
			now FelinoidRescued is 1; [player lost the fight to save the Felinoid]
			stop the action;
	else: [the rare item quest is not active and neither is the captured felinoid available]
		say "     Traveling through the twists and turns of the park, you notice that the scenery is starting to change and becoming more and more twisted and vine-covered with every step. Eventually you reach a thin curtain of vines blocking entry to an overgrown glade, you can see a number of those strange twisted plants moving around through the vines, seeming to congregate around some kind of warped tree. You can smell a soft tempting odor coming from within the glade, and almost find yourself stepping through the vines to investigate closer. Backing off you shake your head to try to clear it, and quickly turn and run down the path back the way you came, somehow sure that the entire situation is some kind of trap.";

When play ends:
	if Vinetrapped is 1:
		say "     You eventually awaken again somewhat as something nudges you - everything seems to be somewhat diffuse and foggy as you try to figure out where you are, or even what you are. Then again, something nudges against you softly, and you turn your attention down to see what appears to be some kind of strange cat-like creature made up entirely of vines and tendrils, small flowers staring up at you where eyes would normally be. For some reason the vine-creature seems vaguely familiar to you, as you stretch out several of your own vines to pet its head, your tendril-like fingers tangling with the vines of its body and sending a soft surge of pleasure through you both. Looking at yourself you realize you are completely made of vines as well, though in a slightly more humanoid shape.";
		say "     Something about that realization makes you feel vaguely happier, as your somewhat confused mind takes pleasure in all of this green perfection. The feline nudges you again, and you turn your attention back to what your fellow plant wants. Tangling your vines with the feline's again, you realize that it is time for you both to move to a new area, this one already growing overcrowded with your other growing brethren. With some effort you manage to uproot yourself, feeling unsteady as you spread your roots out to get a better purchase on the top of the ground, glancing at your new companion you realize they might have a better idea of how to do things, as with more vine-stalks on the ground it would be much easier to balance. Quickly shifting yourself downwards, you signal your readiness to your new companion, and together the two of you head out of the grove to find yourself a new location to anchor yourself so you can continue to grow.";
		WaitLineBreak;
		say "     After a little while of travelling through the city, the two of you reach an area where your fellow plants have not already spread. Sadly, the reason for this is that there are few cracks in the thick asphalt paving for you to sink your roots into, forcing you to continue to wander ever outwards. The city is dangerous for a plant that isn't securely rooted, although most of the animals stay out of your way, the two of you end up fighting several times. While you are unable to trap and root your opponents properly, you still manage to drive them off together. Eventually you find a somewhat nicer area near a river, and the two of you walk into the flowing water, allowing it to carry you along for a while, replenishing your strength as you float by.";
		say "     Finally finding a perfect area along the bank, you both haul yourselves out and lay claim to the rich and fertile soil and good sun. Together with your companion, you quickly set down roots and settle in to rest, happy to have found this place before any of the other plants claimed it for themselves. You realize vaguely as you twine your roots together with that of your vaguely feline companion, that your success was likely due to the fact that there were two of you working together, your nearly simultaneous viney awakening allowing you to succeed where likely many others have failed. You aren't sure how much time passes as the two of you grow and bask in the sunlight together, your vines growing larger and more powerful, even as they intertwine with those of your companion, but eventually you both sense something nearby.";
		WaitLineBreak;
		say "     Working together you easily manage to subdue the intruding creature and start to milk the trapped thing for its nutrients, before eventually taking pity on the poor thing and wrapping it in your vines so it can be protected while it becomes a much better plant. You vaguely recall the animal was something called a human, which almost means something to your foggy mind, but is probably unimportant. Eventually more of the animals show up, in ones and twos as if looking for something, and your glade grows quickly as you and your companion take turns showing them the pleasures of being anchored to the soil as well. Before long your first converts are eagerly helping you convert others as well, and as you bask in the sun and rub your vines through those of your once feline companion, you realize you truly have found a wonderful place for your new glade...";
		if hellHoundLevel > 0:
			say "     With your mind almost completely erased by your transformation into a plant, you forget about your pact with the hellhound. But he does not forget. Having given into your life as a corrupting plant creature infecting others, your dark contract has only been delayed to prepare you for a new role in the afterlife. When that times comes at the end of your long life as a plant, you are pulled into the pits of Hades and given a life of as a foul tree there. Having spent centuries growing and corrupting others in life, your body is now twisted and turned to new, dark aims on your unending task to satisfy the lustful urges of the demonic hounds. They mark your large trunk with their foul, burning urine, letting its corruption seep into you. Your vaginal flowers are fucked by the hound's cocks and your tendrils made to pump your tainted fluids into their bitches. Your branches grow dark fruit which break open and release plant-like hounds to add to Hell's numbers.";
		stop the action;


Section 6- Rare Item case


Rare Counter is a man.
The description of Rare Counter is "[RareCounterDesc]".
The conversation of Rare Counter is { "Treasure!" }.
Rare Counter is in The Mysterious Shop.

to say RareCounterDesc:
	if RareQuesting < 10: [not yet delivered all pieces]
		say "     This Glass counter seems to hold several of the finer pieces in the store, some very fancy bits of art and some finely carved gems resting next to unusual porcelain dolls and ancient looking scrolls. It also seems to be missing several pieces, or at least there are several empty spots sitting open and waiting for something to be placed there, maybe you should talk about that with Nermine for some more information about it...";
	else:
		say "     This Glass counter seems to hold several of the finer pieces in the store, some very fancy bits of art and some finely carved gems resting next to unusual porcelain dolls and ancient looking scrolls. In between the other items are the coins, bracers and the necklace you worked hard to obtain for Nermine, completing her collection - for now.";

the scent of Rare Counter is "You smell the items on the counter and a shiver runs down your spine. There is something strange and mysterious to these items and they should be handled with care.".

RareQuesting is a number that varies.

instead of conversing the rare counter:
	say "     Crouching down in front of the wooden counter with its glass plates that protect precious treasures, you try your best to strike up a conversation with it. Sadly, the piece of furniture < responsive, so all this does is earn you a strange look from Nermine. Maybe you should talk to her instead if you want to know something about the rare items.";

to say RareItemQuestTalk: [this is one of Nermine's talk options from her talk menu now]
	if JackalBoyTF > 0: [already locked into Jackalboy shape]
		say "     'Ah, Nermine sees her little helper is interested in her rare item counter!' The jackal shopkeeper beams happily at your interest, but then shakes her head slowly as you step closer to inspect it in detail. 'Sadly Nermine isn't needing [hisher] help with anything in the counter right now, she has other things waiting for the little jackal to do...' she says with a teasing smile on her dark muzzle.";
	else if wrcursestatus >= 7 and wrcursestatus < 100: [wereraptor cursed player]
		say "     Tensing as she sees you standing at the counter, the jackaless clears her throat. 'Nermine must regretfully ask her dear visitor to keep [hisher] sharp claws and big tail away from her collection of rare items. Many of them would react badly to being scratched or bumped.' She keeps up an insistent stare until you step away from the counter and the treasures laid out in it.";
	else if RareQuesting is 0:
		say "     'Ah Nermine notes her customer is interested in the very rare items!' the jackal shopkeeper says happily as she rubs a polishing cloth over the glass countertop. 'Some of these Nermine has worked very hard to acquire, although there are several items in this city that Nermine would love to add to her collection,' the jackaless says wistfully as she eyes the empty spots in the case. You think there could be an opportunity here to get on the shopkeepers good side...";
		say "     [bold type]Do you offer to help her acquire the items?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. It'll be an adventure![line break]";
		say "     ([link]N[as]n[end link]) - Err... no, not right now.[line break]";
		if player consents:
			LineBreak;
			if guy is banned or furry is banned or girl is banned:
				say "     'Oh, Nermine is seeing now that she looks at her visitor that [heshe]will not be able to help her in this regard. Nermine is feeling most sorry for them, restricting their fun so. One should not be so picky, she is thinking.' Nermine shakes her jackal head sadly.";
				say "(The rare item quest requires hermaphrodite, guy, girl and furry content to be available. Sorry.)";
			else:
				say "     'The delightful guest is offering to help Nermine acquire some of these rare items?' the jackal-woman says with surprise, before looking at you appreciatively. 'If [heshe] can help Nermine out like that, the jackaless would certainly have a nice reward waiting when [heshe] does,' Nermine says as she reaches into the case and pulls out a small golden ankh with the image of a jackal man stamped on the base. 'If Nermine is helped, she will pay the favor back with gold. And perhaps if her friend is very helpful, a bit more than gold,' the sexy jackal-woman adds with a wink as she sets the ankh carefully back into the cabinet. 'First though, a little... test. Nermine could use some items from around town, and it should be a good start for her helper to get a feel of the tasks [heshe] would have to do.'";
				say "     The jackaless vanishes into the back room, returning after a few moments with a small basked held in her hands. 'Go to the [bold type]park[roman type], Nermine has heard there are strange plants there now. If things are as she thinks, there should be some very special fruit to find in the [bold type]grove[roman type] that has sprung up there. Bring her back a basket full of fruit and she will be more than thankful,' the shopkeeper says as she hands you the basket, sending you on your way.";
				now RareQuesting is 1; [quest initiated - stage 1, fruit]
		else:
			LineBreak;
			say "     Hmm... if even Nermine is unable to acquire these items herself, they are likely going to be far too difficult for you to get your hands upon. You decide to not say anything right now, and just watch as she admires her already fine collection.";
	else if RareQuesting is 1: [quest started, no progress yet]
		say "     'Has the friendly visitor who offered help still not found the [bold type]grove[roman type]?' Nermine says with a slight frown on her silver-painted face. 'Well, it certainly is not in Nermine's shop. Perhaps searching in the [bold type]park[roman type] would be advisable instead. Or if [heshe] has changed [hisher] mind, the jackaless must regretfully ask for her basket back.' She looks at you speculatively, raising one eyebrow, and you quickly answer that you haven't given up on this little quest for her yet. 'Good,' she purrs, stroking a finger over the glass case and tapping it over the spot where the golden ankh resides.";
	else if RareQuesting is 2: [player got the fruit]
		say "     'Ah, Nermine thanks her brave guest gratefully!' the jackal-woman says with bright grin on her silver-painted muzzle as she takes the basket full of strange fruit from you. 'These are very rare fruit indeed, and will certainly fetch a very high price to the right buyer!' she says brightly as she sets the basket down on the counter next to her, before reaching underneath it to produce the shiny golden ankh she showed you earlier. 'And speaking of price, here is the one that was agreed upon as well,' with a purr in her voice, she hands you the golden ankh, its weight feeling surprisingly good in your hands as you hold it up to inspect the gleaming metal in the candlelight. 'It is more than just a golden trinket,' the jackal-woman says teasingly as she gathers up the basket and heads towards the back room.";
		say "     You are almost entranced by the beauty of the craftsmanship on your new posession, barely registering anything but the ankh until Nermine's eventual return. Stepping up close beside you, she leans forward and whispers into your ear, 'The treasure Nermine's friend is holding is a very special and powerful ankh indeed. Some might just value it for its gold, but this humble shopkeeper is sure that her visitor will go beyond such trivialities. If [heshe] uses its true power, [heshe] will become ready for further helping Nermine out and earn more rewards.' A sly smile on her muzzle, the jackaless strokes a finger gently along your arm, brushing against the side of your hand holding the ankh, then withdrawing. As she moves back behind the counter afterwards, you can't help but be very curious about what she meant...";
		LineBreak;
		say "[bold type]You gain a strange ankh![roman type][line break]";
		now carried of strange ankh is 1;
		now RareQuesting is 3; [first ankh awarded]
	else if RareQuesting is 3: [no further progress after the first ankh]
		say "     As you bring up the rare items laid out under the glass counter again, the jackaless looks you up and down, as if searching for something. She appears slightly disappointed for a second, then brushes the expression aside and gives you a friendly smile more typical of the strange shopkeeper. 'Nermine thinks her brave helper should try using the power of the ankh she has provided. It will surely help [ObjectPro of player] in the tasks ahead if [heshe] wants to assist the jackaless further.' She doesn't go into any more detail than that as you ask what the ankh will actually do, only giving you a sly smile and answering, 'There is no explaining about these matters, only doing and seeing.'";
	else if RareQuesting is 4: [player used ankh #1]
		say "     'Ah, Nermine sees her friend has discovered the power of the ankh,' the jackal-like woman says with a soft chuckle, smiling at you. 'She really must say that it is an especially fetching new tail her assistant has acquired.' After a wave at her own tail in comparison, she stretches out a hand towards yours, then stops halfway and draws the hand back with a flourish. 'It almost makes her want to pet and stroke it... but first Nermine has business to attend to, perhaps petting and stroking can come later on.' A teasing grin on her muzzle, she focuses her attention back to the glass countertop. 'Nermine is sure now that there is an interest in what comes next - and she can tell that it is both simple and hard at same time.'";
		say "     Giving a little sigh, the jackaless explains further, 'She wishes she had time to hunt it down herself, as somewhere near this town is an old stash of coins, pirate loot Nermine thinks. These coins are quite rare, and very easily attuned to certain types of enchantments.' The shopkeeper gives you a teasing wink as she mentions enchantments. 'A handful of those coins would be very useful, and would certainly look quite nice displayed in the shop counter, do you not think?' she goes on to say, before reaching under the counter to pull out another of those strange golden ankhs. 'Nermine has another job opportunity after this, but first one must finish this job while Nermine tries to get some more information for the other job. And of course, Nermine will pay with gold for gold.'";
		WaitLineBreak;
		say "     Holding up the ankh to catch the light, the jackaless smiles at you. 'Also, since Nermine only needs a handful of the coins, anything beyond those would be the brave adventurer's to keep... a very good deal she thinks,' she says with a grin as she places the ankh back underneath the counter.";
		now NermineTalk is 3;
		now RareQuesting is 5; [pirate gold quest stage reached]
	else if RareQuesting is 5: [pirate gold stage active]
		if TreasureFound is 1:
			say "     'Ah, the brave adventurer found [hisher] treasure!' Nermine says with a large smile on her muzzle as she eagerly takes the small handful of golden coins you are holding out from you, leaving you feeling vaguely sad as those precious golden circles disappear behind the counter. When you point out that that was all there was in the pirate stash, she blinks at you in surprise. 'Only so few coins left? Well, then it is especially fortunate that Nermine's helper managed to find them! This makes them far more precious and she will have to adjust the price accordingly,' the jackal-woman says, a smile tugging at the corners of her muzzle. Then she pulls out the small golden ankh she promised you earlier and hands it to you. 'Nermine thinks this was more than earned then, though she also believes there might still be further coins left out there if one were to go and look again,' she says with a grin. As you weigh the warm golden ankh in your hands and wonder whether it was worth the handful of treasure you just traded for it...";
			LineBreak;
			say "[bold type]You gain a strange ankh![roman type][line break]";
			now carried of strange ankh is 1;
			now TreasureFound is 0;
			now RareQuesting is 6; [gold coins delivered]
		else:
			say "     'Back again so soon? And with empty hands, disappointing the poor jackal shopkeeper?' Nermine says in a teasing voice as you address her over the rare item counter again. 'If Nermine knew where to find the coins, she would not be needing her helper to look for them... but one would think that the beach might be a good place to start looking. After all, where else would one find the way to pirate treasure?' she says with an amused grin as she turns back to her work, her tail waving teasingly at you as she leaves.";
	else if RareQuesting is 6: [second ankh not yet used]
		say "     'So eager to get started on the next retrieval Nermine mentioned?' the jackaless asks with a smile as you approach the rare items case again. 'The humble storekeeper is still looking into some promising leads, but she also thinks that her helper will not be ready for the next treasure-hunt without the power of the ankh. And besides, Nermine wants to see just how handsome [heshe] will look afterwards.' Adding the last few words witha broad smile on her face, Nermine watches you intently before shooing you away, not willing to proceed before you actually make use of the golden ankh.";
	else if RareQuesting is 7: [second ankh used]
		say "     'Oh, Nermine's visitor is looking so handsome now, with that nice thick jackal pelt! The entranced shopkeeper can barely stand to look without touching it,' she says with a grin on her muzzle as she eyes your new dark fur. The jackal-woman actually reaches out to sensually stroke your body, then stops herself and shakes her head. 'It would be desirable for Nermine to run her hands through it again and again... but sadly, the shopkeeper still has unfinished business to conclude...' With a soft sigh, she steps back a little, leaving your body tingling as it aches for more petting by her. 'Furthermore, Nermine has bad news - while she knows that the next desired target was at the museum in this town when the current crisis started, Nermine has been unable to confirm if the items are still there.'";
		say "     Your eyes are inevitably drawn to the female jackal's t-shirt as she sighs sadly, her breasts moving under the thin fabric and providing quite a nice view. 'The humble storekeeper most dearly wishes to possess a pair of silver bracers with jackals on them, as well as a shiny golden necklace from the egyptian exhibit. Being so very valuable and pretty, the problem is that they could have already been taken elsewhere by someone,' the jackaless says with another deep sigh as she leans forward on the counter, giving you a nice view of her black-furred cleavage as she does. 'Finding her those treasures would make Nermine exceptionally grateful. She has one more ankh to reward her tireless helper with as well...' The words are said in a lusty tone and the female jackal gives you a slow wink, making you feel all the more eager to go find the pieces of ancient [bold type]jewelry[roman type] the sultry jackaless wants from the [bold type]museum[roman type].";
		now RareQuesting is 8; [museum quest part started]
	else if RareQuesting is 8:
		say "     'Nermine's tireless helper has not found the jewelry yet?' the jackal-woman says with a sad look on her silver and black muzzle. 'The overly hopeful storekeeper was afraid it might be too much to ask of [ObjectPro of player] - even though [heshe] looked so capable and handsome when [heshe] set out.' She sighs sadly, then turns back to the regular counter. 'Maybe it would be beneficial to try asking around the museum if searching the halls does not help, though Nermine is not sure who if anyone could be left there to ask...' Nermine says as she goes back to what she was doing before you interrupted her, although she also proceeds to stroke a finger over her nipples, making them protrude and become quite visible through the fabric of her shirt. 'It would be such a shame if Nermine never got to reward her assistant, even though she eagerly wishes to...'";
	else if RareQuesting is 9:
		say "     'Oh dear! Nermine's brave assistant actually found them!' the jackaless shopkeeper says with surprise as you proudly set the precious items on the counter. 'The poor jackal had almost given up hope of every owning such lovely pieces of work!' she says happily as she opens up the rare item case and begins to position the new pieces of jewelry at prominent positions inside it. You feel a grin tugging at your face at her obvious surprise and joy, feeling rather proud of all the work you put into acquiring the new items that now grace the glass case with their presence. Finally satisfied with her new centerpieces after a little while of rearranging, Nermine turns to you and another large smile crosses her muzzle, the silver lines on her face making her look incredibly sexy as she leans over the counter and gestures you closer.";
		say "     Leaning forward, you find the jackaless's slender hand rubbing through your chest fur before moving up to stroke along the sides of your neck and face. The sensation of her soft claws running through your fur makes you shiver in anticipation. Suddenly Nermine grips the back of your neck with her hand as she pulls you into a deep kiss, her muzzle over your mouth as her tongue plays with yours in a teasing dance. You need little encouragement at this point to respond eagerly, your own hands rubbing her shoulders, even as you savor the taste of the aroused jackal filling your mouth. Eventually she breaks the kiss, and you both end up panting with arousal as you stare into each other's eyes.";
		WaitLineBreak;
		say "     After a moment, Nermine grins again before reaching under the counter. 'Nermine thinks she still needs to pay her tireless helper for all [hisher] help, and she has one last ankh to share now,' the shopkeeper says as she places the golden ankh into your hands. 'Nermine also thinks she has other promise to fulfill as well. Though that can wait until after her new friend has used ankh to look even more handsome.' She smiles as she says those words and runs her tongue along the sides of her muzzle, licking her lips eagerly as she stares at you in anticipation.";
		now RareQuesting is 10; [museum treasures delivered - ankh #3 awarded]
		LineBreak;
		say "[bold type]You gain a strange ankh![roman type][line break]";
		now carried of strange ankh is 1;
	else if RareQuesting is 10: [third ankh not yet used]
		say "     'Nermine hopes her new friend will use the ankh sometime soon,' the sultry jackaless says, as she traces the tip of her claw along the edge of her breasts slowly. 'She just can't wait to see how much better her friend will look with a nice proud muzzle of [hisher] own,' Nermine adds, her voice starting to come out in soft lusty breaths, as she stares at you in eager anticipation.";
	else if RareQuesting is 11: [third ankh used]
		say "     'Oh my, Nermine's helpful friend has come to visit her rare items counter again,' the jackal-woman says with a large smile on her muzzle as she proudly gestures to where the new silver and gold jewelry and golden coins are displayed prominently. 'As [heshe] can see, Nermine has greatly appreciated the amazing help provided so far. She wishes she had even more items for someone as resourceful as her tireless adventurer to obtain, but sadly, this is all that Nermine really needs from this city - so her handsome new friend's job is now done.' She says this with a teasing smile before adding, 'At least, the job hunting down items for Nermine is done. Nermine can think of several other things for someone with such a handsome looking face to do for - and with - Nermine. She does think she promised some fun besides the other rewards.'";
		say "     The jackal-woman then stretches out one of her claws to trace the soft gold-dusted patterns in the fur of your new face before stroking the backs of her fingers along the side of your new muzzle, causing you to shiver at her teasing touch. 'Mmm yes - such a fine new look to have, Nermine just loves it...' She pants out the words, obviously as excited and aroused as you are. 'Nermine almost wishes she had yet another ankh to give her friend, though she definitely thinks her friend is looking very handsome as is.' After saying those words in a loving tone, she brings her head forward to kiss the tip of your new muzzle before leaning back over the counter. 'Mmm yes, any time her handsome assistant wants to play with Nermine, [heshe] should just let her know. She will make plenty of time just for [ObjectPro of player] to spend time with,' she adds with a sexy wink as she turns back to what she was doing, her tail waving teasingly behind her as she goes.";
		now RareQuesting is 12; [primed for sex with Nermine]
	else if RareQuesting is 12:
		say "     'A very grateful welcome back from the humble storekeeper! Her friend does want to talk about some of the items in the case?' Nermine says with a broad smile on her muzzle as she approaches. 'It is only fitting as [heshe] helped her find several of them,' she adds happily as she reaches out to stroke the tips of her claws through your soft fur, making you shiver at the pleasant touch. Then the jackaless adds with a soft wink, 'Has Nermine mentioned she is exceptionally appreciative of all the help provided to her?' Showing off the new items you helped obtain for her, she adds, 'Sadly there is not anything else Nermine needs for the case right now. Though perhaps her handsome looking jackal friend has some 'needs' of [hisher] own that Nermine might help with?' The looks she throws you are laden with lust and anticipation.";
	else if JackalManTF is 4: [intro to dominant sex with Nermine]
		say "     'Oh! Nermine sees her friend found yet another ankh on [hisher] own!' the jackal-woman says with a smile as she looks you up and down eagerly, then adds, 'She should have expected no less from someone as obviously resourceful and handsome.' With that said, she leans forward to look your changed body over, blinking slightly as she gets a whiff of your strong jackal scent. 'Amazing,' she says as she begins to pant eagerly. 'Nermine has never seen anything so wonderful, just looking at such a strong, handsome jackal is making her feel all sorts of aroused.' The shopkeeper lets out a lusty moan as she begins to rub her breasts through her t-shirt, her reaction causing you to grin as she moans like a bitch in heat. Noticing your gaze resting on where she is rubbing her breasts, Nermine slowly reaches down to the bottom of her shirt, and teasingly begins to draw it up inch by inch.";
		say "     The sight of the formerly so proper and controlled shopkeeper stripping before you somehow only makes the situation seem even better, as her shirt is soon tossed aside while she rubs her hands over her soft black breasts for your amusement. 'Mmm - Nermine think maybe she should just work like this from now on, if the nice handsome jackal-likes her breasts so much,' she says in a lusty tone, then stretches to give you a good view of her own full jackal body, one of her hands straying down to the clasp of her jeans as you watch. Seeing your obvious approval, she wastes no time in undoing the fastener and slowly stripping them off as well, eagerly displaying her now naked body before you. 'Nermine never knew this could feel so good, or that she could want to please someone so much...' the jackaless moans eagerly as she runs her hands through her now bared black fur.";
		WaitLineBreak;
		say "     'Please - will the handsome jackal help his needy bitch out? Nermine needs to be fucked so very very badly, she wants to please her new jackal master...' the shopkeeper says eagerly, seeming almost surprised at her own begging words, before grinning as she realizes their truth. 'Yes... a master for Nermine, a nice strong powerful jackal master, just what Nermine always needed...' she moans eagerly as she stares up at you with adoration, the sight making you grin as you realize the scent-laden ankh is working exactly the way the strange jackalman promised it would. You just can't wait to see what kind of fun you can have with Nermine in such a state...";
		now RareQuesting is 13; [prepped for dom sex with Nermine]
		now NermineTalk is 4;
	else if RareQuesting is 13:
		say "     'Ah, Nermine's master wishes to talk about the rare items again?' the jackaless asks as she saunters over, shaking her naked hips a little more than necessary. Then she leans forward on the glass countertop, her naked breasts soft and perky and providing you with an awe-inspiring sight. 'Nermine can think of such much better things for her handsome master to talk about, or simply do with his devoted bitch...' The lust filled jackal licks her lips eagerly as she says this, her obvious need making your muzzle pull back in a grin as you think of all the fun things you can do with her now.";

the fuckscene of Rare Counter is "[sexwithrarecounter]".

to say sexwithrarecounter:
	If JackalManTF is 4 and RareQuesting is 13:
		if cocks of player > 0:
			say "     An evil grin comes over your muzzle as you eye the nice clean glass countertop containing all the rare items you hunted down, and you decide to enjoy yourself for a minute. Making sure to catch Nermine's eye, you slowly stroke your cock several times in the direction of the counter, thoroughly enjoying the way the jackal-woman's eyes are locked on your canine cock as you pump yourself to orgasm. The female jackal moans in desire, her mouth open as she pants in need while she watches you shoot your seed all over her nice counter. Of course, the cleanly shopkeeper can't leave a mess like that on the glass counter for long, and Nermine quickly hurries over to clean your mess off... with her tongue, hungrily swallowing your seed after each swipe over the cool glass.";
		else:
			say "     An evil thought comes to mind as you look down at the nice clean glass counter. Glancing over to Nermine, you make sure you have her full attention as you swing yourself up onto the piece of furniture, then spread your legs wide to give her a nice view. Once the jackal-woman's gaze is firmly locked on your damp pussy, you slowly begin to tease yourself, inserting first one finger, then two into your body as you moan in pleasure and buck your hips slightly on the counter. Much to your amusement you find that the jackal shopkeeper you are so fond of is panting and licking her lips with each stroke of your finger, her needy expression almost as much fun as the masturbation itself. Unable to hold back your horny body's needs for long, soon you throw back your muzzle and begin panting heavily yourself as you orgasm, your juices washing out over your fingers and onto the counter itself. Grinning broadly, you swing down off the counter. Of course, the cleanly shopkeeper can't leave a mess like that on the glass counter for long, and Nermine quickly hurries over to clean your femcum off... with her tongue, hungrily swallowing after each swipe over the cool glass.";
	else:
		say "     You don't think Nermine would appreciate you making a mess like that on her nice clean counter. Maybe you should wait until she isn't watching first?";

When play ends:
	If JackalManTF is 3:
		if humanity of player < 10:
			say "     Surrendering fully to the infection, you begin to settle into your new feral life, fighting to adapt to your new body with its pretty wild instincts. Then at some point, you receive a strange sort of dream - in it, Nermine comes and visits you, somehow rendering you unable to move as she crouches down and strokes your soft black fur. 'Oh how sad it is to see such a lovely partner reduced to just a beast,' the jackal-woman says, her words confusing to your lust addled mind as she strokes your soft sides. 'Still, at least Nermine's former assistant is happy as a horny little beast in the city. Even though it is a very strange-looking beast one must admit,' she says teasingly as she pets your canine head for a while. 'Do not worry little one, Nermine is here to help, she does still owe for all the help after all.'";
			say "     As she is tracing some kind of pattern on your skin, a strange warm sensation spreads out from where Nermine touches you. Soon you find yourself shuddering in pleasure, your body filled with nearly orgasmic bliss as something sweeps through you, and before you know it you wake up as your body is wracked with a mighty orgasm. Blinking muzzily, you seem to realize something has changed, as you look over yourself you realize that your body is no longer the mixed form you have grown used to, but a handsome fully changed bestial body. You grin as you look around, half expecting to see the jackal-woman from your dream. Disappointingly, there is no one there, but you think you can catch a teasing hint of some lingering perfume. Dismissing the strange encounter from your bestial mind, you quickly get back to you new life, as a happier full member of your new species.";
		else:
			say "     Some time after leaving the city, you wake up one night to find a strange letter tucked under your head. You blink as a familiar scent from the city teases your nose, reminding you of the time you spent in Nermine's shop and your meetings with the enticing jackal-woman. Slitting the letter open you can feel your muzzle pulling back in a feral grin as you realize that the lovely shopkeeper has another job for you to do, and this time the payment seems to be quite lucrative. Looking around yourself with a grin, you can feel your tail wagging eagerly as you begin to anticipate the challenge of acquiring a new rare item for the sexy jackal-woman, as well as the chance to see the strange shop again. Tucking the letter away safely, you quickly begin to plan out your new job, glad to see you will still have the occasional bit of excitement to spice things up in between the monotony of your regular day to day life.";


Section 7- Jackal ankh


Table of Game Objects (continued)
name	desc	weight	object
"Strange Ankh"	"a small golden ankh with an image of a jackal headed beastman set into the base, it feels oddly warm in your hands"	5	strange ankh

strange ankh is a grab object. It is part of the player. Understand "ankh" and "strange" as strange ankh.

The usedesc of strange ankh is "[jackalankhmagic].";

the scent of strange ankh is "The golden ankh smells faintly of desert sand and masculine musk.".

To say jackalankhmagic:
	if Nightmaretf > 0:
		say "     You rub the small golden ankh curiously, only to feel a strange burning sensation in your body as if two great forces were warring within. Letting out a gasp of surprise of surprise as the ankh seems to heat up - enough to sear flesh - you drop the item instinctively. Waving your hand and looking down at it, you realize that there is no trace of any damage after all, not even any reddending. Could it be that you've just imagined the feeling? But no, glancing down at the ankh, you see that it has molten into a small puddle of molten gold, sizzling a bit on the ground. Somehow you don't think that was what was supposed to happen...";
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		now JackalManTF is 5;
		now NermineTalk is 1;
		stop the action;
	if wrcursestatus >= 7 and wrcursestatus < 100:
		say "     You rub the small, golden ankh curiously and hiss in pain as it starts to heat up, scalding your hand. You toss it aside. Something about you seems to be incompatible with it.";
		now NermineTalk is 1;
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		stop the action;
	if JackalManTF is 0:
		say "     You smile as you rub the small golden ankh between your hands, the warm metal feeling nice and almost soft as you rub at it. Suddenly the small ankh almost seems to melt into your hands, leaving a soft tingling dusting of gold where the small trinket was before. As you stare at your palms, you feel a strange shifting sensation in your body, seeming to center on your rear. Glancing over your shoulder, you are surprised to see your ass starting to stretch and change, your rear flattening out as a long predatory black jackal-like tail forms behind you. In a strangely pleasant stretching sensation, your new tail grows until its tip is hanging just below your knees. You stare down at the appendage and can't help but try it out - moving the tail from side to side a little a few times, with it reacting with surprising dexterity. Next, you take a few steps and are pleased to note that it helps your balance greatly. Thinking to yourself, the though of how hot and sexy the jackal tail looks comes unbidden to your mind...";
		now tailname of player is "Jackalman";
		now tail of player is "You have a long sleek jackal's tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		say "[bold type]Your dexterity has increased by 4![roman type][line break]";
		increase dexterity of player by 4;
		now RareQuesting is 4;
		now JackalManTF is 1;
		stop the action;
	if JackalManTF is 1:
		say "     Eagerly gripping the next small ankh, you rub your prize softly between your hands again, your fingers tracing over the jackalman's form set into the base. Once more the gold seems to grow warm and melt into your body, the golden colour staining your hands slightly, before a darker black colour begins to spread out from where the ankh was, your hands quickly becoming covered in a smooth, shiny and black fur. As the blackness spreads down your arms and starts to cover your body completely, you realize that you will be looking just like Nermine soon, garbed in such a beautiful black coat. The thought of having a powerful dark jackal's fur makes you grin. As you shift, the idea of looking more and more like a powerful jackal to match the nice and sexy shopkeeper of that strange shop begins to make you feel almost predatory, and more than a little horny as well.";
		say "     Feeling over your new thick black jackal pelt, you are somehow sure your nice new fur will appeal to more than just the shopkeeper as well, and quite possibly provide a handsome defense from attackers.[line break]";
		now skin of player is "[one of]dark black[or]sleek black furred[or]jackal-furred[at random]";
		now skinname of player is "Jackalman";
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		say "[bold type]Your charisma has increased by 3![roman type][line break]";
		increase charisma of player by 3;
		say "[bold type]Your stamina has increased by 3![roman type][line break]";
		increase stamina of player by 3;
		increase maxHP of player by level of player plus 1;  [guaranteed HP boost once]
		if remainder after dividing stamina of player by 2 is 0:
			increase maxHP of player by level of player plus 1;  [potential second boost]
		now RareQuesting is 7;
		now JackalManTF is 2;
		stop the action;
	if JackalManTF is 2:
		Say "     Taking out the latest of the shiny gold ankhs, you rub your black-furred hands over its shiny surface eagerly, grinning as it seems to warm up underneath your hands, before melting away into your body again. You can feel your grin spreading as you look at the soft dusting of gold in your hands, as your face begins to tingle strongly. Reaching up to scratch the itch, you feel the shift under your fingers as your face begins to push forward into a dark canine muzzle. Your hands explore the new shape of your head even while the muscles and bones are still in flux, taking on the shape of powerful jaws. You can feel your sight sharpening, as your eyes shift and change as well, altering to give you a proper predatory stare as they finish becoming the sharp knowing eyes of a jackal.";
		say "     Touching the sides of your new jackal-like face, you feel the bones begin to settle into their new configuration, your canine grin now full of sharp pointed teeth and your nose sorting through a variety of new scents even as your ears shift to the top of your changed head. The sights and sounds of the world around you gain an entirely new clarity. Finding a reflective surface after a little bit of searching, you can't help but admire your new strong and dignified jackal looks, and your grin intensifies as you think about the effect your new face will have on the unsuspecting little jackal bitch in the shop. If this is just your reward for your help so far, you can't but wonder eagerly just how much better it will when you can complete the change and fully become a strong and powerful jackalman.";
		now facename of player is "Jackalman";
		now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seems both predatory and strangely sexy at the same time.";
		now RareQuesting is 11;
		now statuequest is 1;
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		say "[bold type]Your charisma has increased by 4![roman type][line break]";
		increase charisma of player by 4;
		say "[bold type]Your perception has increased by 4![roman type][line break]";
		increase perception of player by 4;
		now JackalManTF is 3;
		stop the action;
	if JackalManTF is 3:
		say "     Pulling the small golden ankh the jackal man gave you out of your pack, you feel an eager grin spreading across your black and gold muzzle, realizing that this ankh will surely be the final one needed to complete your transformation into a complete Jackal. The strange enticing scent from the ankh fills your muzzle as you begin to rub the golden charm softly, enjoying the feel of the soft metal warming up and melting into you yet again. Soon the warmth from the ankh spreads from your hands throughout your body, as the changes begin to take place, with your hands changing first as the tips of your fingers lengthen and become claw-tipped, while your palms grow tougher and more like proper pads.";
		say "     Your attention is soon diverted from your hands, as the warm sensation spreads throughout your entire body feeling like a series of soft massaging hands as they reshape your body, causing your muscles to shift and change under the skin. The sensation of the shift is amazing, with everything seeming to become better and more powerful and better as your shape pulls tight and aligns for its new shape. Your changing muscles give your body a slightly more bestial look as the ripple of transformation moves down your legs, joints cracking as your legs shift and change. Your heels are pulled upwards and off the ground as your ankles move higher up on your legs, your feet seeming to stretch forward as new claws push out of your new jackal-like paws.";
		WaitLineBreak;
		say "     The changes finally finish and you look down at yourself as the warm pleasant sensation fades, a grin stretching over your muzzle as you realize that your body seems to have become both lean and powerful now, your whipcord-like muscles rippling over your new anthro body with every movement. You stretch yourself out, shaking the kinks out of your new muscles, enjoying the feel of a powerful predatory body built for speed and strength both in and out of combat. Thin tracings of gold patterns adorn the fur of your body now as well as your face, accentuating your well-toned look. Stretching again, you enjoy how natural and proper your new form feels on you.";
		say "     The thought of Nermine crosses your mind as you admire yourself, and you can hardly wait to see just what the lovely jackal shopkeeper thinks about your new form as well. A grin crosses your muzzle as you wonder if what the jackal man said about your 'irresistible' new attraction is true, and you find yourself growing aroused at the very thought of the proper little jackal-woman panting and begging you for more. You decide you will have to investigate that possibility at some point soon, as you stretch out your new more canine legs, before heading out into the city again with confidence.";
		now bodyname of player is "Jackalman";
		now body of player is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal-like feet, your hands ending in sharp jackal-like claws. Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself...";
		attributeinfect "Jackalman";
		now cockname of player is "Jackalman";
		now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";
		say "[bold type]You lose a strange ankh![roman type][line break]";
		now carried of strange ankh is 0;
		say "[bold type]Your strength has increased by 4![roman type][line break]";
		increase strength of player by 4;
		increase capacity of player by 20;
		say "[bold type]Your dexterity has increased by 2![roman type][line break]";
		increase dexterity of player by 2;
		now JackalManTF is 4;
	if JackalManTF is 5:
		say "     You examine the strange ankh in your hand, but it seems to slip out of your fingers. When you look for it, you can't seem to find it. Oh well, you'd already asked Nermine to reverse its effects, so that's probably for the best.";
		now carried of strange ankh is 0;

An everyturn rule:
	if JackalManTF is 5:
		increase score by 0;
	else:
		if JackalManTF >= 1:
			if tailname of player is not "Jackalman":
				say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the ankh you used returns your body to a proper form, your jackal-like tail reforming behind you. Its sleek dark presence behind you proving that its power is stronger then your more recent infection.";
				now tailname of player is "Jackalman";
				now tail of player is "You have a long sleek jackal's tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		if JackalManTF >= 2:
			if skinname of player is not "Jackalman":
				say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of silky soft black jackal fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
				now skinname of player is "Jackalman";
				now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		if JackalManTF >= 3:
			if facename of player is not "Jackalman":
				say "You feel a strange discontent building in your head, as your face seems to burn and flex, its external form not matching that of your internal jackal, causing you to snap and snarl even as the bones in your face begin to shift and stretch again, and you let out a loud howl of triumphant pleasure as your face reshape itself back into a proper jackals visage, your grin once more stretching your muzzle as your gold dusted black fur settles in once more over your handsome jackals countenance.";
				Now facename of player is "Jackalman";
				now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seeming both predatory, and strangely sexy at the same time";
		if JackalManTF >= 4:
			if bodyname of player is not "Jackalman":
				say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of a predatory jackal.";
				now bodyname of player is "Jackalman";
				now body of player is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal-like feet, your hands ending in sharp jackal-like claws. Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself";
				attributeinfect "Jackalman";
			if cockname of player is not "Jackalman":
				now cockname of player is "Jackalman";
				now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";

Nermine Quests ends here.