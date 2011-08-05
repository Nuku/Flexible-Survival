Museum by Sarokcat begins here.

"Adds an adventuring area to Flexible Survival with a Sphinx and some searching."

Section 1- Museum enviornment

Museum Foyer is a room. It is fasttravel. 

The description of Museum Foyer is "You find yourself standing in the foyer of a large museum, apparently one equipped with an emergency generator of some sort as the electric lighting while dim, still appears to be functioning.  The dim lighting casts shadows throughout the large area, evoking a sense of danger and mystery.  Along the walls near you are several paintings and small bits of history that would probably be priceless if you had time to worry about such things right now.  More disturbing perhaps is the empty pedestal in the center of the entryway, its name plaque proudly proclaiming a preserved wolly mammoth cub to be displayed in the empty spot.  Looking further into the area you can see a circular desk marked 'Information'.";

Museum entry is a door. “The museum halls stretch off towards the east.”. It is dangerous. 

East of Museum foyer is Museum entry.
East of Museum entry is Museum interior.

The marea of Museum entry is “Museum”.

Valerie is a woman.
The description of Valerie is "Lying on part of the information desk is what at first appears to be a large lioness, as you move closer it turns its head towards you revealing the pretty face of a woman with slight feline features atop the long leonine body.  You realize she is actually a sphinx of some sort, with the lower legs of a lioness, the front paws (and breasts) of an anthro lion, the head of a beautiful woman, and if the name tag on the counter next to her is any indication, her name is Valerie.";
Valerie is in Museum Foyer.

The conversation of Valerie is { “[valerietalking]”}

To say valerietalking:
	if valtalk is 0:
		say “'Oh hey, a visitor,' the sphinx says as she focuses her attention on you, 'Haven[apostrophe]t had many of those since this all started,' she says gesturing out at the chaos outside.  'Well in case you haven[apostrophe]t figured it out by now, my name is Valerie, and I[apostrophe]m one of the few museum workers left.' She pauses for a second, then continues, 'Well one of the few I know about, some of the strange creatures around here might also have been museum workers, but it would be kind of hard to tell at this point, not that I can really comment myself.' Valerie says as she gestures at her long leonine form.  'I was in the Egypt exhibit readying for opening when this all started, I find I don[apostrophe]t really mind the changes though.' the sphinx says with a smile, 'You wouldn[apostrophe]t believe how comfortable it is just to relax and be a sphinx, definitely better then most of the creatures i[apostrophe]ve seen wandering the halls.  Course it can be rather lonely sometimes being the only sphinx,' She says as she shoots you a contemplative look, 'And I have the strangest compulsion to ask riddles of people, not that there have been any of those around either.' Valerie comments,  'Hmm I do hope you will be staying around here a bit more, and just let me know if you have any questions about the museum itself.'”; 
		increase valtalk by 1;
	otherwise:
		say “'[one of]There are some satyrs running wild in the halls, I think they are from the greek wing... did you know there were sphinx legends in Greece too?[or] Those damn nymphs get into everything! And they won[apostrophe]t stop giggling![or]Hey if you see the minotaur wandering around while your out there, let him know he left his battleaxe over in the Roman wing will you? Thanks![or]History is a fascinating subject, don[apostrophe]t you agree?[or]What goes on three legs at morning... no no no, that ones already been done.[or]Whats black and white and, no, wait, I don[apostrophe]t think dirty jokes count....[or]Several of the old stuffed displays seem to have wandered off on their own, if you see them would you remind them they are only supposed to do that after visiting hours?[or]I think the sabretooth lion was eyeing me speculatively the other day, hmm he does have such handsome flanks and tusks, still I DO prefer a bit of intellectual stimulation first...[or]I swear, what kind of museum is it where none of  the exhibits will hold still! I mean it wouldn[apostrophe]t be so bad if they actually took their name plaques with them, but noooo![or] If you think it[apostrophe]s crazy out here, you should see back in the museum archives! You wouldn[apostrophe]t believe how nuts it is back there.[or]Hmm, I wonder whats going to happen to some of the exhibits after all this, some of the art and artwork here is historically priceless![or]When I was leaving the egyptology area, I swear I saw some jackal headed beasts, I was probably seeing things, but then again in this place, who knows?[or]Don[apostrophe]t go near the modern art wing, trust me on this, I locked that area up for a reason' She shudders at some remembered horror[or]I swear I saw one of the robot mockups walking around, Though I don[apostrophe]t know how that could be possible, i[apostrophe]m not really sure how any of the rest of this is possible either.[or] Can I help you with something?[or]Did you want to try a riddle?[or]I wonder whats going on in the dinosaur wing...[at random]'”;

Valtalk is a number that varies.
Riddlewin is a number that varies.
Lastriddlesphinx is a number that varies. Lastriddlesphinx is usually 250.
Lastsphinxfucked is a number that varies. Lastsphinxfucked is usually 250.
riddlesphinx is a number that varies. riddlesphinx is usually 0.
sphinxfucked is a number that varies. sphinxfucked is usually 0.

riddlesphinxing is an action applying to nothing.

understand "answer riddles" as riddlesphinxing;
understand "riddle valerie" as riddlesphinxing;
understand "play riddles" as riddlesphinxing;
understand "riddle sphinx" as riddlesphinxing;
understand "answer riddle" as riddlesphinxing;
understand "try riddle" as riddlesphinxing;
understand "answer valerie" as riddlesphinxing;

check riddlesphinxing:
	if Valerie is not visible, say "who you are looking for is the real riddle here?" instead;

sphinxfucking is an action applying to nothing.

Understand "fuck Valerie" as sphinxfucking;
Understand "fuck sphinx" as sphinxfucking;

check sphinxfucking:
	if Valerie is not visible, say "who?" instead;


carry out riddlesphinxing:
	If lastriddlesphinx - turns is less than 8:
		say "Valerie smiles enigmatically as you try to engage her in another riddle contest. 'I'm sorry, but even I can[apostrophe]t think of a truly challenging new riddle that quickly.  I am still new to this whole sphinx thing after all. Why don[apostrophe]t you come back and try again later.' she says with a dismissive flick of her tail as she goes back to what she was doing.";
		stop the action;
	now lastriddlesphinx is turns;
	say “Ooooh you think you can beat me in a riddle contest? Lets find out shall we? I might even have a prize for you if you win... of course if you lose....”;
	let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 15:	
		say “'Oh my, that[apostrophe]s right!' Valerie exclaims, obviously impressed at your mental prowess, 'You are a smart one aren[apostrophe]t you?' She continues, giving you a speculative glance as she purrs, 'We should definitely do this again sometime soon, oh and I did mention a prize didn[apostrophe]t I? Here I suppose you earned this...' She says as she pushes an item towards you, 'I found it lying around here somewhere, maybe you can make better use of it, of course if you keep answering my riddles properly, maybe we can see about a proper reward for us both?' the sphinx says with a smug look on her face, leaving no doubt as to what she is talking about.'”;
		let prizegift be a random number from 1 to number of filled rows in the table of random critters;
		choose row prizegift from the table of random critters;
		if there is a loot entry:
			if loot entry is not “ “:
				add loot entry to invent of player;
				say “you acquired 1 [loot entry]”;
			otherwise:
				add "dirty water" to invent of player;
				say “you acquired some dirty water!”;	
	otherwise:
		say “'That[apostrophe]s completely wrong!' Valerie says as she shoots you a smug look, 'Maybe you[apostrophe]ll have better luck next time, but I[apostrophe]m not impressed so far,' The sphinx says with a derisive swish of her tail as she dismisses you.  You feel somewhat humiliated by your loss, and strangely feel as if you have lost a little bit of your humanity to the sphinxes wiles.”;
		decrease humanity of player by 10;







Carry out sphinxfucking:
	if Riddlewin is greater than 3:
		if lastsphinxfucked - turns is less than 8:
			say "'Mmm sorry hun, unlike some people I still need some recovery time, she says with a sly wink, why don[apostrophe]t you come back later and we can play.'.";
			stop the action;
		now lastsphinxfucked is turns;
		say "NOT DONE YET";
	otherwise:
		say ”'Sorry dear,' Valerie says with a sigh, 'I prefer my partners, a bit more... intellectually motivated if you know what I mean,' The sphinx says as she shakes her head sadly, 'I simply couldn[apostrophe]t bring myself to submit to someone who hasn[apostrophe]t bested me at riddles several times, maybe you should work on that first and get back to me?' Valerie says with a hopeful look.”;
		stop the action;





Museum ends here.
