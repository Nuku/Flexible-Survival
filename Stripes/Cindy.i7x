Version 1 of Cindy by Stripes begins here.
[ Version 1.0 - Basic NPC w/vending. ]

"Adds a human? shop owner on the beach."

Section 1 - Sunny Snacks

Sunny Snacks is a room.  Inside of Public Beach is Sunny Snacks.
The description of Sunny Snacks is "[sunnysnacksdesc]".

the scent of Sunny Snacks is "The scent of the beach hangs in the air, though there's the tasty smells of snacks in the air as well.".

to say sunnysnacksdesc:
	say "     Build onto a shelf of rock on the cliffside, this small building is located partway between the sandy beach below and the plaza above.  Aside from likely providing some protection from the tides and storms, it also provides an excellent view of the beachgoers.  The shop itself is a mix between a restaurant and a concession stand, having a wide window and counter with a few stools in front and the shopkeeper behind.  There's also a couple of patio tables with parasols set out on the small plateau in front of it.  The building is white with sky-blue trim while the sign above the window declares the place to be 'Sunny Snacks' and has a bright sun rising above the words.  To either side of the service counter are the [link]menu[as]look menu[end link].  The person inside running the place is a surprisingly human woman, a definite oddity these days, especially for one so out in the open.";


Section 2 - Cindy

Cindy is a woman.  Cindy is in Sunny Snacks.
The description of Cindy is "[cindydesc]".
The conversation of Cindy is { "What can I get you?" }.
the fuckscene of Cindy is "[nosexwithcindy]".
the scent of the Cindy is "The scent of the beach and her various wares are what you smell.".

to say cindydesc:
	say "     The concession stand is run by a human woman called Cindy.  Despite all the infected creatures out on the beach and coming up to her little restaurant, she seems completely uninfected.  She's wearing what you can tell is a rather skimpy two-piece bikini under a white t-shirt emblazoned with the 'Sunny Snacks' name and sun-logo.  She's got curly black hair, brown eyes and a olive skin.  She has a Grecian look to her beautiful face and appears to be in her mid-twenties.  By no means fat, she does look like she's put on a few pounds, though she carries it well.";

instead of conversing Cindy:
	if hp of Cindy is 0:
		say "     'Hello there.  Welcome to the [']Sunny Snacks['].  What can I get you?'  She motions to the [link]menu[as]look menu[end link] boards on either side of the concession window.";
		now hp of Cindy is 1;
	otherwise if hp of Cindy is 1 and a random chance of 1 in 3 succeeds:
		say "     Cindy chats up a cute otter who's come to the counter.  He's wearing nothing but a plastic whistle around his neck.  With a wink and a playful teasing of his headfur, she invites him to come into the back for a bit.  She temporarily closes the counter window and you can hear the sounds of them fucking inside.  After he leaves and she opens up again, there's she shows no signs of infection at all.  She looks just as human as before.";
		increase hp of Cindy by 1;
	otherwise if hp of Cindy is 2 and a random chance of 1 in 3 succeeds:
		say "     Decide to ask Cindy if she knows why she's not become infected like the others, but she shushes you[if cocks of player > 0] sharply[end if].  Leaning over the counter to get a better look, she gazes down at the beach where an cat-eared guy's been lured onto a sun-bathing pantheress' blanket.  What starts out friendly enough with talking and light touches, soon goes from a seemingly innocent kiss to the dark female petting and then groping the reluctant male as she strips his clothes off.";
		say "     Knowing where this is going, Cindy slips her right hand into her bikini and the left under her shirt.  She moans as she starts fingering herself to the scene playing out[if cocks of player > 0].  Noticing you ogling at her, she gives you a disdainful look before shifting her attention back to the beach[end if].  'Mmm... yeah... let's see it,' she half-whispers as she stares down at the couple.  'Do it, kitty.'";
		say "     Events continue to play out, the feline's pulls the guy's cock out and climbs atop him.  Pinning him down, she bounces on his pole.  Black fur starts creeping up his belly as her starts spreading to him.  'Yeah..  That's the stuff...' Cindy moans as the victim's transformation continues, changing his body and eventually his head.  By the time it's run his course and the guy's become a matching male panther, the waitress has to stiffle a moaning orgasm from what she's witnessed.";
		say "     'Ahhhhh.  Damn!  That's always soooo hot to see happen.'  She pants to recover her breath and wipes her hands on a dish towel.  'As inconvenient as having gotten stuck here is, the entertainment more than makes up for it.  Speaking of, I could go for some private entertainment,' she says with a grin.";
		say "     For a moment, you [if cocks of player > 0]allow yourself to hope that[otherwise]think[end if] she might mean with you, but she whistles over to the lifeguard and gives him a signal.  The buff orca is down the ladder in a flash, sending a familiar-looking otter up to take his post.  For such a big guy, he dashes up the steps very quickly and joins her in the back for what sounds like a very energetic round of fucking.  Again when she emerges, she's left unchanged despite the heavy scent of orca sex lingering about her.";
		increase hp of Cindy by 1;
	otherwise if hp of Cindy is 3 and a random chance of 1 in 3 succeeds:
		say "     Noticing that Cindy seems to be in a good mood at the moment, you ask her what her story is.  She gets a little guarded and loses some of her earlier smile, but then shrugs and relaxes a bit.  'Not much to say.  I was travelling when this whole mess got started and got stuck here.  So no, I don't really own this place or even work here.  I just took it over because it's where I've ended up.  It gives me something novel to do while I wait for this mess to settle down.'  She grins and nods down to the beach.  'And it comes with quite the view.  So many interesting creatures and transformations to witness.  I don't even have to do anything and I'm treated to such an imaginative range of entertainment.'";
		say "     You ask if she knows why she's not become infected like the others.  You've seen her have sex on a few occasions now, but she's remained unchanged.  She looks you over again, as if assessing you with a very keen eye.  In the end, she just gives a little laugh.  'Come now.  A girl's got to have her secrets.'  And with that, she closes the service window for a while to do work inside.";
		increase hp of Cindy by 1;
	otherwise:
		say "[randomdesc2]";	[randomly selects a female 'slutname' for below]
		say "     [one of]Cindy's a little too busy with other customers to chat.[or]'What would you like to order?' she asks, motioning to the [link]menu[as]look menu[end link].[or]The large orca sitting on lifeguard duty waves to her from his watchpost and she nods.  She sends down a fishburger and some fries for him with the next customer.[or]The woman takes a moment to fan herself while drinking a soda.  'I'm glad I've got plenty to drink to deal with the heat, but it's not helping my waistline,' she grumbles.[or]Cindy only half-listens to you, her attention focused on a pair of transformed individuals fucking on the beach.[or]While making an order, a male customer makes a rather crude pass at Cindy, fondling his junk right in front of her.  She just eyes him up and down coldly, her usual friendly demeanour gone and completely unimpressed by his over-sized manhood.  'Don't even think of it, swine.  If you keep this up, you'll end up face first in the garbage.'[or]You watch Cindy serve a few customers, noticing the eclectic assortment of sodas and chips she provides.  While not unusual in and of itself, stranger still is the range of different styles and quality she'll provide for the same food order.[or]You find yourself ogling the lovely woman as she goes around cleaning up the tables.  Noticing you staring at her ass when she bends over, she [if cocks of player > 0]glares at you, hand raised as if ready to point accusingly at you.  'You pig,' she grumbles in the end.  After tossing the trash at you, she storms back inside[otherwise]grins a little and makes a show of grinding her butt into the lap of another female patron she's clearly quite familiar with before heading back inside[end if].[or]Bringing over her orders to the table, you watch as Cindy gets rather friendly with a [if a random chance of 1 in 4 succeeds]herm[otherwise]female[end if] [slutname].  There's quite a bit of playful groping and sexual fondling between the two of them before the woman gets back to work.[or]Cindy puts a [']Back in 15 minutes['] sign up and closes the sales window, explaining that she's got do some inventory work.[in random order]";
	

to say nosexwithcindy:
	if cocks of player > 0:
		if hp of Cindy is 0:
			say "     You go up to the human woman and start putting the moves on her, saying you'll to rock her world.  She gives you a snort and tosses her half-finished soda in your face.  'What kind of a pig comes up and asks a woman for sex without even introducing themselves?  Why I should...' she pauses, glancing at the other customers watching the confrontation and takes a deep breath.  'Look.  I'm feeling generous, but you better watch your step.'";
			now hp of Cindy is 1;
		otherwise:
			say "     [one of]Cindy does not seem particularly impressed at your suggestion of going into the back for sex.  She probably gets a lot of offers like that.[or]You try to chat up the restauranteure, but she rebukes your attentions rather harshly.  'Don't go getting any funny ideas.  I'm not in the mood right now, you pig.  Besides - I'm way out of your league,' she says curtly.[at random]";
	otherwise:
		if hp of Cindy is 0:
			say "     You go up to the human woman and start putting the moves on her, saying you'll to rock her world.  She just laughs.  'I think [']my world['] is more than you can handle.  You're cute, but it's rude to make such an offer to someone you've not even met.'";
			now hp of Cindy is 1;
		otherwise:
			say "     You try to chat up the restauranteure, but she rebukes your attentions rather harshly.  'Look.  You're kinda cute, but I've got plenty of [']friends['] out there on the beach for that already.  Besides - I'm way out of your league,' she adds.";


Section 3 - Vending

ssvending is an action applying to nothing.
understand "look menu" as ssvending.

check ssvending:
	if location of player is not Sunny Snacks:
		say "You don't see that around here." instead;

carry out ssvending:
	say "     You look over the menu of available options from the little restaurant.  Many of the menu items have been taped over, clearly not available right now, but there's still several options available.  The prices have all been taped over as well with new ones in freecred instead of dollars and cents.";
	now sextablerun is 0;
	now calcnumber is -1;
	say "[link]1 - Soda pop[as]1[end link] - 75[line break]";
	say "[link]2 - Chips[as]2[end link] - 75[line break]";
	say "[link]3 - Hot Dog[as]3[end link] - 120[line break]";
	say "[link]4 - French Fries[as]4[end link] - 120[line break]";
	say "[link]5 - Ice Cream Sundae[as]5[end link] - 150[line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber is 1:
			if freecred < 75:
				say "You don't have enough credits for that.";
			otherwise:
				say "     Ordering a can of soda, Cindy grabs one from under the counter[one of][or] of the requested flavour[or].  It's unrefrigerated but is still quite refreshing[or].  It's probably some generic store brand you don't recognize, but it seems fine[as decreasingly likely outcomes].  You pay her for the pop.";
				increase carried of soda by 1;
				decrease freecred by 75;
				now sextablerun is 1;
		otherwise if calcnumber is 2:
			if freecred < 75:
				say "You don't have enough credits for that.";
			otherwise:
				say "     Requesting some chips, she pulls a single-serving bag out from under the counter[one of][or][or] of the requested flavour[or].  They're an off-brand you've never hear of[as decreasingly likely outcomes].";
				increase carried of chips by 1;
				decrease freecred by 75;
				now sextablerun is 1;
		otherwise if calcnumber is 3:
			if freecred < 120:
				say "You don't have enough credits for that.";
			otherwise:
				say "     Wanting a hot dog, Cindy has to go into the back to get it for you[one of][or].  You have to wait a little while before she emerges with dog[or].  She returns pretty quickly from the back kitchen area[at random][one of].  It's your run-of-the-mill ballpark frank[or].  While one of the small-sized red hots, it is very fresh and in a nicely steamed bun[or].  It's not particularly warm, but it's a jumbo-sized dog, so you don't bother complaining[or].  The bun's been buttered and toasted - Nice[or].  It's already got some toppings on it for some reason, but nothing you seriously object to, so you don't make a fuss[as decreasingly likely outcomes].  Since it won't really keep, you eat it right now, happy just to eat anything not out of a can.";
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
		otherwise if calcnumber is 4:
			if freecred < 120:
				say "You don't have enough credits for that.";
			otherwise:
				say "     Ordering some fries, Cindy goes into the back to get it for you[one of][or].  You have to wait a little while before she emerges with your order[or].  She returns pretty quickly from the back kitchen area[at random][one of].  You're given the fries in a plain paper container[or].  You're given a cupful of freshly made and seasoned crinkle fries[or].  The thin-cut fries are lukewarm, but you've been given a large order of them to make up for that[or].  You don't smell or hear a fryer, but she comes out with a fresh batch of hot fries for you[or].  Sweet!  An order of fresh, hot, home-cut fries[as decreasingly likely outcomes].  You've got to eat them right away, but they make for a great change of pace from your recent meals.";
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
		otherwise if calcnumber is 5:
			if freecred < 150:
				say "You don't have enough credits for that.";
			otherwise:
				say "     Wanting some ice cream, you order a sundae.  Cindy excuses herself to go into the back to get it[one of][or].  You have to wait a little while before she emerges with your order[or].  She returns pretty quickly from the back kitchen area[at random][one of].  She returns with a sundae topped with chocolate fudge and sprinkles[or].  She returns with ice cream topped with a spiral of chocolate syrup and some peanut chunks[or].  You're given a plastic bowl with some soft-serve ice cream in it with some strawberry topping and some nuts[or].  'Sorry.  This is the best that I could do.'  She plops down a bowl with some scoops of ice cream with some broken cookie chunks atop it[or].  You're actually given a banana split with three kinds of ice cream, chocolate and caramel syrups, nuts, whipped cream and a cherry.  Wow!  While not what you ordered, Cindy just gives you a smile and wink[as decreasingly likely outcomes].  Rather than let it melt, you gobble down the cool treat and feel a little happier afterwards for it.";
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
		otherwise if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide not to purchase anything at the moment.";


Cindy ends here.
