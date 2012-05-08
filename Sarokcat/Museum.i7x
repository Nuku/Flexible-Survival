Museum by Sarokcat begins here.

"Adds an adventuring area to Flexible Survival with a Sphinx and some searching."

Section 1- Museum environment

Museum Foyer is a room. It is fasttravel. 

The description of Museum Foyer is "[museumdesc]";

to say museumdesc:
	if hp of Solstice is 0, now Adventurer is unresolved;		[Solstice's quest available after visiting the Museum]
	say "You find yourself standing in the foyer of a large museum, apparently one equipped with an emergency generator of some sort as the electric lighting while dim, still appears to be functioning.  The dim lighting casts shadows throughout the large area, evoking a sense of danger and mystery.  Along the walls near you are several paintings and small bits of history that would probably be priceless if you had time to worry about such things right now.  More disturbing perhaps is the empty pedestal in the center of the entryway, its name plaque proudly proclaiming a preserved woolly mammoth cub to be displayed in the empty spot.  Looking further into the area you can see a circular desk marked 'Information'.";

instead of sniffing Museum Foyer:
	say "The museum smells of ancient things come to life once more.";

Museum entry is a door. "The museum halls stretch off towards the east.". It is dangerous. 

East of Museum foyer is Museum entry.
East of Museum entry is Museum interior.

The marea of Museum entry is "Museum".

Valerie is a woman.
The description of Valerie is "Lying on part of the information desk is what at first appears to be a large lioness, as you move closer it turns its head towards you revealing the pretty face of a woman with slight feline features atop the long leonine body.  You realize she is actually a sphinx of some sort, with the lower legs of a lioness, the front paws (and breasts) of an anthro lion, the head of a beautiful woman, and soft wings gracing her back tightly tucked up to her sides, and if the name tag on the counter next to her is any indication, her name is Valerie.";
The conversation of Valerie is { "Riddle me this!" }.
Valerie is in Museum Foyer.

instead of linkactioning Valerie when valtalk > 0:
	say "Possible Actions: [link]talk[as]talk Valerie[end link], [link]smell[as]smell Valerie[end link], [link]fuck[as]fuck Valerie[end link], [link]riddle[as]riddle Valerie[end link][line break]";

instead of sniffing valerie:
	say "She smells like a sphinx, inscrutable and cryptic.";

instead of conversing the Valerie:
	if valtalk is 0:
		say "'Oh hey, a visitor,' the sphinx says as she focuses her attention on you, 'Haven[apostrophe]t had many of those since this all started,' she says gesturing out at the chaos outside.  'Well in case you haven[apostrophe]t figured it out by now, my name is Valerie, and I[apostrophe]m one of the few museum workers left.' She pauses for a second, then continues, 'Well one of the few I know about, some of the strange creatures around here might also have been museum workers, but it would be kind of hard to tell at this point, not that I can really comment myself.' Valerie says as she gestures at her long leonine form.  'I was in the Egypt exhibit readying for opening when this all started, and I found myself changing, I find I don[apostrophe]t really mind the changes though.' the sphinx says with a smile, 'You wouldn[apostrophe]t believe how comfortable it is just to relax and be a sphinx.  Definitely better than most of the creatures I've seen wandering the halls.  Course it can be rather lonely sometimes being the only sphinx,' She says as she shoots you a contemplative look, 'And I have the strangest compulsion to ask riddles of people, not that there have been any of those around either.' Valerie comments,  'Hmm I do hope you will be staying around here a bit more, and just let me know if you have any questions about the museum itself.'"; 
		increase valtalk by 1;
	otherwise:
		say "[one of]'There are some satyrs running wild in the halls, I think they are from the greek wing... did you know there were sphinx legends in Greece too?'[or]'Those damn nymphs get into everything! And they won[apostrophe]t stop giggling!'[or]'Hey if you see the minotaur wandering around while your out there, let him know he left his battleaxe over in the Roman wing will you? Thanks!'[or]'History is a fascinating subject, don[apostrophe]t you agree?'[or]'What goes on three legs at morning... no no no, that ones already been done.'[or]'What's black and white and, no, wait, I don[apostrophe]t think dirty jokes count....'[or]'Several of the old stuffed displays seem to have wandered off on their own, if you see them would you remind them they are only supposed to do that after visiting hours?'[or]'I think the sabretooth lion was eying me speculatively the other day, hmm he does have such handsome flanks and tusks, still I DO prefer a bit of intellectual stimulation first...'[or]'I swear, what kind of museum is it where none of the exhibits will hold still! I mean it wouldn[apostrophe]t be so bad if they actually took their name plaques with them, but noooo!'[or]'If you think it[apostrophe]s crazy out here, you should see back in the museum archives! You wouldn[apostrophe]t believe how nuts it is back there.'[or]'Hmm, I wonder what's going to happen to some of the exhibits after all this, some of the artifacts and artwork here is historically priceless!'[or]'When I was leaving the Egyptology area, I swear I saw some jackal-headed beasts.  I was probably seeing things, but then again in this place, who knows?'[or]'Don[apostrophe]t go near the modern art wing, trust me on this.  I locked that area up for a reason.' She shudders at some remembered horror.[or]'I swear I saw one of the robot mockups walking around, though I don[apostrophe]t know how that could be possible.  I[apostrophe]m not really sure how any of the rest of this is possible either.'[or]'Can I help you with something?'[or]'Did you want to try a riddle?'[or]'I wonder what's going on in the dinosaur wing...[at random]";

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
	if Valerie is not visible, say "Who you are looking for is the real riddle here?" instead;

carry out riddlesphinxing:
	If lastriddlesphinx - turns is less than 6:
		say "Valerie smiles enigmatically as you try to engage her in another riddle contest. 'I'm sorry, but even I can[apostrophe]t think of a truly challenging new riddle that quickly.  I am still new to this whole sphinx thing after all. Why don[apostrophe]t you come back and try again later.' she says with a dismissive flick of her tail as she goes back to what she was doing.";
		stop the action;
	now lastriddlesphinx is turns;
	say "Ooooh you think you can beat me in a riddle contest? Lets find out shall we? I might even have a prize for you if you win... of course if you lose....";
	let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
	if 2 is listed in bookcollection, increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 15:	
		say "'Oh my, that[apostrophe]s right!' Valerie exclaims, obviously impressed at your mental prowess, 'You are a smart one aren[apostrophe]t you?' She continues, giving you a speculative glance as she purrs, 'We should definitely do this again sometime soon, oh and I did mention a prize didn[apostrophe]t I? Here I suppose you earned this...' She says as she pushes an item towards you, 'I found it lying around here somewhere, maybe you can make better use of it, of course if you keep answering my riddles properly, maybe we can see about a proper reward for us both?' the sphinx says with a smug look on her face, leaving no doubt as to what she is talking about.'";
		increase riddlewin by 1;
		let prizegift be a random number from 1 to number of filled rows in the table of random critters;
		choose row prizegift from the table of random critters;
		if there is a loot entry:
			if loot entry is not "":
				add loot entry to invent of player;
				say "you acquired 1 [loot entry]";
			otherwise:
				add "dirty water" to invent of player;
				say "you acquired some dirty water!";
		infect "sphinx";	
	otherwise:
		say "'That[apostrophe]s completely wrong!' Valerie says as she shoots you a smug look, 'Maybe you[apostrophe]ll have better luck next time, but I[apostrophe]m not impressed so far,' The sphinx says with a derisive swish of her tail as she dismisses you.  You feel somewhat humiliated by your loss, and strangely even feel as if you have lost a little bit of your humanity to the sphinxes wiles.";
		decrease humanity of player by 10;
		infect "sphinx";

instead of fucking Valerie:
	if Riddlewin is greater than 2:
		if lastsphinxfucked - turns is less than 6:
			say "'Mmm sorry hun, unlike some people I still need some recovery time, she says with a sly wink, why don[apostrophe]t you come back later and we can play.'.";
			stop the action;
		now lastsphinxfucked is turns;
		if cocks of the player is greater than 0:
			say "'Mmm finally I thought you would never get to the good part.' Valerie says with an aroused look on her face, as she nimbly leaps down to the ground in front of you, her wings spreading out somewhat before settling up against her long leonine body as she stretches herself out in front of you, her tail lashing excitedly as she positions her feline rear facing you.  'I don[apostrophe]t know about you, but after finally being outmatched, I just can[apostrophe]t help but need you on top of me so badly.' Valerie murrs, as she lifts her hindquarters up slightly, exposing her winking feline passage for you to see,  'While we can try another position if you want, I really want you on top of me...' She asks you with a coy look as she looks at you over her shoulders.";
			if player consents:
				say "Valerie moans in pleasure, as you accept her invitation, moving forward to lay your body atop hers as she prostrates herself before you.  You groan at the feel of her soft fur and the tickling of her soft feathers as you press your body down atop hers, pinning her wings to her sides as your arms grip her chest. You can hear her panting in need as she lowers her head down in submission, acknowledging your mental and physical mastery in the most primal way possible, as her tail rubs up against you, before moving aside to grant you access to her most private treasure. Her spicy scent of need and submission has your cock already erect and eager as you trace it along her feline rear, its tip soon finding its way to her wet and needy lips.  You can feel yourself grinning as Valerie moans underneath you at the touch of your cock to her feline passage, and you grip her body even tighter with your arms, your hands reaching down to where her breasts are pressed against the floor, and teasing them and gripping them as she moans under you.  Unable to restrain yourself any longer, you quickly sheath your hard cock within her waiting body, her feline walls parting before you easily as their velvety folds engulf and massage your cock.[line break]";
				say "You moan in pleasure, as you fill her, her body responding to your touch eagerly as you lower your head to rest it on the back of her neck, your eyes closing in pleasure as you begin to move your hips against her own feline hindquarters. You are unable to take it slow, as every instinct within you calls out for you to take your submissive mate hard and fast, while Valerie begs underneath you for more as well.  Soon you are pounding into her sphinx like body as she writhes underneath you like the cat in heat she is, your mastery of her mind and body finally allowing her to give in to her true baser needs and desires. Something about reducing this brilliant specimen of sphinxhood to nothing more then a desperate animal underneath you excites you even further as you press yourself into her even further orgasm overwhelming you as her inner folds grip your cock tightly, causing you to shoot your seed deep into her waiting body.  You gasp in pleasure as your orgasm overtakes you, and grip her shuddering body even tighter as your cock fills her with its fertile treasure, eventually though, the pleasure fades, though the wonderful sensations of a happy and rumbling sphinx underneath you remain.  Finally your cock softens and you manage to pull yourself off her, though she remains in position for several minutes afterwards, her eyes closed and her tail lashing happily from side to side as she enjoys the sensations of being well mated. Finally she hauls herself back up, and turns and traces her soft feline hand along your body as you lie there on the cool tile floor panting from your exertions, before lowering her beautiful face down and kissing you soundly on the mouth in thanks.  Breaking the kiss, Valerie leaps up to the information counter again, with a remarkably feline grin on her face as she settles back into place on the counter.";
				infect "sphinx";
			otherwise:
				say " 'I suppose other positions are good too,' Valerie says with a disappointed air, as she rolls herself over onto her side, and then finally her back, her wings spreading out on the floor to balance her as she lowers one of her feline hands down to tease her slit, her leonine legs spreading out to the sides as she teases you with the enticing sight.  You feel your cock responding at the wonderful sight spread out before you, and soon find yourself moving into position over the eager sphinx, her feline legs rubbing against your sides, as her claw tipped hands trace along your sides. You moan at the feel of your cock rubbing against her eager needy passage, making Valerie gasp in need as you slowly push your tip in past her folds.  The feel of her velvety soft walls opening up and embracing your cock, as you sink into her soft wetness is amazing, causing you to groan in pleasure, while the sphinx cries out under you in need, her hands gripping your sides tightly as she begs you to take her.";
				say "Unable to deny your own needs, and spurred on by her desperate cries, you slowly sheath yourself fully in her willing body, before drawing back and thrusting in again, building up a soft rhythm as you pleasure her. She moans underneath you, her furred form and soft breasts rubbing up against your chest as she moves under you in pleasure, you find your own hands stroking her softly furred sides, as her beautiful female face tilts back her mouth open as she pants in pleasure and excitement.  The feel of her folds around your cock as you build up inside her is amazing, your hard cock being massaged by her silken insides even as her hands and beastial legs grip your sides and she begs for you to fuck her harder.  You oblige the wanton sphinx, and soon are moving within her hard and fast, your eyes almost rolling back in your head with the sharp pleasure of mating. Soon the buildup of pleasure is too much for you, and your cock explodes within her all too willing body, causing you both to cry out in pleasure, as you fill her feline womb with your seed.  Exhausted you lie atop her for a minute, as she gives off her rumbling purr, stroking you with her hands, as your cock softens within her. Eventually she rolls you off her, and you collapse onto the cool tile floor, as she rolls herself back onto all fours, and with a flap of her wings settles back onto the information counter, staring down at your prone form with a satisfied look in her eye, as you lie there completely spent.";
				Infect "sphinx";
		otherwise:
			say "'What an interesting offer, and its true that while we are both female perhaps we can still help each other out a bit with our desires,' Valerie says, an interested look on her face as she eyes you speculatively, before lowering herself off the counter, her soft wings flapping open at her sides for a minute as she prowls towards you. 'Yes I think we creative types can have some fun with just the two of us,' The sphinx says as she reaches you, her hands reaching up to grip your hips, as she gently pushes you down onto your back. Once she has you on the ground, she lets out a rumbling purr as she stalks around you, seemingly contemplating her next action, before sprawling on the ground next to you, her rear near your face, as her feline hands rub along your legs, and she lowers her face to nuzzle your nether regions, causing you to gasp. The amused sphinx looks back at you and then lifts one of her leonine legs up a bit, causing you to turn and look at her eagerly exposed sex, resting between those feline hind legs, its puffy lips obviously wet and needing your attention.  Having initiated the situation, you can hardly deny her needs, especially when she draws her slightly rough tongue across your already excited lips, and you find yourself cautiously moving between those strong feline legs to tease her feline opening with your hands and tongue.[line break]";
			say " Valerie moans needfully as you rub and lick her, her body obviously desperate for this kind of attention, her soft fur tickling your face as she rubs herself against you.  Then it is your turn to moan in pleasure as she applies her creative intellect to teasing and pleasuring your own female passage, tracing her soft claws around the sensitive edges, while she probes deeper into you with her slightly feline tongue.  Soon the two of you are both making rough, needy, beastial moans and panting as you pleasure each other on the floor of the museum, bringing each other to orgasm again and again In a contest of carnal creativity and stamina. Eventually your exhausted body can take no more, and Valerie gives off her rumbling purr as she strokes her feline like hand along your inner thighs for a minute or two, before slowly hauling herself up, and jumping back up to the information desk for some rest of her own.";
			infect "sphinx";
	otherwise:
		say "'Sorry dear,' Valerie says with a sigh, 'I prefer my partners, a bit more... intellectually motivated if you know what I mean,' The sphinx says as she shakes her head sadly, 'I simply couldn[apostrophe]t bring myself to submit to someone who hasn[apostrophe]t bested me at riddles several times, maybe you should work on that first and get back to me?' Valerie says with a hopeful look.";



Museum ends here.