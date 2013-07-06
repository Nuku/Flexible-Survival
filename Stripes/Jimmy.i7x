Version 1 of Jimmy by Stripes begins here.
[Version 1 - Basic event and NPC]
"Adds corgi NPC named Jimmy to the Flexible Survival game."

Section 1 - Event

[Situation opened by Good Alexandra]
Automaton Activity is a situation.  The level of Automaton Activity is 6.  It is resolved.
The sarea of Automaton Activity is "Capitol";

instead of resolving Automaton Activity:
	if hp of Jimmy is 0:
		say "ERROR-Jimmy-0E: Premature event activation.";
		now Automaton Activity is resolved;
	otherwise if hp of Jimmy is 1:
		say "     Remembering Alexandra's request to check up on the automatons, you follow some tracks through the ash-filled streets.  They end up leading you to a half-destroyed building with a few of the metallic people around it.  As you watch, they dig through the rubble, eventually breaking into the building and pulling out a short, male corgi.  The little guy struggles against them, swearing and snapping at them as he cries for help, but is no match for their robotic strength.  A female automaton starts groping him with obvious intent.  Knowing you certainly can't go back to Alexandra and tell her you didn't try to help him, you [if weapon object of player is journal]raise your fists[otherwise]ready your weapon[end if] and charge at them.  Noticing your approach, one of them turns mechanically towards you, trying to catch you as well.";
		challenge "Automaton";
		if fightoutcome >= 10 and fightoutcome <= 19:			[player won]
			say "     Having dealt with the automaton, you rush towards the others.  Grabbing the robotic woman by the shoulders, you pull her off the corgi's cock and shove her aside.  He seems somewhat dazed, his eyes having become amber lights.  Giving him a shake, he blinks a few times and his eyes return to normal as he comes to his senses.  You smile and tell him you're here to help before shoving back another of the automatons.  He nods and gets onto all fours, running as quickly as he can on his short, stumpy limbs.  'Come on then, let's get out of here.'  After another swing to break away from the advancing automatons, you run after him.  When you catch up to the little guy, he's at a crossroads, looking around the devastated streets for a place to go.  Telling him you know someplace he'll be safe, you lead him out of the ash-covered ruins around the capitol building and to the police station.";
			say "     Once you're sure you won't be pursued, you slow to a walk and listen to him tell his tale.  'My name's Jimmy,' the corgi says as his short legs stride quickly to keep pace with you, 'and I've been stuck in that building since this craziness started.  There was some food for a while, but eventually that ran out and I had to start eating from a bag of dog food.  Tasty stuff, let me tell you,' he adds cheerfully.  'But, as you can probably guess, eating it caused me to change into a corgi.  Well, at least I'm super-cute now,' he says with a canine grin, running his paws over his short, canine body.";
			say "     'When I heard the rubble being moved, I thought I was being rescued and called out for help.  Little did I know those sex robots were the ones digging me out.  Thanks so much for pulling me out of that mess,' he says, giving you a quick little hug with his stubby arms.  Perhaps he's always been a positive fellow or he's just happy at finally having gotten out of the collapsed building, but his infection might also have changed his personality.  Even if that's the case, there are certainly much worse mental changes out there, so he should be fine as the police station's first rescue.";
			say "     Your trip back to the police station is long, but uneventful.  And Alexandra's certainly quite pleased with your success as well.  She's already gotten a few bunks set up it what was once the lockerroom.  Jimmy hops up onto one of the bunks and starts bouncing up and down on it, delighted to have a bed again.  You and Alexandra can't help but grin, finding him adorably cute.";
			now hp of Jimmy is 3;
			if hp of Alexandra < 57, now hp of Alexandra is 57;
			now Automaton Activity is resolved;
			now battleground is "void";
			move Jimmy to Police Lockerroom;
			move player to Police Station;
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:	[player lost]
			say "     During the automaton's sexual assault, you did manage to spot the corgi guy manage to squirm free.  He then dropped to all fours and ran off as quickly as his stubby little legs could carry him.  His small size helped him to weave between the automatons and make his escape.  After your assailant steps away, you rush off after him before another of the robotic people can grab you, but you've lost track of him for now.  You hope you can find the little guy before something else does.";
			now hp of Jimmy is 2;
		otherwise:
			say "     As you make your escape from the automaton attacking you, you spot the corgi guy managing to squirm free.  He drops to all fours and runs off as quickly as his stubby little legs can carry him.  While his small size helps him weave between the automatons and make his escape, he heads off in a direction separate from yours.  By the time you're able to circle around, you've lost track of him for now.  You hope you can find the little guy before something else does.";
			now hp of Jimmy is 2;
	otherwise if hp of Jimmy is 2:
		say "     Heading back to the area where you encountered the automatons digging out the corgi survivor, you begin searching around in the hopes of locating him.";
		let bonus be ( the perception of the player minus 10 ) divided by 2;
		increase bonus by lust of Jimmy;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		if (dice + bonus) >= 14:
			say "Luck favours you as you're able to spot a few small pawprints heading into an alleyway.  Heading in slowly, you find the small corgi huddled behind a dumpster on a pile of cardboard boxes.  He's startled at first, eyes flashing with an amber glow for a moment, but his eyes return to normal when he recognizes you as the one who tried to save him earlier.  'Pull up some cardboard and have a seat.  It's not much, but beggars can't be choosers, friend,' he says cheerfully.  Telling him that you know someplace that'll be much safer and more comfortable than an alley, he hops onto feet and smiles happily.  'Come on then, let's get out of here.'  With that, you lead him out of the ash-covered ruins around the capitol building and to the police station.";
			say "     As you take the make the long trek back, you listen to him tell his tale.  'My name's Jimmy,' the corgi says as his short legs stride quickly to keep pace with you, 'and was stuck in that building since this craziness started.  There was some food for a while, but eventually that ran out and I had to start eating from a bag of dog food.  Tasty stuff, let me tell you,' he adds cheerfully.  'But, as you can probably guess, eating it caused me to change into a corgi.  Well, at least I'm super-cute now,' he says with a canine grin, running his paws over his short, canine body.";
			say "     'When I heard the rubble being moved, I thought I was being rescued and called out for help.  Little did I know those sex robots were the ones digging me out.  Thanks so much for pulling me out of that mess,' he says, giving you a quick little hug with his stubby arms.  Perhaps he's always been a positive fellow or he's just happy at finally having gotten out of the collapsed building, but his infection might also have changed his personality.  Even if that's the case, there are certainly much worse mental changes out there, so he should be fine as the police station's first rescue.";
			say "     Your trip back to the police station is long, but uneventful.  And Alexandra's certainly quite pleased with your success as well.  She's already gotten a few bunks set up it what was once the lockerroom.  Jimmy hops up onto one of the bunks and starts bouncing up and down on it, delighted to have a bed again.  You and Alexandra can't help but grin, finding him adorably cute.";
			now lust of Jimmy is 0;
			now hp of Jimmy is 3;
			if hp of Alexandra < 57, now hp of Alexandra is 57;
			now Automaton Activity is resolved;
			now battleground is "void";
			move Jimmy to Police Lockerroom;
			move player to Police Station;
	otherwise:
		say "***ERROR-Jimmy-[hp of Jimmy]E: Result exceeds event parameters.";
		now Automaton Activity is resolved;


Section 2 - Jimmy the Corgi

Jimmy is a man.
The description of Jimmy is "[jimmydesc]";
The conversation of Jimmy is { "Yay!" }.

the scent of the Jimmy is "Jimmy smells pleasantly of dog.";

to say jimmydesc:
	if hp of Jimmy < 3:
		say "ERROR-Jimmy-[hp of Jimmy]L: You should not be able to see me.";
	otherwise:
		say "     Jimmy, having been transformed into a corgi, is quite short.  He stands roughly 3 1/2 feet tall, mostly due to his very short legs.  He is furry coat is a golden brown across most of his body, though white at his muzzle and chest.  His arms, also short, end in paw-like hands covered in clean, white fur.  He wears one of the police dog vests he's found and cleaned up, looking adorably cute in it.  Despite, or perhaps because of, his transformation, he seems perpetually happy.  He works cheerfully around the station to clean up the mess here.";

Instead of conversing the Jimmy:
	if hp of Jimmy < 3:
		say "ERROR-Jimmy-[hp of Jimmy]T: You should not be able to talk to me.";
	otherwise if hp of Jimmy is 3:
		say "     'Thanks again for helping me get here.  This place is so much better than where I was stuck before, even though there's a lot of sticky messes to clean up.  Still, once I get it all cleaned up, it'll be fun to make a few sticky messes of my own,' he laughs with a wink at you.  'Oh, do you like me new outfit,' he asks, doing a wobbly spin to show off the police dog vest he found.  It is the kind worn by the dogs of the K-9 unit and looks absolutely adorable on him.  It makes you want to scoop him up and hug him tight.";
		now hp of Jimmy is 4;
	otherwise:
		say "     [one of]'It's nice to be able to sleep in a proper bed again.  Sleeping on the floor's not so bad when you're a dog, but being on the bed's much better.  And you can have a lot more fun in bed, too,' he adds with a cute chuckle.[or]'Do keep a look out for some doggy treats while you're out there.  I've grown a taste for them,' he says, licking his chops.[or]'There's always more stuff to do around here, but that just means we'll be able to have more friends.'[or]'It's nice here and all, but I'm looking forward to the rescue Alexandra keeps talking about.'[or]'Thanks for helping us and keep searching for others to help out.'[at random]";

the fuckscene of Jimmy is "[sexwithJimmy]".

to say sexwithJimmy:
	if hp of Jimmy < 3:
		say "ERROR-Jimmy-[hp of Jimmy]F: You shouldn't be able to find me.";
	otherwise if hp of Jimmy is 3:
		say "     You should probably try talking to him some more first.";
	otherwise:
		say "(Sex content to be added later. - The Mgmt)[line break]";

Jimmy ends here.
