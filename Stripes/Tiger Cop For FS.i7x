Version 3 of Tiger Cop For FS by Stripes begins here.
[Version 3.3 - Fights flagged as situations]

Section 1 - Key Hunt Quest

Policeman is a situation.
The sarea of Policeman is "High".
keycollection is a number that varies.
mqstatus is a number that varies.
mqcountdown is a number that varies. mqcountdown is usually 99.
nsgained is a number that varies.
mqpickup is a number that varies.

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
	project the icon of Sgt Marks;
	if mqstatus is 0:
		say "     While traveling through the streets of the ravaged city, you encounter a large tigerman wearing a partial police uniform. The jacket is left open, unable to close it over his broad, striped chest. The pants mostly fit, though the bottom of the legs are torn and leave the bottom third of his legs uncovered. To be able to fit his seven foot frame, he was probably a portly man before his transformation into the tall and muscled orange beast.";
		say "     The cop walks up to you purposefully, pulling out his nightstick and slapping his palm with it a couple of times while sizing you up. Watching your reactions, he notices that you're not a mindless monster (yet) and relaxes only slightly. 'Hold it right there. What are you doin['] roamin['] the streets during a crisis?  All citizens were advised to stay at home and in shelters before all communications dropped,' he growls with authority.";
		if scenario is "Researcher":
			say "     You quickly explain to him that you are actually a researcher sent in to gather data. You tell him that you have been inoculated to be resistant and have been searching throughout the city for samples. You tell him a little about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		else if hp of doctor matt > 0 and hp of doctor matt < 100:
			say "     You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving. You tell him a little bit about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. You even add in the fact that you're working with a scientist who's investigating the cause of the outbreak. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		else:
			say "     You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving. You tell him a little bit about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		WaitLineBreak;
		say "     'Well, it sounds like you've been able to take care of yourself fairly well to this point. I've been continuin['] my patrols, but this city's pretty much gone to the dogs. Quite literally with a lot of people. I been tryin['] to keep some order by knockin['] a few heads. Takin['] a few liberties, as well,' he adds with a smug smirk.";
		if scenario is "Researcher":
			say "     'Now, since you seem like a competent [if cunts of player > 0]gal[otherwise]guy[end if], I think I can see myself bein['] able to overlook your...' he taps his nightstick of your backpack, '...sample gatherin[']. That is, providin['] you'd be willin['] to do your civic duty and help a police officer.'";
		else:
			say "     'Now, since you seem like a competent [if cunts of player > 0]gal[otherwise]guy[end if], I think I can see myself bein['] able to overlook your...' he taps his nightstick of your backpack, '...supply gatherin[']. That is, providin['] you'd be willin['] to do your civic duty and help a police officer.'";
		WaitLineBreak;
		say "     'There's this small pack of tigresses that have been showing up in the seedy part of town, peddling themselves and infecting others[if stiffedpayment is 1]. I can smell their scent on you. It don't pay to try to stiff a whore on her pay, my friend. Perhaps you'd like a little payback?'[line break][else if tigresswinner is 1]. I can smell some of their scent on you. It seems like you've already put one in hir place.'[else if tigressfucked is 1]. I can smell some of their scent on you. It seems shi's had hir way with you. Perhaps you'd like a little payback?'[line break][else if tigressclient is 1]. I can smell their scent on you. It seems you've already sampled their services. You won't need to worry about [']em taking your stuff if you'd be willin['] to help me out.'[otherwise].'[end if]";
		say "     'I want to, you know, get [']em under control before things get out of hand. They seem to be based in a cheap motel in that part of town. I could use a bit more muscle to deal with [']em. If I'm goin['] to clear the place out, I need to be able to get in and lay down the law. If you can get some more keys for their motel, I'll be able to deal with [']em properly. I want a handful more so I can access all the rooms and get the whole lot of [']em.'";
		WaitLineBreak;
		say "     'So, you tell me: Have I found a concerned citizen who's willin['] to help the police or another punk looter?' he asks, slapping his nightstick in his paw meaningfully.";
		say "     [bold type]Do you agree to help the tiger cop?[roman type][line break]";
		line break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:			[quest becomes active]
			line break;
			now mqstatus is 1;
			say "     'Good, I figured you were right for the job. Those damn pussies are on the lookout for me now, so I need someone else to help me get the rest of those keys.' He smacks his broad chest. 'I may be in much better shape now, but they're still faster than me. I want you to bring me about five more, just to make sure we've got all the rooms. You get your ass to the Red Light District, get those keys and then report back to me, good ole Sgt Marks. Then I can lay down the law.'";
			say "[motelkeycheck]";
		else:					[quest refused / tiger cop now enemy]
			line break;
			now mqstatus is 98;
			say "[line break]     With almost no warning, the officer swings his nightstick hard and fast at your head!";
			let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
			let the dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 16: ";
			if dice plus bonus is greater than 16:
				say "     You narrowly dodge out of the way of the vicious blow.";
			else:
				decrease hp of player by 15;
				say "     You are struck firmly across the jaw by the hard club. (15 dmg)";
			say "[line break]     'And here I thought you were smarter than that, but I guess you're just another stupid, punk looter?  I guess I'll have to teach you a hard lesson,' the tiger cop growls, readying to strike again if you get up.";
			wait for any key;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Tiger Cop":
					now monster is y;
					break;
			now area entry is "High";		[activates Tiger Cop as a wandering monster]
			if hp of player < 1:
				say "     That blow was too much for you and you are sent sprawling to the ground, unable to retaliate or flee.";
				say "[losetotigercop]";
			else:
				challenge "Tiger Cop";
			now mqstatus is 99;		[set to refused quest]
			Now Policeman is resolved;
	else:
		let T be a random number between one and four;
		if T is 1:
			say "     While passing through the city again, you catch sight of Sergeant Marks again. He's been standing in the shadows of a building archway and only steps out when you spot him. He comes over to you, giving you a look-over. 'I've been waitin['] for you to turn up. I hope you've had some success with your little mission, deputy,' he says with a chuckle.";
		if T is 2:
			say "     While looking through a small courtyard between several of the high-rises, you are met by the tiger cop. He is coming out of one of the trendy restaurants with a small satchel over his shoulder. Sgt Marks seems quite pleased with himself until he spots you looking at him. He growls sternly at you, 'Hey! How's you're [']community service work['] comin[']?'";
		if T is 3:
			say "     As you travel through the city, you hear the pained yip of one of the husky females. Heading over cautiously to investigate, you come face to chest with Sgt Marks as he steps out of an alley. He is zipping up his fly and you can hear the sound of someone rushing away down the alley. 'Damn bitches,' he grumbles. 'Barely worth the time to fuck, eh?' he comments. 'But forget her. How is your project comin['] along?  You got some good news for me?'";
		if T is 4:
			say "     After some fruitless searching through the city, you run into the tiger policeman again. Sgt Marks is sitting on the roof of a car. Somehow, even in this city gone mad, he's managed to find a bag of store-bought doughnuts. He's got his claws sunk into several of the sugar-covered things and is stuffing them down his muzzle. He looks over at you, wolfs the last of them down without concern for your possible hunger, and then dusts the sugar grains from his paws. 'Did you have any luck yet?  We can't wait for this forever.'";
		say "[motelkeycheck]";

to say motelkeycheck:
	say "     Taking a quiet tally in your head, you have collected [carried of motel key] key(s).";
	if carried of motel key > 4:			[5 or more keys to proceed]
		say "     [bold type]Do you tell him you have found enough keys?[roman type][line break]";
		line break;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			say "[line break][givekeys]";
		else:
			line break;
			say "     You shake your head and tell him you don't have the motel keys for him yet. He growls softly and points off towards the seedier part of town with his nightstick. 'Just you do your work and get them for me. Hop to it.'";
	else:
		say "     You shake your head and tell him you don't have the motel keys for him yet. He growls softly and points off towards the seedier part of town with his nightstick. 'Just you do your work and get them for me. Hop to it.'";


to say givekeys:
	delete motel key;
	delete motel key;
	delete motel key;
	delete motel key;
	delete motel key;
	say "     You dig into your bag, fishing out the motel keys from where they've settled at the bottom. He flips through them, checking the room numbers. He stuffs them into one of his pockets and smiles to you. 'Good goin['], deputy,' he jokes with a firm punch on your shoulder. 'That covers all the rooms now. They can't keep us out anymore.'";
	say "     'Us?' you ask as the big tiger motions for you to follow him. 'Yeah, now come along. I've got somethin['] for ya,' he says as he heads down a side street. He talks with you as you both weave through the city for several blocks. 'Like I was sayin['], you've been right helpful on this and I'm willing to cut you in on a little of the action if you're up for one last tussle with those pussies. I want to go in and deal with [']em, teach [']em who's boss around here. And cleaning that place up'd be a lot easier with some extra muscle.'";
	say "     'Now we've got a little time to get ready for this, so I want to listen up,' he says sternly, pausing for a moment to give you a hard poke in the chest to emphasize his point. 'You've got to be smarter about your supply huntin['] and watch what you say if you run into any of those soldiers out there. Soldiers'll shoot looters. Them military guys'll be nosin['] into your gear, but they'll be on the lookout for weapons or stuff that could spread the infection. With everyone they'll find, they won't have much time for twenty questions unless you say somethin['] stupid. You keep quiet and keep it light and you'll do alright, I think.'";
	say "     The rest of the walk is conducted in silence. His words have left you much to think about for the future. He leads you to an intersection with a cluster of cars. One of them, a police car, is hemmed in by crashed cars on either side.";
	now mqstatus is 2;
	now Police Car is known;
	now the player is in Police Car;
	now mqcountdown is 0;
	Now Policeman is resolved;
	increase score by 40;
	increase xp of player by 10;
	say "     The feline policeman opens the car and digs around in what appears to be the torn remains of a cop's uniform in the passenger's seat. 'Here, take this. You're gonna need it,' he says meaningfully as he passes you a nightstick. 'If you've got any last minute stuff to take care of or an equipment stash wherever you're holed up, you go get your gear and be back here pronto. I want you to come along on this, but I'm only willin['] to wait 24 hours before I move out. And if somethin['] holds you up, there'll be a key in the lip of the bumper. I should be able to leave somethin['] for ya in the trunk and I'll get in touch after the heat dies down.'";
	say "     Nightstick obtained.";
	increase carried of nightstick by 1;


Section 2 - Tiger Cop character and Police Car location

Police Car is a room. It is private. It is fasttravel.
The description of Police Car is "[policecardesc]".

the scent of the Police Car is "This area smells faintly of gasoline and sun-heated cars, as well as dried patches of old cum.".

to say policecardesc:
	if Sgt Marks is in Police Car:
		say "     This intersection seems to be the sight of a major crash, which must have happened as the chaos was reaching its peak. There are several cars smashed into a cluster, many with doors open and messy stains in their interiors. There are scattered clothes and more of these old stains littering the intersection and the cars. In one of the streets leading to this mess is a cop car sideways in the street with streaks marks from its sudden stop. More cars are blocking the street behind it, penning it in. Like most of the streets, this spot is impassable by vehicle now. Sitting on the hood of the cop car is a large tiger in a police uniform, Sgt Marks. The feline cop is looking over his gear, getting it all packed up and ready.";
	else:
		say "     This intersection seems to be the sight of a major crash, which must have happened as the chaos was reaching its peak. There are several cars smashed into a cluster, many with doors open and messy stains in their interiors. There are scattered clothes and more of these old stains littering the intersection and the cars. In one of the streets leading to this mess is a cop car sideways in the street with streaks marks from its sudden stop. More cars are blocking the street behind it, penning it in. Like most of the streets, this spot is impassable by vehicle now. The tiger cop who was once here is gone, presumably to deal with the motel he spoke of, wherever that is.";
		if mqpickup is 0:
			say "[line break]     Taking the key from its hiding place, you unlock the car's trunk. Inside is a note that simply says 'Catch you later' with two cans of police pepperspray on top of it. Those should come in quite handy.";
			say "     Two cans of pepperspray obtained.";
			increase carried of pepperspray by 2;
			increase score by 10;
			now mqpickup is 1;


Sgt Marks is a man. Sgt Marks is in Police Car.
The description of Sgt Marks is "     The tiger cop is quite large and impressively strong looking. His police jacket hangs open, unable to close around his broad, striped chest. His pants mostly fit, thought the bottom of the legs are torn open and leave the bottom third of his leg uncovered. To be able to fit his seven foot frame, he was probably a portly man before his transformation into the tall and muscled orange beast. His tail thrashes about with barely contained excitement as he checks over his equipment and supplies as he gets ready to enact his plan.".
The conversation of Sgt Marks is { "WhoresWhoresWhoresWhores!" }.
sgtmarkstalk is an number that varies.
The icon of Sgt Marks is figure of SgtMarks_icon.

the scent of the Sgt Marks is "The tiger cop growls and pushes you away as you come up to sniff him.".

Instead of conversing the Sgt Marks:
	if sgtmarkstalk is 0:
		say "     The feline cop looks up from the pack he's stocking. 'This is my cruiser here. Been comin['] back here from time to time to get stuff or store stuff. Just gear, mind you. Never leave anything incriminatin['] where it can be found and connected to you. Cop 101, that is. Most of the gear's already used up or lost dealin['] with the craziness out there.'";
		say "     'We were heading to try and deal with another of the strange disturbances that were popping up that night. Sketchy reports were comin['] back from those who'd already responded to them, if they reported back at all. We were on our way to what was reported as a two-eight-eight: lewd conduct.' He chuckles at that.";
		say "     'Well, we never even made it there. This accident happened as a pack of those creatures poured out from that nightclub over there. Cats [']n dogs mostly, I think. We didn't know what was goin['] on, so my partner got out to help while I was tryin['] to call it in. Poor guy didn't know any better. One of those tigresses pounced him. Shi popped off pretty fast, probably well riled up by the orgy goin['] on outside. Some of it got on me, but Jack took most of it and started changing fast.'";
		say "     'I'd had enough at that point and I high-tailed it out of there mighty fast. I started to change too, but I fought my way through [']em and got myself somewhere to hole up for a while. Ended up looking like this in the end. Which ain't so bad at all,' he adds, flexing his big arms.";
		now sgtmarkstalk is 1;
	else:
		say "     'I'm looking forward to dealing with those pussies and showin['] [']em who's boss. I've been wanting to deal with those girls for a while now. Get my hands on those tight asses of theirs and really give it to [']em. Mmm... such fine asses they've got. Such lovely fur. Been wantin['] some of that for a long time.'";
	say "     [bold type]'But now it's time to put those kitties in their place. Are you ready to head out?' [roman type](NOTE: Consenting can lead to end of game situations.)[line break]";
	line break;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		now mqstatus is 3;
		remove Sgt Marks from play;
		say "[line break][motelquest]";
	else if mqcountdown < 8:
		line break;
		say "     'The offer's still open a little longer. I'm moving out in [ ( 9 - mqcountdown ) times 3 ] hours, with or without you.'";
	else:
		line break;
		say "     'It's now or never. I'll be moving out real soon now.'";

An everyturn rule:
	if mqstatus is 2 and mqcountdown < 10:
		increase mqcountdown by 1;
		if mqcountdown is 9:
			remove Sgt Marks from play;
			say "[line break]     [bold type]Your 24 hours are up. Sgt Marks has left without you.[roman type]";
			now mqcountdown is 10;

the fuckscene of Sgt Marks is "     'Smarten up and save it for those fine pussies. They'll be all ours once this is over.'";


Section 3 - Motel Quest

to say motelquest:
	say "     Having agreed to join him, you follow the tiger cop across the city, traveling to the motel where the tigress hookers are holed up. On the way, he doesn't talk much, just telling you that there are quite a few of them, but they're never all at the motel at once. There are always some on duty, as it were. You both will split the rooms, taking care of any tigresses in there and then you two can double-team the others as they return home.";
	say "     The intimidating tiger seems to keep the other creatures at bay and you are not harassed on your journey. Perhaps word in the neighbourhood has gotten around that he's trouble. You remain on edge, but aside from a few creatures fleeing from the sight of him, you are not interrupted.";
	WaitLineBreak;
	say "     Coming up to the motel, you can see that it is an old, run down place. Well past its prime and never much of a looker, it clearly got by on business by the hour. Given the madness in the city, you can easily see one of the prostitutes there turning into a tigress and infecting anyone else unfortunate enough to be there.";
	say "     From your vantage point in a nearby vacant building, the cop goes over his plan. The motel has two stories, with a metal staircase leading up to the second level rooms. There are just 6 rooms to a floor, so you'll both be able to get through them quickly. He tells you that, once you've taken out the first sentry in the parking lot, he'll go through the ground floor rooms and you'll do the upstairs set. That way neither of you will be taken down by the other half banding together.";
	WaitLineBreak;
	if "Stealthy" is listed in feats of player:
		say "     You tell him that you can jump the first guard by surprise if he'll help deal with hir after that. Using your Stealth abilities, you stick to the shadows and go at the building from behind. You slink with your back to the wall until you move around behind the tigress. Pouncing hir, you cover hir muzzle to keep hir quiet while the cop rushes out to help you subdue hir. Once shi's out cold, you stash hir around the corner and he motions for you to head up the stairs.";
		say "     Bonus: 20 pts and 10 xp awarded.";
		increase xp of player by 10;
		increase score by 20;
	else:
		say "     You head over to the tigress, acting as if you intend to be a client until you get close to hir, then engage hir in combat. While you fight the tigress, you can see Sergeant Marks head to the nearest room on the ground floor.";
		Line Break;
		now mqfightresult is 3;		[set to fled by default]
		now inasituation is true;
		challenge "Tigress Hooker";
		now inasituation is false;
		if mqfightresult is 3:
			say "[mqranaway]";
			stop the action;
		else if mqfightresult is 2:
			say "[mqlostfight]";
			stop the action;
		say "     You manage to subdue the tigress on guard and take look at the rooms and a quick glance up the stairs. No one seems to have noticed the disturbance. There's some noise coming from the first ground floor room where your ally has gone in, but it's hard to tell if it's fighting or sex. With two randy tiger creatures in there, you can't really be sure.";
	WaitLineBreak;
	say "     You dash up the stairs and onto the second floor balcony. You burst through the first door, weapon raised, but find it empty. Well, good. Fewer for you to deal with. You move to the next and find it empty as well. Two for two.";
	say "     At the third, your luck runs out. There is a tigress sprawled across the bed, pumping a large dildo shi's picked up somewhere while working a paw over hir thick, feline cock. With hir filled, stuffed pussy facing right at you, you are stopped short in shock. Seeing you at the door, shi glances from you to the sextoy a few times, then yanks the plastic thing out, eyeing the live toy that's come to play.";
	Line Break;
	now mqfightresult is 3;			[set to fled by default]
	now inasituation is true;
	challenge "Tigress Hooker";
	now inasituation is false;
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	else if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "     After beating the tigress, you shove hir back down onto the bed, face first. You grab the glistening dildo and sink it into hir tailhole, making hir mewl in painful pleasure. You pump it into hir again and again until shi's a quivering ball of lust pleasuring hirself on the bed once again, laying in a wet puddle of hir own cum. You'd play with your new kitty toy more, but you remember that you have more rooms to deal with.";
	WaitLineBreak;
	say "     You open the door to the next room, number 10, and find another female tigress on the bed. This one has what you presume is, or was, a client in bed with hir. On the bed is a strange mouse-tiger hybrid with a collar around hir neck and a leash tied to the bedpost. The hybrid has blue fur, but tiger stripes and has rather feline features, though the ears and tail are still mouse-like. Under the mouse's balls is a small, wet snatch. Presumably the feline lured this john back to hir room and has been using him like hir playtoy while making another tigress herm of him.";
	say "     The tigress growls at the interruption, pulling hir cock from the striped mouse's muzzle, then pushes hir back as shi climbs off the bed to deal with you for interrupting hir playtime. The hybrid on the bed only mewls and squeaks, reaching out imploringly from the end of hir leash to either of you in lustful need, fingering hirself as you both fight.";
	Line Break;
	now mqfightresult is 3;			[set to fled by default]
	now inasituation is true;
	challenge "Tigress Hooker";
	now inasituation is false;
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	else if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "     Having dealt with the tigress, you shove hir back onto the bed, right on top of the hybrid, then step up to them both. Grabbing both their heads, you press them to your groin. They start to lick and kiss at your genitals eagerly, with moans, mewls and squeaks of desire. You rub their ears and let them tend to you until you finally cum.";
	say "     Your desires met, you shove the tigress down onto the transforming herm, telling hir to get back to work and that you'll back to play with them both later. You stay to watch the tigress's cock sinking into the virgin mouse hole before heading out to finish your work. You expect there'll be another tigress among the girls quite shortly.";
	WaitLineBreak;
	say "     You smile as you continue on. Things have gone quite well. You can hear the sounds of rutting felines somewhere beneath you. The cop has been continuing on the other rooms as well. You're almost done. The next room along is empty and chances are looking good that you'll be able to get back to the previous room and watch the mouse finish changing. You grow aroused at the thought of watching what remains of the mouse guy turn into another lusty tigress.";
	WaitLineBreak;
	say "     With images of that playing out in your mind, you go in the final room on the upper floor. In there, your hopes of getting back to room 10 are dashed. Seated on the large bed in what was once the motel's luxury suite, is a tigress much larger than any of the others. This strong looking woman has a good foot more height on any of hir girls. Shi's loosely wearing a silk robe over hir ample bosom. Poking from it is hir large, twelve inch ebon member, which is being attended to by blonde-haired tigress. Another tigress is spread out on the floor, with one of the large tigress's feet rubbing hir sticky cock. Others are sprawled out on the bed or snuggling in the corner.";
	say "     All feline eyes in the room lock on you and narrow into tight slits. Several of the girls start to get up, but their matron motions for them to wait as shi gets up instead, ready to deal with this upstart intruder, this rude interruption, this new toy.";
	now mqstatus is 6;
	Line Break;
	now mqfightresult is 3;			[set to fled by default]
	now inasituation is true;
	challenge "Tigress Hooker";		[mqstatus 6 will adjust stats to Matron level]
	now inasituation is false;
	if mqfightresult is 3:
		say "[mqranaway]";
		stop the action;
	else if mqfightresult is 2:
		say "[mqlostfight]";
		stop the action;
	say "[mqsuccess]";


to say mqranaway:
	say "     Fleeing the motel, you hear the alarm sound as you get to safety in a nearby building. From the shadows, you see the mob of tigresses from the top floor spill down to the ground floor, charging to tackle the cop as he tries to get away while the alarm is sounded. They bear him down by sheer numbers and tear the clothes from him as he screams your name in anger at your betrayal.";
	say "     They tease and grope him as they drag him up the stairs, several of them jerking off onto him in their excitement at a new playmate. The final door on that floor opens and you see a large, powerful tigress pull him in. Shi gropes the new breasts that are starting to form on his chest. You are quite sure there will be another cute tigress turning tricks in the alleys quite soon.";
	decrease score by 25;
	now mqstatus is 4;
	stop the action;


Section 4 - Lost at Motel

to say mqlostfight:
	now mqstatus is 5;
	say "     That last blow sends you reeling and, with a call out, you are pounced by a pair of tigresses, who tear off your clothes. You are dragged in front of the large tigress matron in charge of the felines. Shi slams you down onto the bed and immediately starts pounding hir large cock into your [if cunts of player > 0]pussy[otherwise]ass[end if]. You try to resist, but are too weakened and end up quickly succumbing to your arousal. Your mind starts to give, feeling the lustful urge to enjoy the life of sex these felines live.";
	WaitLineBreak;
	say "     There is some commotion at the door which you hardly notice before you feel a painful shock run through you as the matron stiffens atop you. Shi is pushed aside by the cop, who smiles down at you. You start to get up, drawn between thanking him for the rescue and lusting for your hero. His pants are open and his stiff rod is slick with cum and juices, drawing your lustful gaze to it as he holsters his stun gun. From the sticky juices coating his meat, it seems he's already shown a few of them who's in charge.";
	say "     'I knew you'd make a fine distraction for [']em,' he chuckles. He pushes you down overtop of the stunned matron. Grabbing your ass, he slowly sinks his cock into you, making you moan in satisfaction at being filled once again. He thrusts several times before withdrawing and pushing his thick meat into the tigress below you, who has started to come of out of hir daze. Hir hard shaft is pressed between you both as the cop alternates fucking each of you, turning you both into sexy feline whores.";
	say "     Around you, the other tigresses fawn over the tiger cop, their new master, while pleasuring themselves. When he's finally cum in the ex-matron, he switches to pounding you exclusively. While that hard, feline meat pounds into you, you lap his seed from the new tigress hooker and suck hir cock, getting a hot load in both your mouth and your [if cunts of player > 0]pussy[otherwise]ass[end if].";
	say "     Through the night this orgy continues, always welcoming any returning girls in kind. Your new master fucks the horny felines over and over to assert his dominance while you and the other tigresses play with each other while awaiting your next turn with him. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	WaitLineBreak;
	say "[totalTH]";		[systematically change all body parts and names to Tigress Hooker, with gender exclusions for feats.]
	say "[THpostchange]";
	decrease score by 25;
	now humanity of player is 0;
	follow the turnpass rule;
	end the game saying "You become another whore for the corrupt cop.";
	now battleground is "void";


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
	attributeinfect;
	now tail of player is tail entry;			[...to make for quicker and accurate copying of TH appearance.]
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if "Male Preferred" is listed in feats of player:
[		say "(Male Preferred, locked results)";	]
		if cocks of player is 0:			[Minimum of TH standard or greater]
			now cocks of player is 1;
		if cock length of player < 9:
			now cock length of player is 9;
		if cock width of player < 5:
			now cock width of player is 5;
	else if "Female Preferred" is listed in feats of player:
[		say "(Female Preferred, locked results)";	]
		if cunts of player is 0:
			now cunts of player is 1;
		if cunt length of player < 12:
			now cunt length of player is 12;
		if cunt width of player < 4:
			now cunt width of player is 4;
		now breasts of player is 2;
		if breast size of player < 4:
			now breast size of player is 4;
	else if "One Way" is listed in feats of player:
[		say "(One Way, locked results)";		]
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
	else:
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
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress herm like the others. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your wet pussy and throbbing cock ache with a need to be played with, but for a price.";
	else if cocks of player > 0:				[male]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress femme. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your throbbing cock aches with a need to be played with, but for a price.";
	else:								[female]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress femme. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your wet pussy aches with a need to be played with, but for a price.";
	say "     That is, except for your master. For you are his to play with, to use, sell or share as he sees fit. The girls are all his now and you all take turns working the streets while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city. You and the others keep each other entertained while he is away, but always eagerly offer yourselves to him when he returns.";


Section 5 - Won at Motel

to say mqsuccess:
	now mqstatus is 50;
	say "     With their matron beaten, the tigresses all look at you expectantly. The fallen tigress, and soon the others as well, start mewling and displaying themselves for the attention of the strong [if cocks of player > 0 and cunts of player > 0]herm[else if cocks of player > 0]male[otherwise]female[end if] who has beaten them.";
	say "     As you eye all the lusty felines before you, the cop comes in, dragging another pair of felines in by the scruff while the others he's brought wait submissively by the door. His pants are open and his stiff rod is slick with cum and juices. It seems he's already shown a few of them who's in charge.";
	say "     'Good work, deputy,' he chuckles as he pushes the two tigresses onto some of the others. He steps up to the deposed matron, intent on having his way with hir.";
	WaitLineBreak;
	say "[MQvictory]";
	say "[BTchangeover]";
	WaitLineBreak;
	say "[BTpostchange]";
	increase score by 100;
	follow the turnpass rule;
	WaitLineBreak;
	end the game saying "You become the muscled guard for the tigresses.";
	now battleground is "void";

to say MQvictory:						[Victory]
	if cocks of player > 0 and cunts of player > 0:		[herm]
		say "     You set yourself on a cute pair of tigresses, pounding one while the other fingerfucks your pussy. You motion for another pair to tend to your breasts with those rough tongues of theirs. Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck. While you're pounding away, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first pair, you push them aside and pull another up from the bed. You press hir to the wall and pound into hir tight cunt. Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly. Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole. Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one.";
		say "     You push your next tigress to lie back on the bed and you straddle hir cock, taking it deep inside you. You ride hir hard and fast while stroking both yourself and another feline's cock to cum all over your current playmate. Your fast pace makes hir cum with a loud mrowl of delight, filling you with hir hot cum.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	else if cocks of player > 0	:			[male]
		say "     You set yourself on a cute pair of tigresses, pounding one while the other sucks your balls. Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck. While you're pounding away, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first pair, you push them aside and pull another up from the bed. You press hir to the wall and pound into hir tight cunt. Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly. Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole. Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one. Shi is made to mate with another tigress on the bed beneath hir, driving your cock into the middle one and forcing hir to thrust into the one below.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	else:						[female]
		say "     You grab one of the females sitting by the bed, pulling hir face between your legs, ordering hir to eat you out. Shi sets hirself to the task eagerly, running hir raspy tongue over your wet folds until you soak hir muzzle with your juices. During your oral stimulation, you order another pair of tigresses to your breast, licking and suckling your nipples and a third to your asshole. While you're enjoying those rough tongues on your erogenous zones, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first set of kitties, you push them aside and pull another up from the bed. You press hir to the wall and start pumping your fingers into hir tight cunt. Hir inner walls squeeze around you, tugging at them for more. You get hir good and worked up, then pull out before shi can climax. You toss hir back onto the bed and straddle hir cock, taking it deep inside you. You ride hir hard and fast, making hir cum with a loud mrowl of delight. You're on to the next in moments, riding that cock while stroking two others onto the tigress you're riding.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";

to say BTchangeover:
	[systematically change all body parts and names to Big Tiger / Big Tigress, with gender exclusions for feats.]
	if libido of player < 50:
		now libido of player is 50;
	if "Female Preferred" is listed in feats of player:
		[if multi-cock, reduce to 1. Cannot become less female.]
		if cocks of player > 1:
			now cocks of player is 1;
	else if "One Way" is listed in feats of player:
		[player can't become less female, but can increase in maleness]
		if cocks of player is 0:
			now cocks of player is 1;
		if cock length of player < 12:
			now cock length of player is 12;
		if cock width of player < 6:
			now cock width of player is 6;
	else if "Male Preferred" is listed in feats of player:
		[Player can't diminish in maleness. Pussy, if any is eliminated]
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
	else:
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
		now scalevalue of player is 4;
		now bodydesc of player is "powerful";
		now bodytype of player is "feline";
		now the daycycle of player is 0;
		now tail of player is "From your muscled rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with excitement.";
		now face of player is "a feminine tiger face and long, flowing hair. Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your steely-blue eyes";
		now skin of player is "ivory white fur streaked with tiger stripes that covers your";
		now body of player is "powerfully built with a feminine flair and feline fluidity of motion. Your body moves sensually with every step, but with hidden power. Your hands are human in shape, but with feline claws, pawpads and fur";
		now cock of player is "ebon feline";
	else:
		now tailname of player is "Big Tiger";
		Now facename of player is "Big Tiger";
		now skinname of player is "Big Tiger";
		now bodyname of player is "Big Tiger";
		now cockname of player is "Big Tiger";
		now scalevalue of player is 4;
		now bodydesc of player is "powerful";
		now bodytype of player is "feline";
		now the daycycle of player is 0;
		now tail of player is "From your muscled rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with excitement.";
		now face of player is "a male tiger head with a strong jaw and a predatory gaze. With a fully feline head, you have fur, stripes and whiskers cover your stern muzzle";
		now skin of player is "ivory white fur streaked with tiger stripes that covers your";
		now body of player is "a powerfully built, masculine form. You move with predatory strength and confidence, as well as a feline's smooth grace. Your hands are human in shape, but with feline claws, pawpads and fur";
		now cock of player is "ebon feline";

to say BTpostchange:						[New BT form]
	if cocks of player > 0 and cunts of player > 0:		[herm]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a strong, powerful tigress herm. You are muscled, yet voluptuous to keep all these girls in line. With your strength, you can easily pin down any recalcitrant girl and fuck hir or ride hir into lustful obedience as you see fit. Your white fur is like the snow and its stripes like the night. You are much larger now, almost as big as your boss, Marks.";
		say "     The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";
	else if cocks of player > 0:				[male]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a strong, male tiger. You are muscled and virile to keep all these girls in line. With your strength, you can easily pin down any recalcitrant girl and fuck hir with your hard cock into lustful obedience. Your white fur is like the snow and its stripes like the night. You are much larger now, almost as big as your boss, Marks.";
		say "     The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";
	else:								[female]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a strong, powerful tigress femme. You are muscled, yet voluptuous to keep all these girls in line. With your strength, you can easily pin down any recalcitrant girl and ride hir into lustful obedience. Your white fur is like the snow and its stripes like the night. You are much larger now, almost as big as your boss, Marks.";
		say "     The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";


Section 6 - Nightstick

Table of Game Objects (continued)
name	desc	weight	object
"nightstick"	"A policeman's nightstick. An effective weapon."	4	nightstick

nightstick is an armament. It is part of the player. It has a weapon "[one of]your nightstick[or]your t-baton[or]your side-handle baton[or]your police nightstick[or]your black nightstick[at random]". The weapon damage of nightstick is 6. The weapon type of nightstick is "Melee". It is not temporary.

the scent of the nightstick is "     The nightstick smells faintly of violent authority.".

Section 7 - Monster Desc for Tiger Cop

when play begins:
	add { "Tiger Cop" } to infections of guy;
	add { "Tiger Cop" } to infections of hermaphrodite;
	add { "Tiger Cop" } to infections of furry;

to say tigercopdesc:
	setmongender 3;		[creature is male]
	choose row monster from the table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 8, let debit be level of player - 8;	[Boss hard mode growth rates]
	now hp entry is 90 + ( debit * 6 );
	now monsterhp is 90 + ( debit * 6 );
	now wdam entry is 12 + ( ( 4 * debit ) / 11 );
	now lev entry is 8 + debit;
	if mqstatus is 98:
		say "     The feline policeman growls as he looms over you, ready to take another swing. The large tigerman appears to be done with talking and is quite intent on fighting. You dodge back a step and ready your weapon to try and deal with the animalistic cop. Unlike your other foes, he's not fallen into being an instinctual creature of lust, so you're unsure what to expect.";
	else:
		say "     As you travel through the city, you come across the corrupted cop once again. His open police jacket cannot contain his broad chest and his seven foot height leaves his pants covering only two-thirds of his legs. He growls at the back of his throat as he moves up quickly and raises his nightstick. The corrupted cop, enhanced with the strength and agility of a predator, but still sane, is a force to be reckoned with. [one of]'I was wonderin['] if when I'd find you again, punk. Time for a little police brutality.'[or]'I will teach you to respect my authority here, punk.'[or]'I was just thinkin['] I could use a little [']stress relief[']. Come're, little toy.'[or]'I am the law here, punk.'[at random]";


to say losetotigercop:
	if mqstatus is 98:
		say "     Unable to stand up to the large tiger any longer, he grabs you roughly and shoves you face down onto a mound of rubble. 'You couldn't just do what you were told. The world is filled with punks like you these days. No respect for authority,' he growls as he holds you down with one paw and bares your bottom with the other.";
		if cunts of player is greater than 0:
			say "     'Well, I'll teach you a lesson you won't soon forget,' he says as he slides his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of the nightstick at your pussy, making you shiver. He teases you with it briefly, getting you wet despite yourself, before sinking it into you. He pounds you hard and fast with it, making your body shudder until you finally climax. He sprays his cum across your ass, and then removes the weapon from your aching pussy. He picks you up roughly and gives you a hard shove. 'Get your dumb ass out of here. And if I catch you again, you'll get the real thing.'";
		else:
			say "     'Well, I'll teach you a lesson you won't soon forget,' he says as he slides his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of the nightstick at your asshole, making you shiver. He teases you with it briefly and you try your best to relax it before he sinks it into you, using only a little spit for lubrication. He pounds you hard and fast with it, making your body shudder until you finally climax. He sprays his cum across your ass, and then removes the weapon from your aching hole. He picks you up roughly and gives you a hard shove. 'Get your dumb ass out of here. And if I catch you again, you'll get the real thing.'";
	else:
		if a random chance of 1 in 3 succeeds and ( cunts of player > 0 or "Less Anal" is not listed in feats of player ):
			say "     'It looks like you need another lesson in why you shouldn't mess with me,' he says as he grabs you roughly and shoves you face down onto a mound of rubble. 'Punks like you are nothin['] but trouble. Should've gotten a good, hard spankin['] from your dad to beat some respect into you.' With you pinned down, the tiger holds you down with one paw and bares your ass with the other.";
			if cunts of player > 0:
				say "     He runs his nightstick across your bare bottom and gives a solid slap with it across your rear, making you cry out in surprise and pain. After another stinging slap, he runs his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of his nightstick against your pussy, making you shiver. He works it across your folds, sliding it back and forth, getting you wet despite yourself. Shifting its position, he thrusts it into your cunt, making you groan at the sudden, hard intrusion. The tiger cop pounds you hard and fast with it, making your [bodydesc of player] body shudder until you finally cum. Laughing at this, the tiger sprays his seed across your ass before removing the weapon from your aching pussy.";
				say "     Wiping the slick rod across your ass, he gives you another hard swat, making you cry out. 'Get your dumb ass out of here. I might not go so easy on you next time,' he growls.";
			else:
				say "     He runs his nightstick across your bare bottom and gives a solid slap with it across your rear, making you cry out in surprise and pain. After another stinging slap, he runs his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of his nightstick against your asshole, making you shiver. He rubs it against your pucker and you try your best to relax before he drives it into you with only a little spit as lube. You groan at the sudden, hard intrusion as it thrusts into you and starts sliding it back and forth[if cocks of player > 0 and player is submissive], getting you hard despite yourself[end if]. The tiger cop pounds you hard and fast with it, making your [bodydesc of player] body shudder[if cocks of player > 0 and player is submissive] until you finally cum[end if]. Laughing at this, the tiger sprays his seed across your ass before removing the weapon from your aching asshole.";
				say "     Wiping the warm rod across your ass, he gives you another hard swat, making you cry out. 'Get your dumb ass out of here. I might not go so easy on you next time,' he growls.";
		if cunts of player is greater than 0:
			[puts Tigress Hooker as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Tigress Hooker":
					now monster is y;
					break;
			say "     Unable to stand up to the large tiger any longer, he grabs you and shoves you down onto a nearby car. Pressing your face to the dirty hood, he growls in your ear. 'I warned you what would happen if I caught you,' he rumbles. With a strong paw firmly at your neck, the other bares your bottom and moves you into position.";
			say "     You hear him unzip, then there's the feel of a large, hard cock against your bottom. He grinds against you a few times, getting fully hard before sinking it firmly into you. Your [bodydesc of player] body shudders from the sudden intrusion, but he pays your discomfort no mind, only pounding you hard and fast.";
			say "     You start to moan and grind against him as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you whore.' Your pussy squeezes and clenches around his thick, foot-long member until he finally unleashes his hot seed deep within you, painting your pussy with his sperm.[impregchance]";
			say "     Finished with you, he pulls his cock from you roughly and shoves you on your way.";
		else:
			let mchance be 4;
			if "Submissive" is listed in feats of player, increase mchance by 2;
			if "More Anal" is listed in feats of player, increase mchance by 2;
			if "MPreg" is listed in feats of player, increase mchance by 2;
			if "Less Anal" is listed in feats of player, now mchance is 0;
			if a random chance of mchance in 12 succeeds:
				say "     The victorious tiger grabs you roughly and tosses you to the ground at his feet. He puts a heavy paw at your shoulder, pushing you to the ground. 'I warned you what would happen if I caught you,' he rumbles. Above you, you can hear the sound of him unzipping his pants.";
				say "     Reaching down, he grabs you with his paws and pushes you onto all fours. One paw then holds you firmly by the neck while the other bares your bottom to him";
				if tailname of player is "Tigress Hooker" or tailname of player is "Tiger" or tailname of player is "Tigertaur":
					say ". He grabs you by your striped tail and raises your rear up. 'Here you've got this sexy tail and no juicy pussy to go with it. It just ain't right,' he grumbles, giving your ass a hard swat before getting his cock lined up with your rear.";
				else:
					say ". He gives your rear a firm swat and lines up his cock with your rear.";
				say "     Gripping your cheeks with both paws, claws out and poking into your tender flesh, he drives his feline cock into your [bodydesc of player] body, making you yowl for him. The tiger cop pays your discomfort no mind, only pounding away at you hard and fast. His throbbing member pulses and leaks precum into your abused passage.";
				say "     As he fucks your ass, you start to moan and grind against him as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you man whore.' Your anus squeezes and clenches around his thick, foot-long member until he finally unleashes his hot seed deep within you, painting your inner walls with his sperm.[mimpregchance]";
				say "     Finished with you, he pulls his cock from you roughly, wipes it across your rear and shoves you on your way.";
			else:
				say "     Unable to stand up to the large tiger any longer, he grabs you and shoves you down to your knees. He wraps his strong paw around your jaw, holding you there while he growls down at you. 'I warned you what would happen if I caught you,' he rumbles.";
				say "     As you watch, his other paw opens his uniform pants and pull out his large, hard cock. His shaft is a full foot long and human-like in form, though a deeper red in colour. Holding your head firmly, he strokes his cock against your face until its fully hard and leaking pre onto you.";
				say "     Soon you are licking at that throbbing shaft, then taking it into your eager mouth. You lick and suck on it, moaning around the tiger's large cock. With a firm hold on you, he fucks your face hard and fast, pushing his throbbing cock down your throat again and again.";
				say "     You start to moan and fondle his ballsac as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you whore.' Your lips slide over his thick, foot-long member until he finally unleashes his hot seed into your mouth and flooding your throat with his sperm.";
				say "     Finished with you, he pulls his cock from you roughly and shoves you on your way.";
	infect "Tigress Hooker";


To say beattigercop:
	say "     Your last blow sends the cop stumbling back. He pants to catch his breath, as if readying to make another charge at you. You prepare to face him, but he pulls out a canister of tear gas from out of his jacket and tosses it to the ground at your feet. The stinging gas burns your eyes and throat, forcing you to back off, giving him time to escape.";
	if a random chance of 1 in 3 succeeds and nsgained is 0:
		say "     When the gas clears, you see that the tiger had dropped his nightstick at the end of the fight. You pick it up and add it to your arsenal.";
		say "     Nightstick obtained.";
		increase carried of nightstick by 1;
		now nsgained is 1;
		increase score by 5;
	else if a random chance of 1 in 5 succeeds and nsgained is 1:
		say "     When the gas clears, you see that the tiger had dropped a can of pepperspray during the course of the fight. You pick it up and add it to your arsenal.";
		say "     Pepperspray obtained.";
		increase carried of pepperspray by 1;
		increase score by 5;


Section 8 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tiger Cop"; [Name of your new Monster]
	now attack entry is "[one of]The feline cop jabs the nightstick into your gut, causing you to double over. This sets you up for a big knee to the face![or]He cracks the nightstick hard against your upper arm, forcing you to stagger back![or]As the tiger readies another swing of his nightstick, you start to dodge, only to step into a punch from his left paw instead![or]He sends a heavy kick to your chest, sending you to the ground![or]The large tiger grabs at your arm, sinking his sharp claws into it before you manage to pull free![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beattigercop]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[losetotigercop]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[tigercopdesc]";[ Description of the creature when you encounter it.]
  	now face entry is "now a feminine tiger face and long, flowing hair. Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your pretty, blue eyes";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "curvaceous and desirable, moving with feline fluidity. Your body moves sensually with every step, drawing in the eye of all who see you. Your hands are human in shape, but with feline claws, pawpads and fur";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "ivory white fur streaked with tiger stripes that covers your";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "From your rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with [one of]concealed nervousness[or]excitement[or]lustful playfulness[at random].";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ebon feline";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts and changes, forming a short muzzle. Your new nose and muzzle twitch as your whiskers grow in. Though you cannot see them yet, somehow you know your eyes have turned a pale, icy blue. Long, luscious black hair flows down, curling lightly to give you a full and sexy locks. You can feel your ears shifting, poking free as they become cute and tiger-like"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts, growing tighter here, wider there. Your limbs and body stretch with feline flexibility as they move become those of a sexy tiger. Delicate, hand-like paws replace your current hands. They are nimble and you feel the urge to please someone with their touch. They also hide sheathed claws, waiting to sink into those who displease you. Your body starts giving off a subtle scent, like that of expensive perfume"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft fur spreads across your body. It is a white as pure as driven snow and sensually soft and silky to the touch. Even as you start to examine it, deep black stripes start to spread through it, leaving you covered in tiger-striped fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is " shivers of delight run down your spine. You can feel it growing, extending out into a long tiger-like tail. As it does, your bottom shifts and tightens into a cute, firm bubble-butt. As you rub your hand over it, you feel the urge to find a nice cock to fill it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes dark, almost black in colour. Shifting shape, it grows soft, stimulating barbs and a tapered glans. As you watch, your new shaft is bundled up in a softly-furred sheath which spreads down to cover your ballsac as well. You look forward to putting this new piece of meat to work"; [ cock change text. format as "Your cock feels funny as (your text)" ]
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
   now loot entry is "pepperspray";            [ Dropped item. Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]
   now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
   now body descriptor entry is "[one of]sultry[or]alluring[or]curvaceaous[or]flexible[at random]";
   now type entry is "feline";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
   now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
   now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
   now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
   blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
   now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 9 - Endings

when play ends:
	[force auto-change of name. Prevents problems with dirty water, etc... with endings]
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
			else:
				say "[THendingA]";
	if mqstatus is 99:						[refused the motel key hunt]
		if humanity of player > 9:				[all survivors get a standard add-on]
			say "[THending_refusal][line break]";
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingD]";
			else:
				say "[THendingA]";
	if mqstatus is 2:							[gave keys, did not accompany]
		if humanity of player > 9:				[all survivors get a standard add-on]
			say "[THending_helper][line break]";
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingE]";
			else if tailname of player is "Tigress Hooker" and facename of player is "Tigress Hooker" and skinname of player is "Tigress Hooker":			[visibly fully tigress]
				say "[THendingB]";
			else:
				say "[THendingA]";
	if mqstatus is 4:							[fled from motel hunt]
		if bodyname of player is "Tigress Hooker":
			if humanity of player is less than 10:
				say "[THendingF]";
			else if tailname of player is "Tigress Hooker" and facename of player is "Tigress Hooker" and skinname of player is "Tigress Hooker":			[visibly fully tigress]
				say "[THendingB]";
			else:
				say "[THendingA]";
	if mqstatus is 5:							[failed at motel hunt]
		say "[THBadEnd1]";
	if mqstatus is 50:						[succeeded at motel hunt]
		say "[THGoodEnd]";


to say THending_refusal:
	say "     After your rescue, you remain apprehensive for some time. You find yourself edgy with any police or the rare tiger you see, expecting the tiger cop to show up. You try to keep a low profile for a while, though you eventually relax. You have to conclude he was either taken down when he went it alone, or has more to deal with than one defiant looter he met in that fallen city.[line break]";

to say THending_helper:
	say "     Mindful of Sgt Marks's advise, you have kept your eyes open while searching through the city. You sew a false bottom to your backpack, stowing several thousand dollars in there. You also take a few choice pieces of jewelry, but just what you can wear on your person and could be claimed as being your own. You go for value over volume with them. You add an advanced laptop, finding means to power it long enough to personalize it against a cursory check.";
	say "     Unable to pass of a pack full of cell phones or other items, you are selective in what you claim as being yours before the military comes through. Even so, you do have to slip a ring here, a few hundred there[if cunts of player > 0], or shake your caboose[end if] to make sure it goes smoothly. In the end, it certainly doesn't make you rich, but it definitely helps you get your new life on the go.";
	say "     A few weeks after you've cleared from quarantine, you are contacted by Sgt Marks. He lets you know he's got the girls [']well under control['] and invites you to come by in way of thanks for all your help. He has set them up in a private brothel in a new city, protected by some corrupt contacts. You don't ask for details, instead enjoying the company of his girls from time to time, quite discretely.";

to say THendingA:		[standard survive]
	say "     As the military forces come through, rescuing those they can, they come across you and help you escape the degenerating city. You are very friendly with your rescuers and some soon accept your [']gratitude['] as soon as you are properly treated and declared non-infectious. Enjoying your romp with the soldiers, you flop around with a few of them, repaying them with sex.";
	say "     Eventually, you grow tired of them and their regimented lifestyles and, after playing with several until you are bored, you move on. You spend your life acting as [if cunts of player > 0]mistress [otherwise]illicit partner [end if]or paid lover to several wealthy businessmen over the years. It is simply a matter of finding those who are single (or unsatisfied with their wife) and who find your altered looks and ravenous appetite for sex appealing. You seem to have a talent for finding them, spotting the marks as you circulate through society. You entice gifts, clothes, jewelry, even a home and car from them, giving you a life of leisure and sex. Just what a horny feline like you needs.";

to say THendingB:		[visibly pure Tigress Hooker survive w/helper or fled]
	say "     Once you've cleared the military cordon and are declared non-infectious, you set forth on your plan, inspired to ambition by the tiger you met. You trade on your small fame as the [']bunker survivor['] and carefully embellish your tale to leave out a few [']minor details['] to make you look all the better. Your lovely, pure [if cunts of player > 0]tigress [otherwise]tiger [end if]form and white fur make you an attractive hero for the media.";
	say "     You ride the crest of fame well, manipulating it like a lover and use your hyper-sexualized body to start dating a famous [if cunts of player > 0]actor[otherwise]actress[end if]. You are with them for a time, then move on to others in Hollywood. As a socialite, you are seen with actors, actresses and directors. Your sexy, feline body turns many heads and gets you what you want. You are showered with gifts and fame, along with lots of sex to sate your body's needs. You even get a few small roles in films, which are just another gift to bring you money.";
	say "     Later life brings you a quick marriage and a quicker divorce, and long, drawn out alimony. You do a little charity work to advance transformee causes, but only appearances and endorsements to keep your fame up. Certainly your visible presence has made transformees more socially acceptable, though you care little for that, only desiring what it brings to you. You pass from lover to lover, enjoying them for a time until you tire of them and seek a new one to play with.";

to say THendingC:		[standard succumb]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Your path takes you back through one the seedier neighbourhoods one day and you encounter another tigress. Shi takes you into hir alley and you share a long, sensual romp with hir before shi takes you back to hir home at a cheap motel. You find it occupied by many other tigress streetwalkers and you're soon properly inducted into the group.";

to say THendingD:		[succumb after quest refusal]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Eventually, you come across a big, male tiger in a uniform. There is something about him that draws you to him and also urges you to run. Something... familiar, but it's so hard to remember.";
	say "     He comes up and grabs a hold of you, pulling you up against his strong chest. He is rough with you at first, putting you in your place, but soon you're rewarded with his sexy cock in your muzzle. He smiles down at you. 'I like you much better like this. A good, obedient slut.' You purr happily.";
	say "     When the military rolls in, he uses his influence as a police officer to get you out with him. He moves to a new city, letting you peddle yourself on his beat, taking most of the proceeds of your instinctual lusts. He makes contact with a shady transformee strip-club and you join their whores while he comes on as a silent partner, acting as their corrupt police contact while getting his own cut. You are happy to be so useful to your master and love your new duties.";

to say THendingE:		[succumb after helped w/keys]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Your path takes you back through one the seedier neighbourhoods and you come across several empty alleys, still strong with the scents of felines and sex. You remain in them for a time, but are drawn to continue from one to the next. Eventually, you find yourself outside an old motel. You aren't sure why, but you feel like you should be here. The lingering scent of other felines, tigresses, reinforces this.";
	say "     You wander from room to room, as if looking for someone who appears to no longer be there. You drop onto the bed in the deluxe suite at the top, mewling mournfully. Something... someone is missing from your life.";
	say "     You end up spending your days sleeping at the motel despite how sad it feels, kept there by your instincts and the lingering scents. Your evenings are spent in the fallen city's streets, turning tricks and giving in to your lusts.";
	say "     One early morning, as you make your way back, you spot a girl duck between two houses. A human girl. Something snaps inside you and you prowl the area, following her in feline silence. When she unlocks the door to the small basement apartment, you are there, pouncing her and bursting in.";
	say "     You find four largely unchanged women inside. They have small ears or muzzles showing, but little else. Confronted directly by a [if cocks of player > 0]virile[otherwise]lustful[end if] feline after trying to contain their growing urges for so long, they soon succumb to you. You make fine tigress herms out of all of them and take them back to your motel, finding it a less lonely place now.";
	say "     With their help, a few of those soldiers are lured in and soon you have a bustling motel of playful kitties to serve you. As you add to your harem, you grow larger, feeling contented in your new role as their matron. You have filled that empty feeling within yourself by taking the place of the one you longed for.";

to say THendingF:		[succumb after fleeing]
	say "     Surrendering to your new desires, you are drawn back to familiar streets and come to a motel. You aren't sure why it's familiar, but it feels like you should be here. The scent of other felines, tigresses at that, only reinforce this feeling. Spotted by the herm tigress on watch, shi takes your paw and leads you upstairs to where the matron - your matron - is. Shi has another tigress with hir, who shi's just finished filling.";
	say "     There is something familiar about hir as well. 'That's [if cunts of player > 0 and cocks of player > 0]hir[else if cunts of player > 0]her[otherwise]him[end if], matron Jackie,' shi exclaims ecstatically. 'The one I told you about. Oh, [if cunts of player > 0 and cocks of player > 0]shi[else if cunts of player > 0]she[otherwise]he[end if][']s here. I'm so happy.' Shi takes you in hir arms, purring happily as shi nuzzles you. Hir hard cock presses against your body. Shi tells you how happy shi is to see you and how nice it is you've come to join hir. Shi loves it here so much, and so will you.";
	If cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
		say "     Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls. You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron. Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants. In time, you both grow heavy with your matron's cubs, breeding more sexy tigresses.";
	else:											[NON-BREEDABLE]
		say "     Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls. You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron. Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants.";

to say THBadEnd1:		[succumb after failing at motel hunt]
	say "     When the military starts to move it, your master is ready. You have trouble following everything that is going on, but you are all kept together. You all follow his orders as best you can. He was quite stern about it, so you all obey, restraining your urges when others are examining you. Once you've all been rendered non-infectious, you are all moved again with the help of several of your master's friends.";
	say "     You are all moved to a lovely new home in another city, where you live and work as whores in his private club. His harem of tigresses tend to his needs and peddle themselves for his benefit. Always grateful for your assistance, you become a favorite of his and it is a happy life for a slut like yourself. His corrupt contacts keep the law off your backs (except when it's as a bribe to keep a corrupt official happy.)";
	If cocks of player > 0 and cunts of player > 0:					[HERM PART]
		say "     As the only white tigress sextoy in the brothel, you are a special item and you get a set of regulars who come in looking for time with you. You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out. Being his special plaything, he doesn't allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	else if cunts of player > 0:							[FEMALE PART]
		say "     As the only purely female sextoy in the brothel, as well as the only white tigress, you have a special set of regulars who enjoy partaking in your beautiful body. You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out. Being his special plaything, he doesn't allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	else:											[MALE PART]
		say "     As the only male sextoy in the brothel, as well as the only white tiger, you have a special set of regulars who enjoy pounding you in that sweet ass of yours. The feel of their hot cream in you always feels wonderful and there are always a few who come in looking to be filled by the sexy tiger. Which is good for you as your master doesn't allow you to fuck the other whores, though they will happily suck you off or fuck you. And you know your master has a special place for you any time he pounds you and fills your stripety ass.";
[Non-sterile female/herm addition]
	If cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
		say "     When your heat comes, he takes you out of trade for a few days, exclusively breeding you over and over again until he's sure his seed has taken and you'll bear his cubs. As you rub your growing belly, you smile contentedly, so happy you decided to help him back in the infected city.";
	if hellHoundLevel > 0:
		Line Break;
		say "     Lost in the lustful decadence of the whorehouse, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
		say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave tiger to the countless foul hellhounds who guard the gates of Hell. Your experience at the tiger's whorehouse has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim[if cunts of player > 0]. The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are tiger-striped, but otherwise pure hellspawn like their brethren. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time[end if].";

to say THGoodEnd:		[succumb? after succeeding at motel hunt]
	say "     When the military starts to move it, your boss is ready. He makes contact with a small scout team he'd met during the scouting missions. Being a police officer, they are inclined to believe him when he says he's been able to protect a motel full of tigresses. He leverages a few of his other shady contacts and he soon has you all discretely moved out of the city. Once the treatment to render you all non-infectious is done, your group is simply lost in the paperwork and no one is the wiser.";
	say "     Your boss gets his girls set up in a private brothel in a new city, protected by some of his corrupt contacts. With Sgt Marks still acting as a police officer, you watch over the girls for him. You act as the muscle to defend his whores. You have the run of the girls whenever you like while you manage the whorehouse he's set up. His influence keeps the local law off your back and you both enjoy breeding the horny kitties whenever you want and you live well off the proceeds of their lusts.";
	if hellHoundLevel > 0:
		Line Break;
		say "     Lost in the lustful decadence of the whorehouse, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
		say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave tiger to the countless foul hellhounds who guard the gates of Hell. Your experience at the tiger's whorehouse has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable. It is quite rough at first, a torment to go from the sex master to the sex slave, but your corrupted soul serves them regardless of your desires. At times, they take particular sport in mocking you. They also take twisted joy in reproducing particularly cruel acts you perpetrated at the brothel, casting you in the role of the victim now[if cunts of player > 0]. The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are tiger-striped, but otherwise pure hellspawn like their brethren. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time[end if].";

Tiger Cop for FS ends here.
