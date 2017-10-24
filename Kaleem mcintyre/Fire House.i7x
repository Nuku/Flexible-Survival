Fire House by Kaleem mcintyre begins here.

"Adds a new area to Flexible Survival with an NPC."

Section 1 - FireStation

Fire Station 86 is a room. It is fasttravel.

The description of Fire Station 86 is "At the far end of the downtown red light district area stands a red brick firehouse rising up almost virtuously in protest of the depravity that has currently taken hold of the once prominent metropolis. Immaculate as the day she had been first opened, the numbers 86 gleam almost smugly across the front side of the building. [if Kenaztalk is 0]From the way the garage doors are void of the usual sticky mess of cum, milk and other fluids it would seem as though someone has been taking especially good care of the place. Wondering if that said someone is still inside, and hoping that if they are they have kept some of their humanity intact, you walk over to the single garage door and then bang on the front to try and get somebody's attention. A minute or two later the large metal door rolls up, allowing you entrance. Entering into the cool building, you find that the firehouse is exactly as you would have imagined it to be[else]Wondering how Kenaz is doing you head for the door of the firehouse and then knock on the door. It takes less than a minute for the other man to come open the door for you[end if].".

North of Fire Station 86 is Firehouse.

the scent of Fire Station 86 is "The station smells relatively clean. Odd considering the things happening with the city as of now.".


Section 1a - Firehouse

KTO is a number that varies.
Up of Firehouse is Sleeping Quarters.
The description of Firehouse is "[firehousedesc]".

To say firehousedesc:
	If kto is 0:
		say "[firehousedesc0]";
	else if kto is 1:
		say "[firehousedesc1]";
	else if kto is 2:
		say "[firehousedesc2]";

to say firehousedesc0:
	Say "Dominating the main area of the firehouse are two bright red fire trucks waiting to be used by their servicemen. Off to the left side of the building is a large, gleaming golden pole that leads up to an open hole in the ceiling, the structure accompanied by a small flight of stairs to permit easy access to the floor above. A darkened office sits off to the side by one of the unused fire trucks, and a bunch of chairs have been set up next to the garage doors surrounding a large table covered with playing cards. Over by the right side of the building, a number of firefighter suits are hanging off of coat hooks next to several metal lockers.[if findwires is 2 and fixedgens is 2] The entire area is kept lit by some of those Japanese lanterns that you sometime see during summer festivals at the State Fair, so that would explain why everything is so bright despite the power of the city not working properly.[end if] Because of the light, it's easy to see a large number of rolled up hoses being kept in place along an empty expanse of wall. Right above the coiled tubes lay several ladders that have been stacked together on a high-end metal shelf.";

to say firehousedesc1:
	Say "With Kenaz being turned into a Dalmatian along with the rest of the firefighters the firehouse has fallen in standards slightly. The fire trucks are not as polished as they had once been. The metal lockers stand open with clothing draped on or over them. The floor is slightly gunky with the residue of cum stains on them and there are traces of dog hair all over the place. While not exactly as bad as it could be the firehouse literally screams [bold type]bachelor's pad[roman type] now. Kenaz looks to be trying to keep things straight by sweeping, dusting and moping, but the green eyed firefighter seems to be constantly getting distracted...usually by the way of the others coming over to try and fuck him at the most inopportune times.";

to say firehousedesc2:
	Say "Unlike the former [']dog house['] the firehouse had been once before when everyone was just settling themselves back into the fire station the inside of the building now stands with some respect again. The entire building is almost immaculate, save for a few small stray bits of Dalmatian fur littering the floor, a constant given the building's occupants. The red fire engines shine proudly under the lights coming from the [if findwires is 2 and fixedgens is 2]florescent lamps up above[else]Japanese lanterns set into place around the firehouse[end if], having just recently been washed and waxed. The firefighter's lockers have also been washed off, but are now kept shut instead of just dangling open as they once had been. The chairs and table that had been set in front of the firehouse's twin garage doors have been moved over out of the way. And, to top everything off, the other Dalmatians are now mostly running mock drills or else doing something constructive with their time while underneath the guidance of the newly transformed Dalmatian herm.";

Instead of sniffing Firehouse:
	Say "The firehouse smells like [if kto < 1]a clean, but lonesome building[else if kto is 1]wet Dalmatian mixed with cum[else if kto is 2]a well maintained building that's being kept up to code[end if].";

Invent of Firehouse is { "water bottle" };


Section 2 - Kenaz

Kenaztalk is a number that varies.
KTO is a number that varies.
Kenazaroused is a number that varies.
rsc is a number that varies.

Kenaz is a man. Kenaz is in FireHouse.
The description of Kenaz is "[Kenazcurrentform]".
The conversation of Kenaz is { "Be on alert!" }.

instead of linkactioning Kenaz when rsc >= 2:
	say "Possible Actions: [link]talk[as]talk Kenaz[end link], [link]smell[as]smell Kenaz[end link], [link]fuck[as]fuck Kenaz[end link], [link]assist[as]assist Kenaz[end link] [line break]";

instead of sniffing Kenaz:
	if KTO is 0:
		say "The fully human male smells somewhat smoky as well as anxious, though this is quite strange since there haven't been in fires for him to fight by himself as of late.";
	else if KTO is 1:
		say " The pervasive scent of horny canine covers the half Dalmatian/half human almost completely.";
	else if KTO is 2:
		say "The former submissive firefighter now smells both virile and dominant, like a true alpha should.";

To say Kenazcurrentform: [his description at each stage, comments on what each stage is linked to will be in these brackets]
	if KTO is 0: [Kenaz in the firehouse when you first come into contact with him.]
		say "[Kenazform0]";
	else if kto is 1:
		say "[Kenazform1]";
	else if kto is 2:
		say "[Kenazform2]";

to say Kenazform0:
	say "Walking around the somewhat darkened area of the firehouse is the young firefighter Kenaz. Dark, unruly auburn hair covers the half Asian/half American's tanned head down to neck. Along the back of the firefighter's head a long ponytail sways lightly as Kenaz swings his head back and forth while listening out for trouble. At five foot eleven inches tall, Kenaz possesses bright green eyes, a somewhat thin, but muscled form and is wearing a pair of dark navy jeans, white shirt, and has a firefighter helmet on. The latter is kept on as a good luck charm for the firefighter, or so he says. Unlike many people within the city Kenaz is both completely human and fully male, if the bulge inside of the firefighter's pants and lack of breasts anywhere on him are any indication of things. Odd considering everything that's going on, but then again...";

to say Kenazform1:
	say "At 6'3, two hundred and fifty pounds of solid muscle Kenaz has become the personification of a true stud dog now that he has embraced his canine self and no longer fighting against his newfound instincts. The Dalmatian firefighter wags his thin white tail around joyfully while barking playfully at you as you come up to him. It's easy to see that despite his breathtaking transformation the other is still a firefighter at heart as Kenaz still has on his old fire helmet, which now possess holes for his new floppy ears to protrude through, while he [one of]busies himself with speaking with one of his packmates about drills or something[or]wrestles with some of the other guys on the floor while the others cheer him on[or]sweeps the floor while growling at some of the Dals about cleaning up their fur[or]tries not to lose at the game of poker he and three others are playing[or]grumbles at some of the other guys mating on the floor of the firehouse[or]waxes down the fire trucks[at random]. From the looks of his now completely naked form though it looks as though Kenaz has been [italic type]playing around[roman type] with his some of his pack [one of]because he is walking with a slight limp[or]since the former human's tail end is matted down with something sticky looking[or]because his red rocket is stuck completely out of his sheath and dribbling pre onto the thoroughly mopped floor[or]since the green eyes of the former human glimmer with the fires of unquenchable lust while he stares at one of his pack mates[or] because Kenaz is playfully rubbing his hand along the rumps of one of the other firefighters[or]since the Dal looks at you with newfound eagerness in his green eyes[at random], yet the other doesn't seem to be as appalled by this.";

to say Kenazform2:
	say "Having been attacked by the Shemale Smooth Collie from before, and subsequently taken forcefully by the twelve foot tall canine while out on the street, Kenaz now supports a new pussy to go along with his former masculine body. However, instead of this making the new herm into a slutty submissive bitch Kenaz seems to have gained a bit more ire about himself as he clearly has taken over dominating all of the other Dal boys inside of the firehouse. It's easy to tell that the former passive male is now a force to be reckoned with as whenever the other passes by the tails of the rest of the firefighters all go to curling downwards. Not to say that this is a bad thing though, because the fire station looks as though it has never been cleaner. Maybe this transformation has been a good thing for Kenaz? You're not sure, but it has made his bedroom antics very much different from before.";


Section 3 - Kenaz Talk

instead of conversing the Kenaz:
	if Kenaztalk is 0:
		say "Looking at you with a hard, but not exactly unfriendly stare the young half-Asian firefight gazes into your face as though in search for something[if humanity of player > 25]. Nodding when he finds that you have your humanity intact, or at least enough of it to feel comfortable with, the auburn haired man reaches out to offer you one of his tanned hands in greeting[else]. Somewhat unsure of the lustful gleam in your eyes the firefighter gives you a nervous nod while bracing his legs in preparation to dart away from you if he has to[end if]. 'Pleasure to meet you stranger, name's Kenaz and I'm the last firefighter her at station 86. By the way...who are you?'[line break]";
		say "You give Kenaz a strong handshake and then tell him a little about yourself. This makes the firefighter smile despite the uncertainty you can sense he's feeling as he surveys your [bodyname of player] form and [facename of player] face gazing back at him. 'It's a good thing that you knocked because if you hadn't I'd have never let you in here.' Kenaz chuckles some, but you get the strangest suspicion that there is something more the other man wants to add to that statement.";
		LineBreak;
		say "     [bold type]'Now then, I don't have much, but if you'd like I'd can share some of my provisions with you.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			LineBreak;
			say "Deciding not to let the offer of free food go by you tell Kenaz that you'd be happy to eat right now. 'Ok. You can go have a seat while I put the food on the makeshift grill I've got setup.' Doing as asked you head over to the only empty table in the room and then look around the fire station while waiting for Kenaz to return. From what you can see Kenaz has kept the place up to code as far as cleanliness goes, however, over by the other side of the garage you notice that the firefighter has blockade the front door of the building off with various pieces of paraphernalia around the station. Your host comes back minutes later with something hot and steaming and you can feel your stomach rumbling from hunger. 'It's not much but I have some soup that we can share. I hope you don't mind chicken noodle.'";
			WaitLineBreak;
			say "Telling the other man that [']food is food['] during these trying times you get a tiny smile out of Kenaz as he sets down the two bowls onto the table. When Kenaz places a spoon in front of you, you take only a second to thank the man before grabbing the utensil and then digging into your soup. 'Whoa, whoa, slow down there soldier, I have more if you want some extra to eat.' You look up to tell the firefighter that it's been a while since you've had something so good before lowering your eyes back to the yellow broth as you finish off your meal.[line break]";
			say "Kenaz laughs at this and then takes his own spoon to start in on his own meal. Ten minutes later, after a second helping, both of you Kenaz sit back and then begin sharing exploits. Laughing at some of the things the other man has to tell you about his life, both before this current crisis as well as during, you come to find yourself liking Kenaz more and more as the firefighter speaks to you in soft, even tones while letting his green eyes twinkle at you almost teasingly. 'So in the end we're both basically been dealt a bad hand by lady luck'. Kenaz says as he looks to you somewhat resignedly.";
			WaitLineBreak;
			if humanity of player > 45:
				say "Letting the other man know that everything will be alright because you've both survived, thus far, with your minds intact you watch as Kenaz smiles with satisfaction over at you.[line break]";
			else:
				say "Telling Kenaz that submitting to the happenings outside isn't such a bad thing you watch as the firefighter grows uncomfortably hot under the collar as he blushes nervously over at you.[line break]";
			say "Kenaz sighs wistfully all of a sudden. 'I wish my team were here right now, not that it would make things any better with what's going on outside, but still...' Kenaz rushes a hand through his through his shaggy auburn mop top and then starts to play with the ponytail at the back of his head. 'This big place is kinda creepy without the usual banter of everyone either talking, yelling, or horsing around, ya know? Well technically I guess you wouldn't since you're not a...never mind.'[line break]";
			say "Kenaz tries not to show it but it's easy to see that the other man is in deep discontent without his teammates around. Idly you wonder if any of them could have survived the epidemic with their minds intact, and, if at all possible, if any of them were still within the city. On the fly you ask Kenaz about his coworkers. 'Well, there's not much to tell. We were all taking a small vacation before our [italic type]reassignment[roman type] to other departments at the behest of the [italic type]oh so intelligent[roman type] mayor and his fatass cohort, who just so happens to be our captain.'";
			WaitLineBreak;
			say "A nearly inaudible rumble of a growl pours out of Kenaz's throat making you smile somewhat nervously over at the green eyed man as you listen to the deep sounding grumble of displeasure. It's only when you cough in your own throat that Kenaz quickly picks up on what he's doing. 'S-sorry, that's been happening a lot as of late. I think the virus or whatever is getting to me, but thankfully it's not that bad. Not unless I get upset or...' Kenaz shrugs somewhat helplessly. 'Anyway, Birch and I were the last guys here who stuck around to see about the place before the station got closed down. But, as cliché as it sounds, Birch did stop showing up a few days before the crisis hit the city. [line break]";
			say "I went to check his girlfriend's apartment -- that's the place where he usually hangs out when not off duty -- but the landlady said she hadn't seen either in a while.' Kenaz smiles haphazardly after saying this. Nodding to the other you realize what he might have been thinking. Thanking Kenaz for the food you decide that maybe asking around town might net you some information about the other firefighters. Maybe trying an informer might help?[line break]";
			decrease hunger of player by 30;
			if hunger of player < 0, now hunger of player is 0;
			decrease thirst of player by 25;
			if thirst of player < 0, now thirst of player is 0;
			now smf is 1;
			now Kenaztalk is 1;
			increase score by 10;
		else:
			LineBreak;
			say "Telling the other man to save what food he has you watch as Kenaz smiles mischievously at you before shrugging. 'Alright, well there's not much else I can offer you at the time being that I don't have very much. Not unless you...' A sudden slam against the garage doors has your back tensing as you turn to look towards the metal divides separating you and Kenaz from the outside world. Another resounding slam, this time much louder, has Kenaz on alert. When a third strike hits at the metal dividers the half Asian man's brows slowly begin to furrow as his green eyes turn hard like ice. 'If you'll excuse me, I think I have some more guests to deal with.'";
			WaitLineBreak;
			say "Blinking in some confusion you watch as the auburn haired firefighter rushes over to some place behind one of the twin fire trucks and then returns with a large axe clutched between his hands. A sudden bad feeling makes you shiver as you think about what might happen to Kenaz if he goes outside and tries to fight off the unknown assailants.[line break]";
			let bonus be ( charisma of player minus 10 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			if bonus + dice is greater than 12:
				say "Grabbing Kenaz's shoulder before he can make his move out of the front door of the fire station, which has been safely blocked off by an overturned desk and other miscellaneous pieces of junk, you tell the man that you'll handle whatever's outside. 'You?' Kenaz ask dubiously as he gives you a once over before trying to shake his head, however, being the persuasive character that you are, you manage to talk him out his gung-ho offensive by enlightening him on what might happen should he possibly becoming infected. Mention of what will happen to the firehouse if he loses himself to the infection going on outside is what finally gets good common sense through the other's thick head. 'Alright, fine. But if you don't come back in thirty minutes...' Kenaz starts to say, but before he can finish you're already moving the desk and other junk away from in front of the firehouse door as you mentally prepare yourself for a fight.";
				WaitLineBreak;
				fight;
				fight;
				fight;
				fight;
				say "After dealing with the small group of mutants you shudder from the exertion of the hard-won fight and then sigh before knocking on the somewhat battered garage doors of the firehouse. A second later the doors slowly open to allow you entrance. At seeing your worn and slightly sweat soaked [bodyname of player] body Kenaz hurries off to get you a towel. A second or two later the half Asian firefighter is by your side handing you the towel and a bottle of water.";
				WaitLineBreak;
				say "'Man, it's times like these when I wish the other's were here.' You pop open the water bottle and down your drink before asking Kenaz what he means. 'Before this [']epidemic['] or whatever came about most of the other guys had all gone off to take a vacation. The only ones left around here was me and Birch, but a little while before thing started to get crazy he went out and didn't come back. I went to his girlfriend's place to look for him, but the landlady at the apartment complex said that she hadn't seen either of them in days. I hope he got out before anything happened...else...' Kenaz goes quiet at that. Seeing the other man's distress you ask Kenaz about the others, but the firefighter's only response is a sigh and a slow shake of his head.";
				WaitLineBreak;
				say "'I'm sorry, I...I just don't want to even think about, much less speak on it. As far as I know, everyone was supposed to be heading out of town...or whatever. That's all I know.' Asking what happened to the captain over the firehouse you raise an eyebrow when Kenaz snorts all of a sudden. 'That fatass is the one who gave everyone the paid time off! Of course, that was right after he told us that this station was going to be shut down in a few months and everyone would be relocated elsewhere. Something about a decision the mayor made or some such nonsense.'[line break]";
				say "A growl from Kenaz has you stepping back from the other as he sounds all too canine right about now. 'Oops, sorry about that. I think whatever's in the air here has gotten to me.' Kenaz laughs, but it sounds way too forced to be real. 'Anyway, I don't have much to tell you. Just that everyone's gone and I'm the only one left around.' At that Kenaz shuts down all conversation...for the moment anyway.[line break]";
				say "Looking to the green eyed fireman and then around to the almost tomb-like firehouse you begin to wonder if there is some way to find out about the members of this station. Maybe getting in contact with an informant might be wise? But where does one find an informant?";
			else:
				say "Grabbing Kenaz to try and stop him you fail to get through the other man's thick skull about the danger he's putting himself through. 'Who do you think has been keeping this place safe after everything went all to hell?' Kenaz gives you a mischievous smirk and then heads for the front door of the firehouse. Watching as the auburn haired firefighter begins to removes his makeshift barricade you nod to the other's back and then turn to look around the firehouse. Seeing exactly what you need sitting by the side of a makeshift grill you go over, pick up the item, give it a few test swings and then step up behind Kenaz.";
				WaitLineBreak;
				say "The other man senses nothing, not until you raise the thing in your hand and then slam it right over the top of the half Asian's cranium. Kenaz drops like a light just as he was getting ready to reach for the handle the door. Moving the firefighter safely over to the side of one of the fire engines you steel yourself for the fight to come, even as you hear the pounding outside of the garage doors getting more forceful in its intensity.[line break]";
				fight;
				fight;
				fight;
				fight;
				fight;
				say "Having dealt with that lot you make your way back inside of the firehouse and to check on Kenaz. Seeing him gone from makes a surge of panic shoot throughout your spine, that is, right before you feel something hard and heavy hit you across the back of the head. Yelping in dismay you grab the top of your scalp and then flip your head around to have a look at whoever just assaulted you. 'Now you know how I feel.' Kenaz says somewhat smugly before dropping the thing in his hand to let it clatter loudly down onto the ground.";
				WaitLineBreak;
				say " You try and apologize to the other man, but Kenaz simply waves you off. The rueful smile on his face tells you of the firefighter's appreciation for what you did. 'Want some water?'You nod to Kenaz at his offer. It takes the other man a minute to return but once he does Kenaz has both a bottle of water and two ice packs in hand, though one of the packs is covering the firefighter's own head. 'I thank you for the save, but seriously?' You can only shrug after Kenaz hands you the water and ice pack. Twisting the cap of the bottle open you swallow the water while at the same time pressing the offered ice pack over you throbbing head. The two of you say nothing for a long while, simply enjoying each other's company, even though the both of you are in shared pain.";
				WaitLineBreak;
				say "'I wish the others were here,' Kenaz sighs all of a sudden. You look over to the other man and then ask him what he's on about. 'The guys, I mean the other firefighters, I kinda miss them.' You chuckle as you ask him to elaborate a bit more. 'We all were supposed to be getting some time off before being relocated since the station is going to be closing soon because of the damn mayor. The fatass captain and his crony in the downtown office decided that there doesn't need to be a more than one firehouse per burrow and since station 83 is just three miles away from here...' Kenaz let's that sentence die, but not before growling like an angry mutt.";
				WaitLineBreak;
				say "'Sorry about that,' Kenaz smiles sheepishly. 'I think the stuff in the air here is getting to me. At least it seems to be whenever I get angry or...' Kenaz coughs at that and then shakes his head. It's not hard to figure out the unspoken finish to that sentence. 'Anyway, the guys have all gone off somewhere or another so it's just me here. I wouldn't mind it, but every day those [']things['] outside come around and I have to fight them off. That's why you didn't need to hit me to stop me since I know what I'm getting myself into.' You let Kenaz know that the higher the risk of infection the more likely he'd lose himself to the virus, especially since the mutants outside seem to almost exclusively prey on virgin humanity.";
				WaitLineBreak;
				say "'Heh, I didn't know that. Oh well, makes sense, I guess.' Kenaz sighs and then lowers his head in silent, his right hand is all that keeps the ice pack from falling onto the floor. Asking Kenaz what happened with the others the firefighter can only shrug. 'Don't know, everyone was supposed to be going out of town or something so that only left me and Birch around to watch over the place. Since the two of us basically live here we didn't really mind it. But after he left and didn't come back I went to his girlfriend's apartment to check on him.[line break]";
				say "I got told by the land lady that she hadn't seen either of them in a while. Maybe one of those things out there caught him?' Seeing the other man's despondence as he mournfully shakes his head you wonder if you could find out some information about the other firefighters.";
			decrease thirst of player by 25;
			if thirst of player < 0, now thirst of player is 0;
			now smf is 1;
			now Kenaztalk is 1;
			increase score by 10;
	else if Kenaztalk is 1: [Normal short messages the npc will say each time you talk to them]
		say "[One of]'Oh hey! How've you been?'[or]'Are you alright? You look a little tired.'[or]'Kenaz simply waves at you as he goes about sweeping the floor.[or]'Could you...maybe stand over there for a second?' Kenaz asks while pausing his mop right at your feet.[or]'I hope the other guys are safe somewhere.' Kenaz says wistfully.[or]'Where oh where has my little...what the hell am I saying?' Kenaz blinks as he stops himself.[or]'Maybe I should go out and try to see if there is somebody I can help?'[or]'You may not know it but I signed up for firefighter duty because I felt that it was destiny for me.'[or]'Is it strange for a half-Asian to have a name that means torch in the language of the Anglo-Saxons?'[or]'To this day I'm not sure why my sire named me Kenaz. He did say it was because of the burning spirit he saw in my eyes as a babe, though I think he was drunk at the time when I asked him.' Kenaz patiently shakes his head after saying this.[or]'My mother is a enduring woman by birth. Both demure and refined as a rose in may. I really hate that she and I can never see eye to eye on much though.' Kenaz chuckles sadly.[at random]";
	else if Kenaztalk is 2:
		say "[one of]'Hey, how are you today?'[or]Kenaz wags his tail happily at you while sweeping the floor.[or]Kenaz barks at you after you startle him by patting him on the rear.[or]Kenaz is busy trying to go over getting the other guys to do some drills...without much luck.[or]'I hope the military or whoever hurries up and helps the city get back to normal. I like this quiet time, but it feels like there's a storm coming.'[or]'Maybe I should go outside and try to find someone to rescue.' Kenaz shakes his head and then grumbles in annoyance at himself.[or]'This being a dog thing isn't quite so bad, once you get used to it.'[or]'I hope that one day I'll be able to take a trip to Asia to see how my mother's home country has fared.'[or]'Perhaps, when this is all over, you'll come back here to be a firefighter with the rest of us?' Kenaz seems to look at you pleadingly as he says this.'[or]'I feel bad for Pertho, being the only feral around here. Maybe I could try and take him for a walk or something?' Kenaz hums quietly while thinking this over.[or]'The other guys seem to not mind the loss of their human form. It's strange, but now that I've gotten used to it...I don't think I've lost very much by not being [']human['] any longer.'[or]'I think my mother is going to freak when she sees me like this. So why does that thought make my tail wag?'[or]'My dad... would he be proud of me now that I'm not human any longer?'[or]'I wonder...'[at random]";
	else if Kenaztalk is 3:
		say "[one of]'Make sure not to track dirt on the floors.' Kenaz growls warningly.[or]'I hope the chief doesn't think I'm going to give up my firehouse just because of a decision he and the mayor made.' Kenaz growls throatily as he thinks over this.[or]'Maybe when this is all over you'll become a fireman? We could use another hand to help around here.'[or]'The military has come by here to try and get our aid, but it's just not going to happen unless we get so more hands to help put things to order around here.'[or]Kenaz seems to be thinking over something.[or]Kenaz has the others doing push-ups.[or]Kenaz is barking at Pertho. Curiously enough, the feral hound seems to understand him perfectly because the pooch quickly runs off to do something or the other.[or]'If you want, you could stay here to wait things out, however, if you do then you'll have to work and train like the rest of us.'[or]'My mother...heh.' Kenaz seems to be thinking over something funny...or at least you hope that it's funny. By the glower in his eyes though...[or]'My dad...I know he'd be proud of me.' Kenaz nods firmly at that.[or]Kenaz is playing poker with the others.[or]Kenaz is washing the fire engines.[or]Kenaz is busy doing push-ups.[or]'Some music would be nice right about now.'[at random]";
	else if Kenaztalk is 4:
		Say "'Hey man!' Kenaz's sudden burst of enthusiasm makes you jump as the firefighter turns to beam a smile at you. 'I don't know how you did it, but I'm really grateful that you did!' Blinking in confusion you ask the firefighter what he's talking about. 'Oh come on, you know what I mean!' Again you give the other man a blank look. 'You found some of the guys for me and got them to come back here safe and sound.' Oh, that...";
		Say "'I didn't think any of the other's had made it honestly, not with what's happening to the city and all, but somehow you managed to find some of the guys despite everything going on. For that all I can say is thank you.' Kenaz then bows to you slightly. Blushing you try not to let your ego inflate too much, but in spite of your attempts at remaining humble you can't stop the feeling of pride swelling within your chest at your accomplishments. 'That being said...would it be too much trouble to ask you for a favor?' Kenaz raises his upper half up to give you a slightly uncomfortable look. You ask the other what the problem is.";
		WaitLineBreak;
		Say "'Well you see, with everyone coming back here and all...I've kinda started running low on food.' You nod your head in understanding and then ask Kenaz how much food he thinks he will need. 'Well, between me and the others, and given that we don't know how much longer it will take for the military to come and clean up things...maybe about twenty pounds of food?' Kenaz smiles helplessly as you just blink at him. 'Or maybe about [bold type]ten[roman type] things of food instead? I can make some things stretch and hopefully the military will air drop some more provisions before long.' Kenaz reaches one of his hands up to rub at his chin thoughtfully.";
		Say "Telling the firefighter that you'll see what you can do, you get a sharp nod from Kenaz. 'Alright. And hey, once again, thanks a lot.' You smile and then give the other man a coy wink before turning to head about your way.";
		if HelpKenazOut is 0, Now HelpKenazOut is 1;
		now rsc is 2;
		now Kenaztalk is 7;
		Increase score by 2;
	else if Kenaztalk is 5:
		Say "Kenaz is in too much pain to talk to you at the moment, best to try to [italic type]assist[roman type] him before doing anything else.";
	else if Kenaztalk is 6:
		Say "Kenaz is going through another [']transformation['] at the moment. Perhaps you could [italic type]assist[roman type] the other man to help him out? It may provide something interesting for you in the long run.";
	else if Kenaztalk is 7:
		say "'Please try and [bold type]assist[roman type] me anyway you can, if you can.' Kenaz looks at you somewhat helplessly after saying this. Maybe you should try to help the other man out? If you can spare some time, that is.";


Section 4 - Helping Kenaz

HelpingKenazOut is an action applying to nothing.

Understand "assist" as HelpingKenazOut.
Understand "help Kenaz" as HelpingKenazOut.
Understand "assist Kenaz" as HelpingKenazOut.

Check HelpingKenazOut:
	If Kenaz is not visible, say "Really? Maybe you should go back and ask him what he asked you to do then..." instead;

LastHelpKenazOut is a number that varies.
LastHelpKenazOut is usually 766.
HelpKenazOut is a number that varies.
LastKenazdes is a number that varies. LastKenazdes is usually 660.
Kenazdes is a number that varies. Kenazdes is usually 0.
aidKenaz is a number that varies.
Pertho is resolved.

Carry out HelpingKenazOut:
	if helpkenazout is 0:
		say "(Message needed here - go find the 'Informant' and help find the firefighters.)[line break]";
	else if HelpKenazOut is 1:
		Say "[aidKenaz1]";
	else If HelpKenazOut is 2:
		Say "[aidKenaz2]";
	else If HelpKenazOut is 3:
		Say "[aidKenaz3]";
	else If HelpKenazOut is 4:
		Say "[aidKenaz4]";
	else If HelpKenazOut is 5:
		Say "[aidKenaz5]";
	else If HelpKenazOut is 6:
		Say "[aidKenaz6]";
	else If HelpKenazOut is 7:
		Say "[aidKenaz7]";
	else If HelpKenazOut is 8:
		Say "[aidKenaz8]";
	else If HelpKenazOut is 9:
		Say "[aidKenaz9]";
	else If HelpKenazOut is 10:
		Say "[aidKenaz10]";
	else If HelpKenazOut is 11:
		Say "[aidKenaz11]";



To say aidKenaz1:
	Let foodfound be 0;
	If carried of food >= 10:
		Say "'Thanks a lot for this!' Kenaz looks over the food you procured for him and then growls slightly before catching himself. 'Sorry about that. This growling thing seems to be getting worse as time goes by. It probably doesn't help matters much that most of the guys you found are now dogs.' Kenaz chuckles darkly at that thought and without meaning to you raise one eyebrow curiously at the other man. 'Oh, sorry, it's...'";
		Say "Kenaz looks pensive for a moment but then just shakes his head as though trying to erase his own thoughts before they could become voiced. Tentatively you ask the other what's the matter that's concerning him so much when seconds of silence become minutes in between you. 'Well...' Kenaz licks his lips and then flushes some. 'You see, you know Othala? The salt and pepper haired woman you help saved. Well... you see... that is...' Kenaz lack of a finishing his statement begins to worry you slightly, but not as much as what happens next.";
		WaitLineBreak;
		Say "A low grunt from behind makes you turn and what you turn to see has your mouth dropping in surprise as behind you stand three naked male Dalmatians. This in itself wouldn't have been so strange if it weren't for the fact that one of the Dals, the one standing in the center of the others, has salt and pepper hair framing the top of his head. 'You'll catch flies if you keep your mouth open like that.' One of the Dals snickers and instantly you shut your trap.";
		Say "Turning back to Kenaz you find the other firefighter reaching back to rub his head nervously. 'Yeah, see that's the thing I wanted to talk to you about. You see, Othala there, well she ended up getting bit by a feral Dalmatian running around the red light district on her way here and well...by the time she made it here she ended up becoming very much a Dal like Birch and Dagaz here. Only problem is...well her womanhood ended up disappearing with her human form during the process.' Turning to look at the three male canines you end up letting your eyes stray between the naked cano-mutant's legs.";
		WaitLineBreak;
		Say "By the thick sheath and heavy balls swaying between the former human woman's legs it would see that Kenaz wasn't just whistling Dixie here. A grunt from Othala makes your eyes snap up and you blush just in time to see the former female winking coyly at you. 'Hey,' Kenaz's voice has your [facename of player] face snapping back around to look at the other man. 'If you wouldn't mind could you go to find this feral Dalmatian and bringing it back here?' Immediately you ask Kenaz why he would want the thing brought here of all places.";
		Say "'That's because,' Othala's voice ends up drawing your attention back towards her...him. 'the sexy Dal that bit me just so happens to be one of the firefighters from this station.' Asking Othala how she...he knows this you get a very...peculiar answer from the other. 'Because a little birdie literally told me so.' Othala shrugs at this point. Had this been any place but the town you live in you would have thought the other was crazy, but all things considered... 'Yeah, colour me surprised, but after I got bit this huge hawk comes out of now to chase the furry brute off while this blonde wearing a hoodie shows up to patch my leg.'";
		WaitLineBreak;
		Say "Othala turns to the side slightly and then shows you a circular pattern of black spots framing her lower left calf muscle. 'Anyway,' The male Dal turns and then chuckles at the slightly lustful look you're giving him. 'Long story short, the blonde said something about her tracking down a rogue mutant that's running around town biting people and subsequently turning them into mutants. At the time I couldn't have cared less, what with my leg bleeding like I had an artery burst, however, when the blonde said that the name Pertho I immediately started to grill her for info. As it turns out this [italic type]thing[roman type], whatever it is, is going around the city playing infecting people against their will. Sadly,' Othala turns his head to sigh at this.";
		WaitLineBreak;
		Say "'It seems Pertho got caught and now is a really stud Dalmatian going around nipping everything he can get his jaws on.' Othala then looks sheepishly at you. You can guess the rest of the story from this point, if the hardening of the firefighter's cock from out of his sheath is anything to go by.";
		Say "'S-so,' You turn to look at Kenaz once again. 'If you could spare the time, would you please head to the [bold type]red light district[roman type] and bring back [bold type]Pertho[roman type] for us? If ' Kenaz's words make a grunt of annoyance rise from up out of the pit of your throat, but at the other man's hopeful look you simply nod to the other before going about your way. Faintly you wonder if you have [italic type]rescue[roman type] printed somewhere on your body? Because seriously...";
		WaitLineBreak;
		Say "'Oh wait a minute!' You turn just in time to see Othala running over to the only table in the room and then grabbing up something before coming up to you to hand you that said something. Amazingly enough what the Dalmatian gives you just so happens to be a...collar and leash? 'This might help make things easier on you.' The salt and pepper haired Dalmatian snickers when you look to the items in question with a curious expression written across your face, but does nothing else as you turn to head out.";
		decrease carried of food by 10;
		Now HelpKenazOut is 2;
		Now Pertho is unresolved;
	else:
		Say "'Hey, if you are wondering where the others are, well they come and go as they please for right now, so don't expect to see them around much.' Kenaz chuckles while [one of]sweeping up the floor[or]mopping up the floor[or]polishing down the fire trucks[or]waxing down the fire engines[at random]. 'Oh, by the way did you ever get that food I asked you about? I still need like [bold type]ten[roman type] parcels to be able to feed everyone with?'";



To say aidKenaz2:
	Say "'Sorry to make you work like this.' Kenaz rubs the back of his head somewhat nervously. 'But if you could, please try and find [bold type]Pertho[roman type] at the [bold type]red light district[roman type] and then force him back here.' Kenaz smiles abashedly at this and you nod to the other man before turning to head about your way.";



To say aidKenaz3:
	Say "Hauling the uncompromising Pertho into the firehouse you call out to someone to come and help you with this spotted canine nightmare. Immediately Kenaz and the others come down from the upstairs room, along with a new face you hadn't seen before, to help you with your burden. Seeing the other Dalmatians moving over towards you Pertho immediately begins to quiets himself down, much to your relief. However, before you can relish in this fact the feral firefighters lifts his nose up into the air, growls and then charges forward making the leash you had been holding onto slip from out of your grasp.";
	WaitLineBreak;
	Say "In that split second after you are no longer in control of the Dalmatian everything seems to slow down as you watch the next events unfold like a train wreck. Your eyes blink, your heart thuds like hammer hitting an anvil inside of your ears and you can almost swear that several beads of sweat are rolling down the back of your neck like miniature rivers, but none of that prepares you to see Pertho charging at Kenaz, then subsequently knocking the other man down onto the ground. That in itself wouldn't have been so bad, but what comes next actually makes your heart freeze as you watch the spotted canine menace wrap his jaws around the firefighter's left leg in an unforgiving hold and then start to tug.";
	WaitLineBreak;
	Say "After that, well things go from bad to all out clusterfuck. From what your mind can process there's a lot of motion and commotion between everyone present as they try to help you help get Pertho off of Kenaz while at the same time trying to do their best to calm the yowling man down as he tries to shake the dog loose. Eventually you regain enough sense of self to dart over and then grab Pertho's muzzle to literally pry the feral mutant's fangs from off of Kenaz's now bleeding leg. Drawing the feral canine back so that Othala and the newcomer can deal with Kenaz you struggle to hold Pertho, the other fighting and growling at you in that canine way the promises a lot of pain on your part when you do. In return you growl at him to shut up and calm down, your voice taking on a low bass rumble that instantly makes the Dalmatian comply in response to your command.";
	Say "After that, well... Maybe you should try to [italic type]assist[roman type] Kenaz some more since he's probably not in the talking mood at the moment.";
	now Kenaztalk is 5;
	Now HelpKenazOut is 4;



To say aidKenaz4:
	say "     [bold type]This part is really long, do you want to read over it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	If player consents:
		LineBreak;
		Say "Getting two of the other firefighters to help you drag Pertho into the unused backroom of the firehouse you lock the canine terror into the unlit area, much to the feral mutant's distress, and then sigh as you wonder just how such a beautiful day could have gone all to hell. 'Hey,' A hand clasps itself onto your shoulder making your turn to regard the unfamiliar voice of the person speaking next to you. 'Don't beat yourself up so much. Things like this happen.' What you find, after blinking somewhat, is another Dalmatian, this one with golden brown hair on top of his head, smiling at you imploringly while looking at you with one bright blue and dark brown eye, respectively.";
		LineBreak;
		Say "Asking who the other is you find yourself getting a chuckle from out of the Dal. 'The name's Mannaz. I'm one of the guys that use to work here.' You look the other man up and down, particularly noticing his lack of dress, and then wonder to yourself... 'Yeah, I know. The whole Dalmatian thing is really a bitch, but it could have been much worse.' You try not to tell the other that, that was not what you were exactly thinking. 'Anyways.' Mannaz removes the furry hand he has on your shoulder and then offers the appendage. You take the hand accordingly, though more out of habit than anything else. 'Thanks for helping Kenaz and the other's out. I hope that you'll continue to stick around and help everyone once things settle down.' A yowl from Kenaz makes you shut off whatever you were just about to say as you turn to watch Othala and the others trying to hold down a slightly flailing Kenaz.";
		WaitLineBreak;
		Say "Darting your way over to help you find your eyes widening in shock as you see white fur spreading out across Kenaz's body with black spots sprinkling over certain areas of the firefighter's twitching form. Blinking as you continue to look upon Kenaz you watch as the muscles within the green eyed man's form flex and then shift the half-Asian firefighter's musculature expands outward with new growth. The stomach churning sounds of bones popping resonates within the quiet room of the firehouse make you feel a slight bit queasy, but despite this you can't turn your eyes from watching your... friend... continue to change. When Kenaz's face begins to lengthen, the one set of the other man's new muzzle about to form, no one voices any opinion as to the situation as they all realize what's happening.";
		LineBreak;
		say "Ears pulling up and then curling down, nose flattening onto the end of his face and growing dark, small strands - the beginnings of whiskers - growing out of the side of his elongating face all mark the signs that Kenaz is about to become a canine anthromorph. The fact that the other's hair is pulling down the side of his head, growing thicker and more luxurious is of little consequence to all present as the superficial additions cannot outshine the fact that the grunting and whimpering firefighter on the floor is in utter agony because of his change. Hands spreading out onto the floor, pushing up because of new pads replacing the former soft palms belonging to Kenaz don't help to ease the transition for the other, especially not when these new paw pads introduce much thicker fingernails with them. The slight cracking of the bones of Kenaz's fingers makes some of the others turn their heads.";
		WaitLineBreak;
		Say "Dark fingernails scrapping against the concrete floor, the offset of black claws about to form, herald greater whimpers out of Kenaz as the man twists and turns around like mad as his body continues its transmogrification which, as a result, forces Othala and the others to back up to give the other much-needed room. With his pants having been stripped free from his body you can see Kenaz's thighs and legs contorting and shifting as the firefighter's lower body gains canine-like attributes. Heels raising up as both feet begin to expand, the same as with the firefighter's hands, while toenails turn sickly black in colour, only to then protrude out almost an inch a half from the man's foot make it clear that Kenaz is going to have a digitigrade stance once this is all over with. [if player is not purehuman]While you yourself have gone through the changes like these more often than not[else]Despite knowing such changes are rampant out in the city[end if], it's something very unusual to see someone else go through them, especially in an almost violent sort of way as Kenaz is right now.";
		LineBreak;
		Say "When Kenaz turns over and then gets up onto his hands and knees you find your eyes pull themselves up to watch as a small nub grows out at the end of the other's tailbone. It takes only six seconds for that nub to push out into a thin, but fleshy tail and then another five seconds for small wisps of white fur to completely cover the swaying appendage. Eyes focused on Kenaz's new tail you almost miss the rest of the changes as the firefighter's spine pops and flexes while at the same time his chest and shoulders expand outwards with his newly acquired muscle mass.";
		Say "A few more minutes of small, but important shifts all along Kenaz' now fully furred body, like the head of other man's cock tapering down to a pointed tip while his six inch shaft thickens and then lengthens to gain several more inches at the same time it grows dark crimson in colour. A furry sheath forms at the lower end of Kenaz's cock, the perfect home for the new organ the firefighter now has while at the same time Kenaz's balls expand slightly while growing furry as a veritable wave of white fur rushes over the former human's sac.";
		WaitLineBreak;
		say "Soon though the changes come to a complete end, however, when they do Kenaz all but flops down onto the ground as his tired, sweat soaked form literally just gives up the fight in favor of the panting and drooling there onto the floor. Whimpering and shivering slightly you and Othala quickly kneel next to Kenaz to ask him if he's alright. 'Never...better...' The other says with more conviction anyone present thought should have been possible. A round of heartfelt chuckles resonate throughout the room at this point.";
		LineBreak;
		Say "It takes ten minutes for Kenaz to get himself together and then another twenty for everyone to go over what's happened between all those present up to this point. As it would seem Mannaz, who just so happened to have been out of town on vacation when he heard about the epidemic taking over the city, had been able to barter his way back into the city by way of becoming a temporary go between for the military and the outside world. Apparently the military didn't have as many soldiers as the outside world like to believe and with the constant infection take a good percent of their numbers every week they were running short staffed.";
		say "Outside civilian assistance had become a necessity and being a firefighter Mannaz was able to talk his way into aiding the delivery of food and other resources to a group of soldiers that had been on the fringe of one of the outposts set up around the metropolis. This just so happened to be what had led him to being attacked by [italic type]something[roman type], a strange new kind of mutant no one had seen before, which then transformed him into the spotted canine stud he was now.";
		WaitLineBreak;
		Say "To say the least the military was not happy about that, but then again... 'So after [']relieving['] myself from active duty I wandered around helping others and then ended up stumbling over this oddly familiar Doberman guy. He told me about the others and you and then told me to come here. So here I am.' Nodding to Mannaz you ask him why he didn't just come back here in the beginning. 'Well, would you be mad if I told you I was afraid of doing that?' The firefighter blushes somewhat as he rubs the back of his head while blushing. The pink tint to his fur looks kinda cute, that is, right before you shake your head and then ask him what he meant.";
		LineBreak;
		Say "Well initially I wanted to come back here and check one everyone, but when I saw the mutants and what they were doing...I kind of got scared. The military has this stuff that will keep you from changing, but they only have so much and then it's not perfect. So I figured staying with them was much better than trying to come back here and get infected. But wouldn't you know it,' Mannaz chuckles ruefully at this point. 'Just as soon as I start to get comfortable I ended up being attacked by this...[italic type]thing[roman type]...and then turned anyway.' The other seems to be berating himself slightly as he tips his muzzles down.";
		say "     [bold type]Should you admonish him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		If player consents:
			LineBreak;
			Say "Telling the other that he should have come back here immediately to see about his companions if he went through all the trouble trying to get back into the city in the first place. Mannaz lowers his floppy ears and then faintly whimpers at you at that point. 'I-I know that, but...I was scared. I didn't want to end up like...everyone else here.' You get the feeling that you know what the other was about to say before he paused and rethought over his word choice. 'Hehe, I guess you can't run from destiny or whatever.' Sighing, the other simply shakes his head. 'Anyway,' Whatever happened with me is not so important as what needs to happen now.' At that the other heads over to the upper area of the firehouse by himself.";
			Say "Not thinking anymore about the other man you go over to speak with Kenaz. The newly made Dalmatian just so happens to be sitting off by himself while the others are busy talking off to the side. 'Hey, thanks for finding Pertho for me. I really appreciate it.' You give the other man a [']look['] before blinking at him. 'Yeah, I know, but still.' Kenaz shakes his head, his floppy ears going every which a way. 'Anyway, thanks for everything. I'm going to let Pertho out in a minute and then...well some things are going to change around here. They have to at this point.'";
		else:
			LineBreak;
			Say "Not wanting to say something contrite to belittle the other man's feeling you simply reach over to pat Mannaz onto the side of his shoulder before gripping your finger gently, but firmly his dense shoulder muscle. 'Thanks, I think I need some time alone to think over things. Anyway, why don't you go and speak with Kenaz. He's probably going to need more comforting than I do right about now.' You nod to Mannaz before releasing him and then watch as the Dalmatian turns to head off on his way upstairs.";
			Say "Watching Mannaz go you can only shake your head before making your way over to speak with Kenaz. The newly made Dalmatian just so happens to be sitting off by himself while the others are busy talking off to the side. 'Hey, thanks for finding Pertho for me. I really appreciate it.' You give the other man a [']look['] before blinking at him. 'Yeah, I know, but still.' Kenaz shakes his head, his floppy ears going every which a way. 'Anyway, thanks for everything. I'm going to let Pertho out in a minute and then...well some things are going to change around here. They have to at this point.'";
		WaitLineBreak;
		Say "Asking Kenaz if that is a wise move to make you get a strange chuckle from the other. 'Believe it or not...I think the reason Pertho bit me was because I am, sorry, [italic type]was[roman type], mostly human. It's just a hypothesis, but think about it. He bit Othala when she was human and then me after just getting in here. He didn't think about it. He just...went for what may have been natural to his canine brain. Maybe there's something wired in him to make Pertho want to infect other humans. I don't want to test that theory though, but still...it's the best I have to go by at the moment.' Nodding you ask Kenaz what he plans to do with himself now.";
		WaitLineBreak;
		Say "'Well, I still have to keep this place clean and in shape until the military decides to come in and fix everything, but other than that...not much, I guess. Why do you ask?' Looking the other's new spotted canine form up and down you lean close to Kenaz and then whisper to the other of how sexy he would look lying on a bed in the throes of passion underneath you. Immediately the Dalmatian firefighter's spotted tail goes to wagging a mile a minute. 'I-I...that is...uhm...well...' Leaning a little closer you tell Kenaz that you won't be too rough on him if he allowed you to have your way with him.";
		Say "'What makes you think I'd let you be on top?' The husky growl from the other man makes you chuckle somewhat and in the back of your mind you think over just how much you're going to enjoy this new Kenaz. Especially with the way the other man is panting into your face while sniffing his wet nose at you - more than likely smelling your arousal and loving it. Wait a minute...was that what you were going to ask in the beginning? You're not sure now, but it sounds right regardless.";
	else:
		LineBreak;
		Say "In the next hour or so you place Pertho into the back room, watch as Kenaz transforms into a sexy Dalmatian, talk to Mannaz and listen to his story about how he got back into the city, via aiding the short staffed military, and then charm Kenaz into being a willing bed partner for you!";
	Now kto is 1;
	Now Kenaztalk is 2;
	now Kenazaroused is 1;
	Move OtherDals to the FireHouse;
	Now HelpKenazOut is 5;
	follow the turnpass rule;



To say aidKenaz5:
	Say "'[italic type]Wuff![roman type] Oh sorry about that. That's been happening a lot as of late.' Kenaz rubs the back of his head before smirking at you. From what you can see the other is taking to his new form quite well. 'Anyway, I don't think I have much for you to do for today...oh wait a minute!' Kenaz makes a mad dash over to where the coat racks are and then pulls off a single firefighter coat and then brings it back over to you. 'Here, this may not be much, but please. I want you to have it for all of the trouble you've gone through for me and everyone else.'";
	Say "Not seeing a reason why you shouldn't you take the offered gift you take the firefighter's coat and then place it into your backpack. 'I'm sorry that I don't have much to offer you, but...' You shush the other before he can start. Letting the Kenaz know that his souvenir will be cherished regardless of its worth gets a smile from the Dalmatian. 'You're a good friend, you know that?' You can only smirk at the other at that point.";
	now carried of firefighter coat is 1;
	Now HelpKenazout is 6;
	Now Kenazdes is turns;



To say aidKenaz6:
	If Kenazdes - turns is less than 16:
		Say "Oh sorry, but I don't have anything for you to do for me today.' Kenaz smiles bemusedly at you before going back to what he was just doing.";
	else:
		Say "'Hey, if you don't mind I need to go out and make a run real quick. Would you mind going with me?' Asking Kenaz what he means by [']run['] you find the spotted canine giving you a quick rundown of the situation. Well you see the guys and I have this thing going where, in order to make sure we all have enough food, we take turns going out to scavenge for stuff. Since Mannaz had once been working with the military he knows of a few places where certain storehouses of provisions are kept so we...ugh...[italic type]liberate[roman type] some things every so often for ourselves.'";
		WaitLineBreak;
		Say "Kenaz chuckles nervously at you, however, you quickly tell the other man that you have no problem with him doing whatever it takes to survive out in this crazy world. 'Thanks. I always felt bad about doing this, or having the others do it, but with the way things are...it's really survival of the most intelligent in these cases.' Seeing the Dalmatian shrugging helplessly you simply nod to him before telling him that you'd be happy to help him. 'Great! I so did not want to go by myself this trip.'";
		Say "Kenaz nods to you and then goes to get something from one of the lockers in the back and then returns to where you are standing. Upon looking the other man over you see that Kenaz now has a backpack, somewhat reminiscent of your own, strapped onto his shoulders. 'Ready whenever you are!' Looking the other over once more you take in a deep breath to steel yourself for what's to come and then turn to head out of the firehouse.";
		WaitLineBreak;
		Say "It takes an hour for Kenaz to lead you to where you need to be - the place in question just so happening to be a bunch of fenced off warehouses just north of the red light district. Arriving at the place in question Kenaz holds up a hand to stop you in your tracks, lifts his nose up to sniff at the air and then flips his floppy ears to listen out for any sign of the military personnel skulking around the area. 'It's clear. Come on.' Sneaking underneath the fence surrounding the building, via Kenaz using his paws to enlarge a seemingly nondescript hole already dug out of the ground, the two of you head over to the warehouse and then enter into the building, after using a card key on one of the electronic locks nestled above the handle of the door. Perhaps Mannaz had given the key to Kenaz beforehand?";
		LineBreak;
		Say "You're not sure and don't bother to think on it long as the two of you make your way through the building in search of food. 'I think most of the stuff should be in the back.' Kenaz mutters and dutifully you follow after the Dalmatian as he makes his way toward a bunch of doors settled under a few dimly lit overhead lights. What you see when the two of you enter into the storage area proves to be the proverbial motherload of food. Breads, canned goods, rice, beans, peas and other choice goodies are all lined up together amongst various cabinets and shelves. To make this dream even more perfect there are gallons of water stocked neatly onto the floor underneath said shelves.";
		WaitLineBreak;
		Say "Quickly you help Kenaz to gather just enough food so that the military won't be suspicious of someone coming to take their hoard, adding a few jugs a water to go along with the five and a half pounds of food the two of you have nestled into your backpacks, and then hurriedly exit out of the room and thus the building before making your way back through the hole Kenaz had shown you. The two of your work quickly to fill up the small ditch the Dalmatian had made as best you can, praying in turn that no one will get suspicious and come along to have a look over your little entryway, and then haul ass back to the fire station.";
		Say "'Well that was fun!' Kenaz chuckles at you as he lets his long tongue hang slightly out from between his muzzle. Jogging next to the other man while snickering slightly you ask Kenaz when the next time he and the others plan to play Robin Hood again. 'Not for a while. Like I said, we don't want to make things look to suspicious. So we...' Before Kenaz can say anything more the Dalmatian literally skids to a stop as he tries to put on the breaks. Not sure what's going on you have all of two seconds to turn your head before cursing as you notice a twelve foot tall Border Collie standing in your path.";
		WaitLineBreak;
		say "When you crash into the other the giant sized canine stumbles a bit and then flips its head around to look at you questioningly. Upon seeing you the naked canine turns to reveal its half hard cock growing thick and hard out from its sheath as well as the ample tits filled with milk jiggling onto the mutant's chest. It would seem the other is quite excited to see you and wants to show you just how much in the usual way the mutants around these parts do.";
		LineBreak;
		say "Before the shemale collie can move to grab you you're suddenly vaulted to the side as Kenaz pushes you out of the way. It's only natural that in trying to save you he himself gets swept up into the larger canines hold, yet that doesn't stop you from growling and cursing as you watch the twelve foot mutant hoist your friend up into its sleek looking face. Struggling and whimpering Kenaz manages to shrug his pack off and then toss the heavily filled bag at you. 'Take that back to the others! I'll meet you back at the firehouse later!' Asking the other man if he's crazy you get a funny smile from Kenaz in return. 'I'd say something heroic like I can handle myself, but that'd be a lie, so instead I'll just say that getting the food and water to the others is more important that trying to stick around here to try and negotiate with this thing.' At that the shemale collie growls and then slams the Dalmatian onto the ground.";
		WaitLineBreak;
		say "Kenaz grunts from impact, but doesn't cry out. That doesn't deter the collie however, as the lust drunk beast soon begins to rip the Dal out of his clothing with a strong sweep of its thick claws across the firefighter's chest and legs. 'Hurry up already!' Seeing Kenaz in the fiasco he's in and weighing the options in your head, along with the provision in both of the backpacks you have on deck, can you really leave the other to his fate? Even though technically you know that the worse that will happen is that the collie will probably just have its way with the Dalmatian?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Leave him to his fate.";
		say "     ([link]N[as]n[end link]) - Fight alongside.";
		if player consents:
			say "You tell Kenaz to take it easy before running off about your way back to the firehouse. The last thing you hear from the other is a dark chuckle followed by...'I don't think that's gonna happen!'";
			say "Running as fast as you can you make it back to the firehouse before long and upon bursting through the partially opened door you bark for the other firefighters to get their tails down here to help you. 'What's going on!?' Othala is the first to respond, the once female Dalmatian rushing up to you to see what all the noise is on about, with the others following hot on her heels. Quickly telling the rest of the gang what's happened and where Kenaz is you find yourself dumping the extra backpack on the ground and then making your way back to where you had left Kenaz with every last firefighter in the station trailing behind you.";
			WaitLineBreak;
			say "It takes you maybe ten minutes to get back to where Kenaz, but that proves to be all the time the collie needs to finish up mounting its turgid dick into the depths of the Dalmatian's tailhole. What you see, just as soon as you turn the corner with everyone else falling in behind you, is the collie rearing its head back to howl to the sky as it pumps a sticky load of cum into the well-toned stomach of the downed firefighter. At seeing Kenaz belly literally swelling as the giant collie's dick floods his insides with its cum you don't take a second to hesitate over what choices you may have as you rush over and then drag Kenaz away from the beast just as its about a fourth of the way finished with him. The collie, lost in its powerful orgasm, continues to spray the ground where Kenaz was, totally not paying attention to you as its cock continues to spray an impossible amount of cum onto the ground in front of it. ";
			say "Taking this chance for all that its worth you haul the shivering and groaning firefighter back towards the firehouse, after barking at the stunned Dalmatians to move their tails. Birch is the first to give you a hand with your burden as the others form a half circle in front of you with Pertho taking the lead. Getting Kenaz to the main area of the firehouse and then helping to get him cleaned off you and the others watch as the Dalmatian shivers, groans and whimpers while his body seemingly goes into shock. Before panic can set throughout you and the assembled firefighter however, you and everyone else get a big surprise out of the fallen Dalmatian...";
			move OtherDals to NeverNeverLand;
			now Kenaztalk is 6;
			now Kenazaroused is 0;
			now helpKenazout is 7;
		else:
			say "Telling the firefighter where he can stick his sudden bout of altruism you rush over to the Shemale Collie and then headbutt the large creature away from the downed Dal. The force of your charge actually startles the twelve foot mutant more so than it does getting the other to move far enough away from Kenaz, yet that provides to open the exact window of opportunity you need for your next move. Grabbing the straps of the backpack that Kenaz had given you, you swing the bag with all of your might directly at the kneeling collie's head. A resounding [italic type]ka-thang[roman type] echoes out a second later followed by a loud thump as giant mutant drops onto the ground - knocked completely out cold.";
			WaitLineBreak;
			say "Not knowing how long the other is going to stay unconscious you grab Kenaz up off of the ground and then haul yourself and his furry black spotted butt back to the firehouse. 'Thanks a lot for not leaving me.' Kenaz whispers while trying not to laugh as the aftermath of panic begins to set into his mind about what could have just happened to him. At hearing those words you grip the hand you have holding onto the Dalmatian's furry paw just a bit tighter as the two of you run down the street together, back into the relative arms of safety.";
			now helpKenazout is 10;
		increase carried of food by 3;
		increase carried of water bottle by 3;
		increase score by 10;
		follow the turnpass rule;



to say aidKenaz7:
	say "Backing up some and then watching as Kenaz begins to actually [italic type]grow[roman type] there in the middle of the floor none of the other Dalmatians present can formulate words as they watch as Kenaz goes through a second metamorphosis for this month. With his muzzle parted and hot and wet huffs of air pushing out from between his lips you gaze in awe as the Kenaz's body twitches and then jump just slightly off of the ground as something unprecedented happens to firefighter.";
	WaitLineBreak;
	say "Instead of changing into a Border Collie, like you originally thought that he would, Kenaz form lengthens vertically as the Dalmatian's stomach trembles and then burbles as the firefighter's guts absorb the mutated dog cum inside of him. Muscles hardening and flexing while fur thickens with the seconds ticking by at an almost rapid pace you gaze in disbelief as Kenaz's appearance seems to almost double in girth as the Dal's stomach flattens back down into its former well toned six pack bearing shape. However, things don't just end there with the other's torso, instead Kenaz's chest and abs bulk up to new dimensions, swelling to an almost impossible shape as the firefighter's muscle grow even more dense than what they had once been.";
	WaitLineBreak;
	say "When Kenaz's eyes snap open, you just now take in the fact that the other man's lids had been closed while he moaned and writhed along the floor, you nearly leap out of your [skinname of player] skin as you watch Kenaz push himself up off of the floor and then stand up to his full seven foot height. Wait a minute...wasn't he...? Before you can finish that thought the Dalmatian man lets out an eerie howl out of the blue and then lowers his head to chuckle somewhat disturbingly before reaching down to tug at his impressive cock poking free from his sheath.";
	say "Normally Kenaz was not one to exercise his sexual practices out in the open, not unless he was really pent up, but at the moment there seems to be no such feelings of modesty within the Dal as the firefighter strokes his ten inch cock with one of his meaty palms. The fact that Kenaz was still growing all around put a halt on any kind of erotic fantasy those present might have had as something even crazier happened with the Dalmatian.";
	WaitLineBreak;
	say "Body still pulling upwards, muscles continuing to thicken, muzzle lengthening outwards to form a much sleeker snout, and cock extending farther from his groin as he continues to beat himself off, who in the world would have thought that, upon reaching a hand down underneath his balls, Kenaz would dip his hands into a thick oozing cunt pulling inwards at the point his taint trailed up towards his tailhole. However, be that as it may, no one could deny the thick puddles of juice dripping down between the now seven and a half foot Dalmatian's legs as the scent of feminine fluids trailed down onto the concrete floor at Kenaz's feet.";
	WaitLineBreak;
	say "Barking and growling while swinging his hips back and forth Kenaz's cock literally streams pre-cum out onto the ground in front of him - thankfully everyone was wise enough to keep well out of the way to avoid being shot at since no one knew that Kenaz's fluids might do to them at the moment. Balls growing heavy between his legs, plumping with new seed as his forming cunt continues to dribble between his spotted thighs, you and the rest could only watch in muted disbelief as Kenaz's tail broadens to almost double its normal width while the Dalmatian's fur grew more coarse as the firefighter continues trying to get himself off.";
	WaitLineBreak;
	say "The last of the transformations taper off just as Kenaz thrust three of his fingers up into his fully formed snatch causing him to cum from two ends at once. Amazingly enough the Dal's pitch black cock doesn't just shot a load from up out of his balls, instead the now eight foot tall Dalmatian fired off several thick bullets of whitish-yellow cum so hard they when they hit the metal of the garage doors, which Kenaz just so happened to be facing, they actually caused the metal give slightly. Of course the now giant sized Dalmatian didn't notice this however, because just as soon as he came the fully changed firefighter howled his climax to the top of the ceiling as he wildly rocked his hips forward to aid the end of his orgasm. His cunt wasn't left out of the christening of his new growth because just as the fifth shot of cum blasted out of Kenaz's cock a literally fountain of clear nectar flooded out from the Dalmatian new pussy forming a small lake appear on the concrete.";
	WaitLineBreak;
	say "It took maybe two minutes for Kenaz to lower his head back down from singing his praise to the sky, another couple of seconds for the other to release his fingers from around his onyx coloured shaft while at the same time unsheathing his much thicker digits from inside of his feminine folds, and then another minute before anybody could think to say anything. Othala, ever the leader, was the one first who chose to speak.";
	say "'Kenaz...this might be a dumb question, but are you still you?' Nobody moved as the eight foot Dal turned his head to look at the six foot something spotted firefighter. Yet when Kenaz next spoke all present knew that another big change was in the wind. 'Go get me a mop, bucket and rag so I can clean this mess up.' It was the fact that Kenaz wasn't asking please that made the room go silent. Even Pertho stifled a whimper as he felt the rolling command wash over his furry backside. 'Did I stutter or didn't you hear me?' Kenaz next asked and like a flash Othala was gone to get the materials that had been requ...demanded. 'Don't the lot of you have something else to be doing with yourselves?'";
	WaitLineBreak;
	say "You don't think you've seen bodies move as fast as they do at that moment as everyone else in the firehouse goes to do...something other than stand in front of the newly transformed Kenaz. 'And before you all decide to get lost,' Everyone stopped. 'Somebody take the provisions over there and put them into the backroom.' Dagaz was the Dal who complied with this task. Thinking that the show was over you try to quietly ease you way out of the firehouse, however, before you could make a move you find yourself being pierced by sharp green eyes, the likes of which bear a fire you never thought to have seen before inside of Kenaz normally overly friendly green orbs. 'Thanks for your help earlier. I appreciate it.'";
	WaitLineBreak;
	say "Nodding to the other you ask if he's alright. 'Better than alright. I'm...alive in a way that I wasn't before. I don't expect that to make much sense to you, but I feel better than I could have dreamed possible. More...free in a way.' Asking Kenaz about how he feels about his new body you find the other reaching a hand down to sweep across his new thicker chest fur and then saying, 'I may have looked to have changed, but I still feel the same. The new [']additions['] are just parts of me that were asleep before and now have gotten woken up so they don't feel out of place.'";
	say "Not knowing what to say at this point you can only watch as Othala returns with the bucket she had been ordered to go find and then blink in amazement as Kenaz tells the other Dal to go and clean up the spooge dripping off of the garage doors while he cleans up his mess on the floor. When the former female does as commanded without a hint of lip you find yourself oddly out of sorts as you notice how well Kenaz is at giving order now. Especially considering that he isn't technically the captain of this group. Yet, that's not the most odd thing to happen.";
	WaitLineBreak;
	say "Over the next hour you spend transfixed into place you find yourself taking a spectator's view on how the former slightly submissive Dalmatian works his...well hir commandership over the other firefighters to get them to clean up the firehouse. Nobody thinks to speak back as Kenaz barks out orders like a captain taking control over his ship. By the time you think to leave Kenaz has the fire station looking almost like a respectable building once again as he makes everyone around him, including Pertho, work at doing their part to get the edifice back up to code.";
	say "The last you see of the other...Kenaz was talking...or rather growling at the other Dals about drills that was normally par the course in taking up a firefighter's normal day. It would seem that the change you had felt earlier is going to hit the Dalmatians of the fire station much harder than they think. Mildly you wonder what this means between both you and Kenaz.";
	now kto is 2;
	now Kenaztalk is 3;
	now Kenazaroused is 1;
	move DalmatianTroupe to the FireHouse;
	now helpKenazout is 8;
	follow the turnpass rule;




to say aidKenaz8:
	say "'Hey, sorry, but I don't have much in the way of requests for you any longer.' Kenaz's voice, while deep and commanding as it has come to be at this point in the game, seems to carry the tone of brooding within it. Asking the other man about what's the problem is nets you getting a humorless chuckle from out of the muscle bound Dalmatian. 'I've been thinking a lot over what I should do about the firehouse and the future, given the changes that have happened to everyone here, and though nothing has come to pass yet I can't help but worry about what's going to happen with everyone.' Not sure you understand you ask Kenaz to elaborate a bit more.";
	WaitLineBreak;
	 say "'Well you see, this fire station was supposed to have been closed off right before the epidemic hit and everyone moved to different locations by order of the mayor. However, because of the current crisis I don't think that plan is going to be enacted in such a way of how those in office had dreamed it would. Sadly, that means that there's an opening for something more troublesome to happen with the guys here in the future. What that could possibly be is something I don't know and can't predict...and it scares me.";
	WaitLineBreak;
	say "Not sure what to say to this you ask Kenaz what he wants to do, if he had a say so about the situation. 'I'd keep this firehouse open instead of closing it down and shipping others across the state. I'd wring the neck of the chief if he even so much as hinted about trying to do else and the mayor...well I've never liked that guy anyway.' The growl coming from Kenaz's throat makes you take a few steps back from the incensed Dalmatian.";
	say "'Sorry, but I so do not like the idea of what may happen in the future, however, I'm not sure how to go about changing it. Politricks is not my field and I have no idea how to work at making the coming circumstances right...' At this you pat Kenaz onto the shoulder and then tell the other man to do whatever he thinks. After all, living with the consequences of choices is part of the secret to understanding how to make life better. Come what may, you tell Kenaz that you, along with everyone else here, will do what they can to support him. Tipping his head to look down at you Kenaz gives you a strange look before pulling his head back up to stare at the ceiling.";
	say "When the other doesn't say anything for several seconds you simply pat Kenaz onto one of his muscled arms and then turn to go off about your business. Just as you are about to go you could have almost sworn you heard a 'thank you' come from behind you. But at turning your head to look over the Dalmatian you look to find Kenaz already moving off about his way.";
	now helpKenazout is 9;



to say aidKenaz9:
	say "'Sorry, but like I said before, I don't have anything more for you to do for me today. However, if you want you can train with me for a while. Might help to make that [bodyname of player] body of yours fill out just a bit more.' Thinking this over, do you want to train with Kenaz? (Y=Yes, N=No)";
	if player consents:
		say "'Good. Then let's get to it! And thus begins your day of exercise with Kenaz.";
		if a random chance of 1 in 20 succeeds:
			say "The workout with Kenaz proves to be grueling, not to mention exhausting as the hyper sized Dalmatian puts you through the physical course of training that most firefighters have to go through in order to make the grade. By the time you've finished [one of]doing your hundredth push-up[or]running five miles around the city with Kenaz[or]doing your hundredth crunch[or]jumping over the jumping rope Kenaz had given you for the thousandth time[or]being grilled on the course curriculum while having Kenaz spot you on the weight bench the other had rigged from some [italic type]borrowed[roman type] equipment[at random] you puff out of gasp of breath before slumping down into place as utter exhaustion overcomes you.";
			say "'Not bad. Not as good as someone who's spent their formative years training for this sort of thing, but like I said before, not bad. Keep this up and you'll make an excellent firefighter in no time.' Panting and then nodding to Kenaz you lay your head back and close your eyes, right before you snap them open as you think over what Kenaz just said.";
			if strength of player < 18:
				increase strength of player by 1;
				say "Your strength has increased by 1!";
			increase thirst of player by 16;
			increase hunger of player by 15;
			decrease libido of player by 15;
			if libido of player < 0, now libido of player is 0;
			follow the turnpass rule;
		else:
			say "Working with Kenaz you end up going through a light workout with the muscular Dalmatian that ends with both you and your canine companion pleasantly tired once the two of you finish racing back towards the firehouse. The fact that Pertho had come along for your jog around the city made things a little less grueling, in your mind at least, as the feral Dalmatian made sure to keep you on your toes by barking at you whenever you slowed down too much. The nips he put onto your heels didn't feel so good though.";
			infect "Dalmatian";
			increase thirst of player by 8;
			increase hunger of player by 7;
			decrease libido of player by 7;
			if libido of player < 0, now libido of player is 0;
			follow the turnpass rule;
	else:
		say "Shaking your head up at Kenaz you let him know that you have other things to be doing today. 'Alright, but if you change your mind I'll be here.' And with that you turn to go off about your way.";



to say aidKenaz10:
	say "'Thank you so much for before.' Kenaz says and this time you know exactly what the other man means as he comes up to hug you tightly into his muscular chest. 'I don't want to even think about what that collie could have done to me if you had left me alone with it, but at the same time I can't help but think of it.' Kenaz whimpers and woofs in front of your face as he tries to keep from reaching down to rub at his jean covered cock. Smiling to the other you let him know that if he ever wants to try finding out you'll be happy to take him back there to try and find that collie once again.";
	WaitLineBreak;
	say "'NO WAY!!!!' Kenaz barks loud enough that a hush falls over the room. 'Not if you paid me to with a lifetime supply of chew bones and Kibbles and Bits.' The rapid shake of the Dalmatian's head has you chuckling slightly as you let Kenaz know that you'd never let anything like that happen to him. 'That's good. I definitely would not want to try taking that thing on, especially since I don't know that I'd turn into if it did try to fuck me.' A heavy blush forms on Kenaz's face and you don't try to fight it when the need to glomp him overcomes you.";
	say "'Hehe, thanks.' Kenaz hugs you in return and soon the room is once more lively with the sounds of the other Dals going about their business as usual.";
	now helpKenazOut is 11;
	follow the turnpass rule;



to say aidKenaz11:
	say "'Oh, hello. Are you doing okay today?' Kenaz asks and you nod to the Dalmatian before telling him a little about what's going on with you. 'That's cool. Hey, want to do some training with me? It might help you to fill out just a bit! Do you want to train with Kenaz? (Y=yes, N=No)";
	if player consents:
		say "Working with Kenaz you end up going through a light workout with the muscular Dalmatian that ends with both you and your canine companion pleasantly tired once the two of you finish racing back towards the firehouse. The fact that Pertho had come along for your jog around the city made things a little less grueling, in your mind at least, as the feral Dalmatian made sure to keep you on your toes by barking at you whenever you slowed down too much. The nips he put onto your heels didn't feel so good though.";
		infect "Dalmatian";
		increase thirst of player by 8;
		increase hunger of player by 7;
		decrease libido of player by 7;
		if libido of player < 0, now libido of player is 0;
		follow the turnpass rule;


Section 5 - Fucking Kenaz

Instead of fucking Kenaz:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Dalmatian":
			now monster is y;
			break;
	if cocks of player is 0 and cunts of player is 0:
		say "Lacking a gender of your own, you doubt you'd be able to entice him into some fun until that's resolved.";
	else if KTO is 0:
		say "'I'm sorry, but no.' Kenaz's resolve is unwavering, something unusual in this town, and at the staunch rejection you back from trying to entice the other man.";
	else if KTO is 1:
		if lastfuck of Kenaz - turns < 8:
			say "'S-sorry friend.' Kenaz pants while wagging his tail both tiredly as well as happily up at you. 'I think this Dal boy is going to need a rest before shooting anything else out this fire hose.' The playful firefighter gives you a lick across the cheek before going back to what he was doing.";
		else:
			if cunts of player > 0:			[female or herm]
				say "'Uhm...well...that is to say...' Kenaz seems to be somewhat bashful at the moment and you have to tilt your head to the side as confusion runs rampant throughout out your mind, that is, right before a hand at your rump has you whipping around. 'See, the thing is,' One of the other Dal boys, you're not sure who because of your intense focus on the blushing Dalmatian in front of you, says all of a sudden. 'Kenaz is here really prefers guys over the ladies so with you having a cunt and all...' Turning to look back at Kenaz you watch as the other man nods at you before blushing sharply. 'So here's the deal, me and some of the other guys will play with you if you want until you grow a pair to play with the firehouse tailbender over there.' The firefighter tips his head to Kenaz who growls at the other in warning.";
				WaitLineBreak;
				say "Not sure about this since you technically wanted Kenaz instead of one of the others you look from the shy Dal boy to the other Dalmatian next to you. Do you want one of them to play with you? (Y=Yes, N=No)[line break]";
				if player consents:
					say "You shrug to the other and then tell him that it's fine with you. The excited Dalmatian barks once and then howls for the others to come around. In a few moments you are swiftly dropped onto the ground and then snatched out of your clothes as eager muzzles and tongues lick across your [bodyname of player] body. Feeling your arousal growing as a steadily building heat surges throughout your pussy you shiver and shudder along the cool floor while looking at the half dozen or so muzzles around you. Not sure what you should do in this situation you don't have long to wait before three tongues are buried inside of your cunt. Gasping and then howling with all the passion you can muster up out of your [bodyname of player] lungs you spread your legs to let the other Dal boys to eat you out with their oh-so-wonderful tongues.";
					WaitLineBreak;
					say "Those who can't get at your cunt move around to lick at every other available part of your body which, oddly enough, seems to be currently humming with unbridled pleasure. Shuddering and then hissing while rolling around like a mad you take a moment to watch as Pertho, the only feral Dalmatian within the firehouse, headbutts Kenaz onto the ground, leaps up onto the other's back to force the submissive Dal to bend over and lift his tail up for him. Just as Pertho's dewclaws shred a large hole into Kenaz's pants a particularly long tongue buries itself up into your snatch making your eyes slam close. A wailing keen pours free from your lips as you pump hips up into the now single muzzle lavishing across your pussy with unabashed attention.";
					WaitLineBreak;
					say "A ear splitting howl makes you snap your eyes open just in time to look over to find the feral Dalmatian stuffing his fat piece of canine meat directly up into Kenaz's rump. Pertho, like the true canine he is, wastes no time in fucking the other and soon a dopily happy smile spreads across the normally shy Dal boy's muzzle as Kenaz takes the other Dalmatian hard and fast up the ass just the way he likes it. With you getting a proper treatment from the tongues of firefighters surrounding you and Kenaz getting deep dicked up the tailhole the entire firehouse quickly turns into an all out brothel as butts are plugged by eager cocks while muzzles are pressed flush against groins and in between rumps.";
					WaitLineBreak;
					say "Time escapes you as tongues are literally pushed in and out of your now gaping cunt as almost every Dalmatian takes a turn at your pussy. Labia fluttering, clitoris almost aching and cervix spread wide enough that the tips of muzzles can actually be fit inside of your body you don't think as you wrap your legs around the current firefighter eating you out and then scream to the ceiling as you douse the Dalmatian with your juices. A loud serious of howls fills the air a second after and sure enough you can feel the cum of the others raining down onto your arms, legs, chest, and face as the surrounding Dalmatians drench you in their viscous spooge.";
					WaitLineBreak;
					say "But the fun doesn't stop there because just as your legs are slowly pulled down from around the head of the firefighter whose neck you had been chocking someone else takes the previous Dal's place in between your legs. Panting and gasping like a freight you watch as the other Dalmatians smirk at you before rubbing their dripping cocks into your direction.[line break]";
					say "An hour later you shakily find yourself being helped up off the floor by a bleary eyed Kenaz. The both are you are disheveled and dripping with cum from just about everywhere, but at the same time neither of you are all too upset about this. The plucky smirks on both of your faces speaks of just how much fun the two of you had and when Kenaz reaches down to pat at your sore ass you growl at the Dal boy to let him know that it may be his ass which will be getting stuffed by you next time if he's not careful. A cocky wink from the other lets you know that the firefighter is far from frightened of your little [italic type]threat[roman type].[line break]";
					infect "Dalmatian";
					infect "Dalmatian";
					infect "Dalmatian";
					now lastfuck of Kenaz is turns;
				else:
					say "Waving the other off you let the firefighter know that, that will be alright. 'Suit yourself, but if you ever change your mind come back around. The rest of the guys and I will treat that pussy of yours to a real fine treat if you do.' A quick flick of a long and somewhat dexterous tongue has you blushing as you try and visualize what the Dalmatian is trying to hint at.";
			else if cocks of player > 0:		[male]
				say "Kenaz barks happily as you grind yourself up against the back of the Dalmatian's jean covered rump. Turning around to have a look down at your crotch the jade green eyes of the Dalmatian seem to almost twinkle as the spotted firefighter licks his lips hungrily while whimpering slightly at you. Some of the other guys around the fire house chuckle at this as they think about how needy the normally reserved Dal boy seems to become around you. Wagging his thin whip of a tail excitedly Kenaz grabs you by the arm and then hauls you upstairs to the sleeping area on fleet feet faster than you can blink.";
				WaitLineBreak;
				say "Once you're upstairs Kenaz is quick to [italic type]help[roman type] you out of your clothing and then over onto his bed. Once you are settled the Dalmatian makes a small show of stripping himself off his out of his jeans and then tossing his firefighting helmet onto one of the disheveled beds next his own. 'So,' The spotted firefighter wastes no time as he crawls up onto his cot and then over to you so that he can nuzzle his cool nose against the side of your [bodyname of player] neck. 'Who's going to be getting it up the tail to[if daytimer is night]night[else]day[end if]? I'll be more than happy to have your fire hose underneath my rump, if you want.'";
				WaitLineBreak;
				say "The shy words come out as a whisper and looking into the Dal boy's fluttering green you can tell that Kenaz would be happy to either bend over for you. But mildly you have to wonder if it would be better to be the one to be humped by the studly looking Dalmatian instead of the one doing the humping. Which to choose? (Y=Fuck Kenaz, N=Get Fucked)";
				if player consents:
					say "Telling the Dalmatian that you want to take a turn a being on top Kenaz barks happily and then nods before rolling himself from off of your body. Raising up onto all fours and then letting his tail flagging off to the side the firefighter turns his head to whimper at you while shaking his rump into your direction. Not seeing any reason to delay with what you both want you move up onto the former human's backside and then shuffle your hips so that you can bury [if cocks of player > 1]one of your cocks[else]your cock[end if] into the tailstar of your lover.";
					WaitLineBreak;
					say "A rumbling growl washes free from out of Kenaz's muzzle as the firefighter feels your dick push up through his tightly clenched tailhole. Whispering for the other to relax you wait a few minutes for Kenaz's anal muscles to unclench before pulling your hips back to begin fucking your firefighter. Grunting from the wet heat that makes up Kenaz's rectum you tell the other man how good it feels to have your [']bone['] buried inside of his ass and how much you'll love shooting your cum right up into his slutty rump. Kenaz lets out a series of whimpers and groans as he tells you without words how much he wants you to fill him.[line break][line break]";
					say "It doesn't take long for the Dalmatian to start rocking himself in counter rhythm to your pounding hips as your balls collide against his making the firefighter's blood almost sing throughout his veins as his lust kicks up a few notches. Sliding your arms down around Kenaz you hug your Dal close into your body as you fuck him with a raw kind of intensity that would startle you, if you weren't enjoying yourself so much, that is. Feeling the ticklish sensations of the Dalmatian's tail ghosting across your [bodyname of player] chest you chuckle into Kenaz's ear, telling him how much of a [italic type]good boy[roman type] he is before taking at nip at one of his floppy ears. A bark from the other is the only confirmation that Kenaz is pleased with what you are doing.";
					WaitLineBreak;
					say "Bed rocking against the wall like a steady beating drum and breath coming out in heavy pants both you and Kenaz grunt and slam into each other with almost bruising force as the need to get off overcomes your senses. The scent of sweaty Dalmatian quickly begins to fill your nose as the seconds turn into minutes and then to almost half an hour as you wildly fuck Kenaz. Grinding into the other while growling into the Dalmatian's floppy ear you stuff your cock as far up into your lover as you can and then reach a hand down to grab at Kenaz's dick. At the touch of your fingertips around his rock hard erection Kenaz freezes and then lets out a needy whine as your hand begins to slide down and around his long ten inch length of Dalmatian cock. When you fist at the bulb of his knot, already swollen to full hardness, Kenaz shivers and then hikes his as back even further to literally pound himself into your crotch in an effort to get the both of you off.";
					WaitLineBreak;
					say "Ten more minutes of pumping and fucking and humping later and then everything suddenly comes to a head as Kenaz as jerk as the Dalmatian lifts up his head and then sounds off his orgasm to the high heavens while bucking up against you like a wild bronco. A chain reaction is set off a second later as Kenaz's rectum grips your cock with almost crushing force making you shudder and then groan as you spill your cum into the rump of your firefighter. Underneath him Kenaz's own seed is shooting out in small arcs as one...two...four until finally seven long shots of yellowish Dalmatian ropes now paint the covers underneath the shuddering Dal boy.[line break][line break]";
					say "Panting and gasping while sighing in euphoric bliss you hug Kenaz closer into you before kissing the firefighter across his spotted neck. 'T-That...was real good.' Kenaz whispers and you can only nod before telling the other man how warm and comfortable his tailhole feels still gripped around you. A blush covers Kenaz's muzzle but you can't see it from as the Dal boy buries his face into his sticky covers, however, you do note that the firefighter's tail is wagging happily across your chest again.[line break]";
					infect "Dalmatian";
					infect "Dalmatian";
					now lastfuck of Kenaz is turns;
				else:
					say "Telling Kenaz that you want him to breed you, you find yourself mildly surprised when the Dal boy barks into your face and then flips you over like a ragdoll[if strength of player < 17]. This is somewhat startling to you, given the disparity between you weight and the Dalmatian's, but then again Kenaz is a firefighter so he probably knows a few tricks about how to handle prone bodies[else]. The strength of the other man is somewhat of a comfort to you and you don't have any problem being [']manhandled['] by your eager lover[end if]. When Kenaz sets himself up so that he is sitting down onto his bed with his legs folded together you have only a second to try and figure out what's going to happen next before you are treated to the Dalmatian lifting you up and then setting him down into his lap.";
					WaitLineBreak;
					say "'You're such a good friend to me, I want you to know that.' Kenaz whispers and you chuckle before telling him that he's a [italic type]good boy[roman type] too. This gets a playful growl from the Dalmatian and you have just enough time to snicker before you are forced to gasp when Kenaz lifts you up and then sets you firmly down onto his ten inch manhood. The feel of your back passage being spread by such a thick piece of man meat has you groaning throatily as a delicious kind of pressure slides its way across your prostate. Lowering your [facename of player] face down you grumble for Kenaz to fuck you hard and then hiss as you get your wish.";
					WaitLineBreak;
					say "Chuckling at your [']request['] Kenaz tenderly begins to lift you up and then just as gently starts to slide you down across his eager canine cock. Bucking smoothly into the Dalmatian so that you can grow accustomed the girth spearing up into your backside it doesn't take long for you to get into the rhythm of things as Kenaz grinds his crotch into your ass on every other pump of his hips. With both of your balls tapping against each other on every other thrust you and your lover whimper and moan as the two of you find sensual comfort in one another. Kenaz's ministrations soon change though as the Dal boy slowly begins to pump you faster into his lap. The gentle tap of the firefighter's growing knot against the outer edge of your pucker soon begins to light a flame inside of your gut. Throwing your head back you whisper for Kenaz to breed you for all you're worth.";
					WaitLineBreak;
					say "Your wish is granted because soon the Dalmatian begins pounding you faster and harder down onto his straining canine cock. When a strong set of fangs take you by your [bodyname of player] neck white sparks flash across your clenched eyes. Heart pounding loud enough that you can actually hear the beat in your ears you keen quietly up to the ceiling you barely notice it when Kenaz's slobbery tongue licks itself across the nap of your neck, which he still holds firmly between his jowls.";
					say "Before long you are being jack hammered so hard into the Dal boy's lap that [if cocks of player > 1]your cocks[else]your cock[end if] is now twitching and shuddering with gushes of pre cum ooze down onto your legs. A slightly painful knocking at your backdoor signals that Kenaz is almost ready to lose himself as the Dal boy's fully bloated knot pounds more intently at your rump. When the fangs locked tight onto your neck are suddenly removed you yelp as the bulb slips up into your tender insides and then locks you together with your lover. The fire hose of the Dalmatian's cock doesn't waste any time in flooding your rump with Kenaz's sticky load after that and upon being thrust down hard once into the firefighter's groin you don't have much of a choice except to take the milky seed up into your guts.";
					WaitLineBreak;
					say "When a furry hand comes around to grip at [if cocks of player > 1]one of your cocks[else]your cock[end if] you freeze and then hiss as Kenaz pumps you in an effort to get you to orgasm in time with him. Arching up and then crying out to the ceiling you spill your load into the Dal boy's furry hand after Kenaz sneaks a hand down to palm at your overly nuts. A minute or so after both you and the firefighter have come down from off of the twin peaks of ecstasy both you and Kenaz collapse back against the bed, well you on Kenaz and him on the bed.";
					WaitLineBreak;
					say "'T-that was real good! Want to go again?' The happy Dalmatian asks and you can only chuckle before telling Kenaz to give you a minute. When a happy bark rings out into your ears you smile tiredly as you think of how good it feels to have the other man as your lover. The pulsing throb of Kenaz's cock inside of your body has you humming almost wantonly and reaching down to rub a hand across your belly you take note that you can actually feel some of the Dalmatian's cum rolling around inside of the lower area of your guts. Times like these you come to really love how complete Kenaz makes you feel. However, in about another ten minutes you come to really love having the firefighter as Kenaz is once again riding your ass for all you're worth.[mimpregchance][mimpregchance][line break]";
					infect "Dalmatian";
					infect "Dalmatian";
					now lastfuck of Kenaz is turns;
	else if KTO is 2:
		if lastfuck of Kenaz - turns < 6:
			say "'I know you might want to take a ride right about now, or maybe have a nice foot and a half-long Dalmatian hot dog underneath your tail, but you're going to have to wait.' Kenaz chuckles before patting you on the ass and then sending you off with a dismissive wave of his hand.";
		else:
			say "The alpha herm Dalmatian growls in a lustful, but dangerous way after you tell him what you want. It's only a second later that Kenaz grabs you by your shirt and then hauls upstairs towards the station's bunk area. When Kenaz kicks the door open several spots heads look up in confusion. Barking for the others to [']get out['] the rest of the firefighting crew snickers and then move off about their way downstairs, some via the fire pole. Once the others are gone Kenaz tosses you onto his bed you find and then quickly and efficiently begins to strip you out of your clothes. The Dal does the same to his own clothing once you are naked making things much easier for what to come next. A few playful licks over your face and neck have you shivering in restless excitement as the Dalmatian silently shows you his affection for asking him to be your lover today.";
			WaitLineBreak;
			if cunts of player > 0 and cocks of player > 0:		[herm]
				say "'Well, how should we do this?' The aggressive Dalmatian inquires while pulling of his own shirt, pants and shoes. Looking at the massive sixteen inch dong settled in between Kenaz's leg you mildly wonder if that could fit into your body without causing insufferable pain. 'I think I'll let you decide,' Kenaz words make your head snap up so that you can look into the smoldering eyes of the once timid Dalmatian.";
				say "Not sure about whether you would want Kenaz buried inside of your ass or your eager cunt, since you have a feeling the other is not about to give up his ass or cunt to you anytime too soon, if the hungry look being cast your way is anything to go by, you think over the question for a minute. Which would be better? (Y=Ass, N=Cunt)[line break]";
				if player consents:
					say "Telling Kenaz that you want to have your ass stuffed full you find yourself quickly getting tossed over onto your front, via a powerful spotted hand, and then lifted up by the hips after Kenaz crawls onto the bed with you. Knowing that this is probably going to be a rough ride you grit your teeth in preparation for what's to come, but then yip in confusion when a cold wet nose buries his muzzle into your rump and then begins to sniff around as though searching for something. Half a minute of wet sniffing later and your mouth is forming a perfect 'O' as wet and slobbery tongue trails across up the line of your cleft.[line break]";
					say "A playful snicker from behind you lets you know everything you need to know about how much Kenaz is enjoying things as the herm Dalmatian sweeps his restless tongue over and along your ass while dipping his sinuous tongue into your puckered hole. Moaning and hissing from the pleasure racking its way up your spine you clench your fingers onto the bed as you wiggle your rump back further onto Kenaz's eager organ. A growl makes you freeze though as thick claws clench warningly onto your thighs.";
					WaitLineBreak;
					say "When the Dalmatian pulls out of your newly moistened rear you have about all of two seconds to prepare yourself mentally before a heavy tipped canine cock is positioned at the back of your ass. There's little time for you to adjust as the sixteen inch piece of Dalmatian cock is quickly slammed home into you tender rectum as heavy furred thighs wrap themselves around your own [bodyname of player] legs. Gasping and shuddering from the sensations of being filled so completely Kenaz bends himself over your back and then licks you tenderly across your [facename of player] neck before whispering to you to settle down.";
					WaitLineBreak;
					say "Tensely you let the firefighter know that you would if you didn't have a pole buried into your guts. Sadly at that all the dominant Dalmatian herm does is chuckle darkly at you. A warning bell goes off inside of your head just as Kenaz begins to pull his dick back out of you. Noting how slowly the other is moving in his retreat you find yourself adjusting quickly as the four inch wide Dalmatian cock slips out of you, though you have a feeling you won't be sitting down for a few hours afterwards when this is all over with. When Kenaz fully pops out of you, you blink and then turn your head to regard him questioningly.";
					WaitLineBreak;
					say "'Don't worry, I'm not done with you yet.' The Dal herm says just as he shuffles his hips around at your backside to prepare himself for re-entry. When massive hips push forward you moan loud enough to be heard downstairs as Kenaz spreads you open onto his gargantuan cock once again. This time, it doesn't hurt as much as he buries himself in almost to the hilt. The thickening knob at the end of the Dalmatian's cock stops Kenaz from putting all sixteen inches of his cock back into you. 'Now get ready to enjoy the ride.";
					WaitLineBreak;
					say "And with that the Dalmatian starts his hips to thrusting. Slowly, but firmly Kenaz grunts and pants as he slides himself back and forth in and out of you with gentle, but insistent force. Gasping as pleasure replaces the slight pain you just experienced a second ago you find yourself giving into the bliss of the moment as you come to realize that Kenaz is moving more like a lover than a just a dominant male looking to get his rocks off. And what fat [']rocks['] those are as heavy canine orbs sway against the underside of your body - knocking into with you with growing strength as Kenaz begins to speed himself up.";
					WaitLineBreak;
					say "When a burly hand reaches down a finger to play inside of your snatch you hiss as that single thick digit rubs up against the nub of your clit. Moaning from the rapture of the moment you fail to notice how Kenaz is looking down at you with an unreadable look on his white and black spotted face. With hips rocking themselves up against you with growing force you meep when two fingers enter up themselves farther into your cervix. The cock inside of your ass is now positioning in and out of you with almost bruising force as the bloating knot at the base of Kenaz's dick swells quickly. Soon you know that it will be impossible for you to take up into you. Or at least, you vaguely hope so as one of the Dalmatian's hands grabs you by your shoulder in an effort to force your ass back further onto the randy firefighter's dick.";
					WaitLineBreak;
					say "It's almost twenty minutes later when the fingers dancing inside of your cunt pull themselves back out, but by then the dual pleasures of being taken at two fronts has you all but drooling as you stare up into Kenaz's face pleadingly. When the Dalmatian reaches up to lick your dripping juices off of his meaty fingers you faintly hear the firefighter say 'It's time,' right before sudden movement overtakes you.[line break][line break]";
					say "When Kenaz suddenly grips you by your shoulder and then forces you back onto his too thick knot you yowl like a tiger in heat as you feel pain like no other racking its way throughout your spine. Squirming and cursing while grunting and flailing you find vertigo overtaking you as Kenaz takes you by the waist and then flips the two of you over onto his bed. The fat bulb inside of your body twists itself neatly into place inside of you which alternatively traps you firmly into place against Kenaz.";
					WaitLineBreak;
					say "'Good boy,' Kenaz whispers into your ears right as he lowers both of his hands down to your cunt and cock, respectively. With his knot buried to the hilt the Dalmatian rolls his fingers around the edge of your labia while pumping at [if cocks of player > 1]one of your cocks[else]your cock[end if] with rapid pumps of his hand. You groan and shiver, yowl and cry as Kenaz continues on with the thrusting of the firefighter's hips until finally both you and your Dalmatian lover cum together into that crashing wave called climax. Hissing slightly you feel you male seed shoots up out of your cock with the force of a firehouse spraying at full power while at the same time your feminine nectar gushes from between your legs down onto Kenaz's own meaty hips.";
					WaitLineBreak;
					say "When your rectum suddenly starts to squeeze at the Dal's sixteen inch cock Kenaz throws back his head to howl to the ceiling as his cock hoses down your tender insides. The force of his orgasm is so great that your [bodyname of player] belly expands to an almost disproportional size as gallon after gallon of hot Dalmatian cum gushes inside of you. Thanks to his gargantuan knot plugged up your insides of you none of his semen can come back out so when you suddenly cough and taste his salty cream on your tongue you blush and then swallow vehemently to keep the spooge from leaking from down onto the side of your lips. 'Hope I wasn't too rough on you,' Kenaz whispers after he pulls his hands away from your thoroughly soaked cunt and dribbling cock.";
					WaitLineBreak;
					say "Chuckling up at your lover you nuzzle your head back against the Dalmatian while humming pleasantly up at Kenaz to let him know about how well you enjoyed his efforts just now. The firefighter chuckles in return as he wraps his arms around you tightly while licking you across the back of the head. Your belly sloshing with the dregs of the herm Dal's load you can only sigh and rest your head back against Kenaz as you soak up the minutes of relief after such a powerful experience. The warm and pleasantly full feeling coming from both your ass takes you off to sleep a few minutes later.[mimpregchance][mimpregchance][line break]";
					infect "Dalmatian";
					infect "Dalmatian";
					now lastfuck of Kenaz is turns;
				else:
					say "Shuddering and spreading your legs wide you tell Kenaz that you want his dick buried inside of your oozing snatch. The alpha Dalmatian growls happily at that and quickly makes his way up the side of your body so as to give you what you want. With his eight foot body quickly hovering over your own [bodyname of player] form you smile at the Dalmatian before watching as Kenaz takes his cock into hand and then jerks it slowly inches above your feminine folds.[line break][line break]";
					say "The musky scent of aroused Dalmatian slowly fills your senses as you watch small beads of precum leak out from the head of Kenaz's cock. When the firefighter slowly works his pumping hand down along the length of his shaft to get it wet you smirk at how thoughtful Kenaz can be. Right before you gasp as twin fingers reach down inside of your ass in search of your prostate.";
					WaitLineBreak;
					say "You find yourself thankful that Kenaz keeps his claws trimmed else you might have been a little worried when the Dalmatian finds the small bundle inside of your rectum and then begins to poke liberally along it. Rubbing and teasing at your pleasure button Kenaz works you up into a delightful frenzy as he rolls his fingers around inside of your puckered ring. The insistent stimulation causes [if cocks of player > 1]all of your cocks to rise[else]your cock[end if] to rise to full hardness as well as your wet cunt to flutter, something you are almost mildly embarrassed about as you watch Kenaz smile down at you almost devilishly.";
					WaitLineBreak;
					say "Forgetting for a second about the fact that there is a sixteen inch canine pole being primed for use just above your cunt you buck yourself up into the Dalmatian when Kenaz buries another finger inside of you. This move forces the tip of the firefighter's prick to slip into your heated channel and at feeling your warmth taunting at his manhood Kenaz grunts and pulls his now sopping wet hand off of his cock in order to thrust his hips down into you. You yelp just as Kenaz gets four inches up into you. Your hips freeze into place a second after your throaty call as your eyes look up into Kenaz's own burning green orbs.";
					WaitLineBreak;
					say "'Now I think you're ready.' Kenaz grumbles he both leans himself down to lick you across your [facename of player] face once again and then removes his fingers from inside of your musky, but clean, ass. The loving look in his eyes is almost enough to make your heart melt, but that's right before you hiss as the Dalmatian sinks himself further inside of you.[line break]";
					if cunt length of player is less than 14 or cunt width of player is less than 4:
						say "Knowing that he'll have to be careful with you as you're amateur pussy is not ready to handle his massive rod Kenaz grunts and then drives his hips down into slowly as he watches your face almost worriedly. When half of his sixteen inches are buried inside of you the Dalmatian nips at the side of your neck to draw your eyes open to look up at him. Blinking your [facename of player] eyes up at him you watch as Kenaz asks, 'Want me to keep going?' Looking down you find the jet black spear of the Dalmatian's four inch wide manhood resting inside of you like a sword just being drawn from its sheath. Quietly you turn your head back to think. Should you or should you not? (Y=Yes, N=No)[line break]";
						if player consents:
							say "Shaking your head at Kenaz you tell the Dalmatian that you can take it. Looking at you for second to see if you are being serious the other nods and then sinks himself down into the depths of your wet folds. A slight hiss pushes free from your lips as your cervix is forced to spread wider and wider around the four inch width of the Dalmatian's cock. A sudden jerk has Kenaz stopping from pushing anymore inside of you. When he moves to pull back from you he mutters, 'I don't think this is going to work.' Seeing the other's hesitation, but feeling your own burning desire needing to be sated you grip Kenaz by his shoulders, which he has placed on both sides of your prone [bodyname of player] body, and then pull yourself up completely onto him.";
							WaitLineBreak;
							say "Everything stops for a second as Kenaz holds himself steady while your fluttering cunt lips wrap taunt around the Dalmatian's sixteen inch cock. Trembles run through your body as you hug yourself against your lover at the same time small sobs spill out from your lips, however, before Kenaz can so much as dip his head down to look at you in concern you are slowly grinding your hips into the Dalmatian's groin. 'You don't have to do that...' Kenaz whispers but you simply ignore him in favor of pulling yourself up and down his thick jet black length, teasing his expanding knot all the while.";
							WaitLineBreak;
							say "When your cunt has relaxed enough that you can actually slide yourself down all the way to the tip of Kenaz's cock the Dalmatian finally gets it through his head that you want this. Muttering something under his breath the firefighter grunts and then begins to swing his pelvis back and forth to counter your own continuous thrusts up into him. It doesn't take long before both you and he are fucking each other like mad. With your [if cocks of player > 1]cocks[else]cock[end if] liberally gushing between the two of you, you find yourself blushing slightly at the sticky sounds of your [skin of player] skin smacking heavily into Kenaz's sweaty fur permeate inside of the room.";
							WaitLineBreak;
							say "As his fat orbs knock against the divide of your legs you groan as the heated weight promises you a full load of cum, the likes of which you just know you'll be gushing out when this is all over. However, the now fully swollen knot at the end of Kenaz's guarantees something else as the thickened bulb of flesh hits you again and again and again. Every pump threatens to seen the Dalmatian's fleshy orb into your soaked depths and breathlessly you gasp while trying to drive your nether lips over the mass of flesh. When Kenaz lifts his head up to howl you think that the moment is about to end, but instead the Dalmatian grabs you by the waist, flips the both of you over so that he is now on his back, and then proceeds to drive you up and down onto his cock with the kind of force that takes your breath away.";
							WaitLineBreak;
							say "Rocking himself forward into you in this new position forces Kenaz's cock farther up into your cervix, but instead of being painful it feels so almost too good to bear. The heat and girth slipping and slamming inside of you makes you groan as you Kenaz breeds with a kind of intensity that is almost painful. Looking into his eyes you find your lover watching you with passionate eyes and in leaning up to kiss him across his lips you find a responding tongue sliding eagerly in between your lips.";
							WaitLineBreak;
							say "When the spurting hot tip of the firefighter's cock begins to spray cum into your womb after Kenaz pulls his head back to howl for a second time. Quickly the Dalmatian's cum rushes up into your belly, filling you almost to the brim as Kenaz's gargantuan balls tremble between his legs, signaling the onset of the Dalmatian's orgasm. At the sensation of the liquid warmth churning inside of your belly you can gasp and then groan before yelping as your hot honey begins to leak down onto his chest. Your [if cocks of player > 0]cocks give several jerks before spraying their load[else]cock give several jerks before spray cum[end if] onto both Kenaz's chest and your own signaling the zenith of your orgasm.";
							WaitLineBreak;
							say "Panting from the feel of being stuffed so completely you find yourself blinking in surprise as you feel the warmth trickling down your thighs. Tilting your head down you realize that Kenaz didn't knot you so there's no plug to keep his load into you. Therefore, minutes after everything is over with and the Dalmatian is pulling out of you, you can only dip your head into the side of your lover's neck in embarrassment as you see your firefighter's cum literally spill out of your body. Kenaz simply chuckles and lick you across the back of your neck on up to the side of your head before whispering something unintelligible into your ears.";
							WaitLineBreak;
							say "The two of you are slow to clean up afterwards as Kenaz seems to want to dote over you, he makes a special play of things by licking his cum up off of your body before handing you a towel, but once you both are ready to leave the two of your head out of the sleeping area and then back downstairs together. As expected half of the station is either snickering and nodding to you in respect.[impregchance][impregchance][line break]";
							infect "Dalmatian";
							infect "Dalmatian";
							now lastfuck of Kenaz is turns;
						else:
							say "Whimpering to the firefighter to let the other know of your feeling Kenaz slowly pulls himself up out of you. Just as you think the moment is over with you get a big surprise when a cool, moist nose buries itself in-between your legs. While your Dalmatian lover might not have been able to fuck you the way he might have liked Kenaz is not to let you go without unsatisfied. Raising your legs up and then burying his face into your snatch Kenaz hungrily rolls his tongue throughout your pussy. The former subby firefighter shows no hesitation as he slides his tongue into your cervix only to pull out to lay tender kisses along your labia seconds later. When familiar digits return back inside of your tailstar to begin fingering your prostate you find yourself smiling loving back at Kenaz.";
							WaitLineBreak;
							say "With your [if cocks of player > 1]cocks[else]cock[end if] drooling down the length of your thighs onto your balls you know that it won't be long before you make a mess of things. The roving tongue drilling up inside of your cunt doesn't help as Kenaz almost literally swallow around your nethers after he opens his mouth wide you place gentle fangs around the flutter lips of your pussy. Trying to warn the other of your emending orgasm seems to mean nothing as Kenaz grunts into your body while moving his fingers more quickly inside of you.[line break][line break]";
							say "When a playful curl of the Dalmatian's tongue slides across your inner walk you scream out loud enough to be heard downstairs as you cum with enough force that you actually jump slightly off the bed. Kenaz takes your frantic movement with good grace as he grunts and then hisses before sucking down your honeyed fluids like a dog dying of thirst. The fact that your [if cocks of player > 1]cocks are spraying their load[else]cock is spraying its load[end if] onto the Dalmatian's snout means nothing to Kenaz as he continues to slurp and lick across you feminine folds.";
							WaitLineBreak;
							say "It takes about a minute for you to calm down from your spectacular climax, but when you do you find that Kenaz is pulling his head up to look at you. His muzzle is dripping with your [cock of player] cum while his neck on down is matted with your honey. 'Next time maybe I'll get to bury my bone inside of you all the way.' Kenaz says optimistically after pulling his fingers out of you to stand himself up onto the side of his bed. You try and tell him that you'll return the favor, but he just shakes his head at you. 'Nah, besides, I've been itchin' to bury my bone inside of [one of]Birch's tail[or]Dagaz's tail[or]one of the other guy's tails[at random].[line break][line break]";
							say "Chuckling at that you shakily get up off of the bed to go and get your clothes. A tender caress along the end of your rump has you turning to look back at Kenaz just as you are about to put on your shirt. The other smirks playfully at you once before going off about his way.[line break]";
							infect "Dalmatian";
							infect "Dalmatian";
							now lastfuck of Kenaz is turns;
					else:
						say "With such a wide and deep snatch you don't have to worry over being taken too roughly as Kenaz leans himself down over you and then slips his sixteen inch Dalmatian cock into your cunt. The firefighter is grunting and growling and moan in time with you as he humps you with all of the force his body can muster. Twining your legs around him you shudder and then gasp your snatch wraps wetly around the other, pulling him further and further into you so that even the growing orb of his knot is able to pop into your depths without trouble.";
						WaitLineBreak;
						say "'So deep and wet,' Kenaz mutters, more to himself than you as the Dalmatian grumbles a lusty growl out from between his clenched lips. Chuckling at your lover you wrap your legs around Kenaz to pull him in further until his fat balls are literally slapping against the underside of your taint. Your own [if cocks of player > 1]cocks are being rubbed over[else]cock is being rubbed over[end if] so wonderfully by the Dalmatian's thick pelt of black spotted fur that you find yourself wishing you could be up inside of Kenaz's cunt at the same time he is pumping inside of you. You know that won't happen as of now, so instead you arch and moan upwards into your lover's thrusts, begging him without words to fuck you with everything's he's got.";
						WaitLineBreak;
						say "When Kenaz's knot fully inflates and then attempts to lock him into you the Dalmatian gets a slight surprise when his fully hard shaft pops out of you. 'Damn you're like the ocean.' You roll your eyes up at him and then tell him that if he can't ride you to go and play in the kiddy pool. At that the firefighter growls at then buries himself back into your cunt, just this time with enough strength to make you shudder slightly. There's little mercy given, and even less expected by you, as throw your head back and ride out the [italic type]wave[roman type] that have become Kenaz's furious thrusts.";
						WaitLineBreak;
						say "Bucking and moaning while rocking the bed back against the wall both you and Kenaz fuck for almost a half an hour before the Dalmatian throws up his head to howl out his orgasm. Like a torrent the firefighter's cum literally pours into your depths as Kenaz grinds his hips into your crotch to get out every drop of cum his balls have to offer. Likewise, the heat of your lover's sticky male sap makes you shiver and then moan as your climax sneaks up onto you almost without warning. Between your [if cocks of player > 1]cocks[else]cock[end if] and your cunt you shed more than a litter's worth of juice as your drench both yourself and Kenaz down in the wash of your orgasm.[line break]";
						WaitLineBreak;
						say "Pulling back and then driving his knot into you one more time Kenaz plugs you fully and then does a very canine-like thing. Lifting one leg up and then spinning around you Kenaz gives you his back as the Dalmatian stimulates a true canine mating tie with you. Chuckling at the act you find yourself reaching out a hand to rub along the Dalmatian's gaping slit, which looks somewhat unfulfilled. A hiss and shudder follows a groan as Kenaz lets you touch him this way. Turning his head back to look at you the other has a funny look in his eye, but you're not sure what it means.[line break][line break]";
						say "It doesn't matter though because when the last of his cum has trailed out of his cock Kenaz pops himself out of your cunt and then goes about looking for a towel or something to clean off with. Leaving you as you are you rub a hand down onto your overly full belly as your snatch leaks with the sticky trails of the Dalmatian's cum.[impregchance][line break]";
						infect "Dalmatian";
						infect "Dalmatian";
						now lastfuck of Kenaz is turns;
			else if cunts of player > 0:		[female]
				say "Kenaz sniffs over your form and then chuffs slightly while looking down at your [bodyname of player] form. 'Well, it seems we're more like [']sisters['] than what I would have preferred.' The Dal doesn't say much after that, but by the penetrating look in his eyes you get the feeling that he's thinking over something. 'Want to try 69ing each other?' The out of the blue question makes you blink and then smile before nodding to your lover. Kenaz whuffs in front of your face and then proceeds to get himself into position to fuck you.";
				WaitLineBreak;
				say "When the first brush of Kenaz's tongue touches your clit you find yourself shivering slightly from the pleasure of the warm organ as it rolls itself across your feminine folds. Not to be outdone you lift your head up to where the Dalmatian herm's fat sheath is slowly parting to release his black canine cock and then lift Kenaz's heavy white furred orbs out of the way to see the drooling slit of the other man. Pink and perfect like a flower in bloom, you move your nose over to the firefighter's vagina and then begin to lap your tongue out across the divide while sniffing at the heady scent of mixed male and female wafting from in between Kenaz's legs.";
				WaitLineBreak;
				say "A shudder racks its way down Kenaz's spine to the tip of the other's happily wagging tail making you snicker some. Your sounds of amusement are soon replaced with the sounds of soft moans and deep moans as Kenaz moves his tongue throughout the inner depths of your body. That supple tongue, sliding itself up throughout the grooves of your hidden entrance, is slow, but steady to finds its way on up inside of your cervix. In the back of your mind you could almost swear the Dalmatian is prodding into your womb with his long organ - that's just how long Kenaz's tongue feels as it works its way through you.";
				WaitLineBreak;
				say "In return for his efforts you make sure to give Kenaz equal enthusiasm with your own [facename of player] tongue. Kissing at the sweet tasting cunt of your lover you work your organ into a passionate frenzy as you nibble on the other's clit while bobbing your face up and down into the Dal's groin with slow and measured movements. When the hefty orbs belonging to your firefighter begin to churn and move across your palm you roll Kenaz's fat nuts with your fingertips without thought. This gets a sharp whine from the other in return.[line break][line break]";
				say "Minutes pass by with the two of your eating each other out. Your face is now covered in the juices of the Dalmatian while Kenaz's own snout and muzzle is soaked so much that his white and black spotted head fur is matted down. The bed underneath the two of you is slightly rocking as the two of you buck up into each other, however, neither of you pay this any mind as the rapture burning its way throughout your minds is almost too good to bear. When Kenaz's thighs begin to twitch around your head and his cock starts to thoroughly bath your chest and torso down with his pre-cum you know that it won't be long before both of you finish.[line break]";
				say "Sensing his end Kenaz begins to work his tongue frantically inside of your cunt. Dipping into your cervix, tasting the few drops of nectar lining the walls, and panting hot breaths out and along your thighs, you actually find yourself having to actually force your legs to go still as you feel that you could rock the Dalmatian up off of you with how good your body feels right about now. When that dexterous tongue begins to do even more unspeakable things to the inside of your cunt instead of trying to restrain yourself from enjoying the passion of it all, you cry out for more and more as you suck down the oozing juice coming out of your lover's snatch. Unknowingly you don't realize if before it happens, so without warning when Kenaz rolls a finger down to bury the digit into the inside of your pussy alongside his tongue and then prods over that hidden button of pleasure inside of you...well you nearly do send the Dalmatian flying off of you as you powerfully buck up into the other's face.[line break]";
				WaitLineBreak;
				say "When you cum you don't just orgasm, instead you shoot your honeyed juices with the kind of force that nearly drowns Kenaz as you flood the Dalmatian's snout with your honey. White hot sparks of bliss trail throughout your body turning you into a livewire as you thrust and yowl and pump yourself into the firefighter like a bull fighting to unsaddle a rider. Consequently this causes your fingers to tense and your tongue to dig on up inside of Kenaz which forces the Dal's climax and sends the herm canine right off the edge of the map. Lifting his head slightly to let out a ferocious bark, Kenaz rains his cum down onto your face, drenching you the same as you did to him.[line break][line break]";
				say "The both of your climaxes have to last for almost five or so minutes, however, like all good things they finally do end and quickly you and Kenaz end up slumping down onto the bed while panting like freight trains. Of course, being so much heavier, not to mention on top, Kenaz is forced to roll off of you after you tap the side of his thighs in desperation for air. 'Well,' Kenaz beings while panting hotly next to you. 'That was fun. Want to go again in about twenty minutes?' And at that point all you can do is laugh at your lover.";
				infect "Dalmatian";
				infect "Dalmatian";
				now lastfuck of Kenaz is turns;
			else:		[male]
				say "Seeing the nice piece of meat swinging between your legs Kenaz doesn't waste time as he lays himself down on top of you, gripping both of your arms to hold you steadfast onto the bed, and then begins to grind sheath and balls into your body. 'Always like doing this, hope you don't mind.' Even if you did you have the strangest sensation that the larger Dalmatian wouldn't pay you much attention if you protested as Kenaz quickly frees his cock itself from its furry home by continuing to rub himself over you while his nuts grind themselves further into the underside of your taint. Feeling the weight of the firefighter using you for his own pleasure you smirk and then lift your head back into the pillows while moaning your submission loudly up to the other.";
				WaitLineBreak;
				say "Kenaz doesn't say a word as he begins to rock the bed hard enough so that it bumps into the back wall as he meshes himself more firmly into you. The Dalmatian's growls are probably drowning out any sound he could hear as the other snarls while coaxing his cock to its full length as he steadily drips pre-cum onto your [bodyname of player] chest. The warmth of the other coupled with the feel of the Dal's fur rubbing up and across your cock work in time to make your own manhood liberally leak pre out across your stomach. Grunting and twining your legs over and around Kenaz's backside you gasp slightly as you feel the other getting closer to his fulfillment as he thrusts across your body harder.";
				WaitLineBreak;
				say "Whuffing and panting while growling and moaning to the sky both you and Kenaz end up cumming minutes later after the other takes you by the neck and then buries his fangs into your [skinname of player] skin. His climax, in turn, triggers your own and before long both you and the herm Dal are coating each other's chests in cum as you lose yourself to each other. It only takes ten minutes before the two of you are ready to come down from your respective zeniths, but once you do, Kenaz refuses to release the side of your neck. Not sure why you look up at the other and then see the reason glowing hot inside of the Dalmatian's shining green orbs.";
				say "You both don't make it back downstairs for another hour or two after that.";
				infect "Dalmatian";
				infect "Dalmatian";
				now lastfuck of Kenaz is turns;


Section 6 - LowerFirePole

LowerFirePole is in FireHouse.

The description of LowerFirePole is "The lower end of the firehouse's fire pole sticks out of the ground while leading up to the upper sleeping quarter area of the building. Maybe you could try to [bold type]climb up[roman type] it? Just for fun of course.".

the scent of lowerfirepole is "The fire pole smells like sweat, nervousness, excitement and above all else hardworking diligence.".

Firepolescaling is an action applying to nothing.
Understand "climb up" as Firepolescaling.
Understand "scale up" as Firepolescaling.

Check Firepolescaling:
	If LowerFirepole is not visible:
		say "[if PALOMINO is known and a random chance of 1 in 2 succeeds]If you want to play around on a pole, try the PALOMINO.[else]Thinking about monkeying around on a fire pole are we?[end if]";

carry out Firepolescaling:
	say "Figuring that you could do with a light workout you decide to climb the fire pole.";
	let bonus be (( the strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 14:
		say "Managing to climb the golden pole you make your way up to the sleeping area of the fire house.";
		Move player to Sleeping Quarters;
		increase score by 2;
	else:
		say "Not being able to grip the slick pole to pull yourself up correctly you end up sliding back down in dismay.";


Section 7 - Upstairs

Down of Sleeping Quarters is Firehouse. UpperFirepole is in Sleeping Quarters.

Sleeping Quarters is a room.
The description of Sleeping Quarters is "[SleepQuarters]".

To say SleepQuarters:
	if KTO is 0:
		say "[SleepQuarters0]";
	else if kto is 1:
		say "[SleepQuarters1]";
	else if kto is 2:
		say "[SleepQuarters2]";

to say SleepQuarters0:
	say "The upper area of the firehouse features several beds that have been lined up in neat rows. They extend all the way from the doorway to the far wall, where a large entertainment system has been set up. From the looks of things, it would seem as though most of the beds have been unused as of late, save for one in particular. Though that's not to say that the sleeping area is in any sort of disarray; the floor looks to have recently been swept and mopped, the footlockers at the end of the beds have been waxed, and the only set of chairs and table in here look to have been dusted and buffed to keep the wood looking pristine. Over by the side of the entertainment system, the station's fire pole extends up from a hole in the floor all the way to the white drywall ceiling. Just looking at the golden pipe makes you want to cling to the pole and [bold type]slide down[roman type] to the main room of the firehouse.";

to say SleepQuarters1:
	say "Unlike before when the sleeping area once looked somewhat kept under well maintenance the area now looks like a combination between a puppy's play pen and a bachelor pad. Most of the beds are now in some state of dishevel and now possess the musky scent of male Dalmatians covering them. There are toys - mostly rubber balls and squeak toys and a couple of dildos, butt plugs and anal beads - littered around the floor, and the floor seems to be almost pervasively sticky with...something or the other. You halfway hope it's just spilled soda. It looks as though Kenaz, and maybe one or two others, have been trying to keep the place clean, but it seems to have become a lost effort as the transformed firefighters seem to all but be focused on rutting and playing around to bother keeping the place neat. However, it's easy to see that, despite the disarray, the room has been kept free from any firefighting equipment lying around where it doesn't belong. Looks like the spirit of the firehouse still burns bright, even through this disheveled mess.";

to say SleepQuarters2:
	say "It's amazing that, unlike before with how the sleeping area had once been in disarray, now the sleeping area looks like it did from before when Kenaz was here by himself. The beds are neat, the floor has been swept and mopped, there are no toys - of any sort - anywhere on the floor and the smell of musky Dal boy is less oppressive than it once had been. There is a light after tang of mixed herm Dalmatian and Dal boy cum pervading the area giving the sleeping den a unique musky scent, but it's not too harsh on the senses. Kenaz must have seriously put a foot up some of the other firefighter's tails to get them straightened out enough to clean up in here.";


the scent of Sleeping Quarters is "[sleepingquartersscent]".

to say sleepingquartersscent:
	If KTO is 0:
		say "[one of]The sleeping area smells of many disturbed nights of restless slumber while waiting on call for trouble, but that seems to be fading with time.[or]The scent of anxiety seems to be disappearing slowly from within the room as more time goes by.[or]Left behind in the mostly unused sleeping area if the lingering scent of...Dalmatian?[at random]";
	else if KTO is 1:
		say "The sleeping den of the firehouse now smells like frisky Dalmatian boys mixed in with a musky hint of cum, beer, male virility, pup-like playfulness and respectful adoration.";
	else if KTO is 2:
		say "The sleeping area smells like a well maintained room where firefighter Dalmatian boys sleep, play, fuck, and bond with each other. The telltale musk of a herm Dalmatian wafts throughout the den, though this scent is very commanding instead of subservient.";


Section 8 - UpperFirePole

The description of UpperFirepole is "The upper fire pole is just as spotless as its counterpart in the main area of the firehouse and glimmers with the same tantalizing shine that makes you just want to [bold type]slide down[roman type].".

check firepolesliding:
	if location of player is not Sleeping Quarters and location of player is not Eastern Parapets and location of player is not Western Parapets:
		say "There is no slide here." instead;
	else if location of player is Eastern Parapets or location of player is Western Parapets:		[Bouncy Castle slide]
		try bcsliding instead;

the scent of UpperFirepole is "The fire pole smells of sleepy times, panic, courage, musk and undeniable valor.".

Firepolesliding is an action applying to nothing.
Understand "go down" as Firepolesliding.
Understand "slide down" as Firepolesliding.
Understand "slide" as Firepolesliding.

Check Firepolesliding:
	If UpperFirepole is not visible:
		say "Maybe you should go back to the firehouse? You're starting to see things.";

carry out Firepolesliding:
	say "Hopping onto the fire pole, you hold on tight as gravity, coupled with your weight, sends you sliding down to the first floor of the firehouse. The feeling of vertigo makes you laugh slightly as the air rushing past you whips across your [bodyname of player] form.";
	Move player to FireHouse;
	increase score by 2;


Section 9 - Pertho

Pertho is a situation.
LOK is a number that varies.
The sarea of Pertho is "Red".

Instead of resolving a Pertho:
	If lok is 0:
		Say "Snooping around the red light district, you find yourself coming across a four legged Dalmatian busily humping at the backside of a tigress hooker. From what you can see, the feral mutant is completely enthralled in fucking the herm feline, who just so happens to be moaning and arching hir rump up into the heavy thrusting hips of the spotted canine, making this a perfect opportunity for you to try and nab the other. Better be careful though...";
		let bonus be (( Dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 10:
			say "Tentatively you go up behind the panting and drooling four legged Dalmatian and then, once you are sure that the other can't sense your presence, you grab it by its furry neck. Immediately the canine stops his thrusting and then yelps as you pull it bodily off of the tigress. The tigress herm isn't sure what's happening, or why the delightful cock drilling inside of hir cunt has been taken away, but upon turning hir head to see you wrestling the feral Dalmatian down onto the ground the tigress slips her red dress down onto her thighs and then quickly, but quietly, hauls tail out of here. You barely pay the hooker any attention as you try to keep the Dalmatian from biting you, something Pertho seems very keen on doing.";
			WaitLineBreak;
			say "When you finally end up tiring the Dalmatian out, almost ten minutes later, you snap the collar and leash you had been given by Othala onto the now whimpering mutt. Successful with this mission you prepare yourself to go about your way back to the firehouse with contentment brimming inside of your chest. Of course these feelings don't last long as the Dalmatian behind ends up dropping all of his weight onto the ground forcing you to almost literally have to carry the other back to Kenaz and the others.";
			now Pertho is resolved;
			Move player to the Fire Station;
			now HelpKenazOut is 3;
			increase score by 5;
		else:
			say "You must have stepped on something because just as soon as you are about to reach out for the Dalmatian the spotted menace turns and then gives you a penetrating look no canine should be able to make. You freeze for a second and this proves to be a fatal mistake on your part because the Dalmatian quickly pulls himself out from the tigress hooker and then darts off to run away from you at top speeds. Not sure what just happened it takes you a second to gather you wits before you curse and then charge off after the Dalmatian.";
			say "Back where shi had been left the tigress hooker looks up and then blinks in confusion as a cool gust of wind whistles across her dripping folds...";
			now lok is 1;
	else if lok is 1:
		say "Searching around for the feral Dalmatian, Pertho or whatever, you end up finding the canine terror [one of]rooting through a trash can while on the lookout for something to eat[or]cornering a tigress hooker with its muzzle dripping with drool and its hard cock pointed directly out of its sheath[or]scratching at its ear beside a lamppost while yawning slightly[or]napping underneath a bench while looking as comfortable as could be[or]licking at itself with one leg cocked up high into the air[or]chewing on a bone while wagging its long and thing tail[at random]. Seeing this you quietly go around back behind the other while pulling out the collar and leash Othala had given you.";
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "Successfully sneaking up behind the Dalmatian you use your full body weight to pin the other down onto the ground. The Dalmatian yelps and squirms and fights to get away from you, but currently you are too focused to allow the feral mutt to get any kind of leverage as you snap the collar around his neck and then hook the leash onto the metal tether.  Getting up off of Pertho you wrap the end of the leash around your [bodyname of player] hand and then tug on it to get the Dalmatian moving.";
			say "Of course, as with almost everything in your life, the Dalmatian doesn't want to cooperate so you end up forcibly dragging the other back to the firehouse.";
			now HelpKenazOut is 3;
			Move player to the Fire Station;
			now Pertho is resolved;
			increase score by 5;
		else:
			say "Something goes wrong because quickly Pertho flips an ear up into your direction before turning his head to look at you. Seeing that its [italic type]you[roman type] again the Dalmatian growls and then darts off to head off in the opposite direction you had been coming for it. You curse and try to run after the spotted canine, but you know already that the other has too much of an advantage in distance over you to catch up with the Dalmatian. Looks like you'll have to try again later.";

Section 10 - Table of Game Objects

Table of Game Objects (continued)
name	desc	weight	object
"firefighter coat"	"A thick yellow firefighting coat that looks as though it's not been used quite that often."	5	firefighter coat

firefighter coat is equipment.
It is not temporary.
The AC of firefighter coat is 12.
The effectiveness of firefighter coat is 65.
The placement of firefighter coat is "body".
The descmod of firefighter coat is "You have a thick and slightly musky firefighter's coat on.".
The slot of firefighter coat is "body".


Section 11 - OtherDals

Kto is a number that varies.

OtherDals is a man.
The description of OtherDals is "[Dalboys1]".
The conversation of OtherDals is { "Playtime!" }.

To say Dalboys1:
	Say "Having been reunited with each other and now sharing a bond of brotherhood, the likes of which they couldn't before when Othala had been a female, the Dalmatian firefighters are busy doing everything bachelors could hope to do inside with their freedom inside of the firehouse. Most of them seem to be completely disregarding Kenaz as the other tries to get them to straighten up, however between him and Othala the rest of the pack don't get too far out of hand. And yet, that doesn't mean that all is perfect inside of the firehouse as [one of]the other guys are busy mounting one another[or]the others are playing cards and talking overly loud at the moment[or]Pertho is busy trying to hump Kenaz[or]the guys are having a water balloon fight inside of the firehouse[or]everyone is busy rolling around on the floor in a giant dog pile[or]Kenaz is trying to get the others to do some drills...without much success[or]everyone is busy goofing off at the moment[at random]. [if Kenaztalk is 2]Though not as bad as they could be...you have to wonder if there is some way to make some kind of change within the group. Since you're not a part of the firefighter's crew you more than likely wouldn't have much say so with the group...yet maybe Kenaz could? That is...if he were to gain some more extra [']oomph['] about himself. But how to make that happen...[end if]";

the scent of OtherDals is "The group of Dalmatians smell like canine firefighters who are on break and enjoying themselves to the fullest by goofing off at will.".

Instead of conversing the OtherDals:
	Say "Most of the firefighters spare you little more than a few passing glances as they look you over before going back to what they were doing. While not exactly rude their mannerisms leave much to be desired. However, the others quickly grow excited when Dagaz offers you a spot at their table to play a game of poker with them. Want to play a quick game of Poker? (Y=Yes, N=No)";
	If player consents:
		Say "Settling your rump into one of the wood chairs at the table you calmly ask the guys what kind of poker they intend to play. Mannaz is the one to say [']Straight['] and you nod to him before watching as Dagaz shuffles, cuts and then deals the cards out. Sweeping the flimsy red backed cards up into your [bodyname of player] hands you look over the spread you have and then up to each of the other three Dalmatians present.";
		let bonus be (( the Charisma of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 16:
			say "Spending the next hour of so playing round after round with the Dals nets you collecting a vast majority of the chips that the firefighters have scattered out onto the table. Because of your charisma you wind up winning the game and ultimately netting just a little more respect from the group as they growl playfully at you for beating them.";
			say "Astonishingly enough Pertho comes up to you with a bottle of water in his jaws, offering the bottle to you for your successful win, or so you would guess. Taking the water with good grace you thank the feral pooch by scratching him behind his ears before stuffing the water bottle into the back of your pack. Thanking the guys for the good time you get up from the table to let Othala have your seat and then stretch your tired limbs before going about your way.";
			increase carried of water bottle by 1;
			increase score by 1;
			follow the turnpass rule;
		else:
			say "Trying to charm your way through the game nets you with a few casual smirks and growls from the others as the surrounding firefighters at the table see through your psychological gameplay. Cursing as you lose your last chip almost an hour later you find yourself having to bow out of the game with a sigh while looking over the mass of chips [one of]Mannaz[or]Dagaz[or]Kenaz[or]Birch[at random] has.";
			if bodyname of player is not "Dalmatian":
				say "Not taking things too hard you're not prepared for Pertho to come up to you to give you a quick nip on the hand all of a sudden. Swearing at the feral mutt you bring your [bodyname of player] hand up to your face to look over the angry red circlular wound now framing your hand before turning your head to growl at the smirking Dalmatian.";
				infect "Dalmatian";
				follow the turnpass rule;
			else:
				say "Othala pats you onto the back for your loss and then smirks at you before shooing you away. You can only chuckle as you see how well the pack functions amongst one another as the former female quickly barks out for the others to deal the cards. Not more than a second later Othala is smirking as she looks over the hand she's just been dealt.";
				follow the turnpass rule;
	else:
		say "Telling the others that you don't feel up to it the rest of the Dalmatians nod to you before turning their heads back to what they were just doing.";


Section 12 - DalmatianTroupe

DalmatianTroupe is a man.
The description of DalmatianTroupe is "[Dalboys2]".
The conversation of DalmatianTroupe is { "YES SIR!" }.

To say Dalboys2:
	Say "Walking around the firehouse with both clothes on and tails swaying quietly between their legs are the other Dalmatians who cohabitate in the fire station with Kenaz. Ever since the former submissive Dalmatian's second transformation the others have gone through a very serious change of pace around here. To say the least the rest of the firefighters are now acting and behaving like decent canines with some sense about themselves instead of like bachelors free from responsibility. Mannaz is busy [one of]sweeping up[or]polishing off the fire trucks[or]mopping the floor[or]doing some kind of workout routine off to the side of the building[or]shadow boxing[or] wiping down the lower end of the fire pole[at random]. Birch is [one of]doing push-ups[or]listening to some Kenaz is saying to him[or]talking with some of the other guys[or]humming a tune that only he knows[or]trying to make something for the others to eat on the only grill within the firehouse[at random]. Othala is [one of]going over some paperwork[or]doing a serious of handstand push-ups[or]brushing her...or rather his fur[or]talking with Kenaz[or]waxing down the garage doors[or]quietly reading at the only table in the room[at random]. Dagaz is [one of]looking over something outside the window of the firehouse[or]talking to one of the other guys[or]sharpening his dewclaws with a file[or]taking his time wiping down the lockers set in the back[or]doing a one armed handstand[or]fixing up his fur[at random]. Pertho is the only odd one out of the group as the feral Dalmatian is occupying his time [one of]scratching behind his left ear[or]sleeping underneath the shadow of one of the fire engines[or]yawning while looking up at Kenaz talking with one of the others[or]trying to help out by fetching whatever one of the others might need that he can get[at random]. All in all the firefighters seem content with how things are progressing right about now and with things the way they are underneath Kenaz's banner you have a feeling that it's going to stay that way.";

the scent of DalmatianTroupe is "The once rowdy group of Dalmatian firefighters now smell ready for active duty! Just as soon as someone does call for them, that is.".

Instead of conversing the DalmatianTroupe:
	say "Now that Kenaz has taken over control of the fire station the rest of the firefighters busy themselves with cleaning up the firehouse as well as working and training with one another. It's only during a moment's peace between the pack that the others offer you a chance to play poker with them. Do you feel up to it? (Y=Yes, N=No)";
	if player consents:
		say "Feeling up to a short game you find yourself settling your rump into one of the wood chairs at the table and then quietly asking those present what kind of poker they intend to play. Kenaz is the one to say [']Straight['] and you nod to him before watching as [one of]Dagaz[or]Birch[or]Othala[or]Mannaz[at random] shuffles, cuts and then deals the cards out. Sweeping the flimsy red backed cards up into your [bodyname of player] hands you look over the spread you have and then up to each of the other three Dalmatians present.";
		let bonus be (( the Charisma of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 16:
			say "Spending the next hour of so playing round after round with the Dals nets you collecting a vast majority of the chips that the firefighters have scattered out onto the table. Because of your charisma you wind up winning the game and ultimately netting just a little more respect from the group as they growl playfully at you for beating them.";
			say "Astonishingly enough Pertho comes up to you with a bottle of water in his jaws, offering the bottle to you for your successful win, or so you would guess. Taking the water with good grace you thank the feral pooch by scratching him behind his ears before stuffing the water bottle into the back of your pack. Thanking the guys for the good time you get up from the table to stretch your tired limbs before going about your way.";
			increase carried of water bottle by 1;
			increase score by 1;
		else:
			say "Trying to charm your way through the game nets you with a few casual smirks and growls from the others as the surrounding firefighters at the table see through your psychological gameplay. Cursing as you lose your last chip almost an hour later you find yourself having to bow out of the game with a sigh while looking over the mass of chips [one of]Mannaz[or]Dagaz[or]Kenaz[or]Birch[or]Othalla[at random] has.";
			if bodyname of player is not "Dalmatian":
				say "Not taking things too hard you're not prepared for Pertho to come up to you to give you a quick nip on the hand all of a sudden. Swearing at the feral mutt you bring your [bodyname of player] hand up to your face to look over the angry red circlular wound now framing your hand before turning your head to growl at the smirking Dalmatian.";
				infect "Dalmatian";
			else:
				say "Grumbling playfully at your loss you watch as the other Dals chuckle at you before telling you to come back later to play with them again, before each of them turns their heads to look at Kenaz to ask the larger Dal if that would be alright. When the other simply nods and then gives to a [italic type]woof[roman type] you realize that the pack's alpha is going to probably have the final say in a lot of things to come during the days that follow. Whether that will be good or bad...well the jury is still out in your mind.";
		follow the turnpass rule;
	else:
		say "Telling the others that you don't feel up to it the rest of the Dalmatians simple nod to you before getting barked at by Kenaz. Quickly the others find something else to do with their time and mildly you chuckle at the antics happening right before your eyes. Is this what a pack is supposed to feel like, you faintly wonder.";


Section 13 -NeverNeverLand

NeverNeverland is a room. It is unknown. It is private.

The description of NeverNeverLand is "This place is impossible to find, but it's where happy Dalmatians go to dream in peace.".


Fire House ends here.
