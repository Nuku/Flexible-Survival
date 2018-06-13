Tree Ascension by Hyliad begins here.


Giant Tree Ascension is a situation.
The sarea of Giant Tree Ascension is "Forest".

instead of resolving Giant Tree Ascension:
	say "     Making your way between the buildings, your attention is soon grabbed by an absolutely gigantic tree which seems to have taken roots into a large building. You count five different floors; however, the tree appears to have completely outgrown the building itself, not only becoming as large, but much taller, and culminating in a sea of green leaves that appear so far away that it almost gives you vertigo.";
	LineBreak;
	say "     [bold type]You're not sure what you might find inside, but whatever it might be, you have a feeling making your way through the building will not only take up time and effort, but could also lead to your end if you make the wrong decisions. Do you really want to go in right now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Go in.";
	say "     [link](2)[as]2[end link] - Retreat for now. You will come back another time.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go in or [link]2[end link] to retreat.";
	if calcnumber is 1:
		say "[TreeAscention1_Continue]";
	if calcnumber is 2:
		say "[TreeAscention1_Retreat]";

to say TreeAscention1_Retreat: [reordered this before the other choice, since the other one continues on]
	LineBreak;
	say "     You walk away, deciding to come back another time. As you look back at it, you can't help but feel like the peaceful appearance of the building hides many dangers, but luckily, those dangers are none of your concern for now.";

to say TreeAscention1_Continue:
	LineBreak;
	say "     You enter the building carefully, decided to find whatever supplies or treasure it might hold. The first floor appear to have been completely overrun by the roots of the giant tree that grew up from there. To make your way through, you often have to hop over the large roots, or crawl underneath them, but overall your progression so far is rather easy, as you don't have the way; clearly, someone has been there before you, as several smaller roots have visibly been cut to make way for whoever came first. Furthermore, you notice many footsteps, indicating that many people already walked the path you are currently taking. Whoever left them definitely came here after the tree took over the building, as their travels stopped the grass covering the rest of the floor from growing.";
	say "     Usually, you would worry about the fact that the building may have already been scavenged and that nothing is left, but here, your real source of concern is that all of those footsteps appear to be going forward, but none of them appear to be coming [italic type]back[roman type]. You gulp, forced to wonder just what happened to all the people that entered this building before you. Surely it can't be as simple as all of them having left via another entrance, can it? It is possible that none of them made it out, plain and simple, and this thought makes you anxious. There is now no doubt that a tough task awaits you, but you already made up your mind when you decided to enter this place, so ready or not, here you go.";
	WaitLineBreak;
	say "     You progress, carefully following the footsteps left by previous scavengers, wary of any threats. After all, if your predecessors did indeed meet their end here, the path they left will most likely take you to danger as well. It takes some time making your way through the first floor, but eventually the stairs come into view. A this point, the path you follow splits in two: it seems more people chose to take the stairs, but that a few, instead, went to the elevator to your left. It's a little further, but you should be able to reach it easily enough by climbing over the roots that are in the way. Could it still be working somehow?";
	LineBreak;
	say "     [bold type]You could follow the majority of footsteps into taking the stairs, or you could use the elevator as a shortcut. Which one do you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Take the stairs. Most of your predecessors chose that way, they might be a reason.";
	say "     [link](2)[as]2[end link] - Take the elevator. It's at least worth a try.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take the stairs or [link]2[end link] to take the elevator.";
	if calcnumber is 1:
		LineBreak;
		say "[TreeAscention2_Stairs]";
	if calcnumber is 2:
		LineBreak;
		say "[TreeAscention2_Elevator]";

to say TreeAscention2_Elevator: [reordered this before the other choice, since the other one continues on]
	LineBreak;
	now bodyname of player is "Elevator Plant";
	end the story saying "It seems you will never leave this building, and you don't appear to mind one bit. Your adventure is over.";

to say TreeAscention2_Stairs:
	say "     You walk up the stairs at a slow pace, reaching the second floor. Unlike the first one, this floor is not invaded in roots; still, the gigantic trunk goes through it, having completely destroyed the middle of the floor to make its way up. The bad news is that a giant branch originated from it and managed to grow its way right into the stairs to the third floor, the many smaller (but still very substantial) branches that grew from it blocking you from continuing your ascension. Taking a close look, you see many small cuts on those branches, indicating that somebody dedicated a fair amount of time to trying to clear a way upstairs. They were clearly unsuccessful however, as they had not even managed to get rid of a single branch, and you conclude that trying to same thing while expecting different results would only be a waste of time.";
	say "     It appears you will have to find another way up. This might be easier said than done, as the tree, destroying everything in its way when it developed, pretty much pushed everything that was in the middle of floor to the sides. Luckily, this appeared to be a large working area without any walls, and as such it might be possible to navigate further. Looking down at the trail of footsteps, you see that all previous scavengers eventually had to make their way through the second floor; as the giant trunk is of course right in the middle, they, as you do now, had to choose between contouring it by the right, or by the left. There does not seem to be a choice more popular than the other among your predecessors, and the trunk is so large that both paths continue out of view, so you can only follow your instinct on this one.";
	WaitLineBreak;
	say "     [bold type]Right or left, that is the question.[roman type][line break]";
	say "     [link](1)[as]1[end link] - Right.";
	say "     [link](2)[as]2[end link] - Left.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go right or [link]2[end link] to go left.";
	if calcnumber is 1:
		LineBreak;
		say "[TreeAscention3_Right]";
	if calcnumber is 2:
		LineBreak;
		say "[TreeAscention3_Left]";

to say TreeAscention3_Right:
	say "     You decide to take the path to the right of the huge trunk, and start walking. This time, making your way through is easier, as it appears that whatever obstacles in your path have already been pushed out of it by the people who came before you. You even notice a particularly heavy-looking bookcase that must have been very hard to get out of the way, and you are thankful not to be the one who had to do it. You eventually reach the other end of the floor without any bigger problems than having to crawl here and there, and, as you take a look at the two paths of footsteps now reuniting, you notice that there seem to be less of them coming from the less side. Looks like you made the right choice, and while you feel unease at the thought of what could have awaited you if you hadn't, you progress forward.";
	say "[TreeAscention4_FightChoice]";

to say TreeAscention3_Left:
	say "     You decide to take the path to the left of the huge trunk, and start walking. This time, making your way through is easier, as it appears that whatever obstacles in your path have already been pushed out of it by the people who came before you. You still have to crawl or jump over something here and there, but overall making your way through is simple enough. That is, until you start hearing a strange animalistic sound. As you try to search the origin of it, you progress further carefully, but soon, hear yet another similar sound. Some kind of snore? This is when you finally notice a dark form to your left, resting under a half-destroyed desk, which appears to be a feral wolf. You stop dead in your tracks, careful not to wake up the creature.";
	say "     You are about to start moving again more cautious when you hear more similar sounds, and as you take a better look around you, you realize that hidden under more furniture are even more feral wolves. You count seven in total. If they were to wake up, they would likely all attack you, and as they are completely surrounding you, you would be in a lot of trouble. Trying to escape furtively to reach the other side of the floor might seem like the safest option, but if you were to get spotted, the pack would probably jump on you before you can get a change to react. Conversely, you could strike while they are asleep. This would mean getting in a fight, but you would at least be able to take down a few of them before they realize what's going on.";
	say "[TreeAscention4_FightChoice]";

to say TreeAscention4_FightChoice:
	WaitLineBreak;
	say "     [bold type]Do you attack the wolves or try to progress quietly?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Attack them while they're asleep so you have a fighting chance.";
	say "     [link](2)[as]2[end link] - Try to sneak away, leaving yourself vulnerable.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to attack or [link]2[end link] to sneak away.";
	if calcnumber is 1:
		LineBreak;
		say "[TreeAscention4_Fight]";
	if calcnumber is 2:
		LineBreak;
		say "[TreeAscention4_Sneak]";

to say TreeAscention4_Fight:
	say "     Better face the problem head on than leave yourself defenseless. Breathing slowly, you ready your weapon, approaching a group of three wolves sleeping huddled together. The scene could almost be cute, but you know that these are dangerous, deadly creatures, so, after raising your weapon, you start striking the three of them as hard as you can. They wake up immediately, yelping for help, but before they can do anything else, the three of them are knocked out. Turning back to face the rest of the pack, you are surprised to see that all but one of the wolves are cowering in fear. It appears that this pack is mostly made of submissive, and that your attacked shocked and terrified them. The one growling at you aggressively must be the alpha, or at least, the only alpha left, as you may have knocked down the other. Looks like you will only have to fight a single wolf, although he is obviously the strongest of the pack.";
	challenge "Feral Wolf";
	if fightoutcome < 20: [player won]
		say "     After your last hit, the alpha feral wolf falls to the ground, knocked out. For a moment you fear that the rest of the pack might attack you in revenge, but the submissives are all looking down in fear, their tails tucked between their legs. Careful not to let down your guard, you start walking away, and although they keep staring at you until you are out of view, they don't follow. You keep progressing at a slow pace in case more of them are around, but when the path of footsteps you are following joins the one left by the scavengers who chose to go right, you feel like you made it. Looking at the footsteps of the way you came, you notice only now that there are less of them than when it started. Some scavengers were likely spotted by the wolves, and have now become wolves themselves. Luckily, you did not meet the same fate as those unlucky ones, and progress forward.";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Having defeated you, the alpha wolf pounds you, closing his jaws around your neck, not strong enough to actually harm you, but definitely strong enough to send a message. Having no choice, you drop your weapon and surrender to him, to the delight of the excited submissives who all seem overjoyed to have a new pack member.";
		now bodyname of player is "Ascension Wolf";
		end the story saying "It seems you will never leave this building, having found a new place in this world as the wolves' bitch. Your adventure is over.";
	else if fightoutcome is 30: [fled]
		say "     When you realize that you fleeing is your best chance at making it out of here, you pretend to attack the alpha wolf, before turning away at the last second and run away as fast as you can. However, you realize how terrible an idea this was when the entire pack jumps you at the same time. Visibly, seeing you try to flee like a coward washed away any fear of you the submissives had, and you can only curse yourself as they drag you back to the waiting alpha. When they offer you to him, you realize a little too late that you lost your weapon while they were dragging you back, and are left defenseless in front of the feral wolf.";
		now bodyname of player is "Ascension Wolf";
		end the story saying "It seems you will never leave this building, having found a new place in this world as the wolves' bitch. Your adventure is over.";
	say "     [after successful second floor]";

to say TreeAscention4_Sneak:
	LineBreak;
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]21[roman type] (Dexterity Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 21:
		say "     Progressing as slowly as you can, you take one step after the other, stooping each time to make sure you don't hear any of the wolves move. Thankfully, you are sneaky enough to put some distance between you and the sleeping pack. You keep progressing at a slow pace in case more of them are around, but when the path of footsteps you are following joins the one left by the scavengers who chose to go right, you feel like you made it. Looking at the footsteps of the way you came, you notice only now that there are less of them than when it started. Some scavengers were likely spotted by the wolves, and have now become wolves themselves. Luckily, you did not meet the same fate as those unlucky ones, and progress forward.";
	else:
		say "     Progressing as slowly as you can, you take one step after the other, stopping each time to make sure you don't hear any of the wolves move. When you hear an unmissable sound, and realize that you messed up completely by stepping on a glass shard, you don't even have time to check if the wolves are awake before they jump you, pinning you to the ground under their weight. You feel a maw full of very sharp teeth close on your throat, not strong enough to actually harm you, but definitely strong enough to send a message. Having no choice, you drop your weapon and surrender. As another pack member drags your weapon away with their maw, the wolf threatening you releases their grip, and as you look up to them, there is no mistake that this is the pack's alpha.";
		now bodyname of player is "Ascension Wolf";
		end the story saying "It seems you will never leave this building, having found a new place in this world as the wolves' bitch. Your adventure is over.";

Tree Ascension ends here.
