Version 1 of Ranae by Kurainyx begins here.
[ Version 1.0 - Created Ranae - Kurainyx ]

"Adds a female frog NPC to Flexible Survival"

[  Hunger of Ranae                                         ]
[  0: Never met                                              ]
[  1: Met Ranae but did not give her food and water        ]
[  2: Gave Ranae one round of food and water               ]
[  3: Gave Ranae two rounds of food and water              ]
[  4: Gave Ranae three rounds of food and water            ]
[  5: Found black dress                                      ]
[  6: Gave Ranae black dress                               ]
[  7: Gave Ranae four rounds of food and water             ]
[  8: Gave Ranae one round of chips and soda               ]
[  9: Ranae moves into Abbey                               ]

Table of GameCharacterIDs (continued)
object	name
Ranae	"Ranae"

Table of GameEventIDs (continued)
Object	Name
Starving Frog	"Starving Frog"
Rundown Boutique	"Rundown Boutique"

Ranae is a woman.
[physical details as of game start]
[size numbers not properly adjusted]
ScaleValue of Ranae is 3. [human sized]
Cocks of Ranae is 0. [no cock]
Cock Length of Ranae is 0. [no cock length]
Cock Width of Ranae is 0. [no ball size]
Testes of Ranae is 0. [no balls]
Cunts of Ranae is 1. [1 pussy]
Cunt Length of Ranae is 7.
Cunt Width of Ranae is 2.
Breasts of Ranae is 2. [2 nipples]
Breast Size of Ranae is 3. [C cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Ranae is false. [can not take oversized members without pain]
Sterile of Ranae is true.
PlayerMet of Ranae is false.
PlayerRomanced of Ranae is false.
PlayerFriended of Ranae is false.
PlayerControlled of Ranae is false.
PlayerFucked of Ranae is false.
OralVirgin of Ranae is true.
Virgin of Ranae is true.
AnalVirgin of Ranae is true.
PenileVirgin of Ranae is true.
SexuallyExperienced of Ranae is false.
[MainInfection of Ranae is "".]


Section 1 - Events

Starving Frog is a situation.
The sarea of Starving Frog is "Mall".
Rundown Boutique is a situation.
The sarea of Rundown Boutique is "Outside".
Rundown Boutique is inactive.

when play begins:
	add Starving Frog to badspots of girl;
	add Starving Frog to badspots of furry;

Instead of resolving a Starving Frog:
	now hunger of Ranae is 1;		[Met Ranae]
	say "     While wandering through the sewers, you hear the splashing of water and someone softly mumbling coming down from one of the passageways. Creeping down the tunnel, you round the corner and spot a frog woman digging through a flooded hole in the wall. She looks rather thin, and her skin is a dull green. 'Come on, come on...' she says to herself as she continues to search the hole. After a few moments, she withdraws her arms from the crevice with a weary sigh. 'Nothing...' The female amphibian moves to leave, but she freezes when she happens to turn in your direction and spots you. With a startled yelp, she hastily backpedals away from you.";
	if bodyname of player is "Human" and player is pure:
		say "     However, she soon stops her retreat when she gets a good look at you. 'W-wait, you're still human? Does this mean that you're not going to attack me?' ";
	else:
		say "     'Stay back!' she cries, her eyes wide with fear. ";
	say "You quickly explain that you are merely exploring and that you mean her no harm. Eventually, after a bit more coaxing, the frog calms down and slowly walks toward you. 'Sorry about that,' she apologizes. 'Just can't be too careful with all of the craziness going on.' When you ask her what she was doing earlier, she replies, 'I was trying to find some food and clean water, but... um... I'm not exactly doing well. Oh, um, my name is Ranae, by the way.'";
	say "     As you introduce yourself, you're able to look at her a bit closer. She was not kidding about her miserable search for supplies. It looks like she hasn't been eating well, if at all, for a few days. Her green-speckled skin is drawn tight across her body, the colors muted, and her skin lacks the shine of most amphibians. Her legs are thin and stringy, and her dirty clothes hang loosely on her frame. The frog coughs to draw your attention back. 'Look, um, you seem to be doing alright with the whole surviving thing... a lot better than I am... It's just that, I'm really in a bad spot, and I would really appreciate it if you could spare me some food and water.'";
	if carried of food > 0 and carried of water bottle > 0:
		say "     [bold type]Do you donate some food and water to Ranae?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give some food and water to the frog.";
		say "     ([link]N[as]n[end link]) - Don't give the woman any supplies.";
		if player consents:
			LineBreak;
			say "     Ranae's eyes grow wide as you dig out a bottle of water and a package of food from your pack and hold them out to her. She moves closer, her gaze locked on the precious supplies, but when her hands reach for the rations, she hesitates and looks back up at you. You give her a smile and a nod, and the frog squeals in delight as she takes your gifts. 'Oh my god! Finally, water! I never thought that I'd miss clean water!' she cries before popping the cap off of the bottle and begin guzzling down the life-giving liquid. The amphibian drains the entire bottle in a matter of moments, and she promptly rips into the food right afterwards. The entire time, you just awkwardly stand there, watching as Ranae gorges herself, her loud chomping echoing through the sewer. It doesn't take long for her to finish devouring her meal, and you can already see that her belly is no longer concaved. The frog licks her fingers to get the last crumbs, only to freeze when she glances in your direction, and her face flushes red when she realizes that you're still here.";
			say "     'Um, excuse me?' Ranae sheepishly offers, to which you merely wave off with a smile. 'I really can't thank you enough for your kindness. I'm afraid that I don't have anything to offer you in return... Oh, wait. I know! Could you please follow me?' You oblige Ranae and let her lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in a dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I know that it doesn't come close to repaying you, but if you ever need a place to rest or someone to talk to, I'll be here.'";
			decrease carried of food by 1;
			decrease carried of water bottle by 1;
			now hunger of Ranae is 2;		[Gave Ranae one round of food and water]
			now Resolution of Starving Frog is 2;	[Gave supplies to Ranae]
		else:
			LineBreak;
			say "     When you tell Ranae that you aren't able to spare any supplies, her shoulders droop in dejection, and she listlessly gazes down at the ground. 'I... I understand... Thanks for at least listening... I guess...' An awkward silence passes between the two of you. Eventually, Ranae meekly asks, 'Um, do you maybe want to see where I live? You know... just in case...' Although she doesn't finish her sentence, it's obvious that she's clinging to the hope that you'll help her out later. You let the frog lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in an dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I'll be here if you ever need a place to rest or someone to talk to... or help me out...' She adds that last part in a whisper that you barely hear it.";
			now Resolution of Starving Frog is 1;	[Did not give supplies to Ranae]
	else:
		WaitLineBreak;
		say "     When you tell Ranae that you aren't able to spare any supplies, her shoulders droop in dejection, and she listlessly gazes down at the ground. 'I... I understand... Thanks for at least listening... I guess...' An awkward silence passes between the two of you. Eventually, Ranae meekly asks, 'Um, do you maybe want to see where I live? You know... just in case...' Although she doesn't finish her sentence, it's obvious that she's clinging to the hope that you'll help her out later. You let the frog lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in an dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I'll be here if you ever need a place to rest or someone to talk to... or help me out...' She adds that last part in a whisper that you barely hear it.";
		now Resolution of Starving Frog is 1;	[Did not give supplies to Ranae]
	now Starving Frog is resolved;
	now Froggy Hideout is known;
	move Ranae to Froggy Hideout;
	move player to Froggy Hideout;

Instead of resolving a Rundown Boutique:
	say "     During your search for supplies, you come to a small shop in the middle of a quiet street. Looking through the display window, you note that the place used to be a clothes boutique for women, judging by the number of dresses that are littering the floor. Seeing that nobody seems to be occupying the building, you decide to go in and look around for supplies. Digging through the wreckage, it soon becomes obvious that a number of people had been here before you since you find nothing of use. All of the clothes that you inspect are either covered in cum or damaged, which is a shame because many of the dresses would've looked beautiful if they had been kept in pristine condition. In the corner, you see a doorway leading to the backroom, as well as a pair of female mannequins that someone had jokingly set up so that they were touching each other's breasts.";
	say "     Entering the backroom, you find that it's the same story as the front when you don't turn up anything useful. Besides a bunch of empty boxes, the only thing of note are several tall lockers along the wall, presumably for the former employees. All but one had been plundered, and that remaining locker is securely shut by a built-in lock that could only be unlocked by a key. Just as you turn around to give up your search, you lose your balance when you trip on a small box. You flail about and manage to keep yourself from falling, but not before you hit some boxes. As you curse your clumsiness, you pause when you spot a key that had been hidden under the box pile you had just knocked over. Figuring that it was at least worth a try, you pick up the key and use it on the locker. To your surprise, it actually works, and the locker opens to reveal a brown paper bag and a black dress hanging on a hook. Hardly believing your luck, you first look into the paper bag and find a bag of chips, a soda can, and a bottle of water packed inside.";
	increase carried of chips by 1;
	increase carried of soda by 1;
	increase carried of water bottle by 1;
	say "     [bold type]You gained a bag of chips, one soda, and a bottle of water[roman type]";
	WaitLineBreak;
	say "     With your pack filled with new supplies, you go on to inspect the dress that's still hanging in the locker. Carefully pulling it out, you find that it is a sleek one piece dress, and most importantly, there's not even a scratch on it. Unfortunately, a dress such as this would not be practical for you[if scalevalue of player < 3], given how you're too small for it[else if scalevalue of player > 3], given how you're too large for it[end if]. However, you recall how Ranae has been looking for some new clothes, and this dress seems to be the perfect size for her. Safely stowing the garment away, you exit the boutique and make a note to visit the frog woman soon with your gift.";
	now hunger of Ranae is 5;		[Found black dress]
	now Rundown Boutique is resolved;


Section 2 - Froggy Hideout

Table of GameRoomIDs (continued)
Object	Name
Froggy Hideout	"Froggy Hideout"

Froggy Hideout is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Froggy Hideout is "     You are in Ranae's tiny home in the sewers. There's just enough light for you to make out the frog woman herself as she sits on a few pillows and a ragged blanket, all while looking up at you with an expectant gaze.".

instead of navigating Froggy Hideout:
	say "[NavCheck Froggy Hideout]";
	if NavCheckReturn is false, stop the action;
	move player to Froggy Hideout;
	if hunger of Ranae is 1:
		say "     'Oh, hey there[if player is not defaultnamed], [name of player][end if],' Ranae greets when you squeeze into her tiny home. The frog gives you a smile, but it's a weak one, and it quickly disappears after a gloomy sigh. 'I... I really hate to be a bother, but things haven't improved since the last time I saw you. I'm still barely scraping by, and it would mean so much if you could spare me some food and water... I mean, if you had any... or wanted to...'";
	else if hunger of Ranae is 2:
		say "     Ranae is sitting quietly on one of the few pillows that decorate her hovel, a despondent frown marring her face. However, as soon as you enter the hole, she smiles widely and quickly gets up to greet you with a hug. 'Hey there[if player is not defaultnamed], [name of player][end if]! Did you come here just to visit me, or is there maybe, um, some other reason you're here?' she asks. Despite staring at you with big, hopeful eyes, you notice her gaze constantly flicks toward your pack. Red floods Ranae's cheeks when she realizes you're looking at her with both skepticism and amusement, and she hastily apologizes, 'S-sorry. I really am glad to see you. It's just that-' She's interrupted when her stomach rumbles, and you can't help but chuckle in amusement as the blushing frog turns more red than green.";
	else if hunger of Ranae is 4:
		say "     'Hey there[if player is not defaultnamed], [name of player][end if],' Ranae greets when you squeeze into her tiny home. 'You've been a big help in getting me back on my feet, and I'm actually managing to do alright in getting my own supplies.' She glances down at the tattered rags that used to be her clothes. 'I just wish that I could find some better clothes. I'm getting tired of wearing these dirty things.' As the frog woman tells you of her clothing plight, you make a note to keep an eye out for any shops or [bold type]boutiques[roman type] that might have something suitable for her.";
	else if hunger of Ranae is 5:
		say "     When you step into Ranae's home, the frog woman is quick to give you a hug. 'It's always so good to see you[if player is not defaultnamed], [name of player][end if]. How are you?' As the green lady backs away from the hug, you see that she's no longer wearing anything. Noticing your stare, Ranae blushes and folds one arm across her chest to cover her breasts while the other moves down to block her cunt. 'Um, yeah. Sorry about this. My clothes finally gave out a little while ago. I know that going without clothes is sort of the norm in all of this craziness, but it just doesn't feel right to walk around nude. I really hope that I find something to wear soon.'";
		say "     In response to Ranae's plight, you pull out the black dress that you had found at the boutique and present it to the naked frog, whose eyes grow wide at the prize. 'Is... is that really for me?' she asks, unable to stop staring at the dress. You nod and let the amphibian slowly take it from you. 'This... It's beautiful...' Ranae says, gingerly holding the garment up and feeling the silky material. 'Thank you...' Unable to contain her excitement any longer, she squeals in delight and quickly slips into the dress. The low cut dress is clearly made to show off the wearer's body, with only two narrow strips holding the dress on Ranae's shoulders to prominently display both her arms and the top of her breasts. The fabric clings close to her skin, showing hints of her lithe figure, but given her bodacious rear, the fabric actually accentuates the rounded curves of her ass. Like her arms, her legs are left open to be shown off to the world as the hemline of the dress stops right at her knees. Although not the most practical clothing for the city's current situation, Ranae is undeniably ecstatic about her new dress, not to mention looking so much more sexier.";
		say "     'It's absolutely perfect,' Ranae says, slowly twirling around to get a look at the new her. 'I still can't believe you actually got this just for me.' Eventually, she stops her one woman fashion show and walks over to you with a mischievous smirk. Playfully scratching the underside of your chin with a finger, she teases, 'Careful now. If I didn't know any better, I'd think that you're out to spoil me.'";
		now hunger of Ranae is 6;		[Gave dress to Ranae]


Section 3 - Ranae

The description of Ranae is "[RanaeDesc]".
The conversation of Ranae is { "Ribbit" }.
The scent of the Ranae is "[RanaeScent]".

to say RanaeDesc:
	say "     Ranae is a pretty-looking frog woman. ";
	if hunger of Ranae is 0:
		say "However, she is also unhealthily thin, and is in dire need of some food and water. ";
	else:
		say "She has a lithe build with a modest pair of breasts on her chest. The only exception of her pert figure is her ass. While not the largest, the amphibian female's butt is still a very much respectable size, and the perfectly round figure more than made up for any size concerns. ";
	if hunger of Ranae < 5:
		say "The clothes that she is wearing are little better than dirty rags, and they look like they're going to fall apart at any moment.";
	else:
		say "She still wears the black dress that you found for her. The low cut dress is clearly made to show off the wearer's body, with only two narrow strips holding the dress on Ranae's shoulders to prominently display both her arms and the top of her breasts. The fabric stuck close to her skin, showing hints of her lithe figure, but given her bodacious rear, the fabric actually accentuated the rounded curves of her ass. The hemline ended right above her knees. Before, Ranae had a certain charm, but now, she is downright gorgeous.";

to say RanaeScent:
	say "     Ranae has a faint scent that reminds you of lakes.";

Instead of conversing the Ranae:
	say "     'Hello there[if player is not defaultnamed], [name of player][end if],' Ranae says as you approach her.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Check up on her";
	now sortorder entry is 1;
	now description entry is "See how Ranae is doing and ask if she needs anything";
	[]
	if hunger of Ranae < 4 or hunger of Ranae is 6:
		choose a blank row in table of fucking options;
		now title entry is "Give Ranae supplies";
		now sortorder entry is 2;
		now description entry is "Donate food and water to the hungry frog";
	[]
	if hunger of Ranae > 6 and hunger of Ranae < 9:
		choose a blank row in table of fucking options;
		now title entry is "Give Ranae junk food";
		now sortorder entry is 3;
		now description entry is "Gift some chips and soda to the hungry frog";
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
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Check up on her":
					say "[RanaeCheckUp]";
				if nam is "Give Ranae supplies":
					say "[RanaeSupplies]";
				if nam is "Give Ranae junk food":
					say "[RanaeJunkFood]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the frog, shaking your head slightly. Ranae pouts a bit, but she lets you be.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RanaeCheckUp:
	if hunger of Ranae is 0:
		say "     Ranae gives you a friendly, albeit weak, smile, but it dissolves into a frown. 'I'm, um, still not doing well, and I could really use some food and water... if you feel like helping me, that is...'";
	else if hunger of Ranae < 4:
		say "     'I'm feeling better, thanks to you,' Ranae says with a smile. 'I still could use some more food and water. If you can't though, I understand.'";
	else if hunger of Ranae < 5:
		say "     'I'm doing pretty good,' Ranae says in a cheerful tone. 'I'm even managing to do some of my own scavenging. I've been trying to get some new clothes because these ones I'm wearing feel like they're going to rip soon.";
	else if hunger of Ranae < 7:
		say "     'I feel great, thanks to this,' Ranae says as she runs a hand through her dress. 'As for food and water, I'm doing alright, but with how you keep ginving me stuff, who am I to refuse your generosity?'";
	else if hunger of Ranae < 9:
		say "     'Things are going just great,' Ranae says. 'It will be even better when you bring me the chips and soda that I asked for.'";
	else:
		say "     'Did you bring me anything?' Ranae asks.";

to say RanaeSupplies:
	if carried of food > 0 and carried of water bottle > 0:
		if hunger of Ranae is 2:
			say "     A wide smile graces Ranae's face when you take out another helping of water and food and hold them out to her. Again, she looks up at you, silently asking your permission, and after you give her a nod, she gleefully accepts your offerings. 'Thank you, thank you, thank you!' she exclaims before tearing into the supplies. Just like before, Ranae's ravenous hunger makes her forgo her decency and table manners, but despite her loud, sloppy eating, you find the act oddly endearing and cute. Unsurprisingly, Ranae finishes her meal in a matter of moments, and she sighs in contentment, only to make an embarrassed meep as she turns to you with her face flushed red and a nervous chuckle. 'S-sorry... again...' she apologizes. 'I think I'll be less messy the next time since I'm not starving anymore. Er, n-not that I'm implying that I expect you to help me again... although I certainly would not object if you did.'";
			now hunger of Ranae is 3;		[Gave Ranae two rounds of food and water]
		else if hunger of Ranae is 3:
			say "     Ranae's attention immediately focuses on the food and water you pull out of your pack, and this time, she doesn't hesitate to take the offering when you hold it out to her. As usual, she chugs down the water at a frightening rate, however, this time, she stop when there is about a third of the water left before she screws the cap back on. She does the same with the food, quickly gorging herself but leaving a portion of it for later. 'Thank you so much for everything. I'm feeling a lot better,' Ranae comments as she pats her filled stomach. Even without her mentioning it, the contrast between now and when you first met the frog lady is as clear as day and night. Her now vibrant green skin is looking healthily moist, giving it a faint sheen. No longer being just skin and bones, Ranae has quite the lithe build with a modest pair of breasts on her chest. The only exception of her pert figure is her ass. While not the largest, the amphibian female's butt was still a very much respectable size, and the perfectly round figure more than made up for any size concerns.";
			say "     Ranae clears her throat, breaking your stare of her bodacious butt. 'S-seems that you like a certain part of me,' she remarks, along with a giggle tinged with both embarrassment and delight. She brings her hands to her boobs and then slowly drags them through her body, going down her sides and then circling her curvaceous rear. 'It's a good thing that I'm feeling stronger now because I think I know the perfect way I can repay you for your kindness.' She ends her offer with a smoldering gaze, however, after a few moments, her face grows red as she averts her gaze. 'Th-that is, if you want to, of course.'";
			now hunger of Ranae is 4;		[Gave Ranae three rounds of food and water]
			now Rundown Boutique is active;		[Event to get dress for Ranae]
		else if hunger of Ranae is 6:
			say "     Ranae giggles as you present her with another round of supplies. 'You know, I would've been fine with trying to find my own supplies, but you just keep giving them to me. How can I say no to someone who just wants to keep serving me?' The frog woman takes your offering, quickly stashing them away in the corner, before giving you a nod of approval. 'Tell you what: if you really are intent on serving me, find me some junk food, like some [bold type]chips and soda[roman type]. The stuff you've been giving me is alright and all, but they're also getting boring.'";
			now hunger of Ranae is 7;		[Gave Ranae four rounds of food and water]
		else:
			say "     Error encountered. Please report this bug on the Discord channel.";
		decrease carried of food by 1;
		decrease carried of water bottle by 1;
	else:
		say "     You don't have any food and/or water to give to Ranae.";

to say RanaeJunkFood:
	if carried of chips > 0 and carried of soda > 0:
		if hunger of Ranae is 7:
			say "     When you hold out your newest offering, Ranae eagerly takes them from you with a grin. She opens the chips first, but her grin shrinks slightly when she peers inside. 'Aww. Half of the chips in here are crushed. Still, I suppose given the circumstances, I cannot fault you for this.' She picks out an unbroken chip and eats it, giving a hum of satisfaction as she savors the salty treat. She eats a few more chips before setting the bag aside and then move on to the soda. Opening the can, she takes a sip and nods in approval. 'At least this soda is still fizzy. Good work. I could use some more though. I know that too much junk food is not good for you, but after everything I went through, I deserve to indulge myself a bit.'";
			now hunger of Ranae is 8;		[Gave Ranae one round of chips and soda]
		else if hunger of Ranae is 8:
			say "     You barely take out more chips and soda from your pack before Ranae snatches them from you and moves to stash them in the corner. However, she pauses when she looks over the supplies that had been accumulating there. 'You know, this place is getting a bit cramped, and I'm going to run out of space if you keep bringing me stuff. I need someplace bigger and better.' The abbey that you have been using as your base of operations quickly comes to mind, and when you mention it to the frog, her eyes widen in surprise. 'I know that place. You actually have that whole building to yourself?' Before you could tell Ranae more about the abbey, she shoves a few pillows into your arms. 'Come on. I can't wait to see my new home. A place as grand as that will be perfect for me!' Despite having to carry all of Ranae's belongings, it was hardly a burden since all she was bringing was a few pillows and her supplies, most of which were actually gifts from you. Thankfully, the journey back to the abbey went without a hitch. ";
			if number of booked people + number of bunkered people > 0:
				say "As the two of you enter the abbey, Ranae pauses when she sees one of the other denizens that live with you. 'Really? There's others here.' Ranae lets out an exasperated sigh as she looks around the area. 'At least it's better than that hole in the wall I was in.'";
			now hunger of Ranae is 9;		[Ranae moved to Abbey]
			now Froggy Hideout is unknown;
			move player to Sitting Area;
			move Ranae to Sitting Area;
		else:
			say "     Error encountered. Please report this bug on the Discord channel.";
		decrease carried of chips by 1;
		decrease carried of soda by 1;
	else:
		say "     You don't have any chips and/or soda to give to Ranae.";

instead of fucking the Ranae:
	if (lastfuck of Ranae - turns < 6): [Had sex in the last 18 hours = 6 turns]
		say "     Sorry, but I'm still a bit tired from the last time,' Ranae apologizes. 'Maybe a bit later.'";
	else:
		say "     Ranae smirks. 'Glad to. What shall we do[if player is not defaultnamed], [name of player][end if]?'";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if hunger of Ranae > 3:
			choose a blank row in table of fucking options;
			now title entry is "Ass Worship";
			now sortorder entry is 1;
			now description entry is "Worship that frog booty";
		[]
		if hunger of Ranae > 8:
			choose a blank row in table of fucking options;
			now title entry is "Facesit";
			now sortorder entry is 2;
			now description entry is "Let Ranae use your face as a seat";
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
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Ass Worship":
						say "[RanaeAss]";
					if nam is "Facesit":
						say "[RanaeFacesit]";
					now lastfuck of Ranae is turns;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the frog, shaking your head slightly. Ranae pouts a bit, but she lets you be.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say RanaeAss:		[Player sticks their face into Ranae's booty]
	say "     Ranae giggles when she notices your gaze go down to her rear. 'It seems that you're quite taken by my butt. Would you like to take a closer look?' The frog woman moves over to the pile of pillows in the corner and lies down on her hands and knees, arching her back so that her ample ass is presented to you. She then looks back at you with a smoldering gaze. 'Come on. You know you want to,' she beckons, punctuating her comment with a gentle sway of her rump that makes those green globes jiggle enticingly. Taking the invitation, you move over to the laying amphibian and kneel down right before that tempting ass. Your hands knead into Ranae's rear, earning you a moan of delight from the frog as you admire the smooth, supple texture. You can't help but revel in the pliant warmth of Ranae's rump, and soon, driven by your lewd desires, you bend down even further and push your head into the crevice between those wondrous green cheeks. 'Oooh, someone is eager,' Ranae commented, only to squeal when your tongue starts to drag across her smooth skin. Blissfully smothered in between two soft mounds, you continue to lick the frog's rear while your hands continue to massage the sides of her bodacious butt and relish the feel of the malleable flesh.";
	say "     You barely hear Ranae's lustful pants as you continue your oral ministrations, and eventually, the frog woman moans as she achieves her climax. Her body goes limp as it falls onto the pillows, and with a bit of reluctance, you pull yourself away from her alluring rear to admire your work. Ranae is breathing heavily from exhaustion, and despite one of the pillows that she is lying on being stained by her juices, the satisfied smile on her face tells you that she doesn't mind one bit. 'Oh wow. That... that was... wow...' Ranae says after a moment of rest, and you lean in to give each of her rear cheeks a kiss, one after the other. She sits up to look at you with a dreamy smile. 'Thanks for that. I thought that I would just be letting you have some fun, but instead, you made it all about me. [one of]A girl like me can get used to attention like that[or]I certainly would not mind having this sort of attention again[or]Careful, or I might just get addicted to this sort of attention[at random].'";

to say RanaeFacesit:		[Ranae sits on the player's face]
	say "     'You're staring at my ass,' Ranae states. Despite the firmness in her tone, it doesn't carry the bite of an accusation. In fact, you could detect a hint of amusement within it. The frog grins mischievously as she beckons you closer, to which you oblige without question. 'I know that you're enamored with me, so it obviously means that your love applies to all parts of me, including my rear. It's a good thing too, because I need a comfier seat.' Before you can ask what she means, Ranae pushes you, making you fall backwards, but fortunately, the seductive amphibian had been subtly maneuvering you around her room so that you would fall on some pillows. Ranae then turns around, looking back at your prone form with a smirk, as she slowly sheds her dress. Though you appreciate the frog woman's body while she reveals her lithe figure, the main attraction comes when she lets the fabric slip below her hips, allowing you to ogle her round, green ass.";
	say "     As Ranae shakes her hips, your gaze is locked onto the hypnotic sway of that jiggling booty. So captivated you are with that perfect rump, you swear that it is growing bigger, encompassing your vision. In fact, Ranae's ass really is encompassing your vision as the frog lady moves to stand over your lying form, her rump poised right over your face. 'Be a good [if player is male]boy[else]girl[end if] and worship me,' is all Ranae says before your world becomes cushy, green flesh. The frog's bodacious ass is big enough to cover your entire face, leaving only the very top of your head free. The air becomes heavy and stifling as the amphibian's scent floods your senses.";
	WaitLineBreak;
	say "     As Ranae shifts around to make herself more comfortable on her new seat, you are buried deeper into that succulent fresh, and eventually, you feel the entrance to her rear hole drag across your mouth. Obeying the silent command, your tongue teases the edges of that musky entrance, and your oral ministrations earns you a satisfied moan from the domineering frog, and the wondrous cheeks clench in response, smothering you even more in warm softness. You can feel Ranae's juices start to drip from her cunt and onto your body, but you hardly care as you drive your tongue deep into her sphincter. ";
	if player is male:
		say "Suddenly, you feel the frog's grasp [if cocks of player > 1]one of your cocks[else]your cock[end if], and you let out a moan of your own when she begins moving her hand up and down your shaft. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	else if player is female:
		say "Suddenly, you feel the frog's fingers tease the lips of [if cunts of player > 1]one of your cunts[else]your cunt[end if], and you let out a moan of your own when those fingers plunge into your pussy. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	else:
		say "Suddenly, you feel the frog's fingers caress your groin, and you let out a moan of your own. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	say "     As you continue to lavish her wondrous rear with attention, probing your tongue into the tight, hot passage and caressing every inch of it, Ranae's breathing gets even more ragged, and soon, with a squeal, she achieves her orgasm. While your body is drenched in her juices, your face is squeezed tightly by her ass, and the mix of her intoxicating musk and the sensual embrace of her rear cheeks gives you your own climax[if player is male], your cum spraying onto the amphibian's hand[else if player is female], your femcum splashing onto the amphibian's hand[end if].";
	say "     You remain under Ranae's plush ass as she recovers from her release, not that you mind staying in your blissful situation. Eventually though, the magnificent ass rises off of your face, exposing you to the open air again with the frog woman smirking down at you. 'You make for a wonderful chair[if player is male], even if you do make quite the mess,' she says as she uses your body to wipe your cum off of her hand[else if player is female], even if you do make quite the mess,' she says as she uses your body to wipe your femcum off of her hand[else],' she says[end if]. 'Do make sure that you're around the next time I need a seat.'";


Ranae ends here.
