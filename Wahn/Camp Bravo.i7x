Version 2 of Camp Bravo by Wahn begins here.
[Version 2.1 - Repeat topping TT & M/F version]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Red Light Requisition	"Red Light Requisition"

Red Light Requisition is a situation.
ResolveFunction of Red Light Requisition is "[ResolveEvent Red Light Requisition]".
Sarea of Red Light Requisition is "Red".
when play begins: [these exceptions are based on the second half so people aren't left standing]
	add Red Light Requisition to BadSpots of MaleList;
	add Red Light Requisition to BadSpots of FurryList;

to say ResolveEvent Red Light Requisition:
	say "     Moving through a seedier area of the city, you come around a corner and spot two soldiers a bit down the road, lugging around a large sack. When they spot you, their faces flush red with embarrassment and they run off, dashing away from you. You run after them, but then slip on something that must have dropped out of the sack as they jostled it while running. It's... a dark blue rubber dildo?";
	if Camp Bravo is known:
		say "     Looks like these guys were gathering supplies for the things going on in Camp Bravo. Well, where else would they get those piles of sex toys from...";
	else if Trickster's Masterpiece is resolved:
		say "     Looks like these guys were gathering supplies for the crazy plan of theirs with the minotaur. Well, where else would they get those piles of sex toys from...";
	else:
		say "     What's going on here? Why are soldiers looting the red light district and gathering up whole sacks of dildos and who knows what? Maybe you'll find out one of these days...";
	increase score by 5;
	now Red Light Requisition is resolved;

Table of GameEventIDs (continued)
Object	Name
Trickster's Masterpiece	"Trickster's Masterpiece"

Trickster's Masterpiece is a situation.
ResolveFunction of Trickster's Masterpiece is "[ResolveEvent Trickster's Masterpiece]".
Sarea of Trickster's Masterpiece is "Outside".
when play begins:
	add Trickster's Masterpiece to BadSpots of MaleList; [male soldiers]
	add Trickster's Masterpiece to BadSpots of FurryList; [minotaur involved]

to say ResolveEvent Trickster's Masterpiece:
	say "     Following lust-filled grunts and bellows, you come upon a mid-sized military encampment on the parking space behind an office building. There you find a strange scene - in the middle of several olive green tents, there is a wooden hitching post - which a buck-naked soldier uses to hold on to. Behind the man is a very tall musclebound humanoid, sporting a horned bull's head and furred legs ending in cloven hooves - a minotaur. He's in a full on mating frenzy, shafting the human in front of him with mighty thrusts of his long cock. A bit to the side, several men stand gathered in front of an officer, many of them apprehensively looking over to the rutting minotaur before they turn back to their superior.";
	say "     Curious what's going on there you sneak forward, staying out of sight behind one of the tents and just peeking around the corner. From your new location, you can hear the briefing the officer shouts at his men to be audible over the grunts and moans of the coupling man and beast.";
	say "     '...so our local informant identified this creature to us as Patient Zero. Analyzing its bodily fluids could lead to a cure - but [if Diegochanged is 0]he [else]she [end if]also warned us that samples must be kept at body temperature or they won't be usable after a short while. So since we can't guarantee to capture that -' he waves towards the minotaur, hulking over the soldier in front of it, '- alive, we had to move on to a different plan to get those samples to the scientists. Team up in twos, then grab your new equipment from corpsman Jones and follow his instructions. Dismissed.'";
	WaitLineBreak;
	say "     The soldiers form up teams, then move towards the tent you're hiding behind. You peek in through a window flap and see a corpsman standing in front of several large sacks. When the first two soldiers come in, he says 'Here, take this -' (a bottle of lube) '- that -' (a black rubber dildo) '- and these -' (two butt-plugs) '- and get each other ready for Tiny Tim out there. Don't be embarrassed about it - you'll be heroes if they find a cure through your service. Also - really, really take your daily immunity boosters! You'll be carrying around potent stuff, so don't miss ANY injection.'";
	say "     You spy in on them as group after group get their stuff, then strip and start to finger each other's asses rather sheepishly. Luckily several of the brave soldiers turn out to be gay, stepping in to help their inexperienced fellows out with some tips and hands-on support. Some even get to 'train' the newbies with their own hard shafts, the men preferring another soldier to often brightly colored sex toys.";
	say "     Hearing the noise from the center of the camp rise, you reluctantly pull your gaze away from a whole tent full of naked men, most experimenting with dildos and some fucking each other with a passion. Looking around the corner of the tent, you see the minotaur thrust in a few more times, then grab the soldier's hips and hold him tightly as he grinds his hips forward and bellows loudly. You can see the creature's large balls pulsate as it deposits its seed inside the man's hole. Then another naked man comes forward and pushes a rubber butt plug into the fucked soldier's gaping hole as he pulls off the thick shaft. He leads the freshly filled and plugged man to a nearby bunk to recuperate, then steps up to the hitching post himself and wiggles his ass at the minotaur. Tireless, the massive creature pushes his hard cock against the man's pucker making them both grunt as he sinks into its tight embrace and starts another round of fucking.";
	WaitLineBreak;
	if graphics is true:
		project the figure of TinyTim_In_Action_icon;
		WaitLineBreak;
	say "     You stay quite a while, watching the soldiers take care of each other and then being bred one after another by the minotaur. In the end a whole squad of them gathers at the edge of the camp, fully clothed and with weapons and equipment, but standing and acting a bit strangely from the feeling of loads of cum and butt plugs inside their asses. Then they move out towards the closest checkpoint of the containment barrier around the city. You wonder what their superiors will say about this plan and the 'cargo' each soldier carries with him, should they even make it at all with all that active minotaur cum wearing down whatever defenses they do have. [if PlayerMet of Diego is true]And who might the trickster have been who sold them on this improbable tall tale? It would certainly be interesting to meet him - or her - or it[else if diegochanged is 0]Certainly an awesome trick, to sell them all on this highly improbable story and plan. Recognizing his hand in this, you'd say it's one of the best Diego's done yet[else]Certainly an awesome trick, to sell them all on this highly improbable story and plan. Recognizing her hand in this, you'd say it's one of the best Diego's done yet[end if].";
	LineBreak;
	say "     Certainly worth another visit... you just hope you can find your way back to the [bold type]camp[roman type] with all the chaos on the streets of this city.";
	WaitLineBreak;
	increase Libido of Player by 15;
	if Libido of Player > 100, now Libido of Player is 100;
	increase score by 15;
	extend game by 24;
	now HP of Adam is 2; [intro event done]
	now Back at the Camp is active;
	now Trickster's Masterpiece is resolved;

Table of GameEventIDs (continued)
Object	Name
Back at the Camp	"Back at the Camp"

Back at the Camp is a situation.
ResolveFunction of Back at the Camp is "[ResolveEvent Back at the Camp]". Back at the Camp is inactive. [enabled by the 'Trickster's Masterpiece' event]
Sarea of Back at the Camp is "Outside".

when play begins:
	add Back at the Camp to BadSpots of MaleList; [male soldiers]

lastGuardBeg is a number that varies. lastGuardBeg is usually 555.

to say ResolveEvent Back at the Camp:
	say "     Following your memory through the chaotic streets of the city, you try to find the military camp where you observed all those men taking a minotaur in the ass before. You think it was somewhere around the block you're right now, and... ah - there it is. Coming round a corner, you see the first of the olive green tents of the camp. And what you also see are two soldiers standing guard, who notice you and give you suspicious looks as they click off the safety of their rifles.";
	say "     One of them steps forward and looks at you with a grim look on his face. You can see the letters 'Private Cooper' written on his jacket. He calls out 'Halt, this is a restricted military zone. Move away from -' ...he's interrupted by a loud, lust-filled bellow from inside the camp and turns a bit red in the face as he looks there and back to you. 'As I was saying, move away from the perimeter. We're doing... important work here on a cure.'";
	LineBreak;
	say "     So, what now?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "(Lie) Say you're a special agent here to check on their progress";
	now sortorder entry is 1;
	now description entry is "Lie your way into the camp";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if they can spare any supplies";
	now sortorder entry is 2;
	now description entry is "Ask them nicely for some supplies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Turn around and go";
	now sortorder entry is 3;
	now description entry is "Leave the camp for now";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "(Lie) Say you're a special agent here to check on their progress"):
					say "[GuardLie]";
				if (nam is "Ask if they can spare any supplies"):
					say "[GuardBeg]";
				if (nam is "Leave the camp for now"):
					say "[GuardLeave]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the soldier, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say GuardLie: [lie to get into the camp]
	[TODO: Add rejection for people with ungodly huge cocks/breasts]
	let bonus be (( Charisma of Player minus 10 ) divided by 2);
	if 2 is listed in bookcollection, increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll > 16:
		say "You walk up to them quite confidently and totally wrap Private Cooper around your finger with some quick talking. In the end, he salutes you before ordering the second guy - a blond man whose nametag reads Private Orwell - to lead you to their commanding officer's tent. You pass the hitching post you saw being used before, and also the huge minotaur sitting beside it right now munching on some food.";
		WaitLineBreak;
		say "     The commandant of the camp is Major Padgett, who stands up from his field desk to shake your hand before offering you a seat.";
		say "     'So you're the special agent sent to check out the situation? Welcome to Camp Bravo. Let me brief you about what's been happening. We were lucky enough to have a top scientist in the city when the outbreak started - a doctor Diego Garcia who contacted scouting parties I sent out. [if Diegochanged is 0]He's been infected himself so he's stuck inside the quarantine zone like all the other people when the outbreak hit. Not content to just sit and wait, he's been gathering data and looking into the infection himself. He pointed out Patient Zero for us - that large minotaur thing out in the camp - and explained the procedures necessary to gather and transport samples...' [else]She's been infected herself so she's stuck inside the quarantine zone like all the other people when the outbreak hit. Not content to just sit and wait, she's been gathering data and looking into the infection herself. She pointed out patient zero for us and explained the procedures necessary to gather and transport samples...' [end if]He looks a bit embarrassed as he continues, saying 'You see, the samples can only be used if they're kept at human body temperature. So I've had to order the men to... carry the material inside their bodies to keep it valid.";
		say "     'Several detachments of soldiers are on the way to the containment barrier, but I'm running out of men rapidly. I've already had to pull people out of other camps and scouting posts. Many of the remaining soldiers are women, and considering the potency of that creature's seed, I hesitate to expose any of them to it.'";
		say "     'Please feel free to check out the camp and talk with everyone. And when you go back to report, please pass on that I need more people here to be able to send more people out with samples.'";
		move player to Major's Tent;
		now HP of Adam is 3; [player got access to the camp]
		AddNavPoint Camp Bravo Entrance;
		now Back at the Camp is resolved;
		now Resolution of Back at the Camp is 1; [lied your way in]
	else:
		say "'Yeah, right - listen buddy, your story doesn't ring even remotely true in my ears. Get lost,' one of the soldiers scoffs at you. Can't be helped, you won't be getting any further here right now. Although there might be some hope of getting someone else on guard duty next time you come along here...";
		now Resolution of Back at the Camp is 2; [failed to convince]

to say GuardBeg: [mooch some food from a guard]
	if (lastGuardBeg - turns < 12):
		say "     The soldier lowers a hand to his pocket, then stops. 'Wait a minute - I gave you something not too long ago! I can't hand out stuff constantly. That'll attract too much attention and all kinds of critters will show up asking for food.'";
		now Resolution of Back at the Camp is 3; [mooched food]
	else:
		say "     The first guard just scoffs at you, but the other guy pulls out a ration bar and throws it to you. 'Here. Now please go away and don't tell anyone about this. We can't have a mob of people begging for food right in front of the camp.'";
		ItemGain food by 1 silently;
		now lastGuardBeg is turns;

to say GuardLeave:
	say "     You follow the soldier's order and walk away. Too bad, getting into the camp would surely have been interesting. Maybe you should return later and try to convince them to let you in.";
	now Resolution of Back at the Camp is 4; [left]

Table of GameRoomIDs (continued)
Object	Name
Camp Bravo Entrance	"Camp Bravo Entrance"

Camp Bravo Entrance is a room. It is a fasttravel. It is private.
Description of Camp Bravo Entrance is "     You're at the entrance of Camp Bravo, a mid-sized military camp consisting of row after row of olive green tents. Two soldiers are on guard here, using a barricade line of wrecked cars as cover as they vigilantly watch the street. To the north lies the parade ground in the center of the camp.".
earea of Camp Bravo Entrance is "Outside".

Instead of sniffing Camp Bravo Entrance:
	say "     A musky scent hangs in the air.";

Table of GameCharacterIDs (continued)
object	name
Private Cooper	"Private Cooper"

Private Cooper is a man. Private Cooper is in Camp Bravo Entrance.
Description of Private Cooper is "     Private Cooper is a bulky man with a grim look on his face most of the time. He constantly scans for approaching intruders coming too close to the Camp Entrance.".
Conversation of Private Cooper is { "Meep!" };

instead of conversing the Private Cooper:
	if MovingOrwell is 1:
		say "     You step up to Private Cooper and say 'Soldier! Why are you two over here together? Can't you see that enemies might sneak close concealed by that rubble over there?' He replies 'Err, yes - but... I was just making sure that Orwell doesn't -' he looks over towards the parade ground in the north '-he's not supposed to go - to do - you know... I bet he'd like to sneak off to get a ride from the beast, the little fagg-' 'Let me stop you right there - enough! Even if your ridiculous idea was right, he'd still have to pass by you here, wouldn't he? So let's stop this nonsense.'";
		say "     Raising your voice, you order Cooper to stay where he is, while telling Orwell to move quite a bit down the barricade of wrecked cars. Going with him, you have him take position behind a large car with tinted windows. It's quite nice to watch the man's ass as he leans over the car's hood, setting up his rifle to rest on it. Reluctantly taking your eyes off his bubble butt, you look back towards where Private Cooper still holds guard - perfect, with the car as concealment, he won't be able to see anything but Orwell's rifle and head. The young man seems delighted with his new post, smiling as he tells you 'Thanks for getting some distance between that ass and me. Oh, and by the way - please call me Marc.'";
		now MovingOrwell is 2;
	else:
		say "     With an annoyed look he says 'Don't distract me. Who knows what might rush us any minute now.'";

MovingOrwell is a number that varies. MovingOrwell usually is 0.

[MovingOrwell - micro-quest variable for Pvt. Orwell     ]
[ 0 - Starting State                                     ]
[ 1 - Tried fucking Pvt. Orwell                          ]
[ 2 - Moved him to a spot more or less out of sight      ]
[ 3 - Had sex (oral/anal) with Marc Orwell               ]
[ 4 - Arranged for Orwell to have fun with TT            ]

Table of GameCharacterIDs (continued)
object	name
Private Marc Orwell	"Private Marc Orwell"

Private Marc Orwell is a man. Private Marc Orwell is in Camp Bravo Entrance.
ScaleValue of Private Marc Orwell is 3. [human sized]
Body Weight of Private Marc Orwell is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Private Marc Orwell is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Private Marc Orwell is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Private Marc Orwell is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Private Marc Orwell is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Private Marc Orwell is 4. [length in inches]
Breast Size of Private Marc Orwell is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Private Marc Orwell is 2. [count of nipples]
Asshole Depth of Private Marc Orwell is 10. [inches deep for anal fucking]
Asshole Tightness of Private Marc Orwell is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Private Marc Orwell is 1. [number of cocks]
Cock Girth of Private Marc Orwell is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Private Marc Orwell is 7. [length in inches]
Ball Count of Private Marc Orwell is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Private Marc Orwell is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Private Marc Orwell is 0. [number of cunts]
Cunt Depth of Private Marc Orwell is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Private Marc Orwell is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Private Marc Orwell is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Private Marc Orwell is false.
PlayerRomanced of Private Marc Orwell is false.
PlayerFriended of Private Marc Orwell is false.
PlayerControlled of Private Marc Orwell is false.
PlayerFucked of Private Marc Orwell is false.
OralVirgin of Private Marc Orwell is false.
Virgin of Private Marc Orwell is true.
AnalVirgin of Private Marc Orwell is false.
PenileVirgin of Private Marc Orwell is false.
SexuallyExperienced of Private Marc Orwell is true.
TwistedCapacity of Private Marc Orwell is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Private Marc Orwell is false. [steriles can't knock people up]
MainInfection of Private Marc Orwell is "Human".
understand "Marc" as Private Marc Orwell.
understand "Orwell" as Private Marc Orwell.
Description of Private Marc Orwell is "[OrwellDesc]".
Conversation of Private Marc Orwell is { "Meep!" }.
The icon of Private Marc Orwell is Figure of MarcOrwell_icon.

to say OrwellDesc:
	project the figure of MarcOrwell_icon;
	if MovingOrwell < 2:
		say "     Private Marc Orwell is an attractive and fit male, bearing the tattoo of a merman on his left shoulder. He's leaning comfortably against one of the wrecked cars, but still has his rifle at hand.";
	else:
		say "     Private Marc Orwell is an attractive and fit male, bearing the tattoo of a merman on his left shoulder. He's leaning over the hood of one of the wrecked cars, resting his elbows on it and his rifle set up to cover the approach to the camp. That stance shows off a well-rounded bubble butt in his pants.";

instead of conversing the Private Marc Orwell:
	project the figure of Marc_face_icon;
	if MovingOrwell < 4:
		say "     [one of]With a sigh, Private Marc Orwell says 'Man, this sucks - I only stumbled that one time in the mess tent and hit the Major with a mug of coffee and now I'm on perpetual guard duty and can't join in for the fun in there.'[or]Letting his gaze wander over the approach to the military camp, Private Marc Orwell remarks 'Some of the infected are downright freaky - and I don't just mean their shapes, but how they think... if they still think.'[or]Letting his gaze wander over the approach to the military camp, Private Marc Orwell remarks 'It's strange that you never can quite know what to expect from infected. A few days ago, this big guy came along - fur all over, wolf's head with lots of teeth... honestly, I thought he'd be all werewolf and attack. But he just said hello and offered me a tryout for his football team and then left. Interesting times, hm?'[or]A boyish smile comes to Private Marc Orwell's face as you approach him. 'Hey there, thanks for talking to me.' He continues in a whisper 'You won't believe how boring guard duty is with just grumpy-pants over there as company. Well, him and the mostly sex-crazed infected out there...'[at random]";
	else:
		say "     [one of]With a sigh, Private Marc Orwell says 'Man, this sucks - I only stumbled that one time in the mess tent and hit the Major with a mug of coffee and now I'm on perpetual guard duty. Thanks for getting that sexy break, at least.'[or]Letting his gaze wander over the approach to the military camp, Private Marc Orwell remarks 'Some of the infected are downright freaky - and I don't just mean their shapes, but how they think... if they still think.'[or]Letting his gaze wander over the approach to the military camp, Private Marc Orwell remarks 'It's strange that you never can quite know what to expect from infected. A few days ago, this big guy came along - fur all over, wolf's head with lots of teeth... honestly, I thought he'd be all werewolf and attack. But he just said hello and offered me a tryout for his football team and then left. Interesting times, hm?'[or]A boyish smile comes to Private Marc Orwell's face as you approach him. 'Hey there, thanks for talking to me.' He continues in a whisper 'You won't believe how boring guard duty is with just grumpy-pants over there as company. Well, him and the mostly sex-crazed infected out there...'[or]'That fun with Tiny Tim was even better than I'd expected. He's quite the stud, going through all those guys in a row.'[or]'I had a great time with Tiny Tim. I didn't expect him to be quite so nice about it, too. I don't think enough of the guys show him the affection he deserves for all his hard work.'[or]'I don't really see how letting Tiny Tim fuck a bunch of soldiers will help solve this mess, but I had a great time and I made sure those guys did, too.'[at random]";

instead of fucking Private Marc Orwell:
	if MovingOrwell is 0:
		say "     He sighs, 'Oh, how I'd love to take you up on that. But I just can't leave my post, as Grumpy over there would go ape if I tried.' Looking over to Private Cooper, you have an idea... you should try talking to him.";
		now MovingOrwell is 1;
	else if MovingOrwell is 1:
		say "     There might be a way to get it on with him, try talking to Private Cooper...";
	else if lastfuck of Private Marc Orwell - turns < 8:
		say "     'As fun as that sounds, we don't want that grumpy troublemaker over there getting too suspicious. Maybe later.'";
	else:
		say "     Stepping up behind Private Marc Orwell, you give his ass a squeeze. Surprised, he looks back over his shoulder, then smiles as he sees you. 'Hey there, hot stuff. Thanks for getting me a bit of distance to Grumpy. I assume you want to have some fun now?' Nodding to the tinted windows of the car, he continues 'Great idea with that - he can't see much more than my head and rifle from over there. And... I can keep quiet pretty well. Lots of experience from after light-out in the barracks, you know.' He gives you a wink.";
		if Player is male:
			say "     [bold type]What would you prefer to do with the handsome soldier now?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck him.";
			say "     ([link]N[as]n[end link]) - Blow him off.";
			if Player consents:
				LineBreak;
				say "     Grinding your hardening bulge against his ass in anticipation, you reach around Marc and undo the button and zipper of his pants, then pull them down to reveal his well-muscled butt. Quickly throwing off your own clothes, you step up close behind him and rub your [Cock of Player] cock up and down between his firm cheeks. Then you position its head at his hole, pushing forward against his well-trained pucker that easily lets you slide in while still gripping your shaft tightly. Your soldier boy gives a soft moan as you bottom out inside him, then says under his breath 'Yeah, that feels great. Now fuck me.'";
				project the figure of Marc_fucked_icon;
				say "     Eager to follow Marc's request, you pull back a bit, then thrust back in and continue fucking him with deep strokes. It's amazing how tight and gripping his muscles are around your erection, his years of training as a bottom paying off handsomely. Almost losing yourself in a haze of lust, you shaft his ass, slamming forward until your hips hit his cheeks with slapping noises. Then suddenly, your soldier boy reaches back to grip your ass, holding you tight against him. 'Whoa Tiger,' he says after another stifled moan and a little laugh. 'You rocked the whole car with that last one. Not that I mind a good hard fuck, but we do have an audience who would love to make trouble if we get too obvious...'";
				WaitLineBreak;
				say "     Whispering an apology, you start up fucking him again, though with a bit less intense strokes. Even though you ache to just take him hard against the hood of the car, this slower rhythm still feels amazing. You almost have to laugh out loud as you see Marc nod over to the other soldier, giving the 'no enemy in sight' hand-sign nonchalantly as if he wasn't being fucked right at that very moment. Your semi-public coupling gives having sex with this handsome and athletic man a delicious extra thrill, and it doesn't take much longer until your raging libido demands its due. With a satisfied grunt, you grind your hips against Private Marc Orwell's butt, holding him tight as your balls start unloading their fertile load. Feeling the first spurt of your cum splash against his inner walls, Marc gives a satisfied moan, his hand moving down to stroke his own cock. After just a few jerks, he joins you in orgasm, long strings of his sperm spurting all over the front wheel and side of the car.";
				say "     After finishing with the last spurts inside the young soldier, you stay in him a while longer while moving your hands under his shirt, stroking and caressing his back and chest. As your cock starts getting soft, you slowly pull out of him, then move to collect your clothes and gear. While you do so, Marc gives you a pretty nice and distracting view - bent over the hood of the car, all business to an observer from the front with his rifle and uniform cap and shirt... while at the same time showing off his bare ass to you, pants pooled around his legs and combat boots, with a small trickle of cum dripping from his freshly fucked hole.";
				NPCSexAftermath Private Marc Orwell receives "AssFuck" from Player;
			else:
				LineBreak;
				say "     [OrwellBJ]";
		else:
			say "     [OrwellBJ]";
		if MovingOrwell is 2:
			now MovingOrwell is 3;

to say OrwellBJ:
	say "     You reach around Marc and undo the button and zipper of his pants, then pull them down to reveal his well-muscled butt. Stroking his buttocks, firm under deliciously soft and hairless skin, you then kneel down and crawl between his legs. After a bit of maneuvering, you come to sit between him and the car, your face just inches away from the young soldier's cock. It twitches in anticipation as Marc feels your breath against his skin. Not wanting to leave him waiting, you softly take it in your hand, stroking it, then hold it and slide your lips over the tip and further down his shaft. A stifled moan escaping your sexual partner's lips makes you stop for a moment to allow him to find his composure again. 'Go on, that feels great,' he whispers down to you.";
	say "     Eager to give Marc pleasure, you pull back a bit, then start bobbing your head up and down on his cock and bring your hands up to fondle his balls. After weeks of constant guard duty with such a dour partner who made sure he never had time on his own to get off, they're heavy with pent-up cum. With him aching for release, it doesn't take too much longer until your efforts drive the young man over the edge and a not quite suppressed gasp heralds a flood of a load gushing into your mouth. Spurt after spurt coat your tongue and tonsils, and you swallow it all, not spilling anything.";
	WaitLineBreak;
	say "     As you stand back up Private Marc Orwell looks over his shoulder and says, 'Thanks, I really, really needed that!' 'Anytime,' you tell him, licking your lips. As you swallow the last drops of his cum, Marc gives you a pretty nice and distracting view - bent over the hood of the car, all business to an observer from the front with his rifle and uniform cap and shirt... while at the same time showing off his bare ass to you, pants pooled around his legs and combat boots, his now softening cock dangling between his legs.";
	NPCSexAftermath Player receives "OralCock" from Private Marc Orwell;

Table of GameRoomIDs (continued)
Object	Name
Parade Ground	"Parade Ground"

Parade Ground is a room.
Parade Ground is north of Camp Bravo Entrance.
Description of Parade Ground is "     You're in Camp Bravo, surrounded by green military tents. To the north lies the tent of the camp's commanding officer, west is the quartermaster's tent, and to the south is the entrance of the camp. In the middle of the camp is a mostly empty parade ground with a wooden hitching post and a single field bed. There are various patches of dried cum on them and the ground around. An impressively large minotaur sits next to it, munching on vegetables and bread brought to him by a grizzled looking soldier. Seems like caring for the beast is his responsibility.".

Instead of sniffing Parade Ground:
	say "     The heavy scent of cum and a musky minotaur odor hang in the air. It must be laden with pheromones, as you're getting quite horny just from taking it in.";

Table of GameRoomIDs (continued)
Object	Name
Major's Tent	"Major's Tent"

Major's Tent is a room.
Major's Tent is north of Parade Ground.
Description of Major's Tent is "     You're in a sparely furnished military tent, holding only a field desk, a small table, several chairs and a field bed. Major Padgett, the camp's commander sits at the desk, reading scout reports and other paperwork. On top of the table at one wall of the tent rests a military radio.".

Instead of sniffing Major's Tent:
	say "     Even in here, the minotaur cum smell is still pretty strong. No wonder, since the big hunk has been rutting people in the area right before the tent.";

Table of GameRoomIDs (continued)
Object	Name
Quartermaster's Tent	"Quartermaster's Tent"

Quartermaster's Tent is a room.
West of the Parade Ground is the Quartermaster's Tent.
Description of Quartermaster's Tent is "     You're in the large tent of Camp Bravo's quartermaster. It holds a long row of filled shelves in the back, combined with various crates stacked high and a few large sacks resting on the floor next to the quartermaster's field desk. A medical corpsman is bent over one of them, counting its contents.".

Instead of sniffing Quartermaster's Tent:
	say "     Even in here, the minotaur cum smell is still pretty strong. No wonder, since the big hunk has been rutting people in the area right before the tent. The lingering aroma seems to have an effect on everyone here too, as everyone seems a fair bit more randy than you'd have expected from professional soldiers.";

Table of GameRoomIDs (continued)
Object	Name
Soldier Tents	"Soldier Tents"

Soldier Tents is a room.
East of the Parade Ground is the Soldier Tents.
Description of Soldier Tents is "[SoldierTentDesc]".

to say SoldierTentDesc:
	say "     You're standing between numerous olive-green army tents, set up to house the various soldiers stationed here. Uniformed men and women come and go from their quarters, or hang around in groups talking to each other[if daytimer is night]. Even after sundown, there is a fair bit of activity here, as some shift or other is always on duty[end if].";
	say "     The area is bordered by the back walls of two office buildings to the north and east, while the south side consists of a stretch city bus. It hasn't been parked there though, but rather must have impacted the building to the east when the driver lost control over it sometime during this whole mess. A little more than teen feet of the bus are actually inside the building, and the vehicle seems completely stuck in the hole it made.";

Instead of sniffing Soldier Tents:
	say "     Even in here, the minotaur cum smell is still pretty strong. No wonder, since the big hunk has been rutting people just west of here, on the parade ground. The lingering aroma seems to have an effect on everyone here too, as everyone seems a fair bit more randy than you'd have expected from professional soldiers.";

Table of GameCharacterIDs (continued)
object	name
Major Padgett	"Major Padgett"

Major Padgett is a man. Major Padgett is in Major's Tent.
Description of Major Padgett is "     Major Padgett is an older man in military uniform, sporting a military buzz-cut of graying hair. He's sitting at a field desk and looks busy with scouting reports and other paperwork.".
Conversation of Major Padgett is { "Attention!" }.
thirst of Major Padgett usually is 555. [ The thirst value is used for the turn-number the player last tried to talk the Major into allowing women with the minotaur ]
CampBravoWomenAllowed is a number that varies. CampBravoWomenAllowed is usually 0.

instead of sniffing Major Padgett:
	say "     He smells of Old Spice.";

Instead of fucking Major Padgett:
	say "     His brows draw together as you proposition him. 'What the - NO! Get a hold of yourself! I had expected better from you.'";

instead of conversing Major Padgett:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Congratulate him on his work";
	now sortorder entry is 1;
	now description entry is "Butter him up a bit";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Explain to him that he's been tricked";
	now sortorder entry is 2;
	now description entry is "Tell him the minotaur story was a hoax";
	[]
	if CampBravoWomenAllowed is 0:
		choose a blank row in table of fucking options;
		now title entry is "Talk him into letting women fuck the minotaur";
		now sortorder entry is 3;
		now description entry is "Convince him to let the minotaur breed female soldiers";
	[]
	if HP of David is 2:
		choose a blank row in table of fucking options;
		now title entry is "Ask to have David taken of the minotaur breeding list";
		now sortorder entry is 4;
		now description entry is "Convince him to make David a liaison to you";
	[]
	if thirst of Military Radio is 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask about the radio";
		now sortorder entry is 5;
		now description entry is "Ask him about the strange transmissions";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him to repeat his briefing";
	now sortorder entry is 6;
	now description entry is "Another briefing";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Excuse yourself and break off the conversation";
	now sortorder entry is 7;
	now description entry is "Stop talking";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Congratulate him on his work"):
					say "[MajorBrownnose]";
				if (nam is "Explain to him that he's been tricked"):
					say "[MajorPartypooper]";
				if (nam is "Talk him into letting women fuck the minotaur"):
					say "[MajorBreeding]";
				if (nam is "Ask to have David taken of the minotaur breeding list"):
					say "[MajorDavid]";
				if (nam is "Ask about the radio"):
					say "[MajorRadio]";
				if (nam is "Ask him to repeat his briefing"):
					say "[MajorBriefing]";
				if (nam is "Excuse yourself and break off the conversation"):
					say "[MajorLeave]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the human soldier, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MajorBrownnose:
	say "     You congratulate the major on his handling of the whole situation and butter him up a bit, making him open up about his dreams of being recognized as one of the people beating the infection. Oh boy, won't he be surprised when what's been happening here comes out to the public...";

to say MajorPartypooper: [try to make the Major see how he's been tricked]
	say "     You try to explain to the man that he's been led to believe a highly unlikely scenario, making him offer his men to a minotaur for rutting on the word of only one individual of doubtful intent and qualification.";
	say "     As the major listens to you talk, his face gets redder and redder in anger. After a while he says 'Ah, I see...' - and pulls out a pistol - '... that you're an impostor, trying to stop our efforts in finding a cure. Sick individuals like you relish in all this chaos and don't want it to end, hm?'";
	say "     Not being able to accept having been duped, he has his soldiers throw you out of the camp, ordering them to drive you away if you return. Your body bruised from the rough handling, you slowly make your way back to the bunker and resolve not to return to Camp Bravo to avoid any further unpleasantness.";
	now HP of Player is HP of Player / 2;
	now Camp Bravo Entrance is not known;
	now HP of Major Padgett is 100; [banned from Camp Bravo]
	move player to bunker;

to say MajorBreeding:
	if (thirst of Major Padgett - turns < 12):
		say "     Maybe you should let your previous arguments sink in for a while before trying to talk the Major into this again...";
	else:
		say "     You tell the major that the researchers urgently need more material and also that getting direct offspring of Patient Zero to examine could be greatly beneficial for their progress. Minotaur calves would surely be easier to manage and move than the creature itself, especially if they inherit the habit of obedience to superiors from their soldier mothers - or of course if said women can be brought outside the city before they even give birth.";
		let bonus be (( Charisma of Player minus 10 ) divided by 2);
		if 2 is listed in bookcollection, increase bonus by 2;
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 6:
			say "He nods at your explanation, clearly accepting it for the truth. 'I see your point. Spreading out the duty of obtaining and transporting research samples to all soldiers under my command would alleviate the shortage of people I can send off. I'll pass along orders to that effect. Thank you for bringing this to my attention.'";
			now CampBravoWomenAllowed is 1;
			now HP of Adam is 4; [female breeding allowed]
			now ElainePregnant is 48; [48h till birth]
		else:
			say "He looks doubtful at your explanation, unconvinced that sending his female soldiers to be impregnated by the huge minotaur outside is such a great idea. Maybe you should work at getting better at Ly- err, convincing him of the truth and try this again later.";
		now thirst of Major Padgett is turns;

to say MajorDavid:
	say "     You tell the major that you could use a soldier to serve as a liaison to you, keeping you informed about what's going on in the camp and sometimes coming with you for special duties. And that very nice Private David Jackson would fit perfectly...";
	say "     He nods, answering 'Of course, I'll issue the order in a moment. And please remember to tell the people outside the city that I need more men sent here.'";
	now HP of David is 3;

to say MajorRadio:
	say "     As you ask the Major about the strange transmission you heard over the radio, he grumbles and gives the device a hostile stare.";
	say "     'Looks like some kind of critter out there has developed the ability to intercept and answer radio broadcasts. We don't even know how many of them are there - might be a whole lot of the bastards, or just the one who can change its voice infernally well. With them - or it - prattling nonsense, impersonating officers and delivering false information and orders almost constantly, I've had to order the men to turn in their receivers so they're not led astray. So we're out of direct communication with the forces quarantining the city for now...'";

to say MajorBriefing:
	say "     He looks a bit strangely at you, then says 'But I already - oh well, try to remember it this time: We were lucky enough to have a top scientist in the city when the outbreak started - a doctor Diego Garcia who contacted scouting parties I sent out. [if Diegochanged is 0]He's been infected himself so he's stuck inside the quarantine zone like all the other people when the outbreak hit. Not content to just sit and wait, he's been gathering data and looking into the infection himself. He pointed out Patient Zero for us - that large minotaur thing out in the camp -[else]She's been infected herself so she's stuck inside the quarantine zone like all the other people when the outbreak hit. Not content to just sit and wait, she's been gathering data and looking into the infection herself. She pointed out patient zero for us[end if] and explained the procedures necessary to gather and transport samples.' He looks a bit embarrassed as he continues, saying 'You see, the samples can only be used if they're kept at human body temperature. So I've had to order the men to... carry the material inside their bodies to keep it valid.";

to say MajorLeave:
	say "     You excuse yourself for disturbing him and step back from the major's desk.";


[ thirst states of Military Radio                                    ]
[   0: Starting State - never listened to any broadcast              ]
[   1: listened at least once                                        ]

Table of GameCharacterIDs (continued)
object	name
Military Radio	"Military Radio"

Military Radio is a man. Military Radio is in Major's Tent.
Description of Military Radio is "     The radio is a chunky piece of olive-green equipment with a multitude of buttons and dials. A handheld speaker set is attached to it at the end of a long flexible cord.".
Conversation of Military Radio is { "Beep!" }.

instead of sniffing Military Radio:
	say "     Doesn't really smell of anything out of the ordinary.";

Instead of fucking Military Radio:
	say "     Now how do you want to do that? It's a lifeless piece of machinery. No holes in it where you could insert anything, and no part of it will fit in any of your own orifices.";

instead of conversing Military Radio:
	say "[CampBravoRadioTalk]";

to say CampBravoRadioTalk:
	say "     As you turn on the radio and try to reach anyone, you hear this in response:[line break]";
	if thirst of Military Radio is 0:
		say "     'You're in Camp Bravo? Excellent, we've been trying to reach you for days now. Now listen - this is important - you have to send two squads of men immediately to the capitol building. There they should strip naked and dance around in a circle to pacify the infected in the area. Do you copy those instructions?'";
		now thirst of Military Radio is 1;
	else:
		say "     '[one of]The number you have dialed is busy. If you want to leave a message, please speak after the beep. BEEEP!'[or]New order to everyone - bring all unspoiled food that contains chocolate you can find to the corner building of Main Street and 5th. Deposit it inside the house and leave the area.'[or]What's going on with you in that city? We've had half-changed soldiers stumbling out to the quarantine barrier babbling something about special transport duties...'[or]...then put the turkey in the oven. And don't forget to baste it regularly with the juices collecting in the dish. You don't want the meat to dry out...'[or]Delta squad, proceed through to the end of the street, no hostiles in sight.'[or]Our researchers have figured out how to turn the nanites off. The signal is has already been sent. You can stop injecting your daily immunity boosters now.'[or]You won't believe how good those husky bitches can give head. Absolutely amazing - why don't you go find one and try it?'[at random]";


[ thirst states of Elaine                                            ]
[   0: Starting State - not pregnant                                 ]
[   1: invisibly pregnant by the minotaur                            ]
[   2: visibly pregnant by the minotaur                              ]
[   3: Adam was born                                                 ]
[   4: Okayed chain-fucking orgy w/Tiny Tim                          ]
[   5: Performed chain-fucking orgy w/Tiny Tim                       ]
[   6: Post-chain-fucking follow-up                                  ]

[ hunger states of Elaine                                            ]
[   0: hasn't had sex with the player                                ]
[   1: had sex with the player                                       ]

[ XP of Elaine                                                       ]
[   0: player hasn't gotten a uniform yet                            ]
[   1: player already got a uniform                                  ]

[ ElainePregnant - timer for the birth (48h from start)              ]

Table of GameCharacterIDs (continued)
object	name
Elaine	"Elaine"

Elaine is a woman. Elaine is in Quartermaster's Tent.
ScaleValue of Elaine is 3. [human sized]
Body Weight of Elaine is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Elaine is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Elaine is 7. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Elaine is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Elaine is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Elaine is 4. [length in inches]
Breast Size of Elaine is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Elaine is 2. [count of nipples]
Asshole Depth of Elaine is 6. [inches deep for anal fucking]
Asshole Tightness of Elaine is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Elaine is 0. [number of cocks]
Cock Girth of Elaine is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Elaine is 0. [length in inches]
Ball Count of Elaine is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Elaine is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Elaine is 1. [number of cunts]
Cunt Depth of Elaine is 9. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Elaine is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Elaine is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Elaine is false.
PlayerRomanced of Elaine is false.
PlayerFriended of Elaine is false.
PlayerControlled of Elaine is false.
PlayerFucked of Elaine is false.
OralVirgin of Elaine is false.
Virgin of Elaine is false.
AnalVirgin of Elaine is true.
PenileVirgin of Elaine is true.
SexuallyExperienced of Elaine is true.
TwistedCapacity of Elaine is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Elaine is false. [steriles can't knock people up]
MainInfection of Elaine is "Human".
Description of Elaine is "     Elaine Scott is the quartermaster of this camp, responsible for the regular and... more unusual supplies the soldiers need. She's an attractive woman in her thirties, about 4'9' or so in height, with short-cut black hair. [if thirst of Elaine is 1]She has a healthy glow to her[else if thirst of Elaine is 2]Her belly bulges outward in obvious pregnancy[else if thirst of Elaine is 3]She keeps a watchful eye over her son Adam, who's just learning how to manage the inventory here[end if].".
Conversation of Elaine is { "Huh?" }.
ElainePregnant is a number that varies.

An everyturn rule:
	if ElainePregnant is 1:
		move Adam to Quartermaster's Tent;
		now HP of Adam is 5; [Adam was born]
		now ElainePregnant is 0;
		now thirst of Elaine is 3;
	if ElainePregnant is 24:
		now thirst of Elaine is 2; [visible pregnancy]
	if ElainePregnant is 36:
		now thirst of Elaine is 1; [so there's some time between the player talking to the Major and Elaine first mentioning she got fucked by the minotaur]
	if ElainePregnant > 1:
		decrease ElainePregnant by 1;

instead of sniffing Elaine:
	say "     Smells like a female human[if thirst of Elaine is 1] - with a slight undertone of pregnancy[else if thirst of Elaine is 2] - a pregnant one[end if].";

Instead of fucking Elaine:
	say "[ElaineFucking]";

instead of conversing Elaine:
	say "[CampBravoElaineTalk]";

to say CampBravoElaineTalk:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask her for a status report";
	now sortorder entry is 1;
	now description entry is "Get a report";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Request a uniform";
	now sortorder entry is 2;
	now description entry is "Ask the quartermaster to give you a uniform";
	[]
	if thirst of Elaine is 3:
		choose a blank row in table of fucking options;
		now title entry is "Ask her about Adam";
		now sortorder entry is 3;
		now description entry is "Talk about Elaine's son with the minotaur";
	[]
	if lust of Tiny Tim > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get her thoughts on you fucking Tiny Tim";
		now sortorder entry is 4;
		now description entry is "See what she thought of the chain-fucking orgy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Observe the next group of men getting their special supplies";
	now sortorder entry is 5;
	now description entry is "Watch the dildos being handed out and used";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Proposition Elaine Scott for sex";
	now sortorder entry is 6;
	now description entry is "Fuck her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Do nothing, turn away";
	now sortorder entry is 7;
	now description entry is "Break Conversation off";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask her for a status report"):
					say "[CampBravoElaineReport]";
				if (nam is "Request a uniform"):
					say "[ElaineUniform]";
				if (nam is "Ask her about Adam"):
					say "[CampBravoElaineAdamTalk]";
				if (nam is "Get her thoughts on you fucking Tiny Tim"):
					say "[CampBravoElaineTTRush]";
				if (nam is "Observe the next group of men getting their special supplies"):
					say "[CampBravoMenPrepping]";
				if (nam is "Proposition Elaine Scott for sex"):
					say "[ElaineFucking]";
				if (nam is "Do nothing, turn away"):
					say "     You wave Elaine Scott off as she looks at you inquisitively and turn away.";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the soldier, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say CampBravoElaineReport:
	if CampBravoWomenAllowed is 0:
		say "     She leads you over to the large sacks resting next to her desk and opens one of them up. It's filled to the top with dildos and butt plugs 'As you can see, our scouts did a good job gathering these. They must have loot- erm, checked out every sex shop in the city. With the amount of material we have now, we'll run out of available men in the camp long before anything else.'";
		say "     'Some of the guys are a bit squeamish at first, but orders are orders - and a lot of them warm up to sticking things up their butts once they try it. I only wish I could do more than just watch them go at it... us women are the only ones not getting any action these days.' She sighs. 'Seeing all those yummy guys parade into this tent and strip sure makes me horny.'";
	else:
		say "     She leads you over to the large sacks resting next to her desk and opens one of them up. It's filled to the top with dildos and butt plugs 'As you can see, our scouts did a good job gathering these. They must have loot- erm, checked out every sex shop in the city. With the amount of material we have now, we'll run out of available men in the camp long before anything else.'";
		say "     'Some of the guys are a bit squeamish at first, but orders are orders - and a lot of them warm up to sticking things up their butts once they try it. Since the new orders came from the Major, the women in the camp have been added to Tiny Tim's schedule too. The things you do for your country - none of us expected to end up as breeding partners for a minotaur, that's for sure...'";
	if thirst of Elaine is 1:
		say "     She nods to the outside of the tent in the east. 'My own turn with our horny bull out there came up not too long ago - and I can tell you he's packing a pretty large piece of equipment. And the amount of cum he pumped into me... that was something else.'";
	else if thirst of Elaine is 2:
		say "     She nods to the outside of the tent in the east. 'My own turn with our horny bull out there came up not too long ago...' Elaine says as she strokes her bulging belly. 'His kid grows faster than I had imagined - and I'm hornier than ever.'";
	else if thirst of Elaine is 3:
		say "     She nods to Adam, who's busy sorting the inventory of a storage box. 'It still amazes me how quickly my boy has grown. I mean - it's been only days from Tiny Tim fucking me to Adam's current size. The aging seems to have slowed down to human levels now, thankfully.'";

to say ElaineUniform:
	if XP of Elaine is 2: [player already got a uniform]
		say "     She looks at you and frowns. 'I already gave you a set of clothing recently. Sorry, but with some of the men coming back pretty... sticky and splattered in fluids after their patrols, I really need to conserve the spares for those cases. It's not like we have an easy time getting anything washed in this situation...'";
	else: [player has not gotten a uniform yet]
		if scalevalue of Player is 1: [tiny]
			say "     The female quartermaster takes one look at you and replies, 'You're kidding, right? I pride myself on having a well-stocked inventory, but the US army just isn't in the habit of making child- or doll-sized uniforms.'";
		else if scalevalue of Player is 2: [small]
			say "     The quartermaster glances at your form and then strides over to a nearby shelf, selecting several articles of clothing and a pair of boots. 'This is the best I can do, with your small size. Some things may be rather looks, but I'm sure you'll be able to manage, right?' She doesn't actually wait for an answer, just handing you the stack of gear right away.";
			Linebreak;
			UniformHandout;
		else if scalevalue of Player is 3: [normal]
			say "     The quartermaster glances at your form and then strides over to a nearby shelf, selecting several articles of clothing and a pair of boots. 'Okay then, here's a uniform in your size.' With that, she hands you the stack of gear right away.";
			Linebreak;
			UniformHandout;
		else if scalevalue of Player is 4: [big]
			say "     The quartermaster glances at your form and then strides over to a nearby shelf, selecting several articles of clothing and a pair of boots. 'Now then, this should mostly fit you, even if it will be a bit snug. I'm sure you'll be able to manage, right?' She doesn't actually wait for an answer, just handing you the stack of gear right away.";
			Linebreak;
			UniformHandout;
		else: [giant]
			say "     The female quartermaster takes one look at you and replies, 'You're kidding, right? I pride myself on having a well-stocked inventory, but the US army just isn't in the habit of making giant versions of any uniform.'";

to UniformHandout:
	ItemGain camo shirt by 1;
	ItemGain green camo pants by 1;
	ItemGain black boxer briefs by 1;
	ItemGain black combat boots by 1;
	now XP of Elaine is 2;

to say CampBravoElaineAdamTalk:
	say "     'My boy's grown up into a quite handsome charmer, hasn't he? And it only took a few hours. You know, I only let that big brute out there shag me to help fight the plague, but... now that I have him, I love my son. I couldn't bear to send him away, so I talked the Major into letting him stay here as my assistant. Wasn't too hard, once I showed him how disorganized things had gotten after he sent my two male subordinates out to the city quarantine barrier filled with minotaur cum a few days back.'";

to say CampBravoElaineTTRush:
	if thirst of Elaine < 5:
		say "     'Pretty proud of getting to fuck the minotaur, aren't you, stud?' she says teasingly. 'I must say, you put on quite the show with the big guy. I know the Sarge appreciated how well your [']unorthodox technique['] was able to help move through that backlog in soldiers. And it seems Tiny Tim had a great time, too. If anything, I'm a little sorry that I couldn't be a part of it. ";
		if CampBravoWomenAllowed is 0:
			say "But it's men only at the hitching post.'";
			increase thirst of Major Padgett by 4; [speeds up trying to convince him again]
		else if thirst of Elaine is 0:
			say "As it stands, I'm still waiting for my round with him now that females are allowed at the hitching post.'";
		else if thirst of Elaine is 1:
			say "Though I'm still recovering from my recent session with him,' she adds while subconsciously rubbing her lower belly.";
		else if thirst of Elaine is 2:
			say "Not that he can knock me up again,' she adds, rubbing her pregnant belly.";
		else if Player is not male:
			say "Not that we'll have a repeat until you're properly equipped for it,' she adds, pointing to your [if Player is female]female[else]neuter[end if] crotch.";
		else if lastfuck of Elaine is 255:
			say "Not that I'd want to jump into something like that without [']getting to know['] the other partner first,' he says with a coy grin.";
		else:
			say "You can count me in for one with the girls.'";
			increase thirst of Elaine by 1;
	else if thirst of Elaine is 5:
		say "     'Oh, are you worried about the Major? Don't worry about that. I took care of him. In the end, he doesn't care about anything but results. His secretary normally keeps him out of our hair, but because of this she'd not gotten her round with the minotaur until then. She's promised keep a better eye on him for us now that she's gotten what she wants - twins even,' she adds, patting her belly to let you know the secretary was successfully impregnated.";
		say "     'And speaking about results, I made sure Tiny Tim didn't get me pregnant. I made sure to take several birth control pills before having my go with him. Getting pregnant with Adam was wonderful, but I need to be able to perform my duties and one bull-headed child is enough for now.";
		now thirst of Elaine is 6;
	else:
		say "     'That was quite a lot of fun. Be sure to let me know if you're going to do another of those. After a show like that, I'm sure some of the females who've refused before will change their minds and sign up for a breeding session with our resident stud. Just check with the Sergeant and let me know when he's got a fresh list of candidates together.'";

to say CampBravoMenPrepping:
	say "     Four two-man teams of soldiers file into the tent and get into line in front of Elaine's desk. She accepts a salute from them, then goes over to the sacks and hands out items from them, saying 'Here, take this -' (a bottle of lube) '- that -' (a rubber dildo) '- and these -' (two butt-plugs) '- and get each other ready for Tiny Tim out there. Don't be embarrassed about it - you'll be heroes if they find a cure through your service. Also - really, really take your daily immunity boosters! You'll be carrying around potent stuff, so don't miss ANY injection.'";
	say "     One after another the men get their special equipment, then stand around a bit sheepishly, inspecting the often brightly colored rubber toys they're supposed to put up their asses. Only when Elaine gives one of the men a nudge and says 'Go on, strip - you're not shy little girls.' does the ice break and the men start taking off their clothes. Soon eight naked men stand in the tent, with two of them sporting obvious erections as they look at the other men. These two gay - or at least bi - men take point, telling their partners to bend over, then lubing them up and starting on their asses with the dildos. The next team of men shrugs, then start emulating the others, which leaves only the two guys closest to you the odd men out.";
	LineBreak;
	say "     These two, one slender redhead and his more beefy and muscular partner only hesitantly get going. The redhead bends over a storage crate, while the bigger guy takes out the dildo from its packaging, then just starts pushing it against his partner's asshole without any lube at all.";
	say "     [bold type]Do you want to keep watching and see if they figure things out for themselves, or step in and help things along?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Just watch.";
	say "     ([link]N[as]n[end link]) - Step in.";
	if Player consents: [just watch them figure out the lube, etc.]
		LineBreak;
		say "     You wince in shared pain as the muscled guy just tries to shove in the dry dildo several times without much success. Seeing that this isn't working, he throws a look at the other teams, who are by now well into fucking each other with their sex toys. 'Oh...' he murmurs embarrassedly, then grabs the lube bottle from the floor and drenches the whole dildo in the slippery fluid. It almost slips out of his hands several times when he gets back to inserting it into his partner's ass, but after a few tries he finally gets it in and starts to fuck the redhead soldier with it.";
		say "     Despite the rocky start, it turns out the other guy really likes having his prostate stimulated, and before too long he shoots a big load all over the side of the crate he's leaning against. After getting his breath back, he says 'That was amazing - come on, your turn... you'll like it.' After the bigger soldier takes his place, the redhead pulls the dildo out of his own ass and starts to push the slippery tip against his partner's opening...";
	else: [get involved]
		LineBreak;
		say "     Stepping up to the men, you tell big guy that he can't just shove the toy in dry, especially into a virgin hole. Rather embarrassed at having tried, he listens closely to your instructions and follows them to the letter - warming up some lube in his hands before starting to rub it over and into the redhead's asshole, then massaging his insides with strong fingers. As the redhead's moans at getting fingered get louder and louder, you smile at the man doing the fingering, saying 'And that's how you're supposed to do it.'";
		if Player is male: [male player chars get the choice of fucking]
			LineBreak;
			say "     [bold type]Do you want to hand the muscled guy the dildo - or show him how real men go on from here?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Give him the dildo.";
			say "     ([link]N[as]n[end link]) - Fuck the redhead yourself.";
			if Player consents: [just let them use the dildo]
				LineBreak;
				say "     You hand the man the dildo, then walk him through inserting it, going slow so his buddy's relaxed asshole doesn't tighten up again. Soon he's shafting the redhead deeply with the sex toy, encouraged by the man's lustful moans at having his prostate stimulated. Before too much longer, the slender soldier shoots a big load all over the side of the crate he's leaning against. After getting his breath back, he says 'That was amazing - come on, your turn... you'll like it.' After the bigger soldier takes his place, the redhead pulls the dildo out of his own ass and starts to push the slippery tip against his partner's opening...";
			else: [fuck the redhead yourself]
				LineBreak;
				say "     You quickly strip off your own clothing, then step up beside the beefy soldier, softly pulling his hands away from his teammate's hole. Lining up your hard shaft with the redhead's ass, you say, 'There's something much better than a dildo to stretch a man's hole...', then move forward, touching his pucker with the tip of your cock. Putting your arms around the man's chest, holding him close and stroking his muscles, you whisper 'Just relax and push back a bit.' into his ear as you push forward, slowly spreading his hole around your cock. Then the head is in and moves deeper, exploring this tight tunnel where no man has gone before. And from the red-headed soldier's moans, you're quite well received in his virgin depths.";
				say "     After bottoming out in him, you give the man a moment to get used to your girth, then fuck his virgin ass, becoming someone he'll never forget - the first guy to fuck him. Your soldier's hole is so warm and tight that you almost forget everything but fucking him - until you hear a moan right next to you and remember the second soldier standing there. The larger, more muscular man has obviously become pretty aroused by watching you shaft his partner and his jerking his own hard-on with his strong hands. Taking a look at his ripped body, long cock and muscled butt, you instantly decide what to do next.";
				WaitLineBreak;
				say "     Pulling your redhead soldier's lips to yours, you give him a quick kiss, then slowly pull out of his ass and present the ready and slightly gaping opening to the other soldier. 'Your turn,' you say, and the man eagerly takes the spot behind his mate, then sinks himself in him with a satisfied groan. You give him a minute to get really into fucking his teammate, their moans and the slapping noises of one man's hips against the other's ass filling the tent.";
				say "     And then it's time to take another man's virginity for you. Your eager cock rock-hard, lubed and ready, you step up behind the muscular soldier and thrust forward, penetrating his tight ass in one quick move. He gives a gasp, more in surprise than pain, and looks back at you. Being balls deep in another soldier's ass himself, he can't very well complain, so he just shrugs and starts moving in and out again. Each time he pulls back from his partner's hole, he pushes your shaft deeper in his own ass, giving him quite a bit of extra stimulation that soon has him moaning louder than before.";
				say "     Your little threesome goes on for a while, until the muscled soldier suddenly shouts 'Aaah - I'm coming!', filling up his buddy's ass with pulse after pulse of his seed. The man's anal muscles spasming around your own shaft push you over the edge right with him, claiming his no longer virgin asshole as yours with a huge load shot deep inside. You pull out of his hole and tell the man to lie down on his back on the crate, then give the red-headed soldier a nudge. As hot and ready as he is, he instantly sinks himself into the larger man's cum-dripping hole, pumping away urgently until his own orgasm approaches. With a last loud moan, he pulls out just in time to cum all over his mate, spraying quite a bit of cum all over his muscled chest.";
				CreatureSexAftermath "Human" receives "AssFuck" from "Player";
		else: [females and neuter just hand over the dildo]
			say "     You hand the man the dildo, then walk him through inserting it, going slow so his buddy's relaxed asshole doesn't tighten up again. Soon he's shafting the redhead deeply with the sex toy, encouraged by the man's lustful moans at having his prostate stimulated. Before too much longer, the slender soldier shoots a big load all over the side of the crate he's leaning against. After getting his breath back, he says 'That was amazing - come on, your turn... you'll like it.' After the bigger soldier takes his place, the redhead pulls the dildo out of his own ass and starts to push the slippery tip against his partner's opening...";
	LineBreak;
	say "     Over the next hour or so, you watch all of the men get fucked in the ass with the dildos - and sometimes their teammates hard shafts. Looks like a successful prepping session for their later encounters with the minotaur to you.";

to say ElaineFucking:
	if Player is not male:
		say "     She shakes her head as you proposition her. 'Sorry, I don't swing that way. But I'm sure you'll find a willing man - or beast - out in the camp in a second...'";
	else:
		if (lastfuck of Elaine - turns < 12):
			say "     As you approach Elaine and proposition her for sex, she smiles, but turns you away for now. 'Sorry sweetie, I do have other things to do at the moment. Someone has to keep this whole operations supplied, you know...'";
		else:
			if thirst of Elaine is 1: [pregnant sex]
				say "     Delighted at a sexual partner not in her chain of command, the soldier eagerly responds, putting her arms around you and giving you a hungry kiss. Without hesitation she pulls off her top and throws it to the side, quickly followed by boots, pants and underwear. Now fully naked, she makes a quite enticing picture - with her full breasts, trained body and a bulging pregnant belly. As you stand there, your eyes following her curves, Elaine steps up and runs her hands over you, stroking your body and pulling off your clothing. Soon you're both naked in front of each other, your by now rock-hard cock grasped and stroked by her slender hands. Her eyes wander to a box in a nearby shelf, then she shakes her head softly, murmuring to herself 'No need for condoms today - he can't knock me up twice.' The horny quartermaster leads you over to her bed and pushes you to lie down on it, running her hands over your body and cock.";
				say "     Not losing any time, she climbs up on the bed with you, holding your proudly erect member up as she lowers herself onto it. Both of you moan deeply as your shaft spreads the moist cunt lips and penetrates her warm and tight opening. With Elaine moving up and down on your shaft, you revel in the incredible feeling of her inner walls rubbing against your shaft. Feels like she's fit and trained all over, even with her inner muscles, which grip and squeeze your cock at just the right moments each time you slide into her. The two of you spend a long while on the bed, fucking each other and making out, until you feel an urgent feeling rise in your balls. You thrust upwards, burying your cock as far as you can go and grab Elaine's hips to hold her body tight as spurt after spurt of fertile seed shoot upwards into her vagina. Leaning down to you, Elaine gives you a deep kiss, moaning 'Thanks, stud. I really needed that...' After a short rest, she slides off your slowly softening cock and goes to put her clothes back on.";
			else: [normal sex]
				say "     Delighted at a sexual partner not in her chain of command, the soldier eagerly responds, putting her arms around you and giving you a hungry kiss. Without hesitation she pulls off her top and throws it to the side, quickly followed by boots, pants and underwear. Now fully naked, she makes a quite enticing picture - with her perky breasts, lithe trained body and an attractive face showing a seductive smile. As you stand there, your eyes following her curves, Elaine steps up and runs her hands over you, stroking your body and pulling off your clothing. Soon you're both naked in front of each other, your by now rock-hard cock grasped and stroked by her slender hands. She measures your length and girth with her hands, then says 'Just a sec.' and goes for one of the many boxes in the shelves, grabbing something out of it. She says [if Cock Length of Player > 9]'Thankfully I have some extra-large ones in stock that will fit even you.' [else]'Time to suit up.' [end if]and hands you a condom. Eager to get into her pussy, you unwrap it and put it on your shaft.";
				say "     The horny quartermaster leads you over to her bed and lies down on it, spreading her legs and pussy for you. Not losing any time, you join her on the bed, grab your cock and push it against her nether lips, moaning as you penetrate her warm and tight opening. Thrusting in and out of her body, you revel in the incredible feeling of her inner walls rubbing against your shaft. Feels like she's fit and trained all over, even with her inner muscles, which grip and squeeze your cock at just the right moments each time you slide into her. The two of you spend a long while on the bed, fucking each other and making out, until you feel an urgent feeling rise in your balls. You thrust in all the way one last time and orgasm, with spurt after spurt of fertile seed filling your condom to the brink.";
				WaitLineBreak;
				say "     Pulling your lips to hers, Elaine gives you a deep kiss, moaning 'Thanks, stud. I really needed that...' After a short rest, she slides out from under you and goes to put her clothes back on.";
			NPCSexAftermath Elaine receives "PussyDildoFuck" from Player;

Table of GameCharacterIDs (continued)
object	name
Sergeant Alexander	"Sergeant Alexander"

Sergeant Alexander is a man. Sergeant Alexander is in Parade Ground.
ScaleValue of Sergeant Alexander is 3. [human sized]
Body Weight of Sergeant Alexander is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sergeant Alexander is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sergeant Alexander is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sergeant Alexander is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sergeant Alexander is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sergeant Alexander is 4. [length in inches]
Breast Size of Sergeant Alexander is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sergeant Alexander is 2. [count of nipples]
Asshole Depth of Sergeant Alexander is 6. [inches deep for anal fucking]
Asshole Tightness of Sergeant Alexander is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sergeant Alexander is 1. [number of cocks]
Cock Girth of Sergeant Alexander is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sergeant Alexander is 9. [length in inches]
Ball Count of Sergeant Alexander is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sergeant Alexander is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Sergeant Alexander is 0. [number of cunts]
Cunt Depth of Sergeant Alexander is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sergeant Alexander is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sergeant Alexander is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sergeant Alexander is false.
PlayerRomanced of Sergeant Alexander is false.
PlayerFriended of Sergeant Alexander is false.
PlayerControlled of Sergeant Alexander is false.
PlayerFucked of Sergeant Alexander is false.
OralVirgin of Sergeant Alexander is false.
Virgin of Sergeant Alexander is true.
AnalVirgin of Sergeant Alexander is true.
PenileVirgin of Sergeant Alexander is false.
SexuallyExperienced of Sergeant Alexander is true.
TwistedCapacity of Sergeant Alexander is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sergeant Alexander is false. [steriles can't knock people up]
MainInfection of Sergeant Alexander is "Human".
Description of Sergeant Alexander is "     Sergeant Alexander is a tough-looking soldier, who's seen a lot in his time. He's about 5'11' and pretty buff and muscular. Looks like he's responsible for caring for the minotaur, as he carries box after box of vegetables and other foodstuffs to the creature from behind one of the nearby tents."
Conversation of Sergeant Alexander is { "Ick!" }.

instead of sniffing Sergeant Alexander:
	say "     He smells a bit of sweat and minotaur cum. Since he's often pretty close to the action on the parade ground, his uniform has a lot of dried cum-splatters responsible for the smell.";

Instead of fucking Sergeant Alexander:
	say "[AlexanderFucking]";

instead of conversing Sergeant Alexander:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch a man take his turn getting fucked at the hitching post.";
	now sortorder entry is 1;
	now description entry is "Witness the minotaur assfucking a soldier.";
	[]
	if CampBravoWomenAllowed is 1:
		choose a blank row in table of fucking options;
		now title entry is "Watch the minotaur fuck a female soldier.";
		now sortorder entry is 2;
		now description entry is "Observe the minotaur breeding a woman.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take position at the hitching post yourself.";
	now sortorder entry is 3;
	now description entry is "Present yourself to the minotaur for fucking.";
	[]
	if scalevalue of Player >= 3 and player is male and Cock Length of Player >= 9 and Libido of Tiny Tim > 0 and lastfuck of Tiny Tim - turns >= 4:
		if MovingOrwell >= 3:
			choose a blank row in table of fucking options;
			now title entry is "Request to fuck Tiny Tim.";
			now sortorder entry is 4;
			now description entry is "Take a turn atop the minotaur.";
		[]
		if thirst of Elaine >= 4:
			choose a blank row in table of fucking options;
			now title entry is "Request a round of females while you fuck Tiny Tim.";
			now sortorder entry is 5;
			now description entry is "Top the minotaur while be breeds with several female soldiers.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Proposition Sergeant Alexander for sex.";
	now sortorder entry is 6;
	now description entry is "Let Sergeant Alexander fuck you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Do nothing, turn away.";
	now sortorder entry is 10;
	now description entry is "Break Conversation off.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch a man take his turn getting fucked at the hitching post."):
					say "[CampBravoWatchMen]";
				if (nam is "Watch the minotaur fuck a female soldier."):
					say "[CampBravoWatchWomen]";
				if (nam is "Take position at the hitching post yourself."):
					say "[CampBravoGetFucked]";
				if (nam is "Request to fuck Tiny Tim."):
					say "[CampBravoFuckTTMale]";
				if (nam is "Request a round of females while you fuck Tiny Tim."):
					say "[CampBravoFuckTTFemale]";
				if (nam is "Proposition Sergeant Alexander for sex."):
					say "[AlexanderFucking]";
				if (nam is "Do nothing, turn away."):
					say "     You wave Sergeant Alexander off as he looks at you inquisitively and turn away.";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the soldier, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say CampBravoWatchMen:
	project Figure of TinyTim_face_icon;
	if thirst of Tiny Tim - turns < 4:
		say "     'I've got the big guy taking a bit of a break. Working through that last group really took a lot out of him. I know he'll be ready to go soon. Just give him a few more hours.";
	else:
		say "     'So you want to watch someone's ass getting filled by Tiny Tim?' Sergeant Alexander asks and you nod in confirmation. 'Just a moment, the next plugging team will be here shortly.' He chats a bit with you until two buck-naked soldiers enter the parade ground, carrying nothing but two butt-plugs and a bottle of lube.";
		let diceroll be a random number from 1 to 20; [a bit randomness which soldiers come]
		if diceroll > 13: [guy #1 straight, guy #2 gay]
			say "     The first one, a brown haired guy looks a bit apprehensively at the large minotaur next to the hitching post, while his blond partner has his eyes mostly on his buddy's bubble butt in front of him and shows a nine inch erection. Arriving at the field bed near the hitching post, the men set down their butt plugs on it and the blond one has his buddy bend over, then goes on to lube his ass, giving the man's opening a massage with very eager fingers. With his cock even harder than before, you'd say he himself wants to use the opportunity to fuck that hole.";
		else: [both straight]
			say "     Both men look very apprehensively at the large minotaur next to the hitching post. The first one pales visibly as the beast stands up, allowing him to clearly see the massive shaft dangling between its legs. He drops his butt plug on the field bed, then hesitantly steps towards the hitching post. Sergeant Alexander calls to him 'Hey buddy, go let your partner put some of that lube up your butt - you'll need it.' The naked soldier looks back a bit sheepishly, then turns around and bends over so he other guy can lube him up.";
		LineBreak;
		say "     Ready now, the first man goes over to the hitching post and bends over, tightly gripping the smooth wood as he sticks out his ass for the minotaur. The tall beast steps up and gives the man a sniff, then gives a lustful rumble and runs his wide tongue up over the human's bare back. Grabbing his long shaft in a hand, he then slaps it softly against the soldier's buns a few times before bringing it to the waiting hole. You hear a gasp from the man as the minotaur pushes forward, popping the head of his thick cock inside, then starts to slide deeper. Inch after inch of rock-hard shaft slides into the tight opening until the minotaur is finally fully inside the man, his large balls rubbing up against him.";
		say "     For a moment, only the man and beast's heavy breathing can be heard, then the minotaur pulls almost all the way out and slams back inside with a bellow, gripping the human's hips tightly with his large hands as he humps him with deep thrusts. The mystical beast's animal nature becomes obvious now, as he tirelessly ruts the man without holding back, each thrust accompanied by the meaty slap of his balls against the human's ass. Having been prepared for this and thoroughly lubed, the soldier takes the hard fucking pretty well, with the first gasps at the thick intruder into his ass quickly replaced by lustful moaning. His cock hardens without ever being touched and you can see a glistening line of precum dripping from its tip.";
		say "     The minotaur continues fucking the soldier without pause for about twenty minutes, until the man under him gives a sudden shout of 'Aaah... I'm coming!' and thick ropes of cum spray from his manhood, splattering over the cum-drenched ground. The anal muscles of his human buddy clenching in orgasm around his long thrusting cock, the minotaur isn't far behind. With a last deep shove he buries his cock fully in the human as his balls spasm with the blasts of cum shooting up his shaft. Breathing heavily, he steadies himself with one hand on the wooden post while the other holds the human close until his orgasm subsides.";
		LineBreak;
		if diceroll > 13: [guy #1 straight, guy #2 gay]
			say "     Sergeant Alexander waves the second man forward to stand ready with his butt-plug for when the minotaur pulls out so they don't lose any of the cum. He eagerly steps forward, already having lubed himself up and being almost impatient at taking a ride on the long minotaur cock himself.";
		else: [both straight]
			say "     Sergeant Alexander waves the second man forward to stand ready with his butt-plug for when the minotaur pulls out so they don't lose any of the cum. The man seems a lot less anxious now to be the next in line for fucking. Might be that he's reconsidered his position on anal intercourse after seeing his buddy come while being fucked - or it could just be the pheromone-laden musk of the minotaur laying heavily in the air...";

to say CampBravoWatchWomen:
	project Figure of TinyTim_face_icon;
	if thirst of Tiny Tim - turns < 4:
		say "     'I've got the big guy taking a bit of a break. Working through that last group really took a lot out of him. I know he'll be ready to go soon. Just give him a few more hours.";
	else:
		say "     'You want to watch Tiny Tim breed a woman? You and everyone else in the camp I guess...' Sergeant Alexander points behind you, where the male soldiers of the camp walk up from their tents alone or in small groups and find places at the edge of the parade ground. Then suddenly, the murmur among the men falls silent. You follow their looks and see a female soldier coming out of the quartermaster's tent in the west carrying a bottle of lube.";
		say "     She makes her way to the field bed in the center of the open space, then starts taking off her clothes accompanied by whistles and cheering from the crowd. The minotaur seems spell-struck by seeing her undressing, motionless except for his hard shaft twitching in anticipation and dribbling precum on the ground. When the soldier is completely naked, she walks over to the towering beast-man and takes him by the hand, leading him effortlessly towards the field bed. She strokes the minotaur's fur and the rock-hard muscles of his chest a bit, then picks up the lube bottle and starts rubbing a generous amount over his long cock. Then she lies down on the field bed, spreading her legs invitingly.";
		LineBreak;
		say "     Seeing a ready pussy before him breaks the minotaur from his daze, as he leans down and starts running his wide tongue over the soldier's folds. After a few licks, he continues upwards over her flat stomach to the woman's perky breasts, sucking softly on one, then the other. The woman pulls his head up to hers for a kiss, then feels for his long shaft and positions it at her opening. Without hesitation, the minotaur pushes forward, penetrating her pussy and spreading her folds around his thick maleness. He pushes into her further and further until finally bottoming out, her belly showing a slight bulge from the massive member stuffed inside her. Then with a lustful bellow, he starts thrusting in and out, each deep thrust accompanied by the female soldier's satisfied moans.";
		say "     As the minotaur humps the woman faster and faster, the field bed under hear starts to screech with the protesting sound of over-strained metal. Showing that there's still room for some thought in his bull's head beside rutting, the large creature picks up his sexual partner before he breaks the bed. Now standing, he holds the woman close to his muscled chest, sliding her up and down on his erection. The change of position seems to have increased the soldier's pleasure quite a bit, as she now screams in lust every time he slides in, rubbing very sensitive spots deep in her vagina.";
		LineBreak;
		say "     Looking around, you see that many of the men around the parade ground have their own cocks out, stroking themselves and sometimes each other while watching the show. They sure are happy that you talked the Major into allowing this. There's a constant background noise of moaning now and the ground gets a good soaking in cum as many of the men stroke themselves to orgasm and shoot their loads.";
		say "     Returning the minotaur, it seems he's getting close from the volume and urgency of his grunts and bellows. Then he pushes the woman down on his shaft all the way and roars, his large balls twitching as they send thick streams of minotaur seed into the soldier's womb. After at last a dozen spurts, he gives a very satisfied grunt and pulls her off his cock. Giving her face an affectionate lick, he puts the woman down on the field bed, her belly still bulging a bit - this time from all the cum inside...";

to say CampBravoGetFucked:
	project Figure of TinyTim_face_icon;
	[puts Minotaur as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Minotaur":
			now MonsterID is y;
			break;
	let baby be 0;
	if child is born or gestation of Child is not 0, now baby is 1;
	if lastfuck of Tiny Tim - turns <= 4:
		say "     Alexander shakes his head at your request. 'I know you've got to keep tabs on Tiny Tim and how this process is going, but you had a session with him just recently. I understand you like to be [']hands-on['] with you inspection,' he says with a bit of a grin. 'And that's fine by me, but I've got the Major barking at me to keep the lines moving. We've got to [if thirst of Tiny Tim - turns < 4]give the big guy a bit of a chance to recover[else]keep the big guy on program with the soldiers[end if].'";
	else if Player is female:
		if CampBravoWomenAllowed is 1:
			say "     'You want to be bred by Tiny Tim? Hope you like an audience...' Sergeant Alexander points behind you, where soldier who overheard you talking to him rushes off to get the other men. Soon quite a few of the male soldiers of the camp walk up from their tents and gather at the edges of the parade ground. Meanwhile, Sergeant Alexander goes into the quartermaster's tent and comes out with a bottle of lube which he hands to you.";
			say "     Walking to the field bed in the center of the open space, you start to strip, causing appreciative whistles and cheers from the men watching. The minotaur seems spell-struck by seeing you undress, standing motionless except for his hard shaft twitching in anticipation and dribbling precum on the ground. When you stand completely naked, you walk over to the towering beast-man and take him by the hand, leading him effortlessly towards the field bed. You stroke the minotaur's fur and the rock-hard muscles of his chest a bit, then pick up the lube bottle and start rubbing a generous amount over his long cock. When you're done, you lie down on your back on the field bed and spread your legs invitingly.";
			say "     Seeing a ready pussy before him breaks the minotaur from his daze, as he leans down and starts running his wide tongue over your sensitive folds. After a few licks, he continues upwards over your stomach and chest to your nipples, sucking softly on one, then the other. You pull his head up to yours for a quick kiss, then feel for his long shaft and position it at your opening. Without hesitation, the minotaur pushes forward, penetrating your pussy and spreading the folds around his thick maleness. He pushes into you further and further, his shaft rubbing the inner walls of your vagina, until finally bottoming out. Looking down over yourself, you see your show a slight bulge from the massive member stuffed inside. Then with a lustful bellow, the minotaur starts thrusting in and out, each deep thrust making you moan from the pleasant feelings of having him inside.";
			LineBreak;
			say "     As the minotaur humps you faster and faster, the field bed under you starts to screech with the protesting sound of over-strained metal. Showing that there's still room for some thought in his bull's head beside rutting, the large creature picks up your body before he breaks the bed. Now standing, he holds you close to his muscled chest, sliding you up and down on his erection. In this new position, his cock rubs up against all new pleasure centers inside you, driving you into a lust-filled daze. You can't help yourself but scream and moan in lust every time he slides in, your body hungering for him to do it again and again.";
			say "     You lose track of time as your mind gets lost for a while in a world that only consists of you, the minotaur and his cock, only registering short glimpses of the camp and the men jerking off to you getting fucked. When you can focus again after another in a series of incredible orgasms, you notice that your minotaur seems to be getting close himself. He's increasing the volume and urgency of his grunts and bellows. Then suddenly, he pushes your body down on his shaft all the way and roars, his thick shaft pulsing with blast after blast of fertile seed shooting directly into your womb. He just keeps on cumming, filling you up to the brink and even making your belly bulge a bit more from all the cum inside.";
			say "     Thoroughly satisfied, the minotaur gives your sweaty chest one last lick, running his broad tongue over your nipples, then lowers your body back to the field bed. Almost reluctantly, he pulls his large cock out of the warm, cum-filled cave of your vagina and sits down on the ground to rest. Sergeant Alexander comes over to you with a towel in hand, helping you clean up a bit and wipe off the cum running out of your body before you put on your clothes and gear again.";
			infect "Minotaur";
			increase Libido of Tiny Tim by 1;
			NPCSexAftermath Player receives "PussyFuck" from Tiny Tim;
		else:
			say "     As you start to disrobe, Sergeant Alexander interrupts you, saying 'Sorry, no women allowed. Major's orders. You'll have to take that up with him before I can let you do that.'";
	else:
		say "     'So you want to let the bull take a ride in your ass?' Sergeant Alexander asks and you nod in confirmation. 'One moment please, sir.' He walks into the quartermaster's tent in the west and shortly comes out of it again carrying a bottle of lube. 'You'll need this. And don't use it sparingly.'";
		say "     You quickly undress, piling your clothes and equipment on the field bed standing close to the minotaur's fucking post. Then you lube your asshole with a generous amount of slippery gel, walk over to the hitching post and take position with your hands on the smooth wooden crossbar. Wiggling your ass invitingly brings the large minotaur to stand behind you almost instantly. He sniffs you, gives a lustful grumble and then runs his wide tongue up from your ass over your bare back. Grabbing his long shaft in a hand, he slaps it softly against your butt-cheeks before bringing it to your waiting hole. You give a short gasp as the minotaur pushes forward, popping the head of his thick cock inside, then starts to slide deeper. Inch after inch of rock-hard shaft slides through your tight opening until the minotaur is finally fully inside your body, his large balls rubbing up against your ass.";
		LineBreak;
		say "     He holds still for a moment, his breach blowing warm against your neck, giving your ass time to get used to his massive girth. Then the pause is over, and the minotaur pulls almost all the way out and slams back inside with a bellow, gripping your hips tightly with his large hands as he humps you with deep thrusts. His animal nature becomes obvious now, as he tirelessly ruts your body without holding back, each thrust accompanied by the meaty slap of his balls against the your ass. You're quite thankful now for the lube, as it allows that massive cock to slide in and out of your body a lot easier than it otherwise would. The hard shaft rubbing sensitive spots deep inside you quickly has you moaning lustfully. [if Player is male]Your own cock hardens without ever being touched and looking down, you see drops of precum glisten at its tip[else]Even though you have no genitalia yourself, a deep pleasant feeling suffuses your body[end if].";
		say "     The hot any heavy coupling with the large beast continues for about twenty minutes, until the feelings of getting fucked drive you over the edge, your body shaking as orgasm grips it. [if Player is male]Your cock jerks as thick ropes of cum spray from its tip, splattering over the cum-drenched ground. [end if]As you writhe in the throes of lust, your anal muscles flex and spasm around the minotaur's long thrusting cock, giving your beastly fucker the last push to arrive at his own fulfillment. With a last deep shove he buries his cock fully in you as his balls contract with each blast of cum shooting up his shaft. Breathing heavily, he steadies himself with one hand on the wooden post while the other holds your body close until his orgasm subsides.";
		say "     Thoroughly satisfied, the minotaur gives your sweaty back one last lick, then pulls is large cock out, leaving your stretches asshole gaping and with cum running out of it. Sergeant Alexander comes over to you and helps you to the field bed nearby to sit down and rest a bit before you put on your clothes and gear again.";
		infect "Minotaur";
		increase Libido of Tiny Tim by 1;
		NPCSexAftermath Player receives "AssFuck" from Tiny Tim;

to say CampBravoFuckTTMale:
	project Figure of TinyTim_face_icon;
	if lust of Tiny Tim is 0:
		say "     You bring up the possibility of getting a chance to top the minotaur. The sergeant is a bit taken aback and is clearly unsure. 'I- but- huh?' He holds up a hand to pause your comments while he tries to wrap his brain around your request. 'I... I honestly don't know how he'd take to that sort of thing. And this is supposed to be a serious operation here... despite how much sex is involved. How would that help the mis- Hmmm...'";
		say "     He pauses for several moments, rubbing his chin as he thinks. 'Poor Tiny Tim has got a bit of a queue built up with the most recent group in. The patrol before was delayed in getting here, so they were still being processed when the next squad arrived. He's running out of steam trying to keep up. Your plan might just be the pick-me-up he needs to power through the last of them. But if the big guy's going to go for it, he's going to need to feel at ease. We'll need someone willing to be on bottom to start him, just so things don't go bad.'";
		WaitLineBreak;
		say "     It only takes you a moment before the ideal solution clicks into place. Telling the sergeant you know just the man for the job, you exit the tent and head to the camp entrance. Doing your best to look stoic and serious, you bark out 'Orwell. Front and center. And bring your gear.' The young soldier looks up from his post, nods and grabs his rifle and pack.";
		say "     Private Cooper looks over at you with a bit of a scowl. 'What's going on?'";
		say "     'Not that it's any of your business, [']Private['], but I'm taking Orwell for a special mission. Major's orders,' you add.";
		say "     'Sorry, [if Player is female]ma'am... uh... sir[else]sir[end if]. It's just he'll probably take the chance to sneak some fun with the beast if he's not out here. Mark my words. God damn queers. Should never've let [']em in,' he grumbles the last bit under his breath.";
		say "     It takes a supreme effort not to snap at the bigoted ass. 'I appreciate the warning, soldier. I definitely won't let the private out of my sight. Orwell's been assigned to me for a hard mission and won't let him get out of it. If all goes well, he'll be back at his post in a couple of hours. If not... well, we'll find someone else to stand guard out here with you.' The private seems satisfied by your response, believing the other guy's gotten stuck with some unpleasant and likely dangerous mission.";
		WaitLineBreak;
		project Figure of TinyTim_face_icon;
		say "     Once back in Sergeant Alexander's tent, you fill Marc in on the plan and the three of you head out to visit Tiny Tim. Alexander takes the lead when speaking with him. He pats the minotaur's shoulder as he leans against a jeep, needing to catch his breath after his last round with one of the carriers.";
		say "     'Hey there, Tiny Tim. How you holding up? I know we've been keeping you busy with company. So the inspector (you remember [if Player is female]her[else]him[end if]) and I had an idea to help you get through the rest of this group. And we've brought a new friend to help out as well. This is Marc,' he adds, motioning the other soldier forward.";
		say "     Marc approaches cautiously at first, a little daunted by the minotaur's size now that he's up close and personal with him. 'H-hey there, Tiny Tim. I've been looking forward to meeting you. Really looking forward to it,' he repeats, running his hands over the minotaur's strong chest appreciatively. 'I want to help get you ready for the rest of these soldiers. That is, if you're willing?' he asks, letting a hand move down to the minotaur's floppy shaft. His touch causes it to twitch and start to rise. 'Mmm... what a trooper. I knew I could count on you.' He gives it a few more strokes before leaning in to lick and kiss at it. You take the opportunity to assist in undressing the private for his less-than-private romp with the large beast.";
		WaitLineBreak;
		say "     Alexander helps Marc in stroking Tiny Tim's flaccid member. Knowing just what the minotaur likes, he helps gets him up and hard in short order. Some more licks, kisses and lube on it later and the minotaur's moving to mount the obviously eager private. Marc's opted to lay on his back atop the jeep, allowing him to run his hands over the simple creature's muscly chest. You have a front row seat for the penetration, even helping to guide the thick pole into the soldier's ass. The gay soldier gives a little whimper as the thick meat pushes its way into his tight hole and caresses the bull-man's cheek, coaxing him to start slow. Tiny Tim, a gentle giant, gives his current partner a chance to adjust before picking up the pace.";
		say "     As he starts rutting him, it's tempting to watch, but you started this venture with another goal in mind. Giving the other two a nod, you move in behind the minotaur after slicking up your own pole. Lining it up with the large beast's back door prompts him to give a surprised bellow. Marc and Alexander do their best to help calm him back down, the sergeant talking soothingly to him while the private squirms enticingly on his cock while hugging him tightly.";
		say "     'It's alright, big guy,' Alexander says, stroking the minotaur's side. 'I'm right here. Just relax.' Once he's settled down and back to rutting Marc, you move into position again. This time is bellow is cut short by Marc pulling him into a kiss. Feeling the bull relax beneath you, you ease forward, pushing your [cock size desc of Player] cock into the mighty creature's ass.";
		WaitLineBreak;
		say "     For someone so large, Tiny Tim is surprisingly tight - to start, at least. A few thrusts into it, he starts to relax as he warms up to having you pounding his ass. Once his hole's adjusted to being pounded, quite possibly for the first time, his previous enthusiasm returns and he picks up the pace. The minotaur grips the jeep in his strong hands, crumpling the metal as he humps Marc with deep thrusts of his rock-hard shaft. The soldier moans enthusiastically and shares more kisses with the powerful stud atop him while running his hands over those powerful muscles of his. You can hear the steady, meaty slap of the bull's big balls against his new friend's ass.";
		say "     The three of you have a nice, long fuck session before you feel Tiny Tim's thrusting and breathing getting even heavier still. Knowing the minotaur's climax is coming, you glance over to make sure the sergeant's got everything ready and, after sharing a nod with Marc, you drive hard into the bull-man's tight ass a final time. This pushes him over the top and he bellows loudly, further crumbling the jeep's hood as he drives hard and deep into the young soldier he's been pounding. Marc cries out as well and, from the expression on his face, is probably cumming quite hard even as the minotaur's semen bloats his belly. It is only with great effort that you don't cum as well, but you know you've got to stay at it until the plan's complete.";
		WaitLineBreak;
		say "     Dropping to very slow thrusts, you remain inside the minotaur while he and Marc share some more kisses and affectionate caresses. Marc praises him on his fine work and for being such a sexy stud. Even as he eases himself off that still-twitching shaft, he promises to stay with him while he finishes with the others. With a wet pop of the cock coming free, the scent of the big guy's pheromone-laden musk grows even heavier in the air as what sounds like a gooey mess of it pours out on to the jeep's hood. Marc slides over and gives the sergeant a big thumbs-up even as shares another sloppy kiss with his beastly lover.";
		say "     'Alright, soldier. Get in there. Hop to it' Alexander's got the remaining soldiers all queued up and ready to go. Having witnessed the extended show, they're all quite aroused - though some are more embarrassed about it than others. He practically has to push the first of them forward, though it seems the poor guy's more stunned than outright resistant. As soon as he's in motion, he gets into position quickly enough under Tiny Tim. With him bent down over the jeep, you can picture his erection pressed into the gooey mess of minotaur semen that was pumped into Marc's ass just moments ago.";
		WaitLineBreak;
		say "     Between your persistent thrusting and Marc's gentle touches, Tiny Tim's shaft has kept from going too soft, leaving it dribbling and drooling cum even before getting driven into the current soldier's asshole. The moans and rutting start up again and soon you're pounding the minotaur's muscly ass again. Marc fondles those big, heavy balls of his while encouraging the big guy on. In short order, that waning trickle of seed surges back into another series of blasts, delivering his potent semen into the soldier's ass. Once filled up, Tiny Tim eases back, allowing the private to put a readied buttplug in the man's creamy hole and send him on his way.";
		say "     The remaining soldiers are steadily processed and filled in this manner. You pound away at the minotaur's ass, pumping him like an oil rig for the white gold filling his balls. Private Marc Orwell helps keep the minotaur aroused and motivated as well as helping the soldiers get on and off their ride quickly and with a minimum of wasted spunk. Sergeant Alexander keeps the whole procedure moving, seeing that there's always a ready (if not always eager) soldier to take the place of the last. Though certainly a few turn out to be quite eager for their turn, having been quite riled up by the extended orgy and heady scent of male minotaur rut filling the air. Marc's even treated to a blow job from one particular gung-ho soldier who makes sure to get Marc's number before waddling off with both his belly and ass full of spunk[if anallevel is 3]. The next one up does one better, rimming the soldier's messy hole to get the remaining minotaur semen leaking from it[end if].";
		WaitLineBreak;
		say "     Eventually, the last soldier in line is under the minotaur and you finally allow yourself to cum. Your balls are achingly overfull from the constant edging, but that only makes your release all the sweeter. Your load is a huge one, sending blast after blast of your seed into the bull stud's ass. The feel of this hot spunk pouring into his bowels is enough to set Tiny Tim off one last time. He gives a long, moaning bellow as his worn shaft pumps the last dregs of semen from his overworked testicles. But that doesn't mean the soldier gets any less than the others, if anything he ends up even more full as the minotaur won't let him go until your extended orgasm is fully complete, thus ensuring that every last drop he still has goes into him.";
		say "     Thoroughly exhausted, Tiny Tim slumps back against the crumpled, crushed and very sticky jeep. Marc cuddles up to him as the sergeant checks on his charge. The minotaur is tired, dazed, but also thoroughly pleased. 'Sore... but feel good... tired now,' the big guy mumbles, patting your face roughly with one of his big, meaty hands. Marc pats the minotaur's head and shares a final kiss with him before getting up. 'Great job, big guy. Enjoy your rest. You earned it.'";
		say "     You and Marc are given an opportunity to clean yourselves up with some damp rags inside Sgt Alexander's tent. You and the private take the opportunity to cuddle for a bit in there, but you're both too spent for any more fun. Still, it's nice to have a chance to be affectionate with one another. After quite a few kisses, the soldier gets himself dressed and, after rubbing some dirt onto his fatigues for added effect, heads back to his post as if he's just undergone a dirty and tiring task. Which it very much was, but just not in that sense.";
		NPCSexAftermath Private Marc Orwell receives "AssFuck" from Tiny Tim;
		NPCSexAftermath Tiny Tim receives "AssFuck" from Player;
	else:
		say "     Suggesting another go at topping Tiny Tim, Alexander nods and checks his queue roster. 'Yeah, the big guy's got several more pairs line up. I'm sure he'd appreciate a little help getting through them.' He goes off to prep things on his end while you go get your partner.";
		say "     Taking Private Marc Orwell from guard duty for another [']special, dangerous mission,['] the two of you head to the hitching post. Tiny Tim is happy to see you both, giving big, crushing hugs and asking if you're here to fuck again. 'That we are, big guy - if you're up for it,' the soldier responds while rubbing his hands over the minotaur's stiffening erection.";
		say "     'Me like fucking. Me like fucking you,' he adds while groping Marc's ass. With a hand on a horn, the soldier pulls Tiny Tim down for a sloppy kiss. The bull cock in your hand throbs all the harder as they lock lips. You take the opportunity to spread some lube across the big shaft.";
		WaitLineBreak;
		say "     After kissing, Marc takes position on the damaged jeep and raises his hips a little for the big minotaur. Tiny Tim grins at the sight and moves over him, planting those big hands on either side of him. And you're right there behind him to get him lined up with that waiting pucker. The soldier runs his hands over the big guy's muscly body and urges him on as that thick rod pushes into his willing hole - and you've got a front-row seat as it happens.";
		say "     As they fuck, you enjoy just watching for a little while, the close-up view of the minotaur's might cock pistoning into the gay soldier's stretched hole a really hot sight to behold. The minotaur starts a little slower for Marc out of consideration for him; but once he's ready for it, he ruts man's ass with the same zeal as he does the others. Those plump, heavy balls are soon slapping against Marc's ass as he pounds it hard, much to his smaller lover's delight.";
		WaitLineBreak;
		say "     When Alexander comes up and gives you a tap on the shoulder, you know he's got the others ready, so you stop watching and instead become an active participant. Having been lubricating your cock while masturbating to the show, you already have it ready and so move into position behind the minotaur. He stiffens a little as your manhood targets his back door, but doesn't resist. To help him relax, Marc grabs him by the horns and pulls him into another kiss. You ease yourself into Tiny Tim's asshole, sinking into the heat of the rutting minotaur with a satisfied groan.";
		say "     As he did with Private Marc Orwell, you give Tiny Tim a chance to adjust to the presence of a thrusting cock in his ass before going at him hard. You let the minotaur set a pace he's comfortable with and follow it and are pleased with how quickly he's back to his usual rapid pounding. Having had plenty of warm-up time, it's not much longer before your cock pushing against his prostate has him blow. With a mighty bellow, he blasts shot after shot of hot cum into the ecstatic soldier beneath him. His mighty fists further crumple the jeep's hood as he fills the young soldier's ass with gooey semen. Marc cries out in orgasmic response, wriggling atop the spurting shaft while hugging the big guy tightly. It's difficult to hold back, but you manage to hold on knowing there's lots more fun ahead.";
		WaitLineBreak;
		say "     Dropping to very slow thrusts, you remain inside the minotaur while he and Marc share some more kisses and affectionate caresses. Marc praises him on his fine work and for being such a sexy stud. Even as he eases himself off that still-twitching shaft, he promises to stay with him while he finishes with the others. With a wet pop of the cock coming free, the scent of the big guy's pheromone-laden musk grows even heavier in the air as what sounds like a gooey mess of it pours out on to the jeep's hood. Marc slides over and gives the sergeant a big thumbs-up even as shares another sloppy kiss with his beastly lover.";
		say "     'Alright, soldier. Get in there. Hop to it' As before, Alexander's got the remaining soldiers all queued up and ready to go. Having witnessed the extended show, they're all quite aroused - though some are more embarrassed about it than others[if lust of Tiny Tim is even]. He practically has to push the first of them forward, though it seems the poor guy's more stunned than outright resistant. As soon as he's in motion, he gets into position quickly enough under Tiny Tim. With him bent down over the jeep, you can picture his erection pressed into the gooey mess of minotaur semen that was pumped into Marc's ass just moments ago[else]. The first of them needs no further prompting, aroused into eagerness by the rutting he's just witnessed. As soon as he's bent over the jeep, Marc has the minotaur's cum-slick cock lined up and the stud's back to fucking soldiers[end if].";
		WaitLineBreak;
		say "     Between your persistent thrusting and Marc's gentle touches, Tiny Tim's shaft has kept from going too soft, leaving it dribbling and drooling cum even before getting driven into the current soldier's asshole. The moans and rutting start up again and soon you're pounding the minotaur's muscly ass again. Marc fondles those big, heavy balls of his while encouraging the big guy on. In short order, that waning trickle of seed surges back into another series of blasts, delivering his potent semen into the soldier's ass. Once filled up, Tiny Tim eases back, allowing the private to put a readied buttplug in the man's creamy hole and send him on his way.";
		say "     The remaining soldiers are steadily processed and filled in this manner. You pound away at the minotaur's ass, pumping him like an oil rig for the white gold filling his balls. Private Marc Orwell helps keep the minotaur aroused and motivated as well as helping the soldiers get on and off their ride quickly and with a minimum of wasted spunk. Sergeant Alexander keeps the whole procedure moving, seeing that there's always a ready (if not always eager) soldier to take the place of the last. Though certainly a few turn out to be quite eager for their turn, having been quite riled up by the extended orgy and heady scent of male minotaur rut filling the air";
		if a random chance of 1 in 2 succeeds:
			say ". Marc's even treated to a blow job from one particular gung-ho soldier who makes sure to get Marc's number before waddling off with both his belly and ass full of spunk[if anallevel is 3 and a random chance of 1 in 2 succeeds]. The next one up does one better, rimming the soldier's messy hole to get the remaining minotaur semen leaking from it[end if].";
		else:
			say ". One particularly difficult soldier necessitates that Marc get down under him. Sucking the soldier's cock settles him down enough to hold still and relax so the minotaur can get inside his tight ass. Once it's in and fucking though, things are back on track - not that the gay soldier stops the blow job until he's gotten a hot load to swallow down as the other soldier's ass is creamed[if a random chance of 1 in 2 succeeds]. The next one makes up for it though, offering to blow Marc instead, gulping down his seed while getting ass-fucked[end if].";
		WaitLineBreak;
		say "     Eventually, the last soldier in line is under the minotaur and you finally allow yourself to cum. Your balls are achingly overfull from the constant edging, but that only makes your release all the sweeter. Your load is a huge one, sending blast after blast of your seed into the bull stud's ass. The feel of this hot spunk pouring into his bowels is enough to set Tiny Tim off one last time. He gives a long, moaning bellow as his worn shaft pumps the last dregs of semen from his overworked testicles. But that doesn't mean the soldier gets any less than the others, if anything he ends up even more full as the minotaur won't let him go until your extended orgasm is fully complete, thus ensuring that every last drop he still has goes into him.";
		say "     Thoroughly exhausted, Tiny Tim slumps back against the crumpled, crushed and very sticky jeep. Marc cuddles up to him as the sergeant checks on his charge. The minotaur is tired, dazed, but also thoroughly pleased. '[one of]That fun... Me tired now... happy[or]Ass sticky... Is nice... Friends nice too[or]Mmm... ass warm with cum... like full soldiers[at random]...' the big guy mumbles, patting your face roughly with one of his big, meaty hands. Marc pats the minotaur's head and shares a final kiss with him before getting up. 'Great job, big guy. Enjoy your rest. You earned it.'";
		say "     You and Marc are given an opportunity to clean yourselves up with some damp rags inside Sgt Alexander's tent. You and the private take the opportunity to cuddle for a bit in there, but you're both too spent for any more fun. Still, it's nice to have a chance to be affectionate with one another. After quite a few kisses, the soldier gets himself dressed and, after rubbing some dirt onto his fatigues for added effect, heads back to his post as if he's just undergone a dirty and tiring task. Which it very much was, but just not in that sense.";
		NPCSexAftermath Tiny Tim receives "AssFuck" from Player;
	increase lust of Tiny Tim by 1;
	now lastfuck of Tiny Tim is turns - 4;
	now lastfuck of Private Marc Orwell is turns - 4;
	increase movingorwell by 1;
	now thirst of Tiny Tim is turns;
	now Libido of Player is Libido of Player / 5;
	follow the turnpass rule;


to say CampBravoFuckTTFemale:
	if thirst of Elaine is 4:[first time]
		say "     Requesting another go at topping Tiny Tim, you suggest a group of the females this time. The sergeant is a little surprised at first by this, but quickly grabs his list of candidates. 'I... hadn't considered that[if lust of Tiny Tim > 1], given how all the other times had been gay orgies[else]. I'd been thinking in terms of the men only for that method[end if], but you're right, that'd certainly help with breeding the females as well. There are some women who haven't had their round with the big guy yet, as well as some who've even been requesting a second go. I've been denying the latter to keep us going through the main collection process. A round with you helping would let us get through a bunch of them in short order. If you know someone who can take the starting spot, I can definitely get a queue ready.' He grows increasingly eager (and hard) as he talks to you, heading out to gather the female soldiers when you assure him you've got a starter already lined up.";
		say "     You head across the parade grounds to the quartermaster's tent. Elaine's got a group of male soldier's prepping for their round with the minotaur, things having again gotten hot and heated. The sight derails you momentarily as you watch the buff guys lubing each other up and practicing with their assigned toys with considerable enthusiasm. You watch for a couple of minutes before remembering the reason you came and slip quietly over to talk to Elaine. Whispering to her that a female group romp with Tiny Tim's been arranged and that you want her to take the lead spot, she replies with an enthusiastic 'Hell yes!' before addressing the soldiers. 'Alright, men. It seems you guys have been given a short reprieve. I heartily recommend you use that time to continue your training. The more you're used to it and can stretch yourselves out, the better time you'll have of it. I know this special duty is unusual, but it doesn't mean you can't enjoy the assignment.' They respond with a hearty 'Yes, ma'am!' and get back to their lustful training. With them taken care of, Elaine grabs some things and heads out with you to the hitching post.";
		WaitLineBreak;
		project Figure of TinyTim_face_icon;
		say "     An out-of-breath Sgt Alexander's there talking to Tiny Tim. It's clear the sergeant's been running all around camp, gathering up the women on his list for the upcoming event. And from the size of the group there, with a few stragglers arriving even as you and Elaine get naked, he's obviously been successful. You get another crushing hug as greeting from the minotaur before the quartermaster pops a handful of pills and steps up. 'Hello again, Tiny Tim,' the short woman says, having to stare way up at the big creature. 'Do you remember me? I'm Adam's mom. You did such a great job with all those soldiers that the girls and I thought we'd show our appreciation and give you a round with us instead. You up for it, big guy?' she says, taking the minotaur's cock in hand. Given her short stature, his erection's pointed right at her face, so she nuzzles and then licks along it. 'Is our big stud ready to breed some horny women?'";
		say "     Tiny Tim's response is bellow impressively as he grabs the small woman by both hands and lay her back across the jeep. She's already draped a towel there, making the spot a little more comfortable. The virile bull quickly thrusts into the small female, spreading her juicy cunt wide to accommodate his thick manhood. She moans in delight and wriggles atop the jeep, clearly having no problem taking the big guy despite their size difference. She grips around his sides with her arms and nuzzles at his muscular chest as he pounds into her with wet slurps and slops. It's tempting to just stay and watch the rutting, but you know you need to get into position before the minotaur blows his load in the enthusiastic woman. After lubing up, you get Elaine's attention so she can slow the minotaur's pace long enough for you to move to mount him. He stiffens a little as your manhood targets his back door, but doesn't resist. To help him relax, Elaine puts on a sexy show of playing with her own tits, captivating the bull's attention.";
		WaitLineBreak;
		say "     You ease yourself into Tiny Tim's asshole, sinking into the heat of the rutting minotaur with a satisfied groan. Giving Tiny Tim a chance to adjust to the presence of a [cock of player] cock in his ass, you wait a little before picking up speed. You let the minotaur set a pace he's comfortable with and follow it and are pleased with how quickly he's back to his usual rapid pounding. Having had plenty of warm-up time, it's not much longer before your cock pushing against his prostate has him blow. With a mighty bellow, he blasts shot after shot of hot cum into the ecstatic soldier beneath him. His mighty fists further crumple the jeep's hood as he fills the small woman's womb with gooey semen. Elaine cries out in orgasmic response, arching her back as the spurting shaft fills her to the point of bulging large with its seed. It's difficult to hold back with Tiny's hole milking your erection, but you manage to reign in your own lust, knowing there's lots more fun ahead.";
		say "     Dropping to very slow thrusts, you remain inside the minotaur while Elaine lets him play with her boobs and rub her cum-filled belly. She praises him on being such a sexy, virile stud... one with many more females to breed. She eases herself off that still-twitching shaft an inch at a time, savoring these last few moments. With a wet pop of the cock coming free, the scent of the big guy's pheromone-laden musk grows even heavier in the air as what sounds like a gooey mess of it pours out onto the messy towel. Elaine crawls across the hood so she can give the big guy a sloppy kiss while signaling the sergeant to bring in the next soldier. Having a front-row seat for the breeding bull and breathing in his heady musk while doing it, the females are all quite eager to go. Thankfully Sgt Alexander's there to maintain order so they'll all get their turn.";
		WaitLineBreak;
		say "     Ordering the other women to hang back, Alexander sends the lucky next one forward. She's a perky blond with a cute butt. You only get to see if briefly before she's under the minotaur and bent over the jeep. But from the way he thrusts into her, you can tell he appreciates that sexy ass of hers as well. Elaine takes position on the ground to your right. She's in a bit of a daze from the monstrous fucking, but seems thoroughly pleased with it as well. Her hand finds its way to the minotaur's plump balls, rubbing them as she encourages him on. She praises him for being such a fine, strong stud and lewdly urging him to knock the other girls up. The breeding bull bellows his assent and ruts the moaning female beneath him while you pound the minotaur's muscly ass again. In short order, that waning trickle of seed surges back into another series of blasts, delivering his potent semen into the soldier's womb. Once filled up, Tiny Tim eases back, allowing the quartermaster to pull the drooling cock free so she can free the position for the next female to be bred.";
		say "     The remaining soldiers are each given their turn under the minotaur stud. The women come in all shapes and sizes, providing the bull with a wide range of mates. This harem of potently bred females doesn't go far, too full and bloated to leave quite yet. They instead end up clustered around the jeep, bellies bloated with virile seed that's probably swarming their eggs right now. Some pass out while others snuggle or masturbate together. The blond one, particularly ambitious, crawls from girl to girl, eating them out for as much of the minotaur's cum as she can get. Elaine, preferring to get it from the source, takes to licking and sucking on the minotaur's cock as soldiers are being swapped out.";
		WaitLineBreak;
		say "     As the wild breeding session's nearing completion, there comes a loud interruption as Major Padgett comes storming up, pushing his way through the extra-large crowd that's gathered to watch the event. 'What's going on here? What's the meaning of this?' A cold chill runs down your spine, worried that everything might fall apart around you and you'll end up shot. Even Tiny Tim comes to a halt, though more out of confusion when you stop than actual obedience. Thankfully the sergeant is there to run up. 'It's that accelerated processing method you authorized several days ago, sir,' he says. 'You ordered me to get through the backlog and signed off on the report I sent. Didn't you read it, sir?' The Major's only briefly flustered, taking a moment to straighten his uniform and look over the orgiastic sight before him. 'Well, of course I did, soldier,' he growls as he snatches the sergeant's clip board from him, making a show of looking it over list critically.";
		say "     'I'm just upset by how sloppy you're handling this maneuver is all. I can't have all these soldiers off duty at once. Look! My secretary is out here instead of in my tent... dealing with the paperwork from this mess,' he says, pointing to the cum-hungry blond. By this point, Elaine's drained and recovered enough to be able to rise. She sidles over to the Major and runs a hand along his side. 'Don't worry about it, Major. We'll have her back to you shortly. How about I go with you and help you with whatever you need until she's back?' she says, slipping her hand into his pants to grope his ill-hidden erection. The commanding officer, mollified and distracted, is lead off by Elaine to his tent, leaving you and the others to get back to the fun. Once he's gone, you and sergeant breathe a heavy sigh of relief.";
		WaitLineBreak;
		say "     Tiny Tim's slow in restarting after the interruption, having mostly gone soft. Worn and nearly drained, it takes some extending thrusting on your part to get him up again. Thankfully the Major's secretary's willing to help take the slack in Elaine's position, sucking him until he's hard and can be reinserted into the next female to be bred. The break did help your endurance though, helping to ensure you're able to hold out until the last of them is finally fucked and filled with potent minotaur sperm. As the last moaning female is getting pounded full of minotaur cock, you finally allow yourself to cum. Your balls are achingly overfull from the constant edging, but that only makes your release all the sweeter. Your load is a huge one, sending blast after blast of your seed into the bull stud's ass. The feel of this hot spunk pouring into his bowels is enough to set Tiny Tim off one last time.";
		say "     He gives a long, moaning bellow as his worn shaft pumps the last dregs of semen from his overworked testicles. This final mate doesn't get any less than the others, finishing as bloated and full as any of the others, if not more so as the minotaur won't let her go until your extended orgasm is fully complete. Every last drop he still has goes into her womb to breed the female soldier. Thoroughly exhausted, Tiny Tim slumps back against the crumpled, crushed and very sticky jeep. The remaining females who haven't gone back to their duties already come up to cuddle with him. The minotaur is tired, dazed, but also thoroughly pleased with himself. 'Girls happy? Females bred good?' he mumbles sleepily, nuzzling and kissing them. He manhandles their tits as he gently holds his many mates. They accept the fondling from his big, meaty hands and assure him he's done a great job, telling him there'll be plenty of new minotaur calves thanks to him. He drifts off with a happy smile on his bovine face.";
		WaitLineBreak;
		say "     You retreat back to the sergeant's tent to get cleaned up and recover. Your cock and balls have a dull ache, but it's a satisfying sensation as well. You're quite thoroughly sated and the thought of all those women you helped Tiny Tim knock up at once is arousing - even if your penis is in no fit state to respond to that arousal quite yet.";
		increase thirst of Elaine by 1;
	else:
		say "     Feeling a bit of an itch in your balls, you suggest that Alexander arrange another session where you help Tiny Tim breed a bunch of females. Clearly excited at the prospect, he nods and checks his queue roster. 'There are some new female arrivals who've consented to taking a breeding turn with the big guy. Also got quite a few eager for another round with him. I'm sure he'd appreciate your help in getting through them. I'll go see who among them are off-duty.' And with that, he's off to prep things on his end.";
		say "     Heading over to the quartermaster's, you find her [one of]taking a much needed break between maintaining both the convention supplies for the base and the sexual props for the rounds with the minotaur. Telling her that you've got another breeding orgy with Tiny Tim planned gets her moving though. After making sure everything is in order, you head out together[or]organizing her supply area. With all the activity and soldiers to provide with sex toys and lube to prep for their round with Tiny Tim, she's got to keep everything in order and monitor the supply levels. Telling her you've got another breeding orgy with Tiny Tim planned, she leaves her subordinates in charge of tallying the remaining butt plugs and dildos while she heads off with you[or]in the midst of outfitting a group of male soldiers with the kit they'll soon need for their round with the minotaur. After letting her know what's up, you give her a hand to quickly prep the soldiers to the point they're warmed up enough to finish on their own. The female breeding session will buy them some extra time before they're called up, and most of them seem eager to get in extra practice until then[or]issuing some general supplies to a squad of soldiers. While you're not privy to their orders, you can tell from the talk that they'll be on some sort of scouting or patrol mission. Once they're gone, you let her know you've got another breeding orgy with Tiny Tim planned and you head out together[as decreasingly likely outcomes].";
		WaitLineBreak;
		project Figure of TinyTim_face_icon;
		say "     While Alexander finishes organizing the women for this round, you and Elaine head over to the hitching post. Tiny Tim is happy to see you both, giving big, crushing hugs and asking if you're here to fuck again. 'There's more female soldiers here ready and eager to do their duty and let you breed them - if you're up for it, stud,' she says, stroking the bull's swelling member. To get him ready, she guides his shaft to her mouth and starts licking and sucking on him. He moans happily and rubs the soldier's head, pushing to take more of his shaft. Getting the nod from the sergeant, you prompt the pair to separate long enough for Elaine to take her spot on the jeep's hood. With her legs spread and juicy vagina on display, Tiny Tim wastes no time in moving over her and thrusting his large shaft into the small woman. She guides one of his meaty hands to her breasts, letting him grope her with a big grin on his bovine face as he pounds into her.";
		say "     After giving them time together (and taking in the sexy show as they do), you move into position behind the mighty bull-man. He grunts a little as he feels your lubed-up cock prodding at his tailhole. Elaine pulls him down for a big, sloppy kiss, allowing you to ease yourself into the distracted minotaur's asshole. And while it's as hot and tight as ever, you're able to slip into its snug embrace more easily, his hole becoming more accustomed to being penetrated by you. You let the minotaur set a pace he's comfortable with once and follow it, and are pleased with how quickly he's back to his usual rapid pounding. Having had plenty of warm-up time, it's not much longer before your cock pushing against his prostate has him blow. With a mighty bellow, he blasts shot after shot of hot cum into the ecstatic soldier beneath him. From the way his anal muscles and glutes are squeezing down around you, you know he's pumping the female soldier's belly full of his virile seed.";
		WaitLineBreak;
		say "     Elaine cries out in orgasmic response, wriggling atop the spurting shaft while caressing his muscular chest. It's difficult to hold back with Tiny's hole milking your erection, but you manage to reign in your own lust, knowing there's lots more fun ahead. Dropping to very slow thrusts, you remain inside the minotaur while Elaine lets him continue to play with her boobs and rub her cum-filled belly a little longer. She praises him on being such a sexy, virile stud... one with many more females to breed. She eases herself off that still-twitching shaft an inch at a time, savoring these last few moments. With a wet pop of the cock coming free, the scent of the big guy's pheromone-laden musk grows even heavier in the air as what sounds like a gooey mess of it pours out onto the messy towel. Elaine crawls across the hood so she can give the big guy a sloppy kiss while signaling the sergeant to bring in the next soldier.";
		say "     As before, the intensity of the show and of the minotaur's virile musk has gotten the waiting soldiers all very eager for their turn. Sgt Alexander sends the first of them in with a playful swat on her rear, prompting a [one of]happy giggle[or]teasing pose[or]playful swagger[at random] as she heads up to take the vacated spot on the jeep. And once she's there, the quartermaster is ready to help guide the minotaur's sloppy cock into the soldier's waiting cunt. Elaine, having again taken a position on the ground at your side, gropes and fondles the minotaur's pendulous balls. She's in a bit of a daze from the monstrous fucking, but seems thoroughly pleased with it as well. She rubs those heavy orbs as she encourages him on, praising him for being such a fine, strong stud and lewdly urging him to knock the other girls up. The breeding bull bellows his assent and ruts the moaning female beneath him while you pound the minotaur's muscly ass again.";
		WaitLineBreak;
		say "     In short order, that waning trickle of seed surges back into another series of blasts, delivering his potent semen into the soldier's womb. Once filled up, Tiny Tim eases back, allowing the quartermaster to pull the drooling cock free so she can free the position for the next female to be bred. The remaining soldiers are each given their turn under the minotaur stud. The women come in all shapes and sizes, providing the bull with a wide range of mates. This harem of potently bred females doesn't go far, too full and bloated to leave quite yet. They instead end up clustered around the jeep, bellies bloated with virile seed that's probably swarming their eggs right now. Some pass out while others snuggle or masturbate together[one of]. You've got a good view of a nearby pair busily eating each other out, their lapping tongues chasing after every drop of minotaur cum they can gather from the other's drooling cunt[or]. A nearby girl makes a show of fingering herself enthusiastically, occasionally swapping hands so she can lick the messy cum and cunt juices from her fingers[at random]. Elaine, preferring to get it from the source, takes to licking and sucking on the minotaur's cock while breeding partners are being swapped out.";
		say "     As the wild breeding session's nearing completion, you notice that the sergeant's no longer able to hold back his arousal[one of]. He's busily getting a blow job from one of the many stuffed females[or]. He gets one of the many stuffed females bent back over the hood, taking her up the ass in time to the thrusts of the minotaur beside him[or]. Elaine gives him an enthusiastic titty-fuck whenever she's not sucking the minotaur's cock between swaps Alexander's organizing[or]. He jerks himself off messily across the bloated bellies of two hot females making out together[or]. He kneels between Elaine's spread thighs and drives his cock into her gooey cunt, working to add his seed to the sticky mess leaking from her overstuffed cunny[at random]. Finding yourself getting too close to popping, you have to pull your eyes away and slow the pace for a little while to ensure you can hold out until the end.";
		WaitLineBreak;
		say "     As the last moaning female is getting pounded full of minotaur cock, you finally allow yourself to cum. Your balls are achingly overfull from the constant edging, but that only makes your release all the sweeter. Your load is a huge one, sending blast after blast of your seed into the bull stud's ass. The feel of this hot spunk pouring into his bowels is enough to set Tiny Tim off one last time. He gives a long, moaning bellow as his worn shaft pumps the last dregs of semen from his overworked testicles. This final mate doesn't get any less than the others, finishing as bloated and full as any of the others, if not more so as the minotaur won't let her go until your extended orgasm is fully complete. Every last drop he still has goes into her womb to breed the last of the female soldiers.";
		say "     Thoroughly exhausted, Tiny Tim slumps back against the crumpled, crushed and very sticky jeep. The remaining females who haven't gone back to their duties already come up to cuddle with him. The minotaur is tired, dazed, but also thoroughly pleased with himself. 'Girls happy? Females bred good?' he mumbles sleepily, nuzzling and kissing them. He manhandles their tits as he gently holds his many mates. They accept the fondling from his big, meaty hands and assure him he's done a great job, telling him there'll be plenty of new minotaur calves thanks to him. He drifts off with a happy smile on his bovine face.";
		WaitLineBreak;
		say "     You retreat back to the sergeant's tent with Elaine to get cleaned up and recover. The two of you take the opportunity to cuddle for a bit in there, but you're both too spent for any more fun than that. Still, it's nice for her to get a break from the near-constant work of her other duties, so she enjoys it while she can. After quite a few kisses and lots of playing with her tits, she finally disentangles herself from you so she can get back to work. At least Tiny Tim'll be worn out for a while, giving her a bit of peace before having to deal with coaching more squeamish guys through their prep before their turn with him.";
	NPCSexAftermath Elaine receives "PussyFuck" from Tiny Tim;
	NPCSexAftermath Tiny Tim receives "AssFuck" from Player;
	increase lust of Tiny Tim by 1;
	now lastfuck of Tiny Tim is turns - 4;
	now lastfuck of Elaine is turns - 4;
	now thirst of Tiny Tim is turns;
	now Libido of Player is Libido of Player / 5;
	follow the turnpass rule;


to say AlexanderFucking:
	if Player is male or Cunt Count of Player is 0:
		say "     He shakes his head as you proposition him. 'Sorry, sonny - this man's only here for the ladies. Why don't you do a round at the post, if you're into that stuff...'";
	else:
		if (lastfuck of Sergeant Alexander - turns < 12):
			say "     As you approach Alexander, he immediately sees the lust-filled twinkle in your eyes. He gives you an apologetic shrug, saying 'Sorry, I got duties to perform. Can't fuck around all day, even though I'd like to...' He gives you a quick kiss, then goes to grab some more food for the minotaur.";
		else:
			say "     'How could I say no to such an offer?' he replies huskily, then leads you to the side and around a tent, out of sight from the minotaur. He says 'Wouldn't want Tiny Tim over there to get any ideas.' with a nod back towards the parade ground. Then he pulls you close to himself, running large hands over your body and giving you a hot and heavy kiss. Accompanied by lustful groping at your curves, Sergeant Alexander peels you out of your clothing, then lifts you up on a stack of crates roughly hip-height for him. Pulling off his shirt and throwing it aside, he then opens his zipper, freeing a nicely thick piece of hard man-meat. After moistening its shaft a bit with his spit he steps up spreads your legs wide. As he rubs your sensitive folds softly with the tip of his cock, you moan lustfully, then gasp as he pushes forward, plunging his shaft into your body. The girth of his member rubbing against your inner walls just feels amazing and the man really knows what he's doing, giving you a deep and very satisfying shafting.";
			say "     He's got good stamina, so your intense coupling takes quite a while before the man's grunts and moans rise to a lust-filled crescendo and he buries his cock all the way in your cunt with one last deep thrust. You can feel his member pulsing as blast after blast of cum paint your insides, giving you a delightfully full feeling. The large man leans over you to make out some more with his shaft still inside your body, depositing spurts of fertile seed as he wrangles your tongue with his. After depositing his full load inside you, he raises his upper body again and gives your naked form an appreciative look, accompanied by a slight twitch of his cock in your pussy. 'You're an awesome fuck, baby. Let's go for round two.' He starts to pump his cock in and out of you again, but before he can get really into it, a deep-voiced bellow of 'I'm hungry.' sounds from the parade ground. With a sigh, Sergeant Alexander pulls out of your pussy and packs his manhood away with some difficulty because of its erect state. 'Sorry to cut this short, but duty calls...' he says, giving you a quick kiss and then hurries back to the minotaur with a crate full of food.";
			NPCSexAftermath Player receives "PussyFuck" from Sergeant Alexander;

Table of GameCharacterIDs (continued)
object	name
Tiny Tim	"Tiny Tim"

Tiny Tim is a man.
ScaleValue of Tiny Tim is 4. [human sized]
Body Weight of Tiny Tim is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Tiny Tim is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Tiny Tim is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Tiny Tim is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Tiny Tim is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Tiny Tim is 7. [length in inches]
Breast Size of Tiny Tim is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Tiny Tim is 2. [count of nipples]
Asshole Depth of Tiny Tim is 12. [inches deep for anal fucking]
Asshole Tightness of Tiny Tim is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Tiny Tim is 1. [number of cocks]
Cock Girth of Tiny Tim is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Tiny Tim is 18. [length in inches]
Ball Count of Tiny Tim is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Tiny Tim is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Tiny Tim is 0. [number of cunts]
Cunt Depth of Tiny Tim is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Tiny Tim is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Tiny Tim is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Tiny Tim is false.
PlayerRomanced of Tiny Tim is false.
PlayerFriended of Tiny Tim is false.
PlayerControlled of Tiny Tim is false.
PlayerFucked of Tiny Tim is false.
OralVirgin of Tiny Tim is false.
Virgin of Tiny Tim is true.
AnalVirgin of Tiny Tim is false.
PenileVirgin of Tiny Tim is false.
SexuallyExperienced of Tiny Tim is true.
TwistedCapacity of Tiny Tim is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Tiny Tim is false. [steriles can't knock people up]
MainInfection of Tiny Tim is "Minotaur".
Description of Tiny Tim is "     The large minotaur affectionately called 'Tiny Tim' by the soldiers in the camp currently sits on the ground beside the hitching post used in couplings with him. He's a magnificently well-built creature, at least nine feet tall and with large curved horns adoring his bull-like head. His otherwise human upper body shows thick, ropey muscles under bronzed skin. Beginning at the hip downwards, he has dark brown shaggy fur covering strong two-jointed legs that end in hooves. Between his legs dangles a long human-like cock and two large balls. The minotaur almost constantly half-hard, his manhood springing up instantly to its full one and a half feet of erect length every time the creature sees or smells a sexual partner."
Tiny Tim is in Parade Ground.
The icon of Tiny Tim is Figure of TinyTim_icon.
Conversation of Tiny Tim is { "Moo." }.
thirst of Tiny Tim is usually 255.

instead of conversing Tiny Tim:
	project Figure of TinyTim_face_icon;
	if lust of Tiny Tim is 0:
		say "[one of]'Alexander is my friend.'[or]'I'm hungry.'[or]'I'm horny. Want to fuck.'[or]'Are you my friend?'[or]'You smell nice.'[or]'Humans are tight. Good.'[or]'Nice place here.'[or]'I like soldiers.'[at random]";
	else:
		say "[one of]'You fun. Friend!' he says, giving you a crushing hug.[or]'Alexander is my friend.'[or]'I'm hungry.'[or]'[if thirst of Tiny Tim - turns < 4]Still tired. Good fun[else]I'm horny. Want to fuck[end if].'[or]'You smell nice.'[or]'Humans are tight. Good.'[or]'Nice place here.'[or]'I like soldiers.'[at random]";

instead of sniffing Tiny Tim:
	project Figure of TinyTim_face_icon;
	say "     The minotaur has a heavy musk with an undertone of cum around him. It must be laden with pheromones, as you're getting quite horny just from taking it in.";

Instead of fucking Tiny Tim:
	say "     As you move purposefully towards the creature, Sergeant Alexander steps in your way. 'Now just a minute there. I'm responsible for caring for our horny beast here, so if you want to do or watch anything around him talk with me.'";

[ Libido of Tiny Tim ]
[ # of times fucked by TT ]

[ lust of Tiny Tim ]
[ # of times fucked TT ]

[ thirst of Tiny Tim ]
[ last turn when TT got fucked ]


Camp Bravo ends here.
