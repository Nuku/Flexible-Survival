Version 1 of DrMoffatt by Stripes begins here.
[Version 1.1 - Testing begins]
"Adds a Skunk Shemale NPC named Doctor Moffatt to the Flexible Survival game"
[6.25]

Section 1 - Event

Another Doctor is a situation.
The sarea of Another Doctor is "Hospital";
when play begins:
	add Another Doctor to badspots of hermaphrodite;
	add Another Doctor to badspots of girl;
	add Another Doctor to badspots of furry;

Instead of resolving a Another Doctor:
	say "     While searching through some patient rooms, you hear a noise behind you and freeze.  At the door, you spot a large and womanly skunk in a doctor's coat and an short skirt.  Her limited clothes can do nothing to contain her considerable assets.  Her breasts are each larger than her head and prominently display their plump, round nipples.  These melons are so big that she doesn't even bother to try closing the white coat, which you doubt could even be managed.  Further down, her hips are very wide and womanly and her thighs are round and meaty to match, all straining the poor skirt's attempt to cover them.  But what the skirt completely fails to cover are the skunk woman's huge hanging maleness and oversized balls.  The latter are each nearly as large as her breasts and the former hangs down just as low despite its mostly flaccid state.";
	say "     When you realize that you've been staring at the skunk for some time, you notice that she's been smiling back at you, shifting her position to show off her luscious form all the more.  She has a bit of a masculine face, but with full, plump lips with a bit of a predatory smile.  Her black hair has a slight wave to it and is kept short at her back.  The lighter fur on her skunk pattern is a pale gray and even her darker sections are more a charcoal colour than pure black.  The only white you can see on her is her pearly white teeth and in her eyes, you realize.  Even her irises are an ash gray.  This leads you to look again, noting the completely colourless nature of this skunk.  The exposed flesh of her nipples and cock are gray and her lips are either naturally black or glossed black.";
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
	now Another Doctor is resolved;


Section 2 - Psych Department

Psych Department is a room. It is fasttravel. It is private.
The description of Psych Department is "[psychdesc]";

to say psychdesc:
	say "     The office of Dr. Moffatt in the Psychology department has been kept rather tidy though you're quite certain it's changed since the outbreak.  Aside from the usual desk, filing cabinet and assorted accoutriments, there are a few straight jackets left strewn around, a colourful array of sex toys standing upright on her desk and the remains of sticky stains on the floor and walls.  Speaking of the walls, there are several colourful crayon drawings of what must be the mephit doctor over the white paint.  Where it not for the clear emphasis on the skunk's giant assets, you'd think them drawn by a child.  There are a few ornamental skunks on her desk as well, though of a more mundane form than the hypersexualized scrawls.";
	if hp of doctor moffatt is 1:
		say "[line break][psychfirstarrival]";

to say psychfirstarrival:
	say "     The doctor smiles at you as you arrive.  'Excellent.  I was just thinking about you,' she says as she gets up, showing that her cock's actually mostly hard right now, raising up the front of her skirt to give an even better view of her maleness.  'I hope this means you've decided to help me with my little experiment.  I simply want to observe the effects of the infection and transformation to one's psyche over time.  As you seem more coherent and sane than most, you should be able to better articulate what's happening to you.  Most who become infected change rather rapidly and become rather fixed in their newly obtained form.'";
	if skunkbeaststatus is 1:
		say "     'But it seems now that you've since become too tainted by those rather mundane skunks at the park.  You are no longer a suitable candidate for my testing.'  She sighs and teases one of her nipples.  'It's too bad, too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say "     'But it seems you've gone and become too tainted by some strangely persistant infection since I last saw you.  It keeps you from being a suitable candidate at all.'  She sighs and teases one of her nipples.  'It's too bad,too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise:
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
	[puts Hyperskunk as lead monster in case of infection/impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hyperskunk":
			now monster is y;
			break;
	if hp of Doctor Moffatt is 0 or hp of Doctor Moffatt is 1 or hp of Doctor Moffatt is 100:
		say "ERROR-Moffatt-[hp of Doctor Moffatt]T: I shouldn't be talking to you right now!";
	otherwise if hp of Doctor Moffatt is 98:
		say "     'Now you've gone and messed it all up.  You were supposed to return for another dose long before now.  Now you've gone and ruined by experiment.  And things were going along so nicely.'  She wraps her fluffy tail around herself and waves a paw at you dismissively.";
	otherwise if hp of Doctor Moffatt is 99:
		say "     The skunk doctor turns away from you with a meaningful flick of her tail.  'I have no interest in you any more.  You've gone and messed up my experiment.'";
	otherwise if skunkbeaststatus is 1:
		say "     'It seems now that you've since become too tainted by those rather mundane skunks at the park.  You are no longer a suitable candidate for my testing.'  She sighs and teases one of her nipples.  'It's too bad, too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say "     'It seems you've gone and become too tainted by some strangely persistant infection since I last saw you.  It keeps you from being a suitable candidate at all.'  She sighs and teases one of her nipples.  'It's too bad,too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise if hp of Doctor Moffatt is 2 and "Skunk Goo" is listed in invent of player:
		delete Skunk Goo;
		say "     'You have my sample for me already?' she says with a happy smile before leaning over to give you a peck on the cheek.  'You're so sweet,' she purrs.  'Mmm... we should be able to get started shortly.  I just need a few moments to set things up in here,' she adds, giving you a wink and a swish of her wide hips before stepping out momentarily.";
		say "     While she's out, you take the opportunity to look around the room quickly.  You scan her notes, finding a mix of musings about the mental and arousing effects of the infection and notes about some of the weasel patients being cared for in the psych ward.  Mixed in with them are some more crayon drawings, presumably by the mental patients.  They are a mix of distorted scribbles showing some of the creatures you've seen out in the city and rather lewd picturs of vixens, owls and a rather familiarly big-chested skunk.";
		say "     With nothing really untowards there, you check out a few of the skunk figurines.  There's about ten or so of them set out around the room.  Most are tiny things, though there's a couple of larger ones.  Picking one up, you look at the rather pudgy, cartoonish skunk with a red bow and a sappy smile.  As you're checking the underside of the porcelain figure, you hear a cough behind you.  'If you wanted to check under my skunk's tail,' she says with a grin, 'you just needed to ask.'  She takes the figure from you and sets it back down, rubbing her ample bosom against you as she does.";
		wait for any key;
		say "     'I got that one from one of my patients after helping her through a particularly difficult time in her life.  Her family made them and she wanted to thank me.  I'm not sure why I kept it, but after that other patients started giving me some as well.  Being mostly black and white, they didn't seem terribly out of place with my usual simple decor, so I left them around.  And I'm so glad I did.  I make a rather sexy skunk, don't you think?' she teases, letting her bushy tail wrap all around you and pulling herself in close.";
		say "     'Mmm... cozy.  But on to business,' she says, pulling out a small vial of white, milky fluid.  'Here's your first dose.  Mixed in a bit of milk to go down easy.'  You look at the milk suspiciously.  'Oh, don't be that way.  I wouldn't give you any of that common park-skunk stuff.  I only need that junk for the control sample.  You deserve better,' she says with a rumble, grinding her warm, soft breasts against you.  'Besides, you promised to help me out, sweetie,' she pouts.";
		say "     Not wanting to disappoint the skunk woman, though probably a little enamoured with those hefty funbags of hers, you take the vial and drink it down quickly, hardly tasting it to avoid any medicinal taste it may have.  She smiles and kisses your cheek again before pushing you down roughly onto the couch.  'Mmm... now tell me how you feel, my dear,' she says excitedly, grabbing her notepad and sitting on the edge of her desk.  Your position gives you a fine view of her large sexy body and a clear window under her skirt.  Her cock throbs and twitches, clearly the skunk's excited in more than just a professional manner.";
		wait for any key;
		say "     As you feel the warmth and tingles of the infection spreading through you, the first visible change starts at your hips.  These widen, giving you a large and sexy bottom with wide birthing hips.  It quickly spreads down to your thighs, with them getting thicker to match your full bottom.  The changes continue to flow down your legs, with your lower legs getting stronger to support your added weight, but keeping to more regular proportions to further emphasize your changes to your hips and thighs.  Your feet are predominantly human in form, but your toes turn into more paw-like digits and gain small claws.";
		say "     As this is going on, you try your best to answer the skunk woman's questions.  She asks stuff like 'Are you feeling more aroused now?' and 'Do you feel sexier now?' and 'Would you say you feel more open to sex with those transformed?'  In the hormonal rush of your transforming body, you can't help but agree with her questions.";
		say "     With the changes continuing, but this time in an upward direction, your waist grows fuller.  You'd not be called fat, but there's a little extra padding there to flow into those wide hips.  Continuing up, your upper body again shifts to more normal proportions for your torso, shoulder and arms, again making your caboose stand out.  They almost seem slender in comparison, but are quite lovely and would suit a model or actress, which you say to Dr. Moffatt.  She continues to take note of your answers, only pausing on occasion to rub her cock and balls or tweak a nipple.";
		wait for any key;
		now bodyname of player is "Hyperskunk";
		now body of player is body entry;
		attributeinfect;
		let cockstemp be cocks of player;
		let cocklengthtemp be cock length of player;
		let cockwidthtemp be cock width of player;
		let breastsizetemp be breast size of player;
		let cuntstemp be cunts of player;
		let cuntlengthtemp be cunt length of player;
		let cuntwidthtemp be cunt width of player;
		follow the sex change rule;
		say "     As the transformation progresses down to your hands, they change as well, becoming mostly human in form, with smooth and shapely fingers and again tipped by small, black claws[if breastsizetemp < breast size of player].  The swelling at your chest makes you moan as your bosom expands, making you feel even sexier[end if][if cockstemp < cocks of player].  You can't help but touch your new cock and balls, and (with a little prompting from Dr. Moffatt) start listing off some of the things you'd like to do with your newfound maleness[otherwise if cocklengthtemp < cock length of player].  Your dainty hands slip down to your growing cock, stroking it to full erection, and (with a little prompting from Dr. Moffatt) you start listing off some of the things you'd like to do with it[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player].  Your expanded balls churn with increased virility and you delight in telling her about how the prospect of even larger orgasms makes you feel[end if][if cuntstemp < cunts of player].  Your altered hands drift downwards, starting to finger your fresh, new pussy, pleased as you see the doctor's cock twitch when you do so[otherwise if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player].  Your altered hands drift downwards, starting to finger your expanded cunt, pleased as you see the doctor's cock twitch when you do so[end if].  You take a few moments to let your hands roam over yourself, savouring the changes while Dr. Moffatt continues to ask her questions.  Despite the clinical delivery of her questions, you can see she's become quite turned on and touches herself frequently.";
		say "     Once your changes have settled down and she's finished all her questions, she gets up and straightens her coat.  'I think that went rather well for a first session.  I'm glad you were so willing to open up.  I'm sure this will yield very promising results,' she purrs, running her paws over your wide hips and giving you a lustful kiss before heading back behind her desk.  'Now remember, I'll need you to come back every couple of days to continue to record the effects.  Please be mindful of how everything that happens makes you feel so you can tell me all about it later.'";
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		now hp of Doctor Moffatt is 3;
		now lastfuck of Doctor Moffatt is turns;
	otherwise if hp of Doctor Moffatt is 2 and a random chance of 1 in 3 succeeds:
		say "     [one of]'I do need you to obtain a sample of the goo from those skunks in the park[if hp of doctor mouse is not 2].  The hospital director is ignoring my request to get a sample collected for me[otherwise].  The hospital is in too much disarray now to arrange for an orderly to obtain me one[end if]... and that's why I'm why I've got to ask you.'[or]'Please try to find some goo from those skunk girls.  I need a proper control sample.'[at random]";
	otherwise if hp of Doctor Moffatt is 2:
		if a random chance of 7 in 8 succeeds:
			say "     [one of]'Do you like the drawings?  One of the weasels I've been treating's taken a fancy to me and did this while I was out of the room.  I think it's kind of sweet,' she says, pointing to one of her resting her footpaw on smaller, supplicant form.  Given the rough art, you must assume it is a weasel in a straightjacket with several red hearts floating nearby.[or]'I must say, this new me is quite enjoyable.  It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'I'd resigned my kinks as fantasy in my old life.  I must say being able to fulfill them for real has been quite enjoyable,' she confesses with a wink and a paw running down the front of her skirt over her ill-concealed maleness.[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch.  'Please tell me about your experiences outside.  How has all this been making you feel?  How are your sexual urges manifesting themselves?'  She asks her questions in a clinical manner, but also has a paw casually stroking one of her ample balls.[or]'Here's a picture of the old me,' she says, holding up a photo of a stern but beautiful woman.  'Aren't I much sexier now,' she asks, running her paws over her oversized breasts and teasing her nipples.[or]'Do you like my collection?' she purrs, brushing a paw lightly across her myriad selection of dildos and sex toys, setting several of them to swaying.  None, even the biggest of them, come close to even her flaccid cock.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock.  'I should go check on the patients soon.  Make sure they've been getting their meds.'[in random order]";
		otherwise:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[otherwise if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites.  I much prefer playing with others,' she says in a sultry voice.[otherwise if hospquest is 5 or hospquest is 6]'I know Dr. Mouse has been looking for a sample from that shemale creature out there - who sounds like a lot of fun, by the way.  I've already provided the pushy mouse with a sample of my own.  He wants to make comparisons to find the why's and wherefore's.  He doesn't like my [']because I think it's hot['] theory.'  She runs her paws over her oversexualized body, moaning softly.  'Silly mouse should just relax and enjoy it.'[otherwise if hospquest >= 7 and hospquest is not 13]'I hear you've been helping Dr. Mouse.  Just... just be careful, sweetie.  He's... I mean... These errands could be dangerous, so be on your guard.'[otherwise if hospquest is 13 and hp of doctor mouse is 1 and hospbattlelost is 1]'I saw that show you put on with our esteemed director.  You must have really upset him.  Sexy show though,' she adds, rubbing her groin as she remembers it.  The same memories send a shiver up your spine.[otherwise if hospquest is 13 and hp of doctor mouse is 1]'I hear you upset our little director.  The best laid plans of mice and men, eh?' she chuckles.[otherwise if hospquest is 13 and hp of doctor mouse is 2]'You've put things in quite an uproar here by taking out the hospital director.  I'm glad that mousey little dictator's gone, but things are crazy here without someone in charge,' she grumbles.[end if]";
	otherwise if hp of Doctor Moffatt is 3:
		if a random chance of 1 in 2 succeeds and lastfuck of Doctor Moffatt - turns >= 8:
			say "     'It's about time for your next treatment.  Please let me know as soon as you're ready to start.  You really shouldn't put it off for too long,' she purrs, rubbing a paw over her breasts, as if imagining the upcoming session.";
		if a random chance of 7 in 8 succeeds:
			say "     [one of]'That weasel's become quite smitten with me,' she says, looking over the childish wall art.  'He gets quite upset if I don't visit him each day to give him his medicine.'  Looking at one crayon scrawl of the straightjacketed weasel bloated like a balloon after the big boobed skunk's pulled out of him, you wonder exactly what she means by [']medecine['].[or]'I must say, this new me is quite enjoyable.  It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'The old, stuffy me would never admit to wanting a figure like this, let alone a big, meaty cock.  Imagining what a real cock would feel like was my most secret fantasy.  I'm sure my hidden desires helped me become the sexy skunk I am today.[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch.  'Tell me about your sexual life and fantasies before the outbreak?  What new sexual desires have you felt since the outbreak began?'  She asks her questions in a clinical manner, but also has a paw stroke over her pulsing cock.[or]'I much prefer my new breasts over my old, small ones.  Don't you agree?' she asks, leaning over her desk, teasingly pushing them out with her arms.  Eying those large nipples, you lick your lips and start reaching for them, but she giggles and pulls herself back.  'Ahh ah... we've got to complete our testing first.'[or]'This is the newest piece in my collection,' she says, holding up a bright red dildo.  It is thick and has a slight curve to it and a slightly tapered tip.  'It's lots of fun,' she purrs, sliding her tongue slowly along it, watching your reaction with a grin.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock.  'I should go check on the patients soon.  Make sure they've been getting their meds.'[in random order]";
		otherwise:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[otherwise if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites.  I much prefer playing with others,' she says in a sultry voice.[otherwise if hospquest is 5 or hospquest is 6]'Dr. Mouse already got a sample from me, but he doesn't like my theory about my wonderful cock, so he wants another sample for comparison.[otherwise if hospquest >= 7 and hospquest is not 13]'I know you've been helping out Dr. Mouse, but I hope you have some time to help me as well, sweetie.  He's... I mean... I'm sure you'll have more fun helping me out,' she says, stroking your cheek but seeming briefly nervous as well.[otherwise if hospquest is 13 and hp of doctor mouse is 1 and hospbattlelost is 1]'Seeing you held down like that in the operating theather, changing in so many interesting ways.  I must admit it turned me on a lot.  Though I'm finding it even sexier the way you're changing now,' she purrs, running her paws along your sides and pressing her huge bosom against you.[otherwise if hospquest is 13 and hp of doctor mouse is 1]'You've really got Dr. Mouse upset.  You'd best lay low around here.'[otherwise if hospquest is 13 and hp of doctor mouse is 2]'Things are in quite an uproar with that mad mousey gone.  The tension between the other groups here is starting to rise without anyone in charge.'[end if]";


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
	[puts Hyperskunk as lead monster in case of infection/impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hyperskunk":
			now monster is y;
			break;
	if hp of Doctor Moffatt is 2:
		say "     'Mmm... as nice as that sounds, my dear, we'd best focus on my little experiment first,' she rumbles with a swish of her tail and a twitch of her large cock.  She does take a moment to note your request on her notepad.";
	otherwise if hp of Doctor Moffatt is 0 or hp of Doctor Moffatt is 1 or hp of Doctor Moffatt is 100:
		say "ERROR-Moffatt-[hp of Doctor Moffatt]T: I shouldn't be talking to you right now!";
	otherwise if hp of Doctor Moffatt is 98:
		say "     'Now you've gone and messed it all up.  You were supposed to return for another dose long before now.  Now you've gone and ruined by experiment.  And things were going along so nicely.'  She wraps her fluffy tail around herself and waves a paw at you dismissively.";
	otherwise if hp of Doctor Moffatt is 99:
		say "     'Why should I consider wasting my time with you?  You ruined my wonderful experiment.  Now I need to find another test subject and start from scratch.'";
	otherwise if skunkbeaststatus is 1:
		say "     'It seems now that you've since become too tainted by those rather mundane skunks at the park.  You are no longer a suitable candidate for my testing.'  She sighs and teases one of her nipples.  'It's too bad, too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say "     'It seems you've gone and become too tainted by some strangely persistant infection since I last saw you.  It keeps you from being a suitable candidate at all.'  She sighs and teases one of her nipples.  'It's too bad,too.  I think we would have had lots of fun together.  Now I'll need to start looking for someone else.  You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now hp of doctor moffatt is 99;
	otherwise if hp of Doctor Moffatt is 3:
		if lastfuck of Doctor Moffatt - turns < 8:
			say "     'A most interesting response.  We'd best make note of it for later.  For now though, we need to focus on my experiment instead of biasing the results in such a manner.  As fun as that would be,' he adds, giving your bottom a squeeze.  'Just return and ask me again a day or two after each session and we'll take it from there, my dear.'";
			say "     'What I'd much prefer you do right now is head back out and wander around for a bit.  Come back in a day or so and tell me about your experiences and how they made you feel.  Besides, I'll need to spend some time with my patients.  I'm sure they miss me, too.'";
		otherwise:
			say "     'Ready for another session, then?' she says with a happy smile.  'To start, I want you to lie down on the couch and tell me about what's happened since our last session.'  You stretch out and begin to relate your recent experiences to her as she asks you how you felt about the creatures you saw, which ones your found arousing, how much sex you needed to get through your day and so forth.  You keep it brief to start, but soon find yourself adding increasing detail as you talk about the lustful urges you've been feeling and the heightened arousal your infected body feels at everything.  Between taking her copious notes, her paws wander to her large breasts, her engorged cock or her hefty balls to caress them while asking another question[if cocks of player > 0 or cunts of player > 0].  As you reminisce over what you've seen and done, your hands end up drifting down to your groin, starting to play with yourself as you talk[end if].";
			say "     After a long session that has you rather worked up, Dr. Moffatt gets up to collect another dose from somewhere behind her desk.  This gives you another fine view under her raised tail as she goes looking for it, which only arouses you further.  In your lustful state, you gulp down the tainted milk without hesitation, moaning in pleasure as a fresh rush of lust and change flows through you.";
			let cockstemp be cocks of player;
			let cocklengthtemp be cock length of player;
			let cockwidthtemp be cock width of player;
			let breastsizetemp be breast size of player;
			let cuntstemp be cunts of player;
			let cuntlengthtemp be cunt length of player;
			let cuntwidthtemp be cunt width of player;
			if bodyname of player is not "Hyperskunk":
				now bodyname of player is "Hyperskunk";
				now body of player is body entry;
				attributeinfect;
				say "     You moan loudly, letting your hands roam over yourself as your body [body change entry].";
				follow the sex change rule;
			otherwise:
				now non-infectious entry is false;
				infect "Hyperskunk";
				now non-infectious entry is true;
			if cocks of player is 0 and cunts of player is 0:
				follow the sex change rule;
			say "     As the transformation progresses, you end up putting yourself on wanton display for the skunk, aroused by letting her see the changes overtaking you[if breastsizetemp < breast size of player].  The swelling at your chest makes you moan as your bosom expands, making you feel even sexier[end if].  You tease your breasts, tweaking your nipples and moaning at the shivers of pleasure this gives you[if cockstemp < cocks of player].  You can't help but touch your new cock and balls, and (with a little prompting from Dr. Moffatt) start listing off some of the things you'd like to do with your newfound maleness, feeling particularly pleased whenever you can get the skunk's cock to twitch and throb as well[otherwise if cocklengthtemp < cock length of player].  Your dainty hands slip down to your growing cock, stroking it to full erection, and (with a little prompting from Dr. Moffatt) you start listing off some of the things you'd like to do with it[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player].  Your expanded balls churn with increased virility and you delight in telling her about how much cum they'll give[end if][if cuntstemp < cunts of player].  Your altered hands drift downwards, starting to finger your fresh, new pussy, pleased as you see the doctor lick her lips at the sight of it[otherwise if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player].  Your altered hands drift downwards, starting to finger your expanded cunt, pleased as you see the doctor lick her lips at the sight of it[end if].  You continue to caress and tease yourself, savouring the changes while Dr. Moffatt continues to ask her questions.  As her questions get increasingly lewd, you [if cocks of player > 0]pump your throbbing cock until you climax, spraying yourself with a sticky load of cum[otherwise]finger your wet pussy until you climax, soaking your thighs in fresh, feminine juices[end if].";
			say "     'I am very pleased with your progress.  I want to you to come back in another day or two for another session so we can continue,' she says, putting her notepad away.  'I do need to get back to my other patients and you should head back into city so you can tell me how you're responding to what you observe.  I look forward to you telling me about all those sexy creatures again.'";
			decrease libido of player by 10;
			if libido of player < 40, now libido of player is 40;
			now lastfuck of Doctor Moffatt is turns;


Section 4 - Active Effects

an everyturn rule:
	if hp of Doctor Moffatt is 3:
		if lastfuck of Doctor Moffatt - turns < 12:
			increase libido of player by ( hp of Doctor Moffatt + lastfuck of Doctor Moffatt - turns ) / 3;
			let x be 0;		[do nothing]
		otherwise if lastfuck of Doctor Moffatt - turns is 12:
			say "     You feel a small twinge inside you, a growing longing to see Doctor Moffatt again as you start to miss her, lusting for the sight of her curvy body.";
			decrease morale of player by 1;
			increase libido of player by 10;
		otherwise if lastfuck of Doctor Moffatt - turns < 32:
			decrease morale of player by ( lastfuck of Doctor Moffatt - turns ) / 5;
			if morale of player < 0, decrease humanity of player by a random number between 0 and 3;
			increase libido of player by a random number between 4 and 8;
			if a random chance of ( lastfuck of Doctor Moffatt - turns ) in 40 succeeds:
				say "     [one of]Your thoughts continuously stray back to the sexy skunk psychiatrist at the Hospital, making you long to visit her again for another session.[or]You feel a rush of arousal and start getting distracted as every round shape you see starts looking like a plump breast or big, sexy ass.  Maybe it's time to go visit Dr. Moffatt again.[or]You feel an aching longing to have another session with the skunk doctor that gets to be increasingly distracting.[or]Your body becomes increasingly aroused by the variety of sexy creatures you see around you.[or]You feel yourself being drawn back to see the skunk doctor again, your body needing another dose and your mind filling with lust.[or]Your loins aches, longing for another dose of the skunk doctor's treatment.[at random]";
		otherwise if lastfuck of Doctor Moffatt - turns >= 32:
			say "     You moan and stumble, leaning against a broken wall for support as a huge rush of arousal fills you[if cocks of player > 0 and cunts of player > 0].  You grab your cock and start pumping it while burying several fingers in your dripping pussy, working yourself to a wild and crashing orgasm that somehow leaves you feeling cleansed.[otherwise if cocks of player > 0].  You grab your cock and start pumping it, working yourself to a wild and sticky orgasm that somehow leaves you feeling cleansed.[otherwise if cunts of player > 0].  You bury several fingers into your dripping pussy, working yourself to a wild and crashing orgasm that somehow leaves you feeling cleansed.[otherwise].  You work your hands all over yourself, trying to find release for this sudden surge of arousal.  With a painful twisting inside you, the lust finally breaks and you are left feeling cleansed.[end if]";
			now hp of Doctor Moffatt is 98;
			now libido of player is libido of player / 2;
			if cocks of player is 0 and cunts of player is 0, now hp of player is hp of player / 2;
			increase morale of player by 5;
			if morale of player < 0, now morale of player is morale of player / 2;
		if libido of player > 100, now libido of player is 100;


Section 5 - Endings



DrMoffatt ends here.