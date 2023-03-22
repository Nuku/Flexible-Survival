Version 2 of Red Events by Stripes begins here.
[version 2.3 - Leather Wolves unlocks new location]

"Adds a series of random events to Flexible Survival located at or focusing on the Red Light District."


Section 1 - Leather Wolves

[Moved to Zigor file]

Section 2 - Fetish Store

Table of GameEventIDs (continued)
Object	Name
Fetish Store	"Fetish Store"

Fetish Store is a situation.
ResolveFunction of Fetish Store is "[ResolveEvent Fetish Store]".
Sarea of Fetish Store is "Red".

to say ResolveEvent Fetish Store:
	if Resolution of Fetish Store is 0:
		say "     While wandering the streets of Red Light District, you come across a gloomy alleyway, which looks somewhat forgotten like the rest of the area. As you take a few steps into the alley, shards of glass from the shattered shop windows crack beneath your feet. It looks like most of the buildings around you have been thoroughly ransacked, but one place still draws your interest with a darkened neon sign reading 'Fetish Store' just above the windows. It used to have mannequins to show the sexy gear on sale, but you can clearly see these no longer occupy their due place, being instead left on the floor in a pitiful state among other types of shop furniture.";
		say "     There doesn't seem to be anyone around, if the disturbing silence wasn't evident enough. Nonetheless, you could find something of value, or even entertaining, in this kinky emporium, if you chose to search it. You do need to be careful with any traces of sloppy fun some past visitors may have already had with the contents inside, as of course, you know better than to hope that didn't happen already. The faint smell of sex fluids already reaching your nostrils would prove you wrong.";
		say "     [bold type]Do you still choose to enter and search the place?[roman type] You could also come back later, if you choose to leave.[line break]";
		say "     [link](1)[as]1[end link] - Enter and search.";
		say "     [link](2)[as]2[end link] - Leave for now.";
		say "     [link](3)[as]3[end link] - Leave for good. This doesn't interest you.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to go in and search, [link]2[end link] to leave for now or [link]3[end link] to leave the store for good.";
		if calcnumber is 1: [lift the shelf on their own]
			LineBreak;
			FetishStoreExploration1;
		else if calcnumber is 2:
			LineBreak;
			say "     The store won't go anywhere and you have other places to be, for the moment. You turn away from the store and walk up the alleyway, back to the main streets of Red Light District.";
			now Resolution of Fetish Store is 1; [Discovered Fetish Store]
		else if calcnumber is 3:
			LineBreak;
			say "     Having decided that a place like this Fetish Store doesn't interest you at all, you turn away from it and walk up the alleyway, back to the main streets of Red Light District, avoiding the place from now on.";
			now Resolution of Fetish Store is 100; [desinterest]
			now Fetish Store is resolved;
	else if Resolution of Fetish Store is 1: [found it before, didn't go in]
		say "     While wandering the streets of Red Light District, you come across a gloomy alleyway that seems familiar to you. A few moments of closer inspection reminds you of the Fetish Store you found in the past, which you chose to leave behind, hoping to return later. The place looks the same as you first found it, with shattered glass all over the ground, empty shop windows with toppled mannequins, and the still persisting ominous silence. You could now choose to search the store, if consider yourself prepared for the associated risks. Places like this are prone to receive unwanted visitors anytime, especially the rather kinky and horny ones.";
		say "     [bold type]Are you going to enter and search the place[roman type], this time? You could also come back later, if you choose to leave.[line break]";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Enter and search.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if player consents:
			FetishStoreExploration1;
		else:
			LineBreak;
			say "     The store won't go anywhere and you have other places to be, for the moment. You turn away from the store and walk up the alleyway, back to the main streets of Red Light District.";
	else if Resolution of Fetish Store is 2: [found it before, didn't search the storage room]
		say "     While wandering the streets of Red Light District, you come across a gloomy alleyway that seems familiar to you. It is the Fetish Store, still looking like the same as you first found it, with shattered glass all over the ground, empty shop windows with toppled mannequins, and the persisting ominous silence. Retracing your steps back inside the store, you take some time to think. After having searched the initial room before, you recall hearing that strange noise coming from the door just across the cash register counter, still clueless of what it could be. With this in mind, you are presented with a few choices, as nothing of interest remains to be scavenged in this first area. You do have to be careful, as there still are a few risks involved.";
		FetishStoreExploration2;
	else if Resolution of Fetish Store is 3: [found it before, got to the dark room]
		say "     While wandering the streets of Red Light District, you come across a gloomy alleyway that seems familiar to you. It is the Fetish Store, still looking like the same as you first found it, with shattered glass all over the ground, empty shop windows with toppled mannequins, and the persisting ominous silence. After having searched the initial room before, you recall hearing that strange noise coming from the door just across the cash register counter, still clueless of what it could be. You retrace your steps from before, entering the store, heading past the door and down the stairs through the dark corridor, being greeted with the faint light creeping from the small windows at ground level and the same dark room you once faced. You are now presented with a few choices.";
		FetishStoreExploration3;
	else if Resolution of Fetish Store is 4: [found it before, got to the shelf]
		say "     While wandering the streets of Red Light District, you come across a gloomy alleyway that seems familiar to you. It is the Fetish Store, still looking like the same as you first found it, with shattered glass all over the ground, empty shop windows with toppled mannequins, and the persisting ominous silence. After having searched the initial room before, you recall hearing that strange noise coming from the door just across the cash register counter, which called your attention to the storage room, where you found an unnaccessible gimp mask. You retraced your steps from before, entering the store, heading past the door and down the stairs through the dark corridor, being greeted with the faint light creeping from the small windows at ground level and the same dark room you once faced.";
		say "     Now that you know where the gimp mask is located, it's easy for you to avoid any unpleasantries by following the same path you took before, through the corridors of boxes and shelves, back to the large obstacle that is separating you from the piece of headgear you encountered. With the big toppled shelf in front of you, it's time to consider your options once more. Were you strong enough, you could move it out of your way on your own, but there's always the possibility of bringing someone capable to fetch the item for you.";
		FetishStoreExploration4;

to FetishStoreExploration1:
	Linebreak;
	say "     Resolving you should at least take a peek inside, you bolster up your will and approach the entrance.";
	WaitLineBreak;
	say "     While inspecting the half-broken glass door, you notice that its lock has definitely seen better days, as the door has already been forced open. You cautiously glance around as you step inside, already able to see and smell the debauchery that must have taken place in here, were it not for the sticky puddles and toppled displays scattered all over. You nearly trip over a broken shelf as you arrive, having to raise your legs higher in order to make it through. Stepping on the humid wood, you hear it creaking as your weight is added above the collapsed shelf.";
	say "     Having a look around, you notice the surprising amount of space it has inside. Clearly this must have been a very sought after shop with great amounts of material, from a huge variety of sex toys and fantasy gear, to porn films and magazines. Except that now, it all seems to have been taken, and you now stand in the middle of furniture debris with little to nothing left. Behind a stained counter, where was the cash register, you see a door that probably leads to some kind of storage room. There's a corner ahead with a few boxes, the only area in the room in which the chance to find something isn't completely null.";
	WaitLineBreak;
	say "     With slow and steady steps, you carefully move towards the boxes, passing through the toppled furniture. This is not an easy task, as every time your foot meets the ground, it turns out to be slippery. Not falling or tripping over something on the way proves to be a challenge before you finally reach the boxes. Several of them are empty, and those who aren't have little of use. On a closer inspection, you manage to lay your eyes on a riding crop between a box and the wall, hidden from careless view. It seems to be in relatively good condition. [bold type]Do you want to take it with you?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Take the Riding Crop.";
	say "     ([link]N[as]n[end link]) - Leave it.";
	if player consents:
		Linebreak;
		say "     You suppose you could at least take what you could find in the middle of this mess. You push the box out of the way and grab the riding crop, holding it firmly by its handle. Swinging it around a little to test its durability, you observe that it is still usable and serves its function. Satisfied, you place it in your inventory.";
		ItemGain riding crop by 1;
		increase score by 5;
	else:
		Linebreak;
		say "     Deciding that you have no use for a riding crop, you just leave it there with the rest of the useless objects.";
	WaitLineBreak;
	say "     Having searched the only spots you could, you head back to your initial position through the same path you took before, but this time, something calls your attention. You hear a sound similar to a tin can rolling on the floor coming from afar. The sound prolongs itself for several seconds, allowing you to locate its source. It's coming from further deep inside, most likely the room where the other door leads, which is just behind the cash register counter. ";
	say "     You suppose you could investigate these sounds and see if you could find something else deeper inside. However, you are not entirely sure of who, or what, you can find there. Given the amount of perverts, sex crazed creatures and more of the like roaming the city, you could risk getting yourself into a rather sticky situation. The risk of infection also poses a problem, if you happen to slip over one of the cum puddles or touch something you shouldn't.";
	FetishStoreExploration2;

to FetishStoreExploration2:
	say "     Are you going to [bold type]risk searching the storage room[roman type] and try your luck, or [bold type]leave the store[roman type] and head back to the streets?[line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Go through the door."; [enter storage room]
	say "     ([link]N[as]n[end link]) - Leave the store for now.";
	if player consents: [storage room]
		Linebreak;
		say "     Decided, you walk towards the door, bypassing the counter and carefully stepping through the slippery floor. Cautiously, you slowly push it open, hearing it cranking as you move it further ahead. As you peek inside, you see a stairway heading deeper into what seems to be a pitch black room. You try to walk down through them as silently as possible, so that whovever is here doesn't hear you coming, holding yourself onto the wall by your left. Visibility only returns to you as you approach the end of the stairs, but you can still barely see where you're going, having to rely on your other senses to get a hold of your whereabouts.";
		say "     As you make it to the end of the stairway, silence is the most proeminent feature. Little light creeps from the small windows at ground level, and the room's musty smell is coupled with an intense odor of sex. It's likely that numerous creatures or people came here to have their way with the toys they found, or have already been searching around. You can barely see or hear anything anymore, only shapes of what seems to be shelves, boxes and immobile human silhouettes, which are probably just lifeless mannequins. At some point, you could have sworn you saw one of them moving, but when you look again, they are as still as they could be.";
		FetishStoreExploration3;
	else:
		Linebreak;
		say "     Better not take any chances and return only once you're ready if anything unexpected comes by. With your decision made, you carefully make it through the toppled shelves and leave through the shattered glass door, leaving the shadowy alleyway and returning to the main streets of Red Light District, tracing your steps to where you were before.";
		now Resolution of Fetish Store is 2; [Only searched shopping room of Fetish Store]

to FetishStoreExploration3:
	say "     The stairway is just behind you. You can still [bold type]leave the store[roman type] and come back later if you wish, or press on and attempt to [bold type]search this dark room[roman type], aware of all the risks that decision poses.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Search the dark room."; [commit to searching storage room]
	say "     ([link]N[as]n[end link]) - Turn tail and head back, this might be dangerous."; [leave the store]
	if player consents:
		Linebreak;
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1: [infection]
				say "     You're carefully making your way through the room, trying to be as quiet as possible while taking a few glances around, in an attempt to find something that catches your eye. But as you step forward, in a moment of distraction, you place your foot right in a slippery puddle. Inevitably, you lose your balance and fall, your instant reflex being moving your hands behind to soften the shock. Though this is not the best idea, as you end up sinking them in the cold and thick fluid underneath you. Now that you got yourself drenched in some random creature's sex fluids, there's nothing to be done about it but to get up, try to clean yourself as much as possible and continue on your way. It doesn't take long to feel the infection's tingling sensation flowing over your body.";
				weakrandominfect;
				WaitLineBreak;
			-- 2: [fight]
				say "     With enough caution, you make your way through the room, passing by the dark corridors of shelves and boxes, keeping your eye open for something of interest. However, it seems like you start hearing movement not too far from your position. Raising your guard, you prepare yourself for a possible confrontation, as your senses tingle with danger. Seconds pass, and nothing appears. You choose to proceed further, glancing around for any other signs of activity, and you feel it again. You are under the impression whatever you're about to find it just around the corner in your right. Taking a deep breath, only reminding you of the musty room you're in, you take a step forward and ready yourself to face this creature.";
				challenge "Mannequin";
				if fightoutcome < 20: [won]
					say "     Having fought with all your might, the mannequin falls to the ground as lifeless as it could be. Nobody would believe that it was once attacking you by looking at it now. Since the fight is over, you're free to proceed with your search.";
					WaitLineBreak;
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     Despite your efforts to resist this attack, the mannequin eventually gains the upper hand and knocks you down. However, before it can deliver its final strike, it falls to the ground as lifeless as it could be. Nobody would believe that the thing was once attacking you by looking at it now. Carefully standing up on your feet, you realize you've taken quite the beat, and your search is somewhat slowed down.";
					WaitLineBreak;
				else if fightoutcome >= 30: [fled]
					say "     Deciding that facing this mannequin would prove a risk, you decide to try to elude it, hoping it will lose you and give up on trying to fight. This proves to be easier than you thought, as once you gain some distance, the mannequin falls to the ground when it attempts to chase you, as lifeless as it could be. Nobody would believe that it was once attacking you by looking at it now. Since you successfully dodged this fight, you're free to proceed with the search.";
					WaitLineBreak;
			-- 3:  [successful search without incidents]
				say "     With enough caution, you make your way through the room, passing by the dark corridors of shelves and boxes, keeping your eye open for something of interest. At first, there seems to be someone following you, so you turn around and glance over your surroundings. The silence persists, and you no longer feel anyone's presence, so you decide to keep going. Your efforts at searching this place seem futile for some time, as everything you find are either useless or broken objects. The little light doesn't help either, as you have to get really close to be able to investigate every corner where you could possibly find something.";
				WaitLineBreak;
		say "     Eventually, luck seems to smile upon you as you spot what seems to be a [bold type]gimp mask[roman type], just laying there over a few other boxes! You try to study a path that would take you there, but the way is impeded by a large toppled shelf. There's no way you could pass over it, the only solution being either removing it out of the way, were you strong enough to move it on your own, or being agile and small enough to climb over or crawl under all this mess to get to the other side without any danger. [if HP of Player < 10]Accomplishing this task on your own would be remotely impossible in your current state, however, as every muscle in your body hurts as you move, indicating your diminished strength.[end if]";
		FetishStoreExploration4;
	else: [leaving short of the dark room]
		say "     Better not take any chances and return only once you're ready if anything unexpected comes by. With your decision made, you carefully walk up the stairs, go through the door, make it through the toppled shelves and leave through the shattered glass entrance, leaving the shadowy alleyway and returning to the main streets of Red Light District.";
		now Resolution of Fetish Store is 3; [entered the storeroom, didn't search the dark room]

to FetishStoreExploration4:
	say "     [bold type]Will you [if HP of Player < 10]still[end if] attempt to move this heavy shelf on your own[roman type] or [bold type]seek someone's help to retrieve the item for you?[roman type] You could also [bold type]leave to return later[roman type], now that you know where the gimp mask is located. If the mask doesn't interest you, there's always the option to [bold type]leave and never return[roman type].";
	LineBreak;
	say "     [link](1)[as]1[end link] - Try to move the shelf with all your strength.";
	say "     [link](2)[as]2[end link] - Ask someone for help. A companion maybe?";
	say "     [link](3)[as]3[end link] - Give up for now and return later.";
	say "     [link](4)[as]4[end link] - You've got no interest in the mask. Continue looking for other stuff.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] try to move the shelf on your own, [link]2[end link] to ask a companion, [link]3[end link] to leave the store or [link]4[end link] to explore elsewhere.";
	if calcnumber is 1: [lift the shelf on their own]
		LineBreak;
		say "     After thinking about your next step, you take a deep breath as you prepare yourself mentally for this rather heavy task. Moving the shelf carelessly could prove dangerous, since you don't want to end up crushed under it nor making your way to the mask even more difficult by a bad attempt. With this in thought, you search of a good place to use your strength and study your chances at succeeding for each one of the possibilities that come to your mind. When you're finally satisfied with your conclusions, you decide the best move and get ready to try moving the shelf.";
		if HP of player < 10: [player is severely hurt]
			say "     But as badly hurt as you are, this heavy fallen shelf proves to be too much for your exhausted body. You're not even able to put a decent effort as your muscles simply refuse to function. Disappointed, you turn back to where you came from, taking note of this particular corner so that you can return later, when you've fully recovered or have brought a worthy companion with you.";
			now Resolution of Fetish Store is 3; [Found Gimp Mask, but failed to get it]
		else:
			let bonus be (( strength of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 15:
				say "     Proving your strength, you lift the heavy shelf very slowly. Your motivation increases as you realize you're handling the task quite well. Eventually, you have to change your grip in order to start pushing against the wall to the side, to get it back up. Sweat is running down your brow soon and you start to feel the strain making your muscles tremble, but you don't give up. Soon, you hit the point where the shelf's weight allows you some maneuver, as the way between you and the mask is cleared. However, since the shelf is damaged, you have to reach the mask while keeping the heavy furniture from crashing again.";
				say "     With the mask in your possession, you only have to head back, as your body begins to give signals of exhaustion. Fortunately, you manage to make it through in one piece, letting the shelf fall with a huge, loud slam on the ground. You doubt you could have survived such a crushing force, being glad that you're in one piece. Now that you have your prize, it's time to leave the store, happy with your search results.";
				now Resolution of Fetish Store is 5; [got the mask]
				ItemGain gimp mask by 1;
				now Fetish Store is resolved;
			else if diceroll + bonus >= 10 and diceroll + bonus < 15:
				say "     With your hands below the shelf, you attempt to lift the shelf very slowly. During a few seconds, it seems you're handling your task decently, but soon your muscles start trembling and your arms cease to respond, no matter how much effort you put into them. Realizing you can't lift the shelf all the way up, you try to return it safely to the ground before there's any chance you get seriously hurt. With a loud slam, you rest the shelf back to its initial position, being forced to give up for now. Disappointed, you turn back to where you came from, taking note of this particular corner so that you can return later, when you've fully recovered or have brought a worthy companion with you.";
				now Resolution of Fetish Store is 4; [got to the shelf but left there]
			else if diceroll + bonus < 10:
				say "     With your hands below the shelf, you attempt to lift the shelf very slowly. However, no matter how much effort you put into it, you simply can't manage to move the heavy furniture one bit. Realizing you're nowhere nearly strong enough for this, you're forced to give up for now. Disappointed, you turn back to where you came from, taking note of this particular corner so that you can return later, when you've built some more muscle on yourself or have brought a worthy companion with you.";
				now Resolution of Fetish Store is 4; [got to the shelf but left there]
	else if calcnumber is 2: [order the pet]
		LineBreak;
		if companionList of Player is empty: [player is alone]
			say "     Which companion? You're here alone! With a shrug, you resolve to return later, hopefully in the company of a strong assistant.";
			now Resolution of Fetish Store is 4; [got to the shelf but left there]
		else if demon brute is listed in companionList of Player: [Brutus is active pet]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your [if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7]companion Brutus[else]controlled demonic beast[end if] and order him to help you out with it. With a grunt at the ease of your task, he steps forward and slides one of his large clawed hands under the shelf, lifting it and pushing it back against the wall it fell from. Given that the shelf is damaged, it can't just stand on its own anymore, but with the demon brute to hold it in place you have an easy time to just walk over to the gimp mask and pick it up.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if helper dog is listed in companionList of Player: [trusty doggy]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you whistle at your trusty helper dog and stroke his head as the canine approaches with wagging tail. You know that he's smart enough to understand so it's a simple task of explaining what you want before the canine moves forward, ducking under the shelf and crawling through a narrow opening to collect your prize. He soon comes back out of the cramped section beyond with the gimp mask held gently in his teeth, releasing it into your hand as you praise him for his service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if royal tiger is listed in companionList of Player: [Ryousei]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Ryousei and ask if there is a more effective way to get the headgear. Giving you a confident nod, the tiger tells you to turn around, which you reluctantly do. It is when he's out of your view that he reappears, just to where you turned, with the mask hanging from one finger and a huge grin on his face, solving your problem with utmost efficiency. Seems he just teleported over to the other side!";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if bee girl is listed in companionList of Player: [Honey]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you ask your bee girl companion if she can do something about it. She kindly nods at your request as she flies over the collapsed furniture with ease, passing just above it. She grabs the mask and returns to you through the same way, handing you the piece of headgear once she lands next to you. With the item in your possession, you thank her for helping, to which she happily smiles in response.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if Cute Crab is listed in companionList of Player: [cute crab]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your crab pet and order it to to get you the mask. You know that, somehow, it's smart enough to understand so it's a simple task of explaining what you want. With a clacking sound in response, the crab follows your order, easily fitting in through an narrow opening underneath the furniture to the other side. Soon, it comes back out of the cramped section beyond with the gimp mask held gently between its pincers, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if equinoid warrior is listed in companionList of Player: [Liliana]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Liliana and ask if she could help you clear the way. With a nod, she moves over to the shelf and attempts to lift it. After some insistence, you begin seeing the furniture gaining some distance from the ground, but she seems to be struggling. You decide to help her, making the task much easier. Given that the shelf is damaged, it can't just stand on its own anymore, but with your equinoid friend holding it in place, you have an easy time to just walk over to the gimp mask and pick it up.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if Exotic Bird is listed in companionList of Player: [exotic bird]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your bird pet and order it to fetch the piece of headgear for you. You know that he's smart enough to understand so it's a simple task of explaining what you want. With a tweet in response, the bird flies over the shelf with ease. Soon, it comes out from the same way with the gimp mask tucked in its beak, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if felinoid companion is listed in companionList of Player: [Felinoid]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your felinoid companion and order him to fetch the piece of headgear for you. You know that he's smart enough to understand so it's a simple task of explaining what you want. Your agile friend eagerly obliges, crawling into a narrow opening just below the collapsed furniture. Some time later, it comes back out of the cramped section beyond with the gimp mask held gently in his teeth, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if frost giantess is listed in companionList of Player: [Aurora]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Aurora and ask for her help to deal with the obstacle. With a determined look in her eyes, she eagerly steps forward and slides one of her large blue hands under the shelf, lifting it and pushing it back against the wall it fell from. Given that the shelf is damaged, it can't just stand on its own anymore, but with the giantess to hold it in place you have an easy time to just walk over to the gimp mask and pick it up.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if gshep is listed in companionList of Player: [Korvin]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Korvin and ask if he could help you clear the way. With a nod, he moves over to the shelf and attempts to lift it. After some insistence, you begin seeing the furniture gaining some distance from the ground, but he seems to be struggling. You decide to help him, making the task much easier. Given that the shelf is damaged, it can't just stand on its own anymore, but with your anthro canine friend holding it in place, you have an easy time to just walk over to the gimp mask and pick it up.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if Gryphoness is listed in companionList of Player: [Denise]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you ask Denise if she can do something about it. She kindly nods at your request as she streches her blue feathered wings, to fly above the collapsed furniture, which she manages to do easily. She grabs the mask and returns to you through the same way, handing you the piece of headgear once she lands next to you. With the item in your possession, you thank her for helping, to which she happily smiles in response.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if house cat is listed in companionList of Player: [cat]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your cat pet and order it to fetch the piece of headgear for you. You know that it's smart enough to understand so it's a simple task of explaining what you want. Your agile feline follows your order, crawling into a narrow opening just below the collapsed furniture. Some time later, it comes back out of the cramped section beyond with the gimp mask held gently in his teeth, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if little fox is listed in companionList of Player: [fox]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your fox pet and order it to fetch the piece of headgear for you. You know that it's smart enough to understand so it's a simple task of explaining what you want. Your furred bud follows your order, crawling into a narrow opening just below the collapsed furniture. Some time later, it comes back out of the cramped section beyond with the gimp mask held gently in his teeth, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if pink raccoon is listed in companionList of Player: [Candy]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Candy and order him to fetch the piece of headgear for you. This doesn't turn out to be an easy task, as he mindlessly stares at you when you try to explain what to do. After some insistence and very explicit instructions, the pink raccoon finally follows your request, crawling through the narrow opening to collect your prize. He soon comes back out of the cramped section beyond with the gimp mask, releasing it into your hand as you praise him for his service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if mouse girl is listed in companionList of Player: [Rachel]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Rachel and ask for her help to retrieve the item for you. You don't have to do much explaining, as she seems to sense your request before you can finish your sentences, immediately proceeding to crawl into a narrow opening just below the collapsed furniture. Soon, she comes back out of the cramped section beyond with the gimp mask, releasing it into your hand as you thank her for her service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if Retriever Girl is listed in companionList of Player: [Karen]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you whistle at your trusty retriever and stroke her head as the canine approaches with wagging tail. You know that she's smart enough to understand so it's a simple task of explaining what you want before the canine moves forward, ducking under the shelf and crawling through a narrow opening to collect your prize. She soon comes back out of the cramped section beyond with the gimp mask held gently in her teeth, releasing it into your hand as you praise her for her service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if rubber tigress is listed in companionList of Player: [Artemis]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Artemis and order her to fetch the piece of headgear for you. You know that she's smart enough to understand so it's a simple task of explaining what you want before the tigress moves forward. Given her nature, it's easy for her to fit into almost any opening, easily making it to the other side. Soon, she comes back out of the cramped section beyond with the gimp mask held gently in her teeth, releasing it into your hand as you praise her for her service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if skunk kit is listed in companionList of Player: [skunk]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your skunk pet and order it to fetch the piece of headgear for you. You know that it's smart enough to understand so it's a simple task of explaining what you want. Your young furred bud follows your order, crawling into a narrow opening just below the collapsed furniture. Some time later, it comes back out of the cramped section beyond with the gimp mask held gently in his teeth, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if strange doll is listed in companionList of Player: [doll]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to your strange doll friend and order it to fetch the piece of headgear for you. It mimicks your gestures as you explain what you want, and once you're done, the cute doll follows your order by crawling into a narrow opening just below the collapsed furniture. Some time later, it comes back out of the cramped section beyond with the gimp mask, releasing it into your hand as you praise it for its service.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else if demonologist is listed in companionList of Player: [Xaedihr]
			say "     Looking at the fallen shelf and how it blocks the way to the leather mask you saw beyond, you turn to Xaedihr and ask him if he could help you get the mask for you. 'A little needy of strong hands, aren't we? Or perhaps it is lazyness striking you? Could also be just a thought that made you consider other more reliable options...? Nevertheless, such task is simply too easy to achieve with the use of some might and magic.' he replies, with his usual sarcastic tone. He does accept to help you, however, as a purple tendril emerges from the ground, slipping through the narrow passage underneath the fallen shelf and towards the mask. With a finger snap, it quickly retracts with the mask held around its body, handling it to you directly. It is a little... sticky. 'Don't complain. I could have teleported, I could have lifted the shelf... but I didn't feel like sweating. Though there it is, as you requested.' With nothing else to be said, you simply thank him for the favor.";
			now Resolution of Fetish Store is 5; [got the mask]
			ItemGain gimp mask by 1;
			now Fetish Store is resolved;
		else: [catch-all for the rest of companions]
			say "     Your companion looks at the shelf and doesn't quite know what to do. Possibly because he was created after this event was written. Please report this on the Flexible Survival Discord in the bug report section, quoting what your companion was that you saw this with.";
	else if calcnumber is 3: [leave the store]
		LineBreak;
		say "     You suppose there isn't anything to do right now regarding such a difficult obstacle, choosing to leave for now. With your decision made, you retrace your steps to the stairway, carefully walking back up, go through the door, make it through the toppled shelves and leave through the shattered glass entrance, leaving the shadowy alleyway and returning to the main streets of Red Light District.";
		now Resolution of Fetish Store is 4; [got to the shelf but left there]
	else if calcnumber is 4: [leave the store with no interest in the mask]
		LineBreak;
		say "     You understand that you have no need for such item, so you continue looking around. However, the more you look, the more you convince yourself that there isn't anything of interest left in this place, as everything else is either trash, broken objects, dirt or nothing at all. Disappointed with your search, you decide it's time to leave this place for good. With your decision made, you retrace your steps to the stairway, carefully walking back up, go through the door, make it through the toppled shelves and leave through the shattered glass entrance, leaving the shadowy alleyway and returning to the main streets of Red Light District, having finished searching inside the Fetish Store for good.";
		now Resolution of Fetish Store is 99; [no interest in the mask]
		now Fetish Store is resolved;

[Riding Crop moved to Core Mechanics/Weapons.i7x]

Table of Game Objects (continued)
name	desc	weight	object
"gimp mask"	"A full, black leather mask that leaves only the eyes and has a zip where the mouth should be. Often used by bondage enthusiasts who fancy full-bodied latex or leather suits."	0	gimp mask

gimp mask is a grab object.
gimp mask is equipment.
It is not temporary.
Plural of gimp mask is false.
Taur-compatible of gimp mask is true.
The size of gimp mask is 3.
The AC of gimp mask is 0.
The effectiveness of gimp mask is 0.
The placement of gimp mask is "head".
The descmod of gimp mask is "A black leather mask covers your head, leaving only your eyes visible.".
The slot of gimp mask is "head".
the scent of gimp mask is "The gimp mask smells like leather.".

Section 3 - Raided Corner Store

Table of GameEventIDs (continued)
Object	Name
Raided Corner Store	"Raided Corner Store"

Raided Corner Store is a situation.
ResolveFunction of Raided Corner Store is "[ResolveEvent Raided Corner Store]". The level of Raided Corner Store is 3.
Sarea of Raided Corner Store is "Red".
when play begins:
	add Raided Corner Store to badspots of HermList;
	add Raided Corner Store to BadSpots of FurryList;

to say ResolveEvent Raided Corner Store:
	say "     You come across a small corner store. While it has been raided, you can see that it's not been as badly damaged as others and may still hold something of interest. You slip inside and glance around, but the shelves, coolers and displays have been emptied of anything useful. The cash register is empty as well. You head to check the back and find that the entrance to the back is locked. Perhaps there is something worthwhile in there. You start by knocking as asking if anyone's still safe in there, but get no response.";
	say "     [bold type]Do you try to break in?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     You kick and slam at the door several times, with growing frustration as you fail to have any effect. The door is quite sturdy, and would have to be to have survived any previous scavengers. After giving it one last kick, you turn away in frustration, only to see the commotion has attracted others. There are now a pair of hyenas between you and the exit.";
		if hyg is 4:
			if the BodyName of Player is "Hyena Herm" or FaceName of Player is "Hyena Herm":
				say "     As one of the pair is about to step forward to deal with you, the other grabs her shoulder, holding them back. The second steps forward, looking you over more carefully. 'Hey, I think I heard about you from Gina. You certainly smell like you've met her. Could you use some help there?' You nod and the hyenas join you by the door. One has some lockpicks and they soon get the door open. Little of the stores inside are usable, most having been eaten or damaged already. Presumably the owner was holed up in here. Before they succumbed to the infection and presumably left to the wilds of the city, that is. But there is still some the usable loot. You split your find with the hyenas, taking a couple of drinks and snacks each before you and they go your separate ways.";
				increase score by 10;
				ItemGain soda by 2;
				ItemGain chips by 2;
			else:
				challenge "Hyena Herm";
				challenge "Hyena Herm";
				say "     After the hyenas are gone, you try the door again, taking greater care to avoid noise, but are unable to force it open.";
		else:
			challenge "Hyena Herm";
			challenge "Hyena Herm";
			say "     After the hyenas are gone, you try the door again, taking greater care to avoid noise, but are unable to force it open. Disappointed, you head back into the city.";
		now Resolution of Raided Corner Store is 1; [tried to get into the back]
	else:
		say "     You opt to leave it alone and head back to search elsewhere. The grapes were probably sour anyhow.";
		now Resolution of Raided Corner Store is 99; [disinterest]
		increase score by 1;
	now Raided Corner Store is resolved;


Section 4 - Aussie Pub

[ Moved to Down Under Pub ]

Section 5 - Flooded Street

Table of GameEventIDs (continued)
Object	Name
Flooded Street	"Flooded Street"

Flooded Street is a situation.
ResolveFunction of Flooded Street is "[ResolveEvent Flooded Street]". The level of Flooded Street is 3.
Sarea of Flooded Street is "Red".
when play begins:
	add Flooded Street to BadSpots of MaleList;
	add Flooded Street to badspots of HumorousList;

to say ResolveEvent Flooded Street:
	say "     You come across a small lake of cum blocking your path. This section of street is literally flooded with cum. Wading through the musky pond are several of those giant walking cocks. At the far side of the cum flood, a pair of them are pleasuring one another, releasing more spurts into the sea of semen. You certainly cannot cross here and expect to remain intact and so start to back away slowly.";
	WaitLineBreak;
	if a random chance of 1 in 3 succeeds:
		say "     You are spotted by one of the ambulatory cock creatures and its rush towards you alerts the others.";
		LineBreak;
		challenge "Cock Cannon";
		challenge "Cock Cannon";
		challenge "Cock Cannon";
		say "     Those disturbing creatures finally dealt with, you make good your escape before others turn up.";
	else:
		say "     You quietly make your escape.";
		increase score by 1;
	now Flooded Street is resolved;



Section 6 - Strip Bar

Table of GameEventIDs (continued)
Object	Name
Strip Bar	"Strip Bar"

Strip Bar is a situation.
ResolveFunction of Strip Bar is "[ResolveEvent Strip Bar]".
Sarea of Strip Bar is "Red".
stripbarcounter is a number that varies.
when play begins:
	add Strip Bar to badspots of HermList;
	add Strip Bar to BadSpots of FurryList;

to say ResolveEvent Strip Bar:
	if stripbarcounter is 1:
		say "     After a few hours of fruitless searching among the besieged city, you come across another strip bar that's in fairly good shape. You see no obvious signs of trouble and after the last few hours of getting nowhere, you consider searching inside.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
		now stripbarcounter is 2;
	else if stripbarcounter is 2:
		say "     You come to a third strip bar tucked into secluded part of this seedy part of town. It seems to have fared relatively well, with only minor damage. After a cautious glance inside, you don't see any signs of trouble.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			now Resolution of Strip Bar is 99; [disinterest]
			increase score by 1;
		now Strip Bar is resolved;
	else:
		say "     Passing through the infected city, you keep a watch for aggressive creatures or possible things of use while you await rescue. During your searching, you come across a relatively intact strip bar. While the lights and neon are off and it seems unoccupied, the place seems to be in better shape than many of the others you've come across. Perhaps there may still be something useful in there. Though given the nature of the business, you do worry about the risks.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
		now stripbarcounter is 1;
	stop the action;

to say stripbarsearch:
	let T be a random number between one and twelve;
	if T is 1:
		say "     Navigating around the tables and the occasional cum puddle, you see that the outbreak struck here as well while the business was running. You are extra cautious and avoid the main public area, instead checking behind the bar for supplies. It seems that much of it was damaged or take already, but you do have some luck and find some soda you can take.";
		increase score by 5;
		ItemGain soda by 3;
	if T is 2:
		say "     Searching through the strip bar, you have to avoid cum puddles. You head over to check the bar, but find that it was destroyed during the outbreak. It is covered in claw marks all over. You can see a huge puddle of cum behind the bar. You consider leaving, but spot the backstage door and slip in there before you leave. It's also quite messy back here, but you do manage to recover some snacks that one of the girls must have brought.";
		ItemGain soda by 1;
		increase score by 1;
	if T is 3:
		say "     Searching the strip bar, take care to avoid the cum puddles you find in there. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You look around as best you can, but the extent of the contamination is too great and you have to give up the place for a loss. As you step out, you are spotted by a tigress who emerges from a nearby alleyway. She grins at you and runs a paw along her side. 'Looking for a little fun, are we? I've got just what you need,' she purrs, fondling a sizable bulge under her skirt.";
		challenge "Malayan Tiger Herm";
	if T is 4:
		say "     Searching the strip bar, take care to avoid the cum puddles you find in there. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You start to look around as best you can, but you are interrupted when a large, shemale collie bursts out of the backstage area. 'I was looking to see if there were still any of the sexy girls back there to bear my puppies, but now I've got you instead.' She grins at you and crosses the distance between you even as you try to run out. You manage to make it outside before she catches up with you, pulling you into a fight.";
		challenge "Smooth Collie Shemale";
	if T is 5:
		say "     Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. It seems that this place was struck rather hard when the infection took hold. Despite outer appearances, the inside has been quite devastated. You decide to head back out, but not in time. A large glob of cum which was stuck to the ceiling comes down right on top of you. You try your best to wipe it off, but you can feel the tingles of the infection."; [random infection]
		weakrandominfect;
	if T is 6:
		say "     Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. A quick check shows that the bar area has been already picked clean of anything that survived the initial damage. You turn to head out, but step on an empty bottle. Rolling away, it sends your foot out from under you and you fall. Your hand feels wet and sticky, having landed in a puddle of cum. You try to shake it off, but you can feel the tingles of the infection."; [random infection]
		weakrandominfect;
	if T is 7:
		say "     Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You head over to check the bar, but find that it was destroyed during the outbreak and even partially burned. Did the bartender try to ward off the monsters with fire or did something else occur? Seeing how there is nothing usable left, you decide not to investigate further and instead head to leave. As you're heading to leave, you spot the backstage door decide to check it out before you go.";
		say "     This turns out to be your undoing, as a bucketful of sticky, musky cum and juices falls onto you. An array of scents fill your nose, the bucket clearly having been filled by a variety of creatures, possibly the ex-staff of this establishment. Their combined fluids have soaked you and you can feel the tingles of the infection."; [triple unrelated random]
		weakrandominfect;
		weakrandominfect;
		randominfect; [researcher still gets one]
		decrease score by 5;
		SanLoss 5;
	if T > 7:
		say "Searching through the strip bar, you have to avoid cum puddles. You head over to check the bar, but find that it was destroyed during the outbreak. Clearly someone became something large and aggressive. The booze rack has been knocked completely over and the bottles are shattered. There are large patches of cum all around that area, so you have no inclination to search it more closely for any goods which may have survived. Well, better luck next time.";
		increase score by 1;
	now Resolution of Strip Bar is 1; [searched through the strip bar]


Section 7 - Evangelist

Table of GameEventIDs (continued)
Object	Name
Evangelist	"Evangelist"

Evangelist is a situation.
ResolveFunction of Evangelist is "[ResolveEvent Evangelist]".
Sarea of Evangelist is "Red".
when play begins:
	add Evangelist to BadSpots of FemaleList;
	add Evangelist to BadSpots of MaleList;
	add Evangelist to badspots of HermList;
	add Evangelist to BadSpots of FurryList;
	add Evangelist to badspots of HumorousList;

to say ResolveEvent Evangelist:
	say "     While trying to cross between stopped cars at a large intersection, you are stopped by the sound of someone climbing onto a car. Still hunkered down, you see an unchanged human. Unshaven for several days and dressed in dirty clothes, he smells strongly of alcohol. He is wild-eyed and waves a bible around as he start yelling at no one. He goes on incoherently about sinners, Babylon, bedding down with animals, damnation and so forth. You try to calm him down, but he will have none of it. Clearly overwrought by witnessing the transforming populous from his hiding spot, he's gone off the deep end. From some of his rambling, you gather he's always been upset by the lascivious nature of the neighborhood around his home.";
	say "     Before you can get him to be quiet long enough to talk, it's too late. Drawn by the ruckus, the nearby monsters have taken notice and approach the intersection from all sides. Seeing an unchanged human, they go ballistic and charge forward. With you between them, you are forced to struggle against the maddened tide of lustful monsters.";
	if a random chance of 1 in 3 succeeds, now battleground is "Outside";
	fight;
	now battleground is "Red";
	say "     Looking up during a brief moment of respite, you see the would-be evangelist swinging his hardcover bible like a club, still screaming incessantly about the corruption of the flesh. Madness has given him strength and he manages to keep the monsters from climbing onto the car roof. The fact that many of the second ring of monsters around him are trying to mate those closer help him as well. Before you can consider whether to push forward to help him or try to make your escape, you are drawn into another fight.";
	if a random chance of 1 in 3 succeeds, now battleground is "High";
	fight;
	now battleground is "Red";
	say "     Having dealt with the next, you look over just in time to see the man get blasted across the face by a large splatter of cum. Turning to the side, you see a trio of leather-clad wolves with their arms around the body of one of the large, cock-shaped creatures. They stroke and tease it again, this time one mounting it from behind as the others aim. Another volley is shot, striking the man in the chest. He's already begun to transform, face taking the smooth shape of a giant glans and torso reshaping into a giant cock. The press of fur and flesh around you brings another monster to press against you, trying to bear you down to take its pleasure.";
	if a random chance of 1 in 3 succeeds, now battleground is "Outside";
	fight;
	now battleground is "Red";
	say "     Taking a quick breath, you look back to what remains of the man, but find him but another piece of the writhing mass of orgiastic sex. Only the tattered remains of his clothes let you spot him, he is shifting almost constantly as he is spit-roasted by a leopard guy at the front and a raccoon herm at the rear. Several others stroke their cocks, spraying cum all over him, and he seems to be loving it. Lost in the release of his long pent-up inhibitions, he has joined the mindlessly infected.";
	if Libido of Player > 39:
		say "     The sights, sounds and scents around you are becoming more and more cloying. You look around, seeing so many attractive pairings and trios of lustful animals. You are tempted to join them - to simply give in to the lustful mass and join the orgy.";
		if Libido of Player > 74:
			say "[orgyoutcome]";
			increase score by 50;
			now Evangelist is resolved;
		else:
			say "     [bold type]Do you choose to participate?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Join them.";
			say "     ([link]N[as]n[end link]) - Leave.";
			if Player consents:
				say "[orgyoutcome]";
				increase score by 50;
				now Evangelist is resolved;
			else:
				say "     You resist the urge to give in and join the orgy that has formed after the battle and scan around the sea of fur and flesh surrounding you. You notice the leather wolves are still at it with the cock cannon and one of them points towards you, trying to get the attention of his lustful brethren. You need to get out of here soon. Finding a path between several mating pairs, you try to dash to safety before things cascade further. You run, making it most of the way out of the crowd before being blocked by another monster.";
				fight;
				say "     Pushing your way free, you move to the relative safety of a nearby alcove, panting to catch your breath and to recover you energy. You look back at the top of the car, seeing that the leopard has prevailed against the other prospective lovers and is now plowing into the newly corrupted leopardess beneath him. They both yowl in feline ecstasy as he pumps his heavy load into her womb, seeking to breed his new mate.";
				increase score by 50;
				now Evangelist is resolved;

to say orgyoutcome:
	say "     Giving in to the temptation of so many sexy creatures around you, you pounce at a nearby herm unicorn and wrap your lips around her cock-like clit. You lick and suck over it, moaning in pleasure as the lust fills you. She is covered in soft, white hair which you run your hands over as you cup her ass. She has no visible balls for you to play with, so you stuff a few fingers into her dripping puss. She's already been seeded during the orgy and the cum leaks down over your hand.";
	say "     Behind you, you feel soft paws grip your bottom and a rubbery squeak before a wet cock teases against your ass before mounting you. You moan around your mouthful of cock. From the corner of your eye, you see a brief flash of orange. You probably have one of those latex foxes at your rear. You can feel him pounding you hard and fast, eager to send his hot seed into you.";
	say "     Your mouth is filled with a hot blast of juices from the ivory unicorn. You swallow it down eagerly between moans as the fox tries to stuff his knot fully into you. The unicorn is abruptly pulled away from you, still spurting as a large lion male moves to take her place. He stuffs his cock into your mouth, facefucking you roughly. Though, in your lust-filled state, you certainly don't mind at all. And finally having that thick fox-knot locked inside you certainly helps as well.";
	say "     After getting a bellyfull of tasty lionseed and the sated fox's knot shrinks enough to pop free, you look over to the cause of this wonderful sexcapade you've found yourself in. Seeing that the leopard has prevailed against the other prospective lovers, you lick your lips as you watch him plowing into the newly corrupted leopardess beneath him. They both yowl in feline ecstasy as he pumps his heavy load into her womb, seeking to breed his new mate. You consider heading over to join them, but spot the herm raccoon who was there earlier. Being much closer and currently unoccupied, you give her a kiss, taking her hard cock in hand. She moans in pleasure and wraps her arms around you, returning the lustful kiss by sliding her tongue between your lips.";
	if Player is herm:				[ HERM! ]
		say "     Deciding it's high time you tend to your cock, you guide the raccoon onto all fours and slide your cock into her dripping pussy. Her pussy grips you tightly as you plow into her again and again. Surprisingly strong for her size, you find she's able to support your weight easily, freeing your hands to play with her tits and cock while you fuck her. She turns out to be a wonderful fucktoy, squealing and moaning in delight as you have your way with her until finally spraying your hot load into her body. Her heavy nuts drain their load onto the pavement as you pump her cock while seeding her, forming a large puddle of coonseed.";
		say "     As you withdraw, you're pulled into the arms of a herm gryphon. Sitting you in her lap, she bounces you on her hard pole. Then it's off to mount a lioness before sucking off two different strains of horses at once. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	else if Player is female:		[ FEMALE! ]
		say "     Deciding you want a taste of the thick coon meat, you bring your lips to it and start to suck it hungrily. The raccoon moans in pleasure, running her hands over your head while your tongue slides up and down that tasty cock. Equipped with a heavy set of balls, you roll the gray-furred sac in your paws until they finally give up their thick load. You swallow it all down, feeling its warmth flowing into your belly.";
		say "     As you move back, you're pulled into the arms of a pair of stallions. They appear to be from two different strains, one a large draft horse and the other a quarter horse. Pressing you between them, the pair take you in the pussy and ass at once, stuffing you so deliciously full of horse cock, and later horse cum. Once satisfied, the pair move on and you're joined by a herm gryphon to takes your messy pussy while you eat out a sexy lioness. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	else if Player is male:		[ MALE! ]
		say "     Deciding it's high time you tend to your cock, you guide the raccoon onto all fours and slide your cock into her dripping pussy. Her pussy grips you tightly as you plow into her again and again. Surprisingly strong for her size, you find she's able to support your weight easily, freeing your hands to play with her tits and cock while you fuck her. She turns out to be a wonderful fucktoy, squealing and moaning in delight as you have your way with her until finally spraying your hot load into her body. Her heavy nuts drain their load onto the pavement as you pump her cock while seeding her, forming a large puddle of coonseed.";
		say "     As you withdraw, you're pulled into the arms of a lioness. Shoving you down, she wraps her muzzle around your cock while offering her pussy for you to lick. Your tongues please one another until you both reach a powerful climax. Then it's off to have a herm gryphon fill your ass again while sucking off two different strains of horses at once. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	say "     This wild romp continues for hours, with numerous monsters sharing you or being shared by you. You quickly lose track of all the creatures you mate with and cycle through a myriad of positions and partners before it finally all falls apart from exhaustion. Your grip on your identity has been shaken from the intensity of the orgy, but you are quite sexually sated - for the time being.[randomimpreg][randomimpreg]";
	LineBreak;
	SanLoss 25;
	decrease Libido of Player by 40;
	if Libido of Player < 0:
		now Libido of Player is 0;
	randominfect; [4 different infections]
	now researchbypass is 1;
	increase MonsterID by 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	infect;
	increase MonsterID by 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	infect;
	increase MonsterID by 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	infect;
	now researchbypass is 0;



Section 8 - Business as Usual

Table of GameEventIDs (continued)
Object	Name
Business as Usual	"Business as Usual"

Business as Usual is a situation.
ResolveFunction of Business as Usual is "[ResolveEvent Business as Usual]".
Sarea of Business as Usual is "Red".

when play begins:
	add Business as Usual to BadSpots of FurryList;

to say ResolveEvent Business as Usual:
	say "     You spot a gray-furred mouse morph a few buildings away. He's wearing glasses, a blue button down t-shirt, khaki shorts, complete with red sneakers and is carrying a small backpack slung over his back, holding one of the straps in one hand to keep it there. Despite their small size, barely over four feet tall, you decide to be cautious and take cover to observe his actions for a moment, trying to decide what to do in the event you get discovered. He darts intently across the street, stopping in front of an alleyway where a tigress had apparently been waiting unnoticed by you until stepping out of the shadows. The orange and black striped tigress is much taller than him and wearing a skimpy outfit that shows off her shapely body. She has a pink half-shirt that barely holds her large breast line, but enough cleavage to show and compliment her assets. Beneath that, you can see a fishnet undershirt that covers her tight belly.";
	say "     Finally, a cheap, short, pink colored leather skirt that barely covers her generous ass and feminine slit completes the outfit, not quite hiding, yet still teasing and promoting. Her red hair is tied back into a ponytail by a small pink bow, with another similar pink bow at the end of her tail as if to lure others to try and sneak a peak at what she has under her skirt. The mouse stands there nervous to be out in the open while conversing with the tigress, shifting from one foot to another and glancing here and there for signs of enemies, while the tigress is seemingly at ease, almost as if bored by the lack of action and their current topic of discussion. Finally, she grows weary of the conversation she's probably had many times before and waves for him to show her the bag's contents. He smiles and pulls out a two-liter carton of milk and the tigress's eyes light up with barely contained excitement. She quickly grabs and rushes him into the alley, paws roaming over his body, now openly burning with deep need that she had been hiding under a façade of disinterest.";
	say "     [bold type]Seems like this is going to get heated...[roman type][line break]";
	say	"     ([link]Y[as]y[end link]) - Step closer and watch.";
	say	"     ([link]N[as]n[end link]) - Leave them to finish their business.";
	if Player consents:
		LineBreak;
		say "     You move closer to the edge of the alley, peeking your head around as you do so. You see the tigress near a closed dumpster with the mouse on top of it, his hands grasping her head, shorts open and pushed down while the prostitute's lips are wrapped around his lengthening dick, her head bobbing up and down as sloppy noises begin to fill the immediate area. The mouse's face seems to be the picture of pleasure as the tigress speeds up her pace, until her client groans, bucking his hips in orgasm, the tigress expertly drinking all his cream down. As gray-furred rodent comes down from his bliss, the tigress picks him up physically and sets him on his feet. With a casual movement, she then takes off her skirt and leans against a nearby wall, using two fingers to open her pussy in a not so subtle invite.";
		say "     Quickly getting hard again from the sight alone, the horny mouse takes her up on that offer by getting behind her sliding inside the receptive pussy. He begins to go to town with all the force he can muster, his furry balls creating slapping noises as they swing against her in time with his rough and frantic pace. It doesn't take very long until the mouse's next climax due to both the pace and fatigue from his first orgasm, his breath running ragged and his thrusts grow shorter before much longer. He makes one final thrust, making sure to cum as deep inside as he possibly can. Tired from the exertion, the mouse sinks forward against her and actually passes out, apparently having spent all his energy in the frantic bit of mating. Not having gotten off herself yet, the tigress waits for a moment for him to continue, then glances over her shoulder and scowls at the sight of him nuzzling against her back with his eyes closed.";
		WaitLineBreak;
		say "     Grumbling under her breath about the stamina of some males, the prostitute grabs her client under the arm, lowering him to the ground as she slips him off - and out of her pussy. She goes to pick up the milk from inside the mouse's bag and drinks some to wash down her creamy meal, glancing over to the slender male. One hand wandering down to her crotch and stroking over her sensitive folds, the large feline thinks for a moment, then picks up the unconscious mouse and his bag. The milk goes back in the bag, and that over her shoulder, while the mouse is carried in her arms as she struts down the alleyway, perhaps headed to her den in order to have round three. As the woman passes you, she winks and asks if you liked the show in passing, not really waiting for a reply.";
	else:
		LineBreak;
		say "     With a shake of your head, you decide to leave them to finish their deal in the full privacy of a grimy alley.";
	say "     Laughing slightly as you realize its time to head out, you walk away thinking that even in these strange times, the world's oldest profession lives on.";
	increase score by 1;
	now Business as Usual is resolved;



Section 9 - Kink Warehouse

Table of GameEventIDs (continued)
Object	Name
Kink Warehouse	"Kink Warehouse"

Kink Warehouse is a situation.
ResolveFunction of Kink Warehouse is "[ResolveEvent Kink Warehouse]".
Sarea of Kink Warehouse is "Red".
when play begins:
	add Kink Warehouse to BadSpots of FurryList;

to say ResolveEvent Kink Warehouse:
	if Thirst of Fancy is 2 or Thirst of Fancy is 3 or Thirst of Fancy is 99:
		if Resolution of Transformationledger is 1:
			say "     As you approach the warehouse at the coordinates Fancy gave you, you notice a large horseman loitering outside the main entrance, looking displeased and utterly bored. The brand on his arm marks him as one of the Stablemaster's goons, almost certainly dispatched to intercept you. He doesn't seem to have noticed you, so you have the opportunity to try and sneak past him instead of engaging him directly.";
			LineBreak;
			[]
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			choose a blank row in table of fucking options;
			now title entry is "Fight the guard";
			now sortorder entry is 1;
			now description entry is "Fight the stallion head-on";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Sneak past";
			now sortorder entry is 2;
			now description entry is "Look around for an alternative route";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Come back later";
			now sortorder entry is 3;
			now description entry is "Leave and return when you're more prepared";
			[]
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			while sextablerun is 0:
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry]?";
					if Player consents:
						let nam be title entry;
						now sextablerun is 1;
						if (nam is "Fight the guard"):
							challenge "Horseman";
							if fightoutcome >= 10 and fightoutcome <= 19: [player won]
								say "     The stallion dispatched, you step through the door to find yourself confronted by another horseman! He must be the backup - get ready to fight again!";
								challenge "Horseman";
								if fightoutcome >= 10 and fightoutcome <= 19: [player won]
									say "     With both goons incapacitated, you are able to enter the warehouse proper. The workers inside seem to have been evacuated beforehand, leaving you to painstakingly search the boxes['] labels for the right code. At last, you manage to find the right stack of boxes and open one to reveal a vast mass of rubbery clothing individually wrapped in plastic bags. Grabbing one and stashing it in your backpack, you beat a hasty retreat before anyone else comes to investigate.";
									if Thirst of Fancy is 2 or Thirst of Fancy is 3:
										now Thirst of Fancy is 4;
									else:
										say "     Tearing open the package reveals the contents to be some curious hybrid of a latex catsuit with hooves instead of gloves and an attached pony-shaped hood. Trying to put it on by yourself would be an exercise in futility without fingers to close (or open!) the zippers, so you'll need to find someone who can modify it for you.";
										now Thirst of Fancy is 100;
									now Kink Warehouse is resolved;
							if fightoutcome >= 20 and fightoutcome <= 29:	[lost any fight]
								say "     The horseman manages to get the better of you, and it's all you can do to scramble away before he can catch you. You're going to have to try again later, once your bruises have faded.";
						else if (nam is "Sneak past"):
							let bonus be (( Perception of Player minus 10 ) divided by 2);
							if "Experienced Scout" is listed in feats of Player, increase bonus by 5;
							let diceroll be a random number from 1 to 20;
							say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
							increase diceroll by bonus;
							if diceroll >= 15:
								say "     Your careful scouting pays off as you discover the emergency exit at the back of the warehouse, the lock broken and the door boarded closed with planks of rotting wood. A hard yank easily dislodges both barriers and lets you slip inside unnoticed. The place is oddly deserted, but it works to your benefit as you are able to leisurely discover not only the box that matches the code on the token, but a discarded pack of food lying on the table as well. Opening the box reveals a vast mass of rubbery clothing wrapped in plastic bags, so you grab one and stash it in your backpack next to the food pack before quietly exiting the same way you came.";
								if Thirst of Fancy is 2 or Thirst of Fancy is 3:
									now Thirst of Fancy is 4;
								else:
									say "     Tearing open the package reveals the contents to be some curious hybrid of a latex catsuit with hooves instead of gloves and an attached pony-shaped hood. Trying to put it on by yourself would be an exercise in futility without fingers to close (or open!) the zippers, so you'll need to find someone who can modify it for you.";
									now Thirst of Fancy is 100;
								ItemGain food by 1;
								now Kink Warehouse is resolved;
							else:
								say "     Despite looking around for any sort of alternative route, your search proves futile as the walls of the warehouse appear to be solidly built, with all its other entrances firmly locked up tight. With the guard already eyeing you suspiciously, it looks like you're just going to have to come back and try again later.";
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		else if Resolution of Transformationledger is 2:
			say "     As you approach the warehouse at the coordinates Fancy gave you, you find the place bustling with workers of various sorts going back and forth, loading and unloading crates from carts hitched to a number of horsemen. Staying out of their way, you approach the mare standing around and supervising the work, occasionally bellowing instructions and reprimands.";
			say "     Even after presenting the token to her, the supervisor is clearly reluctant to accept it until you inform her that Fancy sent you here. 'If you weren't with Fancy, I'd have told you to take a hike,' she bluntly tells you as she directs you over to an open box full of rubbery clothing wrapped in bags, slapping one into your arms. 'That Stablemaster is late on his payments and we're having to absorb the loss for him. We're not delivering anything else for him - if he wants his shipment, he can come here and pay for it first!'";
			if Thirst of Fancy is 2 or Thirst of Fancy is 3:
				now Thirst of Fancy is 4;
			else:
				say "     Tearing open the package reveals the contents to be some curious hybrid of a latex catsuit with hooves instead of gloves and an attached pony-shaped hood. Trying to put it on by yourself would be an exercise in futility without fingers to close (or open!) the zippers, so you'll need to find someone who can modify it for you.";
				now Thirst of Fancy is 100;
			now Kink Warehouse is resolved;
	else:
		say "     You happen across a medium-sized warehouse on the outskirts of the Red Light District, bustling with activity as workers carry heavy loads of crates, boxes and other assorted packages in and out through the open doors. Any attempt to investigate is blocked, however, by a pair of burly-looking stallions standing guard to either side of the doors, clearly refusing to let anyone who isn't a worker into the warehouse.";



Red Events ends here.
