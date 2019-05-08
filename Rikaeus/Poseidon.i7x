Version 1 of Poseidon by Rikaeus begins here.
[Version 1 - Poseidon created as a file, Events and Sex Scenes]

[ PoseidonRelationship                                     ]
[   0: Hasnt acquired trident                              ]
[   1: Has acquired the trident                            ]
[   2: Has entered Atlantis                                ]
[   3: Has accepted the courtship                          ]
[   4: Has gone on first date                              ]
[   5: Has gone on second date                             ]
[   5: Has gone on third date and been proposed to         ]
[   6: Has had wedding                                     ]
[  99: Has refused the courtship                           ]

Section A - Establishing Poseidon and His Rules

An everyturn rule:
	if daytimer is night:
		now Poseidon is nowhere;
	else if daytimer is day:
		move Poseidon to Royal Throne Room;

Table of GameCharacterIDs (continued)
object	name
Poseidon	"Poseidon"

Poseidon is a man.
[physical details as of game start]
Humanity of Poseidon is 80. [is thousands of years old]
ScaleValue of Poseidon is 3. [human size]
Cock Count of Poseidon is 1. [has a cock]
Cock Length of Poseidon is 10. [has an 10 inch cock]
Ball Size of Poseidon is 4. [size of balls]
Ball Count of Poseidon is 2. [has a pair of balls]
Cunt Count of Poseidon is 0. [no vagina]
Cunt Length of Poseidon is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Poseidon is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Poseidon is 2. [Has two normal nipples]
Breast Size of Poseidon is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
TwistedCapacity of Poseidon is false. [can not take oversized members without pain]
Sterile of Poseidon is true.
PlayerMet of Poseidon is false.
PlayerRomanced of Poseidon is false.
PlayerFriended of Poseidon is false.
PlayerControlled of Poseidon is false.
PlayerFucked of Poseidon is false.
OralVirgin of Poseidon is false.
Virgin of Poseidon is true.
AnalVirgin of Poseidon is false.
PenileVirgin of Poseidon is false.
SexuallyExperienced of Poseidon is true.
MainInfection of Poseidon is "".
The description of Poseido is "[PoseidonDesc]".
The conversation of Poseidon is { "<This is nothing but a placeholder!>" }.
The scent of Poseidon is "He smells heavily of the sea and the earth. It's an odd combination but it works for him".

to say PoseidonDesc:
	say "     Poseidon is a strong looking man with a visible six pack and muscular arms. The king of Atlantis is different than most mermen in the fact that he doesn't appear to wear a shirt, though he does wear a pair of form fitting jeans. The god-like male has shoulder length black hair and stormy blue eyes that could and probably do, draw attention. He has a powerful aura emanating from him, clearly letting everyone know that he has strength. When he notices you looking at him, he smiles at you.";

instead of conversing the Poseidon:
	say "     The merman king smiles at you before waiting for you to say something.";
	wait for any key;
	say "[PoseidonTalkMenu]";

to say PoseidonTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Poseidon?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if PoseidonRelationship is 99:
		choose a blank row in table of fucking options;
		now title entry is "Courtship";
		now sortorder entry is 1;
		now description entry is "Ask him about the courtship";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Siblings";
	now sortorder entry is 2;
	now description entry is "Ask him about his siblings";
	[]
	if PoseidonRelationship is 3 and Loyalty of Poseidon > 0:
		choose a blank row in table of fucking options;
		now title entry is "First Date";
		now sortorder entry is 3;
		now description entry is "Ask him on a date";
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
				if (nam is "Courtship"):
					say "[PoseidonTalk1]";
				if (nam is "Siblings"):
					say "[PoseidonTalk2]";
				if (nam is "First Date"):
					say "[PoseidonTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, which simply causes the king to return to whatever he was doing.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PoseidonTalk1:
	say "     Recalling what the buff male asked of you last time, a question pops into your head.";
	say "     [bold type]Do you wish to accept the courtship this time?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - It wouldn't hurt to give it a try.";
	say "     ([link]N[as]n[end link]) - No, I'm not a marrying-type of person.";
	if Player consents:
		say "     Shrugging your shoulders mentally you voice that you want to accept his courtship. This causes the merman's face to light up. 'Great! It's official then!' He says with a smile. You ask him what this relationship will consist of, something that Poseidon promptly gives a response to. 'Simple, we go on dates, if it turns out well then perhaps marriage,' the buff male tells you. Well... you guess that was kind of obvious, causing you to wonder out loud when the first date will be. 'Oh, that, don't worry I'll plan the date and let you know when it's time,' he says, waving your concerns off. With a shrug you figure you should go on your way, heading back out of the palace, to the entrance.";
		move player to Royal Palace Entrance;
		now PoseidonRelationship is 3;
	else:
		say "     You mentally shake your head and tell him that you didn't have anything to say and apologize. The king shrugs his shoulders at you and goes on with his business.";

to say PoseidonTalk2:
	say "     You ask the king if he's actually the god of the sea and earthquakes and if so, what about his siblings. The causes him to chuckle softly. 'In the eyes of you mortals, we'd be gods but we really aren't. We were just humans like you who got immense power and were called such by others,' he says, shaking his head in mirth. 'Of course for some of us it went to our heads, like my brother Zeus, who basically forced Hera into a marriage. Others it made people think differently of, like Hades who people were terrified of because he gained control over souls,' Poseidon tells you. You nod at that, vaguely remembering the various myths surrounding the Greek Gods. Curious, you ask him where they are now. 'Well, I only really keep track of the ones I like. For example, Aphrodite has been roaming around as a matchmaker and Hestia has taken in refugees from this event,' the man explains. You get the feeling that this is a rough subject so you leave it be for now, stepping away from him.";
	if Loyalty of Poseidon < 1:
		now Loyalty of Poseidon is 1;

Section B - Sex

instead of fucking Poseidon:
	if PoseidonRelationship is 99:
		say "     The king looks at you oddly before shaking his head. 'I won't bed you unless we're courting, it wouldn't be fair to you,' he says firmly, causing you to sigh.";
	else if PoseidonRelationship is 3:
		say "     The king chuckles at you and smiles. 'Sorry my dear but not until we've at least gone on a date,' he tells you waving you off. You shrug your shoulders and figure you can wait.";
	else if (lastfuck of Poseidon - turns < 3): [fucked in the last 3 turns]
		say "     He gives you an apologetic look before saying something. 'I'm sorry love but while I'd like to spend some time alone with you, I do have work to do.' Poseidon says, gesturing to his paperwork and the guests in the corner.";
	else if PoseidonRelationship > 3:
		say "     Raising a brow at you, the king takes you by the hand and leads you to his bedroom where a big double bed sits. 'So my love, what is it that you wish to do?' Poseidon asks, a soft tone to his voice.";
		say "[PoseidonSexMenu]";

to say PoseidonSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Make Love Anally";
	now sortorder entry is 1;
	now description entry is "Have romantic sex with the merman";
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
				if (nam is "Make Love Anally"):
					say "[PoseidonSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You say that you've changed your mind, which just causes Poseidon to smile and say it's alright before leading you back to the palace throne room. ";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PoseidonSex1:
	say "     Walking into the Atlantean King's bubble you lean into his ear and whisper what you wish to do, causing him to smile and pull you into an embrace. 'Sounds good my love,' he murmurs before kissing you softly taking your lips unto his. Seconds later after he pulls his lips off he begins to help you remove anything you have on that might get in the way. Once you're nice and naked, Poseidon strips himself of his pants and underwear, revealing his large cock underneath. He the leads you to the bed and lays on it, back first, you on the other hand are currently kneeling over your merman lover, staring over his buff physique, getting an eyeful of everything.";
	say "     Leaning forward, you take the Atlantean King's lips into another kiss before you inch down so that you're face to face with his ten inch cock. Taking both of your hands you grasp it, the warmth of the length filling your hands. Slowly you begin to jerk his dick as you bring your mouth to the tip of the head and begin to lick, the vocal approval of your lover filling you with gusto. Of course, your sole point isn't to just get this part wet, no you need the whole thing so you can actually get it in you. So, with a deep breath, you exhale then start to take the large member into your mouth.";
	WaitLineBreak;
	say "     The process is slow, but thankfully your partner is patient to not thrust into your mouth, but he does whisper encouragement about how wonderful you feel, it's enough to make you blush. Soon enough you have his entire cock in you mouth, but shortly after that, you draw back, making sure to swirl your tongue around the entire length to lube it up. This process is repeated a few times, with you pushing your mouth up and down on Poseidon's large dick, occasional gagging sounds from it going all the way. All the while you're doing this, your lover is rubbing the top of your head, clearly enjoying the attention you're giving him.";
	say "     However, after a minute or so, you feel that you've lubed up his cock the best that you can, so you pull off and then climb onto him. Now you're staring face to face with the merman who's giving you a smile which you can't help but return, though you do roll your eyes when he kisses you on the middle of the face. Reaching around behind, you grab ahold of your lover's cock and position it at your hole, biting your lip as it pokes at the entrance. 'You know I could've helped with preparation,' the Atlantean King says with a raised eyebrow. As you ease yourself onto the tip you bite out that it'll be something to do another time.";
	WaitLineBreak;
	say "     Thankfully you manage to get it in, and from there it's just slowly sliding yourself down, and boy do you mean slowly. Though, your lover takes you by the lips and slips his tongue in to begin making out with you to distract you quite helpfully. In fact, you're able to focus on the kiss rather than the pain in your ass and it's not long before Poseidon's cock is fully sheathed in you. He allows you to get used to the size, just content to have fun with your lips. This gives you the courage to start yourself, pulling yourself up before dropping back down, causing a muffled moan to come from both of you guys. Though not wanting to control the entire situation you give your lover a look that asks him to help with this, which causes his eyes to shine with mirth.";
	say "     However, shortly after that it looks like the merman is willing to help cause he bucks his hips, bouncing you upward. This causes you to let out a long moan as his cock brushes past your prostate, sending electrifying impulses through your body. Poseidon begins to repeat these actions, grabbing a hold of your cheeks to find some purchase in bouncing you, though he still makes sure to keep his own lips on yours though by now the kiss is even more passionate than before. Your own pleasure is mounting higher and higher as the Atlantean King repeatedly brushes against your prostate, and you're sure it won't be long till either of you reach climax.";
	WaitLineBreak;
	say "     By now the thrusts into your hole are rough, but the kisses are loving and passionate and you can see that Poseidon's eyes are glazed over with a desire for you that fills you with intense feelings. However, just as you suspected it's not long before you feel your merman lover's cock begin to swell inside of you and soon after his seed start to fill you up, warmth coating your insides. [if Player is neuter]The sensation sets off a trigger in your mind as you have your own climax but with nowhere for it to go, your body sends the pleasure everywhere from your toes to your head. The feeling is mind-numbing but boy does it feel absolutely amazing[else if Player is herm]The sensation causes your cock to jerk and your pussy to twitch with the last edge they needed. Suddenly you start to shoot your own load, your cum coating the Atlantean King's chest with some of the femcum from your pussy leaking onto the bedsheets[else if Player is male]The sensation causes your body to alight with pleasure as your dick suddenly jerks with the last bit of edge it needed to shoot its load. Your cum explodes from your length, coating the Atlantean King's chest in sticky streaks[else if Player is female]The sensation causes your body to alight with pleasure as your pussy twitches with the last edge it needs before femcum starts to leak and coat your Atlantean lover's balls. With the amount, some of it even ends up making it onto the bedsheets below you two[end if]. By the time the two of you are done with your orgasms, you are both panting in each other's arms.";
	say "     Apparently not wanting to get up, Poseidon keeps you in his arms and kisses you softly before starting to cuddle with you despite how sticky you feel from the sweat and cum. But then you just shrug and let him do as he please cause it's kinda nice anyways. Especially since your merman lover lazily snaps his fingers and all the cum and sweat vanishes. 'Magic is always nice for things like this,' he says with a happy tone before pulling you into his side and snuggling you. You chuckle and agree with him, enjoying the sensation of being held. The two of you lay like this for a good while before there's a knock at the door and in comes a guard saying that Poseidon's needed for something. 'Well, work never ends, I'll lead you out love,' your lover says with a sigh before leading you back to the throne room.";
	now lastfuck of Poseidon is turns;
	now PlayerFucked of Poseidon is true;

Section C - Dates with Poseidon

to say PoseidonTalk3:
	say "     Clearing your throat you let the Atlantean King know that you're currently free for a date if he's up for it. Instantly his facial expression brightens up and he waves aways all but one of his guards, probably because of safety reasons. 'Usually it'd be me who asks the other on an outting but I'm all for it if you want to!' He says cheerfully before getting up and stretching. You ask him if it's a problem being rather short notice for him but he chuckles and shakes his head at that. 'Not at all! I actually had an idea of where to take you for the first date anyways. I don't know if you've been there before, but I wanted to take you to the city park for one of the city's events.' Poseidon says with a smile.";
	say "     You squint an eye at that, wondering how he'd time that kind of date when things like that probably have specific times. 'Oh, well, one of the benefits of being King is that I can rearrange certain events to certain days and this festival needed to be moved anyways,' he said with a shrug of his shoulders. Oh, and why's that, you can't exactly think of a reason that many events would be postponed in an underwater uptopia. 'Ah, well, the water bubble's maintenance got moved back to that day so it would be easier to do it at an earlier date rather. You guess that makes sense, especially considering the fact that the bubble is probably most definitely important to all life in the city.";
	WaitLineBreak;
	say "     As the two of you head out of the palace, you say to him that he hasn't exactly told you what this festival is about. 'No, I haven't, and that's cause I want you to be surprised. However, I can tell you what it's for if you wish?' Poseidon asks. You don't mind that, though you probably will end up being more curious about everything to come. 'Perfect then! Well, we started the festival to remember the souls that have passed on. We do it every month though the day changes,' he says with a nod. With a tilt of your head you mention that it sounds more like an event fit to his brother Hades than him. 'Well, to be honest, it probably is, but with me running this city, my people do deserve to mourn their loved ones. So I thought the festival was a perfect way.' Poseidon hums as you guys walk along the streets, people watching the two of you.";
	say "     Soon enough you guys pass through the arches leading into the beautiful flower-filled park of Atlantis. Currently there are a fair amount of people already here looking at the various flowers, but Poseidon leads you to a specific patch of flowers with a statue of a woman in priestess robes. He has the two of you sit down in front of the purple pom-pom plants with snaking leaves. He then gestures for the guard to approach, allowing you to see that he had them bring a picnic basket. Unpacking the food, you see that he had a variety of dishes prepared, from simple sandwhiches to snacks like cookies and even some drinks.";
	WaitLineBreak;
	say "     As the two of you dig into your food, you turn your attention to the statue, vocalizing your question of who its form it takes. Turning your face to Poseidon you see it looks as if he's aged a thousand years, looking his current age. 'Ah... well, you remember my conversation with you about my siblings right?' The Atlantean King asks, looking towards the stone priestess. You nod, not exatly sure if he saw the motion, but he continues anyways. 'Well, like I told you, we were once mortal and human just like you all. And one of the more popular expressions is, [']to err is to human['], and well, we've made the most mistakes for we aren't perfect.' Poseidon says with a sigh.";
	say "     'The statue of the woman is one of the many mistakes I've made in my past,' he says, laying on his back. 'Are you aware of the rivalry I had in the ancient past with my 'niece' Athena?' He asks, putting air quotes around the word niece. You say that you are, but you're curious as to why he said her name in that way. 'Well, we're not all actually related in the way the world thinks we are. Sure some of us are actually siblings like me, Zeus, and Hades but Hera isn't actually related to any of us except maybe Aphrodite. I don't actually know.' Poseidon says with a shrug. Giving him a look you just tilt your head before accepting it, figuring that history just obscures everything after a while.";
	WaitLineBreak;
	say "     'Anyways, one of the more petty things I did was take a woman, seduce her, and have sex with her in one of Athena's Temple's. Worst of all, this specific lady was one of her priestesses,' the Atlantean King says with a sigh. You wince at that and voice a guess that the so-called goddess of wisdom didn't take that well. 'No, not at all. Because she couldn't do anything to me, she cursed the woman and her sisters into monsters. You may recognize her name as Medusa.' Poseidon says, taking a long look at the statue. You turn your attention as well to the marble and think that you would have never guessed that a person known for snake hair and turning people to stone would have been this beautiful.";
	say "     As more and more people seem to be arriving to the park, the merman sits up with a solemn look. 'Just remember nobody's perfect, even so-called gods. Most of all us.' Poseidon says. Soon enough though there's quite a few people here and they're all appearing to take out what looks to be a sky lantern. When you turn towards the Atlantean King you see he also has one. 'This is what we celebrate the festival with, we light these and let them float up past the bubble and up to the surface and into the air and sky,' he explains to you. You ask how the flame stays lit in water. To answer that question, Poseidon pulls out a match, which seems to be of a bright green color. He quickly lights it, generating a matching flame before grabbing your hand to hold the stick with him. 'This is a flame that doesn't extinguish with water. It requires ice to be thrown at it instead to cool down the flame enough to snuff it out.' He explains.";
	WaitLineBreak;
	say "     You ask him if it was a kind of magic item, to which he chuckles. 'Not at all, it's simply alchemical. One of the Four Lords, Sheng, makes it for the festival monthly.' Poseidon says. Seeing other people start to light their own lanterns the merman leads both of your hands to the candle in the one in front of you. The match lights the wick and the thing it's attached to starts to float up into the air. There are quite a few lanterns in the air, all of them creating quite a gorgeous sight in the sky. They soon reach the top of the bubble and sink through it, before making another beautiful scene past it as they rise to the surface and out of sight.";
	say "     As you turn back to Poseidon you are met with his lips on yours in a nice and soft kiss. While not very erotic the feeling makes your heart flutter as you smile. Pulling back the merman returns your facial expression before speaking. 'This was a nice date, wasn't it?' He asks, tilting his head. You nod before he helps you stand. The two of you walk back to the palace, enjoying the scenery. Once you reach your intended destination Poseidon turns to you and smiles. 'Thank you again for being willing to go on a date with me, our second date can wait for a while.' He said before kissing your hand. You smile at him, saying you don't mind waiting. You say it was a nice date before leaving him to go back to work.";
	now PoseidonRelationship is 4;
	now Loyalty of Poseidon is 2;

Poseidon ends here.
