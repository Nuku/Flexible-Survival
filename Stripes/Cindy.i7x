Version 2 of Cindy by Stripes begins here.
[ Version 2.0 - Cindy Revealed ]

"Adds a human? shop owner on the beach."

Section 1 - Sunny Snacks

Sunny Snacks is a room. 
Sunny Snacks is northeast of Public Beach.
The description of Sunny Snacks is "[sunnysnacksdesc]".

the scent of Sunny Snacks is "The scent of the beach hangs in the air, though there's the tasty smells of snacks in the air as well.".

to say sunnysnacksdesc:
	say "     Build onto a shelf of rock on the cliffside, this small building is located partway between the sandy beach below and the plaza above. Aside from likely providing some protection from the tides and storms, it also provides an excellent view of the beachgoers. The shop itself is a mix between a restaurant and a concession stand, having a wide window and counter with a few stools in front and the shopkeeper behind. There's also a couple of patio tables with parasols set out on the small plateau in front of it. The building is white with sky-blue trim while the sign above the window declares the place to be 'Sunny Snacks' and has a bright sun rising above the words. To either side of the service counter are the [link]menu[as]look menu[end link]. The person inside running the place is a surprisingly human woman, a definite oddity these days, especially for one so out in the open.";


Section 2 - Cindy

Cindy is a woman. Cindy is in Sunny Snacks.
The description of Cindy is "[cindydesc]".
The conversation of Cindy is { "What can I get you?" }.
the fuckscene of Cindy is "[nosexwithcindy]".
the scent of the Cindy is "The scent of the beach and her various wares are what you smell.".

to say cindydesc:
	cindycheck;
	say "     The concession stand is run by a human woman called Cindy. Despite all the infected creatures out on the beach and coming up to her little restaurant, she seems completely uninfected. She's wearing what you can tell is a rather skimpy two-piece bikini under a white t-shirt emblazoned with the 'Sunny Snacks' name and sun-logo. She's got curly black hair, brown eyes and a olive skin. She has a Grecian look to her beautiful face and appears to be in her mid-twenties. By no means fat, she does look like she's put on a few pounds, though she carries it well.";

instead of conversing Cindy:
	cindycheck;
	if hp of Cindy is 0:
		say "     'Hello there. Welcome to the [']Sunny Snacks[']. What can I get you?' She motions to the [link]menu[as]look menu[end link] boards on either side of the concession window.";
		now hp of Cindy is 1;
	else if hp of Cindy is 1 and a random chance of 1 in 3 succeeds:
		say "     Cindy chats up a cute otter who's come to the counter. He's wearing nothing but a plastic whistle around his neck. With a wink and a playful teasing of his headfur, she invites him to come into the back for a bit. She temporarily closes the counter window and you can hear the sounds of them fucking inside. After he leaves and she opens up again, there's she shows no signs of infection at all. She looks just as human as before.";
		increase hp of Cindy by 1;
	else if hp of Cindy is 2 and a random chance of 1 in 3 succeeds:
		say "     Decide to ask Cindy if she knows why she's not become infected like the others, but she shushes you[if cocks of player > 0] sharply[end if]. Leaning over the counter to get a better look, she gazes down at the beach where an cat-eared guy's been lured onto a sun-bathing pantheress[']s blanket. What starts out friendly enough with talking and light touches, soon goes from a seemingly innocent kiss to the dark female petting and then groping the reluctant male as she strips his clothes off.";
		say "     Knowing where this is going, Cindy slips her right hand into her bikini and the left under her shirt. She moans as she starts fingering herself to the scene playing out[if cocks of player > 0]. Noticing you ogling at her, she gives you a disdainful look before shifting her attention back to the beach[end if]. 'Mmm... yeah... let's see it,' she half-whispers as she stares down at the couple. 'Do it, kitty.'";
		say "     Events continue to play out, the feline's pulls the guy's cock out and climbs atop him. Pinning him down, she bounces on his pole. Black fur starts creeping up his belly as her starts spreading to him. 'Yeah.. That's the stuff...' Cindy moans as the victim's transformation continues, changing his body and eventually his head. By the time it's run his course and the guy's become a matching male panther, the waitress has to stiffle a moaning orgasm from what she's witnessed.";
		say "     'Ahhhhh. Damn! That's always soooo hot to see happen.' She pants to recover her breath and wipes her hands on a dish towel. 'As inconvenient as having gotten stuck here is, the entertainment more than makes up for it. Speaking of, I could go for some private entertainment,' she says with a grin.";
		say "     For a moment, you [if cocks of player > 0]allow yourself to hope that[otherwise]think[end if] she might mean with you, but she whistles over to the lifeguard and gives him a signal. The buff orca is down the ladder in a flash, sending a familiar-looking otter up to take his post. For such a big guy, he dashes up the steps very quickly and joins her in the back for what sounds like a very energetic round of fucking. Again when she emerges, she's left unchanged despite the heavy scent of orca sex lingering about her.";
		increase hp of Cindy by 1;
	else if hp of Cindy is 3 and a random chance of 1 in 3 succeeds:
		say "     Noticing that Cindy seems to be in a good mood at the moment, you ask her what her story is. She gets a little guarded and loses some of her earlier smile, but then shrugs and relaxes a bit. 'Not much to say. I was travelling when this whole mess got started and got stuck here. So no, I don't really own this place or even work here. I just took it over because it's where I've ended up. It gives me something novel to do while I wait for this mess to settle down.' She grins and nods down to the beach. 'And it comes with quite the view. So many interesting creatures and transformations to witness. I don't even have to do anything and I'm treated to such an imaginative range of entertainment.'";
		say "     You ask if she knows why she's not become infected like the others. You've seen her have sex on a few occasions now, but she's remained unchanged. She looks you over again, as if assessing you with a very keen eye. In the end, she just gives a little laugh. 'Come now. A girl's got to have her secrets.' And with that, she closes the service window for a while to do work inside.";
		increase hp of Cindy by 1;
	else:
		say "[randomdesc2]"; [randomly selects a female 'slutname' for below]
		say "     [one of]Cindy's a little too busy with other customers to chat.[or]'What would you like to order?' she asks, motioning to the [link]menu[as]look menu[end link].[or]The large orca sitting on lifeguard duty waves to her from his watchpost and she nods. She sends down a fishburger and some fries for him with the next customer.[or]The woman takes a moment to fan herself while drinking a soda. 'I'm glad I've got plenty to drink to deal with the heat, but it's not helping my waistline,' she grumbles.[or]Cindy only half-listens to you, her attention focused on a pair of transformed individuals fucking on the beach.[or]While making an order, a male customer makes a rather crude pass at Cindy, fondling his junk right in front of her. She just eyes him up and down coldly, her usual friendly demeanour gone and completely unimpressed by his over-sized manhood. 'Don't even think of it, swine. If you keep this up, you'll end up face first in the garbage.'[or]You watch Cindy serve a few customers, noticing the eclectic assortment of sodas and chips she provides. While not unusual in and of itself, stranger still is the range of different styles and quality she'll provide for the same food order.[or]You find yourself ogling the lovely woman as she goes around cleaning up the tables. Noticing you staring at her ass when she bends over, she [if cocks of player > 0]glares at you, hand raised as if ready to point accusingly at you. 'You pig,' she grumbles in the end. After tossing the trash at you, she storms back inside[otherwise]grins a little and makes a show of grinding her butt into the lap of another female patron she's clearly quite familiar with before heading back inside[end if].[or]Bringing over her orders to the table, you watch as Cindy gets rather friendly with a [if a random chance of 1 in 4 succeeds]herm[otherwise]female[end if] [slutname]. There's quite a bit of playful groping and sexual fondling between the two of them before the woman gets back to work.[or]Cindy puts a [']Back in 15 minutes['] sign up and closes the sales window, explaining that she's got do some inventory work.[in random order]";
	

to say nosexwithcindy:
	cindycheck;
	if cocks of player > 0:
		if hp of Cindy is 0:
			say "     You go up to the human woman and start putting the moves on her, saying you'll to rock her world. She gives you a snort and tosses her half-finished soda in your face. 'What kind of a pig comes up and asks a woman for sex without even introducing themselves?  Why I should...' she pauses, glancing at the other customers watching the confrontation and takes a deep breath. 'Look. I'm feeling generous, but you better watch your step.'";
			now hp of Cindy is 1;
		else:
			say "     [one of]Cindy does not seem particularly impressed at your suggestion of going into the back for sex. She probably gets a lot of offers like that.[or]You try to chat up the restauranteure, but she rebukes your attentions rather harshly. 'Don't go getting any funny ideas. I'm not in the mood right now, you pig. Besides - I'm way out of your league,' she says curtly.[at random]";
	else:
		if hp of Cindy is 0:
			say "     You go up to the human woman and start putting the moves on her, saying you'll to rock her world. She just laughs. 'I think [']my world['] is more than you can handle. You're cute, but it's rude to make such an offer to someone you've not even met.'";
			now hp of Cindy is 1;
		else:
			say "     You try to chat up the restauranteure, but she rebukes your attentions rather harshly. 'Look. You're kinda cute, but I've got plenty of [']friends['] out there on the beach for that already. Besides - I'm way out of your league,' she adds.";


Section 3 - Vending

ssvending is an action applying to nothing.
understand "look menu" as ssvending.

check ssvending:
	if location of player is not Sunny Snacks:
		say "You don't see that around here." instead;

carry out ssvending:
	say "     You look over the menu of available options from the little restaurant. Many of the menu items have been taped over, clearly not available right now, but there's still several options available. The prices have all been taped over as well with new ones in freecred instead of dollars and cents.";
	now sextablerun is 0;
	now calcnumber is -1;
	say "[link]1 - Soda pop[as]1[end link] - 75[line break]";
	say "[link]2 - Chips[as]2[end link] - 75[line break]";
	say "[link]3 - Hot Dog[as]3[end link] - 120[line break]";
	say "[link]4 - French Fries[as]4[end link] - 120[line break]";
	say "[link]5 - Ice Cream Sundae[as]5[end link] - 150[line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber is 1:
			if freecred < 75:
				say "You don't have enough credits for that.";
			else:
				say "     Ordering a can of soda, Cindy grabs one from under the counter[one of][or] of the requested flavour[or]. It's unrefrigerated but is still quite refreshing[or]. It's probably some generic store brand you don't recognize, but it seems fine[as decreasingly likely outcomes]. You pay her for the pop.";
				increase carried of soda by 1;
				decrease freecred by 75;
				now sextablerun is 1;
		else if calcnumber is 2:
			if freecred < 75:
				say "You don't have enough credits for that.";
			else:
				say "     Requesting some chips, she pulls a single-serving bag out from under the counter[one of][or][or] of the requested flavour[or]. They're an off-brand you've never heard of[as decreasingly likely outcomes].";
				increase carried of chips by 1;
				decrease freecred by 75;
				now sextablerun is 1;
		else if calcnumber is 3:
			if freecred < 120:
				say "You don't have enough credits for that.";
			else:
				say "     Wanting a hot dog, Cindy has to go into the back to get it for you[one of][or]. You have to wait a little while before she emerges with dog[or]. She returns pretty quickly from the back kitchen area[at random][one of]. It's your run-of-the-mill ballpark frank[or]. While one of the small-sized red hots, it is very fresh and in a nicely steamed bun[or]. It's not particularly warm, but it's a jumbo-sized dog, so you don't bother complaining[or]. The bun's been buttered and toasted - Nice[or]. It's already got some toppings on it for some reason, but nothing you seriously object to, so you don't make a fuss[as decreasingly likely outcomes]. Since it won't really keep, you eat it right now, happy just to eat anything not out of a can.";
				if morale of player < 0:
					increase morale of player by 36;
					if morale of player > 0, now morale of player is 0;
					say "     You feel much better after having had your snack.";
				decrease hunger of player by 9;
				if "Junk Food Junky" is listed in feats of player:
					decrease hunger of player by 11;
				if hunger of player < 0, now hunger of player is 0;
				decrease freecred by 120;
				now sextablerun is 1;
		else if calcnumber is 4:
			if freecred < 120:
				say "You don't have enough credits for that.";
			else:
				say "     Ordering some fries, Cindy goes into the back to get it for you[one of][or]. You have to wait a little while before she emerges with your order[or]. She returns pretty quickly from the back kitchen area[at random][one of]. You're given the fries in a plain paper container[or]. You're given a cupful of freshly made and seasoned crinkle fries[or]. The thin-cut fries are lukewarm, but you've been given a large order of them to make up for that[or]. You don't smell or hear a fryer, but she comes out with a fresh batch of hot fries for you[or]. Sweet! An order of fresh, hot, home-cut fries[as decreasingly likely outcomes]. You've got to eat them right away, but they make for a great change of pace from your recent meals.";
				if morale of player < 0:
					increase morale of player by 36;
					if morale of player > 0, now morale of player is 0;
					say "     You feel much better after having had your snack.";
				decrease hunger of player by 9;
				if "Junk Food Junky" is listed in feats of player:
					decrease hunger of player by 11;
				if hunger of player < 0, now hunger of player is 0;
				decrease freecred by 120;
				now sextablerun is 1;
		else if calcnumber is 5:
			if freecred < 150:
				say "You don't have enough credits for that.";
			else:
				say "     Wanting some ice cream, you order a sundae. Cindy excuses herself to go into the back to get it[one of][or]. You have to wait a little while before she emerges with your order[or]. She returns pretty quickly from the back kitchen area[at random][one of]. She returns with a sundae topped with chocolate fudge and sprinkles[or]. She returns with ice cream topped with a spiral of chocolate syrup and some peanut chunks[or]. You're given a plastic bowl with some soft-serve ice cream in it with some strawberry topping and some nuts[or]. 'Sorry. This is the best that I could do.' She plops down a bowl with some scoops of ice cream with some broken cookie chunks atop it[or]. You're actually given a banana split with three kinds of ice cream, chocolate and caramel syrups, nuts, whipped cream and a cherry. Wow! While not what you ordered, Cindy just gives you a smile and wink[as decreasingly likely outcomes]. Rather than let it melt, you gobble down the cool treat and feel a little happier afterwards for it.";
				if morale of player < 0:
					increase morale of player by 36;
					if morale of player > 0, now morale of player is 0;
					say "     You feel much better after having had your snack.";
				decrease hunger of player by 9;
				if "Junk Food Junky" is listed in feats of player:
					decrease hunger of player by 11;
				if hunger of player < 0, now hunger of player is 0;
				decrease freecred by 150;
				increase morale of player by 2;
				now sextablerun is 1;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide not to purchase anything at the moment.";


Section 4 - Unwanted Trouble

instead of going west from Beach Plaza when ( hp of Cindy is 4 and a random chance of 2 in 3 succeeds ) and ( cocks of player > 0 or cunts of player > 0 ):
	say "     As you start down the steps to the beach, there's an obvious commotion going on. A large squad of muscular men in naught but sandals, red cloaks and Grecian helmets are attacking the peaceful beachgoers. Some of the latter being dragged off, though some are being assaulted right then and there. A half-dozen of these soldiers are storming up the stairs to the Sunny Snacks patio, pushing past the mutants trying to flee down the stairs. You can see Cindy, the only one left up there, about to be cornered and outnumbered by the attackers.";
	say "     If you're going to do something, you'd best do it soon.";
	say "     [bold type]Shall you rush up to try to help the restauranteure or clear out like the other beachgoers are trying to do?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try to help.";
	say "     ([link]N[as]n[end link]) - Clear out.";
	if the player consents:
		say "     You rush over to the stairs leading up to the Sunny Snacks shack and scale them two at a time. You have to push past the last few people fleeing down the stairs. The muscular and bronze-tanned men have Cindy encircled, each edging threateningly toward her, but none making the move to cross the final gap and be the first to attack.";
		say "     'Foul woman!' 'We know who you are and we will have justice!' 'It's high time some proper men put you in your place.' 'Your tricks won't work on us, witch.' 'The men you've humiliated will be avenged.' 'A good fucking will teach you to respect real men.' The Spartan soldiers growl angrily at her from all sides.";
		WaitLineBreak;
		say "     While she's remained fairly composed, if angry, that final comment has made her furious. 'You dare to dream of fucking me?  I've humbled warriors far greater than the likes of you. You are nothing but pigs! Filthy swine! I will not be sullied by your touch.' As she rants, she seems to grow fiercer and more imposing.";
		say "     This sets off the Spartans and they charge in to attack. You lunge at one wielding a sword and wearing a fancier helmet, trying to do what you can to help. Taken by surprise, you're able to grapple with him while green flashes light up the area around you. Getting that cloak of his wrapped around his sword arm, you're able to pin him under you.";
		say "     As you're slugging the lead Spartan in the face a few times, you notice the sounds of squealing and oinking, but can't stop to see what's going on. This noise seems to light a fearful fire in the man's eyes and he wrestles himself on top. But rather than press his advantage over you, he jumps to his feet and runs for the stairs - only to be blasted in the back with a green beam of light. He stumbles as his feet turn to hooves. He fumbles his changing hands over his face as a piggy snout forms. His once-proud manhood shrinks away, leaving him, like the others, as filthy sows that squeal noisily as they flee from the wild-eyed Cindy.";
		WaitLineBreak;
		say "     For a moment, you fear she's going to blast you as well, but she lowers the staff she's holding. With a twist of her hand, it shrinks and changes, turning into a pencil that she tucks away. She strides over to you and smiles, offering you a hand to help you up.";
		say "     'It's not often that I need to thank [if cunts of player is 0]a man[otherwise]someone[end if] for coming to my aid. As you've seen, I could handle those foolish pigs, but the aid is appreciated. Some men are just--- arghh!' She takes a moment to take a deep breath and than then gives a sigh. 'And I guess you deserve an explanation. Come! We'll talk inside.'";
		WaitLineBreak;
		say "     You follow Cindy into the back of the Sunny Snacks and grab a seat. While she putters around for a few moments straightening up stuff, clearly to cool her head after the confrontation, you take the opportunity to look around. In some ways, it's as you'd expect such a vending shack to look. There's various boxes of snacks and coolers stocked with drinks as well as the fryers and fridges for the hot and cold foods. But it all looks off as well. The chips, for example, are an eclectic mix of bags - various flavours, brands and sizes, some you thought long discontinued. The same goes for the sodas, loosely assorted by type, but coming in a variety of brands. Among them, just as one example, is what appears to be a Japanese or possibly Korean can of Coke. There are odd flavours as well, including one that purports to be a [']Salmon Soda['] with a leaping fish on the can and everything. And while the place sells hot foods as well, the fryers are cleaned, empty and don't appear to have been used recently. Other oddities include an ornate china basin filled with cream soda, a collection of animal figurines, an old wooden chest (upon which the figurines sit) and a large divan with a silver frame and plush pillows at the back.";
		WaitLineBreak;
		say "     'I'm sorry for that outburst back there. I'm not normally like that - despite what you may have heard. My name is actually Circe. Yes, that Circe: Daughter of Helios, wife to the prince of Colchis, evil sorceress of the Odyssey,' she rolls her eyes at that last one. 'You punish some lecherous sailors and suddenly you're villainized for eternity as a man-hater. History really is written by men, let me tell you[if cocks of player is 0], sister[end if],' she grumbles.";
		let phumanbody be false;
		let phumanface be false;
		if bodyname of player is "human" or bodyname of player is "Human":
			now phumanbody is true;
		if facename of player is "human" or facename of player is "Human":
			now phumanface is true;
		if cocks of player > 0:
			say "     [bold type]'But despite what you may have heard, I don't hate all men. I didn't really bring you in here to talk, after all. How about, as thanks for coming to my aid, I show you just how much I can [']not hate['] a man I like?' she purrs, rubbing a hand over your crotch.[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				say "     With her offer accepted, she takes your throbbing manhood in hand and strokes it vigorously. '[if cock length of player > 20]Impressive,[else if cock length of player > 10]Very nice,[else if cock length of player > 4]Mmm...[otherwise]A tad small, comparatively, but that's fine,[end if]' she says. After some manual stimulation gets you fully hard, she straddles your lap. She makes a sexy show of sliding aside her bikini bottom to reveal her pussy. She's neatly trimmed and clearly wet with excitement. Giving you a kiss, she sinks herself down onto your [cock size desc of player] shaft[if cock length of player > 20]. Despite her normal appearance, the woman has no problem taking your colossal member. As if by magic, her cunt and belly adjust to provide a full, snug fit for your enlarged manhood[else if cock length of player > 10]. Despite her normal appearance, the woman has no problem taking your mighty member. As if by magic, her cunt and belly adjust to provide a full, snug fit for your enlarged manhood[else if cock length of player > 4]. Her cunt squeezes down around you, providing an amazingly perfect, snug fit for your manhood[otherwise]. Despite your diminutive size, her cunt seems to adjust to provide a full, snug fit for your small manhood[end if].";
				say "     Cindy, or Circe as she claims to be, rides you passionately. She works her hips and inner muscles with skill and zeal, filling you with pleasure. She's so good you'd worry about cumming quickly, but she's able to change it up enough to help you hold back, all while maintaining the sexual delight you feel. While the two of you fuck, your hands run over each other. Hers explore your [if phumanbody is false]transformed body and its changes with lustful interest[otherwise]body sensually[end if]. You run yours over her soft curves and the contours of her body. The two of you kiss frequently, her tongue exploring your [if phumanface is false]altered [end if]mouth like her hands have the rest of your form. Whether you believe her tale or not, she's certainly an experienced lover. And from how she's moaning and panting, you can tell she loving having a dick in her as well.";
				say "     When you do cum, you do so powerfully, pumping your [if cock width of player > 24]massive load[else if cock width of player > 16]mighty load[else if cock width of player > 8]considerable load[otherwise]ball's contents[end if] into the moaning sorceress. In her passion, her talented cunt tugs and squeezes around your pulsing meat for all it will give. By the time you're spent and done, you're left dizzy from the strength of your release. Despite her equally powerful orgasm, she recovers quickly and ries off you with a final peck before leaving you to enjoy the blissful afterglow while she goes back out. You rejoin her as soon as you're able and help her tidy up the patio. The beachgoers have begun to return after the raid and soon life has returned to its new version of normal on this beach.";
				now lastfuck of Circe is turns;
			else:
				say "     Not quite sure if you believe her or if she's merely deluded, you cautiously turn down her offer. She seems a little disappointed, but thankfully isn't upset. 'How noble of you, helping without any want of reward. Well, I should still thank you in some manner. Here, have some drinks on the house.' She pulls out several cans of pop from the fridge and passes them to you. 'And should you later decide you'd like to take me up on my original offer, it's still open.'";
				say "     From the sounds outside, it seems the Spartan assault is over. The two of you head back out and Circe starts tidying up the patio with your help. The beachgoers begin to return after the raid and soon life returns to its new version of normal on this beach.";
				increase carried of soda by 3;
		else:
			say "     'But that doesn't really matter right now. While I've enjoyed the company of plenty of men in my time, there's something to be said for the passion of a fine woman as well. What do you think?' she asks with a sultry smile. 'I didn't really bring you in here to talk, after all.";
			say "     [bold type]What do you say to a little [']reward['] as thanks for coming to my aid?' she purrs sensually, moving a hand to caress your side.[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				say "     You're tugged form the chair to the divan and pushed down onto it with Cindy, or Circe as she claims to be, beside you. Things start quickly with the curvy woman running her hands over your [if phumanbody is false]transformed body, exploring it and its changes with lustful interest. She doesn't shy away from your changes, if anything these are what she seeks out. Well, those and[otherwise]body sensually. Her touch seeks out[end if] every erogenous point she can find. And she locates many, her fingers deft at teasing pleasure from you. You do your best to do the same for her, though focusing mainly on the obvious points of her breasts, labia and clitoris. The two of you kiss repeatedly, her tongue exploring your mouth like her hands do the rest of your form. Whether you believe her tale or not, she's certainly an experienced lover. And from how she's moaning and panting, you can tell she loving your erotic touch as well.";
				say "     After this sensual examination, the two of you are really aroused and eager for more. Circe switches position, moving to 69 with you and diving her face between your legs. You finger and eat each other out to loud orgasms. After all the stimulation you've received, your mind-blowing climax leaves you dazed. Your lover, having had a no-less powerful release, recovers quickly and leaves you to bask in the afterglow while she goes back out. You rejoin her as soon as you're able and help her tidy up the patio. The beachgoers have begun to return after the raid and soon life has returned to its new version of normal on this beach.";
				now lastfuck of Circe is turns;
			else:
				say "     Not quite sure if you believe her or if she's merely deluded, you politely turn down her offer. She seems a little disappointed, but thankfully isn't upset. 'How noble of you, helping without any want of reward. Well, I should still thank you in some manner. Here, have some drinks on the house.' She pulls out several cans of pop from the fridge and passes them to you. 'And should you later decide you'd like to take me up on my original offer, it's still open.'";
				say "     From the sounds outside, it seems the Spartan assault is over. The two of you head back out and Circe starts tidying up the patio with your help. The beachgoers begin to return after the raid and soon life returns to its new version of normal on this beach.";
				increase carried of soda by 3;
		increase score by 20;
		remove Cindy from play;
		move Circe to Sunny Snacks;
		move player to Sunny Snacks;
		now hp of Cindy is 6;
	else:
		say "     Knowing you can do little against a mob of trained warriors, you see no point in entering the fray. The denizens of the beach, Cindy included, will have to look out for themselves. You turn and rush back up the stairs amid a throng of other fleeing beachgoers. You take cover inside the church which is openly welcoming the escaping mutants.";
		move player to Church Hall;
		now hp of Cindy is 5;
	

Section 5 - Circe

Circe is a woman.
The description of Circe is "[circedesc]".
The conversation of Circe is { "What can I get you?" }.
the fuckscene of Circe is "[sexwithcirce]".
the scent of the Circe is "The scent of the beach and her various wares are what you smell.".

to say circedesc:
	cindycheck;
	say "     The concession stand owner whom everyone knows as Cindy claims to actually be the mythical sorceress Circe. And given what you've seen her do, you're inclined to at least consider it a possibility. Despite all the infected creatures out on the beach and coming up to her little restaurant, she does seem completely uninfected and is unaffected by her many romps with them. She also takes a decidedly perverse enjoyment in the varied bestial forms her patrons have and always watches with keen interest should anyone on the beach be getting transformed.";
	say "     Circe has curly black hair, brown eyes and a olive skin. She has a Grecian look to her beautiful face and appears to be in her mid-twenties. She's wearing what you can tell is a rather skimpy two-piece bikini under a white t-shirt emblazoned with the 'Sunny Snacks' name and sun-logo. By no means fat, she does look like she's put on a few pounds, though she carries it well.";

instead of conversing Circe:
	cindycheck;
	if hp of Cindy is 6 and a random chance of 1 in 3 succeeds:
		say "     'I may have fibbed about my name, but it pays to be cautious when you've got a reputation like mine. I've been maligned and misrepresented by history,' she growls. 'I mean, yeah I could be a little bitchy back in the day, but the accounts have all been very one-side. Events have been blown out of proportion and taken out of context. Those guys had it coming and it's not like I was going to leave them like that. Probably not, anyhow. Still, as you can see from how those warrior rejects reacted, I'd rather things be kept quiet about who I really am.'";
		increase hp of Cindy by 1;
	else if hp of Cindy is 7 and a random chance of 1 in 3 succeeds:
		say "     'My story's essentially the same as I'd told you. I happened to be travelling when this mess you mortals have unleashed was set off. It really shook things up in the nearby planes and I ended up tumbling down here. Honestly, I'm not the best at world hopping and things are still to unstable for me to try getting back quite yet. Besides, I'm having fun hanging out and enjoying the sights.' From the way you've seen her ogle the transformed beachgoers, you know quite well exactly what [']sights['] she's enjoying.";
		increase hp of Cindy by 1;
	else if hp of Cindy is 8 and a random chance of 1 in 3 succeeds:
		say "     'I don't mind running this place while I wait. I landed on this beach and decided working here would provide a nice cover and be a fun change of pace. I provide food that I don't even have to make and I get plenty of entertainment in return. I get to see all these kinky creatures and transformations - and I don't even have to lift a finger for any of it to happen. They've given me so many fun and interesting ideas for when I get back home.'";
		increase hp of Cindy by 1;
	else:
		say "[randomdesc2]"; [randomly selects a female 'slutname' for below]
		say "     [one of]Circe's a little too busy with other customers to chat, though she does give you smile.[or]'Is there anything you like to order?' she asks, motioning to the [link]menu[as]look menu[end link].[or]The large orca sitting on lifeguard duty waves to her from his watchpost and she nods. She sends down a fishburger and some fries for him with the next customer.[or]The woman takes a moment to fan herself while drinking a soda. 'I'm glad I've got plenty to drink to deal with the heat, but it's not helping my waistline,' she grumbles.[or]You go to talk to Circe, but her attention focused on a pair of transformed individuals fucking on the beach.[or]You watch [']Cindy['] serve a few customers, noticing the eclectic assortment of sodas and chips she provides. While not unusual in and of itself, stranger still is the range of different styles and quality she'll provide for the same food order.[or]You find yourself ogling the lovely woman as she goes around cleaning up the tables. Noticing you staring at her ass when she bends over, she [if cocks of player > 0]gives her rear a wiggle. 'You pig,' she teases, a joking insult with added meaning[otherwise]grins a little and makes a show of grinding her butt into the lap of another female patron she's clearly quite familiar with before heading back inside[end if].[or]Bringing over her orders to the table, you watch as [']Cindy['] gets rather friendly with a [if a random chance of 1 in 4 succeeds]herm[otherwise]female[end if] [slutname]. There's quite a bit of playful groping and sexual fondling between the two of them before the woman gets back to work.[or]Circe puts a [']Back in 15 minutes['] sign up and closes the sales window, explaining that she's got do some inventory work.[or]'[if lastfuck of Circe - turns < 6]I'm a little too busy right now for some fun, but I'd definitely be up for something later, if you're in the mood[otherwise]Things aren't too busy right now. Let me know if you'd like me to thank you again for your help[end if],' she says with a sultry smile.[or]'Thanks again for coming to my rescue. It's nice to have someone want to be [']my['] hero for a change.'[or]'I don't normally get nearly this much sex back where I come from. I mean, I've got a few lovers and my little collection of [']playthings['], but I'd normally not indulge in fornicating several times a day and not with so many different and varied lovers. I'm a little worried this place making me into a bit of a slut,' she jokes even as she eyes some of mutants on the beach making out.[or]'The great variety of transformations I get to see, and to fuck, has been so much fun. As far as being stranded goes, this is proving to actually be quite enjoyable.'[in random order]";

Section 6 - Sexy Times with Circe

to say sexwithcirce:
	cindycheck;
	if cocks of player is 0 and cunts of player is 0:
		say "     Being genderless at the moment, you don't see much point in trying to engage Circe in sexual antics.";
		[***future note - maybe she 'helps' with this.]
	else if lastfuck of Circe - turns < 6:
		say "     [one of]'I'm a bit busy with customers right now, but check back with me later and I'm sure I can make time for you, hot stuff,' she says sensually while giving you a playful fondle.[or]'I know we've had lots of fun together, but even I do need a break from sex from time to time.'[or]'Don't be greedy, hon. I'd think you're trying to [']hog['] me all for yourself. I've got plenty of other interesting customers who I'd like to go a round or two with.'[or]'I'd actually promised another of the beach hotties a little fun, so maybe next time I can take a break.'[or]'It's flattering how much interest you're showing in a tubby woman such as myself,' she says, poking those few extra pounds she's put on from her junk food diet, 'but I do have some customers to deal with. If I'm going to try being a shop owner, I do have to do the work at least some of the time.'[as decreasingly likely outcomes]";
	else:
		let phumanbody be false;
		let phumanface be false;
		let phumancock be false;
		if bodyname of player is "human" or bodyname of player is "Human" or bodyname of player is "Herm Human" or bodyname of player is "herm human":
			now phumanbody is true;
		if facename of player is "human" or facename of player is "Human" or facename of player is "Herm Human" or facename of player is "herm human":
			now phumanface is true;
		if cockname of player is "human" or cockname of player is "Human" or cockname of player is "Herm Human" or cockname of player is "herm human":
			now phumancock is true;
		say "     Circe smiles at your offer and makes a quick check of the patio. 'I think the customers are all set right now. I think I can slip away for a little fun.' She posts up her 'Back in 15 min' sign and leads you inside the snack shack. After some heavy petting while the two of you get undressed, you end up with her on the silver framed divan.";
		if cocks of player > 0 and bodyname of player is listed in infections of caninelist and cockname of player is listed in infections of caninelist and a random chance of 2 in 3 succeeds:	[M/F doggy player gets doggy-style]
			say "     'Mmm... you make quite the sexy beast. How about we get the doggy to bury his bone?' she says in a sultry tone. She slips her bikini bottom off before getting on all fours and displaying her curvy ass and hot, eager pussy for you. With a grin and a spank on her plush rear, she invites you to hop on up and fuck her like the horny dog of a man you are.";
			say "     With such an offer from the beautiful woman, you move atop her with a playful growl. Getting your doggy dick lined up, you slide your [cock size desc of player] cock into her. She turns out to be a perfect fit for your canine cock, taking you full with a snug grip. Thus mounted on the willing female, you let your doggy urges take over and hump her like an animal. She moans in delight, grinding her hips back and urging you to fuck you like a beast.";
			say "     You fuck Circe energetically and she takes it with equal enthusiasm. Her cunt squeezes and milks at your cock with every thrust. You make wild, rough love to the sexy sorceress. And you do so like the beast she urges you to be, licking and nipping at her neck and shoulders, growling lustfully and panting heavily[if cockname of player is listed in infections of knotlist]. When you finally drive your knot fully into the woman and tie with her[otherwise]. When your climax hits and you drive your pulsing shaft fully into the woman[end if], she cries out in ecstasy and clamps down tight around it. You cum hard, pumping your canine-tainted seed into her wanton womb.";
			say "     You are both quite won and thoroughly satisfied after this round of hot sex. You roll onto your side, spooning with her while basking in the afterglow[if cockname of player is listed in infections of knotlist] while waiting for your knot to go down, though neither of you is in a hurry to separate. Eventually though, it does shrink and[otherwise], though neither of you is in a hurry to separate. Eventually though,[end if] she has to get back to running her little business. You get shooed out so she can do some restocking and sent back out to enjoy the beachfront patio.";
		else if cocks of player > 0:	[M/F player ridden]
			say "     With you on your back, Circe straddles you with her hands on your chest. She starts grinding her wet folds across your[if phumancock is false] altered[end if] manhood while her hands roam your [if player is not bodily human][bodytype of player] body. She takes sensual interest in your altered form, clearly turned on by your changes[otherwise]body. Her touch is sensual and delightful, really turning you on[end if]. Both excited from this hot foreplay, you give satisfied moans as she lowers herself onto your [cock of player] pole[if cock length of player > 10]. Despite your size, she[otherwise]. She[end if] feels like a perfect fit for you, her wet cunt gripping your meat firmly and fully.";
			say "     The sorceress rides your [cock size desc of player] cock with obvious enthusiasm. Her cunt squeezes and tugs at your meat as she moves over it. Her hot pussy feels great and works it with obvious skill. Her own sexual delight is obvious as well, her moans loud and frequent. You cup the woman's breasts and play with her nipples, admiring what a fine pair of tits she's got for a woman millennia old. And while she may grumble at times about the weight she's put on, it's not as bad as all that and makes her a little softer and curvier.";
			say "     Circe playful hands are very talented, finding plenty of sensitive and sensual spots to touch and tease you[if phumanbody is false]. She clearly delights in enjoying your altered body, checking out every change with lustful interest[end if]. Between this and her hardworking vaginal muscles, you're eventually worked up to a powerful orgasm that has you cry out as you drain your ball's contents into her quivering cunt. Her orgasm hits with yours and has her inner walls milk you for all you'll give. You're left spent and dazed by the time it's over and have to recover before you're able to get up and head back out. She gives you a peck on the cheek and makes a show of getting her bikini and t-shirt back on before going to check on her other customers.";
		else:	[F/F mutual oral]
			say "     You end up in a 69 with Circe, laying opposite each other on the plush divan. You run your hands over each other, teasing and caressing as you settle into position. Your head finds its way between her thighs and you set to eating out that juicy cunny of hers. You lick and kiss across her labia and at her clit, drawing soft moans from the woman[if phumanbody is false]. Her fingers continue to explore across your [bodytype of player] body, taking sensual interest in your altered form before fully turning her attention to your pussy[otherwise]. Her fingers continue to play sensually across your body, bringing you a myriad of delights before she turns her attention to your pussy[end if].";
			say "     Eventually though, you're both focused on eating each other out. Licking tongues, probing fingers and nibbling teeth ply their pleasures upon you both. And while the sorceress may be more experienced and artful at the task, this does serve to excite you to greater enthusiasm, thus ensuring she receives your best in return[if phumanface is false]. One of her hands finds its way to the back of your head and caresses over it, pressing your transformed face into her crotch[end if]. And from how she's moaning and panting, you can tell she's loving receiving your lustful affections as much as she is at providing them.";
			say "     In the end, the two of you are brought to loud orgasms, treating you both to a rush of hot, feminine juices to lap up while your cunts quiver and your hips grind against the other's face. You're left spent and dazed by the time it's over and have to recover before you're able to get up and head back out. She gives you a peck on the cheek and makes a show of getting her bikini and t-shirt back on before going to check on her other customers.";
		now lastfuck of Circe is turns;
		increase hp of Circe by 1;


Section 7 - Mechanics

to cindycheck:
	if debugactive is 1:
		say "DEBUG - Cindy | HP: [hp of Cindy].";
		if Circe is in Sunny Snacks, say "DEBUG - Circe | HP: [hp of Circe].";
	if hp of Cindy < 6 and Circe is in Sunny Snacks:
		say "ERROR - Circe shouldn't be here. Swapping.";
		remove Circe from play;
		move Cindy to Sunny Snacks;
	if hp of Cindy > 5 and Cindy is in Sunny Snacks:
		say "ERROR - Cindy shouldn't be here. Swapping.";
		remove Cindy from play;
		move Circe to Sunny Snacks;

Section 8 - Testing - Not for release



[  hp of Cindy   ]
[ Conversations  ]
[ 0 = not met    ]
[ 1 = met        ]
[ 2 = otter fuck ]
[ 3 = viewed tf  ]
[ 4 = talked     ]
[ 5 = not helped ]
[ 6 = helped - now Circe ]
[ 7 = her rep    ]
[ 8 = stuck here ]
[ 9 = shop and tfs ]

[ hp of Circe    ]
[ Sexings        ]


Cindy ends here.
