Version 2 of Felinoid companion by Sarokcat begins here.
[ Version 2.4 - Player initiated pet set and more M/M scenes]
[ Version 2.5 - Felinoid companion renamed and made into an NPC - Luneth]

"Adds a special event to Flexible Survival with a potential pet."

[ HP of Felinoid companion ]
[ # of times had sex       ]

[ lust of Felinoid companion ]
[ # of times had M/M sex     ]

the linkaction of Klauz is "[klauzlinkaction]".


to say klauzlinkaction:
	say "Possible Actions: [link]talk[as]talk Klauz[end link], [link]smell[as]smell Klauz[end link], [link]fuck[as]fuck Klauz[end link][line break]";


Section 1 - Situation

Injured Felinoid is a situation. The level of Injured Felinoid is 6.
The sarea of Injured Felinoid is "Park".
when play begins:
	add Injured Felinoid to badspots of guy;
	add Injured Felinoid to badspots of furry;

Instead of resolving Injured Felinoid:
	if felinoidrescued is 2:
		say "     Traveling through the park trails, keeping a wary eye out for any more strange glades, you notice a small damp red spot on the ground ahead. Moving forward carefully to look at it, you realize with some surprise that it is somethings blood! Looking around you see several other spots of blood leaving a trail heading deeper into the underbrush, whatever went that way was definitely injured pretty badly and might need some help... Do you investigate?";
		If player consents:
			say "     Your curiosity getting the better of you, you slowly follow the trail of blood through the trees, the sound of soft trickling water beginning to fill your ears as the trail grows fresher. Eventually you emerge into a small secluded glade, a small natural spring surrounded by large flat rocks trickling happily away in the center of the glade. Your attention is immediately drawn however, to the wounded Felinoid hauling itself to its feet painfully as you approach, the wounded beast obviously still willing to put up a fight as it limps forward to attack.";
			challenge "Felinoid";
			if lost is 0:
				say "     You sigh as the big cat collapses to the ground, his wounds obviously grown even worse due to your intense fight, sighing you realize that you have probably made matters much worse for the feline, you begin to turn to leave when you notice some green spots on the beast fur. Turning back you look closer and notice that a lot of small bits of vines are tangled in the beast's golden fur, and looking down on the beast you recognize it now as the Felinoid who helped you earlier in the glade full of the parasitic plants! Now recognizing where most of its wounds came from, you sigh guiltily as you realize it is probably in such a sorry state because of you. The beast watches you warily as you stare down at it, wondering what you can do to help, or even if you should..";
				if "Expert Medic" is listed in feats of player:
					say "     Realizing the beast's wounds are well within your expert medical ability to treat, you begin to reach down to patch the felinoid up, only to pause and wonder if you should really help to heal the large feline, as you or someone else will likely end up fighting it later if you do. Do you help the felinoid anyways?";
					if player consents:
						say "     Sighing, you are unable to turn away from a patient in need, especially seeing as the patient was injured while you benefited from his help. Pulling out your personal medical supplies, you quickly get to work tending to the Felinoid, after almost an hour of hard work, you sit back with a sigh, content that the large cat is no longer in any immediate danger, and relatively sure that almost all of his wounds will heal in time. The beast even seems to feel better as he hauls himself up onto his paws, seeming to stare at you curiously for a minute as if wondering why you helped him, before turning and limping off into the park. Picking up your equipment, you turn and head off into the park as well, wondering if you will be seeing your felinoid patient again soon, his musk still filling your head teasingly even as you leave the glade behind.";
						infect "Felinoid";
						now felinoidrescued is 3;
					else:
						say "     Sighing you stand up, and turn your back on the injured cat, and begin to walk away. Hardening your heart as you hear the feline beast whimpering softly in agony behind you, knowing that it won't last long in the state it's in as you put the glade with the dying felinoid behind you and head back out into the park itself.";
						now Injured Felinoid is resolved;
				else if medkit is owned:
					say "     Looking down at the injured beast and feeling even guiltier now that you recognize it, you blink as you realize you have something in your pack that might actually help. Pulling out a medkit, you look down at the beast as it shudders and whimpers in pain, and realize that its wounds are so serious it would likely use up an entire kits worth of supplies to even begin to treat the large cat. Staring at the valuable medkit in your hand, you wonder if it is really worth using it on the Felinoid bleeding on the ground in front of you, sure the beast helped you before, but if you heal it you or someone else will likely only end up fighting it again in the future... still you do feel rather bad about fighting it when it was already so grievously injured... Do you help the felinoid anyways?";
					if player consents:
						say "     Sighing, you find you are unable to turn away from injured Felinoid in need, especially seeing as you benefited from or were responsible for most of his injuries... Opening the medkit up, you quickly get to work tending to the Felinoid, and after almost an hour of hard work, you sit back with a sigh, content that the large cat is no longer in any immediate danger, and relatively sure that almost all of his wounds will heal in time. The beast even seems to feel better as he hauls himself up onto his paws, seeming to stare at you curiously for a minute as if wondering why you helped him, before turning and limping off into the park. Picking up the remains of your medkit, you turn and head off into the park as well, wondering if you will be seeing your felinoid patient again soon, his musk still filling your head teasingly even as you leave the glade behind.";
						infect "Felinoid";
						delete medkit;
						now felinoidrescued is 3;
					else:
						say "     Sighing you stand up, and tuck the medkit back into your pack as you turn your back on the injured cat, and begin to walk away. Hardening your heart as you hear the feline beast whimpering softly in agony behind you, knowing that at least its pain won't last long in as bad a state as the beast is in. You put the glade with the dying felinoid behind you as you head back out into the park proper.";
						now Injured Felinoid is resolved;
				else:
					say "     Sighing as you look down at the injured felinoid, you realize that even if you wanted to help the beast, you have no way of actually doing so. You take the time to reach out and pet the injured Felinoid's soft bloodied fur for a second, and bring it over some water from the spring, before heading back out into the park, hoping that it will manage to survive its most recent fight, and almost wishing you had some way of helping it.";
			else:
				say "     Defeated even by the wounded beast, you slowly stagger back off into the park, sighing as you realize that the combat certainly hasn't helped either of you feel any better.";
	else if felinoidrescued is 3:
		say "     Traveling through the trails of the park yet again, you pause as you hear something moving behind you, turning around carefully you see what is by now a rather familiar looking Felinoid stalking toward you purposefully, intent on proving his dominance. You realize that while his wounds are obviously mostly healed, a fresh combat certainly won't help his situation any... do you prepare to fight anyways?";
		if player consents:
			challenge "Felinoid";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Beating the beast back once again, you sigh in relief as it collapses to the ground again, its earlier wounds somewhat the worse for wear after this latest fight. After making sure the beast is in no danger of dying, you turn to continue your journey through the park, only to stop as you hear the creature whimpering as it hauls itself painfully to its paws again behind you. Preparing yourself for another fight, you turn back to see the felinoid limping after you slowly, obviously in pain as it tries to follow you. Wondering what the feline creature intends you watch curiously as he staggers over to you, before collapsing onto his haunches and raising one paw towards you as he stares at you with his feline eyes. You could almost swear the beast is acknowledging your dominance and asking if he can come with you, and even as badly injured as he is now, it would still make a formidable companion... Do you take the felinoid with you?";
				if player consents:
					say "     The large cat seems almost pathetically grateful as you reach down to stroke his soft fur, his rumbling purr filling your ears as you slowly head back to the park entrance with your new friend. You smile as you think how much easier your trip through the city will be with the powerful feline at your side, although you do have to worry at least a little bit about the possible side effects of working so closely with such a powerful male felinoid... While making your way back onto one of the numerous trails in the park, you decide to learn more about your new ally. You gently begin to scratch the felinoid behind the ear, attempting to gage his response. While he seems to enjoy your affections, he is also quick to roll his eyes at you in a very human like way. Purely out of curiosity, you ask the large predatory cat if he is able to understand what you say? The felinoid stops and just stares at you for a moment, before he quickly nods his head before continuing on his way.";
					say "     Well that answers that at least. With him having at least a decent amount of intelligence, it does seem kinda weird to keep call him [italic type]felinoid[roman type]. Asking him his name rewards you with a something between a growl and a chuckle. You decide to try a different approach, instead now you ask what he would like to be called? Fully prepared to get another growly laugh, you are surprised when he once again stops and turns back to you, one eyebrow raised in a very human way. Quickly he swipes his paw at you with his claws extended, afterwards baring his teeth at you in what could be seen as a smile.";
					WaitLineBreak;
					say "     Thinking on what just happened you attempt to think of a name that might match up with him. Claws... attempting to feel out a name with that in mind lead you to the idea of maybe claus, but that doesnt seem to fit either. Then it hits you, what about Klauz? It has a feral feel to it, while still sounding like an actual name. Asking the felinoid how he feels about the name only leads to another growl and a shrug of his shoulders.";
					now Felinoid companion is tamed;
					move Klauz to Back Of The Library;
					infect "Felinoid";
					say "(The Felinoid companion is now tamed! You can make it your active pet by typing [bold type][link]pet Felinoid companion[end link][roman type]and initiate sex with him while active by typing [bold type][link]fuck Felinoid companion[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
					now Injured Felinoid is resolved;
				else:
					say "     Deciding that having one of the large felines follow you around would be far too dangerous, in spite of any help it might be in surviving in the city, you pet the golden furred felines head for a minute, before leaving it behind, the Felinoid trying to stagger after you as you leave, but its injuries leaving it unable to actually catch up. You idly find yourself wondering if you will encounter that particular Felinoid again, as it certainly seems to have fixated on you somehow.";
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     The large beast sniffs haughtily at your defeated form, obviously feeling somewhat satisfied at having proved itself to still be a dominant predator even with its injuries. It turns to stalk off, only to turn back and nuzzle you almost affectionately for a minute, as if thanking you for your earlier help, before vanishing into the park, though somehow you still have the feeling you will be seeing the beast again soon.";
				infect "Felinoid";
			else:
				say "     The large beast sniffs haughtily at your fleeing form, obviously feeling somewhat satisfied at having proved itself to still be a dominant predator even with its injuries. It turns to stalk off, only to turn back and mrowl at you almost affectionately for a minute, as if thanking you for your earlier help, before vanishing into the park, though somehow you still have the feeling you will be seeing the beast again soon.";
				infect "Felinoid";
		else:
			say "     Declining to fight the large Felinoid, you carefully back off, your posture deliberately nonthreatening as the large predator stalks you teasingly. The beast rumbles in confusion as you refuse to fight it, butting you with its large feline head and rubbing its body against you as it tries to work out what to do about the strange situation, seeming unwilling to actually attack someone who helped it earlier. Finally the beast seems to be satisfied that it has proved its dominance over you, and panting sprawls out next to you companionably, now that you can get a closer look, it seems the beast's wounds are still hindering it more than you suspected, the injured felinoid obviously having a hard time surviving out here all alone with its injuries. Sighing you reach down and stroke his soft fur for a while, his soft rumbling purr and spicy musk filling your head as you pet the Felinoid for a while, before standing up to continue on your way.";
			say "     After only a few steps you realize the injured Felinoid is following you, and turning back you see the beast sit down and give you a feline grin. Sighing as you turn and head back through the park, you glance back to see the Felinoid trailing behind you still, the beast obviously having decided to come with you, and taking your lack of a fight as agreement on your part. Well, at least even injured, your new Felinoid companion is still a formidable foe, though somehow you think you should probably be wary of working too closely with the large male cat... While making your way back onto one of the numerous trails in the park, you decide to learn more about your new ally. You gently begin to scratch the felinoid behind the ear, attempting to gage his response. While he seems to enjoy your affections, he is also quick to roll his eyes at you in a very human like way.";
			WaitLineBreak;
			say "     Purely out of curiosity, you ask the large predatory cat if he is able to understand what you say? The felinoid stops and just stares at you for a moment, before he quickly nods his head before continuing on his way. Well that answers that at least. With him having at least a decent amount of intelligence, it does seem kinda weird to keep call him [italic type]felinoid[roman type]. Asking him his name rewards you with a something between a growl and a chuckle. You decide to try a different approach, instead now you ask what he would like to be called? Fully prepared to get another growly laugh, you are surprised when he once again stops and turns back to you, one eyebrow raised in a very human way.";
			say "     Quickly he swipes his paw at you with his claws extended, afterwards baring his teeth at you in what could be seen as a smile. Thinking on what just happened you attempt to think of a name that might match up with him. Claws... attempting to feel out a name with that in mind lead you to the idea of maybe claus, but that doesnt seem to fit either. Then it hits you, what about Klauz? It has a feral feel to it, while still sounding like an actual name. Asking the felinoid how he feels about the name only leads to another growl and a shrug of his shoulders.";
			now Felinoid companion is tamed;
			infect "Felinoid";
			say "(The Felinoid companion is now tamed! You can make it your active pet by typing [bold type][link]pet Felinoid companion[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
			now Injured Felinoid is resolved;
	else:
		say "     Traveling through the twisting trails of the park, you notice the soft sound of water trickling over rocks from nearby, and leave the path to investigate. Pushing through the undergrowth, you blink as you come across a small spring in a rather nice looking glade, moving into the small glade, you notice that it looks like an excellent secluded place to rest, and begin to set your pack down. As you begin to set your pack down, you notice the numerous tracks in the soft earth at your feet, and blink as you look around and realize the glade is full of other similar tracks. Kneeling down you look closer you see that most of the tracks are those of the large felinoids wandering the park, and some of them even have soft spots of blood resting next to them. Sighing you realize the large feline creatures found this nice pristine glade first, and are likely using it as a place to rest and lick their wounds. Not wanting to be here in case one of the feline beasts shows up, you pick your pack up and head back out into the park, feeling a little sad at not being able to rest near the nice spring.";


Section 2 - Felinoid companion

Felinoid companion is a pet. Felinoid companion is a part of the player.
understand "Klauz" as Felinoid companion.
The description of Felinoid companion is "[Klauzdesc]".
The weapon damage of Felinoid companion is 9.
The level of Felinoid companion is 6.
The Dexterity of Felinoid companion is 15.
The summondesc of Felinoid companion is "[SummonKlauz]".
The dismissdesc of Felinoid companion is "[DismissKlauz]".
The assault of Felinoid companion is "[one of]Your felinoid companion rakes your attacker with his claws![or]Klauz rubs up against your opponent, distracting them greatly![or]Klauz's musk distracts your target, allowing you to get in another strike![or]Taking advantage of your foe's distraction, your companion strikes out with his claws.[or]Your ally manages to grab onto your opponent, providing you with an opening![or]Klauz charges into the melee to protect you, and your opponent seems so startled at the ferocious appearance of this new combat, they leave themselves open to attack.[or]Bracing himself against the pain, your injured companion leaps forward into the combat, knocking your opponent flat.[or]The Felinoid you helped returns the favor by running in and tripping your opponent up![or]Klauz pounces on your opponent, trying to wrestle them to the ground.[at random]".
the fuckscene of felinoid companion is "[sexwithfelinoidpet]".


to say SummonKlauz:
	remove Klauz from play;
	if player is in Back Of The Library and Klauz is in Back Of The Library: [summoning while standing next to him]
		say "     ...";
	else: [regular summoning]
		say "     Turning to look around, you spot the large Felinoid from the park lurking quite a ways behind you, obviously keeping an eye on you from a distance. Feeling a smile tugging at your face, you gesture several times for him to approach, and after a minute, Klauz seems to get the idea as he pads forward and rubs up against you in greeting, obviously looking forward to exploring with you.";

to say DismissKlauz:
	move Klauz to Back Of The Library;
	if player is not in Back Of The Library: [regular dismiss]
		say "     Turning back to Klauz you inform you got it from here, earning you a slight glare from the felinoid. Attempting to make it up to him, you mention that he should make sure to find someone to knoeck up on his way home. That apparently puts in a decent mood, giving you some sort of wink he continues on back towards the library.";
	else: [dismissing him in Back Of The Library]
		say "     ...";

Klauz is a man.
The description of Klauz is "[Klauzdesc]".

instead of sniffing the Felinoid companion:
	say "[KlauzScent]";

instead of sniffing Klauz:
	say "[KlauzScent]"

Instead of fucking the Klauz:
	say "[sexwithfelinoidpet]";

to say KlauzScent:
	say "     Klauz smells strong and masculine[if cunts of player > 0 or player is mpreg_ok]. It is quite arousing[end if].";

to say Klauzdesc:
	say "     Klauz, the golden Felinoid that you rescued is lean and powerful as he stalks along besides you eagerly, obviously one of the most powerful allies you could have as you try to survive in the city. Of course he still doesn't seem to have recovered completely from his ordeal, and is thus more than content to let you take the lead in combat and in your travels around the city. Of course you can't help but wonder just how the large cat sees you and why it bothers following you around. Whether it sees you more as a friend or companion, or as a potential mate...";

instead of conversing the Klauz:
	if player is in Back Of The Library and Klauz is in Back Of The Library:
		say "[KlauzTalkMenu]";
	else if companion of player is Felinoid companion:
		say "[KlauzTalkMenu]";
	else:
		say "     Klauz isn't here.";

instead of conversing Felinoid companion:
	if Felinoid companion is not tamed:
		say "     Who?";
	else:
		if player is in Back Of The Library and Klauz is in Back Of The Library:
			say "[KlauzTalkMenu]";
		else if companion of player is Felinoid companion:
			say "[KlauzTalkMenu]";
		else:
			say "     Klauz isn't here.";

to say KlauzTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Spend time with Klauz";
	now sortorder entry is 1;
	now description entry is "Spend time just relaxing with Klauz";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Spend time with Klauz"):
					say "[KlauzTalk1]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the Klauz, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say KlauzTalk1:
	say "     Klauz listens attentively as you tell him what happening out in the city while you stroke and scritch your felinoid companion. He does make a point to rub up against you though, making sure his pheromones are all over you.";


Section 3 - Felinoid companion sex

An everyturn rule:
	if companion of player is Felinoid companion and skipturnblocker is 0:
		if a random number between one and 20 < 6 and lastfuck of felinoid companion - turns >= 4:
			say "[sexwithfelinoidpet]";


to say sexwithfelinoidpet:
	[puts Felinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Felinoid":
			now monster is y;
			break;
	if lastfuck of felinoid companion - turns < 4:
		say "     You need to wait a while before making such an offer again to Klauz.";
	else if HP of Felinoid companion > 4 and the remainder after dividing HP of Felinoid companion by 3 is 2 and libido of player >= 30 and ( cocks of player > 0 or cunts of player > 0 ):
		say "     Your large lion-like companion approaches you nuzzling at you trying to get your attention. You bend down to get a closer look making sure that he didn't get hurt. When you bend down, you feel his rough tongue run across your cheek. He licks your face a few more times before forcing your head down beneath him with his massive paw. Looking up, you see his large feline erection. The smell of his musk is overwhelming filling your lungs with each breath. You take a few more inhalations, savouring the felines musk before wrapping your lips gently around his cock. The barbs move from your lips down into your throat as you slowly bob your head back and forth. You run your tongue along his cock trying to please every inch. As you do so you begin frantically removing any gear possible tossing it to the side. Eventually taking off enough to expose your rear. The large feline takes notice then suddenly pulls his cock from your lips, as if he can smell your need to be [if player is impreg_able]bred[else]fucked[end if]. He quickly moves around you. You instinctively adjust your position to all fours and reveal your [if cunts of player > 0]wet cunny[else]tight pucker[end if]. Your companion quickly mounts you and lines the tip of his wet cock with your awaiting hole.";
		say "     He pushes his wet cock deep into you with ease. You can feel each bump and barb rub against your hole and your inner walls. Once you feel his heavy pair of balls resting against your own, he begins to hump you in earnest. His barbs fill you with pleasure as they rub against your insides[if cocks of player > 0] causing you steadily leak precum beneath you[end if]. The nubs on his shaft quickly, and repeatedly, go in and out of your [if cunts of player > 0]quivering cunny[else]clenching ring[end if] sending shivers up your spine[if cocks of player > 0]. With each hard thrust in, you can feel his balls slap against your own accompanied by a wet slurp coming from your abused hole[end if]. You can't help but moan beneath the dominant male as he fucks you. Even though he is your comrade and you took him in as your pet, you have continued to allow him to become the more dominant party, allowing him to have his way with you whenever you please. The dominant male picks up the pace of his already rough fucking.";
		say "     After some time, he bites down hard on the nape of your neck, surely drawing blood. The rough bite sets you over the edge as you cum [if cocks of player > 0]beneath the dominant male painting the ground with your sticky seed[else]hard, your vaginal walls gripping at his feline rod[end if]. Not much longer he releases your nape and releases a loud roar as he thrusts his feline shaft deep inside of you and releases shoots his virile seed deep into you. He pulls his cock out, which causes you to moan for more, and shoots the last two or three shoots onto your ass. Which you are sure is a way to mark his territory. As per usual, he walks back around you and has you lick his cock clean. You've begun to enjoy the taste of his cum more and more, but most importantly you are happy to have pleased the dominant male. After you lick his cock clean, he struts away leaving you by yourself. You quickly put your gear back on, savouring the taste of his musk trapped on your lips.[impregchance]";
		increase HP of Felinoid companion by 1;
	else if bodyname of player is "Felinoid" and player is pure and child is not born and gestation of child is 0: [ player must not already be pregnant]
		if cunts of player > 0:
			say "     Klauz becomes increasingly agitated and begins to rub against your furry legs with loud purrs and insistent mewls. His broad snout pushes up between your thighs to lap at your tender places without so much as a request. The sway of his tail and the increasing length of his dick leaves little confusion to his desire.";
			if libido of player > 50 or humanity of player < 40:
				say "     You can think of no reason to turn away your faithful companion. The sight of his virility is more than reason enough to say yes. Your mouth waters at the thought of receiving it, and you offer no objection to his insistent advances.";
				say "[felinoidpet_puref]";
			else:
				say "     You aren't sure if you should submit to his advances. Should you?";
				if the player consents:
					say "     Well, what could the harm be? Besides, it's all for a little bit of fun, right?";
					say "[felinoidpet_puref]";
				else:
					say "     You push Klauz away firmly, despite the soft tingling in your needy feline cunt. There's no time for this right now!";
					increase libido of player by 12;
		else if cocks of player > 0:
			say "     The great feline beside you gently nudges against you a few times, then nuzzles upwards into your groin, teasing at a [cock size desc of player] [cock of player] shaft. A rough tongue flicks out across sensitive flesh, taking special care to get up under spines and tease the sensitive flesh under the head of the feline cock";
			if libido of player < 50:
				say ". Do you really have time to spend indulging the cat's lusts? Well that does feel really damn nice. Maybe...(y/n)";
				if the player consents:
					say "[felinoidpet_purem]";
				else:
					say "     You carefully extract yourself from your companion's eager mouth and push him back. Not right now! He looks a little disappointed at your reaction, but doesn't push the matter, at least for the moment.";
					increase libido of player by 8;
			else:
				say ". Already feeling quite aroused, the thought of pushing him away does not even enter your mind.";
				say "[felinoidpet_purem]";
		else: [ the player is neuter, omg]
			say "     You almost trip, stumbling across a furry blockade to your path. Your feline companion is on his back, paws in the air and pawing in your direction. Between his hind legs, his shaft is flagged in the air, hard and ready. Your sexual urges feel a bit muted without the usual organs to express them, but you don't want to disappoint your companion, do you? Shall you play with the needy kitty?";
			if the player consents:
				say "[felinoidpet_puren]";
			else:
				say "     You step over the cat and continue on your way. He rolls back to his feet and is soon following again, if disappointed.";
		infect "Felinoid";
		now lastfuck of felinoid companion is turns;
	else if cunts of player > 0:
		if libido of player > 70:
			let T be a random number between one and five;
			if T is 1:
				say "     Klauz rubs himself up against you, his strong feral musk filling your senses, and rushing through your already heat filled body, you moan as you realize just how hot and needy that fiery musky scent is making you. You shudder as the male beast rubs himself up against you again, his soft downy coat of golden fur rubbing against your [skin of player] skin deliciously as he circles you, your pussy dampening with desperate need even as you reach down to stroke his soft fur with your hands. His soft rumbling purr fills your head as you touch him, feeling the strong male muscles under the skin, making you feel even more aroused as you look down at him, easily spying his barbed erection where it hangs under his body.";
				say "     Realizing you aren't the only one this desperately aroused, you grin as the perfect solution occurs to your lust fogged mind, the felinoid backs off a bit as you toss your stuff to the side, before lying down on the ground and spreading your legs wide. You moan at the sight of the amazing feline beast as he stalks over to you, his nose rubbing up against your body teasingly as he moves over your, and you reach up to bury your hands in his soft fur even as he lowers his hips down to meet yours. You gasp in pleasure as the large cat fucks your needy passage eagerly, his barbed member quelling the heat in your loins like you know nothing else could. You pant and moan underneath his sexy form, his musk filling your mind as he takes you like a good little mate, and the thought of being a true and proper mate to this magnificent feline instead of just a traveling companion makes you moan in glee as you clutch his body tighter. Soon you can feel his seed filling your body, and making you cry out in orgasm as the burning need to be bred is quenched by the feel of his seed filling your fertile passage up to the brim. You groan as he pulls himself out of you, padding a few steps away before twisting around to lick his cock clean, you sigh as you recover from your powerful orgasm, half wishing he would come put that tongue to use on you as well.[impregchance]";
				now libido of player is 0;
			if T is 2:
				say "     Your body growing hotter just from the mere presence of the large cat that is your companion, you find yourself shooting the beast increasingly curious looks as he walks along beside you. You moan as your pussy clenches with increasing need, and the large cat pauses and sniffs the air, before turning a knowing look on you. As Klauz turns and begins to stalk towards you intently, you realize that he must smell just how needy and heat filled you are, and is looking to take advantage of it. You try to step back, only to realize that your body doesn't want to move away from the handsome cat as he stalks forward and buries his head in your crotch, making you moan and pant like an animal as his soft tongue licks over your needy lips teasingly.";
				say "     Unable to deny just how much you need this, need him, you give in to your urges, as you slowly drop your gear, and bury your hands in the soft fur of his head as he continues to lick you teasingly. You moan as you shudder in pleasure from the touch of his rough raspy tongue pushing into your body, as he lavishes your damp pussy with attention, your hands clenching in his fur eagerly. Soon you are gasping as your pussy floods with your juices, your orgasm washing over you even as the handsome felinoid continues to lap up every drop it can reach. You pant as the large beast steps back, collapsing to the ground as your shaky legs try to slip out from under you, looking up from here you can see your wonderful companion has twisted himself around and is now licking at his own erect cock. Blinking you realize the beast that gave you such a wonderful orgasm still hasn't had one of its own, your lust fogged mind protesting at the wrongness of leaving your feline companion and now mate to suffer alone.";
				say "     Unwilling to leave the magnificent cat to fend for itself, you quickly crawl over to Klauz, your eyes fixed on his barbed shaft as it raises its head to look at you curiously, you find your mouth watering eagerly as you lower your head down to his spined penis. His strong musk fills your nose and makes your pussy dampen again, and you find yourself eagerly running your tongue over his feline member, the spines feeling amazing as his salty and sweet taste fills your mouth. The beast rumbles in approval above you, and you shudder in pleasure at being such a good mate for your companion, licking his rod several more times, before taking it into your mouth and sucking eagerly. The already aroused feline doesn't last long under your assault, yowling above you as his wonderful flavor explodes in your mouth, his delicious seed filling your mouth up even faster than you can swallow it down. Groaning the big cat over you collapses to his side as you lift your head off his spent cock, the incredibly erotic sight of the large cat you just sucked lying there fills your eyes as you lick your lips, the taste of his wonderful seed still filling your mouth even as you begin to try to gather your wits about you.";
				now libido of player is 0;
			If T is 3:
				say "     You can feel your body growing hotter, your need burning through your body like an animal in heat, as your thoughts turn increasingly towards fucking and being fucked. Your mind fills with the images of all kinds of strange beasts you have seen throughout the city, but increasingly seems to return to the handsome form of Klauz. Glancing at the sleek golden feline stalking nearby, you find yourself daydreaming about being more than just companions, the thought of you underneath the powerful male beast as he claims you as his lusty pet filling your mind with eager desire. Glancing around, you realize that no one will ever know about it if you just give in to your urges, and looking back at the handsome felinoid you wonder why you would even want to resist the wonderful pleasure such a beast can give.";
				say "     Seeing you have the beast's attention, you grin as you discard your gear, rubbing your naked [skin of player] skin as you slowly lower yourself down to all fours, your ass sticking up in the air teasingly as you wave it at the large feline. You moan as your companions nose sniffs your heat filled pussy, his raspy tongue tracing across your sensitive lips as he tastes your body, causing you to shudder. The golden furred beast wastes no more time in accepting your wanton invitation, his soft chest fur rubbing over your back as he settles himself onto your body, his hips thrusting forward eagerly as he sheathes his barbed cock in your body. Your eyes roll back in pleasure as you brace yourself against the ground, your world narrowing down to the amazing feel of his spined cock teasing your passage with every powerful bestial thrust of his hips. Soon you can feel your body shuddering underneath the masterful feline in pleasure, your orgasm just barely out of reach as he takes you like an animal. Finally you gasp as you feel his strong jaws teasing the back of your neck, his seed flooding into you and triggering your own mind blowing orgasm, the pleasure so intense you black out for a minute. Eventually you wake up to find your companion curled up against you, rumbling soft encouragement as you stretch your well fucked body out and prepare to continue your search through the city.[impregchance]";
				now libido of player is 0;
			If T is 4:
				say "     You groan as you rub your body absently, your body seeming to be even more heat filled and needy as time goes on, and while you realize that the teasing musky male scent of Klauz is probably affecting you, you aren't sure what you can do about it. Glancing over to where the recovering male feline is resting for a minute, you spot his erect barbed cock peeking out of his leonine sheath eagerly, the sight making your mouth water with desire. You realize from the way he shoots you the occasional lust-filled glance, that you obviously aren't the only one suffering this kind of burning need right now, your fertile female scent probably working on him as much as his male scent is arousing you.";
				say "     You grin as an amazingly simple solution to the dual problems presents itself to your lust fogged mind, and you waste no time putting your new idea in motion as you toss your equipment aside and move over to your companion eagerly. He watches you curiously with lust-filled eyes as you move along his flank, moving beside him as you lower your head down so you can see underneath his powerful hind legs. His increased musk making your body burn even hotter with need, as you reach underneath him to stroke his feline member eagerly, the soft barbs teasing your hand pleasantly as he lets out a rumbling purr at your touch. Loving the feel of his cock in your hand, you realize that just touching it isn't enough, you need that powerful rod inside you, you find yourself panting needily as you stroke him gently several more times, the aroused feeling thrusting his hips forward against your hand in pleasure. Feeling your need burning brightly, you lean back so the large cat can smell your eager pussy, as you rub your hands over his soft fur teasingly. Your wanton actions speaking to the large felinoid's instincts, the beast wastes no time pinning you to the ground, making you moan as his soft fur covers your body, even as his cock spears into your heat filled loins. You feel a smile crossing your face as he thrusts into you eagerly, feeling the two of you become even closer as you become something more than just companions as his seed fills your eager body. Lying there underneath the powerful beast, you realize that saving him was probably the best decision you ever made.[impregchance]";
				now libido of player is 0;
			if T is 5:
				say "     Your body burning with heat, you can barely walk without panting, your swollen lips rubbing together needily with every step you take and causing you to groan in pleasure, your body feeling empty without something inside it. You find yourself pausing to rub yourself several times, nearly bent over as you wonder just what you can do to quell the burning need inside you. After the third or so time you stop to try to relieve some of your need, you gasp as you are knocked roughly to the ground, looking up you see the large male cat you rescued, his paws settling onto your shoulders as he tries to get a good grip on you.";
				say "     You squirm as you try futilely to throw him off, his masculine musk filling your head even as you wonder what has gotten into the handsome feline beast. Your struggles stop abruptly as you feel his thick spined cock rubbing up against your needy lips, your mind nearly going blank with pleasure as his rod rubs up against your body. You pant as you realize the large feline beast has his own ideas about what to do with your body to quell the burning need in your loins, and you realize as you pant eagerly underneath him as his tip probes your female entrance, that right now the idea of his feline cock filling you up is sounding amazingly good to you as well! Sensing your resistance to his advances fade, the beast above you rumbles approvingly as he settles himself properly on top of you, wasting no more time on foreplay as he pushes himself into your eager body. His spines massage your insides even as he thrusts eagerly into you again and again, your body heating up as you begin to moan and yowl underneath him like an animal, feeling more and more like a proper mate for this powerful cat with every thrust of his rod into your body.";
				say "     You cry out as the release that your body has been needing for hours is finally let loose, and you yowl in need as the male feline spills his seed into your body, completely happy to be nothing more than the fuck toy of such a massive beast, your mind filling with wonderful images of serving him like a pet, becoming a lusty little felinoid as well for him to fill full of that wonderful seed again and again. Overwhelmed with pleasure, you collapse underneath him, more than willing to let the large beast finish filling you with his fertile seed, your mind scattering to the winds as he breeds you properly. Eventually he pulls out, and you slowly begin to recover from the amazingly pleasurable ordeal, blushing as you realize just how wantonly you behaved underneath the large cat. Standing up to gather your equipment, you realize that at least the burning need in your loins has been quenched completely, replaced with the pleasant soreness of a well fucked female, and the extremely pleasant sensation of his seed still swirling around inside your body.[impregchance]";
				now libido of player is 0;
			increase HP of Felinoid companion by 1;
		else:
			say "[one of]The strong masculine scent from Klauz wafts over you strongly, and you can feel your body starting to change![or]The large Felinoid companion comes up to you and nuzzles you with its soft feline nose, and you find yourself changing.[or]Your Feline companion bumps you with his head, and his silly action brings a smile to your face as you reach down and pet him.[or]Your Felinoid companion rubs up against you, his strong musky smell filling your mind with images of lusty felinoid sex.[or]Your felinoid friend rubs himself up against you companionably, letting out a soft rumbling purr that you find oddly comforting.[or]As you pause to take a breath for a minute, you can feel a rasping tongue lick your hands from behind, jumping you turn around to stare at Klauz, just in time for him to hop upwards and lick you on the face, sputtering slightly, you can't help but grin at the beast's silly antics.[or]The strong scent of musk from your Felinoid companion washes over you, and you can't help but moan as the thought of being fucked by the large cat runs through your head[or]Your body feels rather warm, and looking around you can see your large felinoid companion nearby, his golden fur and strong sleek lines catching your eye, as your mind fills with images of the big strong beast mounting you and making you his mate.[or]You smile as your feline companion stalks around you looking for dangers to chase away, feeling somewhat happy to have such a powerful mate.[or]Your companion decides to play, batting at you teasingly with his large paws as he bounces around you, making you smile and wish you could be just as carefree as the cat like beast obviously is.[or]You find yourself feeling strangely horny for some reason, and looking around see that your feline companion is watching you intently.[at random]";
			increase libido of player by 12;
			if libido of player > 100, now libido of player is 100;
		infect "Felinoid";
		now lastfuck of felinoid companion is turns;
	else:
		say "[one of]The strong masculine scent from Klauz wafts over you strongly, and you can feel your body starting to change![or]The large Felinoid companion comes up to you and nuzzles you with its soft feline nose, and you find yourself changing.[or]Klauz bumps you with his head, and his silly action brings a smile to your face as you reach down and pet him.[or]Your Felinoid companion rubs up against you, his strong musky smell filling your mind with images of lusty felinoid sex.[or]Your felinoid friend rubs himself up against you companionably, letting out a soft rumbling purr that you find oddly comforting.[or]As you pause to take a breath for a minute, you can feel a rasping tongue lick your hands from behind, jumping you turn around to stare at your Felinoid companion, just in time for it to hop upwards and lick you on the face, sputtering slightly, you can't help but grin at the beast's silly antics.[or]You smile as your feline companion stalks around you looking for dangers to chase away, feeling somewhat happy to have such a powerful protector.[or]Your companion decides to play, batting at you teasingly with his large paws as he bounces around you, making you smile and wish you could be just as carefree as the cat like beast obviously is.[or]You find yourself feeling strangely horny for some reason, and looking around see that your feline companion is watching you intently.[at random]";
		infect "Felinoid";
		increase libido of player by 8;
		if libido of player > 100, now libido of player is 100;
		now lastfuck of felinoid companion is turns;


to say felinoidpet_puref:
	say "     Klauz gives a delighted mrowl and rears up to knock you forward onto all fours, then circles hungrily. [run paragraph on]";
	if breast size of player > 0 and breasts of player > 0:
		say "     The feline nuzzles up underneath you, burying snout against your soft [breast size desc of player] breasts, nuzzling slowly from one to the next before he traps a firm teat in his mouth and begins to nurse hungrily at you. Loud slurping sounds fill the area as he bites lightly and pulls at your firm teat, coaxing all the milk that you can produce.";
		now lastmilking is turns;
	else:
		say "     He moves around to your front and presses lips to lips, kissing you firmly as rough tongue extends to dance against your own. He gazes into your eyes with unhidden lust and something that could be easily confused for love as he holds you captive in the exchange.";
	say "     He draws away, licking his lips, and moves swiftly behind you, but you are faster. Soft fingers grab at his erect shaft and give it a tug, holding him in place for a moment. He looks at you questioningly, but you continue teasing sensitive flesh with the fur of your fingers, making his hips rock out against you. The sensitive flesh of your fingertips can feel the faint feline barbs near the tip of his alien member, and your cunt spasms with desire for it.";
	say "     Willing to wait no longer, he gently extracts himself from you and circles to grab at your hips, biting at your back and sides a moment as he shuffles into position. His feline cock nudges against your [cunt size desc of player] pussy before easing into its heat. The barbs pull lightly as he withdraws, sending sparks of fire through your form. The rocking begins in earnest, driving deep into your fertile form and slamming his cock against your cervix. You aren't sure how, but it seems he's just large enough, filling you so perfectly with every motion.";
	say "     Pawhands close about your chest, rubbing across and below to your belly, petting and stroking in time with his manic shoves into your prone body. His teeth nip at your ears with every twitch they make when his rough tongue isn't teasing the sensitive flaps. Something wraps around your leg, squeezing at it in sharp tight constrictions in the same, rapid, tempo of his love making. You can barely concentrate enough to look back and see his tail lashed about you, squeezing and pulling as he goes.";
	say "     Your partner's climax strikes before you are even fully aware of it, splashing hotly across your insides. The first two squirts are normal, almost every day, before the true flood comes. Your womb bloats as the felinoid roars with satisfaction, dumping his fertile offering into your waiting factory, eager to fill you with a litter of his kittens. The sensation of stretching and filling sets your tunnel to fluttering powerfully, milking that shaft for every little bit of seed, even as it begins to back wash, splashing out across his balls and both of your thighs, making a mess all around the area.";
	say "     His orgasm fading, he gives a firm nip and drives your front against the ground before his feet change stance, then he pulls out in a swift, brutal, motion. The barbs catch firmly in your sensitive flesh and all you can feel is dizzying intensity, as if your entire form were made of fire for what feels like forever. As your trembling limbs return to your control, you can see him quietly licking himself clean, satisfied and content again.";
	now libido of player is libido of player / 3;
	say "[impregchance]";
	increase HP of Felinoid companion by 1;


to say felinoidpet_purem:
	if the remainder after dividing lust of felinoid companion by 3 is 1 and anallevel is not 1:
		say "     The large feline licks and laps at your cock, his rough tongue feeling wonderful across your barbed manhood. He lets his tongue trail up and down your [cock size desc of player] erection and over your balls. As he continues, you grow increasingly aroused, leaking precum steadily and losing yourself in the excitement. The scent of felinoid musk hangs heavy in the air, turning you on all the more and clouding your judgment.";
		say "     When he stops licking suddenly, you mewl in disappointment. He pads around behind you and, with a push of his powerful paws, knocks you down onto all fours. You moan as his nose finds its way under your tail and that rough tongue of his slathers across your anus this time. Lost in your lustful haze, you shift to a firmly quadrupedal stance and mewl again, this time with need.";
		say "     The big feline moves atop you, brushing his stiff and leaking penis between your cheeks. Taking the nape of your neck in his teeth, he humps a few times before getting lined up and driving that barbed rod of his into your tight back passage. Those stimulating bumps send shivers of pleasure through your feline body and you pant and moan as he fucks you hard and fast, taking you as he would a female. Your cock throbs between your legs, dribbling a growing pool of precum onto the ground as you're incredibly turned on by being fucked by the feral cat.";
		say "     Klauz's climax strikes before you are even fully aware of it, splashing hotly against your prostate. Spurt after spurt of feline semen fills you, stuffing your bowels with the virile male's load. Being fucked and stuffed by the powerful feline is soon too much for you and you mrowl loudly as you orgasm, spraying your own feline seed onto the ground. You grind back against him even as you cum, eager to take as much as the powerful male atop you can give.[mimpregchance]";
		say "     When he's done, the big cat quickly dismounts and pushes you over with a paw. Weak and lost in a haze of lust, you flop onto the ground, welcoming the more dominant cat's cock into your mouth so you can suck it clean of the last traces of semen. Only once you're done cleaning him and he's padded off does the musk-fueled lust gradually leave and you come back to your senses enough to get up and continue on.";
		now the libido of player is libido of player / 2;
	else if the remainder after dividing lust of felinoid companion by 3 is 2:
		if breast size of player > 0 and breasts of player > 0:
			say "     The feline rears up and nuzzles at your chest, burying snout against your soft [breast size desc of player] breasts, nuzzling slowly from one to the next before he traps a firm teat in his mouth and begins to nurse hungrily at you. Loud slurping sounds fill the area as he bites lightly and pulls at your firm teat, coaxing all the milk that you can produce.";
			now lastmilking is turns;
		say "     He pushes you back to a seated position with strong nuzzlings against your groin. He never leaves your crotch. Rough tongue lashes across your thighs, down across your taint and up across your [short ball size] balls before returning to that [cock size desc of player] feline cock of yours. His tongue curls around it at the base and runs slowly up towards the tip, purrs sending soft bits of pleasure through the delighted flesh.";
		say "     You reach and run your feline claws through his head and across the back of his ears, encouraging him as he works deeper against you.[if cock length of player > 6] Your shaft penetrates straight through his muzzle, being deep throated down his flexing throat and subjected to the delightful sensations of a purry mouth pussy for your aching member.[end if]";
		say "     You can hold back no longer and grab his head, squeezing at his ears as you begin to fill him with your cum. Each twitch is responded to in kind in him, wriggling in pleasure as he suckles up the treat.[if cock width of player > 12] Your massive balls unload so much seed that he seems to have trouble getting it all down. His belly swells with it and he mewls around the shaft in his mouth, pushing at your balls with a paw as you flex and fire into the captive feline.[end if]";
		say "     When your climax tapers off, he carefully extracts himself from your shaft, licking it clean as he goes. With a last, fond, nuzzle at you, he sits and begins to preen himself. [if cocks of player > 1]This is all the more needed with the seed your extra male meat produced. Streaks of grey fluid against his pelt, being cleaned and swallowed with motions of his cat tongue. [end if]He is soon cleaned and ready to continue, leaving you to straighten yourself up.";
		now the libido of player is libido of player / 2;
	else:
		say "     After a few more cursory licks, the felinoid moves to show off his own pulsing erection and hefty balls. Knowing he wants you to return the favour, mewling as you crouch down. Your soft furry fingers tease across the feline member from base to tip before trailing back down to heft his large nuts. He purrs with pleasure at the examination, but clearly wants more, pawing at your side lightly with a soft paw.";
		say "     Thinking of no better way to satisfy your companion, you get lower and flick your tongue across the tip, tasting the first bits of prefluid that he is already leaking freely in his rut. He loses patience with your slowness and coils on himself, grabbing your head to guide you down onto the member fully, pressing that barbed feline cock across your rough tongue with a loud roar of dominance.";
		say "     Tail thrashing, he starts to fuck your face in earnest. His paws rub at your cheeks, but also keep a firm grip, giving no room to consider escape, not while he's rutting. His crotch fills your vision as he bumps up into it with that musky groin, sliding his cock back and forth across your wet tongue in increasingly desperate motions. Growing ever more excited, you slip a hand to your own crotch and pump at your feline erection.";
		say "     Salty cum sprays across your mouth, making you almost gag for a moment before you get to swallowing it as best as you can, but there's just so much of it. It overflows, dripping across your chin and chest as you labor to get as much of it down as you can. Even as you're struggling to get as much of it as you can, you pump at your cock hard and cum, splattering your chest with your own load. The cat draws his now sated shaft from you and helpfully laps his tongue across your lips, then nuzzles against your cheek. At least he's happy.";
		now the libido of player is ( 4 * libido of player ) / 5;
	increase lust of felinoid companion by 1;
	increase HP of Felinoid companion by 1;


to say felinoidpet_puren:
	say "     The feline wriggles his hips and mewls as you crouch down. Your soft furry fingers tease across the feline member from base to tip before trailing back down to heft his large nuts. He purrs with pleasure at the examination, but clearly wants more, pawing at your side lightly with a soft paw.";
	say "     Thinking of no better way to satisfy your companion, you get lower and flick your tongue across the tip, tasting the first bits of prefluid that he is already leaking freely in his rut. He loses patience with your slowness and coils on himself, grabbing your head to guide you down onto the member fully, pressing that barbed feline cock across your rough tongue with a loud roar of dominance.";
	say "     Tail thrashing, he starts to fuck your face in earnest. His paws rub at your cheeks, but also keep a firm grip, giving no room to consider escape, not while he's rutting. His crotch fills your vision as he bumps up into it with that musky groin, sliding his cock back and forth across your wet tongue in increasingly desperate motions.";
	say "     Salty cum sprays across your mouth, making you almost gag for a moment before you get to swallowing it as best as you can, but there's just so much of it. It overflows, dripping across your chin and chest as you labor to get as much of it down as you can. The cat draws his now sated shaft from you and helpfully laps his tongue across your lips, then nuzzles against your cheek. At least he's happy.";
	now the libido of player is ( 4 * libido of player ) / 5;
	increase HP of Felinoid companion by 1;


Section 4 - Endings

when play ends:
	if Felinoid companion is tamed:
		if bodyname of player is "Felinoid":
			if humanity of player < 10:
				if cunts of player > 0:
					say "     Finally giving in to your needs as Klauz must have known you would, you crouch down submissively before him finally, realizing what a good and patient mate he has been. You yowl happily as he covers your body, his teeth gripping your scruff as he finally takes you properly, his cock sinking into you as he makes you his pet instead of playing at being yours. Your new felinoid muzzle drops open in a happy grin as you can feel each thrust of his wonderful cock inside you chipping away at what remains of your humanity, your memories of your old life as a human completely useless to you now. As the wonderful male cat mates you properly, you realize now that this is why you saved him, and stayed with him so much, you needed a nice strong mate to take you and make you his, to fill your heat filled belly up with his handsome feline cubs while you serve his every need. You roar in pleasure as you feel him shoot his fertile sperm into you, locking you into your new form permanently, and sealing his claim on your body. You pant happily as your new mate licks your own new coat of soft golden fur tenderly, and you moan as after a short rest, he begins to mount you again. Roaring in pleasure, you vow to be a good pet for your handsome and caring mate, eagerly moving underneath him, as he works hard to plant his seed in you again, knowing that soon you will be expanding your little family with some of his handsome cubs to care for, the very thought of the handsome little felines growing in your belly making you roar again in pleasure, looking forward to a long and very full life, and a very full belly.";
				else:
					say "     Finally giving in to your needs, you roar in frustration as you prowl the streets, Klauz keeping you company as you finally give in and join him in the hunt for suitable mates. Even though he is fully healed soon, the two of you stay together as you hunt, your earlier companionship setting the tone for your new relationship, as you stalk the city streets. Most of the appropriate mates have already been taken by others though, leaving the two of you frustrated until the military begin to move in, at which point your cunning and your ability comes into play. The two of you easily isolate one of the soldiers, and under the strength of your combined musk she is soon panting eagerly on all fours, and tells you happily about their plans before you finish changing her and mounting her properly. Leaving your new female well seeded by the both of you, you take advantage of your new knowledge to slip into one of their vehicles at night, the two of you hiding inside until it loads up fully in the morning. Your feline grin as the people in the APC begin to moan and change matches that of your hunting companions, as you stalk out of hiding while the needy soldiers begin to strip. By the time the APC reaches the city and the driver comes back to open the doors, every male soldier is now a female cat, with at least one load of seed from you or your friend in their bellies. The driver's panicked look before he too succumbs to the scent of sex and feline musk, as your new mates hold him down while you rub your bodies over him, is priceless. Soon you have a lovely large group of soon to be pregnant felinoids all your own, and are definitely making plans for returning the APC to the military - properly scent marked, of course. You wouldn't want the next group of soldiers to arrive in the city unprepared to be mated, now would you?[line break]";
				if HP of Sven > 7 and HP of Sven < 29:			[fucktoy Sven]
					if hermaphrodite is not banned:
						say "     You make sure to bring your snowmeow pet along with you as you head off into the city with Klauz. After an evening of lustful attention from you both, he becomes a snow leopard herm and succumbs to his infection, becoming a lustful feline thirsty for [if cocks of player is 0]your companion's cock[else]you and your companion's cocks[end if]. She is bred long and repeatedly until she is filled with submissive snowmeow kittens. These grow to become subservient, lustful fucktoys to the dominant felinoids that you create and breed.";
					else if girl is not banned:
						say "     You make sure to bring your snowmeow pet along with you as you head off into the city with your felinoid companion. After an evening of lustful attention from you both, he becomes a snow leopard female and succumbs to his infection, becoming a lustful feline thirsty for [if cocks of player is 0]your companion's cock[else]you and your companion's cocks[end if]. She is bred long and repeatedly until she is filled with submissive snowmeow kittens. These grow to become subservient, lustful fucktoys to the dominant felinoids that you create and breed.";
					else:
						say "     You make sure to bring your snowmeow pet along with you as you head off into the city with your felinoid companion. After an evening of lustful attention from you both, he succumbs to his infection, becoming a lustful feline thirsty for [if cocks of player is 0]your companion's cock[else]you and your companion's cocks[end if]. He is mounted and fucked repeatedly, used to slake your lusts between capturing and transforming others into breeding sluts. You occasionally allow him to mount and breed a female, siring submissive snowmeow kittens. These grow to become subservient, lustful fucktoys to the dominant felinoids that you create and breed.";
[				else if HP of Sven >= 30 and HP of Sven < 50:
					say "***confident Sven succumb ending add-on.";		]
			else:
				if HP of Fang is 3 or HP of Fang is 4:	[felinoid player w/companion and Fang]
					if cunts of player > 0:
						say "     Rescued from the city with your mind mostly intact, the soldiers are worried about your changed form at first, but you eventually manage to talk them down. They seem even more worried about Klauz, but after all you went through to save him before, you aren't about to let them hurt your handsome male friend now. The soldiers seem somewhat bemused at your verbal tongue lashing, before escorting the two of you back to the military camp for the few survivors.";
						say "     At the military's camp, Fang and Klauz are given a quick examination, but you all manage to avoid serious scrutiny. Several of the scientists try to check you to make sure none of you are infectious, but you manage to keep them from looking too closely at any of you, the doctors finding both you and your mate to be very persuasive once they have a good whiff of your musk, accepting your word that they're loyal guardians and nothing more. Released from the camp as soon as possible back into the outside world, you sigh as you try to figure out what to do now, your new feline form not terribly suited to modern life.";
						say "     Deciding to try rural life instead, you move to a smaller town, where you and your felinoid mate have some room to stretch your legs and run a bit. Your neighbors are somewhat wary of the strange new arrivals, but they manage to accept you soon enough. The male feline's presence makes it hard for you to focus sometimes, and more often than not you find yourself succumbing to the handsome cat's charms, yowling in pleasure eagerly as he mounts you and breeds you.";
						say "     Fang is made to accept his place beneath the powerful felinoid as well after a short struggle. With you as his felinoid mate, the big cat is clearly the victor between the two and he celebrates by forcing himself onto the defeated wolf and fucking him as well";
						if hermaphrodite is not banned:
							say ". As you watch, Fang gains a wet, bitch pussy to go along with his cock and balls and is then bred by the victorious felinoid. The felinoid trains the wolf well, breeding cubs in both your bellies. Fang may still be your alpha wolf, but Klauz owns you both now.";
						else:
							say ". As you watch, Fang is fucked repeatedly until he's made submissive to the stronger cat. The felinoid trains the wolf well, always making sure the wolf knows his place beneath him. Fang may still be your alpha wolf, but the felinoid owns you both now.";
						say "     Eventually, you can see several members of the town beginning to grow curious about the two of you, especially when you wander around town with your mate's musk on you. After a while, you find yourself inviting several of the more curious back to your house, where they can learn more about the two of you. Of course, trapped in the room coated in your mate's scent, they are soon learning about what being a felinoid is like on their own four paws. You find yourself grinning as you send some of the newly enthusiastic felinoids to let their friends know they should come visit you as well, as you realize what an opportunity you have to make this town a nice safe haven for you and your mate. Before long, every family in town has at least one felinoid as part of their household, and as you feel your belly growing large with your mate's cubs, you realize you finally have managed to make yourself a nice safe town to raise them up in. You knew you would just come to love small town life.";
					else:
						say "     Rescued from the city, the soldiers are leery of you and your companion's changed forms, but you manage to talk them out of leaving you in the city. The fact that you can still talk seeming to calm them down immensely as they bring you back to the camp to be sorted out with the few other survivors. Overhearing some of the people talk about the tests they plan on running on the two of you, you decide to just slip out together instead, your friend and your alpha pouncing and changing some soldiers to take your places in the holding area, while the two of you slip out and escape to freedom.";
						say "     Once back out in the regular world, you realize your forms don't make surviving easy, making it hard to hold most any job since it is hard for you to manipulate things carefully with your leonine form. Fortunately for you both, your scent and your handsome looks are more than enough to enchant most women, and many men as well for the short time they remain male anyways, it makes them more than happy enough to lend you a place to stay for a night, or even the use of their bodies for the night as well.";
						say "     During one of these stops, Fang is made to accept his place beneath the powerful felinoid as well after a short struggle. With you as his felinoid mate, the big cat is clearly the victor between the two and he celebrates by forcing himself onto the defeated wolf and fucking him as well";
						if hermaphrodite is not banned:
							say ". As you watch, Fang gains a wet, bitch pussy to go along with his cock and balls and is then bred by the victorious felinoid. Klauz trains the wolf well, breeding cubs in both your bellies. Fang may still be your alpha wolf, but the felinoid owns you both now.";
						else:
							say ". As you watch, Fang is fucked repeatedly until he's made submissive to the stronger cat. Klauz trains the wolf well, always making sure the wolf knows his place beneath him. Fang may still be your alpha wolf, but the felinoid owns you both now.";
						say "     You begin to enjoy yourself more and more as you travel from place to place, your new form seeming so much better to you than your old one. And while you never lose yourself to your instincts fully like your companion, you certainly enjoy your nights with the many human women who crouch underneath you. The three of you travel together from place to place and leave a string of well-fucked human and freshly changed felinoid women behind you, their bellies sure to grow nice and round with proof of your virility even as you move on to the next town[if hermaphrodite is not banned]Fang's cubs, once mature enough, are also left behind for others to find and be fucked by[end if].";
						say "     You find you enjoy the challenge of constantly staying ahead of any of the authorities who would try to stop you or contain the spread of what they call infection, your predatory instincts rising to the challenge easily. Your lupine companion proves to be an excellent tracker, helping you to sniff out and avoid any attempts to stop you and lead you to few prospective fucktoys. As you continue your traveling life through a changing country, you feel a feral grin stretch your muzzle as you realize you managed to find the two of you the best happy ending ever, the kind that keeps on going you think as you eagerly stalk forward to find your next conquest.";
				if cunts of player > 0:
					say "     Rescued from the city with your mind mostly intact, the soldiers are worried about your changed form at first, but you eventually manage to talk them down. They seem even more worried about Klauz, but after all you went through to save him before, you aren't about to let them hurt your handsome male friend now. The soldiers seem somewhat bemused at your verbal tongue lashing, before escorting the two of you back to the military camp for the few survivors. Several of the scientists try to check you to make sure neither of you are infectious, but you manage to keep them from looking too closely at either of you, the doctors finding both you and your mate to be very persuasive once they have a good whiff of your musk. Released from the camp as soon as possible back into the outside world, you sigh as you try to figure out what to do now, your new feline form not terribly suited to modern life. Deciding to try rural life instead, the two of you move to a smaller town, where you can both have some room to stretch your legs and run a bit, your neighbors somewhat wary of the strange new arrivals, but they manage to accept you soon enough. The male feline's presence makes it hard for you to focus sometimes, and more often than not you find yourself succumbing to the handsome cat's charms, yowling in pleasure eagerly as he mounts you. Eventually you can see several members of the town beginning to grow curious about the two of you, especially when you wander around town with your mates musk on you. After a while you find yourself inviting several of the more curious back to your house, where they can learn more about the two of you, of course trapped in the room coated in your mate's scent, they are soon learning about what being a felinoid is like on their own four paws. You find yourself grinning as you send some of the newly enthusiastic felinoids to let their friends know they should come visit you as well, as you realize what an opportunity you have to make this town a nice safe haven for you and your mate. Before long, every family in town soon has at least one felinoid as part of their household, and as you feel your belly growing large with your mate's cubs, you realize you finally have managed to make yourself a nice safe town to raise them up in. You knew you would just come to love small town life...";
				else:
					say "     Rescued from the city, the soldiers are leery of you and your companion's changed forms, but you manage to talk them out of leaving you in the city. The fact that you can still talk seeming to calm them down immensely as they bring you back to the camp to be sorted out with the few other survivors. Overhearing some of the people talk about the tests they plan on running on the two of you, you decide to just slip out together instead, your friend pouncing and changing two soldiers to take your places in the holding area, while the two of you slip out and to freedom. Once back out in the regular world, you realize your forms don't make surviving easy, making it hard to hold most any job since it is hard for you to manipulate things carefully with your leonine form. Fortunately for you both, your scent and your handsome looks are more than enough to enchant most women, and many men as well for the short time they remain male anyways, it makes them more than happy enough to lend you a place to stay for a night, or even the use of their bodies for the night as well. You begin to enjoy yourself more and more as you travel from place to place, your new form seeming so much better to you than your old one, and while you never lose yourself to your instincts fully like your companion, you certainly enjoy your nights with the many human women who crouch underneath you. The two of you travel together from place to place and leave a string of well-fucked human and freshly changed felinoid women behind you, their bellies sure to grow nice and round with proof of your virility even as you move on to the next town. You find you enjoy the challenge of constantly staying ahead of any of the authorities who would try to stop you or contain the spread of what they call infection, your predatory instincts rising to the challenge easily. Eventually they do manage to catch up to you, but by that point your offspring all over the country are already causing more than enough trouble that you are soon able to escape again. As you continue your traveling life through a changing country, you feel a feral grin stretch your muzzle as you realize you managed to find the two of you the best happy ending ever, the kind that keeps on going you think as you eagerly stalk forward to find your next conquest.";
		else:
			if humanity of player < 10:
				say "     When you finally surrender completely to the infection, the felinoid you saved tries to guide you back to the park and his den, but you are having none of it. Growling, you manage to drive the pushy felinoid off, his injuries still hampering him enough that you can drive him away easily, and while you think you spot him hanging around several times over the next few days, he doesn't try approaching you again, letting you settle into your new more feral life without his interference.";
			else if bodyname of player is "Feral Wolf" and ( HP of Fang is 3 or HP of Fang is 4 ):
				[ see Feral Wolf file for this ending ]
				now tempnum is 0;
			else:
				if cunts of player > 0 and ( HP of Fang is 3 or HP of Fang is 4 ):
					[ see Fang file for this ending ]
					now tempnum is 0;
				else if cunts of player > 0:
					say "     Rescued from the city with your mind intact, you manage to convince the military that your companion is not actually a threat. You don't think they would have bought it, if it weren't for how bad things in the city were getting for them, and they couldn't afford to take the time out to check him carefully, especially since he was on his best behavior for you at the time. You feel rather proud of once more having saved your new friend, as you take him with you to set up your new life in the outside world. The attractive felinoid's musk is as strong as ever however, and you find yourself growing increasingly horny the longer you stay around him, and you realize that you need to do something about it unless you want to end up with felinoid cubs in your belly. You take your Felinoid friend to see a nice male vet to see if anything can be done, only to find that after only a minute in the room with your companion's strong male musk, the male vet is on his way to being a female feline. The erotic sight of watching the former male being mounted by your friend turns you on so much you end up orgasming several times just watching. Sneaking your pet back out of the vets, you decide to have some more fun with this, hitting several different bars most nights, and bringing the unsuspecting men who hit on you the most home with you. You enjoy watching as your companions makes the horny men into equally horny women, changing their viewpoint on life drastically, some of them you even let your Felinoid companion change fully into female cats for him to breed. This forces you to move several times before you finally settle down someplace to stay for good, you and your companion settling in happily, while a strange explosion of pregnant female Felinoids hits the area, even as your own belly begins to show signs of his fertility...";
				else:
					say "     Rescued from the city with your mind intact, you manage to convince the military that your companion is not actually a threat. You don't think they would have bought it, if it weren't for how bad things in the city were getting for them, and they couldn't afford to take the time out to check him carefully, especially since he was on his best behavior at the time. Starting up a new life in the outside world, your felinoid companion is a great help to you, as not only is he able to watch your back, his strangely attractive musk is as strong as ever. You enjoy how easily woman flock to you when you wear even a hint of musk, but the most amusing discovery is when you bring a friend home to meet him, and discover your male friend is soon a woman. You have great fun with this ability of your companion, turning several men who annoy you into women instead, you even let your companion finish changing several of them all the way into female felines for his own amusement. Strangely you still seem resistant to the transformative effects of being around him, retaining your manhood even as others lose theirs, as a side benefit, most of the ones your companion change seem strangely submissive as well, making your life much easier. Soon you both have managed to acquire a small harem of women, both felinoid and human to play with as you start your new lives.";

[ HP of Felinoid companion ]
[ # of times had sex       ]

[ lust of Felinoid companion ]
[ # of times had M/M sex     ]

[Connection summary: The Felinoid companion's endings have ties to: Fang and Sven]

Felinoid companion ends here.
