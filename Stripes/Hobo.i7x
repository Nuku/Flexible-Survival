Version 2 of Hobo by Stripes begins here.
[Version 2 - Hobo actions]

"Adds a dog unmotivated by sex who's just out to help you."

Section 1 - Encounter

Mournful Dog is a situation.
The sarea of Mournful Dog is "Hospital".
hdog is a number that varies.
dogfoodcount is a number that varies.

Instead of resolving a Mournful Dog:
	if hdog is 0:			[first time finding]
		say "     While searching through a hallway of patient rooms, you open one to a terrible smell of decay. You retch several times[if humanity of player < 50], barely hearing the soft growling coming from within,[end if] before recovering and taking stock of the room. There is a body on the hospital bed, clearly long dead and unremoved. On the floor beside it is a [if humanity of player < 50]growling[else]sad[end if] dog. The dog is a black and white shepherd wearing a bright vest on its bony flanks, denoting it as a helper dog.";
		say "     It seems the poor beast's master passed away, and in the ensuing chaos at the hospital, was left here since. It is unclear if they died before the outbreak took hold or if they were too weak and the infection finished them off before it could change and heal them. The dog, probably hostile to the infected hospital staff, has continued to protect its master and kept them from the removing the body.";
		increase score by 1;
		now hdog is 1;
		if food is not owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Unfortunately, you have no food to spare. Perhaps you should try to find it again later when you have some to give it.";
		if food is owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let featbonus be 0;
				if "Good Teacher" is listed in feats of player, increase featbonus by 1;
				if "Ringmaster" is listed in feats of player, increase featbonus by 1;
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount plus featbonus);
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount + featbonus] vs 22 and score [total]: ";
				if total > 21:
					say "     You are able to coax the dog into letting you come close and pet it. It wags its tail as you pat its head and check its tag, finding only the name 'Hobo'. Reaching over, you pull the sheets over its former master's body, then you both leave together.";
					now helper dog is tamed;
					say "     (The helper dog is now tamed! You can make it your active pet by typing [bold type][link]pet helper dog[as]pet helper dog[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";
					increase score by 10;
					now Mournful Dog is resolved;
				else:
					say "     The dog accepts the food from you, but won't let you get close. Maybe you should come back and try again another time.";
			else:
				say "     Hardening your heart to the mournful dog's needs, you close the door and decide to move on.";
				now Mournful Dog is resolved;
	else:
		say "     Your passage through the halls finds you at the room with the dead patient and their pet dog. You pinch your nose and poke in again to check on the dog, finding it still there. It perks up a little as you arrive, but still won't approach. It seems in slightly better condition than when you were here last time, but is still quite malnourished.";
		if food is not owned:
			say "     Having no food to spare, you cannot give any to the dog. Perhaps you should find some and return later.";
		if food is owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let featbonus be 0;
				if "Good Teacher" is listed in feats of player, increase featbonus by 1;
				if "Ringmaster" is listed in feats of player, increase featbonus by 1;
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount plus featbonus);
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount + featbonus] vs 22 and score [total]: ";
				if total > 21:
					say "     You are able to coax the dog into letting you come close and pet it. It wags its tail as you pat its head. Reaching over, you pull the sheets over its former master's body, then you both leave together.";
					now helper dog is tamed;
					say "(The helper dog is now tamed! You can make it your active pet by typing [bold type]pet helper dog[roman type]. You can see all the pets you have tamed with the [bold type]pet[roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type]pet dismiss[roman type], or just [bold type]dismiss[roman type])";
					now lastfuck of helper dog is turns;
					increase score by 10;
					now Mournful Dog is resolved;
				else:
					say "     The dog accepts the food from you, but won't let you get close. Maybe you should come back and try again another time.";
			else:
				say "     Hardening your heart to the mournful dog's needs, you decide you can't afford to spare food for the animal and move on.";
				now Mournful Dog is resolved;


Section 2 - Pet Data

helper dog is a pet. helper dog is a part of the player.
The description of helper dog is "The helper dog is a black and white shepherd with soulful and intelligent brown eyes. He will follow you and loyally assist you with your troubles."
The weapon damage of helper dog is 6.
The level of helper dog is 5.
The Dexterity of helper dog is 15.
The summondesc of helper dog is "Coming obediently to your call, the helper dog moves to your side, ready and eager to assist you.[hoboreset]".
The assault of helper dog is "[one of]The helper dog jogs between your enemy's legs, snapping at them![or]Growling menacingly, Hobo snaps at your foe, allowing you to score another glancing blow![or]Barking loudly, your loyal dog charges and bites the enemy![or]Your faithful companion bites your opponent's ankle, growling deep in its throat until the leg it finally pulled free![or]With a loud bark, the helper dog leaps at your enemy and bites their arm![or]Moving around behind them, Hobo grabs their arm and pulls back, knocking them off balance for you to score a quick hit![or]In an surprising piece of cleverness, your helper dog pulls a rope he's found across your enemy's path, causing them to stumble briefly![at random]".

the fuckscene of helper dog is "You make the offer to your canine companion, but he is uninterested.".

the scent of helper dog is "Your helper dog smells like a normal dog, surprisingly given the circumstances.".


Section 3 - Hobo Actions

hobo-water-gift is a truth state that varies. hobo-water-gift is usually false.
hobo-food-gift is a truth state that varies. hobo-food-gift is usually false.
hobo-water-reminder is a number that varies. hobo-water-reminder is usually 255.
hobo-food-reminder is a number that varies. hobo-food-reminder is usually 255.
hobo-journal is a number that varies. hobo-journal is usually 255.
hobo-libidosupp is a truth state that varies. hobo-libidosupp is usually false.
hobo-medical is a number that varies. hobo-medical is usually 255.
hobo-medical-gift is a number that varies.
hobo-grmilk is a truth state that varies. hobo-grmilk is usually false.
hobo-grmilkhelp is a number that varies. hobo-grmilkhelp is usually -50000.

to say hoboreset:
	now lastfuck of helper dog is turns;

an everyturn rule:
	if companion of player is helper dog and skipturnblocker is 0:
		if lastfuck of helper dog - turns >= 4:
			if thirst of player > 50 and carried of water bottle is 0 and carried of soda is 0 and hobo-water-gift is false:
				say "     Just as you're thinking once again that your mouth and throat are terribly dry, your helper dog pads up to you and drops something at your feet. Looking down, you see that it's a [bold type]bottle of water[roman type], clean and unopened. Surprised at the dog's cleverness, you pat Hobo's head as you pick up the drink.";
				increase carried of water bottle by 1;
				now hobo-water-gift is true;
				now hobo-water-reminder is turns;
				now lastfuck of helper dog is turns;
			else if hunger of player > 50 and carried of food is 0 and carried of chips is 0 and hobo-food-gift is false:
				say "     Your stomach grumbles with hunger as you check your pack again for anything worth eating, or at least worth risking eating. Just as you set your pack back down, you here a second soft thump behind you. Turning, you see that your helper dog has dropped a plastic bag with some [bold type]food[roman type] in it on the ground. The black and white shepherd sits there giving you an odd look. You pick up the bag and pat his head, surprised at how clever he is.";
				increase carried of food by 1;
				now hobo-food-gift is true;
				now hobo-food-reminder is turns;
				now lastfuck of helper dog is turns;
			else if humanity of player <= 25 and humanity of player > 0 and journal is owned and hobo-journal - turns >= 8:
				if bodyname of player is "human" and facename of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if facename of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as your [bodyname of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if bodyname of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as your [facename of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if bodyname of player is not facename of player:
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as a jumble of [bodyname of player] and [facename of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else:
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as a jumble of [bodyname of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				now hobo-journal is turns;
				now lastfuck of helper dog is turns;
			else if libido of player > 80 and inheat is true and slutfucked > 5 and hobo-libidosupp is false:
				if libido suppressant is not owned:
					say "     As you continue to struggle to cope with your heat and its urges, you are momentarily distracted from your thoughts of sex by the helper dog dropping something at your feet. Stopping to take a look at it, you find it to be a syringe filled with cloudy orange fluid. The label marks it as a [bold type]libido suppressant[roman type]. Hmm... perhaps that will help. What a clever dog.";
					increase carried of libido suppressant by 1;
				else:
					say "     As you continue to struggle to cope with your heat and its urges, you are momentarily distracted from your thoughts of sex when you catch the helper dog rummaging through your pack. You tell him to stop and are about to pull him away when he pulls a syringe of cloudy orange fluid from your pack, the libido suppressant. Delicately holding it in his mouth, he pads over to you and drops it in your hand. Hmmm... perhaps that will help. What a clever dog.";
				now hobo-libidosupp is true;
				now lastfuck of helper dog is turns;
			else if HP of player < stamina of player and ( medkit is owned or healing booster is owned ) and hobo-medical - turns >= 8:
				say "     Feeling worn out and aching from your injuries, you pause to take a short break. During this, [one of]Hobo pulls your [if medkit is owned]medkit[else]healing booster[end if] from your backpack with his muzzle and offers it to you[or]Hobo barks to get your attention, having dropped your [if medkit is owned]medkit[else]healing booster[end if] at your feet[or]you close your eyes for a moment, only to be started when something is dropped in your lap. There you find your [if medkit is owned]medkit[else]healing booster[end if] and the helper dog at your side[at random]. You pat the caring canine's head.";
				now hobo-medical is turns;
				now lastfuck of helper dog is turns;
			else if medkit is not owned and healing booster is not owned and hobo-medical - turns >= 16 and hobo-medical-gift < 2:
				if hobo-medical-gift is 0:
					say "     You stop and look around when you notice that your helper dog has disappeared from your side. You take a quick look around the area for him, only to eventually find him back where you started with a [bold type]medkit[roman type] at his feet. You pet the clever dog on the head as you take the medkit.";
					increase carried of medkit by 1;
				else if hobo-medical-gift is 1:
					say "     Your helper dog reappears at your side before you even knew he was gone, holding something in his muzzle. Taking the syringe from him, you examine it. It is labeled as a [bold type]healing booster[roman type] and contains a clear blue fluid. You pat the dog's head, thanking the clever shepherd for it.";
					increase carried of healing booster by 1;
				now hobo-medical is turns;
				increase hobo-medical-gift by 1;
				now lastfuck of helper dog is turns;
			else if thirst of player > 40 and carried of water bottle > 0 and hobo-water-reminder - turns >= 12:
				say "     While taking a short break, you catch your helper dog nosing around in your pack. He pulls out a bottle of water and drops it at your feet with a bark. Looking at it, you're reminded that you've gotten quite thirsty. You should really take better care of yourself.";
				now hobo-water-reminder is turns;
				now lastfuck of helper dog is turns;
			else if hunger of player > 40 and carried of water bottle > 0 and hobo-water-reminder - turns >= 12:
				say "     While taking a short break, you catch your helper dog nosing around in your pack. He pulls out some food and drops it at your feet with a bark. Looking at it, you're reminded that you've gotten quite hungry. You should really take better care of yourself.";
				now hobo-food-reminder is turns;
				now lastfuck of helper dog is turns;
			else if humanity of player <= 40 and humanity of player > 0 and journal is owned and hobo-journal - turns >= 16:
				say "     After taking a short break, you go to pick up your pack again, finding that your journal's sitting atop it. Hobo, resting beside your pack, looking up at you and barks once.";
				now hobo-journal is turns;
				now lastfuck of helper dog is turns;
			else if HP of doctor matt is 2 and carried of gryphon milk < 2 and hobo-grmilk is false and hobo-grmilkhelp - turns >= 8 and furry is not banned and hermaphrodite is not banned:
				say "     Before you've even noticed, your helper dog returns to your side carrying something in his mouth. As you take it from him, he gives a meaningful bark. Examining it, you find it to be an old-style glass bottle filled with milk. Surprisingly, it is still cold and smells delicious. You're about to taste a sample of it, when Hobo grabs your sleeve and pulls on your arm, keeping you from doing so. Reminded of the request from Dr. Matt for [bold type]gryphon milk[roman type], you cap the milk and tuck it away, wondering at just how smart this dog really is.";
				now hobo-grmilk is true;
				now lastfuck of helper dog is turns;


[
- brings food/water if none in pack and getting high (once each)
- reminds you of food/water if in pack and getting high (extended delay)
- offers you the journal if getting low (extended delay)
- gryphon milk if carried < 2 and doing matt's first task (once, conditional)
- medkit/healing booster if HP low (extended delay)
- libido suppressant if libido too high while in heat and slutfucked > 6 (once conditionally)
]

[ lastfuck of helper dog ]
[ delay since last summoned/helped player ]

Section 4 - Endings

when play ends:
	if helper dog is tamed:
		if humanity of player < 10:
			say "     As you give in to your feral instincts, your helper dog looks at you mournfully. He then turns and wanders off to find another poor, needy soul to help. Perhaps he will be more successful next time.";
		else:
			say "     After your rescue, you are able to convince the distracted military that the helper dog isn't a threat. He certainly seems quite normal to them and is an intelligent and helpful animal. Once you arrive at the safety of the military compound and disembark with the others extracted with you, you spot Hobo in the distance. He looks back at you once and, as if satisfied you are now safe, turns and continues on, perhaps to find another poor soul in need of his help."; [The God-I'm-so-fucking-Canadian ending]


Hobo ends here.
