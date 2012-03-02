Version 1 of Frank by Stripes begins here.
"Adds a Skunk NPC named Frank to the Flexible Survival game"

Section 1 - Event and Comic Store

Mephitness is a situation.  The level of Mephitness is 6.
The sarea of Mephitness is "High";
when play begins:
	add Mephitness to badspots of guy;
	add Mephitness to badspots of girl;
	add Mephitness to badspots of furry;

Instead of resolving a Mephitness:
	say "     Up ahead, you hear some commotion up ahead and getting closer.  Taking cover, you watch as a hefty fellow with a skunk head and tail wheezes as he runs past you with a trio of skunk girls in hot pursuit.  He staggers and drops his pack as he scrambles to keep going[if park entrance is known].  Given how your distance from the park, it's clear the chase has been going on for a while[end if].  The skunk girls move in, giggling at their panting, exhausted prey.  They seem reinvigorated by their chase coming to close and their prize ready for the taking.";
	say "     They all seem quite distracted and haven't spotted you.  And that backpack is just sitting there.  Given how much he's already changed, there may not be much point in trying to help him and it may be best to get the supplies.  Do you take this opportunity to charge to the rescue or do you grab the backpack and make a run for it? (Y=Fight, N=Backpack)";
	if player consents:
		say "     Yelling for their attention, you charge the skunks.  The one at the back turns to face you while the others tackle their fallen prey.  He yells and screams, trying to push them back and get back up while they try to kiss and fondle him.";
		now skunkfight is 3;
		challenge "Skunk";
		if skunkfight is 1:
			now skunkfight is 3;
			say "     With the first of them finished, you move in on the other two.  They notice you coming, and after some shoving between the pair, one gets up and heads to deal with you while the other keeps at their prey.  He's become much more skunk-like now, with black and white fur starting to grow in over his body as the femme starts bobbing her muzzle over his stiff cock.  His struggles have stopped and he's moaning in pleasure.  You pull your eyes away from the erotic sight and focus on the one coming at you.";
			challenge "Skunk";
			if skunkfight is 1:
				now skunkfight is 3;
				say "     The last skunk girl releases the now ebon flesh of her prey's cock to face you.  The large fellow moans softly in disappointment, trying to reach for her.  She presses her foot down on his chest.  'Oh, I'll be back for you shortly, sweetie.'  Grinning, she licks her gooey lips and turns to face you.";
				challenge "Skunk";
				if skunkfight is 1:
					say "     With the final skunk girl defeated, you turn to the large skunk fellow, weapon at the ready just in case.  But he smiles and thanks you for your help, seeming still at least partially in control of his faculties.  He looks down at his discarded clothes and shrugs, deciding they're unneeded now.  He tosses his pack over his shoulder and motions for you to follow him.";
					say "     'Thanks again for the help back there.  They got a little upset when I threw a can of tomato juice onto one of those big beasts.  Stupid coyote didn't know what he was talking about.  Been chasing and throwing goo at me almost the whole way back to my store.  Almost made it, too.  Never would have been able to run that far before this whole crazy thing started.'  He only stops talking when he pulls a big bottle of cola from his pack and starts downing it.  He leads you over a few more streets and ushers you into a comic shop, chatting the whole time.";
					wait for any key;
					move player to Comic Shop;
					now Comic Shop is known;
					increase score by 20;
		if skunkfight is 3:
			say "     Deciding you've had enough of this, not really being your fight in the first place, you break away from the skunk girl and make a run for it.  As you are not their intended prize, the skunk doesn't pursue you and instead heads back to the rapidly-changing fellow who is well on his way to becoming and other skunk girl.";
		if skunkfight is 2:
			say "     Defeated, the skunk girl grinds her body against yours, dripping goo onto your crotch and fondling you.  'Mmm... I wish we had more time to play, but we need to get this fool back to receive his just punishment.  He'll make a fine skunk girl for our sexy master to breed.'  She kisses your cheek and runs a paw down your chest.  'You should come see him at the park.  I'd enjoy seeing you made into another slut for him to breed, too.'  With that, she gets up and starts dragging off the sex-dazed skunk.  He's already started to gain a shapely, feminine figure and will likely be another skunk slut soon enough.";
	otherwise:
		say "     More enticed by the backpack and its potential contents than the certainty of a fight with the trio of skunk girls, you slip out and grab the backpack before making your escape.  You can hear the excited moans of their prey getting louder and more feminine as they transform him into another sultry skunk girl like themselves.  Once you have some safe distance between you and them, you open up the pack to find a collection of snack foods and drinks, through there is a tin of ravioli as well.  A side pocket has a canister of pepperspray which may be useful.";
		say "     Food, chips, soda x2 and pepperspray obtained.";
		add "pepperspray" to invent of player;
		add "food" to invent of player;
		add "chips" to invent of player;
		add "soda" to invent of player;
		add "soda" to invent of player;
		increase score by 15;
	now skunkfight is 0;
	Now Mephitness is resolved;


Comic Shop is a room. It is fasttravel. It is private.
The description of Comic Shop is "[comicshopdesc]";

instead of sniffing Comic Shop:
	say "The comic shop smells stale and musty, with an odor of skunk musk in the air as well.";

to say comicshopdesc:
	say "     The shadowy comic shop is on the second floor of a run down building at the edge of the neighbourhood.  It is wedged between other similarly decrepit looking establishments.  Being behind a barred door and upstairs seems to have saved it from the lustful hordes of monsters.  The shop itself is fairly large, but there is little space to move.  There are shelves and displays everywhere for comics, manga and games, making it very difficult to navigate around inside.";

Section 2 - Frank the Skunk

Frank is a man.  Frank is in Comic Shop.
The description of Frank is "[frankdesc]";
lastFrankfucked is a number that varies.  lastFrankfucked is normally 555.
franksex is a number that varies.

instead of sniffing the Frank:
	say "The large skunk fellow smells of musty comics, Cheetohs and male skunk.";

to say frankdesc:
	say "     Frank is a heavy-set skunk fellow.  His encounter with the skunks seems to have slimmed him down a little, but he is still quite portly.  His black and white fur is thick and soft.  As he now has fur, he's forgone wearing clothes aside from a ballcap with the store logo on it.";

Instead of conversing the Frank:
	say "     [one of]'I never should have listened to that stupid coyote,' he grumbles angrily.  'He didn't know what he was talking about at all.'[or]'Do you prefer Batman or Superman?' he asks before going off into a long discussion about comics.[or]It's too bad there aren't any cool skunk superheroes.[or]'Which do you think is better?  4th edition or 3.5?'  Having no idea what the chatty fellow is talking about, you just shrug.[or]'I could really go for some more soda,' he says, having just finished one off.[or]'I hope this all gets sorted out soon.  My gaming night is on Fridays and we're just about to face the boss.'[or]'So, I was thinking you must be fourth or fifth level or something.  I'm guessing I'm at about level ten by now,' he says, flexing a little.[or]'So did you see that new superhero movie that came out this summer?' he asks.  Not even waiting for your response, he starts going on about his impressions of the film and its impact on the genre.[in random order]";

instead of fucking the Frank:
	[puts Skunk as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Skunk":
			now monster is y;
			break;
	if cunts of player is 0:
		say "     Frank seems a little flustered by your request.  'Oh... ahhh... That sounds nice and all, but... umm... ladies only, bro,' he says.  'Here, you can borrow a couple of my comics,' he says, passing you some comics from under the counter with animal characters in adult situations.  'Just don't get them all sticky,' he adds.";
	otherwise if lastFrankfucked - turns is less than 8:
		say "     The large skunk smiles and brushes his paws over his fluffy chair to straighten it out a little.  'Mmm... that sounds nice, but I could you a bit more of a break.  Besides, I want to finish the last of these issues,' he adds, pointing to the large pile he's set out.";
	otherwise:
		increase franksex by 1;
		now lastFrankfucked is turns;
		if franksex is odd:
			say "     Frank grins at your offer and moves around the counter to wrap his arms around you.  He buries you in the soft, musky fur of his chest and wraps his fluffy tail around you.  His paws slide down to your sides and stroke your hips as he starts kissing you.  Despite his awkward conversation habits, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you.  He guides you to another section of the store where the large gaming table sits.  He lays you back on it, legs hanging over the side and gets his cock lined up with your eager pussy.  His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you.  He pumps into you steadily, causing you to moan in delight as he fucks you.  His paws drift up your chest to play with your breasts and tease your nipples.  As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard.  He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb.  Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out.  You remain there, resting on the hard table, enjoying the wonderful afterglow.";
			say "[impregchance]";
		otherwise:
			say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you.  You kneel down in front of him and start licking at his ebon shaft.  Precum dribbles from its tip to be quickly lapped up by you.  As his excitement builds, his musky scent grows and your arousal increases until licking isn't enough and you stuff his thick rod into you mouth.  You lick and suck at it hungrily, making the large fellow moan in pleasure.  He runs his paws over your head and rubs your ears while bundling his big, fluffy tail around you like a warm, furry hug.  You lavish attention on his cock and balls until finally he growls and pumps his thick seed down your throat.  It is surprisingly sweet and delicious, and you lick it all up before swallowing it down.  The skunk, not wanting to leave you unsatisfied, boosts you up onto one of the glass counters and buries two fingers into your pussy while nuzzling and licking at your breasts.  His soft muzzle brushes over them before he starts licking and sucking your nipples.  He keeps his up, pumping those fingers and teasing your nipples until you cum hard with a lustful moan that makes him smile.  After helping you down, he pats your ass and wipes the wet glass with his fluffy tail.";
		infect "Skunk";




Frank ends here.