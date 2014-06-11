Version 3 of Armed by David Ratliff begins here.

"This is just a (no longer) little extension to handle weapons and fighting."

Section 1 - The Breath of Life

A person has a number called max health.
A person has a number called present health.
A person can be hostile or docile.
A person is usually docile.
A person has a number called damage resistance.
The damage resistance of a person is usually 1.

The max health of a person is usually 100.
The present health of a person is usually 100.

[When play begins:
	repeat with victim running through people:
		now the present health of the victim is the max health of the victim.]

The max health of the player is usually 100.

Definition: a person is dead if his present health is less than 1.

After printing the name of a dead person (called P) (this is the I see dead people rule):
	if the person is dead for at least 1 turn and P is on-stage, say "[']s dead body" instead.

Section 2 - Rules and Kinds

Definition: a person is armed if he carries a weapon.

Persuasion rule (this is the mine is bigger than yours rule):
	if the player is armed begin;
		if a random chance of 8 in 10 succeeds begin;
			if the person asked is armed begin;
				if a random chance of 8 in 10 succeeds begin;
					say "[The person asked] says 'I am armed, too, and will not be bullied!'" instead;
					persuasion fails;
				end if;
			end if;
			persuasion succeeds;
		end if;
	end if;
persuasion fails.

Check taking (this is the can't take it with you rule):
	if the noun is a thing and the holder of a noun is a person (called corpse) begin;
		if corpse is dead then ignore the can't take people's possessions rule;
	end if.

A weapon is a kind of thing.
A projectile is a kind of weapon.
A blade is a kind of weapon.
A fire arm is a kind of projectile.
A bow is a kind of projectile.
A knife is a kind of blade.
A sword is a kind of blade.

A weapon has a number called maximum damage.
A weapon has a number called minimum damage.
The maximum damage of a projectile is usually 50.
The maximum damage of a blade is usually 25.
The minimum damage of a projectile is usually 15.
The minimum damage of a blade is usually 10.

Before anyone trying doing anything (this is the dead men tell no tales rule):
if the actor is dead, the rule fails.

Unsuccessful attempt by anyone trying doing anything (this is the report dead men tell no tales rule):
if the person asked is dead, say "Dead men tell no tales. And they usually can't do anything else, either!" instead.

Before doing anything except searching or examining to a person (called the corpse) (this is the respect the dead rule): if the corpse is dead, say "Must you do that to [the corpse]? Have a little respect, please." instead.

Check searching a person (called corpse) (this is the search a corpse rule):
if the corpse is dead, say "You search [corpse][if the number of things carried by corpse is 0] but find nothing[otherwise] and find [the list of things carried by corpse][end if]." instead.

Instead of taking inventory (this is the new inventory listing rule):
if the number of things enclosed by the player is 0, say "You don[']t seem to have anything at the moment.[line break](Health: [present health of the player]/[max health of the player])[line break]" instead;
say "You are carrying: [line break]"; list the contents of the player, with newlines, indented; say "(Health: [present health of the player]/[max health of the player])[line break]".

Report examining a person (called victim) (this is the check NPC health rule):
	if the person is not dead, say "(Health: [present health of victim]/[max health of victim])[line break]".

Check examining a dead person (called corpse) (this is the examining a corpse rule):
	say "[Corpse] is a gruesome sight." instead.

Check examining the player (this is the report health rule):
	say "You [status of the player]. (Health: [the present health of the player]/[the max health of the player])[line break]" instead.

To say status of the player:
	let x be the present health of the player;
	if x is 100:
		say "are in perfect health";
	otherwise if x is at most 10:
		say "are near death";
	otherwise if x is at most 20:
		say "are in serious condition";
	otherwise if x is at most 30:
		say "have taken quite a beating";
	otherwise if x is at most 60:
		say "have definitely been better, but you could be worse";
	otherwise if x is at most 70:
		say "are a little beaten up";
	otherwise if x is at most 80:
		say "can almost hide the fact that you have been in a fight";
	otherwise if x is at most 90:
		say "have some scrapes and bruises, but you have looked worse";
	otherwise:
		say "are a little banged up, but still good-looking".

Section 3 - Shooting

Shooting it with is an action applying to two visible things. Understand "shoot [something] with [something]" as shooting it with. The shooting it with action has a number called the damage taken.

Setting action variables for an actor shooting something (called target) with something (called the boomstick):
	if the target is a person begin;
		if the boomstick is a projectile begin;
			let damage factor be 100 - damage resistance of the target;
			let base damage be a random number between the minimum damage of the second noun and the maximum damage of the second noun;
			change the damage taken to (base damage * damage factor) / 100;
		end if;
	end if.

Check shooting something (called the target) with something (called the boomstick) (this is the you must have a projectile to shoot rule):
	if the player does not carry a projectile begin;
		say "You need a projectile weapon to shoot anything.";
		stop the action;
	end if;

Check shooting something (called the target) with something (called the boomstick) (this is the you can only shoot with a projectile rule): if the second noun is not a projectile begin;
		say "I don't think that will work. Perhaps you should try some kind of projectile weapon?";
		stop the action;
	end if.

Check shooting something (called the target) with something (called the boomstick) (this is the you can't shoot something with itself rule):
	if the target is the boomstick begin;
		say "You try to ricochet the shot so that. . . Wait, you can't shoot [the boomstick] with itself!";
		stop the action;
	end if.

Check shooting something (called the target) with something (called the boomstick) (this is the suicide rule):
	if the target is the player:
		end the game saying "You have committed suicide!".

Carry out an actor shooting something (called the target) with something (this is the standard carry out shooting rule):
	if the target is a person begin;
		decrease the present health of the target by the damage taken;
		if the target is not the player begin;
			if the target is docile, change target to hostile;
		end if;
	end if.

Report shooting something (called the target) with something(called the boomstick) (this is the report shooting people rule):
	if the target is a person begin;
		if the target is dead begin;
			say "With one final shot from your [boomstick], [printed name of the target] drops to the ground, dead." instead;
		end if;
	say "You shoot [the target] with your [boomstick]. [The target] jerks back from the impact. ([The target][']s health: [present health of the target])[line break]";
	end if.

Report shooting something (called the target) with something(called the boomstick) (this is the report shooting non-people rule):
	if the target is not a person, say "You shoot [the target] with your [boomstick]. Well, I hope that made you feel better. Hopefully shooting [the target] won[']t attract any unwanted attention.".

Check someone shooting something (called the target) with something (called the boomstick) (this is the others must have a projectile to shoot rule):
	if the person asked does not carry a projectile begin;
		say "[The person asked] says 'With what? I don't have a projectile weapon.'";
		stop the action;
	end if.

Check someone shooting something (called the target) with something (called the boomstick) (this is the others can only shoot with a projectile rule):
	if the second noun is not a projectile begin;
		say "[The person asked] says '[The second noun] would need to be some kind of projectile weapon for that to work.'";
		stop the action;
	end if.

Check someone shooting something (called the target) with something (called the boomstick) (this is the others can't shoot something with itself rule):
	if the target is the boomstick begin;
		say "[The person asked] says 'I can hardly shoot [the boomstick] with itself!'";
		stop the action;
	end if.

Check someone shooting something (called the target) with something (called the boomstick) (this is the other people suicide rule):
	if the target is the person asked, say "[The person asked] says 'I refuse to commit suicide!'" instead.

Report someone shooting something (called the target) with something(called the boomstick) (this is the report another shooting a person rule):
	if the target is a person begin;
		if the target is dead begin;
			say "[The person asked] shoots [printed name of the target], who drops to the ground, dead." instead;
		end if;
		if the target is not the player begin;
			say "[The person asked] shoots, and [the target] jerks back from the impact. ([The target][']s health: [present health of the target])[line break]";
		end if;
		if the target is the player begin;
			say "[The person asked] shoots you! (Health: [present health of the player])[line break]";
		end if;
	end if.

Report someone shooting something (called the target) with something(called the boomstick) (this is the report another shooting a non-person rule):
	if the target is not a person, say "In a seemingly random act of violence, [the person asked] shoots [the target].".

After someone shooting something (called the target) with something (called the boomstick) (this is the shot to death rule):
	if the target is the player begin;
		if the player is dead begin;
			say "[The person asked] shoots you with [the boomstick], and you drop to the ground, dead.";
			end the game in death;
		end if;
	end if;
continue the action.

Section 4 - Stabbing

Stabbing it with is an action applying to two visible things. Understand "stab [something] with [something]" as stabbing it with. The stabbing it with action has a number called the damage dealt.

Setting action variables for an actor stabbing something (called target) with something (called pigsticker):
if the target is a person begin;
	if the pigsticker is a blade begin;
		let damage factor be 100 - damage resistance of the target;
		let base damage be a random number between the minimum damage of the second noun and the maximum damage of the second noun;
		change the damage dealt to (base damage * damage factor) / 100;
	end if;
end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you must have a blade to stab rule):
	if the player does not carry a blade begin;
		say "You need a bladed weapon to stab anything.";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can only stab with a blade rule):
	if the second noun is not a blade begin;
		say "And I suppose you cut your meat with a spoon? Why not try something with a blade?";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the you can't stab something with itself rule):
	if the target is the pigsticker begin;
		say "You try to break the blade so that. . . Wait, you can't stab [the pigsticker] with itself!";
		stop the action;
	end if.

Check stabbing something (called the target) with something (called the pigsticker) (this is the harikari rule):
	if the target is the player:
		end the game saying "You have committed suicide!".

Carry out an actor stabbing something (called the target) with something (this is the standard carry out stabbing rule):
	if the target is a person begin;
		decrease the present health of the target by the damage dealt;
		if the target is not the player begin;
			if the target is docile, change the target to hostile;
		end if;
	end if.

Report stabbing something (called the target) with something(called the pigsticker) (this is the report stabbing people rule):
	if the target is a person begin;
		if the target is dead begin;
			say "With one final thrust of your [pigsticker], [printed name of the target] drops to the ground, dead." instead;
		end if;
	say "You stab [the target] with your [the pigsticker]. [The target] yells out in pain.  ([The target][']s health: [present health of the target])[line break]";
	end if.

Report stabbing something (called the target) with something(called the pigsticker) (this is the report stabbing non-people rule):
	if the target is not a person, say "You stab [the target] with your [the pigsticker]. Well, I hope that made you feel better. Hopefully stabbing [the target] won[']t attract any unwanted attention.".

Check someone stabbing something (called the target) with something (called the pigsticker) (this is the others must have a blade to stab rule):
	if the person asked does not carry a blade begin;
		say "[The person asked] says 'With what? I don't have a bladed weapon.'";
		stop the action;
	end if.

Check someone stabbing something (called the target) with something (called the pigsticker) (this is the others can only stab with a blade rule):
	if the second noun is not a blade begin;
		say "[The person asked] says '[The second noun] would need to be some kind of bladed weapon for that to work.'";
		stop the action;
	end if.

Check someone stabbing something (called the target) with something (called the pigsticker) (this is the others can't stab something with itself rule):
	if the target is the pigsticker begin;
		say "[The person asked] says 'I can hardly stab [the pigsticker] with itself!'";
		stop the action;
	end if.

Check someone stabbing something (called the target) with something (called the pigsticker) (this is the other people harikari rule):
	if the target is the person asked, say "[The person asked] says 'I refuse to commit suicide!'" instead.

Report someone stabbing something (called the target) with something(called the pigsticker) (this is the report another stabbing a person rule):
	if the target is a person begin;
		if the target is dead begin;
			say "[The person asked] stabs [printed name of the target], who drops to the ground, dead." instead;
		end if;
		if the target is not the player begin;
			say "[The person asked] thrust the [the pigsticker] into [the target], who screams out in pain. ([The target][']s health: [present health of the target])[line break]";
		end if;
		if the target is the player begin;
			say "[The person asked] stabs you! (Health: [present health of the player])[line break]";
		end if;
	end if.

Report someone stabbing something (called the target) with something(called the pigsticker) (this is the report another stabbing a non-person rule):
	if the target is not a person, say "In a seemingly random act of violence, [the person asked] stabs [the target].".

After someone stabbing something (called the target) with something (called the pigsticker) (this is the stabbed to death rule):
	if the target is the player begin;
		if the player is dead begin;
			say "[The person asked] stabs you with [the pigsticker], and you drop to the ground, dead.";
			end the game in death;
		end if;
	end if;
continue the action.

Section 5 - Revenge

Every turn (this is the fighting back rule):
	repeat with madman running through on-stage alive people begin;
		if madman is hostile begin;
			if madman can see the player begin;
				if madman does not carry a weapon begin;
					if madman can see a weapon (called tool) which is not carried by anyone alive begin;
						say "[Madman] grabs [the tool]!";
						now tool is carried by madman;
					end if;
				end if;
				if madman carries a projectile (called boomstick), try madman shooting the player with the boomstick;
				if madman carries a blade (called pigsticker), try madman stabbing the player with the pigsticker;
			end if;
		end if;
	if madman is dead, change madman to docile;
end repeat.

Armed ends here.

---- DOCUMENTATION ----

First I would like to thank Sebastian Rahn for helping me test this update and providing helpful feedback.

Section: Basics of this Extension

This extension adds the actions shooting something with something and stabbing something with something.

Shooting a non-person thing is allowed, but has no real affect on the thing without additional rules. It is possible to make a game where the player has to shoot bottles to win a prize, or even to stop an enemy in a vehicle by shooting the tires.

Stabbing a non-person thing is also allowed, but again does nothing on it's own. Again, the uses for this would depend on what the author had need to do with it.

Another thing this extension does is add a few kinds: weapon (kind of thing), projectile (kind of weapon), blade (kind of weapon), fire arm (kind of projectile), bow (kind of projectile), knife (kind of blade) and sword (kind of blade). An author can create most any weapon they want using fire arm, bow, knife or sword, and they should behave properly.

Lastly, this extension makes it possible for a player holding a weapon to succeed in persuasion up to 80% of the time.

Section: Changes in this Version

The shooting and stabbing actions now work for any actor, not just the player.

This version no longer causes instant death when shooting or stabbing a person. Everyone starts out with 100 health, and attacks do various damage depending upon the weapon used and random outcomes.

The player can use examine me for information about his or her health.

Taking inventory will also allow the player to see his or her present health.

Examining a NPC will also allow the player to see the present health of the NPC.

If the player shoots or stabs another actor, that actor will become hostile. Hostile actors will take any weapon available (if there is one) and fight back.

Additionally, a dead person no longer magically vanishes. A dead person, naturally, can not do anything, and little can be done to a dead person. If the need should arise, however, it is now possible to search the corpse of a fallen enemy, and take anything they may have been carrying.

Example: * Bob Fights Back! - A simple game featuring poor Bob. We can order Bob around (if we carry a weapon), or eliminate Bob. In this example, Bob will grab a weapon (if there is one available) and fight back. Using test commands may not give the desired results, as there is a 20% chance Bob will not do as he is told. After running the test me, one can restart the game to try something different. Trying test Bob will show Bob refusing to be bullied (and with luck, Bob refusing to commit suicide).

		*:"Bob Fights Back!"

		Include Armed by David Ratliff

		Use no scoring.

		Hyar is a room. Thar is east of Hyar. A gun is a fire arm in Hyar. Bob is a man in Hyar. A katana is a sword in Thar.

		Test me with "Bob, go east/take gun/Bob, go east/go east/x me/x Bob/shoot Bob with gun/x me/shoot Bob with gun/shoot Bob with gun/shoot Bob with gun/shoot Bob with gun/x me/x Bob/search Bob/take katana"

		Test Bob with "take gun/Bob, go east/go east/Bob, take katana/Bob, drop katana/Bob, stab Bob with katana"

Example: ** Shooting Gallery - Bob invites you to shoot bottles to win a prize! This example is to show why it might be useful to allow a non-person thing to be shot. It shows the report shooting non-people rule being replaced, as well as a simple way to make shooting a non-person thing actually do something.

		*:"Shooting Gallery"

		Include Armed by David Ratliff

		Use no scoring.

		When play begins:
			say "A shady looking guy named Bob has convinced you to try your luck at shooting down six bottles with a cork gun. 'If you can do it, I[']ll give you a teddy bear,' he promises."

		Shooting gallery is a room.
		A bottle is a kind of thing.
		A table is in shooting gallery.
		Six bottles are on the table.
		A cork gun is a fire arm in shooting gallery.
		Bob is a man in shooting gallery.

		Instead of shooting Bob with the cork gun, say "Bob gives you a frightening stare and says 'You wouldn[']t stand a chance even if that thing were real!'".

		Instead of doing anything to Bob, say "He glares at you and says 'Just see if you can shoot all the bottles.'"

		The report shooting non-people rule is not listed in any rulebook.

		After shooting a bottle with something: remove the noun from play; continue the action.

		Report shooting a bottle with something: say "POP! goes the cork gun. SHATTER! goes the bottle. Bob says '[bottles message]!'"

		To say bottles message:
		let x be the number of bottles on the table;
		if x is 5:
			say "Only 5 more to go";
		otherwise if x is 4:
			say "Only 4 more";
		otherwise if x is 3:
			say "Half way there";
		otherwise if x is 2:
			say "Just 2 more";
		otherwise if x is 1:
			say "Only 1 more and you win";
		otherwise:
			say "You shot all of the bottles! You win the teddy bear";
			end the game saying "You should give your newly won teddy bear to someone you love!".

		Test me with "x Bob/take cork gun/shoot Bob with cork gun/shoot a bottle with cork gun/shoot a bottle with cork gun/shoot a bottle with cork gun/shoot a bottle with cork gun/shoot a bottle with cork gun/shoot a bottle with cork gun"

Example: *** Trolls - Bob, king of the trolls, must be destroyed! This example shows how easy it is to override some of the values used by Armed, such as max health and maximum damage, as well as how to make a NPC always want to attack the player on sight. Additionally, this example shows a simple way to create something to restore health to the player.

		*:"Trolls"

		Include Armed by David Ratliff

		Use no scoring.

		A crossbow is a bow. The description of the crossbow is "An old crossbow. It still functions, but only barely." The maximum damage of the crossbow is 25.

		A sharpened bone is a kind of knife. The maximum damage of a sharpened bone is 15.

		A thing called the old rusty sword is a sword.

		A potion is a kind of thing.

		Instead of drinking a potion:
			if the present health of the player is less than 86 begin;
				let elixir be a random potion carried by the player;
				say "You gulp down the vile tasting potion. 15 points have been restored to your health.";
				change the present health of the player to the present health of the player + 15;
				remove elixir from play;
			otherwise;
				say "Drinking the potion while your health is [present health of the player] will do you no good. Save it for when you need it.";
			end if.

		A troll is a kind of person. The max health of a troll is usually 40. A troll is usually hostile. Every troll carries one sharpened bone.

		Forest is a room. The description of forest is "A lush forest. In front of you is a cave. A peculiar odor wafts out from the cave. Strangely, you neither see nor here any animals. Will you go in?" The crossbow and one potion are here.

		Cave is a room. Cave is inside from forest. The description of cave is "A dank cave. It smells rather like trolls." A troll called a tall troll is in cave.

		Passage is north of cave. The description is "A narrow passage leading deeper into the cave." A troll called a short troll is here. It carries two potions.

		Throneroom is west of passage. The description is "This is the throneroom of Bob the troll king." Bob is a troll in throneroom. The max health of Bob is 70. Bob is docile. Bob carries the old rusty sword.

		After going to throneroom for the first time:
		say "Bob the troll king looks at you and says 'I am the troll king. Leave now or I will punish you for killing my followers!'".

		Every turn:
			if Bob is dead, end the game saying "You have slain Bob, king of the trolls!".

		Test me with "take all/go in/shoot troll with crossbow/shoot troll with crossbow/x me/drink potion/i/go north/shoot troll with crossbow/shoot troll with crossbow/search troll/take potions/i/drink potion/x me/go west/shoot Bob with crossbow/shoot Bob with crossbow/shoot Bob with crossbow/shoot Bob with crossbow"
