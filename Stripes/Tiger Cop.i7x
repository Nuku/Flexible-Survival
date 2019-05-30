Version 4 of Tiger Cop by Stripes begins here.
[Version 3.3 - Fights flagged as situations]
[Version 4.0 - Added Prostitution Quest - Qazarar]

Section 1 - Key Hunt Quest

keycollection is a number that varies.
mqstatus is a number that varies.
mqcountdown is a number that varies. mqcountdown is usually 99.
nsgained is a number that varies.
mqpickup is a number that varies.
tcopfight is a number that varies.
pquest is a number that varies.

when play begins:
	add Policeman to BadSpots of MaleList;
	add Policeman to badspots of HermList;
	add Policeman to BadSpots of FurryList;

TigerCopRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if pquest > 0 and TigerCopRoomConnection is 0:
		change the Northwest exit of (Entrance to the Red Light District) to Abandoned Storefront;
		now TigerCopRoomConnection is 1; [room connected]

[	mqstatus            ]
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

[	pquest					]
[	0 default				]
[	1 accepted				]
[	2 first client served	]
[	3 second clint done		]
[	4 third client done		]
[	5 complete				]
[	99 refused				]

Table of GameEventIDs (continued)
Object	Name
Policeman	"Policeman"

Policeman is a situation.
The sarea of Policeman is "High".

Instead of resolving a Policeman:
	project the icon of Sgt Marks;
	if mqstatus is 0:
		say "     While traveling through the streets of the ravaged city, you encounter a large tigerman wearing a partial police uniform. The jacket is left open, unable to close it over his broad, striped chest. The pants mostly fit, though the bottom of the legs are torn and leave the bottom third of his legs uncovered. To be able to fit his seven foot frame, he was probably a portly man before his transformation into the tall and muscled orange beast.";
		say "     The cop walks up to you purposefully, pulling out his nightstick and slapping his palm with it a couple of times while sizing you up. Watching your reactions, he notices that you're not a mindless monster (yet) and relaxes only slightly. 'Hold it right there. What are you doin['] roamin['] the streets during a crisis? All citizens were advised to stay at home and in shelters before all communications dropped,' he growls with authority.";
		if scenario is "Researcher":
			say "     You quickly explain to him that you are actually a researcher sent in to gather data. You tell him that you have been inoculated to be resistant and have been searching throughout the city for samples. You tell him a little about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		else if HP of Doctor Matt > 0 and HP of Doctor Matt < 100:
			say "     You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving. You tell him a little bit about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. You even add in the fact that you're working with a scientist who's investigating the cause of the outbreak. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		else:
			say "     You quickly explain to him that you were in a shelter, but were running out of supplies and had to risk leaving. You tell him a little bit about what you've seen, leaving out some details for the moment. You wouldn't want to incriminate yourself. The cop keeps a stern eye on you while you talk, making a few notes and taking down your personal information.";
		WaitLineBreak;
		say "     'Well, it sounds like you've been able to take care of yourself fairly well to this point. I've been continuin['] my patrols, but this city's pretty much gone to the dogs. Quite literally with a lot of people. I been tryin['] to keep some order by knockin['] a few heads. Takin['] a few liberties, as well,' he adds with a smug smirk.";
		if scenario is "Researcher":
			say "     'Now, since you seem like a competent [if Player is female]gal[else]guy[end if], I think I can see myself bein['] able to overlook your...' he taps his nightstick of your backpack, '...sample gatherin[']. That is, providin['] you'd be willin['] to do your civic duty and help a police officer.'";
		else:
			say "     'Now, since you seem like a competent [if Player is female]gal[else]guy[end if], I think I can see myself bein['] able to overlook your...' he taps his nightstick of your backpack, '...supply gatherin[']. That is, providin['] you'd be willin['] to do your civic duty and help a police officer.'";
		WaitLineBreak;
		say "     'There's this small pack of tigresses that have been showing up in the seedy part of town, peddling themselves and infecting others[if stiffedpayment is 1]. I can smell their scent on you. It don't pay to try to stiff a whore on her pay, my friend. Perhaps you'd like a little payback?'[line break][else if tigresswinner is 1]. I can smell some of their scent on you. It seems like you've already put one in hir place.'[else if tigressfucked is 1]. I can smell some of their scent on you. It seems shi's had hir way with you. Perhaps you'd like a little payback?'[line break][else if tigressclient is 1]. I can smell their scent on you. It seems you've already sampled their services. You won't need to worry about [']em taking your stuff if you'd be willin['] to help me out.'[else].'[end if]";
		say "     'I want to, you know, get [']em under control before things get out of hand. They seem to be based in a cheap motel in that part of town. I could use a bit more muscle to deal with [']em. If I'm goin['] to clear the place out, I need to be able to get in and lay down the law. If you can get some more keys for their motel, I'll be able to deal with [']em properly. I want a handful more so I can access all the rooms and get the whole lot of [']em.'";
		WaitLineBreak;
		say "     'So, you tell me: Have I found a concerned citizen who's willin['] to help the police or another punk looter?' he asks, slapping his nightstick in his paw meaningfully.";
		say "     [bold type]Do you agree to help the tiger cop?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:			[quest becomes active]
			LineBreak;
			now mqstatus is 1;
			say "     'Good, I figured you were right for the job. Those damn pussies are on the lookout for me now, so I need someone else to help me get the rest of those keys.' He smacks his broad chest. 'I may be in much better shape now, but they're still faster than me. I want you to bring me about five more, just to make sure we've got all the rooms. You get your ass to the Red Light District, get those keys and then report back to me, good ole Sgt Marks. Then I can lay down the law.'";
			say "[motelkeycheck]";
		else:					[quest refused / tiger cop now enemy]
			LineBreak;
			now mqstatus is 98;
			say "[line break]     With almost no warning, the officer swings his nightstick hard and fast at your head!";
			let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
			let the dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 16: ";
			if dice plus bonus > 16:
				say "     You narrowly dodge out of the way of the vicious blow.";
			else:
				decrease HP of Player by 15;
				say "     You are struck firmly across the jaw by the hard club. (15 dmg)";
			say "[line break]     'And here I thought you were smarter than that, but I guess you're just another stupid, punk looter? I guess I'll have to teach you a hard lesson,' the tiger cop growls, readying to strike again if you get up.";
			wait for any key;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Malayan Tiger Male":
					now MonsterID is y;
					break;
			now area entry is "High"; [activates Tiger Cop as a wandering monster]
			if HP of Player < 1:
				say "     That blow was too much for you and you are sent sprawling to the ground, unable to retaliate or flee.";
				say "[losetotigercop]";
			else:
				challenge "Malayan Tiger Male";
			now mqstatus is 99; [set to refused quest]
			now Resolution of Policeman is 99; [refused the quest]
			now Policeman is resolved;
	else:
		let T be a random number between one and four;
		if T is 1:
			say "     While passing through the city again, you catch sight of Sergeant Marks again. He's been standing in the shadows of a building archway and only steps out when you spot him. He comes over to you, giving you a look-over. 'I've been waitin['] for you to turn up. I hope you've had some success with your little mission, deputy,' he says with a chuckle.";
		if T is 2:
			say "     While looking through a small courtyard between several of the high-rises, you are met by the tiger cop. He is coming out of one of the trendy restaurants with a small satchel over his shoulder. Sgt Marks seems quite pleased with himself until he spots you looking at him. He growls sternly at you, 'Hey! How's you're [']community service work['] comin[']?'";
		if T is 3:
			say "     As you travel through the city, you hear the pained yip of one of the husky females. Heading over cautiously to investigate, you come face to chest with Sgt Marks as he steps out of an alley. He is zipping up his fly and you can hear the sound of someone rushing away down the alley. 'Damn bitches,' he grumbles. 'Barely worth the time to fuck, eh?' he comments. 'But forget her. How is your project comin['] along? You got some good news for me?'";
		if T is 4:
			say "     After some fruitless searching through the city, you run into the tiger policeman again. Sgt Marks is sitting on the roof of a car. Somehow, even in this city gone mad, he's managed to find a bag of store-bought doughnuts. He's got his claws sunk into several of the sugar-covered things and is stuffing them down his muzzle. He looks over at you, wolfs the last of them down without concern for your possible hunger, and then dusts the sugar grains from his paws. 'Did you have any luck yet? We can't wait for this forever.'";
		say "[motelkeycheck]";

to say motelkeycheck:
	say "     Taking a quiet tally in your head, you have collected [carried of motel key] key(s).";
	if carried of motel key > 4:			[5 or more keys to proceed]
		say "     [bold type]Do you tell him you have found enough keys?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[line break][givekeys]";
		else:
			LineBreak;
			say "     You shake your head and tell him you don't have the motel keys for him yet. He growls softly and points off towards the seedier part of town with his nightstick. 'Just you do your work and get them for me. Hop to it.'";
	else:
		say "     You shake your head and tell him you don't have the motel keys for him yet. He growls softly and points off towards the seedier part of town with his nightstick. 'Just you do your work and get them for me. Hop to it.'";
		now Resolution of Policeman is 1; [quest started]


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
	now Policeman is resolved;
	increase score by 40;
	increase XP of Player by 10;
	say "     The feline policeman opens the car and digs around in what appears to be the torn remains of a cop's uniform in the passenger's seat. 'Here, take this. You're gonna need it,' he says meaningfully as he passes you a nightstick. 'If you've got any last minute stuff to take care of or an equipment stash wherever you're holed up, you go get your gear and be back here pronto. I want you to come along on this, but I'm only willin['] to wait 24 hours before I move out. And if somethin['] holds you up, there'll be a key in the lip of the bumper. I should be able to leave somethin['] for ya in the trunk and I'll get in touch after the heat dies down.'";
	say "     Nightstick obtained.";
	increase carried of nightstick by 1;
	now Resolution of Policeman is 2; [Gave Sgt Marks the keys]


Section 2 - Tiger Cop character and Police Car location

Table of GameRoomIDs (continued)
Object	Name
Police Car	"Police Car"

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

Table of GameCharacterIDs (continued)
object	name
Sgt Marks	"Sgt Marks"

Sgt Marks is a man. Sgt Marks is in Police Car.
The description of Sgt Marks is "     The tiger cop is quite large and impressively strong looking. His police jacket hangs open, unable to close around his broad, striped chest. His pants mostly fit, thought the bottom of the legs are torn open and leave the bottom third of his leg uncovered. To be able to fit his seven foot frame, he was probably a portly man before his transformation into the tall and muscled orange beast. His tail thrashes about with barely contained excitement as he checks over his equipment and supplies as he gets ready to enact his plan.".
The conversation of Sgt Marks is { "WhoresWhoresWhoresWhores!" }.
sgtmarkstalk is a number that varies.
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
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		now mqstatus is 3;
		now Sgt Marks is nowhere;
		say "[line break][motelquest]";
	else if mqcountdown < 8:
		LineBreak;
		say "     'The offer's still open a little longer. I'm moving out in [ ( 9 - mqcountdown ) times 3 ] hours, with or without you.'";
	else:
		LineBreak;
		say "     'It's now or never. I'll be moving out real soon now.'";

An everyturn rule:
	if mqstatus is 2 and mqcountdown < 10:
		increase mqcountdown by 1;
		if mqcountdown is 9:
			now Sgt Marks is nowhere;
			say "[line break]     [bold type]Your 24 hours are up. Sgt Marks has left without you.[roman type]";
			now mqcountdown is 10;

the fuckscene of Sgt Marks is "     'Smarten up and save it for those fine pussies. They'll be all ours once this is over.'";


Section 3 - Motel Quest

to say motelquest:
	say "     Having agreed to join him, you follow the tiger cop across the city, traveling to the motel where the tigress hookers are holed up. On the way, he doesn't talk much, just telling you that there are quite a few of them, but they're never all at the motel at once. There are always some on duty, as it were. You both will split the rooms, taking care of any tigresses in there and then you two can double-team the others as they return home.";
	say "     The intimidating tiger seems to keep the other creatures at bay and you are not harassed on your journey. Perhaps word in the neighborhood has gotten around that he's trouble. You remain on edge, but aside from a few creatures fleeing from the sight of him, you are not interrupted.";
	WaitLineBreak;
	say "     Coming up to the motel, you can see that it is an old, run down place. Well past its prime and never much of a looker, it clearly got by on business by the hour. Given the madness in the city, you can easily see one of the prostitutes there turning into a tigress and infecting anyone else unfortunate enough to be there.";
	say "     From your vantage point in a nearby vacant building, the cop goes over his plan. The motel has two stories, with a metal staircase leading up to the second level rooms. There are just 6 rooms to a floor, so you'll both be able to get through them quickly. He tells you that, once you've taken out the first sentry in the parking lot, he'll go through the ground floor rooms and you'll do the upstairs set. That way neither of you will be taken down by the other half banding together.";
	WaitLineBreak;
	if "Stealthy" is listed in feats of Player:
		say "     You tell him that you can jump the first guard by surprise if he'll help deal with hir after that. Using your Stealth abilities, you stick to the shadows and go at the building from behind. You slink with your back to the wall until you move around behind the tigress. Pouncing hir, you cover hir muzzle to keep hir quiet while the cop rushes out to help you subdue hir. Once shi's out cold, you stash hir around the corner and he motions for you to head up the stairs.";
		say "     Bonus: 20 pts and 10 XP awarded.";
		increase XP of Player by 10;
		increase score by 20;
	else:
		say "     You head over to the tigress, acting as if you intend to be a client until you get close to hir, then engage hir in combat. While you fight the tigress, you can see Sergeant Marks head to the nearest room on the ground floor.";
		LineBreak;
		now mqfightresult is 3; [set to fled by default]
		now inasituation is true;
		challenge "Malayan Tiger Herm";
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
	LineBreak;
	now mqfightresult is 3; [set to fled by default]
	now inasituation is true;
	challenge "Malayan Tiger Herm";
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
	LineBreak;
	now mqfightresult is 3; [set to fled by default]
	now inasituation is true;
	challenge "Malayan Tiger Herm";
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
	LineBreak;
	now mqfightresult is 3; [set to fled by default]
	now inasituation is true;
	challenge "Malayan Tiger Herm"; [mqstatus 6 will adjust stats to Matron level]
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
	say "     That last blow sends you reeling and, with a call out, you are pounced by a pair of tigresses, who tear off your clothes. You are dragged in front of the large tigress matron in charge of the felines. Shi slams you down onto the bed and immediately starts pounding hir large cock into your [if Player is female]pussy[else]ass[end if]. You try to resist, but are too weakened and end up quickly succumbing to your arousal. Your mind starts to give, feeling the lustful urge to enjoy the life of sex these felines live.";
	WaitLineBreak;
	say "     There is some commotion at the door which you hardly notice before you feel a painful shock run through you as the matron stiffens atop you. Shi is pushed aside by the cop, who smiles down at you. You start to get up, drawn between thanking him for the rescue and lusting for your hero. His pants are open and his stiff rod is slick with cum and juices, drawing your lustful gaze to it as he holsters his stun gun. From the sticky juices coating his meat, it seems he's already shown a few of them who's in charge.";
	say "     'I knew you'd make a fine distraction for [']em,' he chuckles. He pushes you down overtop of the stunned matron. Grabbing your ass, he slowly sinks his cock into you, making you moan in satisfaction at being filled once again. He thrusts several times before withdrawing and pushing his thick meat into the tigress below you, who has started to come of out of hir daze. Hir hard shaft is pressed between you both as the cop alternates fucking each of you, turning you both into sexy feline whores.";
	say "     Around you, the other tigresses fawn over the tiger cop, their new master, while pleasuring themselves. When he's finally cum in the ex-matron, he switches to pounding you exclusively. While that hard, feline meat pounds into you, you lap his seed from the new tigress hooker and suck hir cock, getting a hot load in both your mouth and your [if Player is female]pussy[else]ass[end if].";
	say "     Through the night this orgy continues, always welcoming any returning girls in kind. Your new master fucks the horny felines over and over to assert his dominance while you and the other tigresses play with each other while awaiting your next turn with him. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	WaitLineBreak;
	say "[totalTH]"; [systematically change all body parts and names to Tigress Hooker, with gender exclusions for feats.]
	say "[THpostchange]";
	decrease score by 25;
	now humanity of Player is 0;
	follow the turnpass rule;
	end the story saying "You become another whore for the corrupt cop.";
	now battleground is "void";


to say totalTH:
	if Libido of Player < 70:
		now Libido of Player is 70;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:	[puts Tigress Hooker as lead monster...]
		choose row y in Table of Random Critters;
		if Name entry is "Malayan Tiger Herm":
			now MonsterID is y;
			break;
	now TailName of Player is "Malayan Tiger Herm";
	now FaceName of Player is "Malayan Tiger Herm";
	now SkinName of Player is "Malayan Tiger Herm";
	now BodyName of Player is "Malayan Tiger Herm";
	now CockName of Player is "Malayan Tiger Herm";
	attributeinfect;
	now tail of Player is tail entry; [...to make for quicker and accurate copying of TH appearance.]
	now Face of Player is face entry;
	now Skin of Player is skin entry;
	now Body of Player is body entry;
	now Cock of Player is cock entry;
	if "Male Preferred" is listed in feats of Player:
[		say "(Male Preferred, locked results)";]
		if Player is not male:			[Minimum of TH standard or greater]
			now Cock Count of Player is 1;
		if Cock Length of Player < 9:
			now Cock Length of Player is 9;
		if Ball Size of Player < 5:
			now Ball Size of Player is 5;
	else if "Female Preferred" is listed in feats of Player:
[		say "(Female Preferred, locked results)";]
		if Player is not female:
			now Cunt Count of Player is 1;
		if Cunt Depth of Player < 12:
			now Cunt Depth of Player is 12;
		if Cunt Tightness of Player < 4:
			now Cunt Tightness of Player is 4;
		now Nipple Count of Player is 2;
		if Breast Size of Player < 4:
			now Breast Size of Player is 4;
	else if "One Way" is listed in feats of Player:
[		say "(One Way, locked results)";]
		if Player is not male:			[Minimum of TH standard or greater]
			now Cock Count of Player is 1;
		if Cock Length of Player < 9:
			now Cock Length of Player is 9;
		if Ball Size of Player < 5:
			now Ball Size of Player is 5;
		if Player is not female:
			now Cunt Count of Player is 1;
		if Cunt Depth of Player < 12:
			now Cunt Depth of Player is 12;
		if Cunt Depth of Player < 4:
			now Cunt Tightness of Player is 4;
		if Nipple Count of Player < 2:
			now Nipple Count of Player is 2;
		if Breast Size of Player < 4:
			now Breast Size of Player is 4;
	else:
		now Cunt Count of Player is 1;
		now Cock Count of Player is 1;
		now Nipple Count of Player is 2;
		if Cock Length of Player < 9:			[Minimum of TH standard or greater]
			now Cock Length of Player is 9;
		if Ball Size of Player < 5:
			now Ball Size of Player is 5;
		if Cunt Depth of Player < 12:
			now Cunt Depth of Player is 12;
		if Cunt Depth of Player < 4:
			now Cunt Tightness of Player is 4;
		if Breast Size of Player < 4:
			now Breast Size of Player is 4;

to say THpostchange:
	if Player is herm:		[herm]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress herm like the others. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your wet pussy and throbbing cock ache with a need to be played with, but for a price.";
	else if Player is male:				[male]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress femme. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your throbbing cock aches with a need to be played with, but for a price.";
	else:								[female]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a sexy tigress femme. You are a raven-haired beauty with white fur and dark stripes. Your scent, which started like exotic perfume, fades to the cheap and tawdry one. Your wet pussy aches with a need to be played with, but for a price.";
	say "     That is, except for your master. For you are his to play with, to use, sell or share as he sees fit. The girls are all his now and you all take turns working the streets while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city. You and the others keep each other entertained while he is away, but always eagerly offer yourselves to him when he returns.";


Section 5 - Won at Motel

to say mqsuccess:
	now mqstatus is 50;
	say "     With their matron beaten, the tigresses all look at you expectantly. The fallen tigress, and soon the others as well, start mewling and displaying themselves for the attention of the strong [if Player is herm]herm[else if Player is male]male[else]female[end if] who has beaten them.";
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
	end the story saying "You become the muscled guard for the tigresses.";
	now battleground is "void";

to say MQvictory:						[Victory]
	if Player is herm:		[herm]
		say "     You set yourself on a cute pair of tigresses, pounding one while the other fingerfucks your pussy. You motion for another pair to tend to your breasts with those rough tongues of theirs. Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck. While you're pounding away, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first pair, you push them aside and pull another up from the bed. You press hir to the wall and pound into hir tight cunt. Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly. Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole. Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one.";
		say "     You push your next tigress to lie back on the bed and you straddle hir cock, taking it deep inside you. You ride hir hard and fast while stroking both yourself and another feline's cock to cum all over your current playmate. Your fast pace makes hir cum with a loud mrowl of delight, filling you with hir hot cum.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	else if Player is male	:			[male]
		say "     You set yourself on a cute pair of tigresses, pounding one while the other sucks your balls. Eager to please their new masters, they work extra hard, giving you a wonderfully long and pleasurable fuck. While you're pounding away, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first pair, you push them aside and pull another up from the bed. You press hir to the wall and pound into hir tight cunt. Hir inner walls grip and squeeze around you like a pro, building you back to climax quickly. Not wanting to let hir take control that way, you pull out of hir and sink into hir tailhole. Shi mrowls in surprise and cums heavily onto the wall before you fill hir butt with your seed and move on to the next one. Shi is made to mate with another tigress on the bed beneath hir, driving your cock into the middle one and forcing hir to thrust into the one below.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";
	else:						[female]
		say "     You grab one of the females sitting by the bed, pulling hir face between your legs, ordering hir to eat you out. Shi sets hirself to the task eagerly, running hir raspy tongue over your wet folds until you soak hir muzzle with your juices. During your oral stimulation, you order another pair of tigresses to your breast, licking and suckling your nipples and a third to your asshole. While you're enjoying those rough tongues on your erogenous zones, you're treated to the show of watching the cop screwing the matron hard and fast while several of the other girls fawn over both of them. As you watch, the ex-matron quickly becomes another small, mewling tigress like the others.";
		say "     When you're done with your first set of kitties, you push them aside and pull another up from the bed. You press hir to the wall and start pumping your fingers into hir tight cunt. Hir inner walls squeeze around you, tugging at them for more. You get hir good and worked up, then pull out before shi can climax. You toss hir back onto the bed and straddle hir cock, taking it deep inside you. You ride hir hard and fast, making hir cum with a loud mrowl of delight. You're on to the next in moments, riding that cock while stroking two others onto the tigress you're riding.";
		say "     Through the night this orgy continues, always welcoming any returning girls in kind. You and Marks fuck them over and over to assert your dominance. Somehow you both seem to have boundless stamina that night, fueled by your lust and ignited by your infection.";

to say BTchangeover:
	[systematically change all body parts and names to Big Tiger / Big Tigress, with gender exclusions for feats.]
	if Libido of Player < 50:
		now Libido of Player is 50;
	if "Female Preferred" is listed in feats of Player:
		[if multi-cock, reduce to 1. Cannot become less female.]
		if Cock Count of Player > 1:
			now Cock Count of Player is 1;
	else if "One Way" is listed in feats of Player:
		[player can't become less female, but can increase in maleness]
		if Player is not male:
			now Cock Count of Player is 1;
		if Cock Length of Player < 12:
			now Cock Length of Player is 12;
		if Ball Size of Player < 6:
			now Ball Size of Player is 6;
	else if "Male Preferred" is listed in feats of Player:
		[Player can't diminish in maleness. Pussy, if any is eliminated]
		if Player is not male:
			now Cock Count of Player is 1;
		if Cock Length of Player < 12:
			now Cock Length of Player is 12;
		if Ball Size of Player < 6:
			now Ball Size of Player is 6;
		if Player is female:
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
			now Nipple Count of Player is 0;
			now Breast Size of Player is 0;
	else:
		[Player freely becomes pure male]
		now Cock Count of Player is 1;
		if Cock Length of Player < 12:
			now Cock Length of Player is 12;
		if Ball Size of Player < 6:
			now Ball Size of Player is 6;
		if Player is female:
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
			now Nipple Count of Player is 0;
			now Breast Size of Player is 0;
	if Player is female:
		now TailName of Player is "Big Tigress";
		now FaceName of Player is "Big Tigress";
		now SkinName of Player is "Big Tigress";
		now BodyName of Player is "Big Tigress";
		now CockName of Player is "Big Tigress";
		now scalevalue of Player is 4;
		now bodydesc of Player is "powerful";
		now bodytype of Player is "feline";
		now SleepRhythm of Player is 0;
		now tail of Player is "From your muscled rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with excitement.";
		now Face of Player is "a feminine tiger face and long, flowing hair. Your hair is raven black and curls lightly at the ends as it drapes across your shoulders, framing your steely-blue eyes";
		now Skin of Player is "ivory white fur streaked with tiger stripes that covers your";
		now Body of Player is "powerfully built with a feminine flair and feline fluidity of motion. Your body moves sensually with every step, but with hidden power. Your hands are human in shape, but with feline claws, pawpads and fur";
		now Cock of Player is "ebon feline";
	else:
		now TailName of Player is "Big Tiger";
		now FaceName of Player is "Big Tiger";
		now SkinName of Player is "Big Tiger";
		now BodyName of Player is "Big Tiger";
		now CockName of Player is "Big Tiger";
		now scalevalue of Player is 4;
		now bodydesc of Player is "powerful";
		now bodytype of Player is "feline";
		now SleepRhythm of Player is 0;
		now tail of Player is "From your muscled rear emerges a long, white tail with black stripes banding the fur. It flicks behind you with excitement.";
		now Face of Player is "a male tiger head with a strong jaw and a predatory gaze. With a fully feline head, you have fur, stripes and whiskers cover your stern muzzle";
		now Skin of Player is "ivory white fur streaked with tiger stripes that covers your";
		now Body of Player is "a powerfully built, masculine form. You move with predatory strength and confidence, as well as a feline's smooth grace. Your hands are human in shape, but with feline claws, pawpads and fur";
		now Cock of Player is "ebon feline";

to say BTpostchange:						[New BT form]
	if Player is herm:		[herm]
		say "     As the orgy continues, your form changes to best suit your new role with these fine girls and your boss. Your body becomes that of a strong, powerful tigress herm. You are muscled, yet voluptuous to keep all these girls in line. With your strength, you can easily pin down any recalcitrant girl and fuck hir or ride hir into lustful obedience as you see fit. Your white fur is like the snow and its stripes like the night. You are much larger now, almost as big as your boss, Marks.";
		say "     The girls look to you for protection as their guard now while he is out making arrangements for when you will all leave this shabby motel behind and move to greener pastures out of the city.";
	else if Player is male:				[male]
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

Section 7 - Prostitution Quest

Table of GameRoomIDs (continued)
Object	Name
Abandoned Storefront	"Abandoned Storefront"

Abandoned Storefront is a room. It is private.
The description of Abandoned Storefront is "     If you're seeing this, something went wrong.".
[Set this empty room west of the Red Light District, and catch players entering with an event.]
[Preferably figure out how to have a direction without an empty room set, like on the campus. If so, do that.]

instead of going to Abandoned Storefront:
	say "     [bold type]Are you ready to go undercover as a whore for Sergeant Marks?[roman type][line break]";
	if Player consents:
		say "     When you enter the abandoned storefront, the first thing you see is Sergeant Marks leaning back in a chair, his feet propped up on the counter in front of him. He looks up at you, and his bored expression quickly becomes a wild grin. 'If it isn't my favorite whore. Now that you're here, it's time for you to get to work.' He slowly gets to his feet, and takes a few steps closer to you. 'I've got your [if pquest is 1]first[else]next[end if] client in the back. We shouldn't keep [if pquest is 2]them[else]him[end if] waiting. And remember, play along, or it's all for nothing.' He grins, at odds with his words, and [if pquest is 4]looks at you expectantly[else]leads you through a door into another room[end if].";
		WaitLineBreak;
		if pquest is 4:
			say "     Before you head in, you take a moment to think about what you're doing. You haven't heard anything from the tiger cop about his investigation, and at this point, you're starting to suspect there may not even be one. If he has been lying, then you've been whoring yourself to gang members for no good reason, and even worse, you've started to enjoy it more than you'd care to admit. You can't go through that door if you want to hold on to any of your former dignity. The only thing you can do is leave otherwise you'll be resigning yourself to working as a whore for no other reason than the fact you enjoy it.";
			say "     [bold type]Do you back out, or embrace being a whore?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Flee";
			say "     ([link]N[as]n[end link]) - Get to work";
			LineBreak;
			if Player consents:
				say "     You turn around and leave the storefront, unwilling to face what lies in the back room, and what would drive you to go back there. Maybe you'll come to terms with this one way or another, but not right now. You ignore Marks calling out to you, and find yourself standing back out in entrance to the Red Light district.";
			else:
				say "     You decide that you enjoy being a whore for these gangsters far too much to stop, and head into the back room along with Marks once again, this time with no hesitation.";
				say "[turning tricks]";
		else:
			say "[turning tricks]";
	else:
		say "     You decide against it for the moment, and return to the main street of the Red Light District.";

to say turning tricks:
	if pquest is 1:
		say "     When you arrive in the back room, you can clearly tell this is where you'll be working. The entire thing is set up like a scene from a love hotel, something that you realize is more accurate than not. The room seems well prepared for the task of a whore servicing their clients, with an oversized bed, shelves that are clearly packed with various sexual aids, and more besides. You briefly wonder how Sergeant Marks was able to set up this entire thing, but are interrupted by who you assume is going to be your first client. A German shepherd, though one with an ornate leather jacket, is sitting on the edge of the bed. He seems to perk up as the cop leads you into the room.";
		say "     Before the canine has a chance to speak, Sergeant Marks interjects. 'Here's the whore I was telling you about, pal. They're still a bit new at this, but no need for you to go easy on them just because of that. They're the one who signed up to get fucked, after all.' The tiger cop gives an exaggerated wink to the seated gang member, who responds with a broad grin. His approval is clear by the sight of his shaft starting to harden as he leers at you. 'Now, you two have fun. We can talk after you're finished.' Marks turns to leave the room, quickly swats you on the ass, and then steps out. With him gone, it's now just you and the gang member you're supposed to be a whore for. Steeling yourself for the act, you hope that it'll all be worth it when the cop takes them down.";
		WaitLineBreak;
		say "     You try your hardest to suppress your nerves, and to do your best impression of a prostitute. You know that it isn't true, but you have to make sure that this client believes it is. Mentally, you brace yourself, before attempting your best seductive voice, and asking him how he wants to do this. 'I don't have too much time, so we'll keep it simple. Get on your knees and suck my cock, whore.' He leans back a bit further, leaving his almost-hard member easily accessible. You get on your knees in front of him, and prepare to swallow both your pride and his dick. Slowly, you get to work, taking a hold of his shaft in one hand, slowly stroking it to full hardness. Soon enough the canine cock is standing at the ready, mere inches before you. Rather than hesitate any longer, you lean forward and let the tip enter your mouth.";
		say "     Without prompting, you start to sink deeper onto the canine hardness, slowly starting to bob up and down. Your efforts get results quickly, as the gangster starts very quickly panting and moaning. Emboldened by his pleasure, you start increasing your speed, attempting to add more variety to your technique. His reactions show that your attempts to bring him to a climax are rapidly approaching completion. Finally he gives in, and just as his cock starts throbbing in your mouth, he pulls you off, causing the jets of seed to cover your face instead of fill your mouth. Before you can completely process the change, the criminal lets out a sigh of relief, before standing up, and grinning at you. 'That wasn't half bad, for a fresh whore.' He starts to walk towards the door, his shaft softening, but he pauses right before he leaves. 'By the way, that's a good look for you. You should keep it - consider it a tip.' After everything that happened, it takes you a while to collect yourself, as well as what remains of your dignity.";
		increase pquest by 1;
	else if pquest is 2:
		say "     This time when you are led into the back room, instead of the German shepherd gang member, there are two new faces. Despite how degrading you know this is going to be, you're feeling distinctly less nervous about acting the part of a whore in the back room. You know it's for a good cause, and even more than that, you have a bit of practice under your belt. Shaking yourself from your thoughts, you look more closely at the new clients you'll be servicing. The first thing you notice is that both of them are wearing ornate jackets, much like that of your previous client, likely some sort of uniform. The first of the two is a bear-man, larger than average, with thick brown fur covering his entire frame. Apart from the jacket, he wears a simple pair of torn shorts, a poorly concealed bulge in the front. The second is much smaller, and seems to be a mall rat, though he looks somehow shiftier than any of the others you've seen. The jacket is his only clothing, leaving his partially hard member visible.";
		say "     This time, Sergeant Marks has nothing to say, and simply nods and grins to the two, before leaving you alone with your newest clients. The mall rat smiles wickedly at you, and then gestures to his much larger friend. 'How about you start by taking care of Bruce with your mouth, why don't you? He could really use the relief.' The recently introduced Bruce unzips his strained shorts, revealing that the mall rat is very correct, as below his hardening endowment are a pair of excessively full-looking balls. Despite your reluctance, you get in front of the bear before then getting on your knees, knowing you have to do this job, so that Marks can do his. You glance up and see an expectant look on his face, reminding you of the task at hand.";
		WaitLineBreak;
		say "     Wasting no time, you lower your head down to his shaft and begin bobbing up and down, putting your ever-growing oral skills to use. You stay that way for a while, simply working on the ursine member, occasionally using a free hand to massage his large balls as well. However, before you make too much progress on pleasing Bruce, he speaks up. 'Hey, Mikey, no need for you to wait around like that, join in! I don't think this slut minds, do you?' You pull back off his dick, and shake your head. 'See? Now get back there, buddy. And you, maybe focus on my balls a little more, eh?' You do your duty and comply, moving down the shaft, and burying your face in his sack. You lick and suck at them as the mall rat, Mikey, moves around behind you. You feel the tip of his shaft lay across your ass, for a moment, before it slides closer to your entrance. Knowing what's coming, you brace yourself.";
		say "     Even when you were expecting it, the sensation of his cock splitting you open is jarring, causing you to gasp. Unperturbed, the bear in front of you pulls your face back up against his balls, and at the same time the rat behind you starts to pump in and out slowly. They continue to work you over, rocking you back and forth between the two gangsters. They take their pleasure from you at both ends, leaving you little control. Behind you, Mikey continues to thrust, picking up his pace gradually as time goes on, the sound of his hips slapping against your ass getting louder and more frequent. In the front, you're made to serve the bear cock lavishly, alternating your focus between the balls and the shaft.";
		say "     Finally, it seems the two have started to have enough, as they both start to moan and grunt more loudly than before. The mall rat starts to thrust wildly, losing his pace, and the bear starts jerking his hips unevenly, leaving you gagging slightly on his shaft. Then, at last, it happens. The dick buried in your rear starts throbbing, and you feel a warmth start filling you. Moments after that climax, the larger of the cocks releases, starting to unleash much more forceful jets of cum down your throat. You swallow as best as you can, but just as you're starting to be overwhelmed by the amount, he pulls back, letting the last few spurts land across your face and hair instead. His friend matches him, pulling out of you right after, followed by a feeling of several more strings of gooey substance landing across your back. The two both pull fully away from you, leaving you panting on the ground, and then head for the door, sharing a high five as they leave. As you're left to clean yourself up, you feel a lot less like an undercover agent then you did a few minutes ago, and a lot more like a whore.";
		increase pquest by 1;
	else if pquest is 3:
		say "     Once more you are brought into the back room, something you are growing far more used to, and more comfortable with. Perhaps too comfortable, but you know it's going to be for a good cause. Putting this gang behind bars, it's got to be worth it. And while you're unsure of how much more Sergeant Marks could possibly need, you have to trust him to use you to take them down. You focus yourself once more on the task behind you, and look to see your next client. Unlike the previous members of the gang you've met, and indeed most infected, he is fully dressed. Apart from the signature jacket, he is wearing slacks with a belt, a pair of nice-looking shoes, and a plain shirt. Once you focus again on the person wearing the clothes, you realize that the latest client is distinctly equine. The thought of what he likely has hiding in his pants leaves you a tad more nervous than you were before.";
		say "     Before you even have time to wonder about your newest client, the tiger cop is already out of the room, leaving the two of you alone. The equine gang member smirks at you standing there, just waiting to be used as his whore. You almost wonder why you keep doing this, letting yourself get used like this, even for a good cause, but quickly shut down that train of thought. You can worry after you service him. You start walking over towards the client, when he gestures for you to stop. Confused, you do as he says. 'No, not like that. I think you'd look much better crawling over to me. Would you mind?' Well, if the client wants you to debase yourself by crawling on the floor, then that's what you're going to need to do, even if it's humiliating. You drop to your knees and start crawling, the knowledge that you're doing this willingly bringing you no comfort. As you cross the floor on all fours, the equine continues to berate you, leaving you to stew further in humiliation. 'Yeah, just like that, you slut. Crawl right over to my cock like the whore you are.'";
		WaitLineBreak;
		say "     Finally you reach him, more ready than ever to pleasure him if it means you don't need to hear him any more. Unfortunately, despite the fact that you're now kneeling in front of him, he doesn't let up. 'Alright, just remember, I'm paying for you, and that means until this is over, I am your master, and you'll act like it. Now, get over here and start taking care of my cock, like I know you want to. After all, you never would have signed up for this if you didn't love this, would you?' Rather than answer, you start following his orders, leaning in and unzipping his pants so that you can start properly servicing his large shaft. The moment his hard member is completely out in the open, you lock your lips around the tip, and start to bob up and down. The gang member above you smirks at the sight of you swallowing his dick, like the whore you are. 'That's what I thought. It takes a certain kind of person to go after a cock this enthusiastically. You really are a total slut.'";
		say "     You flush in response to the constant degradation from the well-dressed gangster, and redouble your efforts. Despite what it seems, you know that your only reason for doing this is to take these gangsters down, and nothing else. There's no way you're falling into the role of a two bit whore more than necessary, that's for sure. The only reason you're being so enthusiastic is because the happier the clients are, the easier it will be for Sergeant Marks, and the sooner you'll be done with this entire business. However, you're soon pulled away from his crotch. 'Alright, enough of that. Now turn around so I can fuck you properly.' It takes a moment to understand what he's asking for, but you can't stop now. You turn yourself around, and wait for him to take your ass.";
		WaitLineBreak;
		say "     The equine rests the tip of his large cock against your rear, and then starts sliding it in far sooner than you expected. The sensation is completely different from the last time, with his shaft stretching you out far more than the mall rat did, leaving you feeling completely full as it slowly penetrates you. Once he hilts fully into you, you close your eyes, and just take in the sensations that being stuffed with this much dick cause. However, you aren't given much time to appreciate it before the gangster starts to pump in and out, causing the pleasure to skyrocket, and as he thrusts faster and harder, you just keep climbing higher and higher. Finally, he slams into you one last time, his hips slamming against your ass, and you can feel his member start to throb and twitch, unloading surge after surge of cum into you. This causes you to finally peak yourself, leaving you to bask in the pleasure as he pulls out of you.";
		say "     You can see him put his clothes back on and leave the room, while you remain on the floor, dripping cum, and feeling far less sure of yourself. After all, these have been some of the most intense moments you've ever felt, and all of them happened when you were being treated as nothing more than a whore. When you finally clean yourself up and go to leave, you comfort yourself with the fact that this is all for a reason. You're not doing this because you like being a whore, just because it's for a good cause. Right?";
		increase pquest by 1;
	else if pquest is 4:
		say "     When you enter the back room alongside Marks, you're surprised by the newest client. Unlike the rather more common infections of the previous gang members, this one seems to be some sort of draconic creature, and is larger than even the bear. When he sees that you and Marks have walked in, he grins widely and genuinely, though it looks slightly out of place on his scaly visage. 'So I finally get the chance to try out the new whore all my boys have been talking about, hmm? You really know how to treat a guy, Marks!' The tiger cops smiles back, though with an expression closer to his usual smirk than the dragon's open smile. 'Well, nothing less than the best for my good buddy. I'll leave you to it, then. Have fun!' He gives a quick wave of his hand, and starts to turn away before he's interrupted by the client. 'Hey, why don't you stick around? There's no better way to bond than to fuck a whore into the ground together, after all. What do you say we seal the deal?'";
		say "     'If you insist, I'd be happy to.' Even though you're looking at the gangster, you can tell Marks is smirking at the thought of sharing you with the large dragon, and you find yourself excited by the thought as well. In no time at all, you find yourself on all fours, with the tiger cop behind you, and the client in front, ready to service the pair of them. You can feel Marks['] sizable dick resting on your rear, waiting to push into you. Just as you start to take the draconic member into your mouth, the cop decides to go for it, the strength of his thrust pushing you forward, and forcing more of the cock you were handling down your throat. The pair quickly start to pump in and out, causing you to bounce back and forth between their shafts as they fuck you.";
		WaitLineBreak;
		say "     The spitroast you're in the middle of continues to grow more intense, with both of your current partners changing up their methods. Sometimes they go faster, sometimes harder, always just different enough that you can never get used to it before they change again. They're treating you like a whore to be used as they please, and nothing could make you happier. Eventually they start to lose the careful pacing they had kept the entire time, beginning to hammer in and out of you at a feverish pace, Marks grabbing your hips for extra force as he does so. You just bask in the feeling of being stuffed with cock repeatedly as they use you, doing what you can to make it feel even better for them.";
		say "     At last, the two shafts start throbbing, and you know your time is almost up, something that's almost saddening. The tiger cock in your ass is the first to erupt, spraying your rear passage with several jets of his release, leaving you feeling somewhat more satisfied. Shortly after, the draconic cock in your mouth also starts to climax, the larger member also unleashing a significantly larger load, flooding your mouth and throat with his seed. You swallow as much as you can, but some of the cum trickles out the edges of your mouth regardless, until finally the tide abates. Marks and the client both high five above you before pulling out completely, leaving you to lie on the floor, full of cum from both ends. The two walk out the door, arms over each other's shoulders, chatting amicably, ignoring you. As you rest there, recovering from the ordeal, you realize this is exactly where you want to be.";
		increase pquest by 1;
	else if pquest is 5: [Eventually Random chance to see one of several plain prostitution scenes]
		say "     You put yourself to work servicing clients for Marks once more.";



Section 8 - Monster Desc for Tiger Cop

to say tigercopdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if hardmode is true and level of Player > 8, let debit be level of Player - 8; [Boss hard mode growth rates]
	now HP entry is 90 + ( debit * 6 );
	now monsterHP is 90 + ( debit * 6 );
	now wdam entry is 12 + ( ( 4 * debit ) / 11 );
	now lev entry is 8 + debit;
	if mqstatus is 98:
		say "     The feline policeman growls as he looms over you, ready to take another swing. The large tigerman appears to be done with talking and is quite intent on fighting. You dodge back a step and ready your weapon to try and deal with the animalistic cop. Unlike your other foes, he's not fallen into being an instinctual creature of lust, so you're unsure what to expect.";
	else:
		say "     As you travel through the city, you come across the corrupted cop once again. His open police jacket cannot contain his broad chest and his seven foot height leaves his pants covering only two-thirds of his legs. He growls at the back of his throat as he moves up quickly and raises his nightstick. The corrupted cop, enhanced with the strength and agility of a predator, but still sane, is a force to be reckoned with. [one of]'I was wonderin['] if when I'd find you again, punk. Time for a little police brutality.'[or]'I will teach you to respect my authority here, punk.'[or]'I was just thinkin['] I could use a little [']stress relief[']. Come're, little toy.'[or]'I am the law here, punk.'[at random]";


to say losetotigercop:
	if mqstatus is 98:
		say "     Unable to stand up to the large tiger any longer, he grabs you roughly and shoves you face down onto a mound of rubble. 'You couldn't just do what you were told. The world is filled with punks like you these days. No respect for authority,' he growls as he holds you down with one paw and bares your bottom with the other.";
		if Player is female:
			say "     'Well, I'll teach you a lesson you won't soon forget,' he says as he slides his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of the nightstick at your pussy, making you shiver. He teases you with it briefly, getting you wet despite yourself, before sinking it into you. He pounds you hard and fast with it, making your body shudder until you finally climax. He sprays his cum across your ass, and then removes the weapon from your aching pussy. He picks you up roughly and gives you a hard shove. 'Get your dumb ass out of here. And if I catch you again, you'll get the real thing.'";
		else:
			say "     'Well, I'll teach you a lesson you won't soon forget,' he says as he slides his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of the nightstick at your asshole, making you shiver. He teases you with it briefly and you try your best to relax it before he sinks it into you, using only a little spit for lubrication. He pounds you hard and fast with it, making your body shudder until you finally climax. He sprays his cum across your ass, and then removes the weapon from your aching hole. He picks you up roughly and gives you a hard shove. 'Get your dumb ass out of here. And if I catch you again, you'll get the real thing.'";
	else if tcopfight is 4 and pquest is 0:
		say "     The tiger cop looks like he is about to get rough with you, but seems to get some other idea. 'You know, maybe we got off on the wrong foot here. You may be a disrespectful punk, but I'll give you one more chance to help out an officer of the law, since I have somethin['] that would work a lot better with someone like you. So how about you stay right there and keep your ears open.' Having lost to the cop, you're in no position to do anything but listen to his offer, so you nod as he goes on. 'You see, there's this gang of criminals we've been after for a long time, and it turns out they're still operatin['] out in the city, even after all of this. To make it worse, they're some of the ones who haven't completely lost their minds, so they're as dangerous as ever.'";
		say "     'Somebody needs to figure out what they're up to and stop [']em, and that's me. There's no way they'd just let a cop in, so I need to go in undercover, and that means convincin['] them that I'm just their kinda lowlife. They're the kind who deal in everything, drugs, sex, the works, so I'm gonna act like I'm in the same kinds of business. And unlike most of the punks around here, these guys prefer all of their fun to be with willing partners - usually whores, which is where you come in. If you play the part of my whore, we could work our way into their plans, and shut [']em down. You'd be doing a good thing for once, punk. Are you in?'";
		say "     [bold type]Will you volunteer to go undercover as a whore?[roman type][line break]";
		if Player consents:
			say "     Despite some reservations, you decide to help the tiger cop with his mission. When you tell him, he grins broadly. 'Great. I thought it would be right up your alley, and I guess I was right.' His grin seems to grow more predatory, and he wastes no time before continuing. 'Well, now I've got to go and start gettin['] things ready, so we'll have to start your new job later. When you're ready, come meet me down in the [bold type]Red Light District[roman type], and I'll have a place set up.' The cop starts walking away, but looks over his shoulder at you before he leaves. 'By the way, I'm Sergeant Marks. Make sure you come prepared to be the best whore you can be.'";
			now pquest is 1;
			change the Northwest exit of (Entrance to the Red Light District) to Abandoned Storefront;
			[now Abandoned Storefront is west of Entrance to the Red Light District;]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Malayan Tiger Male":
					now MonsterID is y;
					break;
			now area entry is "Nowhere"; [deactivates Tiger Cop as a wandering monster]
		else:
			say "     'Bah, I knew you were a no good punk.' The tiger cop shakes his head, seeming almost disappointed. 'Just leave, away from my turf. I won't be so nice the next time, so you better watch your back.' Not one to question your luck, you leave while you have the chance, wary of encountering the cop again.";
			now pquest is 99;
	else:
		if a random chance of 1 in 3 succeeds and ( player is female or anallevel > 1 ):
			say "     'It looks like you need another lesson in why you shouldn't mess with me,' he says as he grabs you roughly and shoves you face down onto a mound of rubble. 'Punks like you are nothin['] but trouble. Should've gotten a good, hard spankin['] from your dad to beat some respect into you.' With you pinned down, the tiger holds you down with one paw and bares your ass with the other.";
			if Player is female:
				say "     He runs his nightstick across your bare bottom and gives a solid slap with it across your rear, making you cry out in surprise and pain. After another stinging slap, he runs his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of his nightstick against your pussy, making you shiver. He works it across your folds, sliding it back and forth, getting you wet despite yourself. Shifting its position, he thrusts it into your cunt, making you groan at the sudden, hard intrusion. The tiger cop pounds you hard and fast with it, making your [bodydesc of Player] body shudder until you finally cum. Laughing at this, the tiger sprays his seed across your ass before removing the weapon from your aching pussy.";
				say "     Wiping the slick rod across your ass, he gives you another hard swat, making you cry out. 'Get your dumb ass out of here. I might not go so easy on you next time,' he growls.";
			else:
				say "     He runs his nightstick across your bare bottom and gives a solid slap with it across your rear, making you cry out in surprise and pain. After another stinging slap, he runs his nightstick across your cheek before moving it back. As he grips you tightly, you can feel the cool touch of his nightstick against your asshole, making you shiver. He rubs it against your pucker and you try your best to relax before he drives it into you with only a little spit as lube. You groan at the sudden, hard intrusion as it thrusts into you and starts sliding it back and forth[if Player is male and player is submissive], getting you hard despite yourself[end if]. The tiger cop pounds you hard and fast with it, making your [bodydesc of Player] body shudder[if Player is male and player is submissive] until you finally cum[end if]. Laughing at this, the tiger sprays his seed across your ass before removing the weapon from your aching asshole.";
				say "     Wiping the warm rod across your ass, he gives you another hard swat, making you cry out. 'Get your dumb ass out of here. I might not go so easy on you next time,' he growls.";
		if Player is female:
			[puts Tigress Hooker as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Malayan Tiger Herm":
					now MonsterID is y;
					break;
			say "     Unable to stand up to the large tiger any longer, he grabs you and shoves you down onto a nearby car. Pressing your face to the dirty hood, he growls in your ear. 'I warned you what would happen if I caught you,' he rumbles. With a strong paw firmly at your neck, the other bares your bottom and moves you into position.";
			say "     You hear him unzip, then there's the feel of a large, hard cock against your bottom. He grinds against you a few times, getting fully hard before sinking it firmly into you. Your [bodydesc of Player] body shudders from the sudden intrusion, but he pays your discomfort no mind, only pounding you hard and fast.";
			say "     You start to moan and grind against him as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you whore.' Your pussy squeezes and clenches around his thick, foot-long member until he finally unleashes his hot seed deep within you, painting your pussy with his sperm.[impregchance]";
			say "     Finished with you, he pulls his cock from you roughly and shoves you on your way.";
		else:
			let mchance be 4;
			if Player is submissive, increase mchance by 2;
			if anallevel is 3, increase mchance by 2;
			if Player is mpreg_ok, increase mchance by 2;
			if anallevel is 1, now mchance is 0;
			if a random chance of mchance in 12 succeeds:
				say "     The victorious tiger grabs you roughly and tosses you to the ground at his feet. He puts a heavy paw at your shoulder, pushing you to the ground. 'I warned you what would happen if I caught you,' he rumbles. Above you, you can hear the sound of him unzipping his pants.";
				say "     Reaching down, he grabs you with his paws and pushes you onto all fours. One paw then holds you firmly by the neck while the other bares your bottom to him";
				if TailName of Player is "Malayan Tiger Herm" or TailName of Player is "Tiger" or TailName of Player is "Tigertaur":
					say ". He grabs you by your striped tail and raises your rear up. 'Here you've got this sexy tail and no juicy pussy to go with it. It just ain't right,' he grumbles, giving your ass a hard swat before getting his cock lined up with your rear.";
				else:
					say ". He gives your rear a firm swat and lines up his cock with your rear.";
				say "     Gripping your cheeks with both paws, claws out and poking into your tender flesh, he drives his feline cock into your [bodydesc of Player] body, making you yowl for him. The tiger cop pays your discomfort no mind, only pounding away at you hard and fast. His throbbing member pulses and leaks precum into your abused passage.";
				say "     As he fucks your ass, you start to moan and grind against him as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you man whore.' Your anus squeezes and clenches around his thick, foot-long member until he finally unleashes his hot seed deep within you, painting your inner walls with his sperm.[mimpregchance]";
				say "     Finished with you, he pulls his cock from you roughly, wipes it across your rear and shoves you on your way.";
			else:
				say "     Unable to stand up to the large tiger any longer, he grabs you and shoves you down to your knees. He wraps his strong paw around your jaw, holding you there while he growls down at you. 'I warned you what would happen if I caught you,' he rumbles.";
				say "     As you watch, his other paw opens his uniform pants and pull out his large, hard cock. His shaft is a full foot long and human-like in form, though a deeper red in color. Holding your head firmly, he strokes his cock against your face until its fully hard and leaking pre onto you.";
				say "     Soon you are licking at that throbbing shaft, then taking it into your eager mouth. You lick and suck on it, moaning around the tiger's large cock. With a firm hold on you, he fucks your face hard and fast, pushing his throbbing cock down your throat again and again.";
				say "     You start to moan and fondle his ballsack as the powerful male fucks you, losing yourself in the sex. 'That's a good slut,' he rumbles. 'Take it, you whore.' Your lips slide over his thick, foot-long member until he finally unleashes his hot seed into your mouth and flooding your throat with his sperm.";
				say "     Finished with you, he pulls his cock from you roughly and shoves you on your way.";
	infect "Malayan Tiger Herm";
	if tcopfight < 4:
		increase tcopfight by 1;


To say beattigercop:
	if tcopfight is 4 and pquest is 0:
		say "     With the tiger cop reeling from the fight, you're caught by surprise when he holds his hands out in a gesture of surrender. 'Hey, maybe we got off on the wrong foot here. Maby ewe could still work together, yeah? What do you say about helping out an officer of the law? I have somethin['] that would work a lot better with someone like you.' With you in control of the situation, you see no reason not to at least hear him out. 'You see, there's this gang of criminals we've been after for a long time, and it turns out they're still operatin['] out in the city, even after all of this. To make it worse, they're some of the ones who haven't completely lost their minds, so they're as dangerous as ever.'";
		say "     'Somebody needs to figure out what they're up to and stop [']em, and that's me. There's no way they'd just let a cop in, so I need to go in undercover, and that means convincin['] them that I'm just their kinda lowlife. They're the kind who deal in everything, drugs, sex, the works, so I'm gonna act like I'm in the same kinds of business. And unlike most of the punks around here, these guys prefer all of their fun to be with willing partners - usually whores, which is where you come in. If you play the part of my whore, we could work our way into their plans, and shut [']em down. You'd be doing a good thing for once, punk. Are you in?'";
		say "     [bold type]Will you volunteer to go undercover as a whore?[roman type][line break]";
		if Player consents:
			say "     Despite some reservations, you decide to help the tiger cop with his mission. When you tell him, he grins broadly. 'Great. I thought it would be right up your alley, and I guess I was right.' His grin seems to grow more predatory, and he wastes no time before continuing. 'Well, now I've got to go and start gettin['] things ready, so we'll have to start your new job later. When you're ready, come meet me down in the [bold type]Red Light District[roman type], and I'll have a place set up.' The cop starts walking away, but looks over his shoulder at you before he leaves. 'By the way, I'm Sergeant Marks. Make sure you come prepared to be the best whore you can be.'";
			now pquest is 1;
			change the Northwest exit of (Entrance to the Red Light District) to Abandoned Storefront;
			[now Abandoned Storefront is west of Entrance to the Red Light District;]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Malayan Tiger Male":
					now MonsterID is y;
					break;
			now area entry is "Nowhere"; [deactivates Tiger Cop as a wandering monster]
		else:
			say "     The cop looks surprised that you turned down his offer, and perhaps even disappointed, but he quickly regains his composure. 'I guess you were just a useless, good for nothing punk, no matter how good you are in a scrap. That's the last time I try being nice.' Before you have a chance to be fully alert again, the cop spins on his heel and sprints away, managing to get out of sight. You doubt he'll be any friendlier the next time you run into him.";
			now pquest is 99;
	else:
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
		if tcopfight < 4:
			increase tcopfight by 1;

Section 9 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Tiger"; [name of the overall species of the infection, used for children, ...]
	add "Malayan Tiger Male" to infections of FelineList;
	add "Malayan Tiger Male" to infections of FurryList;
	add "Malayan Tiger Male" to infections of NatureList;
	add "Malayan Tiger Male" to infections of MaleList;
	add "Malayan Tiger Male" to infections of BarbedCockList;
	add "Malayan Tiger Male" to infections of SheathedCockList;
	add "Malayan Tiger Male" to infections of BipedalList;
	add "Malayan Tiger Male" to infections of TailList;
	now Name entry is "Malayan Tiger Male"; [Name of your new Monster]
	now enemy title entry is "Malayan Tiger Male"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The feline cop jabs the nightstick into your gut, causing you to double over. This sets you up for a big knee to the face![or]He cracks the nightstick hard against your upper arm, forcing you to stagger back![or]As the tiger readies another swing of his nightstick, you start to dodge, only to step into a punch from his left paw instead![or]He sends a heavy kick to your chest, sending you to the ground![or]The large tiger grabs at your arm, sinking his sharp claws into it before you manage to pull free![at random]";
	now defeated entry is "[beattigercop]";
	now victory entry is "[losetotigercop]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[tigercopdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a beautiful tiger-like appearance, its short muzzle and feline eyes giving your features an exotic predatory cast, and your slightly rounded tiger ears complete the look, making it seem like almost the perfect blend of tiger features and human features"; [You have a (your text) face."]
	now body entry is "lean and lined with corded muscle, giving you a somewhat exotic look, as you balance easily on your digitigrade tiger paws, your human-like hands with their tiger-like claws tipping your fingers complete the look"; [Your Body is (your text)"]
	now skin entry is "[one of]tiger striped[or]tiger furred[or]soft furred[or]orange and black striped[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a long, tiger-like tail extending from just above your ass, lashing back and forth in excitement with every movement."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feline[or]Tiger[or]barbed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a pleasurable stretching sensation comes over your face, as your teeth begin to sharpen and length, and your jaw extends outward and the muscles rearrange themselves into the powerful configuration of a tiger. Your nose twitching as it flattens out, newly discovered scents washing over you as it merges into your new muzzle. Your eyes narrow into slitted cat-like pupils, and your ears finishing their adjustment to their new place on top of your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles tighten underneath your skin, twisting and cording and arranging themselves in a more feline manner. You stumble as your legs shift underneath you, your ankles stretching upwards as your feet expand and change, shifting your balance to the balls of your new paw-like feet, and the rest of the leg rearranges itself into a partially digitigrade stance, causing you to lean forward slightly"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it shudders and seems to shift on its own, thick orange and black tiger fur pushing out in soft pleasurable waves of change all over your body"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your ass grows powerfully muscled, and a long sleek tiger tail erupts outwards from your tailbone, soon it is lashing around behind you in long natural motions, almost feeling as if it had always been a part of you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts and tapers to a soft point, short barbs slowly sprouting along its length, as the skin of your belly stretches out to pull it up close to your body, and wraps it in a proper furry tiger's sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;
	now lev entry is 8; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, start nowhere, High if active]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Width of female sex infection will try and give you ]
	now libido entry is 100; [ Amount player Libido will go up if defeated ]
	now loot entry is "pepperspray"; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]alluring[or]curvaceous[or]flexible[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is "Malayan Tiger Herm"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 10 - Endings

when play ends:
	[force auto-change of name. Prevents problems with dirty water, etc... with endings]
	[Does not resolve issues with children/use of descriptive names during the game, but better than nothing]
	if BodyName of Player is "Malayan Tiger Male":
		now BodyName of Player is "Malayan Tiger Herm";
	if TailName of Player is "Malayan Tiger Male":
		now TailName of Player is "Malayan Tiger Herm";
	if FaceName of Player is "Malayan Tiger Male":
		now FaceName of Player is "Malayan Tiger Herm";
	if SkinName of Player is "Malayan Tiger Male":
		now SkinName of Player is "Malayan Tiger Herm";
	if CockName of Player is "Malayan Tiger Male":
		now CockName of Player is "Malayan Tiger Herm";
	if mqstatus is 0 or mqstatus is 1:				[no motel quest / incomplete]
		if BodyName of Player is "Malayan Tiger Herm":
			if humanity of Player < 10:
				say "[THendingC]";
			else:
				say "[THendingA]";
	if mqstatus is 99:						[refused the motel key hunt]
		if humanity of Player > 9:				[all survivors get a standard add-on]
			say "[THending_refusal][line break]";
		if BodyName of Player is "Malayan Tiger Herm":
			if humanity of Player < 10:
				say "[THendingD]";
			else:
				say "[THendingA]";
	if mqstatus is 2:							[gave keys, did not accompany]
		if humanity of Player > 9:				[all survivors get a standard add-on]
			say "[THending_helper][line break]";
		if BodyName of Player is "Malayan Tiger Herm":
			if humanity of Player < 10:
				say "[THendingE]";
			else if TailName of Player is "Malayan Tiger Herm" and FaceName of Player is "Malayan Tiger Herm" and SkinName of Player is "Malayan Tiger Herm":			[visibly fully tigress]
				say "[THendingB]";
			else:
				say "[THendingA]";
	if mqstatus is 4:							[fled from motel hunt]
		if BodyName of Player is "Malayan Tiger Herm":
			if humanity of Player < 10:
				say "[THendingF]";
			else if TailName of Player is "Malayan Tiger Herm" and FaceName of Player is "Malayan Tiger Herm" and SkinName of Player is "Malayan Tiger Herm":			[visibly fully tigress]
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
	say "     Mindful of Sgt Marks['] advise, you have kept your eyes open while searching through the city. You sew a false bottom to your backpack, stowing several thousand dollars in there. You also take a few choice pieces of jewelry, but just what you can wear on your person and could be claimed as being your own. You go for value over volume with them. You add an advanced laptop, finding means to power it long enough to personalize it against a cursory check.";
	say "     Unable to pass of a pack full of cell phones or other items, you are selective in what you claim as being yours before the military comes through. Even so, you do have to slip a ring here, a few hundred there[if Player is female], or shake your caboose[end if] to make sure it goes smoothly. In the end, it certainly doesn't make you rich, but it definitely helps you get your new life on the go.";
	say "     A few weeks after you've cleared from quarantine, you are contacted by Sgt Marks. He lets you know he's got the girls [']well under control['] and invites you to come by in way of thanks for all your help. He has set them up in a private brothel in a new city, protected by some corrupt contacts. You don't ask for details, instead enjoying the company of his girls from time to time, quite discretely.";

to say THendingA:		[standard survive]
	say "     As the military forces come through, rescuing those they can, they come across you and help you escape the degenerating city. You are very friendly with your rescuers and some soon accept your [']gratitude['] as soon as you are properly treated and declared non-infectious. Enjoying your romp with the soldiers, you flop around with a few of them, repaying them with sex.";
	say "     Eventually, you grow tired of them and their regimented lifestyles and, after playing with several until you are bored, you move on. You spend your life acting as [if Player is female]mistress[else]illicit partner[end if] or paid lover to several wealthy businessmen over the years. It is simply a matter of finding those who are single (or unsatisfied with their wife) and who find your altered looks and ravenous appetite for sex appealing. You seem to have a talent for finding them, spotting the marks as you circulate through society. You entice gifts, clothes, jewelry, even a home and car from them, giving you a life of leisure and sex. Just what a horny feline like you needs.";

to say THendingB:		[visibly pure Tigress Hooker survive w/helper or fled]
	say "     Once you've cleared the military cordon and are declared non-infectious, you set forth on your plan, inspired to ambition by the tiger you met. You trade on your small fame as the [']bunker survivor['] and carefully embellish your tale to leave out a few [']minor details['] to make you look all the better. Your lovely, pure [if Player is female]tigress[else]tiger[end if] form and white fur make you an attractive hero for the media.";
	say "     You ride the crest of fame well, manipulating it like a lover and use your hyper-sexualized body to start dating a famous [if Player is female]actor[else]actress[end if]. You are with them for a time, then move on to others in Hollywood. As a socialite, you are seen with actors, actresses and directors. Your sexy, feline body turns many heads and gets you what you want. You are showered with gifts and fame, along with lots of sex to sate your body's needs. You even get a few small roles in films, which are just another gift to bring you money.";
	say "     Later life brings you a quick marriage and a quicker divorce, and long, drawn out alimony. You do a little charity work to advance transformee causes, but only appearances and endorsements to keep your fame up. Certainly your visible presence has made transformees more socially acceptable, though you care little for that, only desiring what it brings to you. You pass from lover to lover, enjoying them for a time until you tire of them and seek a new one to play with.";

to say THendingC:		[standard succumb]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Your path takes you back through one the seedier neighborhoods one day and you encounter another tigress. Shi takes you into hir alley and you share a long, sensual romp with hir before shi takes you back to hir home at a cheap motel. You find it occupied by many other tigress streetwalkers and you're soon properly inducted into the group.";

to say THendingD:		[succumb after quest refusal]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Eventually, you come across a big, male tiger in a uniform. There is something about him that draws you to him and also urges you to run. Something... familiar, but it's so hard to remember.";
	say "     He comes up and grabs a hold of you, pulling you up against his strong chest. He is rough with you at first, putting you in your place, but soon you're rewarded with his sexy cock in your muzzle. He smiles down at you. 'I like you much better like this. A good, obedient slut.' You purr happily.";
	say "     When the military rolls in, he uses his influence as a police officer to get you out with him. He moves to a new city, letting you peddle yourself on his beat, taking most of the proceeds of your instinctual lusts. He makes contact with a shady transformee strip-club and you join their whores while he comes on as a silent partner, acting as their corrupt police contact while getting his own cut. You are happy to be so useful to your master and love your new duties.";

to say THendingE:		[succumb after helped w/keys]
	say "     Surrendering to your new desires, you wander the streets of the fallen city, turning tricks for whatever reward you can get, or just for the fun of it. You don't really have a fixed location, just wandering the city and soliciting several of those you encounter. Your path takes you back through one the seedier neighborhoods and you come across several empty alleys, still strong with the scents of felines and sex. You remain in them for a time, but are drawn to continue from one to the next. Eventually, you find yourself outside an old motel. You aren't sure why, but you feel like you should be here. The lingering scent of other felines, tigresses, reinforces this.";
	say "     You wander from room to room, as if looking for someone who appears to no longer be there. You drop onto the bed in the deluxe suite at the top, mewling mournfully. Something... someone is missing from your life.";
	say "     You end up spending your days sleeping at the motel despite how sad it feels, kept there by your instincts and the lingering scents. Your evenings are spent in the fallen city's streets, turning tricks and giving in to your lusts.";
	say "     One early morning, as you make your way back, you spot a girl duck between two houses. A human girl. Something snaps inside you and you prowl the area, following her in feline silence. When she unlocks the door to the small basement apartment, you are there, pouncing her and bursting in.";
	say "     You find four largely unchanged women inside. They have small ears or muzzles showing, but little else. Confronted directly by a [if Player is male]virile[else]lustful[end if] feline after trying to contain their growing urges for so long, they soon succumb to you. You make fine tigress herms out of all of them and take them back to your motel, finding it a less lonely place now.";
	say "     With their help, a few of those soldiers are lured in and soon you have a bustling motel of playful kitties to serve you. As you add to your harem, you grow larger, feeling contented in your new role as their matron. You have filled that empty feeling within yourself by taking the place of the one you longed for.";

to say THendingF:		[succumb after fleeing]
	say "     Surrendering to your new desires, you are drawn back to familiar streets and come to a motel. You aren't sure why it's familiar, but it feels like you should be here. The scent of other felines, tigresses at that, only reinforce this feeling. Spotted by the herm tigress on watch, shi takes your paw and leads you upstairs to where the matron - your matron - is. Shi has another tigress with hir, who shi's just finished filling.";
	say "     There is something familiar about hir as well. 'That's [if Player is herm]hir[else if Player is female]her[else]him[end if], matron Jackie,' shi exclaims ecstatically. 'The one I told you about. Oh, [if Player is herm]shi[else if Player is female]she[else]he[end if][']s here. I'm so happy.' Shi takes you in hir arms, purring happily as shi nuzzles you. Hir hard cock presses against your body. Shi tells you how happy shi is to see you and how nice it is you've come to join hir. Shi loves it here so much, and so will you.";
	if Player is female and "Sterile" is not listed in feats of Player:	[BREEDABLE]
		say "     Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls. You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron. Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants. In time, you both grow heavy with your matron's cubs, breeding more sexy tigresses.";
	else:											[NON-BREEDABLE]
		say "     Watching you both snuggle, the matron grows hard again and mounts you, welcoming you among hir girls. You and the lovely Miss Marks remain a couple of playmates, eager to please one another and your matron. Once a pair who tried to seize hir girls, you have both been reduced to hir special slaves, to be fucked whenever shi wants.";

to say THBadEnd1:		[succumb after failing at motel hunt]
	say "     When the military starts to move it, your master is ready. You have trouble following everything that is going on, but you are all kept together. You all follow his orders as best you can. He was quite stern about it, so you all obey, restraining your urges when others are examining you. Once you've all been rendered non-infectious, you are all moved again with the help of several of your master's friends.";
	say "     You are all moved to a lovely new home in another city, where you live and work as whores in his private club. His harem of tigresses tend to his needs and peddle themselves for his benefit. Always grateful for your assistance, you become a favorite of his and it is a happy life for a slut like yourself. His corrupt contacts keep the law off your backs (except when it's as a bribe to keep a corrupt official happy).";
	if Player is herm:					[HERM PART]
		say "     As the only white tigress sextoy in the brothel, you are a special item and you get a set of regulars who come in looking for time with you. You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out. Being his special plaything, he doesn't allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	else if Player is female:							[FEMALE PART]
		say "     As the only purely female sextoy in the brothel, as well as the only white tigress, you have a special set of regulars who enjoy partaking in your beautiful body. You bring in a lot for your strong, virile master and you are always happy when he rewards your service by fucking your addled brains out. Being his special plaything, he doesn't allow the other tigresses to fuck you, though they are happy to play with you in other ways.";
	else:											[MALE PART]
		say "     As the only male sextoy in the brothel, as well as the only white tiger, you have a special set of regulars who enjoy pounding that sweet ass of yours. The feel of their hot cream in you always feels wonderful and there are always a few who come in looking to be filled by the sexy tiger. Which is good for you as your master doesn't allow you to fuck the other whores, though they will happily suck you off or fuck you. And you know your master has a special place for you any time he pounds you and fills your stripey ass.";
[Non-sterile female/herm addition]
	if Player is female and "Sterile" is not listed in feats of Player:	[BREEDABLE]
		say "     When your heat comes, he takes you out of trade for a few days, exclusively breeding you over and over again until he's sure his seed has taken and you'll bear his cubs. As you rub your growing belly, you smile contentedly, so happy you decided to help him back in the infected city.";
	if hellHoundLevel > 0:
		LineBreak;
		say "     Lost in the lustful decadence of the whorehouse, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
		say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave tiger to the countless foul hellhounds who guard the gates of Hell. Your experience at the tiger's whorehouse has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim[if Player is female]. The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are tiger-striped, but otherwise pure hellspawn like their brethren. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time[end if].";

to say THGoodEnd:		[succumb? after succeeding at motel hunt]
	say "     When the military starts to move it, your boss is ready. He makes contact with a small scout team he'd met during the scouting missions. Being a police officer, they are inclined to believe him when he says he's been able to protect a motel full of tigresses. He leverages a few of his other shady contacts and he soon has you all discretely moved out of the city. Once the treatment to render you all non-infectious is done, your group is simply lost in the paperwork and no one is the wiser.";
	say "     Your boss gets his girls set up in a private brothel in a new city, protected by some of his corrupt contacts. With Sgt Marks still acting as a police officer, you watch over the girls for him. You act as the muscle to defend his whores. You have the run of the girls whenever you like while you manage the whorehouse he's set up. His influence keeps the local law off your back and you both enjoy breeding the horny kitties whenever you want and you live well off the proceeds of their lusts.";
	if hellHoundLevel > 0:
		LineBreak;
		say "     Lost in the lustful decadence of the whorehouse, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
		say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave tiger to the countless foul hellhounds who guard the gates of Hell. Your experience at the tiger's whorehouse has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable. It is quite rough at first, a torment to go from the sex master to the sex slave, but your corrupted soul serves them regardless of your desires. At times, they take particular sport in mocking you. They also take twisted joy in reproducing particularly cruel acts you perpetrated at the brothel, casting you in the role of the victim now[if Player is female]. The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are tiger-striped, but otherwise pure hellspawn like their brethren. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time[end if].";

Tiger Cop ends here.
