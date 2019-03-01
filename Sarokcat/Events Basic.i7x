Events Basic by Sarokcat begins here.
[This file is for Flexible Society]

Tribal Skirmish is a situation.

Instead of resolving a tribal skirmish:
	If population of tribe of player > 20:
		let T be a random number between one and 50;
		let q be a random active species;
		if q is nothing, continue the action;
		let z be the printed name of q;
		if z is "", now z is "mutant";
		If T > workers of warrior:
			say "Your camp seems slightly emptier come morning, and you learn from several of your warriors that at some point last night, members of the [z] tribe managed to sneak into your encampment, and entice several of your people to slip away with them. You sigh as you look around your slightly smaller tribe, and resolve to make sure your sentries are keeping a better eye on things in the future.";
			Let y be a random number between one and five;
			Decrease the population of tribe of player by y;
			stop the action;
		else:
			say "Your warriors capture several members of the [z] tribe, sneaking around your camp looking to kidnap and convert some of your tribe members. You find yourself grinning at the delicious irony of the situation, as that night your tribe holds a celebration to help convert and welcome your newest tribe members, even joining in to enjoy the changing bodies of your former rivals tribe, as they learn to embrace their new life of sexual bliss as happily fucked members of your own tribe.";
			Let y be a random number between two and eight;
			Increase the Population of Tribe of player by y;
			stop the action;
	else:
		say "Several members of your tribe report seeing signs of other species sneaking around your camp, and you warn everyone to be careful and keep an eye out for any possible intruders looking for people to kidnap and covert.";


Silly strangeness is a situation.

Instead of resolving a Silly strangeness:
	say "Your scouts report something rather unusual near the borders of your territory, and curious about what could be so strange, you find yourself following one of the scouts back to take a look. Traveling through the deserted and slightly ruined city, you blink when you come across an area that seems bright and shiny, the colors gleaming and every surface shining brightly with reflected light. Moving forward carefully, you see the area seems surprisingly cheerful looking, with strange smiley faces stuck on the buildings, giving the place an almost cartoonlike flair. Stepping forward to move into the area, you blink as the ground squeaks slightly under your feet, and looking down to examine it closer, you realize that the pavement is actually black latex. Stepping back in surprise, you examine everything you can see without entering the area, quickly determining the entire area seems to be covered in, if not completely converted to, some kind of strange latex!";
	If printed name of tribe of player matches the text "Latex" or printed name of tribe of player matches the text "Rubber":
		say "You smile and commend your scouts for finding such a nice and safe location for your tribe, and quickly move to claim the rather cartoonlike stretch of land for your own, enjoying the way the place squeaks pleasantly when you stroke your own smooth skin against it.";
		Increase Territory of Tribe of player by 10;
		now Silly strangeness is resolved;
	else:
		say "Deciding that whatever this place is, it certainly isn't a safe place to be, you order your scouts to keep an eye on it to make sure it isn't actually spreading. And resolve to keep your people safely away from the rather cartoonlike stretch of territory, who knows what could happen if someone stayed in their long enough?";
		now Silly strangeness is resolved;

Satyr party is a situation.

Instead of resolving a Satyr party:
	say "You have barely stopped to get some rest, when you are awoken by the sound of loud laughter, and music. Looking outside you see that a small group of men with goat-like lower bodies seem to have found your camp, and are passing around flagons of wine, and playing rather infectious music on some sort of pipes. Seeing that several of your tribe have gathered around and are dancing happily to the music, and eagerly drinking the wine, and sigh, you are about to protest, and have several of your scouts try to take the strange satyr like partiers prisoner, when someone passes you a flagon full of wine. The strangely alluring scent of the wine has you taking a drink almost before you realize what you are doing, your head filling with a pleasant buzzing sensations as you smile and join in the feverishly arousing dancing yourself. How could you have ever thought to try to stop something so very fun?";
	say "After a long night of partying and dancing, you find yourself waking up the next day with a slight hangover, lying on the ground in a tangle of limbs, the rest of your tribe lying scattered around you, obviously just as exhausted from a long night of sex and booze as you are, and the strange satyr like folk are nowhere to be found. Recovering you take stock of everyone in camp, and discover that a couple of the most ardent partiers last night are now missing, and sigh as you realize that they are quite likely already long gone. Strangely enough though, the party seems to have put everyone in such a good mood, that they hardly seem to mind the loss of the few people who left with the goat legged satyrs, and even you find yourself whistling soft strains of their strange tunes as you go about your work that day.";
	decrease the population of the tribe of player by 2;
	increase the morale of the tribe of player by 20;
	now Satyr party is resolved;

Sphinx sighting is a situation.
Museumsphinx is a number that varies.

Instead of resolving a Sphinx sighting:
	say "Several of your scouts return from their patrols and report with some excitement having spotted a strange leonine beast with the head of a woman and the wings of a great bird soaring across the sky. Wracking your brain, you think you have heard of something like that before, and after consulting with the Nerd you come to the conclusion that the strange beast is something called a Sphinx, and that they are said to be very knowledgeable creatures. Deciding your tribe could use a bit more knowledge on occasion, and that if nothing else, this sphinx like creature sounds like it would make a lovely new tribe member, you order your scouts to keep an eye out for the beast as they go about their patrols. You smile as you think of what fun you could have with a beast like that, and hope that your scouts will be able to find the beast, or even more importantly, the beasts lair, sometime soon...";
	now Museumsphinx is 1;
	now Sphinx sighting is resolved;


Warning sign is a situation.

Instead of resolving a Warning sign:
	say "One of your tribe members brings back a strange spray painted sign for you to look at, it appears to be some kind of stylized hyena head, with a gang sign underneath it. It doesn't take much for you to realize that some sort of hyena gang is marking its territory, and from the vague rumors you have heard from other tribes, you realize your own tribe is probably not powerful enough yet to challenge the hyenalike gang's power. Taking the sign around with you, you show all the members of your tribe what it looks like, and warn them to stay away from areas with those kind of markings. Finally done, you take the sign with you and find a place in your room for it, to remind you of how far your tribe still has to go, and give you a target to shoot for eventually.";
	now Warning sign is resolved;

LostMilitaryJeep is a situation.
LostMilitaryJeep is good.

Instead of resolving a LostMilitaryJeep:
	say "Hearing a commotion outside, you rush out to find several of your tribe members playing with several sharp knives and playing with some helmets and gray and black patterned uniforms. Calming everyone down, you find out that while foraging for supplies earlier in the day, several tribe members found a wrecked vehicle with several boxes full of similar equipment. Quickly realizing just how useful that kind of gear could be, you soon have the whole tribe out following the foragers back to where they found the equipment, and soon find yourself looking at the several boxes full of military gear in the back of an abandoned Jeep. You manage to organize everyone into gathering up all the gear and hauling it back to your camp, and while you know it will be hard to train your people to use the military gear instead of just relying on their own superior natural abilities, you figure it will probably be worth it in the long run.";
	Increase the military of the tribe of player by 5;
	Now LostMilitaryJeep is resolved;

Kinkysextoys is a situation.
Kinkysextoys is bad.

Instead of resolving a Kinkysextoys:
	say "You are surprised when your foragers return with a large ice chest instead of food today, and even more surprised when they open up the chest and your eyes are greeted by a cacophony of colors. Blinking you look on in amazement with the rest of the tribe at the chest filled of dozens and dozens of different sex toys, as the toys are pulled out and passed around, you realize they come in all shapes and sizes as well as colors, several of them have large hard knots, while another has a nice inflatable knot, and yet more are either barbed, rippled, ridged, or just plain strangely shaped or vibrate. This leads to something of an impromptu party that night as most of your tribe splits the toys up amongst themselves, and as the leader you end up with several especially tempting looking toys all to yourself. Your tribe enjoys itself greatly for the next several days, although you slowly realize your tribe members seem more and more focused on lots and lots of lusty sex, instead of worrying about little things like thinking and researching. As you return to your own house and stare at your own lovely assortment of kinky sex toys, you realize you can hardly blame them for that... after all being nice and lusty sexual creatures is so much more fun than worrying about such little things you think, panting eagerly as you reach for one of your new favorite toys to pass the time with...";
	Increase Libido of tribe of player by 10;
	Decrease Intelligence of tribe of player by 10;
	Now Kinkysextoys is resolved;

Ratpack is a situation.
Mallratsighting is a number that varies.

Instead of resolving a Ratpack:
	say "Your forages return from wandering the city, only to report that several areas have already been picked clean by a group of scavengers with long ratlike tails, and slightly ratlike looks. You vaguely recall hearing about a group of rats In the area that managed to preserve a decent amount of territory from the other infected, and order your foragers to be careful not to provoke the rats while scavenging the area. Thinking about the ratlike creatures you smile as you realize that finding them could be very beneficial to your tribe, especially if they are willing to trade, and if they are hostile well... you are sure they will make lovely lusty little tribe members for you to breed...";
	now Mallratsighting is 1;
	now Ratpack is resolved;

Gatornapping is a situation.
Gatornapping is bad.

Instead of resolving a Gatornapping:
	Let T be a random number between one and two;
	if T is one:
		say "One of your foragers returns from his day of scouting throughout the city, in a panic, babbling about large glowing eyes, and without his fellow scavenging partner. Once you finally have them calmed down enough to talk, you learn that they were foraging near a large sewer access, and heard a strange fascinating voice beckoning them to come closer. When your foragers looked, they saw a pair of large reptilian eyes staring at them from out of the sewer entry, the almost hypnotic voice calling to them and telling them about all sorts of depraved fun the beast would like to have with them. While your panicked forager managed to resist, their companion succumbed to the beasts teasing words, drawing closer to the opening, until the large reptile could reach out and haul them down into the sewers with them. Shuddering at your tribe members description of a powerful gator like beast, you sigh and order your tribe members to steer clear of the sewer openings from now on. Shaking your head, you continue about your daily business, wondering what's next now that you actually have gators in the sewer system, flying pigs?";
		Decrease the population of Tribe of player by 1;
		now Gatornapping is resolved;
	else:
		say "Several members of your tribe vanish while out foraging for supplies in what was supposed to be safe territory, and while you send scouts, there is no sign of a struggle, instead it merely looks like they just vanished on their own. Shuddering you order your foragers to be more careful in the still dangerous city.";
		Decrease the population of Tribe of player by 2;

Impromptu orgy is a situation.
Impromptu orgy is good.

Instead of resolving an Impromptu orgy:
	say "After a long and satisfying day at working to spread your tribes influence across the city, you and many of the other tribe members end up relaxing comfortably together in the Village center. The chatting and petting grows increasingly more comfortable, until finally several of the tribe members are kissing and rubbing up against each other eagerly right there in the open. Soon more and more join in, and you find yourself accosted by several of your tribes more handsome specimens yourself, moaning happily as their hands rub over your body eagerly, and their tongues trace over your own handsome body. Before long the whole tribe is caught up in the lusty orgy, partners switching several times throughout the night, your moans and cries of pleasure mingling together with the many other lusty noises filling the night. Many hours later, most of your tribe are lying around the camp completely spent, the smell of sex hanging in the air as they lie there and try to recover from their wonderfully pleasurable ordeal, and you realize that this kind of impromptu orgy was just the thing to bring your tribe even closer together than ever before... in more ways than one!";
	Increase the morale of tribe of player by 10;

Thelonesurvivor is a situation.
Survivorhunting is a number that varies.

Instead of resolving Thelonesurvivor:
	say "One of your tribe members reports a strange encounter with an untransformed human wandering the city, you listen eagerly as they describe their surprising find, and the subsequent fight with the survivor. Apparently the human was hiding in some kind of bunker throughout the changes in the city, and has just now been forced out into the city to try to recover enough food and water to survive. You grin as you realize that while the human managed to get away this time, from the sounds of things, your tribe member managed to infect them with a little bit of your species strain of the infection, giving you a head start on the other species in the area on making this lone survivor into a nice and productive member of your own tribe! You give the orders for your scouts and warriors to be on the lookout for this wandering human, as they are sure to show themselves again sometime soon in their quest for supplies, and while it may take several encounters, you are sure if you keep trying you will manage to fuck any resistance they might have to the idea right out of them...";
	now Survivorhunting is 1;
	Now Thelonesurvivor is resolved;

Events Basic ends here.
