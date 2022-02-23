SlutStorage by Wahn begins here.

[ Hunger of Mortimer - number of bottles due]
[ Energy of Mortimer - counting the days for payment]


StoredSluts_Female is a list of text that varies.
StoredSluts_Male is a list of text that varies.
StoredSluts_Herm is a list of text that varies.

an everyturn rule:
	let Slut_PaymentsDue be 0;
	repeat with X running from 1 to number of filled rows in Table of StoredSluts:
		choose row X from the Table of StoredSluts;
		increase Slut_PaymentsDue by PaymentType entry;
	if Slut_PaymentsDue > 0 and (TimekeepingVar is 1 or TimekeepingVar is -7): [1+ sluts stored, midnight]
		increase Energy of Mortimer by 1;
		if Energy of Mortimer > 7:
			now Energy of Mortimer is 1; [reset to starting a new count]
			increase Hunger of Mortimer by Slut_PaymentsDue; [+1 bottle required for each slut that needs to be paid]

Table of GameCharacterIDs (continued)
object	name
Mortimer	"Mortimer"

Mortimer is a man.
ScaleValue of Mortimer is 3. [human sized]
Cock Count of Mortimer is 1.
Cock Length of Mortimer is 8.
Ball Size of Mortimer is 2.
Ball Count of Mortimer is 2.
Cunt Count of Mortimer is 0.
Cunt Depth of Mortimer is 9.
Cunt Tightness of Mortimer is 2.
Nipple Count of Mortimer is 2. [2 nipples]
Breast Size of Mortimer is 0.
[Basic Interaction states as of game start]
PlayerMet of Mortimer is false.
PlayerRomanced of Mortimer is false.
PlayerFriended of Mortimer is false.
PlayerControlled of Mortimer is false.
PlayerFucked of Mortimer is false.
OralVirgin of Mortimer is false.
Virgin of Mortimer is false.
AnalVirgin of Mortimer is false.
PenileVirgin of Mortimer is false.
SexuallyExperienced of Mortimer is true.
MainInfection of Mortimer is "Blue Gel".
Description of Mortimer is "[MortimerDesc]".
Conversation of Mortimer is { "<This is nothing but a placeholder!>" }.
The scent of Mortimer is "     The teal goo person has a faint chemical smell, with an weak underlying scent of sexual fluids.".
Mortimer is in Store Everything.
Mortimer is a trader.

to say MortimerDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Mortimer] <- DEBUG[line break]";
	say "     Mortimer is a vaguely humanoid goo person, though being quite a particularly soft and squishy-looking example of his kind. Unless he's moving around or concentrating on holding a shape, much of his mass seems to want to droop down, giving him a half-melted, moist appearance. The goo-man's body is teal in color, filled with some swirls and streaks that are more milky white, making him only semitransparent overall. You can make out some solid shapes within too, many of which appear to be keys. Seems that he's dealt with the lack of pants pockets by simply storing items he needs within his own form.";
	say "     As he notices your attention on himself, Mortimer pulls himself into a more presentable shape for a moment, with correct human proportions. The smarmy grin on his face and a pompadour haircut complete the image of a human male. Somehow you can't help but feel that he'll try to sell you a used car in a moment.";

[TODO: Mention Blue if the Player does know them - and vice versa]

instead of conversing Mortimer:
	if "IntroEvent_Done" is not listed in Traits of Mortimer: [first encounter intro]
		say "     Just as you are about to step up to the gate and call out to the goo person, you see two people step out of one of the side passages a little bit further back, providing access to some of the countless storage bays in the facility. It is an anthro bulldog wearing nothing but a ratty pair of jeans, as well as another goo who looks pretty much identical to the gate guard. The two of them are talking as they approach, and you manage to catch part of it, with the bulldog saying, '...keep the little slut safely locked up, Mortimer. Even if she bangs on the door or something like that, alright? Not quite done training her to accept her new role. And if a dude [italic type]does[roman type] show up here asking for his sister...' The goo person next to him raises a hand to interrupt him, then replies with a slimy (literally dripping) grin, 'Say no more, I'll just inform him that what is stored - or not stored here - is the private business of my customers. And if he becomes aggressive or anything, you know how tight the place can be. No worries.'";
		say "     After the last words were said, he casually waves towards the deeper part of the walled in facility, where you can make out four additional copies of his goo form move around and work. The next thing that happens as the duo reaches the other goo standing at the door buzzer is that Mortimer just steps up and merges with his copy, becoming half a foot taller and girthier. The newly merged being still looks the same in all other respects, and just continues talking in the same tone as before. 'Before you go, I do want to remind you again of the storage fees. Before any old or new deposited goods are accessed, you'll have to pay up.' Grunting under his breath, the anthro dog replies, 'Yeah, yeah, I remember. Hard not to, with the pain of lugging all those bottles of milk and cum here constantly.' With a sly smile creeping over his face, Mortimer spreads his arms as he offers, 'If you prefer, we can switch you to the alternate payment plan. Just say the word.'";
		WaitLineBreak;
		say "     You can see the fur on the bulldog's back fluff up as his hackles rise reflexively, and he almost barks back, 'Hell no, Mort! I'll get you the payment. Her and the others are MINE, you're not allowed to tap em for fluids yourself!' 'As you wish,' Mortimer tells the canine in a tone that doesn't quite hide his amusement at the reaction, then presses the button to unlock the door. The muscular bulldog turns his head to the goo and grumbles, 'Why don't you just let me jerk one out onto ya, or something? That'd be less work than carrying the stuff here.' The goo person gives him a cold stare, then replies, 'That'd be... trashy. Just pay up in the usual way. Also, you've got nine units in use right now. Bet ya'd be shooting blanks before long - and would you really be in the mood to train your girl at that point?'";
		say "     With a grunt, the bulldog steps outside and pulls the door shut behind him, then gives you a predatory glance and kind of lingers on the sidewalk. You can see his lips starting to pull back as he works himself up to attack, maybe planning to add you to his stable inside. Then suddenly, you hear a sharp whistle from inside. Mortimer calls out, 'Hey Zane! No fighting with prospective customers! Take it down the street at least!' The anthro canine still looks just about ready to jump you, only holding himself back as Mortimer adds, 'Control yourself, or you'll forfeit on your stored goods, you hear me?!' Growling, the bulldog stalks off after that. Keeping an eye on him until he takes a turn around a corner not too far away, you're soon left standing in front of the storage facility alone.";
		if PlayerMet of Blue Speaker is true:
			say "     Having seen the goo person act and talk, you can't help but be reminded of Blue in the mall, who appears to be a somewhat related type of goo. In this case though, it doesn't look like there are individual personalities to the separate parts of the whole. That makes you wonder if Mortimer just grew enough mass on his own and learned to split himself into copies, or if his personality overwhelmed any other from people he may or may not have absorbed.";
		TraitGain "IntroEvent_Done" for Mortimer;
	else if PlayerMet of Mortimer is false: [first talk with Mortimer]
		say "     As you approach the sturdy metal bars of the door and call out to the goo person, he pulls his half-melted body into a more presentable shape for a moment, with correct human proportions. The smarmy grin on his face and a pompadour haircut complete the image of a human male. 'Well hello there, nice to see a new face around here,' he says in an overly friendly tone, wanting to draw you in. 'I'm Mortimer. Step up and let me explain about this place. Since the current... situation started', the goo explains, waving a hand airily to indicate the ongoing nanite apocalypse, 'my little location here is offering new and expanded services for the customer's convenience.' You see a glint of light on his face at that moment - did he actually just move a gold tooth from inside the goo to wow you with its gleam? Wow, he really matches all the checkboxes for a sleazy salesman. With an unbroken grin on his face, Mortimer winds up for his sales pitch, now standing just beyond the door.";
		say "     'Got a piece of eye candy that keeps wandering off and letting others have a taste? Or maybe some sketchy neighbors around that might snatch what's yours? Maybe a new four-legged furry friend that you caught out on the streets and had some fun with, but don't wanna explain to the family?' Adding a wink as he says the last part, Mortimer makes a sweep with his arm to indicate the complex behind him. 'I've got the solution for all your problems right here. Person storage services. Who or what you bring here to store will be kept private, and your stored property safe and secure. They'll be kept well fed and watered, with you being able to access your storage space at any time. What you do in it is your business. And I am offering all of this for a nicely low and affordable price.' With that said, the goo pauses to give you a chance to react, showing a smile on his face.";
		say "     [bold type]What do you think of his business?[roman type][line break]";
		say "     [link](1)[as]1[end link] - You'll have to keep his business in mind to maybe use it later.";
		say "     [link](2)[as]2[end link] - This is horrifying! Anyone in there should be freed!";
		say "     [link](3)[as]3[end link] - Just shake your head and walk away. You have no interest, and neither is it your business to deal with.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to keep him in mind to use later, [link]2[end link] to demand everyone be freed, or [link]3[end link] to just walk away.";
		if calcnumber is 1:
			say "     'I look forward to having you as a customer. There's plenty of room available, just bring your goods over whenever you want.' He grins and gives you a thumbs-up, happy to have found someone else interested in using his services. 'One small detail to add though - your payment options. You see, while I'm still building my customer base I'm offering this service at a uniquely low rate. Just one bottle of the cum, femcum or milk per occupied unit, once a week. That's not so bad, eh?' Thinking it over, you can't help but agree - this is a suspiciously affordable price for his effort and feeding the people in the units. Though you guess the prices will mount up if you get in the habit of bringing more people here...";
			say "     Having watched your expression closely enough to guess where your thoughts might be going, Mortimer clears his throat in this moment to add, 'Or you can go with the alternate, comfort variant and just make an agreement to let me harvest fluids to pay for your units myself. I guarantee that milking is the only thing I'll do. This way you don't have to worry about payments, and your goods will be more comfortable too, if they're not pent up with aching udders, balls, etc. Just think about it, you'll be able to individually pick what you want to do for every new unit, in case you got someone 'extra special' you want treated differently.' Mortimer smiles at you, then gives a wink as he says, 'See ya soon, and happy hunting!'";
			TraitGain "PlayerInterested" for Mortimer;
		else if calcnumber is 2:
			say "     'Ah, you're one of those,' he groans with a roll of his eyes. 'Fuck off then, I got a business to run here. And you can forget about any plans of busting in here. Trust me, that wouldn't be pretty!' As he says this, all of the other goo copies further in the back suddenly stop what they're doing and turn to look at you in eerie uniformity. With the place's security measures as well as an unknown number of Mortimer doubles to contend with, you begin to doubt that you can achieve anything here. Letting out a sigh, you turn around and walk away, hearing the goo person call after you, 'I can't wait for the day when the last fucking do-gooder like you has been dragged into an alley to have their brains fucked out!'";
			move Player to Northwest 7th Street;
			TraitGain "PlayerOpposed" for Mortimer;
		else if calcnumber is 3:
			say "     You really have enough to do with surviving in the nanite apocalypse, so you don't need Mortimer or his questionable business practices on your mind. Shaking your head, you simply turn around and walk away. He calls after you, 'If you change your mind, I'll be waiting for your business!'";
			move Player to Northwest 7th Street;
			TraitGain "PlayerNotInterested" for Mortimer;
		now PlayerMet of Mortimer is true;
	else if "PlayerNotInterested" is listed in Traits of Mortimer: [second chance if walked off at first]
		say "     As you step up to the gate, Mortimer pulls himself into shape for getting a sale again, with a smarmy grin becoming plastered over his goo face. 'I knew you'd be back. People who have the guts to make it in this new world find a use for my services sooner or later. Bet you got someone in mind to store in here, don't you?'";
		say "     [bold type]What do you reply?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Yeah, on second thought his facility might be kinda useful.";
		say "     [link](2)[as]2[end link] - This is horrifying! Anyone in there should be freed!";
		say "     [link](3)[as]3[end link] - Just shake your head and walk away. You have no interest, and neither is it your business to deal with.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to keep him in mind to use later, [link]2[end link] to demand everyone be freed, or [link]3[end link] to just walk away.";
		if calcnumber is 1:
			say "     'I look forward to having you as a customer. There's plenty of room available, just bring your goods over whenever you want.' He grins and gives you a thumbs-up, happy to have found someone else interested in using his services. 'One small detail to add though - your payment options. You see, while I'm still building my customer base I'm offering this service at a uniquely low rate. Just one bottle of the cum, femcum or milk per occupied unit, once a week. That's not so bad, eh?' Thinking it over, you can't help but agree - this is a suspiciously affordable price for his effort and feeding the people in the units. Though you guess the prices will mount up if you get in the habit of bringing more people here...";
			say "     Having watched your expression closely enough to guess where your thoughts might be going, Mortimer clears his throat in this moment to add, 'Or you can go with the alternate, comfort variant and just make an agreement to let me harvest fluids to pay for your units myself. I guarantee that milking is the only thing I'll do. This way you don't have to worry about payments, and your goods will be more comfortable too, if they're not pent up with aching udders, balls, etc. Just think about it, you'll be able to individually pick what you want to do for every new unit, in case you got someone 'extra special' you want treated differently.' Mortimer smiles at you, then gives a wink as he says, 'See ya soon, and happy hunting!'";
			remove "PlayerNotInterested" from Traits of Mortimer;
			TraitGain "PlayerInterested" for Mortimer;
		else if calcnumber is 2:
			say "     'Ah, you're one of those,' he groans with a roll of his eyes. 'Fuck off then, I got a business to run here. And you can forget about any plans of busting in here. Trust me, that wouldn't be pretty!' As he says this, all of the other goo copies further in the back suddenly stop what they're doing and turn to look at you in eerie uniformity. With the place's security measures as well as an unknown number of Mortimer doubles to contend with, you begin to doubt that you can achieve anything here. Letting out a sigh, you turn around and walk away, hearing the goo person call after you, 'I can't wait for the day when the last fucking do-gooder like you has been dragged into an alley to have their brains fucked out!'";
			move Player to Northwest 7th Street;
			remove "PlayerNotInterested" from Traits of Mortimer;
			TraitGain "PlayerOpposed" for Mortimer;
		else if calcnumber is 3:
			say "     You really have enough to do with surviving in the nanite apocalypse, so you don't need Mortimer or his questionable business practices on your mind. Shaking your head, you simply turn around and walk away. He calls after you, 'If you change your mind, I'll be waiting for your business!'";
			move Player to Northwest 7th Street;
	else if "PlayerOpposed" is listed in Traits of Mortimer: [he doesn't trust the player anymore, no chance to change their mind]
		say "     'You again,' Mortimer groans with a roll of his eyes as you approach. 'Fuck off, I got a business to run here. And you can forget about any plans of busting in here. Trust me, that wouldn't be pretty!' As he says this, all of the other goo copies further in the back suddenly stop what they're doing and turn to look at you in eerie uniformity. With the place's security measures as well as an unknown number of Mortimer doubles to contend with, you begin to doubt that you can achieve anything here. Letting out a sigh, you turn around and walk away, hearing the goo person call after you, 'I can't wait for the day when the last fucking do-gooder like you has been dragged into an alley to have their brains fucked out!'";
	else:
		say "[MortimerTalkMenu]";

to say MortimerTalkMenu:
	let TalkDone be false;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Payment Options";
	now sortorder entry is 1;
	now description entry is "Let him remind you of the payment options";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how much you owe him";
	now sortorder entry is 2;
	now description entry is "Let him give you a quote of how much you owe currently";
	[]
	if the number of entries in StoredSluts_Female is not 0 and Hunger of Mortimer < 1:
		choose a blank row in table of fucking options;
		now title entry is "Female Sluts";
		now sortorder entry is 3;
		now description entry is "Visit one of your units with a female slut";
	[]
	if the number of entries in StoredSluts_Male is not 0 and Hunger of Mortimer < 1:
		choose a blank row in table of fucking options;
		now title entry is "Male Sluts";
		now sortorder entry is 4;
		now description entry is "Visit one of your units with a male slut";
	[]
	if the number of entries in StoredSluts_Herm is not 0 and Hunger of Mortimer < 1:
		choose a blank row in table of fucking options;
		now title entry is "Herm Sluts";
		now sortorder entry is 5;
		now description entry is "Visit one of your units with a herm slut";
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
				if nam is "Payment Options":
					say "[Mortimer_PaymentOptionsTalk]";
				if nam is "Ask how much you owe him":
					say "[Mortimer_PaymentsDue]";
				if nam is "Female Sluts":
					say "[Mortimer_FemaleSlutsMenu]";
				if nam is "Male Sluts":
					say "[Mortimer_MaleSlutsMenu]";
				if nam is "Herm Sluts":
					say "[Mortimer_HermSlutsMenu]";
				if "SlutUsed" is listed in Traits of Mortimer: [player did choose and fuck someone - ends the talk menu]
					remove "SlutUsed" from Traits of Mortimer;
					wait for any key;
				else if TalkDone is false: [didn't to any option that ends the conversation]
					LineBreak;
					say "     [bold type]What else do you want to talk about with Mortimer?[roman type][line break]";
					say "[MortimerTalkMenu]";
				else: [TalkDone true - ends the talk menu]
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the goo person, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Mortimer_PaymentOptionsTalk:
	say "     'Sure thing, it's a really easy payment structure. Just one bottle of the cum, femcum or milk per occupied unit, every four days. Or you can go with the alternate, comfort variant and just make an agreement to let me harvest fluids to pay for your units myself. I guarantee that milking is the only thing I'll do. This way you don't have to worry about payments, and your goods will be more comfortable too, if they're not pent up with aching udders, balls, etc. Of course, you'll be able to individually pick what you want to do for every new unit, in case you got someone 'extra special' you want treated differently.'";

to say Mortimer_PaymentsDue:
	if Hunger of Mortimer > 0:
		say "     After doing a quick calculation in his head, Mortimer says, 'You still owe me [Hunger of Mortimer] bottles of milk, cum or femcum.'";
	else if Hunger of Mortimer is 0:
		say "     The goo person smiles broadly as he says, 'You're all paid up currently.'";
	else if Hunger of Mortimer < 0:
		say "     The goo person smiles broadly as he says, 'You're more than paid up - I'll count the extra against your next bills.'";

instead of trading when the current action involves Mortimer:
	if noun is milky or noun is cum:
		say "     Mortimer eagerly accepts [the noun] from you and immediately chugs it down, adding more milky color to his goo body.";
		ItemLoss noun by 1;
		decrease Hunger of Mortimer by 1;
	else:
		say "     Mortimer has no interest in what you're offering him.";

to say Mortimer_FemaleSlutsMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if there is a name of "Sarah" in the Table of StoredSluts:
		choose a blank row in table of fucking options;
		now title entry is "Sarah";
		now sortorder entry is 1;
		now description entry is "Visit the husky slut to have some fun";
	[]
	if there is a name of "Eric" in the Table of StoredSluts:
		choose a blank row in table of fucking options;
		now title entry is "Eric";
		now sortorder entry is 1;
		now description entry is "Visit the cuntboy to have some fun";
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
				say "     After you make your choice, Mortimer splits off a part of himself to lead you while the rest of him stays behind to man the gate. The complex is fairly expansive and you go through twists and turns in eerily similar-looking passages between countless storage units before the goo person finally announces. 'Here we go, this is it! I'll wait here until you're 'done'.' With that said, Mortimer gives you an oily grin, then unlocks the door and lets you stroll inside, pulling down the shutter to give you privacy in the storage unit. Glancing around, you see very little inside it - mainly a big mattress, and some food and drink laid out near the entrance.";
				if nam is "Sarah":
					say "[StoredSlut_Sarah]";
				else if nam is "Eric":
					say "[StoredSlut_Eric]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind, earning a questioning look from the goo person.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say StoredSlut_Sarah:
	say "...";

to say StoredSlut_Eric:
	say "...";


to say Mortimer_MaleSlutsMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Joshiro" is listed in StoredSluts_Male:
		choose a blank row in table of fucking options;
		now title entry is "Joshiro";
		now sortorder entry is 1;
		now description entry is "Visit the human slut to have some fun";
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
				if nam is "Joshiro":
					say "[StoredSlut_Joshiro]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind, earning a questioning look from the goo person.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say StoredSlut_Joshiro:
	say "...";

to say Mortimer_HermSlutsMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Snow" is listed in StoredSluts_Herm:
		choose a blank row in table of fucking options;
		now title entry is "Snow";
		now sortorder entry is 1;
		now description entry is "Visit the squirrel slut to have some fun";
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
				if nam is "Snow":
					say "[StoredSlut_Snow]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind, earning a questioning look from the goo person.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say StoredSlut_Snow:
	say "...";



[


Book 1 - Capture/Drug/Purchase
More secure area people will not be available right off the bat (mall ect.) unless there are a certain amount of people already in the storage area. This is just to show you are becoming a better predator and are able to grab higher tier targets.

Capture: The capture method may or not be available for all candidates. This method will involve using your stats/feats to immobilize people and take them to the storage area. "Warning": Capturing people will not put them into slut mode and will actually keep them in the non-con form until you either get your hands on the drug, or another prerequisite is met.

Drug: The drug method actually has you drugging the people and while they are out of it you take them to the storage unit. This way will be far easier for most people as their is no stat/feat check, they will however need to have the drug in their inventory. "Warning": With this method the person will still start in non-con, it's just a simpler/guaranteed way to acquire them.

Purchase: The purchase method is reserved for characters like those in the Shag Shack, these people will not be able to be captured or drugged, they are exclusive.

Book 2 - Storage

Location: On the street connected to the Library.

NPC - Storage Owner: Mortimer - Male - Slime

NPC - Scientist: Mr. Chimic - Male - Gecko

Book 3 - Sex and Advancement

	Chapter 1 - Sex Groups
	Every character will start at the non-con setting, but characters will then be divided into two separate groups.

		Section 1 - Broken Group
		The first group will be called the "Broken" group, for this group they will not require the drug to become sluts they simply require to be fucked repeatedly. Examples of people that would fit this group would be Sarah, Sex Slave Eric, Sven, and Glory. The one downside of this group is that there is no way to "stay at the level you want", however this group is by far the easiest to slutify.

			Part 1 - Planned
			*Eric
			*Joshiro
			Sarah

			Part 2 - Potential
			Sven
			Glory
			Amy
			Candy
			Karen
			Val
			Xerxes
			Helen

		Section 2 - Fighter Group
		The second group will be called the fighter group, for this group they will require the drug to advance from non-con to slut mode. Examples of people that would fit this groups would be Skarnoth, Chase, and Garth. The upside of this group is that as long as you don't use drugs you can keep them at the level you want, however this group is harder to slutify as you will need the drug to progress.

			Part 1 - Planned
			Skarnoth
			Chase
			Imps (all four count as one space)
			Brutus
			*Danny

			Part 2 - Potential
			Korvin
			Landon
			Barret
			Arthur
			Reece
			Garth
			Andy
			Logan
			Blake
			Jürgen
			Carl
			Atticus
			Uric
			Spike
			Alexandra
			Darius
			Tyke
			Rane
			Hayato
			Tehuantl
			Gobby
			Kai
			David
			Adam
			Monty
			Brennan
			Frank
			Sgt Marks
			Rex
			Grant
			Corbin
			Lucifer
			Chris
			Philip
			Leonard
			Zoe
			Onyx

Chapter 2 - Sex Progression
Sex progression can have from 3-5 different levels depending on the character. These levels are actually just variations on the same "standard" scene. This means that the player will feel like "omg they are becoming more of a slut toy to use!", but for the writer it's actually just a simple "alright on this level this bitch says this and on the next I just tweak it".

	Section 1 - Non-con

	Section 1.5 - Non-con light

	Section 2 - Dub-con

	Section 2.5 - Dub-con light

	Section 3 - Slut Mode


Book 4 - Drug Item
A new drug that is based around the DNA of some of the cities more... interesting infections. Taking DNA strands from these infections leads to a drug that hybridizes their effects and can even overwrite their minds and views. This list should also be in-game possibly as a found note from the creator of the drug.

	Chapter 1 - Drug Makeup
	Cum Girl Saliva: Makes a person incredibly horny, but also raises the power of orgasms and the amount of emissions.
	Orc Semen: Adds an addictive property to the drug and well as "potentially" causing both Mpreg and overriding potential sterility.
	Husky Pheromones: Induces an intense heat that makes an individual "need" to be bred.
	Elk Pheromones: Induces an intense rut that makes an individual "need" to breed.
	Incubus Prostate Gland: Raises the desire for sex as well as the virility of the subject.
	Succubus Breast Milk: Raises the desire for sex as well as the fertility of the subject.
	Peacock Neurotransmitter: Puts the subject in a slightly more "agreeable" mindset.
	Bunny Jock Adrenal Gland: Makes the subject require less rest time before they are able to fuck again.
	Rubber Tigress Digestive System: Makes it so that plastic items can be absorbed as food/water instead.


	Chapter 2 - Drug Acquisition

	Chapter 3 - Drug Item


1:non-con


1.5:non-con but with the occasional moan


2:dub-con


2.5:dub-con but explosions of slut mode


3:slut mode


each advancement requires a dose of the drug to progress, this way you can keep the character at the variation t

]

SlutStorage ends here.
