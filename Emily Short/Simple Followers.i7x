Version 5 of Simple Followers by Emily Short begins here.

"Allows non-player characters to follow the player (or one another); adds a FOLLOW command and a corresponding STOP FOLLOWING command so that the player can issue these orders to non-player characters."

Include Plurality by Emily Short.

Section 1 - The shadowing relation

Shadowing relates various people to one person (called the goal). The verb to shadow (he shadows, they shadow, he shadowed, he is shadowed, he is shadowing) implies the shadowing relation.

Every turn:
        repeat with pursuer running through on-stage people who are shadowing someone 
        begin;
                let starting-space be the location of the pursuer;
                let ending-space be the location of the goal of the pursuer;
	if the starting-space is not the ending-space 
	begin;
	                let next-way be the best route from the starting-space to the ending-space, using doors;
          	     	if next-way is a direction, try the pursuer trying going next-way;
	end if;
        end repeat.


Section 2 - The FOLLOW action

Understand "follow [something]" as following. Following is an action applying to one thing. Understand the commands "pursue" and "chase" as "follow". Understand "start following/pursuing/chasing [something]" as following. Understand the commands "begin" and "commence" as "start".

Check following something (this is the block following rule):
	say "You prefer to keep your options open." instead.

Check someone trying following (this is the following only people rule):
	if the noun is not a person, stop the action.

Check someone trying following (this is the following people already followed rule):
	if the person asked is shadowing the noun, stop the action.

Carry out someone trying following (this is the standard shadowing rule):
	now the person asked shadows the noun.

Report someone trying following (this is the standard report someone trying following rule):
	say "[The person asked] begins to follow [if the noun is the player]you[otherwise][the noun][end if]."

Unsuccessful attempt by someone trying following (this is the excuses for not following rule):
	if the reason the action failed is the following only people rule, say "[The person asked] realizes [it-they] cannot follow anything inanimate.";
	if the reason the action failed is the following people already followed rule, say "[The person asked] redoubles the effort to follow [if the noun is the player]you[otherwise][the noun][end if]."


Section 3 - The STOP FOLLOWING action

Understand "stop following/chasing/pursuing [something]" as ceasing to follow. Ceasing to follow is an action applying to one thing. Understand the commands "cease" and "desist" as "stop". Understand "quit following/chasing/pursuing [something]" as ceasing to follow.

Check ceasing to follow something (this is the block ceasing to follow rule):
	say "You aren't a follower anyhow." instead.

Check someone trying ceasing to follow (this is the can't stop following what isn't followed rule):
	if the person asked is not shadowing the noun, stop the action.
	
Carry out someone trying ceasing to follow (this is the standard stop-shadowing rule):
	now the person asked is not shadowing the noun.
	
Report someone trying ceasing to follow (this is the standard report someone trying ceasing to follow rule):
	say "[The person asked] ceases to pursue [if the noun is the player]you[otherwise][the noun][end if]."

Unsuccessful attempt by someone trying ceasing to follow (this is the excuses for not ceasing to follow rule):
	say "[The person asked] looks blank, since [it-they] [is-are] already not following anyone."


Section 4 - Another meaning for WAIT

Understand "wait here/still/put" as waiting. Understand the command "stay" as "wait".

Instead of asking someone who is shadowing someone to try waiting (this is the waiting cancels following rule):
	try asking the person asked to try ceasing to follow the goal of the person asked.

Simple Followers ends here.

---- Documentation ----

Simple Followers creates a mechanism so that characters will follow other characters who are not in the room. As long as a character is shadowing someone, that character will move once per turn in the direction of its goal. We can change this manually with

	now Fred is shadowing Ginger;
	now John is not shadowing George.

For obvious reasons, no one may shadow more than one target at a time.

Simple Followers also provides a FOLLOW command and a corresponding STOP FOLLOWING command so that the player can command other characters to follow the player character or one another. PURSUE and CHASE are accepted as synonyms of FOLLOW.

Moreover, if we command a character who is shadowing someone to WAIT (or variants such as STAY HERE, STAY PUT, WAIT HERE, etc.), that character will cease to shadow anyone.

In order to allow the player to give these orders, we will need to include appropriate persuasion rules. At their most permissive, these persuasion rules might look like this:

	Persuasion rule for asking people to try following something: persuasion succeeds. Persuasion rule for asking people to try ceasing to follow something: persuasion succeeds.

Two rules prevent the player from following or ceasing to follow someone else:

	Check following something (this is the block following rule):
		say "You prefer to keep your options open." instead.

	Check ceasing to follow something (this is the block ceasing to follow rule):
		say "You aren't a follower anyhow." instead.
	
We may ignore or substitute these two rules if we would prefer some other behavior.

Note also that this extension does not provide for the case where the player wants to follow another character who has just left the scene.

Version 4 lifts the arbitrary restriction that people do not follow through doors; if we want characters to be clever about opening doors in order to pass through them, we can use this extension in combination with Locksmith by Emily Short.

Example: * Farmyard Chase - In which we amass a small procession.

	*: "Farmyard Chase"
	
	Include Simple Followers by Emily Short.

	Persuasion rule for asking people to try following something: persuasion succeeds. Persuasion rule for asking people to try ceasing to follow something: persuasion succeeds.

	The Farmhouse is a room. The Attic is above the Farmhouse. The Kitchen is north of the Farmhouse. The Yard is north of the Kitchen. The Chicken Coop is west of the Yard. The Barn is north of the Yard.

	The cow is an animal in the Barn. The cat is an animal in the Yard. The mouse is an animal in the Attic. The yellow chicken is an animal in the Chicken Coop. Farmer John is a man in the Farmhouse.

	Test me with "John, follow me / up / mouse, follow john / d / n / n / cat, follow mouse / s / cat, stop following mouse".
