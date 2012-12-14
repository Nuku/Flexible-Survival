Version 1 of DrUtah by Stripes begins here.
[Version 1 - Main Dr. Utah content]
"Adds a Wereraptor NPC named Dr. Utah to the Flexible Survival game"

Section 1 - Paleontology Office

Paleontology Office is a room. It is fasttravel. It is private.
The description of Paleontology Office is "[paleodesc]";

instead of sniffing Paleontology Office:
	say "The office smells of old books and older bones, but also of the wereraptor occupying it.";

to say paleodesc:
	if girl is not banned:
		say "     Dr. Utah's office has been cleaned since you first saw it, but is still quite the mess.  While most of the debris has been removed, the slashes at the wall and damage to the door and its frame remain.  Several new books has been brought in, including a copy of the book Nermine had.  Dr. Utah is [if daytimer is day][one of]pacing as she thinks[or]poring over some books[or]looking at some small fossils[or]surveying a map of the campus[or]lounging in her chair[at random][otherwise][one of]prowling around the room[or]munching on some chunk of meat[or]clawing impatiently at her desk[or]gazing out the window and touching herself[or]pads around the room[at random][end if].";
	otherwise:
		say "     Dr. Utah's office has been cleaned since you first saw it, but is still quite the mess.  While most of the debris has been removed, the slashes at the wall and damage to the door and its frame remain.  Several new books has been brought in, including a copy of the book Nermine had.  Dr. Utah is [if daytimer is day][one of]pacing as he thinks[or]poring over some books[or]looking at some small fossils[or]surveying a map of the campus[or]lounging in his chair[at random][otherwise][one of]prowling around the room[or]munching on some chunk of meat[or]clawing impatiently at his desk[or]gazing out the window and touching himself[or]pads around the room[at random][end if].";


Section 2 - Dr Utah the Wereraptor

Doctor Utah is a person.  Doctor Utah is in Paleontology Office.
The description of Doctor Utah is "[utahdesc]";
The conversation of Doctor Utah is { "Hiss!" }.

instead of sniffing the Doctor Utah:
	say "[if daytimer is day]Dr. Utah smells faintly of hidden lust and power, revealing his wereraptor nature to you[otherwise]Dr. Utah smells of wereraptor lust and power.  It is quite exciting[end if].";

to say utahdesc:
	if girl is not banned:
		if daytimer is day:
			say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night.  Her scales are green and black and her claws and teeth are less prominent during daylight hours.  She has a put on a woman's blazer and pants to keep the illusion of still being human inside to fool others, but you know better.  Your own feral instincts sense her wild nature as a wereraptor like yourself.";
		otherwise:
			say "     Dr. Utah is in her full wereraptor form, a cross between human and saurian that has her bend forwards and her arms folded up against her chest when not in use.  She seems a little larger and more powerful than the other wereraptors you've seen running around.  She's discarded her clothes and struts around nude, giving you ample opportunity to look over her sexy nocturnal form.  With her raptor head, green and black scales and sharp talons, she's an impressive (and attractive) beast that gets your own feral urges excited.";
	otherwise:
		if daytimer is day:
			say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night.  His scales are blue and green and his claws and teeth are less prominent during daylight hours.  He has a put on a 
blazer and pants to keep the illusion of still being human inside to fool others, but you know better.  Your own feral instincts sense his wild nature as a wereraptor like yourself.";
		otherwise:
			say "     Dr. Utah is in his full wereraptor form, a cross between human and saurian that has him bend forwards and his arms folded up against his chest when not in use.  He seems a little larger and more powerful than the other wereraptors you've seen running around.  He's discarded his clothes and struts around nude, giving you ample opportunity to look over his sexy nocturnal form.  With his raptor head, blue and green scales and sharp talons, he's an impressive (and attractive) beast that gets your own feral urges excited.";


Instead of conversing the Doctor Utah:
	if nightmaretf > 0 or HellHoundlevel > 0:
		say "     Dr. Utah sniffs and growls at you.  'You fool!  You wretch!  I can smell that... that... tainted essense within you.  You have given up the wonderful gift I have bestowed upon you.  Begone!' [if girl is not banned]she[otherwise]he[end if] snarls as he slashes at you, driving you from [if girl is not banned]his[otherwise]her[end if] office before slamming the door on you.  It seems you're no longer welcome here.";
		now wrcursestatus is 100;
	otherwise if daytimer is day:
		say "     [one of]'I have been adding a few more converts to our numbers during my hunts.'[or]'I look forward to the night.  While this form is much better than my human one, I much prefer my true form.'[or]'A few of those I've [']cursed['] seem about ready to accept their new nature.  When the time is right, I shall bring them to the Museum and complete the rite.'[or]'It is best we grow are numbers slowly for now and prepare for our eventual [']rescue['].[or]'I long for the night so that I may sate my hungers.'[at random]";
	otherwise:
		say "     [one of]'It is... refreshing... to be in my true form.'[or]'I think I shall head out soon and find some... meat.'[or]'Perhaps I'll head out shortly to enjoy one of the new converts out there.'[or]Dr. Utah gives a hiss of lust and flicks [if girl is banned]his[otherwise]her[end if] claws while watching someone running through the courtyard behind the building.[or]'Our numbers grow slowly, but steadily.'[or]'I think I shall stalk a new [if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] to satisfy my desires.  They may even make a suitable convert.'[or]'We shall prevail thanks to the power of our gifts.  While the others can breed and transform faster, the wereraptors will always remain so.  Over time, the mammals shall join our numbers or become our prey.'[at random]";


instead of fucking the Doctor Utah:
	say "     Dr. Utah looks out over the campus and scritches [if girl is banned]his[otherwise]her[end if] chin.  For the moment at least, it seems [if girl is banned]he[otherwise]she[end if] is more interested in seeking [if girl is banned]his[otherwise]her[end if] pleasures among those out there.";
	say "(***Sex to be added later.)[line break]";


Section 3 - Endings

[Endings to come later]


DrUtah ends here.