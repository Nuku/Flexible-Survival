Tiger Den by Sarokcat begins here.

"Adds a tiger den to Flexible Survival with a few anthro tigers, and some small quests vs the tigertaurs..."

Section 1- Tiger den environment

Tiger den is a room. It is fasttravel. It is private

The description of Tiger den is "Sparsely furnished, this large concrete basement bears a slight resemblance to your own emergency bunker back at the library, and while it seems to be not quite as well hidden, its size certainly seems to make up for it.  Half of the large room is however sectioned off by small movable screens someone has set up, separating the basement into a slightly confusing maze of temporary rooms. In the half of the room that is still open, you can see several tiger-like humans, with alterations ranging from merely tiger furred with some feline features, to those with a full tiger head and only a few human features like hands and walking on two legs, much like the one you rescued. It looks like they have barricaded the defensible entry way with scavenged furniture and items, and with the traps they seem to have placed in the empty building above, it seems like they should be safe from most of the infected as long as they can stay here, although several of the tigers do eye you warily as you move around the den, just in case you decide to do something stupid to cause trouble.";

instead of sniffing Tiger den:
	say "The enclosed basement hideout smells strongly of tigers.";




chasetalk is a number that varies.
chasequest is a number that varies.
Lastchasefucked is a number that varies. Lastchasefucked is usually 250.
chasefucked is a number that varies. chasefucked is usually 0.

Chase is a man.
The description of Chase is "The large striped tiger man you helped out earlier is hanging around near the side of the den, watching as several of the other tiger-like people here go about their business.";
The conversation of Chase is { "Mrowl, baby!" }.
Chase is in Tiger den.

instead of sniffing Chase:
	say "The tigerman smells strongly of male tiger[if cunts of player > 0] and arousal[end if].";

instead of conversing the Chase:
	if Chasetalk is 0:
		say "Chase waves at you as you approach, 'Hey welcome to our little hideout, we call it the Tigers den', he says with a soft chuckle, 'Not a bad little place here either. Not sure who found it to begin with, or if they are even still around or ended up changed by one of the tigertaurs.' Chase lets out a soft sigh at that, 'The damn Tigertaurs are catching more and more of us each time we go out to forage or try to find people to help, we actually have a good stockpile of supplies here,' He says with a gesture to one of the locked doors, 'But as you can see we have a decent amount of people here too, and no idea how long we need to wait for rescue, if it's even coming.' Chase shrugs slightly before proceeding to show you around the rather large solid basement, several of the tiger people stopping to watch as the two of you pass by.[line break]";
		say "Noting your interest in all various different tiger like people, Chase stops for a minute to explain.  'When I first ended up down here, not long after this place was started, there were more different types of minorly infected here, and we even had a number of people who hadn[apostrophe]t been infected yet at all we thought. Still,' the tiger says with a shrug, 'The longer we all stayed down here together, the more tiger-like everyone else seemed to become, until at this point i[apostrophe]m not sure if there are any non tigers left down here. Most people actually seem to have adapted to the changes without any real regrets though. I mean heck,' Chase says with an amused grin on his tiger-like muzzle, ' Whats NOT to like about being a tiger? I mean not only are we amazingly strong and fast hunters, but you seem to come through the change with your mind intact unlike a lot of the other infected. Most of all though,' Chase says as he strokes a hand down his tiger furred side in amusement, 'Tigers are so just damn sexy, with the stripes and all, don[apostrophe]t you agree?' Chase says as he poses his long lean body for your examination. Taking your silence as a sign of agreement, the tiger man grins as he finishes up the tour and goes back to watching the rest of the den members go about their business.";
		increase Chasetalk by 1;
		stop the action;
	if Chasetalk is 1:
		say "[one of]Hey good to see you came by again[or]'Hey I[apostrophe]m glad your back, I was starting to get worried about you out there.'[or]'I don[apostrophe]t know why we seem to still be pretty much our normal selves, and the tigertaurs aren[apostrophe]t'[or]I[apostrophe]m glad you came along when you did, I may love being a tigerman, but I don[apostrophe]t think I would enjoy being a tigertaur nearly as much[or]After all this is over, what do you think will happen to those of us who can still think clearly?[or]I wonder if they will put us infected people in some kind of large infected zoo when they finally retake the city, spending all your time sleeping and eating and fucking for an audience might not be pretty fun, but I wonder if they will let us have internet connections...[or]I swear the zoo is a mess now, but its still one of the safer places to forage it seems, there is some REALLY crazy stuff in other parts of the city that tries to grab ya.[or]Did you see those small packs of rabbits roaming around? God they always make my mouth water..[or]You should try sticking around down here with us until help arrives, sure you would probably end up a tiger like the rest of us, but that[apostrophe]s kinda a good thing to my mind.[or]I always loved tigers before all this, now I find I REALLY love tigers, if you know what I mean.[or]'While the tigertaurs can convert anyone it seems, us tigers seem especially vulnerable to them'[or]I used to be called Alex before all this, everyone just calls me Chase now though,' He says with a shrug, 'It seems more appropriate anyways.[at random]";  


instead of fucking Chase:
	if lastchasefucked - turns is less than 6:
		say "'Sorry, I would love to spend some more time with you, but it looks like neither of us really are ready for that,' Chase says apologetically, 'Maybe we should take it slow and you should come back and visit me again later.'";
		stop the action;
	if cunts of player is greater than 0:
		say "'Well who could say no to such a pretty woman?' Chase asks as he runs his eyes over your body, their gaze lingering over your aroused cunt.  Your eyes drift to his obvious arousal as he pulls you over to one of the sleeping pallets, and slowly pushes you down onto it. 'I think we can really have some fun together,' He says as he moves over you, his hands slowly rubbing along your [skin of player] skin, pausing to tease your breasts as he nuzzles your neck with his furred muzzle.   'You want this so badly don[apostrophe]t you?' Chase asks with a rumbling purr, as he rubs his feline cock along the outside of your pussy, causing you to gasp and pant with the need the large male tiger is arousing in you.[line break] ";
		say "'Mmm look at you, you look like you would make a fine tigress, what do you think,' he says, as he teases you underneath him, your body rising up against him as your mind clouds with pleasure and male musk.  'You want to be a tigress don[apostrophe]t you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body.  'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you, 'I just knew you wanted to be just another lovely tigress, but even more you want to be MY little tigress don[apostrophe]t you. My pet and my little tigress mate, isn[apostrophe]t that right?.' he growls out, his rough need filled voice sending shivers down your spine.  You can only groan in need, and nod helplessly, as he rubs his cock along your folds.[line break]";
		say " Seeing your acceptance, Chase lets a self satisfied grin cross his face, though you can[apostrophe]t pay much attention to that fact as he finally thrusts into you, giving your well prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You feel yourself gripping chase to you tightly as he pumps himself into you, his hands and dominant manner speaking to something in you as he works his hands over your body.  Soon Chases body tenses, and with a growl of 'Mine', The large tiger shoots his seed into you, filling you full of his fertile feline cum as he stakes his claim on your body, and giving you your biggest orgasm ever, as your walls grip his shaft tightly.[line break]";
		say "As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his.  You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster then you would have ever thought possible, as he turns his attentions to your body again.  You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to.  Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tigers mate...[impregchance]'";
		infect "Tiger";
		now lastchasefucked is turns;
	otherwise:
		say "'Hmm that[apostrophe]s a tempting offer,' Chase says as he runs his eyes over your body, pausing to shake his head at your aroused cock. 'But I think I[apostrophe]ll have to pass on it right now.'  Chase says with a shrug, before grinning, 'I[apostrophe]ll make you a pretty good counteroffer though,' Chase says, before leaning forward and rubbing the sides of his head along your face and body, his whiskers tickling you as they trace along your sides, and his furred cheeks feeling soft and sleek, and leaving a strange tingling sensation behind where he rubbed against you.  'I think you would make a great tigress,' the tiger man says with a grin as he leans back against the wall and you feel the tingling intensify within you where he scent marked you, 'So why don[apostrophe]t you come back and make your offer again when you are one?' Chase adds in amusement";
		infect "Tiger"; 






Section 2- TigerVSTaur



TigerVSTaur is a situation.  The level of TigerVSTaur is 9.
The sarea of TigerVSTaur is "Zoo";
when play begins:
	add TigerVSTaur to badspots of hermaphrodite;
	add TigerVSTaur to badspots of furry;

Instead of Resolving a TigerVSTaur:
	say "Traveling down the zoo pathways, you hear a strange roaring noise nearby, followed by some violent sounds, after a few seconds the sounds fade somewhat, and you cautiously peek through the greenery to see a strange sight on one of the employee travel paths of the zoo.  Two creatures appear to have been fighting here, strangely enough it appears to be a couple of the tigertaurs that have been plaguing the zoo.  Closer inspection however, reveals that only one of the combatants happens to be a tigertaur, the other combatant appears to be merely an extremely tiger-like humanoid, with no tiger like lower body at all!  The combat is quickly drawing to a close however, as the tigertaurs larger form seems to give it an advantage against the more human-like tiger, and indeed as you watch, the tigerman seems to be growing more and more aroused and less able to resist the tigertaurs advances. You could intervene if you wanted, but it truly doesn[apostrophe]t look like the situation is any of your affair. Do you interfere?";
	if player consents:
		say "You quickly resolve to involve yourself in what is essentially not your conflict, but unable to see it continue without taking some action on your part.  You rush from hiding and into the fray, startling both combatants into taking a step back for second startled by your sudden presence, you have only a few seconds however before the conflict will obviously resume, in which to decide just who to aid.  The tigertaur seemed to be winning the fight so far, and it might make more sense for you to ally yourself with the obviously superior power, but you could also take the greater risk and try to aid the tiger against the strong tigertaur if you choose.     Do you side with the Tigertaur?";
		if the player consents:
			say "Deciding to side with the obviously winning side, you immediately move to cut off the Tiger mans escape, he stares at you hopelessly, as with your help the tigertaur soon manages to pin him down.  His attitude soon changes, as the strong tigertaur rubs up against his body, causing him to moan in pleasure as it massages him with its pawlike hands, his body changing into a more suitable one under its lustful attentions. Soon, the tiger-like man has acquired a brand new set of female genitalia, which the taur above the new herm is happy to put to use.  You watch, unable to look away and panting in lust at the erotic scene before you, as the tigertaur fucks the tiger underneath her, even while his body changes and shifts, its middle elongating into a tauric form of its own, as large breasts sprout on the newest tigertaurs chest. Soon they both explode into a messy climax, roaring out their pleasure for all to hear, and the first taur pulls herself off the newest tigertaur, it is only as they both turn to look at you that you realize you are still standing there out in the open now next to two very horny tigertaurs.  And it looks like they both want to thank you personally for your help in the recent scuffle....";
			challenge "tigertaur";
			now TigerVSTaur is resolved;
		otherwise:
			say "Deciding to aid the slightly more human like creature, you quickly engage the tigertaur in combat, as the tiger man falls back and tries to recover!";
			challenge "tigertaur";
			Say "after a rough fight, you are pushed to your limits, when finally the tiger man you came to aid rushes back into the fight, appearing much recovered and ready to fight again.  Unwilling to take on this new opponent after so much fighting already, the tigertaur turns and flees, leaving you exhausted but feeling somewhat relieved at this turn of events.  You turn and get a better look at the person you rescued, your eyes scanning up his long lean feline body, taking in his slightly digigrade legs and powerful stance, as well as his still obviously excited feline cock, before moving up past his strongly muscled chest and lingering for a moment on his clawed but still mostly human hands, finally resting on his tiger-like face, with a short muzzle currently spread in a grin, exposing his sharp carnivore teeth.  The powerful appearance of the tigerman makes you nervous for a minute as he stands there, but the minute of nervousness is broken as soon as he begins to speak.";
			say "'Thanks a ton for your help friend,' The tiger beast says in a pleasant rumbling voice, 'I was in a load of trouble there on my own, and if you hadn[apostrophe]t come along when you did, I[apostrophe]m sure I would have been sprouting a new pair of paws and giving in to the infection myself.' he says, before looking around and trotting over and pulling a large pack out of some bushes where it was obviously thrown when the combat started. Hefting the rather large pack easily up on his shoulders, he turns back to you and gestures for you to follow as he starts walking down some of the zoo pathways.";
			say "  'The names Chase,'The tiger man says as he leads you through the mostly unused maze of paths in the animal care area of the zoo, eventually leading you to a small employee exit and parking lot. Glancing around to be sure the coast is clear, he leads you across the street and down an alley. 'I worked near here before this all happened, and liked to visit the zoo and the big cats on my lunch break, so when shit started getting weird I ended up heading to the zoo again.  Turns out that was even more of a mess then most of the rest of the area, though most of the animals were gone at that point, still was plenty of changed around.  Ended up taking shelter in the tigers cage for while, since well, I figured most of the other creatures wouldn't look there... and hey if I actually encountered one of em myself, I would kind of rather end up becoming a tiger then most of the other animals around.' Chase says with a shrug, as he leads you to a large empty administrated office building a couple blocks away from the zoo.[line break]";
			say "'Sadly I never did actually encounter a tiger that day, but there must have been enough of whatever is causing the changes left over in their den to change me, I still don[apostrophe]t regret it though... this body is so much better then my old one was.' he says, flashing you a grin as you thread through the destroyed office building, furniture placed haphazardly all over, causing the place to look like a major battle took place here at some point. 'And hey!' Chase says as he opens a door almost hidden by the debris and leads you down what looks like maintenance stairs to the basement. 'At least I[apostrophe]m not alone like this,' the tiger man says with a grin as he throws open the basement door, causing you to stare inside, as several other tiger men and tiger women look up to see what's happening.  'Welcome to the Tiger den' Your guide says somewhat smugly, as he leads you inside."; 
			move player to Tiger den;
			now Tiger den is known;
			now TigerVSTaur is resolved;
			now battleground is "void";		[blocks a post-event fight]
	otherwise:
		say "Deciding to let the two infected beasts finish their little dominance battle in privacy, you continue along your way without stopping to see what happens.";
		now TigerVSTaur is resolved;

		



Tiger Den ends here.
