Version 1 of Astor by Rikaeus begins here.
[Version 1 - Introduction of Astor and his Restaurant]

[   Loyalty of Astor                                       ]
[   0: Hasn't visited the restaurant and met him           ]
[   1: Has met him and visited the restaurant              ]

BullStrengthTimer is a number that varies. BullStrengthTimer is usually 10000.
KitsuneDexterityTimer is a number that varies. KitsuneDexterityTimer is usually 10000.
MonkeyIntelligenceTimer is a number that varies. MonkeyIntelligenceTimer is usually 10000.

Section 1 - First meeting

after going to Azure Dragon Culinary Tastes while Loyalty of Astor is 0:
	say "     Opening the doors to the restaurant you're met with the most wonderful smells of herbs, spices, and various meats, vegetables, and fruits. All of them mixing together to fill your nose and body with a desire to eat here. Looking around you can see it looks to be modeled after a diner, which is surprisingly modern for the ancient city you're in but you respect it. The walls are litered with different posters of many different chefs from all around the world as well as different awards from many culinary competitions, showing that whoever cooks here is a prized chef. As you walk closer towards the counter where food is being served, you hear a happy cheerful voice speak out to you.";
	say "     'What can I get for you?' The voice says with a happy and prideful tone in it, causing you to look in its direction. Your eyes are met with an azure scaled dragon wearing a chef's apron and a pair of black slacks to go with it. In his hands is a spatula that he seems to hold with a certain finesse that screams professional. You tell him that you wanted to take a look, as it's your first time here, which causes him to smile at you. 'Ah! A brand new customer! Well then, if you want something to eat then take a seat and I'll be happy to serve you up some grub! The name's Astor, a lot of the people here know me as one of the Four Lords.' The dragon says before returning his attention to the grill.";
	WaitLineBreak;
	say "     'The food I sell here is pretty special, it'll help keep you strong, though only for a while.' He says, as he flips some burgers before turning his attention to some stirfry on another stove. You ask if there's anything special in it that makes it like that. 'Well, you could say my magic? But honestly, it's just mostly because of how I cook my stuff. It only lasts for a little bit because the body eventually filters the food out.' Astor says with a shrug of his shoulders as he serves the burger he was working on and rings a bell, causing a waitress nearby to grab it and serve it to a customer.";
	say "     You make an aaahing noise and ask him how long the effects last. 'Well, for about a day. As that's how long most food stays in your body anyways. You also can't mix effects of the food, it doesn't quite work like that.' The dragon says, shuffling the stir fry in the pan. You nod and say that you'll definitely have to try some when you can. 'Perfect! I'm always here as I sleep in between moments when there's not many people here. As I don't need much sleep. Also, as currency I accept fish, two of them per meal.' Astor says, serving the food and ringing the bell again, causing another waitress to come and serve it. You nod and thank him for the information before letting him return to work.";
	now Loyalty of Astor is 1;
	now PlayerMet of Astor is true;

Section 2 - Room

Table of GameRoomIDs (continued)
Object	Name
Azure Dragon Culinary Tastes	"Azure Dragon Culinary Tastes"

[Room Declaration]
Azure Dragon Culinary Tastes is a room.
Azure Dragon Culinary Tastes is northwest of Atlantis City Market.
The description of Azure Dragon Culinary Tastes is "[AzureDragon]".
earea of Azure Dragon Culinary Tastes is "Atlantis".

to say AzureDragon:
	say "     The restaurant is amix with a plethora of wonderful foodsmells from herbs and spices to meats, vegetables and fruits. They blend together perfectly to create a mouthwatering scent that makes you want to step further in and take a seat and order away. The design of the place is fashioned after a diner, which is pretty modern for the ancient city but you believe it fits the owner of the place. The walls are plastered in posters of various famous chefs and has various trophies and medals mounted on the walls. Standing and cooking at the grills and stoves is the familiar face of the owner of the establishment, Astor who when he sees you he waves at you.";

Section 3 - Npc

Table of GameCharacterIDs (continued)
object	name
Astor	"Astor"

Astor is a man.
[physical details as of game start]
Humanity of Astor is 80. [is thousands of years old]
ScaleValue of Astor is 3. [human size]
Cock Count of Astor is 1. [has a cock]
Cock Length of Astor is 10. [has an 10 inch cock]
Ball Size of Astor is 4. [size of balls]
Ball Count of Astor is 2. [has a pair of balls]
Cunt Count of Astor is 0. [no vagina]
Cunt Depth of Astor is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Astor is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Astor is 2. [Has two normal nipples]
Breast Size of Astor is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Astor is false.
PlayerRomanced of Astor is false.
PlayerFriended of Astor is false.
PlayerControlled of Astor is false.
PlayerFucked of Astor is false.
OralVirgin of Astor is false.
Virgin of Astor is false.
AnalVirgin of Astor is false.
PenileVirgin of Astor is false.
SexuallyExperienced of Astor is true.
The description of Astor is "[AstorDesc]".
The conversation of Astor is { "<This is nothing but a placeholder!>" }.
The scent of Astor is "     The azure dragon gives off a scent of spices, meats, and vegetables, which is pretty drool-worthy on its own.".
Astor is in Azure Dragon Culinary Tastes.

to say AstorDesc:
	say "     Taking a look at the cook you see him hard at work cooking up the meals of the various customers of his restaurant. Moving your eyes to glance at his clothes you notice that his apron isn't a plain white one, no it says 'Kiss the Dragon Cook' which makes you chuckle. Besides that he seems to be wearing a regular t-shirt under that as well as a pair of black slacks. Body wise he has two large azue scaled wings that are held close to him, probably so that he doesn't knock anything over when he cooks. He also seems pretty well built under the apron and shirt, which makes you give an appreciative whistle. While you're admiring him Astor seems to notice this and raises a brow at you and chuckles.";

instead of conversing the Astor:
	say "     walking over to an empty stool in front of the counter where the grills are, you take a seat and look at Astor who gives you a look, as if nicely asking you what you want to talk to him about.";
	say "[AstorTalkMenu]";

to say AstorTalkMenu:
	LineBreak;
	say "What do you want to talk with Astor about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Four Lords";
	now sortorder entry is 1;
	now description entry is "Learn about him and the other nobles";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get Something To Eat";
	now sortorder entry is 2;
	now description entry is "Get some food";
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
				now sextablerun is 1;
				if nam is:
				-- "Four Lords":
					say "[AstorTalk1]";
				-- "Get Something To Eat":
					say "[AstorPurchase]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You get off the stool which just causes the dragon to chuckle and return to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AstorTalk1:
	say "     'The other Lords? You're asking me what I think about them?' He asks with a nod of his head. You nod, wanting to get his opinion[if loyalty of Sheng is 5], especially of your Master[end if]. Shrugging his shoulders he works on some of the food orders he has in front of himself before continuing to talk. 'Well, they're not bad people first things first.' He says, stirring a pot of stew to his left. You nod, waiting for him to continue. 'Sheng can be a bit strict with his personality but he softens up when he gets to know you.' The dragon says with a shrug of his shoulders. [if loyalty of Sheng is 5]You nod eagerly, causing him to glance at you and notice the collar. 'Oh... you must be his pet he's talking about, well, it's nice to meet you. He seems to really care for you.' Astor says with a smile.[end if]";
	say "     'Serafino... he's kinda special, not in a bad way, but I swear he's the reason for most of the nudity and public sex complaints we get from the citizens.' Astor says with a roll of his eyes as he turns to flip a burger. You raise a particularly interested look at that. 'Ah, well... he likes being very public about his relations and let's leave it at that.' He says with a general air of, let's move on. 'Kuo I think is the most calm of all of us, but that's to be expected considering he runs a dojo. But it's also doubly to be expected when it doubles as a place of sex.' Astor says with a drawl as he peters off that statement.";
	WaitLineBreak;
	say "     You take a double take as he says that last bit, giving him a blank look. 'Well, if you lose or win you can have sex with the opponent. Of course it's all willing so nobody gets hurt really.' He says. Astor goes to serve the food he's been cooking before humming and thinking outloud. 'Overall I wouldn't give them up for anything. Cause they're my friends and have been for a really long time.' He says with a smile. You smile back at that statement, glad that the dragon has such good friends. Seeing that you've reached the end of the topic you let him focus back on his work.";

to say AstorPurchase:
	say "     You tell the dragon you'd love to get some food, asking him what he has to choose from. 'Oh! Well I do have a menu right here!' Astor says, pulling out a piece of paper from under the counter and sliding it right in front of you.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bull's Burger";
	now sortorder entry is 1;
	now description entry is "Get the strength and stamina of a bull by eating this meal!";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Kitsune Stirfry";
	now sortorder entry is 2;
	now description entry is "Be as dexterous and charismatic as a kitsune with this meal!";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Monkey Stew";
	now sortorder entry is 3;
	now description entry is "Gain the intelligence and perception of a monkey by eating this meal!";
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
				if nam is:
				-- "Bull's Burger":
					say "[BullsBurgerSale]";
				-- "Kistune Stirfry":
					say "[KitsuneStirfrySale]";
				-- "Monkey Stew":
					say "[MonkeyStewSale]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head at the list of food and say you dont find anything interesting today. Astor nods and takes the menu away.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BullsBurgerSale:
	if "Strength of the Bull" is listed in feats of player or "Dexterity of the Kitsune" is listed in feats of player or "Intelligence of the Monkey" is listed in feats of player:
		say "     Astor shakes his head at you. 'Sorry friend, but you've already gotten something recently, the food's not gonna be any good to you.' The dragon says. You nod your head, understanding as he gets back to work. Best you wait for the food to wear off.";
	else:
		say "     Kicking your legs while sitting at the stool, you finally decide at what you want and voice that you'd like one Bull's Burger. Astor nods and hums with a look at you. 'Do you have the fish for payment?' He asks, holding out a bucket that has fish in it already. You hurriedly take a look towards your backpack.";
		if carried of tasty fish > 1:
			say "     [bold type]Aware that you are carrying enough fish, do you want to give it to him?[roman type][line break]";
			say "     [link]Y[as]y[end link] - Yeah!";
			say "     [link]N[as]n[end link] - Nah.";
			if Player consents:
				say "     Taking out the two fish you hand them over, causing the dragon to take them and put them in the bucket. He then begins to start cooking, putting a patty on the grill and flipping it repeatedly, the scent of meat filling the air. A few minutes later Astor pulls out a plate, puts on a bun, and starts layering it bit by bit. When he's done it's a mouthwatering masterpiece that you want to bite into right away. Thankfully the dragon serves it right in front of you soon after and tells you to dig in to which you eagerly do. The burger is nice and juicy, filling your mouth with a rich taste. The condiments and toppings compliment with a nice perfection that makes you moan in delight. If you were to look at Astor you would see him smirking. It's no surprise that about a minute later the burger is gone and your plate is empty, leaving you rather sad. The dragon grabs your plate and puts it in the sink and thanks you for your patronage.";
				decrease carried of tasty fish by 2;
				add "Strength of the Bull" to feats of player;
				StatChange "Strength" by 10;
				StatChange "Stamina" by 10;
				say "     Your stamina and strength have gone up by 10 temporarily for the next twenty-four hours!";
				now BullStrengthTimer is turns;
			else:
				say "     You shake your head and say you've changed your mind, causing Astor to nod and return to his work as you stand back up.";
		else:
			say "     Apologizing when you realize there's no fish in your backpack, Astor says it's alright. 'Just come back when you have enough and I'll happily make your food!' He says with a smile.";

to say KitsuneStirfrySale:
	if "Strength of the Bull" is listed in feats of player or "Dexterity of the Kitsune" is listed in feats of player or "Intelligence of the Monkey" is listed in feats of player:
		say "     Astor shakes his head at you. 'Sorry friend, but you've already gotten something recently, the food's not gonna be any good to you.' The dragon says. You nod your head, understanding as he gets back to work. Best you wait for the food to wear off.";
	else:
		say "     Kicking your legs while sitting at the stool, you finally decide at what you want and voice that you'd like one Kitsune Stirfry. Astor nods and hums with a look at you. 'Do you have the fish for payment?' He asks, holding out a bucket that has fish in it already. You hurriedly take a look towards your backpack.";
		if carried of tasty fish > 1:
			say "     [bold type]Aware that you are carrying enough fish, do you want to give it to him?[roman type][line break]";
			say "     [link]Y[as]y[end link] - Yeah!";
			say "     [link]N[as]n[end link] - Nah.";
			if Player consents:
				say "     Digging out the fish and passing it over, you watch him toss it into the bucket. He then begins to get out all the ingredients for the stirfry, tossing it into the pan one by one as he slowly makes it. As the sizzling of the cooking utensil grows, so does the smell of the food, which makes you drool. The scent of the vegetables and the chicken, everything altogether just makes you want to devour it right now. Thankfully though Astor is finished rather soon. He quickly scoops it onto your plate and slides it in front of you and tells you to dig in, to which you do. The stir fry tastes absolutely amazing, lighting up your tastebuds in pleasure as soon as the first bite hits your tongue, causing you to moan out loud. You hear Astor chuckling at you from behind the grill, but you ignore him in favor of the food. Soon and sadly enough the stir fry is gone, leaving you an empty plate which Astor promptly grabs and puts in the sink, thanking you for your patronage.";
				decrease carried of tasty fish by 2;
				add "Dexterity of the Kitsune" to feats of player;
				StatChange "Dexterity" by 10;
				StatChange "Charisma" by 10;
				say "     Your dexterity and charisma have been temporarily increased by 10 for the next twenty-four hours!";
				now KitsuneDexterityTimer is turns;
			else:
				say "     You shake your head saying you're not interested in stirfry actually at the moment. Astor nods and says that's alright before returning to his cooking.";
		else:
			say "     You apologize profusely as you realize you dont have the required amount of fish. Astor chuckles and says it's alright, just return with the correct amount and he'll serve you up some food.";

to say MonkeyStewSale:
	if "Strength of the Bull" is listed in feats of player or "Dexterity of the Kitsune" is listed in feats of player or "Intelligence of the Monkey" is listed in feats of player:
		say "     Astor shakes his head at you. 'Sorry friend, but you've already gotten something recently, the food's not gonna be any good to you.' The dragon says. You nod your head, understanding as he gets back to work. Best you wait for the food to wear off.";
	else:
		say "     Humming you think for a bit before you point at something at the menu. 'Oh you'd like the stew' He asks. You nod eagerly wanting to try it out. The dragon nods before speaking up again. 'Well, hopefully you have the required payment for me to cook it.' He says with a look towards you, causing you to look in your backpack for fish.";
		if carried of tasty fish > 1:
			say "     [bold type]Aware that you are carrying enough fish, do you want to give it to him?[roman type][line break]";
			say "     [link]Y[as]y[end link] - Yeah!";
			say "     [link]N[as]n[end link] - Nah.";
			if Player consents:
				say "     Pulling out the fish you toss it to him, of which he catches easily. The dragon puts it in the bucket and sets that down before getting to work by setting a pot down. Astor skillfully chops various vegetables and meats one by one before tossing them all into the pot which starts bubbling and boiling, causing a delicious aroma to fill the air as the broth starts to form. Once he's done with all the ingredients he begins to stir it which causes shivers to go down your spine as you're hit with a faceful of the wonderful scent that is the food. Thankfully though he quickly manages to finish cooking surprisingly enough. He takes out a bowl and scoops the stew into it before plopping it right in front of you. The first bite you take is heavenly and literally causes you to groan and moan, making Astor smirk in your direction. It's not a surprise that you finish it rather quickly. When you're done you let out a sad sound as he collects the bowl and thanks you for your patronage.";
				decrease carried of tasty fish by 2;
				add "Intelligence of the Monkey" to feats of player;
				StatChange "Intelligence" by 10;
				StatChange "Perception" by 10;
				say "     Your Intelligence and Perception have temporarily increased by 10 for the next twenty-four hours!";
				now MonkeyIntelligenceTimer is turns;
			else:
				say "     Shaking your head you tell him that you're not feeling stew at the moment, though you'd love to try it some other time. He nods and says to come back when you want something to eat, returning to his cooking.";
		else:
			say "     Apologizing profusely for not having any fish on you, Astor says it's okay. 'Just make sure you return with the required payment, then I can feed you what food you want.' He says with a smile, causing you to smile back.";


Section 3 - Buff Timers

An everyturn rule:
	if "Strength of the Bull" is listed in feats of player and (BullStrengthTimer - turns > 7):
		remove "Strength of the Bull" from feats of player;
		StatChange "Strength" by -10;
		StatChange "Stamina" by -10;
		say "     Your Bull's Burger has worn off! You might want to go back to Astor's Restauraunt for more food.";

An everyturn rule:
	if "Dexterity of the Kitsune" is listed in feats of player and (KitsuneDexterityTimer - turns > 7):
		remove "Dexterity of the Kitsune" from feats of player;
		StatChange "Dexterity" by -10;
		StatChange "Charisma" by -10;
		say "     Your Kitsune Stirfry has worn off! You may want to go back to Astor's Restaurant to get some more food!";

An everyturn rule:
	if "Intelligence of the Monkey" is listed in feats of player and (MonkeyIntelligenceTimer - turns > 7):
		remove "Intelligence of the Monkey" from feats of player;
		StatChange "Intelligence" by -10;
		StatChange "Perception" by -10;
		say "     Your Monkey's Stew has worn off! You may want to go back to Astor's Restaurant to get some more food!";


Astor ends here.
