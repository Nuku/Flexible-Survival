Version 1 of DrMoffatt by Stripes begins here.
[Version 1]
"Adds a Skunk Shemale NPC named Doctor Moffatt to the Flexible Survival game"
[3.0]

Section 1 - Event

Another Doctor is a situation.
The sarea of Another Doctor is "Hospital";
when play begins:
	add Another Doctor to badspots of hermaphrodite;
	add Another Doctor to badspots of girl;
	add Another Doctor to badspots of furry;

Instead of resolving a Another Doctor:
	say "     While searching through some patient rooms, you hear a noise behind you and freeze.  At the door, you spot a large and womanly skunk in a doctor's coat and an short skirt.  Her limited clothes can do nothing to contain her considerable assets.  Her breasts are each larger than her head and prominently display their plump, round nipples.  These melons are so big that she doesn't even bother to try closing the white coat, which you doubt could even be managed.  Further down, her hips are very wide and womanly and her thighs are round and meaty to match, all straining the poor skirt's attempt to cover them.  But what the skirt completely fails to cover are the skunk woman's huge hanging maleness and oversized balls.  The latter are each nearly as large as her breasts and the former hangs down just as low despite its mostly flaccid state.";
	say "     When you realize that you've been staring at the skunk for some time, you notice that she's been smiling back at you, shifting her position to show off her luscious form all the more.  She has a bit of a masculine face, but with full, plump lips with a bit of a predatory smile.  Her black hair has a slight wave to it and is kept short at her back.  The lighter fur on her skunk pattern is a pale gray and even her darker sections are more a charcoal colour than pure black.  The only white you can see on her is her pearly white teeth and in her eyes, you realize.  Even her her irises are an ash gray.  This leads you to look again, noting the completely colourless nature of this skunk.  The exposed flesh of her nipples and cock are gray and her lips are either naturally black or glossed black.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     'If you're done looking, I'd like to talk to you,' she says in an amused tone and a flick of her large, bushy tail.  'I think you, my friend, are just what I've been looking for,' she adds, looking you over with a sexy smile[if hospquest is 13].  'I understand you had some kind of professional disagreement with our esteemed Dr. Mouse, but that need not hinder our relationship.'  She says the last word[otherwise if hospquest is 0 or hospquest is 1].  'I hope you'll be willing to assist me with a little something.'  She says [']assist['][otherwise if hospquest is 2 or hospquest is 3 or hospquest is 4].  'I understand you'll be giving Dr. Mouse some assistance.  I hope you'll be able to assist me as well.'  She says [']assist['][otherwise].  'I understand you've been giving Dr. Mouse a hand.  I hope you'll consider giving me some assistance as well.'  She says [']assistance['][end if] with a rather provacative tone, but also a teasing grin.  You remain guarded, but do allow yourself to relax a little.";
	say "     'My name is Dr. Moffatt and I am, or was to be more accurate, the Head of Psychology at this hospital before things became much more interesting,' she runs a gloved paw down the front of her skirt and over her bloated cock, making it twitch a little.  'And while our new hospital director,' she says in a slightly derisive tone, '[if hp of doctor mouse is not 2]is[otherwise]was[end if] quite pleased to study his precious, little nanites, I'm more interested in psychological aspects of the change.  As such, I was hoping to find someone willing to help me out";
	if skunkbeaststatus is 1:
		say ".  But now that I've looked you over, it seems you've been too tainted by those rather mundane skunks at the park and would not at all be a suitable candidate.  It's most unfortunate - you're rather cute,' she says with a final grin before turning and flicking her tail and heading off.  Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out.";
		now hp of Doctor Moffatt is 100;
	otherwise if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say ".  But now that I've looked you over, it seems you've gone and become too tainted by some strangely persistant infection.  It keeps you from being a suitable candidate at all.  It's most unfortunate - you're rather cute,' she says with a final grin before turning and flicking her tail and heading off.  Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out.";
	otherwise:
		say ".  Certainly someone as clever and brave as yourself wouldn't be scared of a little experimenting,' she says, again teasing with the last word as she leans forward onto a small table to press her ample bosom out.  Your eyes locked on her strangely alluring body, you [if charisma of player < 16]mumble something about wanting to help her[otherwise]suavely say that one always has be open to experimenting these days[end if].  She giggles merrily at your reply and pulls a small keycard out of her pocket.  'Much of the hospital's halls have been barricaded or locked, but this card will let you get through those sealing off the Psych Department.  Come stop by my office and we'll talk more.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Having given you the limited pass card and some directions, the hyperskunk woman gives you another grin before heading out, her tail giving a broad swish as she sways her ample hips.  'Please don't keep me waiting to long, my dear.  I could just about burst with excitement,' she says teasingly as she looks back at you over her shoulder.  Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out.  As you debate going to visit her to see what she has in mind, you look over the pass card.  At least this will make it a little easier to get around the hospital.";
		now hp of doctor moffatt is 1;
		now Psych Department is known;
		increase hospnav by 1;
		say "[hospprogress]";
		increase score by 5;


Section 2 - Psych Department

Psych Department is a room. It is fasttravel. It is private.
The description of Psych Department is "[psychdesc]";

to say psychdesc:
	say "     The office of Dr. Moffatt in the Psychology department has been kept rather tidy though you're quite certain it's changed since the outbreak.  Aside from the usual desk, filing cabinet and assorted accoutriments, there are a few straight jackets left strewn around, a colourful array of sex toys standing upright on her desk and the remains of sticky stains on the floor and walls.  Speaking of the walls, there are several colourful crayon drawings of what must be the mephit doctor over the white paint.  Where it not for the clear emphasis on the skunk's giant assets, you'd think them drawn by a child.  There are a few ornamental skunks on her desk as well, though of a more mundane form than the hypersexualized scrawls.";
	if hp of doctor moffatt is 1:
		say "[line break]";
		say "     The doctor smiles at you as you arrive.  'Excellent.  I was just thinking about you,' she says as she gets up, showing that her cock's actually mostly hard right now, raising up the front of her skirt to give an even better view of her maleness.  'I hope this means you've decided to help me with my little experiment.  I simply want to observe the effects of the infection and transformation to one's psyche over time.  As you seem more coherent and sane than most, you should be able to better articulate what's happening to you.  Most who become infected change rather rapidly and become at rather fixed in their newly obtained form.'";
		say "     'It seems there's at least some psychological component to how nanite infection manifests itself.  Or, at least, it can be a contributing factor in some cases.  Take myself for instance,' she says, running her gloved paws over her breasts and cock with clear pleasure.  'My infection seems to have imprinted on my skunk decorations and a few of my own, personal kinks.  Yet others find their minds and sexual desires changed utterly by the infection instead.'";
		say "     She turns around and bends over to pick something up, accidentally (maybe) giving you a peek under her skirt while her broad tail keeps the back of her doctor's coat split.  You can't help but notice that there's no wet pussy hidden under there, just her wide hips and huge nutsack.  You'd assumed she was a herm like so many others you've seen around, but she's actually a shemale.  Her curvy bottom sways from side to side, setting her balls rocking as well as he rummages around in the box before finally finding what she wanted.";
		say "     'Here you go,' she says, passing you a glass sample jar and a bottle of water.  'Before we can get started, I'd like you to collect a sample from one of those skunk girls in the park.  They shouldn't be much trouble for you, I'm sure,' she says with a smile.  'And the water's for you.  My way of saying thanks for helping me out,' she says with a smile.";
		add "water bottle" to invent of player;
		now hp of doctor moffatt is 2;
		now battleground is "void";

instead of sniffing Psych Department:
	say "The room smells strongly of its sexy skunk occupant, though there's traces of the scents of others, mainly mustelids, having been in here as well.";


Section 3 - Doctor Moffatt

Doctor Moffatt is a person.  Doctor Moffatt is in Psych Department.
The description of Doctor Moffatt is "[drmoffattdesc]";
The conversation of Doctor Moffatt is { "..." }.

instead of sniffing the Doctor Moffatt:
	say "She smells of skunk, but not in a bad way, mostly of the fur and animal and not anything stronger.  She also has a pleasant, perfumed scent beneath that.";

to say drmoffattdesc:
	say "     Doctor Moffatt, the shemale skunk, has a very striking appearance.  Her pretty face has a slightly masculine look to it, but her lips are full, luscious and black in colour like her nose and hair.  Her fur is a mix of grays, dark and light, instead of the starker constrast of black and white you'd expect on a skunk.  She has a huge, fluffy tail, as long as she is tall and as wide as her hips.  And those hips are quite wide indeed.  The skunk's hips and ass are quite wide and womanly, continuing down to her thick thighs.";
	say "     But as things go, those aren't the most striking features on the grayscale skunk.  Her breasts are quite huge, each the size of a small watermelon.  They have large, oversized nipples with areolae about three inches across.  And to match there size are the huge globes of her balls, each roughly just as big as her breasts and with a giant missile of a cock to go along with them.  While she wears a doctor's coat and a short skirt, they can do nothing to contain or conceal this skunk woman's hypersexualized body.  She also has a pair of white gloves she wears over her hand-like paws.";
	say "     Seeing you looking at her, she playfully [one of]leans across her desk, pushing her breasts out with her arms[or]runs a paw casually around one nipple[or]rubs her gloved paws down her very wide hips[or]gives her fluffy tail a swish[or]bends down to pick something up, flashing her rear and exposing her lack of pussy behind those huge balls[or]slowly runs a fingertip along the gray flesh of her cock[at random].";


Instead of conversing the Doctor Moffatt:
	if hp of Doctor Moffatt is 0 or hp of Doctor Moffatt is 1:
		say "ERROR-Moffatt-[hp of Doctor Moffatt]T: I shouldn't be talking to you right now!";
	otherwise if hp of Doctor Moffatt is 2:
		if "skunk goo" is listed in invent of player:
			delete skunk goo;
			say "***Skunk goo taken.  (More content to come later)";
		otherwise if a random chance of 1 in 3 succeeds:
			say "     [one of]'I do need you to obtain a sample of the goo from those skunks in the park[if hp of doctor mouse is not 2].  The hospital director is ignoring my request to get a sample collected for me[otherwise].  The hospital is in too much disarray now to arrange for an orderly to obtain me one[end if]... and that's why I'm why I've got to ask you.'[or]'Please try to find some goo from those skunk girls.  I need a proper control sample.'[at random]";
		otherwise:
			say "[generalsaytempholder]";
	otherwise:
		say "[generalsaytempholder]";


to say generalsaytempholder:
	if a random chance of 7 in 8 succeeds:
		say "     [one of]'Do you like the drawings?  One of the weasels I've been treating's taken a fancy to me and did this will I was out of the room.  I think it's kind of sweet,' she says, pointing to one of her resting her footpaw on smaller, supplicant form.  Given the rough art, you must assume it is a weasel in a straightjacket with several red hearts floating nearby.[or]'I must say, this new me is quite enjoyable.  It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'I'd resigned my kinks as fantasy in my old life.  I must say being able to fulfill them for real has been quite enjoyable,' she confesses with a wink and a paw running down the front of her skirt over her ill-concealed maleness.[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch.  'Please tell me about your experiences outside.  How has all this been making you feel?  How are your sexual urges manifesting themselves?'  She asks her questions in a clinical manner, but also has a paw casually stroking one of her ample balls.'[or]'Here's a picture of the old me,' she says, holding up a photo of a stern but beautiful woman.  'Aren't I much sexier now,' she asks, running her paws over her oversized breasts and teasing her nipples.[or]'Do you like my collection?' she purrs, brushing a paw lightly across her myriad selection of dildos and sex toys, setting several of them to swaying.  None, even the biggest of them, come close to even her flaccid cock.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock.  'I should go check on the patients soon.  Make sure they've been getting their meds.'[in random order]";
	otherwise:	[too long, separated]
		say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[otherwise if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites.  I much prefer playing with others,' she says in a sultry voice.[otherwise if hospquest is 5 or hospquest is 6]'I know Dr. Mouse has been looking for a sample from that shemale creature out there - who sounds like a lot of fun, by the way.  I've already provided the pushy mouse with a sample of my own.  He wants to make comparisons to find the why's and wherefore's.  He doesn't like my [']because I think it's hot['] theory.'  She runs her paws over her oversexualized body, moaning softly.  'Silly mouse should just relax and enjoy it.'[otherwise if hospquest >= 7 and hospquest is not 13]'I hear you've been helping Dr. Mouse.  Just... just be careful, sweetie.  He's... I mean... These errands could be dangerous, so be on your guard.'[otherwise if hospquest is 13 and hp of doctor mouse is 1 and hospbattlelost is 1]'I saw that show you put on with our esteemed director.  You must have really upset him.  Sexy show though,' she adds, rubbing her groin as she remembers it.  The same memories send a shiver up your spine.[otherwise if hospquest is 13 and hp of doctor mouse is 1]'I hear you upset our little director.  The best laid plans of mice and men, eh?' she chuckles.[otherwise if hospquest is 13 and hp of doctor mouse is 2]'You've put things in quite an uproar here by taking out the hospital director.  I'm glad that mousey little dictator's gone, but things are crazy here without someone in charge,' she grumbles.[end if]";


[
other variations?:
dildos: some have been gifts/just started her collection recently
drawings: this one is my favorite
kinks: part of me had always wanted a figure like this/secretly wondered what having a cock would be like/hyper-fetish
skunks: colour/her figurines
psych couch: what new sexual desires have you felt/straight or gay before and what about now/do the creatures you've seen turn you on/skunk urges
old self: big breasts/sexy hips/cock/buried urges
Dr Mouse: be careful/as long as you're useful, he'll reward you well/comment about the controlling nature of the hospital hierarchy/very stimulating watching the 'show'/comment on changes to the staff?
patients: psycho weasels behaviour/they'd just be running amok if we didn't/we've been taking care of them in our own, special way


	say "     [one of][if hospquest is 0 or hospquest is 1]***not met dr mouse[otherwise if hospquest is 2 or hospquest is 3 or hospquest is 4]***met Dr. Mouse[otherwise if hospquest is 5 or hospquest is 6]***comment about shemale nature[otherwise if hospquest >= 7 and hospquest is not 13]***helping Dr. Mouse[otherwise if hospquest is 13 and hp of doctor mouse is 1 and hospbattlelost is 1]***saw hosptf scene[otherwise if hospquest is 13 and hp of doctor mouse is 1]***heard that player's pissed Dr. Mouse off[otherwise if hospquest is 13 and hp of doctor mouse is 2]***player defeated Dr Mouse[end if][or]***other dialog[in random order]";

I must say, it's quite pleasant to be able to enjoy some kinks otherwise impossible.

]

instead of fucking the Doctor Moffatt:
	if lastfuck of Doctor Moffatt - turns < 8:
		say "     ***Too early message.";
	otherwise:
		say "     'Mmm... as nice as that sounds, my dear.  I think it's too soon in our experiment for that,' she rumbles with a swish of her tail and a twitch of her large cock.";
		say "(No sex for now, my dear.)";


Section 4 - Endings



DrMoffatt ends here.