Version 2 of Tiger Cop For FS by Stripes begins here.
[Version 2.1 - added exclusions]

Policeman is a situation.
The sarea of Policeman is "High";
keycollection is a number that varies.
mqstatus is a number that varies.
nsgained is a number that varies.
when play begins:
	add Policeman to badspots of guy;
	add Policeman to badspots of hermaphrodite;
	add Policeman to badspots of furry;

[	0 new				]
[	1 key hunting		]
[	2 did not go		]
[	3 on brothel-hunt		]
[	4 ran away			]
[	5 lost battle		]
[	6 Matron fight		]
[	50 Quest completed!	]
[	98 first fight w/cop	]
[	99 refused quest		]

Instead of resolving a Policeman:
	if mqstatus is 0:
		say "   While traveling through the streets of the ravaged city, you encounter a large tigerman wearing a partial police uniform.  The jacket is left open, unable to close it over his broad, striped chest.  The pants mostly fit, though the bottom of the legs are torn and leave the bottom third of his legs uncovered.  To be able to fit his seven foot frame, he was probably a portly man before his transformation into the tall and muscled orange beast.";
		say "   The cop walks up to you purposefully, pulling out his nightstick and slapping his palm with it a couple of times while sizing you up.  Watching your reactions, he notices that you[apostrophe]re not a mindless monster (yet) and relaxes only slightly.  'Hold it right there.  What are you doin[apostrophe] roamin[apostrophe] the streets during a crisis?  All citizens were advised to stay at home and in shelters before all communications dropped.'";
		if hp of doctor matt > 0 and hp of doctor matt < 100:
			say "   You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving.  You tell him a little bit about what you[apostrophe]ve seen, leaving out some details for the moment.  You wouldn[apostrophe]t want to incriminate yourself.  You even add in the fact that you[apostrophe]re working with a scientist who[apostrophe]s investigating the cause of the outbreak.  The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		otherwise:
			say "   You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving.  You tell him a little bit about what you[apostrophe]ve seen, leaving out some details for the moment.  You wouldn[apostrophe]t want to incriminate yourself.  The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		wait for any key;
		say "   'Well, it sounds like you[apostrophe]ve been able to take care of yourself fairly well to this point.  I[apostrophe]ve been continuin[apostrophe] my patrols, but this city[apostrophe]s pretty much gone to the dogs.  Quite literally with a lot of people.  I been tryin[apostrophe] to keep some order by knockin[apostrophe] a few heads.  Takin[apostrophe] a few liberties, as well,' he adds with a smug smirk.";
		say "   'Now, since you seem like a competent [if cunts of player > 0]gal[otherwise]guy[end if], I think I can see myself bein[apostrophe] able to overlook your...' he taps his nightstick of your backpack, '...supply gatherin[apostrophe].  That is, providin[apostrophe] you[apostrophe]d be willin[apostrophe] to do your civic duty and help a police officer.'";
		wait for any key;
		say "   'There[apostrophe]s this small pack of tigresses that have been showing up in the seedy part of town, peddling themselves and infecting others. [if stiffedpayment is 1] I can smell their scent on you.  It don[apostrophe]t pay to try to stiff a whore on her pay, my friend.  Perhaps you[apostrophe]d like a little payback? [otherwise if tigresswinner is 1] I can smell some of their scent on you.  It seems like you[apostrophe]ve already put one in hir place. [otherwise if tigressfucked is 1] I can smell some of their scent on you.  It seems shi[apostrophe]s had hir way with you.  Perhaps you[apostrophe]d like a little payback? [otherwise if tigressclient is 1] I can smell their scent on you.  It seems you[apostrophe]ve already sampled their services.  You won[apostrophe]t need to worry about [apostrophe]em taking your stuff if you[apostrophe]d be willin[apostrophe] to help me out.[end if]'[line break]";
		say "   'I want to, you know, get [apostrophe]em under control before things get out of hand.  They seem to be based in a cheap motel in that part of town.  I could use a bit more muscle to deal with [apostrophe]em.  If I[apostrophe]m goin[apostrophe] to clear the place out, I need to be able to get in and lay down the law.  If you can get some more keys for their motel, I[apostrophe]ll be able to deal with [apostrophe]em properly.  I want a handful more so I can access all the rooms and get the whole lot of [apostrophe]em.'";
		wait for any key;
		say "   'So, you tell me:  Have I found a concerned citizen who[apostrophe]s willin[apostrophe] to help the police or another punk looter?' he asks, slapping his nightstick in his paw meaningfully. (Y/N - Do you agree to help the tiger cop?)";
		if the player consents:			[quest becomes active]
			now mqstatus is 1;
			say "   'Good, I figured you were right for the job.  Those damn pussies are on the lookout for me now, so I need someone else to help me get the rest of those keys.'  He smacks his broad chest.  'I may be in much better shape now, but they're still faster than me.  I want you to bring me about five more, just to make sure we've got all the rooms.  You get [apostrophe]em and then report back to me, good ole Sgt Marks.  Then I can lay down the law.'";
		otherwise:					[quest refused / tiger cop now enemy]
			now mqstatus is 98;
			say "[line break]   With almost no warning, the officer swings his nightstick hard and fast at your head!";
			let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
			let the dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 16: ";
			if dice plus bonus is greater than 16:
				say "   You narrowly dodge out of the way of the vicious blow.";
			otherwise:
				decrease hp of player by 15;
				say "   You are struck firmly across the jaw by the hard club. (15 dmg)";
			say "[line break]   'And here I thought you were smarter than that, but I guess you[apostrophe]re just another stupid, punk looter?  I guess I[apostrophe]ll have to teach you a hard lesson,' the tiger cop growls, readying to strike again if you get up.";
			wait for any key;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Tiger Cop":
					now monster is y;
					break;
			now area entry is "High";		[activates Tiger Cop as a wandering monster]
			if hp of player < 1:
				say "   That blow was too much for you and you are sent sprawling to the ground, unable to retaliate or flee.";
				say "[losetotigercop]";
			otherwise:
				challenge "Tiger Cop";
			now mqstatus is 99;		[set to refused quest]
			Now Policeman is resolved;
			stop the action;
	otherwise:
		let T be a random number between one and four;
		if T is 1:
			say "   While passing through the city again, you catch sight of Sergeant Marks again.  He[apostrophe]s been standing in the shadows of a building archway and only steps out when you spot him.  He comes over to you, giving you a look-over.  'I[apostrophe]ve been waitin[apostrophe] for you to turn up.  I hope you[apostrophe]ve had some success with your little mission, deputy,' he says with a chuckle.";
		if T is 2:
			say "   While looking through a small courtyard between several of the high-rises, you are met by the tiger cop.  He is coming out of one of the trendy restaurants with a small satchel over his shoulder.  Sgt Marks seems quite pleased with himself until he spots you looking at him.  He growls sternly at you, 'Hey!  How[apostrophe]s you[apostrophe]re [apostrophe]community service work[apostrophe] comin[apostrophe]?'";
		if T is 3:
			say "   As you travel through the city, you hear the pained yip of one of husky females.  Heading over cautiously to investigate, you come face to chest with Sgt Marks as he steps out of an alley.  He is zipping up his fly and you can hear the sound of someone rushing away down the alley.  'Damn bitches,' he grumbles.  'Barely worth the time to fuck, eh?' he comments.  'But forget her.  How is your project comin[apostrophe] along?  You got some good news for me?'";
		if T is 4:
			say "   After some fruitless searching through the city, you run into the tiger policeman again.  Sgt Marks is sitting on the roof of a car.  Somehow, even in this city gone mad, he[apostrophe]s managed to find a bag of store-bought doughnuts.  He[apostrophe]s got his claws sunk into several of the sugar-covered things and is stuffing them down his muzzle.  He looks over at you, wolfs the last of them down without concern for your possible hunger, and then dusts the sugar grains from his paws.  'Did you have any luck yet?  We can[apostrophe]t wait on this forever.'";
	let keycollection be 0;
	repeat with x running through invent of player:
		if x is "motel key", increase keycollection by 1;
	say "   Taking a quiet tally in your head, you have collected [keycollection] key(s).";
	if keycollection > 4:			[5 or more keys to proceed]
		say "   Do you tell him you have found enough keys? (Y/N)";
		if the player consents:
			say "[line break][givekeys]";
			Now Policeman is resolved;
			stop the action;
		otherwise:
			say "   You shake your head and tell him you don[apostrophe]t have the motel keys for him yet.  He growls softly and points off towards the seedier part of town with his nightstick.  'Just you do your work and get them for me.  Hop to it.'";
			stop the action;
	otherwise:
		say "   You shake your head and tell him you don[apostrophe]t have the motel keys for him yet.  He growls softly and points off towards the seedier part of town with his nightstick.  'Just you do your work and get them for me.  Hop to it.'";
		stop the action;


to say givekeys:
	delete motel key;
	delete motel key;
	delete motel key;
	delete motel key;
	delete motel key;
	say "   You dig into your bag, fishing out the motel keys from where they[apostrophe]ve settled at the bottom.  He flips through them, checking the room numbers.  He stuffs them into one of his pockets and smiles to you.  'Good goin[apostrophe], deputy,' he jokes with a firm punch on your shoulder.  'That covers all the rooms now.  They can[apostrophe]t keep us out anymore.'";
	say "   'Us?' you ask the big tiger.  'Yeah, you[apostrophe]ve been right helpful on this and I[apostrophe]m willing to cut you in on a little of the action if you[apostrophe]re up for one last tussle with those pussies.  I want to go in and deal with [apostrophe]em, teach [apostrophe]em who[apostrophe]s boss around here.  And cleaning that place up[apostrophe]d be a lot easier with some extra muscle.  You want to come along on this?  Like I said, I[apostrophe]ll cut you in on this sweet deal.'";
	say "   Do you want to go along with the tiger cop[apostrophe]s plan? (Y/N)";
	say "[line break](NOTE: Consenting can lead to end of game situations.)";
	if the player consents:
		now mqstatus is 3;
		say "[line break][motelquest]";
	otherwise:
		now mqstatus is 2;
		say "   He looks a little disappointed when you turn down his offer and looks you over.  'Well, I guess you[apostrophe]ve done your part and that[apostrophe]s fair enough.  Here, you take this and keep care of yourself out there,' he says, handing you his nightstick and a pair of pepperspray cans.  'You[apostrophe]ve been a big help on this and I appreciate that.  When I get this all taken care of and whip those girls into line, you can stop on by and I[apostrophe]ll show you my appreciation.  I[apostrophe]ll look you up once we[apostrophe]re all clear of the city and I[apostrophe]ll have those girls thank you proper like.'";
		say "      He gives you another punch on the shoulder.  'You just be smarter about your supply huntin[apostrophe] and watch what you say when you get out of this.  Them military guys[apostrophe]ll be nosin[apostrophe] into your gear to look for weapons or stuff that could spread the infection.  With everyone they[apostrophe]ll find, they won[apostrophe]t have much time for twenty questions unless you say somethin[apostrophe] stupid.  You keep quiet and keep it light and you[apostrophe]ll do alright, I think.'";
		say "   He grabs his bag, slings it over his shoulder and takes his leave of you.  You are left with much to think about and some new ideas for the future.";
		say "   Nightstick and two cans of pepperspray obtained.";
		add "nightstick" to invent of player;
		add "pepperspray" to invent of player;
		add "pepperspray" to invent of player;
		increase score by 50;
		increase xp of player by 20;



to say motelquest:
	say "   Having agreed to join him, you follow the tiger cop across the city, traveling to the motel where the tigress hookers are holed up.  On the way, he doesn[apostrophe]t talk much, just telling you that there are quite a few of them, but they[apostrophe]re never all at the motel at once.  There are always some on duty, as it were.  You both with split the rooms, taking care of any tigresses in there and then you two can deal with the others as they return home.";
	say "   The intimidating tiger seems to keep the other creatures at bay and you are not harassed on your journey.  Perhaps word in the neighbourhood has gotten around that he[apostrophe]s trouble.  You remain on edge, but aside from a few creatures fleeing from the sight of him, you are not interrupted.";
	wait for any key;
	say "   Coming up to the motel, you can see that it is an old, run down place.  Well past its prime and never much of a looker, it clearly got by on business by the hour.  Given the madness in the city, you can easily see one of the prostitutes there turning into a tigress and infecting anyone else unfortunate enough to be there.";
	say "   From your vantage point in a nearby vacant building, the cop goes over his plan.  The motel has two stories, with a metal staircase leading up to the second level rooms.  There are just 6 rooms to a floor, so you[apostrophe]ll both be able to get through them quickly.  He tells you that, once you[apostrophe]ve taken out the first sentry in the parking lot, he[apostrophe]ll go through the ground floor rooms and you[apostrophe]ll do the upstairs set.  That way neither of you will be taken down by the other half banding together.";
	wait for any key;
	if "Stealthy" is listed in feats of player:
		say "   You tell him that you can jump the first guard by surprise if he[apostrophe]ll help deal with hir after that.  Using your Stealth abilities, you stick to the shadows and go at the building from behind.  You slink with your back to the wall until you move around behind the tigress.  Pouncing hir, you cover hir muzzle to keep hir quiet while the cop rushes out to help you subdue hir.  Once shi[apostrophe]s out cold, you stash hir around the corner and he motions for you to head up the stairs.";
		say "   Bonus: 20 pts and 10 xp awarded.";
		increase xp of player by 10;
		increase score by 20;
	otherwise:
		say "   You head over to the tigress, acting as if you intend to be a client until you get close to hir, then engage hir in combat.  While you fight the tigress, you can see Sergeant Marks head to the nearest room on the ground floor.";
		say "[line break]";
		now mqfightresult is 3;		[set to fled by default]
		challenge "Tigress Hooker";
		if mqfightresult is 3:
			say "[mqranaway]";
			stop the action;
		otherwise if mqfightresult is 2:
			say "[mqlostfight]";
			stop the action;
		say "   You manage to subdue the tigress on guard and take look at the rooms and a quick glance up the stairs.  No one seems to have noticed the disturbance.  There[apostrophe]s some noise coming from the first ground floor room where your ally has gone in, but it[apostrophe]s hard to tell if it[apostrophe]s fighting or sex.  With two randy tiger creatures in there, you can[apostrophe]t really be sure.";
	wait for any key;
	say "   You dash up the stairs and onto the second floor balcony.  You burst through the first door, weapon raised, but find it empty.  Well, good.  Fewer for you to deal with.  You move to the next and find it empty as well.  Two for two.";
	say "   At the third, your luck runs out.  There is a tigress sprawled across the bed, pumping a large dildo shi[apostrophe]s picked up somewhere while working a paw over hir thick, feline cock.  With hir filled, stuffed pussy facing right at you, you are stopped short in shock.  Seeing you at the door, shi glances from you to the sextoy a few times, then yanks the plastic thing out, eyeing the live toy that[apostrophe]s come to play.";
	say "[line break]";
	now mqfightresult is 3;			[set to fled by default]
	challenge "Tigress Hooker";
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	otherwise if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "   After beating the tigress, you shove hir back down onto the bed, face first.  You grab the glistening dildo and sink it into hir tailhole, making hir mewl in painful pleasure.  You pump it into hir again and again until shi[apostrophe]s a quivering ball of lust pleasuring hirself on the bed once again, laying in a wet puddle of hir own cum.  You[apostrophe]d play with your new kitty toy more, but you remember that you have more rooms to deal with.";
	wait for any key;
	say "   You open the door to the next room, number 10, and find another female tigress on the bed.  This one has what you presume is, or was, a client in bed with hir.  On the bed is a strange mouse-tiger hybrid with a collar around hir neck and a leash tied to the bedpost.  The hybrid has blue fur, but tiger stripes and has rather feline features, though the ears and tail are still mouse-like.  Under the mouse[apostrophe]s balls is a small, wet snatch.  Presumably the feline lured this john back to hir room and has been using him like hir playtoy while making another tigress herm of him.";
	say "   The tigress growls at the interruption, pulling hir cock from the striped mouse[apostrophe]s muzzle, then pushes hir back as shi climbs off the bed to deal with you for interrupting hir playtime.  The hybrid on the bed only mewls and squeaks, reaching out imploringly from the end of hir leash to either of you in lustful need, fingering hirself as you both fight.";
	say "[line break]";
	now mqfightresult is 3;			[set to fled by default]
	challenge "Tigress Hooker";
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	otherwise if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "   Having dealt with the tigress, you shove hir back onto the bed, right on top of the hybrid, then step up to them both.  Grabbing both their heads, you press them to your groin.  They start to lick and kiss at your genitals eagerly, with moans, mewls and squeaks of desire.  You rub their ears and let them tend to you until you finally cum.";
	say "   Your desires met, you shove the tigress down onto the transforming herm, telling hir to get back to work and that you[apostrophe]ll back to play with them both later.  You stay to watch the tigress[apostrophe]s cock sinking into the virgin mouse hole before heading out to finish your work.  You expect there[apostrophe]ll be another tigress among the girls quite shortly.";
	wait for any key;
	say "   You smile as you continue on.  Things have gone quite well.  You can hear the sounds of rutting felines somewhere beneath you.  The cop has been continuing on the other rooms as well.  You[apostrophe]re almost done.  The next room along is empty and chances are looking good that you[apostrophe]ll be able to get back to the previous room and watch the mouse finish changing.  You grow aroused at the thought of watching what remains of the mouse guy turn into another lusty tigress.";
	wait for any key;
	say "   With images of that playing out in your mind, you go in the final room on the upper floor.  In there, your hopes of getting back to room 10 are dashed.  Seated on the large bed in what was once the motel[apostrophe]s luxury suite, is a tigress much larger than any of the others.  This strong looking woman has a good foot more height on any of hir girls.  Shi[apostrophe]s loosely wearing a silk robe over hir ample bosom.  Poking from it is hir large, twelve inch ebon member, which is being attended to by blonde-haired tigress.  Another tigress is spread out on the floor, with one of the large tigress[apostrophe]s feet rubbing hir sticky cock.  Others are sprawled out on the bed or snuggling in the corner.";
	say "   All feline eyes in the room lock on you and narrow into tight slits.  Several of the girls start to get up, but their matron motions for them to wait as shi gets up instead, ready to deal with this upstart intruder, this rude interruption, this new toy.";
	now mqstatus is 6;
	say "[line break]";
	now mqfightresult is 3;			[set to fled by default]
	challenge "Tigress Hooker";		[mqstatus 6 will adjust stats to Matron level]
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	otherwise if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "[mqsuccess]";


to say mqranaway:
	say "   Fleeing the motel, you hear the alarm sound as you get to safety in a nearby building.  From the shadows, you see the mob of tigresses from the top floor spill down to the ground floor, charging in to tackle the cop.  They bear him down by sheer numbers and tear the clothes from him as he screams your name in anger at your betrayal.";
	say "   They tease and grope him as they drag him up the stairs, several of them jerking off onto him in their excitement at a new playmate.  The final door on that floor opens and you see a large, powerful tigress pull him in.  Shi gropes the new breasts that are starting to form on his chest.  You are quite sure there will be another cute tigress turning tricks in the alleys quite soon.";
	decrease score by 25;
	now mqstatus is 4;
	Now Policeman is resolved;
	stop the action;

to say mqlostfight:
	now mqstatus is 5;
	say "   That last blow sends you reeling and, with a call out, you are pounced by a pair of tigresses, who tear off your clothes.  You are dragged in front of the large tigress matron in charge of the felines.  Shi slams you down onto the bed and immediately starts pounding hir large cock into your [if cunts of player > 0]pussy[otherwise]ass[end if].  You try to resist, but are too weakened and end up quickly succumbing to your arousal.  You mind starts to give, feeling the lustful urge to enjoy the life of sex these felines live.";
	wait for any key;
	say "   There is some commotion at the door which you hardly notice before you feel a painful shock run through you as the matron stiffens atop you.  Shi is pushed aside by the cop, who smiles down at you.  You start to get up, drawn between thanking him for the rescue and lusting for your hero.  His pants are open and his stiff rod is slick with cum and juices, drawing your lustful gaze to it.  It seems he[apostrophe]s already shown a few of them who[apostrophe]s in charge.";
	say "   'I knew you[apostrophe]d make a fine distraction for [apostrophe]em,' he chuckles.  He pushes you down overtop of the stunned matron.  Grabbing your ass, he slowly sinks his cock into you, making you moan in satisfaction at being filled once again.  He thrusts several times before withdrawing and pushing his thick meat into the tigress below you, who has started to come of out of hir daze.  Hir hard shaft is pressed between you both as the cop alternates fucking each of you, turning you both into sexy feline whores.";
	say "   Around you, the other tigresses fawn over the tiger cop, their new master, while pleasuring themselves.  When he[apostrophe]s finally cum in the ex-matron, he switches to pounding you exclusively.  While that hard, feline meat pounds into you, you lap his seed from the new tigress hooker and suck hir cock, getting a hot load in both your mouth and your [if cunts of player > 0]pussy[otherwise]ass[end if].";
	say "   Through the night this orgy continues, always welcoming any returning girls in kind.  Your new master fucks the horny felines over and over to assert his dominance while you and the other tigresses play with each other while awaiting your next turn with him.  Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	wait for any key;
	say "[totalTH]";		[systematically change all body parts and names to Tigress Hooker, with gender exclusions for feats.]
	say "[THpostchange]";
	decrease score by 25;
	now humanity of player is 0;
	follow the turnpass rule;
	end the game saying "You become another whore for the corrupt cop.";

to say totalTH:
	if libido of player < 70:
		now libido of player is 70;
	repeat with y running from 1 to number of filled rows in table of random critters:	[puts Tigress Hooker as lead monster...]
		choose row y in table of random critters;
		if name entry is "Tigress Hooker":
			now monster is y;
			break;
	now tailname of player is "Tigress Hooker";
	now facename of player is "Tigress Hooker";
	now skinname of player is "Tigress Hooker";
	now bodyname of player is "Tigress Hooker";
	now cockname of player is "Tigress Hooker";
	now tail of player is tail entry;			[...to make for quicker and accurate copying of TH appearance.]
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if "Male Preferred" is listed in feats of player:
		say "(Male Preferred, locked results)";
		if cocks of player is 0:			[Minimum of TH standard or greater]
			now cocks of player is 1;
		if cock length of player < 9:
			now cock length of player is 9;
		if cock width of player < 5:
			now cock width of player is 5;
	otherwise if "Female Preferred" is listed in feats of player:
		say "(Female Preferred, locked results)";
		if cunts of player is 0:
			now cunts of player is 1;
		if cunt length of player < 12:
			now cunt length of player is 12;
		if cunt width of player < 4:
			now cunt width of player is 4;
		now breasts of player is 2;
		if breast size of player < 4:
			now breast size of player is 4;
	otherwise if "One Way" is listed in feats of player:
		say "(One Way, locked results)";
		if cocks of player is 0:			[Minimum of TH standard or greater]
			now cocks of player is 1;
		if cock length of player < 9:
			now cock length of player is 9;
		if cock width of player < 5:
			now cock width of player is 5;
		if cunts of player is 0:
			now cunts of player is 1;
		if cunt length of player < 12:
			now cunt length of player is 12;
		if cunt length of player < 4:
			now cunt width of player is 4;
		if breasts of player < 2:
			now breasts of player is 2;
		if breast size of player < 4:
			now breast size of player is 4;
	otherwise:
		now cunts of player is 1;
		now cocks of player is 1;
		now breasts of player is 2;
		if cock length of player < 9:			[Minimum of TH standard or greater]
			now cock length of player is 9;
		if cock width of player < 5:
			now cock width of player is 5;
		if cunt length of player < 12:
			now cunt length of player is 12;
		if cunt length of player < 4:
			now cunt width of player is 4;
		if breast size of player < 4:
			now breast size of player is 4;

to say THpostchange:
	if cocks of player > 0 and cunts of player > 0:		[herm]
		say "   As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a sexy tigress herm like the others.  You are a raven-haired beauty with white fur and dark stripes.  Your scent, which started like exotic perfume, fades to the cheap and tawdry one.  Your wet pussy and throbbing cock ache with a need to be played with, but for a price.";
	otherwise if cocks of player > 0:				[male]
		say "   As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a sexy tigress femme.  You are a raven-haired beauty with white fur and dark stripes.  Your scent, which started like exotic perfume, fades to the cheap and tawdry one.  Your wet pussy aches with a need to be played with, but for a price.";
	otherwise:								[female]
		say "      As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a sexy tigress femme.  You are a raven-haired beauty with white fur and dark stripes.  Your scent, which started like exotic perfume, fades to the cheap and tawdry one.  Your wet pussy aches with a need to be played with, but for a price.";
	say "   That is, except for your master. For you are his to play with, to use, sell or share as he sees fit.  The girls are all his now and you all take turns working the streets while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.  You and the others keep each other entertained while he is away, but always eagerly offer yourselves to him when he returns.";

to say mqsuccess:
	now mqstatus is 50;
	say "   With their matron beaten, the tigresses all look at you expectantly.  The fallen tigress, and soon the others as well, start mewling and displaying themselves for the attention of the strong [if cocks of player > 0 and cunts of player > 0]herm[otherwise if cocks of player > 0]male[otherwise]female[end if] who has beaten them.";
	say "   As you eye all the lusty felines before you, the cop comes in, dragging another pair of felines in by the scruff while the others he[apostrophe]s brought wait submissively by the door.  His pants are open and his stiff rod is slick with cum and juices.  It seems he[apostrophe]s already shown a few of them who[apostrophe]s in charge.";
	say "   'Good work, deputy,' he chuckles as he pushes the two tigresses onto some of the others.  He steps up to the deposed matron, intent on having his way with hir.";
	wait for any key;
	say "[MQvictory]";
	say "[BTchangeover]";
	wait for any key;
	say "[BTpostchange]";
	increase score by 100;
	follow the turnpass rule;
	wait for any key;
	end the game saying "You become the muscled guard for the tigresses.";

to say MQvictory:						[Victory]
	if cocks of player > 0 and cunts of player > 0:		[herm]
		say "   You set yourself on a cute pair of tigresses, pounding one while the other fingerfucks your pussy.  You motion for another pair to tend to your breasts with those rough tongues of theirs.  Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck.  While you[apostrophe]re pounding away, you[apostrophe]re treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them.  As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "   When you[apostrophe]re done with your first pair, you push them aside and pull another up from the bed.  You press hir to the wall and pound into hir tight cunt.  Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly.  Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole.  Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one.";
		say "   You push your next tigress to lie back on the bed and you straddle hir cock, taking it deep inside you.  You ride hir hard and fast while stroking both yourself and another feline[apostrophe]s cock to cum all over your current playmate.  Your fast pace makes hir cum with a loud mrowl of delight, filling you with hir hot cum.";
		say "   Through the night this orgy continues, always welcoming any returning girls in kind.  You and Marks fuck them over and over to assert your dominance.  Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	otherwise if cocks of player > 0	:			[male]
		say "   You set yourself on a cute pair of tigresses, pounding one while the other sucks your balls.  Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck.  While you[apostrophe]re pounding away, you[apostrophe]re treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them.  As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "   When you[apostrophe]re done with your first pair, you push them aside and pull another up from the bed.  You press hir to the wall and pound into hir tight cunt.  Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly.  Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole.  Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one.  Shi is made to mate with another tigress on the bed beneath hir, driving your cock into the middle one and forcing hir to thrust into the one below.";
		say "   Through the night this orgy continues, always welcoming any returning girls in kind.  You and Marks fuck them over and over to assert your dominance.  Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	otherwise:						[female]
		say "   You grab one of the females sitting by the bed, pulling hir face between your legs, ordering hir to eat you out.  Shi sets hirself to the taste eagerly, running hir raspy tongue over your wet folds until you soak hir muzzle with your juices.  During your oral stimulation, you order another pair of tigresses to your breast, licking and suckling your nipples and a third to your asshole.  While you[apostrophe]re enjoying those rough tongues on your erogenous zones, you[apostrophe]re treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them.  As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "   When you[apostrophe]re done with your first set of kitties, you push them aside and pull another up from the bed.  You press hir to the wall and start pumping your fingers into hir tight cunt.  Hir inner walls squeeze around you, tugging at them for more.  You get hir good and worked up, then pull out before shi can climax.  You toss hir back onto the bed and straddle hir cock, taking it deep inside you.  You ride hir hard and fast, making hir cum with a loud mrowl of delight.  You[apostrophe]re on to the next in moments, riding that cock while stroking two others onto the tigress you[apostrophe]re riding.";
		say "   Through the night this orgy continues, always welcoming any returning girls in kind.  You and Marks fuck them over and over to assert your dominance.  Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";

to say BTchangeover:
	[systematically change all body parts and names to Big Tiger / Big Tigress, with gender exclusions for feats.]
	if libido of player < 50:
		now libido of player is 50;
	if "Female Preferred" is listed in feats of player:
		[if multi-cock, reduce to 1.  Cannot become less female.]
		if cocks of player > 1:
			now cocks of player is 1;
	otherwise if "One Way" is listed in feats of player:
		[player can't become less female, but can increase in maleness]
		if cocks of player is 0:
			now cocks of player is 1;
		if cock length of player < 12:
			now cock length of player is 12;
		if cock width of player < 6:
			now cock width of player is 6;
	otherwise if "Male Preferred" is listed in feats of player:
		[Player can't diminish in maleness.  Pussy, if any is eliminated]
		if cocks of player is 0:
			now cocks of player is 1;
		if cock length of player < 12:
			now cock length of player is 12;
		if cock width of player < 6:
			now cock width of player is 6;
		if cunts of player > 0:
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now breasts of player is 0;
			now breast size of player is 0;
	otherwise:
		[Player freely becomes pure male]
		now cocks of player is 1;
		if cock length of player < 12:
			now cock length of player is 12;
		if cock width of player < 6:
			now cock width of player is 6;
		if cunts of player > 0:
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now breasts of player is 0;
			now breast size of player is 0;
	if cunts of player > 0:
		now tailname of player is "Big Tigress";
		Now facename of player is "Big Tigress";
		now skinname of player is "Big Tigress";
		now bodyname of player is "Big Tigress";
		now cockname of player is "Big Tigress";
		now tail of player is "Big Tigress tail description";
		now face of player is "Big Tigress face description";
		now skin of player is "Tiger striped feline fur.";
		now body of player is "Big Tigress body description";
		now cock of player is "hefty feline cock";
	otherwise:
		now tailname of player is "Big Tiger";
		Now facename of player is "Big Tiger";
		now skinname of player is "Big Tiger";
		now bodyname of player is "Big Tiger";
		now cockname of player is "Big Tiger";
		now tail of player is "Big tiger tail description";
		now face of player is "Big tiger face description";
		now skin of player is "Tiger striped feline fur.";
		now body of player is "Big tiger body description";
		now cock of player is "hefty feline cock";

to say BTpostchange:						[New BT form]
	if cocks of player > 0 and cunts of player > 0:		[herm]
		say "   As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a strong, powerful tigress herm.  You are muscled, yet voluptuous to keep all these girls in line.  With your strength, you can easily pin down any recalcitrant girl and fuck hir or ride hir into lustful obedience as you see fit.  Your white fur is like the snow and its stripes like the night.  You are much larger now, almost as big as your boss, Marks.";
		say "   The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";
	otherwise if cocks of player > 0:				[male]
		say "   As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a strong, male tiger.  You are muscled and virile to keep all these girls in line.  With your strength, you can easily pin down any recalcitrant girl and fuck hir with your hard cock into lustful obedience.  Your white fur is like the snow and its stripes like the night.  You are much larger now, almost as big as your boss, Marks.";
		say "   The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";
	otherwise:								[female]
		say "   As the orgy continues, your form changes to best suit your new role with these fine girls and your boss.  Your body becomes that of a strong, powerful tigress femme.  You are muscled, yet voluptuous to keep all these girls in line.  With your strength, you can easily pin down any recalcitrant girl and ride hir into lustful obedience.  Your white fur is like the snow and its stripes like the night.  You are much larger now, almost as big as your boss, Marks.";
		say "   The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";


Table of Game Objects (continued)
name	desc	weight	object
"nightstick"	"A policeman's nightstick.  An effective weapon."	4	nightstick

nightstick is an armament. It is part of the player. It has a weapon "[one of]your nightstick[or]your t-baton[or]your side-handle baton[or]your police nightstick[or]your black nightstick[at random]". The weapon damage of nightstick is 6. The weapon type of nightstick is "Melee". It is not temporary.



Section 2 - Monster Desc for Tiger Cop

when play begins:
	add { "Tiger Cop" } to infections of guy;
	add { "Tiger Cop" } to infections of hermaphrodite;
	add { "Tiger Cop" } to infections of furry;

to say losetotigercop:
	if mqstatus is 98:
 		say "   Unable to stand up to the large tiger any longer, he grabs you roughly and shoves you face down onto a mound of rubble. 'You couldn[apostrophe]t just do what you were told.  The world is filled with punks like you these days.  No respect for authority,' he growls as he holds you down with one paw and bares your bottom with the other.";
		if cunts of player is greater than 0:
 			say "   'Well, I[apostrophe]ll teach you a lesson you won[apostrophe]t soon forget,' he says as he slides his nightstick across your cheek before moving it back.  As he grips you tightly, you can feel the cool touch of the nightstick at your pussy, making you shiver.  He teases you with it briefly, getting you wet despite yourself, before sinking it into you.  He pounds you hard and fast with it, making your body shudder until you finally climax.  He sprays his cum across your ass, and then removes the weapon from your aching pussy.  He picks you up roughly and gives you a hard shove.  'Get your dumb ass out of here.  And if I catch you again, you[apostrophe]ll get the real thing.'";
		otherwise:
			say "   'Well, I[apostrophe]ll teach you a lesson you won[apostrophe]t soon forget,' he says as he slides his nightstick across your cheek before moving it back.  As he grips you tightly, you can feel the cool touch of the nightstick at your asshole, making you shiver.  He teases you with it briefly and you try your best to relax it before he sinks it into you, using only a little spit for lubrication.  He pounds you hard and fast with it, making your body shudder until you finally climax.  He sprays his cum across your ass, and then removes the weapon from your aching hole.  He picks you up roughly and gives you a hard shove.  'Get your dumb ass out of here.  And if I catch you again, you[apostrophe]ll get the real thing.'";
		infect "Tigress Hooker";
	otherwise:
		if cunts of player is greater than 0:
 			say "   Unable to stand up to the large tiger any longer, he grabs you and shoves you down onto a nearby car.  Pressing your face to the dirty hood, he growls in your ear.  'I warned you what would happen if I caught you,' he rumbles.  With a strong paw firmly at your neck, the other bares your bottom and moves you into position.";
 			say "   You hear him unzip, then there[apostrophe]s the feel of a large, hard cock against your bottom.  He grinds against you a few times, getting fully hard before sinking it firmly into you.  Your body shudders from the sudden intrusion, but he pays your discomfort no mind, only pounding you hard and fast.";
 			say "   You start to moan and grind against him as the powerful male fucks you, losing yourself in the sex.  'That[apostrophe]s a good slut,' he rumbles.  'Take it, you whore.'  Your pussy squeezes and clenches around his thick, foot-long member until he finally unleashes his hot seed deep within you, painting your pussy with his sperm.";
 			say "   Finished with you, he pulls his cock from you roughly and shoves you on your way.";
		otherwise:
			say "   Unable to stand up to the large tiger any longer, he grabs you and shoves you down to your knees.  He wraps his strong paw around your jaw, holding you there while he growls down at you.  'I warned you what would happen if I caught you,' he rumbles.";
			say "   As you watch, his other paw opens his uniform pants and pull out his large, hard cock.  His shaft is a full foot long and human-like in form, though a deeper red in colour.  Holding your head firmly, he strokes his cock against your face until its fully hard and leaking pre onto you.";
			say "   Soon you are licking at that throbbing shaft, then taking it into your eager mouth.  You lick and suck on it, moaning around the tiger[apostrophe]s large cock.  With a firm hold on you, he fucks your face hard and fast, pushing his throbbing cock down your throat again and again.";
			say "   You start to moan and fondle his ballsac as the powerful male fucks you, losing yourself in the sex.  'That[apostrophe]s a good slut,' he rumbles.  'Take it, you whore.'  Your lips slide over his thick, foot-long member until he finally unleashes his hot seed into your mouth and flooding your throat with his sperm.";
			say "   Finished with you, he pulls his cock from you roughly and shoves you on your way.";
		infect "Tigress Hooker";


To say beattigercop:
	say "   Your last blow sends the cop stumbling back.  He pants to catch his breath, as if readying to make another charge at you.  You prepare to face him, but he pulls out a canister of tear gas from out of his jacket and tosses it to the ground at your feet.  The stinging gas burns your eyes and throat, forcing you to back off, giving him time to escape.";
	if a random chance of 1 in 5 succeeds and nsgained is 0:
		say "   When the gas clears, you see that the tiger had dropped his nightstick at the end of the fight.  You pick it up and add it to your arsenal.";
		say "   Nightstick obtained.";
		add "nightstick" to invent of player;
		now nsgained is 1;
		increase score by 5;
	if a random chance of 1 in 5 succeeds and nsgained is 1:
		say "   When the gas clears, you see that the tiger had dropped a can of pepperspray during the course of the fight.  You pick it up and add it to your arsenal.";
		say "   Pepperspray obtained.";
		add "pepperspray" to invent of player;
		increase score by 5;


to say tigercopdesc:
	if mqstatus is 98:
		say "   The feline policeman growls as he looms over you, ready to take another swing.  The large tigerman appears to be done with talking and is quite intent on fighting.  You dodge back a step and ready your weapon to try and deal with the animalistic cop.  Unlike your other foes, he[apostrophe]s not fallen into being an instinctual creature of lust, so you[apostrophe]re unsure what to expect.";
	otherwise:
		say "   As you travel through the city, you come across the corrupted cop once again.  His open police jacket cannot contain his broad chest and his seven foot height leaves his pants covering only two-thirds of his legs.  He growls at the back of his throat as he moves up quickly and raises his nightstick.  The corrupted cop, enhanced with the strength and agility of a predator, but still sane, is a force to be reckoned with.  [one of]'I was wonderin[apostrophe] if when I[apostrophe]d find you again, punk.  Time for a little police brutality.'[or]'I will teach you to respect my authority here, punk.'[or]'I was just thinkin[apostrophe] I could use a little [apostrophe]stress relief[apostrophe].  Come[apostrophe]re, little toy.'[or]'I am the law here, punk.'[at random]";


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tiger Cop"; [Name of your new Monster]
	now attack entry is "[one of]The feline cop jabs the nightstick into your gut, causing you to double over.  This sets you up for a big knee to the face![or]He cracks the nightstick hard against your upper arm, forcing you to stagger back![or]As the tiger readies another swing of his nightstick, you start to dodge, only to step into a punch from his left paw instead![or]He sends a heavy kick to your chest, sending you to the ground![or]The large tiger grabs at your arm, sinking his sharp claws into it before you manage to pull free![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beattigercop]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[losetotigercop]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[tigercopdesc]";[ Description of the creature when you encounter it.]
  	now face entry is "feminine tiger face and long, flowing hair.  Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your pretty";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "curvaceous and desirable, moving with feline fluidity.  You body moves sensually with every step, drawing in the eye of all who see you.  Your hands are human in shape, but with feline claws, pawpads and fur";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "ivory white fur streaked with tiger stripes that covers your";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "From your rear emerges a long, white tail with black stripes banding the fur.  It flicks behind you with [one of]concealed nervousness[or]excitement[or]lustful playfulness[at random].";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "ebon feline";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts and changes, forming a short muzzle.  Your new nose and muzzle twitch as your whiskers grow in.  Though you cannot see them yet, somehow you know your eyes have turned a pale, icy blue.  Long, luscious black hair flows down, curling lightly to give you a full and sexy locks.  You can feel your ears shifting, poking free as they become cute and tiger-like"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it shifts, growing tighter here, wider there.  Your limbs and body stretch with feline flexibility as they move become those of a sexy tiger.  Delicate, hand-like paws replace your current hands.  They are nimble and you feel the urge to please someone with their touch.  They also hide sheathed claws, waiting to sink into those who displease you.  Your body starts giving off a subtle scent, like that of expensive perfume"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft fur spreads across your body.  It is a white as pure as driven snow and sensually soft and silky to the touch.  Even as you start to examine it, deep black stripes start to spread through it, leaving you covered in tiger-striped fur!"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is " shivers of delight run down your spine.  You can feel it growing, extending out into a long tiger-like tail.  As it does, your bottom shifts and tightens into a cute, firm bubble-butt.  As you rub your hand over it, you feel the urge to find a nice cock to fill it."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes dark, almost black in colour.  Shifting shape, it grows soft, stimulating barbs and a tapered glans.  As you watch, your new shaft is bundled up in a softly-furred sheath which spreads down to cover your ballsac as well.  You look forward to putting this new piece of meat to work"; [ cock change text. format as "Your cock feels funny as (your text)" ]
   now str entry is 14;
   now dex entry is 20;
   now sta entry is 14;                    
   now per entry is 14;
   now int entry is 12;
   now cha entry is 18;
   now sex entry is "Both";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 90;            [ How many HP has the monster got? ]
   now lev entry is 8;            [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
   now wdam entry is 12;            [Amount of Damage monster Does when attacking.]
   now area entry is "nowhere";    [ Location of monster, start nowhere, High if active]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 9;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 5;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2;            [ Number of Breasts infection will give you. ]
   now breast size entry is 4;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex infection will attempt to give you. ]
   now cunt width entry is 4;        [ Width of female sex infection will try and give you ]
   now libido entry is 100;            [ Amount player Libido will go up if defeated ]
   now loot entry is "pepperspray";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


Section 4 - Endings

when play ends:
	[force auto-change of name.  Prevents problems with dirty water, etc... with endings]
	[Does not resolve issues with children/use of descriptive names during the game, but better than nothing]
	if bodyname of player is "Tiger Cop":
		now bodyname of player is "Tigress Hooker";
	if tailname of player is "Tiger Cop":
		now tailname of player is "Tigress Hooker";
	if facename of player is "Tiger Cop":
		now facename of player is "Tigress Hooker";
	if skinname of player is "Tiger Cop":
		now skinname of player is "Tigress Hooker";
	if cockname of player is "Tiger Cop":
		now cockname of player is "Tigress Hooker";
	if mqstatus is 0 or mqstatus is 1:				[no motel quest / incomplete]
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingC]";
			otherwise:
				say "[THendingA]";
	if mqstatus is 99:						[refused the motel key hunt]
		if humanity of player > 9:				[all survivors get a standard add-on]
			say "[THending_refusal][line break]";
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingD]";
			otherwise:
				say "[THendingA]";
	if mqstatus is 2:							[gave keys, did not accompany]
		if humanity of player > 9:				[all survivors get a standard add-on]
			say "[THending_helper][line break]";
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingE]";
			otherwise if tailname of player is "Tigress Hooker" and facename of player is "Tigress Hooker" and skinname of player is "Tigress Hooker":			[visibly fully tigress]
				say "[THendingB]";
			otherwise:
				say "[THendingA]";
	if mqstatus is 4:							[fled from motel hunt]
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingF]";
			otherwise if tailname of player is "Tigress Hooker" and facename of player is "Tigress Hooker" and skinname of player is "Tigress Hooker":			[visibly fully tigress]
				say "[THendingB]";
			otherwise:
				say "[THendingA]";
	if mqstatus is 5:							[failed at motel hunt]
		say "[totalTH]";			[reinforce change in case of random monster fight]
		say "[THBadEnd1]";
	if mqstatus is 50:						[succeeded at motel hunt]
		say "[BTchangeover]";		[reinforce change in case of random monster fight]
		say "[THGoodEnd]";


to say THending_refusal:
	say "   After your rescue, you remain apprehensive for some time.  You find yourself edgy with any police or the rare tiger you see, expecting the tiger cop to show up.  You try to keep a low profile for a while, though you eventually relax.  You have to conclude he was either taken down when he went it alone, or has more to deal with than one defiant looter he met in that fallen city.[line break]";

to say THending_helper:
	say "   Mindful of Sgt Marks[apostrophe]s advise, you have kept your eyes open while searching through the city.  You sew a false bottom to your backpack, stowing several thousand dollars in there.  You also take a few choice pieces of jewelry, but just what you can wear on your person and could be claimed as being your own.  You go for value over volume with them.  You add an advance laptop, finding means to power it long enough to personalize it against a cursory check.";
	say "   Unable to pass of a pack full of cell phones or other items, you are selective in what you claim as being yours before the military comes through.  Even so, you do have to slip a ring here, a few hundred there[if cunts of player > 0], or shake your caboose[end if] to make sure it goes smoothly.  In the end, it certainly doesn[apostrophe]t make you rich, but it definitely helps you get your new life on the go.";
	say "   A few weeks after you[apostrophe]ve cleared from quarantine, you are contacted by Sgt Marks.  He lets you know he[apostrophe]s got the girls [apostrophe]well under control[apostrophe] and invites you to come by in way of thanks for all your help.  He has set them up in a private brothel in a new city, protected by some corrupt contacts.  You don[apostrophe]t ask for details, instead enjoying the company of his girls from time to time, quite discretely.";

to say THendingA:		[standard survive]
	say "   As the military forces come through, rescuing those they can, they come across you and help you escape the degenerating city.  You are very friendly with your rescuers and some soon accept your [apostrophe]gratitude[apostrophe] as soon as you are properly treated and declared non-infectious.  Enjoying your romp with the soldiers, you flop around with a few of them, repaying them with sex.";
	say "   Eventually, you grow tired of them and their regimented lifestyles and, after playing with several until you are bored, you move on.  You spend your life acting as [if cunts of player > 0]mistress [otherwise]illicit partner [end if]or paid lover to several wealthy businessmen over the years.  It is simply a matter of finding those who are single (or unsatisfied with their wife) and who find your altered looks and ravenous appetite for sex appealing.  You seem to have a talent for finding them, spotting the marks as you circulate through society.  You entice gifts, clothes, jewelry, even a home and car from them, giving you a life of leisure and sex.  Just what a horny feline like you needs.";

to say THendingB:		[visibly pure Tigress Hooker survive w/helper or fled]
	say "   Once you[apostrophe]ve cleared the military cordon and are declared non-infectious, you set forth on your plan, inspired to ambition by the tiger you met.  You trade on your small fame as the [apostrophe]bunker survivor[apostrophe] and carefully embellish your tale to leave out a few [apostrophe]minor details[apostrophe] to make you look all the better.  Your lovely, pure [if cunts of player > 0]tigress [otherwise]tiger [end if]form and white fur make you an attractive hero for the media.";
	say "   You ride the crest of fame well, manipulating it like a lover and use your hyper-sexualized body to start dating a famous [if cunts of player > 0]actor[otherwise]actress[end if].  You are with them for a time, then move on to others in Hollywood.  As a socialite, you are seen with actors, actresses and directors.  Your sexy, feline body turns many heads and gets you what you want.  You are showered with gifts and fame, along with lots of sex to sate your body[apostrophe]s needs.  You even get a few small roles in films, which are just another gift to bring you money.";
	say "   Later life brings you a quick marriage and a quicker divorce, and long, drawn out alimony.  You do a little charity work to advance transformee causes, but only appearances and endorsements to keep your fame up.  Certainly your visible presence has made transformees more socially acceptable, though you care little for that, only desiring what it brings to you.  You pass from lover to lover, enjoying them for a time until you tire of them and seek a new one to play with.";

to say THendingC:		[standard succumb]
	say "   Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it.  You don[apostrophe]t really have a fixed location, just wandering the city and soliciting several of those you encounter.  Your path takes you back through one the seedier neighbourhoods one day and you encounter another tigress.  Shi takes you into hir alley and you share a long, sensual romp with hir before shi takes you back to hir home at a cheap motel.  You find it occupied by many other tigress streetwalkers and you[apostrophe]re soon properly inducted into the group.";

to say THendingD:		[succumb after quest refusal]
	say "   Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it.  You don[apostrophe]t really have a fixed location, just wandering the city and soliciting several of those you encounter.  Eventually, you come across a big, male tiger in a uniform.  There is something about him that draws you to him and also urges you to run.  Something... familiar, but it[apostrophe]s so hard to remember.";
	say "   He comes up and grabs a hold of you, pulling you up against his strong chest.  He is rough with you at first, putting you in your place, but soon you[apostrophe]re rewarded with his sexy cock in your muzzle.  He smiles down at you.  'I like you much better like this.  A good, obedient slut.'  You purr happily.";
	say "   When the military rolls in, he uses his influence as a police officer to get you out with him.  He moves to a new city, letting you peddle yourself on his beat, taking most of the proceeds of your instinctual lusts.  He makes contact with a shady transformee stripclub and you join their whores while he comes on as a silent partner, acting as their corrupt police contact while getting his own cut.  You are happy to be so useful to your master and love your new duties.";

to say THendingE:		[succumb after helped w/keys]
	say "   Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it.  You don[apostrophe]t really have a fixed location, just wandering the city and soliciting several of those you encounter.  Your path takes you back through one the seedier neighbourhoods and you come across several empty alleys, still strong with the scents of felines and sex.  You remain in them for a time, but are drawn to continue from one to the next.  Eventually, you find yourself outside an old motel.  You aren[apostrophe]t sure why, but you feel like you should be here.  The lingering scent of other felines, tigresses, reinforces this.";
	say "   You wander from room to room, as if looking for someone who appears to no longer be there.  You drop onto the bed in the deluxe suite at the top, mewling mournfully.  Something... someone is missing from your life.";
	say "   You end up spending your days sleeping at the motel despite how sad it feels, kept there by your instincts and the lingering scents.  Your evenings are spent in the fallen city[apostrophe]s streets, turning tricks and giving in to your lusts.";
	say "   One early morning, as you make your way back, you spot a girl duck between two houses.  A human girl.  Something snaps inside you and you prowl the area, following her in feline silence.  When she unlocks the door to the small basement apartment, you are there, pouncing her and bursting in.";
	say "   You find four largely unchanged women inside.  They have small ears or muzzles showing, but little else.  Confronted directly by a [if cocks of player > 0]virile[otherwise]lustful[end if] feline after trying to contain their growing urges for so long, they soon succumb to you.  You make fine tigress herms out of all of them and take them back to your motel, finding it a less lonely place now.";
	say "   With their help, a few of those soldiers are lured in and soon you have a bustling motel of playful kitties to serve you.  As you add to your harem, you grow larger, feeling contented in your new role as their matron.  You have filled that empty feeling within yourself by taking the place of the one you longed for.";

to say THendingF:		[succumb after fleeing]
	say "   Surrendering to your new desires, you are drawn back to familiar streets and come to a motel.  You aren[apostrophe]t sure why it[apostrophe]s familiar, but it feels like you should be here.  The scent of other felines, tigresses at that, only reinforce this feeling.  Spotted by the herm tigress on watch, shi takes your paw and leads you upstairs to where the matron - your matron - is.  Shi has another tigress with hir, who shi[apostrophe]s just finished filling.";
	say "   There is something familiar about hir as well.  'That[apostrophe]s [if cunts of player > 0 and cocks of player > 0]hir[otherwise if cunts of player > 0]her[otherwise]him[end if], my matron,' shi exclaims ecstatically.  'The one I told you about.  Oh, shi[apostrophe]s here.  I[apostrophe]m so happy.'  Shi takes you in hir arms, purring happily as shi nuzzles you.  Hir hard cock presses against your body.  Shi tells you how happy shi is to see you.  How nice it is you[apostrophe]ve come to join hir.  Shi loves it here so much, and so will you.";
	If cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
		say "   Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls.  You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron.  Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants.  In time, you both grow heavy with your matron[apostrophe]s cubs, breeding more sexy tigresses.";
	otherwise:											[NON-BREEDABLE]
		say "   Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls.  You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron.  Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants.";


to say THBadEnd1:		[succumb after failing at motel hunt]
	say "   When the military starts to move it, your master is ready.  You have trouble following everything that is going on, but you are all kept together.  You all follow his orders as best you can.  He was quite stern about it, so you all obey, restraining your urges when others are examining you.  Once you[apostrophe]ve all been rendered non-infectious, you are all moved again with the help of several of your master[apostrophe]s friends.";
	say "   You are all moved to a lovely new home in another city, where you live and work as whores in his private club.  His harem of tigresses tend to his needs and peddle themselves for his benefit.  Always grateful for your assistance, you become a favorite of his and it is a happy life for a slut like yourself.  His corrupt contacts keep the law off your backs (except when it[apostrophe]s as a bribe to keep a corrupt official happy.)";
	If cocks of player > 0 and cunts of player > 0:					[HERM PART]
		say "   As the only white tigress sextoy in the brothel, you are a special item and you get a set of regulars who come in looking for time with you.  You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out.  Being his special plaything, he doesn[apostrophe]t allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	Otherwise if cunts of player > 0:							[FEMALE PART]
		say "   As the only purely female sextoy in the brothel, as well as the only white tigress, you have a special set of regulars who enjoy partaking in your beautiful body.  You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out.  Being his special plaything, he doesn[apostrophe]t allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	Otherwise:											[MALE PART]
		say "   As the only male sextoy in the brothel, as well as the only white tiger, you have a special set of regulars who enjoy pounding you in that sweet ass of yours.  The feel of their hot cream in you always feels wonderful and there are always a few who come in looking to be filled by the sexy tiger.  Which is good for you as your master doesn[apostrophe]t allow you to fuck the other whores, though they will happily suck you off or fuck you.  And you know your master has a special place for you any time he pounds you and fills your stripety ass.";
[Non-sterile female/herm addition]
	If cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
		say "   When your heat comes, he takes you out of trade for a few days, exclusively breeding you over and over again until he[apostrophe]s sure his seed has taken and you[apostrophe]ll bear his cubs.  As you rub your growing belly, you smile contentedly, so happy you decided to help him back in the infected city.";

to say THGoodEnd:		[succumb? after succeeding at motel hunt]
	say "   When the military starts to move it, your boss is ready.  He makes contact with a small scout team he[apostrophe]d met during the scouting missions.  Being a police officer, they are inclined to believe him when he says he[apostrophe]s been able to protect a motel full of tigresses.  He leverages a few of his other shady contacts and he soon has you all discretely moved out of the city.  Once the treatment to render you all non-infectious is done, your group is simply lost in the paperwork and no one is the wiser.";
	say "   Your boss gets his girls set up in a private brothel in a new city, protected by some of his corrupt contacts.  Still acting as a police officer, you watch over the girls for him.  You act as the muscle to defend his whores.  You have the run of the girls whenever you like while you manage the whorehouse he[apostrophe]s set up.  His influence keeps the local law off your back and you both enjoy breeding the horny kitties whenever you want and you live well off the proceeds of their lusts.";


Tiger Cop for FS ends here.