Version 3 of DrMoffatt by Stripes begins here.
[Version 2.2 - More Wereraptor responses]
[Version 3 - Hypnosis path]
"Adds a Skunk Shemale NPC named Doctor Moffatt to the Flexible Survival game"

Section 0 - Hypnosis variables

[XP of doctor Moffatt chooses questline
0 - not commited
1 - skunk TF
2 - hypnosis
]

[HP of Moffatt
1 - Met the doctor (Another Doctor resolved)
2 - Sample quest accepted
]

[Level of Doctor Moffatt indicates the level of hypnosis (from 0 to 5)]
[Lust of Doctor Moffatt indicates the weaning level]
[Dexterity of Doctor Moffatt indicates the type of stat bonus chosen
0 - Inactive
1 - Strength
2 - Dexterity
3 - Stamina
4 - Perception
5 - Charisma
6 - Intelligence]

Section 1 - Event

Another Doctor is a situation.
The sarea of Another Doctor is "Hospital".
when play begins:
	add Another Doctor to badspots of hermaphrodite;
	add Another Doctor to badspots of girl;
	add Another Doctor to badspots of guy;
	add Another Doctor to badspots of furry;

Instead of resolving a Another Doctor:
	say "     While searching through some patient rooms, you hear a noise behind you and freeze. At the door, you spot a large and womanly skunk in a doctor's coat and an short skirt. Her limited clothes can do nothing to contain her considerable assets. Her breasts are each larger than her head and prominently display their plump, round nipples. These melons are so big that she doesn't even bother to try closing the white coat, which you doubt could even be managed. Further down, her hips are very wide and womanly and her thighs are round and meaty to match, all straining the poor skirt's attempt to cover them. But what the skirt completely fails to cover are the skunk woman's huge hanging maleness and oversized balls. The latter are each nearly as large as her breasts and the former hangs down just as low despite its mostly flaccid state.";
	say "     When you realize that you've been staring at the skunk for some time, you notice that she's been smiling back at you, shifting her position to show off her luscious form all the more. She has a bit of a masculine face, but with full, plump lips with a bit of a predatory smile. Her black hair has a slight wave to it and is kept short at her back. The lighter fur on her skunk pattern is a pale gray and even her darker sections are more a charcoal color than pure black. The only white you can see on her is her pearly white teeth and in her eyes, you realize. Even her irises are an ash gray. This leads you to look again, noting the completely colorless nature of this skunk. The exposed flesh of her nipples and cock are gray and her lips are either naturally black or glossed black.";
	WaitLineBreak;
	project the figure of DrMoffatt1_icon;
	WaitLineBreak;
	say "     'If you're done looking, I'd like to talk to you,' she says in an amused tone and a flick of her large, bushy tail. 'I think you, my friend, are just what I've been looking for,' she adds, looking you over with a sexy smile[if hospquest is 13]. 'I understand you had some kind of professional disagreement with our esteemed Dr. Mouse, but that need not hinder our relationship.' She says the last word[else if hospquest is 0 or hospquest is 1]. 'I hope you'll be willing to assist me with a little something.' She says [']assist['][else if hospquest is 2 or hospquest is 3 or hospquest is 4]. 'I understand you'll be giving Dr. Mouse some assistance. I hope you'll be able to assist me as well.' She says [']assist['][else]. 'I understand you've been giving Dr. Mouse a hand. I hope you'll consider giving me some assistance as well.' She says [']assistance['][end if] with a rather provocative tone, but also a teasing grin. You remain guarded, but do allow yourself to relax a little.";
	say "     'My name is Dr. Moffatt, and I am, or was, to be more accurate, the Head of Psychology at this hospital before things became much more interesting.' She runs a gloved paw down the front of her skirt and over her bloated cock, making it twitch a little. 'And while our new hospital director,' she says in a slightly derisive tone, '[if HP of doctor mouse is not 2]is[else]was[end if] quite pleased to study his precious, little nanites, I'm more interested in psychological aspects of the change. As such, I was hoping to find someone willing to help me out.";
	if skunkbeaststatus is 1:
		say "     'But now that I've looked you over, it seems you've been too tainted by those rather mundane forest skunks and would not at all be a suitable candidate for my main research. It's most unfortunate - you're rather cute, but I have other options. Come find me when you can,' she says. She pulls a small keycard out of her pocket and hands it to you. 'Much of the hospital's halls have been barricaded or locked, but this card will let you get through those sealing off the Psych Department. Come stop by my office and we'll talk more.' With a final grin before turning and flicking her tail and heading off. Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out.";
		now XP of Doctor Moffatt is 2;
	else if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100):
		say "     'But now that I've looked you over, it seems you've gone and become too tainted by some strangely persistent infection. It keeps you from being a suitable candidate at all. It's most unfortunate - you're rather cute, but I have other options. Come find me when you can,' she says. She pulls a small keycard out of her pocket and hands it to you. 'Much of the hospital's halls have been barricaded or locked, but this card will let you get through those sealing off the Psych Department. Come stop by my office and we'll talk more.' With a final grin before turning and flicking her tail and heading off. Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out.";
		now XP of Doctor Moffatt is 2;
	else:
		say "     '[if wrcursestatus >= 3 and wrcursestatus < 7]You do seem to have something strange and primal about you, but that should only make things more interesting, don't you think? [end if]Certainly someone as clever and brave as yourself wouldn't be scared of a little experimenting,' she says, again teasing with the last word as she leans forward onto a small table to press her ample bosom out. Your eyes locked on her strangely alluring body, you [if charisma of player < 16]mumble something about wanting to help her[else]suavely say that one always has be open to experimenting these days[end if]. She giggles merrily at your reply and pulls a small keycard out of her pocket. 'Much of the hospital's halls have been barricaded or locked, but this card will let you get through those sealing off the Psych Department. Come stop by my office and we'll talk more.'";
		WaitLineBreak;
		say "     Having given you the limited pass card and some directions, the hyperskunk woman gives you another grin before heading out, her tail giving a broad swish as she sways her ample hips. 'Please don't keep me waiting too long, my dear. I could just about burst with excitement,' she says teasingly as she looks back at you over her shoulder. Still a little stunned by voluptuous skunk woman, it takes you a few moments to recover, grab your stuff and head out. As you debate going to visit her to see what she has in mind, you look over the pass card. At least this will make it a little easier to get around the hospital.";
	now Psych Department is known;
	now HP of Doctor Moffatt is 1;
	increase hospnav by 1;
	say "[hospprogress]";
	increase score by 5;
	now Another Doctor is resolved;


Section 2 - Psych Department

Psych Department is a room. It is fasttravel. It is private.
The description of Psych Department is "[psychdesc]".

to say psychdesc:
	say "     The office of Dr. Moffatt in the Psychology department has been kept rather tidy though you're quite certain it's changed since the outbreak. Aside from the usual desk, filing cabinet and assorted accoutrements, there are a few straight jackets left strewn around, a colorful array of sex toys standing upright on her desk and the remains of sticky stains on the floor and walls. Speaking of the walls, there are several colorful crayon drawings of what must be the mephit doctor over the white paint. Were it not for the clear emphasis on the skunk's giant assets, you'd think them drawn by a child. There are a few ornamental skunks on her desk as well, though of a more mundane form than the hyper-sexualized scrawls.";
	if HP of doctor moffatt is 1:
		say "[line break][psychfirstarrival]";

to say psychfirstarrival:
	if XP of Doctor Moffatt is 2: [if the player met Moffatt as a skunk or a permanent infection]
		say "     The doctor smiles at you as you arrive. 'Excellent. I was just thinking about you,' she says as she gets up, showing that her cock's actually mostly hard right now, raising up the front of her skirt to give an even better view of her maleness. 'I hope this means you've decided to help me with my little experiment. I simply want to observe the effects of the infection and transformation to one's psyche over time. As you seem more coherent and sane than most, you should be able to better articulate what's happening to you. Most who become infected change rather rapidly and become rather fixed in their newly obtained form.'";
		say "     'Considering the fact that your latest physical transformations make you unsuitable for my main work, I want to work with you through hypnosis,' the doctor explains. 'I would like to put you under trance, and watch the effects of implemented suggestions on a nanite infected body. Do you feel up to the task? Just ask me about [bold type]hypnosis[roman type] when you are ready to start,' she says, as she passes you a bottle of water. 'The water's for you. My way of saying thanks for helping me out,' she says with a smile.";
		increase carried of water bottle by 1;
	else:
		say "     The doctor smiles at you as you arrive. 'Excellent. I was just thinking about you,' she says as she gets up, showing that her cock's actually mostly hard right now, raising up the front of her skirt to give an even better view of her maleness. 'I hope this means you've decided to help me with my little experiment. I simply want to observe the effects of the infection and transformation to one's psyche over time. As you seem more coherent and sane than most, you should be able to better articulate what's happening to you. Most who become infected change rather rapidly and become rather fixed in their newly obtained form.'";
		if skunkbeaststatus is 1:
			say "     'But it seems now that you've since become too tainted by those rather mundane forest skunks. You are no longer a suitable candidate for my testing.' She sighs and teases one of her nipples. 'You could provide help in another form, though. Hypnosis.' You look at the doctor with intrigued eyes. 'I would like to put you under trance, and watch the effects of implemented suggestions on a nanite infected body. Do you feel up to the task? Just ask me about [bold type]hypnosis[roman type] when you are ready to start,' she says, as she passes you a bottle of water. 'The water's for you. My way of saying thanks for helping me out,' she says with a smile.";
			now XP of doctor moffatt is 2;
			now HP of doctor moffatt is 2;
			increase carried of water bottle by 1;
		else if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100):
			say "     'But it seems you've gone and become too tainted by some strangely persistent infection since I last saw you. It keeps you from being a suitable candidate at all.' She sighs and teases one of her nipples. 'You could provide help in another form, though. Hypnosis.' You look at the doctor with intrigued eyes. 'I would like to put you under trance, and watch the effects of implemented suggestions on a nanite infected body. Do you feel up to the task? Just ask me about [bold type]hypnosis[roman type] when you are ready to start,' she says, as she passes you a bottle of water. 'The water's for you. My way of saying thanks for helping me out,' she says with a smile.";
			now XP of doctor moffatt is 2;
			now HP of doctor moffatt is 2;
			increase carried of water bottle by 1;
		else:
			say "     'It seems there's at least some psychological component to how nanite infection manifests itself. Or, at least, it can be a contributing factor in some cases. Take myself for instance,' she says, running her gloved paws over her breasts and cock with clear pleasure. 'My infection seems to have imprinted on my skunk decorations and a few of my own personal kinks. Yet others find their minds and sexual desires changed utterly by the infection instead.'";
			if wrcursestatus >= 3 and wrcursestatus < 7:
				say "     Moving up close, she runs her paws over your [bodytype of player] body. 'Applying that to you and your current saurian dilemma, it's simple to understand that it's tapped into something deep, primitive and wild inside you,' she says with a strong, sexual emphasis on those words, squeezing your shoulders and rubbing across the marks on your back. 'That primitive side lurking inside all of us, the instinctive monster from the id. A creature of raw instincts, lusts and desires. I'm sure it will make you a very interesting subject,' she says, running a fingertip along your chin as she leans her muzzle in closer.";
				now wrcurseMoffatt is 1;
			say "     She turns around and bends over to pick something up, accidentally (maybe) giving you a peek under her skirt while her broad tail keeps the back of her doctor's coat split. You can't help but notice that there's no wet pussy hidden under there, just her wide hips and huge nutsack. You'd assumed she was a herm like so many others you've seen around, but she's actually a shemale. Her curvy bottom sways from side to side, setting her balls rocking as well as he rummages around in the box before finally finding what she wanted.";
			say "     'So, there's two ways you can help me. You could help me collect samples from skunk-infected specimen. Or, you could help me with a little side-search I am doing. Hypnosis sessions.' You look at her with a puzzled look. 'I would like to put you under trance, and watch the effects of implemented suggestions on a nanite infected body.'";
			say "     'So... [bold type]How do you want to help me?[roman type]?'[line break]";
			say "     ([link]Y[as]Skunk samples[end link]) I will help you with the samples.";
			say "     ([link]N[as]Hypnosis[end link]) I am curious about this hypnosis thing.";
			if player consents:
				say "     'Excellent. Here you go,' she says, passing you a glass sample jar and a bottle of water. 'Before we can get started, I'd like you to collect a sample from one of those skunk girls in the [bold type]forest[roman type]. They shouldn't be much trouble for you, I'm sure,' she says with a smile. 'And the water's for you. My way of saying thanks for helping me out,' she says with a smile.";
				increase carried of water bottle by 1;
				now XP of Doctor Moffatt is 1;
				now HP of doctor moffatt is 2;
			else:
				say "     'Excellent. Just ask me about [bold type]hypnosis[roman type] when you are ready to start,' she says, as she passes you a bottle of water. 'The water's for you. My way of saying thanks for helping me out,' she says with a smile.";
				increase carried of water bottle by 1;
				now XP of Doctor Moffatt is 2;
				now HP of doctor moffatt is 2;
		now battleground is "void";


the scent of Psych Department is "The room smells strongly of its sexy skunk occupant, though there's traces of the scents of others, mainly mustelids, having been in here as well.".


Section 3 - Doctor Moffatt

Doctor Moffatt is a person. Doctor Moffatt is in Psych Department.
The description of Doctor Moffatt is "[drmoffattdesc]".
The conversation of Doctor Moffatt is { "..." }.
The icon of Doctor Moffatt is figure of DrMoffatt2_icon.
wrcurseMoffatt is a number that varies.

the scent of Doctor Moffatt is "[if level of Doctor Moffatt <= 4]She smells of skunk, but not in a bad way, mostly of the fur and animal and not anything stronger. She also has a pleasant, perfumed scent beneath that.[else]The mistress smells heavenly, as usual. Her perfumed scent fills the room, and makes you smile blissfully.[end if]".

to say drmoffattdesc:
	if level of Doctor Moffatt is 0:
		say "     Doctor Moffatt, the shemale skunk, has a very striking appearance. Her pretty face has a slightly masculine look to it, but her lips are full, luscious and black in color like her nose and hair. Her fur is a mix of grays, dark and light, instead of the starker contrast of black and white you'd expect on a skunk. She has a huge, fluffy tail, as long as she is tall and as wide as her hips. And those hips are quite wide indeed. The skunk's hips and ass are quite wide and womanly, continuing down to her thick thighs.";
		say "     But as things go, those aren't the most striking features on the grayscale skunk. Her breasts are quite huge, each the size of a small watermelon. They have large, oversized nipples with areolae about three inches across. And to match their size are the huge globes of her balls, each roughly just as big as her breasts and with a giant missile of a cock to go along with them. While she wears a doctor's coat and a short skirt, they can do nothing to contain or conceal this skunk woman's hyper-sexualized body. She also has a pair of white gloves she wears over her hand-like paws.";
		say "     Seeing you looking at her, she playfully [one of]leans across her desk, pushing her breasts out with her arms[or]runs a paw casually around one nipple[or]rubs her gloved paws down her very wide hips[or]gives her fluffy tail a swish[or]bends down to pick something up, flashing her rear and exposing her lack of pussy behind those huge balls[or]slowly runs a fingertip along the gray flesh of her cock[at random].";
	else if level of Doctor Moffatt >= 1 and level of Doctor Moffatt <= 3:
		say "     Doctor Moffatt, your new friend, has a very striking appearance. Her pretty face has a slightly masculine look to it, but her lips are full, luscious and black in color like her nose and hair. Her fur is a mix of grays, dark and light, instead of the starker contrast of black and white you'd expect on a skunk. She has a huge, fluffy tail, as long as she is tall and as wide as her hips. You feel the odd urge to pet and plunge your face into it. And those hips are quite wide indeed. The skunk's hips and ass are quite wide and womanly, continuing down to her thick thighs. They would feel so right against your [if male]hips[else]crotch[end if].";
		say "     But as things go, those aren't the sexiest features on the grayscale skunk. Her breasts are quite huge, each the size of a small watermelon. They have large, oversized nipples with areolae about three inches across, inviting you to play with them. And to match their size are the huge globes of her balls, each roughly just as big as her breasts and with a giant missile of a cock to go along with them; your mouth waters at the sight. While she wears a doctor's coat and a short skirt, they can do nothing to contain or conceal this skunk woman's hyper-sexualized body. She also has a pair of white gloves she wears over her hand-like paws.";
		say "     Seeing you looking at her, she playfully [one of]leans across her desk, pushing her breasts out with her arms[or]runs a paw casually around one nipple[or]rubs her gloved paws down her very wide hips[or]gives her fluffy tail a swish[or]bends down to pick something up, flashing her rear and exposing her lack of pussy behind those huge balls[or]slowly runs a fingertip along the gray flesh of her cock[at random]. You give back a smile, the display having quite the effect on you.";
		increase libido of player by 5;
	else:
		say "     Mistress Moffatt, your best friend, has a very striking appearance. Her pretty face has a slightly masculine look to it, but her lips, from which come her magnetic and irresistible voice, are full, luscious and black in color like her nose and hair. Her fur is a mix of grays, dark and light, instead of the starker contrast of black and white you'd expect on a skunk. She has a huge, fluffy tail, as long as she is tall and as wide as her hips. One that you would pet for her for entire days, if she asked. And those hips are quite wide indeed. The skunk's hips and ass are quite wide and womanly, continuing down to her thick thighs. You want to plunge between them and let her squeeze them around you, as you service her.";
		say "     But as things go, those aren't the sexiest features on the grayscale skunk. Her breasts are quite huge, each the size of a small watermelon. They have large, oversized nipples with areolae about three inches across, inviting you to suckle on them like a child. And to match their size are the huge globes of her cum-filled balls, each roughly just as big as her breasts and with a giant missile of a cock to go along with them; and you know that your only place is with this gigantic rod inside your [if anallevel is 3 or cunts of player is 0]ass[else]pussy[end if]. While she wears a doctor's coat and a short skirt, they can do nothing to contain or conceal this skunk woman's hyper-sexualized body. She also has a pair of white gloves she wears over her hand-like paws.";
		say "     Seeing you looking at her, she playfully [one of]leans across her desk, pushing her breasts out with her arms[or]runs a paw casually around one nipple[or]rubs her gloved paws down her very wide hips[or]gives her fluffy tail a swish[or]bends down to pick something up, flashing her rear and exposing her lack of pussy behind those huge balls[or]slowly runs a fingertip along the gray flesh of her cock[at random]. You smile warmly, waiting for an order, any order, coming from her.";
		increase libido of player by 10;


Instead of conversing the Doctor Moffatt:
	[puts Hyperskunk as lead monster in case of infection/impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hyperskunk":
			now monster is y;
			break;
	if HP of Doctor Moffatt is 0:
		say "ERROR-Moffatt-[HP of Doctor Moffatt]T: I shouldn't be talking to you right now!";
	else if XP of Doctor Moffatt is 1:
		say "[skunkPathDialogue]";
	else:
		say "[hypnoPathDialogue]";

to say hypnoPathDialogue:
	if level of Doctor Moffatt is 5:
		say "     'Tut tut,' the doctor interrupts you as you open your mouth. '[italic type]Clothes off and on your knees on the sofa. Now.[roman type]' Your body enters in a trance-like state, and before you know it, you are on Doctor Moffat's leather sofa, showing your [bodyname of player] ass at her.";
		say "[MoffatHypnosisFullSex]";
	else if level of Doctor Moffatt is 3 or level of Doctor Moffatt is 4:
		say "     'Ah, my sweet little toy.' Upon hearing Doctor Moffat's expression, your legs start to feel weak, and you are compelled to get on your knees. 'Are you here for another [bold type]hypnosis[roman type] session? Or perhaps you are simply here to let your mistress get some time off? Anyway...'";
	else if level of Doctor Moffatt is 1 or level of Doctor Moffatt is 2:
		say "     'Welcome back, [if player is not defaultnamed][name of player][else]my dear patient[end if].' My experiments in hypnosis with you are rather fun. Remind me about doing another [bold type]hypnosis[roman type] session later. By the way...";
	else if level of Doctor Moffatt is 0:
		say "     'Hello, [if player is not defaultnamed][name of player][else]my dear patient[end if].' Would you be interested in a hypnosis session? Ask me about [bold type]hypnosis[roman type] later. By the way...";
	else:
		say "     'Hmm, you seem to be even more addicted to my hypnosis than I anticipated. Maybe you should [bold type]tell Kernog in the bugs report channel about it[roman type].";
	if a random chance of 7 in 8 succeeds:
		say "     [one of]'Do you like the drawings? One of the weasels I've been treating's taken a fancy to me and did this while I was out of the room. I think it's kind of sweet,' she says, pointing to one of her resting her footpaw on smaller, supplicant form. Given the rough art, you must assume it is a weasel in a straightjacket with several red hearts floating nearby.[or]'I must say, this new me is quite enjoyable. It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'I'd resigned my kinks as fantasy in my old life. I must say being able to fulfill them for real has been quite enjoyable,' she confesses with a wink and a paw running down the front of her skirt over her ill-concealed maleness.[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch. 'Please tell me about your experiences outside. How has all this been making you feel? How are your sexual urges manifesting themselves?' She asks her questions in a clinical manner, but also has a paw casually stroking one of her ample balls.[or]'Here's a picture of the old me,' she says, holding up a photo of a stern but beautiful woman. 'Aren't I much sexier now,' she asks, running her paws over her oversized breasts and teasing her nipples.[or]'Do you like my collection?' she purrs, brushing a paw lightly across her myriad selection of dildos and sex toys, setting several of them to swaying. None, even the biggest of them, come close to even her flaccid cock.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock. 'I should go check on the patients soon. Make sure they've been getting their meds.'[in random order]";
	else:	[too long, separated]
		say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[else if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites. I much prefer playing with others,' she says in a sultry voice.[else if hospquest is 5 or hospquest is 6]'I know Dr. Mouse has been looking for a sample from that shemale creature out there - who sounds like a lot of fun, by the way. I've already provided the pushy mouse with a sample of my own. He wants to make comparisons to find the why's and wherefore's. He doesn't like my [']because I think it's hot['] theory.' She runs her paws over her oversexualized body, moaning softly. 'Silly mouse should just relax and enjoy it.'[else if hospquest >= 7 and hospquest is not 13]'I hear you've been helping Dr. Mouse. Just... just be careful, sweetie. He's... I mean... These errands could be dangerous, so be on your guard.'[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]'I saw that show you put on with our esteemed director. You must have really upset him. Sexy show though,' she adds, rubbing her groin as she remembers it. The same memories send a shiver up your spine.[else if hospquest is 13 and HP of doctor mouse is 1]'I hear you upset our little director. The best laid plans of mice and men, eh?' she chuckles.[else if hospquest is 13 and HP of doctor mouse is 2]'You've put things in quite an uproar here by taking out the hospital director. I'm glad that mousey little dictator's gone, but things are crazy here without someone in charge,' she grumbles.[end if]";



to say skunkPathDialogue:
	if HP of Doctor Moffatt is 99:
		say "     The skunk doctor turns away from you with a meaningful flick of her tail. 'I have no interest in you any more. You've gone and messed up my experiment.'";
	else if skunkbeaststatus is 1:
		say "     'It seems now that you've since become too tainted by those rather mundane forest skunks. You are no longer a suitable candidate for my testing.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now HP of doctor moffatt is 99;
	else if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say "     'It seems you've gone and become too tainted by some strangely persistent infection since I last saw you. It keeps you from being a suitable candidate at all.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now HP of doctor moffatt is 99;
	else if wrcursestatus >= 7 and wrcursestatus < 100:
		if wrcurseMoffatt is 0:
			say "     'It seems you've gone and become too tainted by some strangely persistent infection since I last saw you. It keeps you from being a suitable candidate at all.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
			now HP of doctor moffatt is 99;
		else if wrcurseMoffatt is 1:
			say "     'It seems you've gone and disobeyed my instructions and exacerbated this saurian condition of yours. You are no longer a valid candidate for my research and I'll have to find a new candidate and start all over again. I am most disappointed in you and I don't want to see you here again,' she says with a dismissive wave of her fluffy tail.";
			now HP of doctor moffatt is 99;
	else if wrcursestatus >= 3 and wrcursestatus < 7 and wrcurseMoffatt is 0:
		say "     Moving up close, she runs her paws over your [bodytype of player] body. 'This dinosaurian transition that you're going through does present a bit of an unexpected kink,' she says with unusually playful emphasis, 'but it need not ruin my research. I would surmise that it's tapped into something deep, primitive and wild inside you,' she says with a strong, sexual emphasis on those words, squeezing your shoulders and rubbing across the marks on your back. 'That primitive side lurking inside all of us, the instinctive monster from the id. A creature of raw instincts, lusts and desires. I'm sure it will make you a very interesting subject,' she says, running a fingertip along your chin as she leans her muzzle in closer. She presses her plump breasts against you as she licks your ear. 'Just take care not to let it as it is and we can expect some very interesting sessions together,' she whispers softly in your ear before stepping away.";
		now wrcurseMoffatt is 1;
	else if lust of Doctor Moffatt is 1:
		say "     'You're overdue for your next session. We should get back to that right away. You probably have a lot of stories about what you've seen and done - and who you've done - to tell me all about,' she says with a grin. 'Please let me know when you're ready to get started.'";
	else if HP of Doctor Moffatt is 2 and Skunk Goo is owned:
		delete Skunk Goo;
		say "     'You have my sample for me already?' she says with a happy smile before leaning over to give you a peck on the cheek. 'You're so sweet,' she purrs. 'Mmm... we should be able to get started shortly. I just need a few moments to set things up in here,' she adds, giving you a wink and a swish of her wide hips before stepping out momentarily.";
		say "     While she's out, you take the opportunity to look around the room quickly. You scan her notes, finding a mix of musings about the mental and arousing effects of the infection and notes about some of the weasel patients being cared for in the psych ward. Mixed in with them are some more crayon drawings, presumably by the mental patients. They are a mix of distorted scribbles showing some of the creatures you've seen out in the city and rather lewd pictures of vixens, owls and a rather familiarly big-chested skunk.";
		say "     With nothing really untowards there, you check out a few of the skunk figurines. There's about ten or so of them set out around the room. Most are tiny things, though there's a couple of larger ones. Picking one up, you look at the rather pudgy, cartoonish skunk with a red bow and a sappy smile. As you're checking the underside of the porcelain figure, you hear a cough behind you. 'If you wanted to check under my skunk's tail,' she says with a grin, 'you just needed to ask.' She takes the figure from you and sets it back down, rubbing her ample bosom against you as she does.";
		wait for any key;
		say "     'I got that one from one of my patients after helping her through a particularly difficult time in her life. Her family makes them and she wanted to thank me. I'm not sure why I kept it, but after that other patients started giving me some as well. Being mostly black and white, they didn't seem terribly out of place with my usual simple decor, so I left them around. And I'm so glad I did. I make for a rather sexy skunk, don't you think?' she teases, letting her bushy tail wrap all around you and pulling herself in close.";
		say "     'Mmm... cozy. But on to business,' she says, pulling out a small vial of white, milky fluid. 'Here's your first dose. Mixed in a bit of milk to go down easy.' You look at the milk suspiciously. 'Oh, don't be that way. I wouldn't give you any of that common forest-skunk stuff. I only need that junk for the control sample. You deserve better,' she says with a rumble, grinding her warm, soft breasts against you. 'Besides, you promised to help me out, sweetie,' she pouts.";
		say "     Not wanting to disappoint the skunk woman, though probably a little enamored with those hefty funbags of hers, you take the vial and drink it down quickly, hardly tasting it to avoid any medicinal taste it may have. She smiles and kisses your cheek again before pushing you down roughly onto the couch. 'Mmm... now tell me how you feel, my dear,' she says excitedly, grabbing her notepad and sitting on the edge of her desk. Your position gives you a fine view of her large sexy body and a clear window under her skirt. Her cock throbs and twitches, clearly the skunk's excited in more than just a professional manner.";
		wait for any key;
		say "     As you feel the warmth and tingles of the infection spreading through you, the first visible change starts at your hips. These widen, giving you a large and sexy bottom with wide birthing hips. It quickly spreads down to your thighs, with them getting thicker to match your full bottom. The changes continue to flow down your legs, with your lower legs getting stronger to support your added weight, but keeping to more regular proportions to further emphasize your changes to your hips and thighs. Your feet are predominantly human in form, but your toes turn into more paw-like digits and gain small claws.";
		say "     As this is going on, you try your best to answer the skunk woman's questions. She asks stuff like 'Are you feeling more aroused now?' and 'Do you feel sexier now?' and 'Would you say you feel more open to sex with those transformed?' In the hormonal rush of your transforming body, you can't help but agree with her questions.";
		say "     With the changes continuing, but this time in an upward direction, your waist grows fuller. You'd not be called fat, but there's a little extra padding there to flow into those wide hips. Continuing up, your upper body again shifts to more normal proportions for your torso, shoulder and arms, again making your caboose stand out. They almost seem slender in comparison, but are quite lovely and would suit a model or actress, which you say to Dr. Moffatt. She continues to take note of your answers, only pausing on occasion to rub her cock and balls or tweak a nipple.";
		wait for any key;
		now bodyname of player is "Hyperskunk";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Hyperskunk":
				now monster is y;
				break;
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
		follow the breast change rule;
		say "     As the transformation progresses down to your hands, they change as well, becoming mostly human in form, with smooth and shapely fingers and again tipped by small, black claws[if breastsizetemp < breast size of player]. The swelling at your chest makes you moan as your bosom expands, making you feel even sexier[end if][if cockstemp < cocks of player]. You can't help but touch your new cock and balls, and (with a little prompting from Dr. Moffatt) start listing off some of the things you'd like to do with your newfound maleness[else if cocklengthtemp < cock length of player]. Your dainty hands slip down to your growing cock, stroking it to full erection, and (with a little prompting from Dr. Moffatt) you start listing off some of the things you'd like to do with it[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player]. Your expanded balls churn with increased virility and you delight in telling her about how the prospect of even larger orgasms makes you feel[end if][if cuntstemp < cunts of player]. Your altered hands drift downwards, starting to finger your fresh, new pussy, pleased as you see the doctor's cock twitch when you do so[else if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player]. Your altered hands drift downwards, starting to finger your expanded cunt, pleased as you see the doctor's cock twitch when you do so[end if]. You take a few moments to let your hands roam over yourself, savoring the changes while Dr. Moffatt continues to ask her questions. Despite the clinical delivery of her questions, you can see she's become quite turned on and touches herself frequently.";
		say "     Once your changes have settled down and she's finished all her questions, she gets up and straightens her coat. 'I think that went rather well for a first session. I'm glad you were so willing to open up. I'm sure this will yield very promising results,' she purrs, running her paws over your wide hips and giving you a lustful kiss before heading back behind her desk. 'Now remember, I'll need you to come back every couple of days to continue to record the effects. Please be mindful of how everything that happens makes you feel so you can tell me all about it later.'";
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		now HP of Doctor Moffatt is 3;
		now lastfuck of Doctor Moffatt is turns;
	else if HP of Doctor Moffatt is 2 and a random chance of 1 in 3 succeeds:
		say "     [one of]'I do need you to obtain a sample of the goo from those skunks from the urban forest[if HP of doctor mouse is not 2]. The hospital director is ignoring my request to get a sample collected for me[else]. The hospital is in too much disarray now to arrange for an orderly to obtain me one[end if]... and that's why I've got to ask you.'[or]'Please try to find some goo from those skunk girls. I need a proper control sample.'[at random]";
	else if HP of Doctor Moffatt is 2:
		if a random chance of 7 in 8 succeeds:
			say "     [one of]'Do you like the drawings? One of the weasels I've been treating's taken a fancy to me and did this while I was out of the room. I think it's kind of sweet,' she says, pointing to one of her resting her footpaw on smaller, supplicant form. Given the rough art, you must assume it is a weasel in a straightjacket with several red hearts floating nearby.[or]'I must say, this new me is quite enjoyable. It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'I'd resigned my kinks as fantasy in my old life. I must say being able to fulfill them for real has been quite enjoyable,' she confesses with a wink and a paw running down the front of her skirt over her ill-concealed maleness.[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch. 'Please tell me about your experiences outside. How has all this been making you feel? How are your sexual urges manifesting themselves?' She asks her questions in a clinical manner, but also has a paw casually stroking one of her ample balls.[or]'Here's a picture of the old me,' she says, holding up a photo of a stern but beautiful woman. 'Aren't I much sexier now,' she asks, running her paws over her oversized breasts and teasing her nipples.[or]'Do you like my collection?' she purrs, brushing a paw lightly across her myriad selection of dildos and sex toys, setting several of them to swaying. None, even the biggest of them, come close to even her flaccid cock.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock. 'I should go check on the patients soon. Make sure they've been getting their meds.'[in random order]";
		else:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[else if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites. I much prefer playing with others,' she says in a sultry voice.[else if hospquest is 5 or hospquest is 6]'I know Dr. Mouse has been looking for a sample from that shemale creature out there - who sounds like a lot of fun, by the way. I've already provided the pushy mouse with a sample of my own. He wants to make comparisons to find the why's and wherefore's. He doesn't like my [']because I think it's hot['] theory.' She runs her paws over her oversexualized body, moaning softly. 'Silly mouse should just relax and enjoy it.'[else if hospquest >= 7 and hospquest is not 13]'I hear you've been helping Dr. Mouse. Just... just be careful, sweetie. He's... I mean... These errands could be dangerous, so be on your guard.'[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]'I saw that show you put on with our esteemed director. You must have really upset him. Sexy show though,' she adds, rubbing her groin as she remembers it. The same memories send a shiver up your spine.[else if hospquest is 13 and HP of doctor mouse is 1]'I hear you upset our little director. The best laid plans of mice and men, eh?' she chuckles.[else if hospquest is 13 and HP of doctor mouse is 2]'You've put things in quite an uproar here by taking out the hospital director. I'm glad that mousey little dictator's gone, but things are crazy here without someone in charge,' she grumbles.[end if]";
	else if HP of Doctor Moffatt is 3 or HP of Doctor Moffatt is 4:
		if a random chance of 1 in 2 succeeds and lastfuck of Doctor Moffatt - turns >= 8:
			say "     'It's about time for your next treatment. Please let me know as soon as you're ready to start. You really shouldn't put it off for too long,' she purrs, rubbing a paw over her breasts, as if imagining the upcoming session.";
		else if a random chance of 7 in 8 succeeds:
			say "     [one of]'That weasel's become quite smitten with me,' she says, looking over the childish wall art. 'He gets quite upset if I don't visit him each day to give him his medicine.' Looking at one crayon scrawl of the straightjacketed weasel bloated like a balloon after the big boobed skunk's pulled out of him, you wonder exactly what she means by [']medicine['].[or]'I must say, this new me is quite enjoyable. It's been very liberating,' she says with a grin and a swish of her floofy tail.[or]'The old, stuffy me would never admit to wanting a figure like this, let alone a big, meaty cock. Imagining what a real cock would feel like was my most secret fantasy. I'm sure my hidden desires helped me become the sexy skunk I am today.'[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch. 'Tell me about your sexual life and fantasies before the outbreak? What new sexual desires have you felt since the outbreak began?' She asks her questions in a clinical manner, but also has a paw stroke over her pulsing cock.[or]'I much prefer my new breasts over my old, small ones. Don't you agree?' she asks, leaning over her desk, teasingly pushing them out with her arms. Eyeing those large nipples, you lick your lips and start reaching for them, but she giggles and pulls herself back. 'Ahh ah... we've got to complete our testing first.'[or]'This is the newest piece in my collection,' she says, holding up a bright red dildo. It is thick and has a slight curve to it and a slightly tapered tip. 'It's lots of fun,' she purrs, sliding her tongue slowly along it, watching your reaction with a grin.[or]She rubs a paw over the front of her dress, lightly squeezing around her semi-hard cock. 'I should go check on the patients soon. Make sure they've been getting their meds.'[in random order]";
		else:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor currently in charge here has largely secluded himself to study the infection.'[else if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather obsessed with playing with nanites. I much prefer playing with others,' she says in a sultry voice.[else if hospquest is 5 or hospquest is 6]'Dr. Mouse already got a sample from me, but he doesn't like my theory about my wonderful cock, so he wants another sample for comparison.'[else if hospquest >= 7 and hospquest is not 13]'I know you've been helping out Dr. Mouse, but I hope you have some time to help me as well, sweetie. He's... I mean... I'm sure you'll have more fun helping me out,' she says, stroking your cheek but seeming briefly nervous as well.[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]'Seeing you held down like that in the operating theather, changing in so many interesting ways. I must admit it turned me on a lot. Though I'm finding it even sexier the way you're changing now,' she purrs, running her paws along your sides and pressing her huge bosom against you.[else if hospquest is 13 and HP of doctor mouse is 1]'You've really got Dr. Mouse upset. You'd best lay low around here.'[else if hospquest is 13 and HP of doctor mouse is 2]'Things are in quite an uproar with that mad mousey gone. The tension between the other groups here is starting to rise without anyone in charge.'[end if]";
	else if HP of Doctor Moffatt is 5 or HP of Doctor Moffatt is 6 or HP of Doctor Moffatt is 7:
		if a random chance of 1 in 2 succeeds and lastfuck of Doctor Moffatt - turns >= 8:
			say "     'It's about time for your next treatment. Please let me know as soon as you're ready to start. You really shouldn't put it off for too long,' she purrs, rubbing a paw over her breasts, tweaking her nipples to draw out a few dribbles of her milk. You lick your lips at the sight of it, wanting another taste.";
		else if a random chance of 7 in 8 succeeds:
			say "     [one of]'That weasel really likes drawing pictures for me. It seems to keep him happy. I think this one is my favorite,' she says, pointing to the crude crayon drawing of a straight-jacketed weasel on his knees in front of the big breasted skunk with her cock crammed halfway down his throat.[or]'I used to be so uptight about sex and what I wanted that I didn't even know it. Mmm... these changes have helped me understand what I've wanted all along,' she says as she runs her paws along her curvy hips.[or]'Do you like my big, meaty cock? It feels so nice to have a cock now,' she says, running her fingertips along it slowly as she holds it up. 'It's even better than I'd ever imagined in my secret fantasies.'[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch. 'Tell me about your sexual preferences before the outbreak. Were you straight, gay, bi? And what about now?' She asks her questions clinically, but rubs her ballsack and her cock twitches as she does.[or]'Now that you've had a taste,' she purrs, leaning over her desk and pushing out her bosom, 'do you find yourself wanting more?'[or]She looks over several of her dildos, finding a thick, purple one with small bumps along its length. 'I think this one's my favorite right now. It feels so good. Perhaps you'd like to try it some time?' she asks, watching your reaction.[or]She gives her balls a rub before stroking a paw slowly down her half-hard shaft. 'I'd best go check on my other patients soon. It's nearly time they get their meds again,' she rumbles as dribbles pre leak from her cock.[in random order]";
		else:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor in charge here is rather single-minded in his search for solving the nanites. Be... be careful what you say if run into him.'[else if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather single-minded in his quest to understand and control the nanites. Be... be careful what you say around him.'[else if hospquest is 5 or hospquest is 6]'Dr. Mouse already got a sample from me, but you should find what he wants before he decides my sample's not enough. I don't... I can't take time away from my own patients to help him,' she says nervously, clearly changing what she was going to say.[else if hospquest >= 7 and hospquest is not 13]'I've been noticing some changes amongst the general staff of the hospital. Dr. Mouse's work seems to be progressing.'[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]'I hope that show Dr. Mouse put on with you has taught you who your real friends are,' she purrs, pressing her body up against yours and rubbing her ample bosom against you. 'And you're becoming so much more sexier than that hodge-podge of his, too.'[else if hospquest is 13 and HP of doctor mouse is 1]'I don't want you to skip out on your treatments just because you've gotten Dr. Mouse upset. But do be careful.'[else if hospquest is 13 and HP of doctor mouse is 2]'Things are getting chaotic out there without our mousey Napoleon. A hospital without a director has no way to keep the staff in line.'[end if]";
	else if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9:
		if a random chance of 1 in 2 succeeds and lastfuck of Doctor Moffatt - turns >= 8:
			say "     'It's about time for your next treatment. Please let me know as soon as you're ready to start. You really shouldn't put it off for too long,' she purrs, rubbing a paw over her cock, causing it to throb and dribble with pre. You lick your lips at the sight of it, wanting another taste or even more.";
		else if a random chance of 7 in 8 succeeds:
			say "     [one of]'The weasel's art's been showing a lot of [if a random chance of 1 in 2 succeeds]oral[else]anal[end if] lately, but I've been holding off on giving it to him to see how he'll react,' she says with a stroke over her semi-hard cock.[or]'I'm certainly so much happier now that I've opened up and accepted my sexual desires. You've been enjoying letting that sexy skunk inside of you out as well, haven't you?' she purrs and you nod in agreement, a part of your mind believing you'd always wanted to be a slutty mephit nymphomaniac[or]'Do you like my big, meaty cock? It feels so nice to have a cock now,' she says, running her fingertips along it slowly as she holds it up. 'It's even better than I'd ever imagined in my secret fantasies.'[or]Taking the seat on the corner of her desk, she motions for you to sit on the couch. 'So what sexy creature out there are you looking to play with next? What excites you about it?' She asks her questions clinically, but rubs her ballsack and her cock twitches as she does.[or]'Now that you've had a taste,' she purrs, leaning over her desk and pushing out her bosom, 'do you find yourself wanting more?'[or]She runs her paws over some of her skunk figurines. 'These are so cute, but I think I like my new collection better,' she says as she turns her attention to the array of dildos on the desk. Some of my current patients and the staff have been finding them for me. I always make sure to reward them when they bring me a new one,' she purrs. From the way her cock twitches, you have a good guess of just how she rewards them, too.[or]She gives her balls a rub before stroking a paw slowly down her half-hard shaft. 'I'd best go check on my other patients soon. It's nearly time they get their meds again,' she rumbles as dribbles pre leak from her cock.[in random order]";
		else:	[too long, separated]
			say "     [if hospquest is 0 or hospquest is 1]'The doctor in charge here is rather single-minded in his search for solving the nanites. Be... be careful what you say if run into him.'[else if hospquest is 2 or hospquest is 3 or hospquest is 4]'Dr. Mouse is rather single-minded in his quest to understand and control the nanites. Be... be careful what you say around him.'[else if hospquest is 5 or hospquest is 6]'Dr. Mouse already got a sample from me, but you should find what he wants before he decides my sample's not enough. I don't... I can't take time away from my own patients to help him,' she says nervously, clearly changing what she was going to say.[else if hospquest >= 7 and hospquest is not 13]'I've been noticing some changes amongst the general staff of the hospital. Dr. Mouse's work seems to be progressing.'[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]'I hope that show Dr. Mouse put on with you has taught you who your real friends are,' she purrs, pressing her body up against yours and rubbing her ample bosom against you. 'And you're becoming so much more sexier than that hodge-podge of his, too.'[else if hospquest is 13 and HP of doctor mouse is 1]'I don't want you to skip out on your treatments just because you've gotten Dr. Mouse upset. But do be careful.'[else if hospquest is 13 and HP of doctor mouse is 2]'Things are getting chaotic out there without our mousey Napoleon. A hospital without a director has no way to keep the staff in line.'[end if]";

[
other variations?:
dildos: some have been gifts/just started her collection recently
drawings: this one is my favorite
kinks: part of me had always wanted a figure like this/secretly wondered what having a cock would be like/hyper-fetish
skunks: color/her figurines
psych couch: what new sexual desires have you felt/straight or gay before and what about now/do the creatures you've seen turn you on/skunk urges
old self: big breasts/sexy hips/cock/buried urges
Dr Mouse: be careful/as long as you're useful, he'll reward you well/comment about the controlling nature of the hospital hierarchy/very stimulating watching the 'show'/comment on changes to the staff?
patients: psycho weasels behavior/they'd just be running amok if we didn't/we've been taking care of them in our own, special way


	say "     [one of][if hospquest is 0 or hospquest is 1]***not met dr mouse[else if hospquest is 2 or hospquest is 3 or hospquest is 4]***met Dr. Mouse[else if hospquest is 5 or hospquest is 6]***comment about shemale nature[else if hospquest >= 7 and hospquest is not 13]***helping Dr. Mouse[else if hospquest is 13 and HP of doctor mouse is 1 and hospbattlelost is 1]***saw hosptf scene[else if hospquest is 13 and HP of doctor mouse is 1]***heard that player's pissed Dr. Mouse off[else if hospquest is 13 and HP of doctor mouse is 2]***player defeated Dr Mouse[end if][or]***other dialog[in random order]";

I must say, it's quite pleasant to be able to enjoy some kinks otherwise impossible.
]

the fuckscene of Doctor Moffatt is "[sexwithDrMoffatt]".

to say sexwithDrMoffatt:
	if XP of Doctor Moffatt is 1:
		say "[sexwithDrMoffattSkunkPath]";
	else:
		say "[sexwithDrMoffattHypnoPath]";

to say sexwithDrMoffattHypnoPath:
	if level of Doctor Moffatt > 4:
		if lastfuck of Doctor Moffatt - turns < 4:
			say "     'Again? Oh my, I hope that I did not break you or anything. Come back a little later, [italic type]my sweet little toy[roman type], I am not in the mood yet.'";
		else:
			say "     'Great timing,' the doctor gives you a predatory smile. 'I was starting to miss you, my sweet little toy. [italic type]Clothes off, on the couch. Now.[roman type]' Your body enters in a trance-like state, and before you know it, you are on Doctor Moffat's leather sofa, showing her your [bodyname of player] ass at her.";
			say "[MoffatHypnosisFullSex]";
	else if level of Doctor Moffatt is 3:
		if lastfuck of Doctor Moffatt - turns < 4:
			say "     'Again? It seems that I made someone [italic type]too[roman type] eager. Come back a little later, [italic type]my sweet little toy[roman type], I am not in the mood yet.'";
		else:
			say "     Doctor Moffatt seems to consider something. 'It could be a good chance to test our progress in our secondary experiment.' You feel somewhat uneased by what the skunk implies, but she immediately stops you with four words: '[italic type]My sweet little toy.[roman type]' Almost instantly, you fall on your knees. You feel hot, too hot, you want to take off your clothes. You actually [italic type]do[roman type] take off your clothes, to the last one. 'On the couch, [italic type]My sweet little toy.[roman type]' Without really understanding how or why, your arms and legs move on their own volition, and you crawl towards the couch where Moffatt has conducted her hypnosis sessions on you.";
			say "[MoffatHypnosisPartialSex]";
	else:
		say "     'Right now?' If you do not mind, I would like to work with you some more. Once you are in the proper state of mind... Who knows?'";

to say sexwithDrMoffattSkunkPath:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hyperskunk":
			now monster is y;
			break;
	if lust of Doctor Moffatt is 1 or lastfuck of Doctor Moffatt - turns >= 32:	[overdue session lead-in]
		say "     'This session is long overdue, but that hopefully means you've got a lot more we can discuss about your responses to what you've seen out in the city. I'm looking forward to hearing all about it, my dear. And remember, this is for science,' she says with a grin and a twitch of her cock that reminds you she's getting more out of this than just her research.";
		now lust of Doctor Moffatt is 0;
	if HP of Doctor Moffatt is 2:
		say "     'Mmm... as nice as that sounds, my dear, we'd best focus on my little experiment first,' she rumbles with a swish of her tail and a twitch of her large cock. She does take a moment to note your request on her notepad.";
	else if HP of Doctor Moffatt is 0 or HP of Doctor Moffatt is 1 or HP of Doctor Moffatt is 100:
		say "ERROR-Moffatt-[HP of Doctor Moffatt]T: I shouldn't be talking to you right now!";
	else if HP of Doctor Moffatt is 99:
		say "     'Why should I consider wasting my time with you? You ruined my wonderful experiment. Now I need to find another test subject and start from scratch.'";
	else if skunkbeaststatus is 1:
		say "     'It seems now that you've since become too tainted by those rather mundane forest skunks. You are no longer a suitable candidate for my testing.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now HP of doctor moffatt is 99;
	else if jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0:
		say "     'It seems you've gone and become too tainted by some strangely persistent infection since I last saw you. It keeps you from being a suitable candidate at all.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
		now HP of doctor moffatt is 99;
	else if wrcursestatus >= 7 and wrcursestatus < 100:
		if wrcurseMoffatt is 0:
			say "     'It seems you've gone and become too tainted by some strangely persistent infection since I last saw you. It keeps you from being a suitable candidate at all.' She sighs and teases one of her nipples. 'It's too bad, too. I think we would have had lots of fun together. Now I'll need to start looking for someone else. You may go now,' she says dismissively, giving her tail a meaningful flick.";
			now HP of doctor moffatt is 99;
		else if wrcurseMoffatt is 1:
			say "     'It seems you've gone and disobeyed my instructions and exacerbated this saurian condition of yours. You are no longer a valid candidate for my research and I'll have to find a new candidate and start all over again. I am most disappointed in you and I don't want to see you here again,' she says with a dismissive wave of her fluffy tail.";
			now HP of doctor moffatt is 99;
	else if wrcursestatus >= 3 and wrcursestatus < 7 and wrcurseMoffatt is 0:
		say "     Moving up close, she runs her paws over your [bodytype of player] body. 'This dinosaurian transition that you're going through does present a bit of an unexpected kink,' she says with unusually playful emphasis, 'but it need not ruin my research. I would surmise that it's tapped into something deep, primitive and wild inside you,' she says with a strong, sexual emphasis on those words, squeezing your shoulders and rubbing across the marks on your back. 'That primitive side lurking inside all of us, the instinctive monster from the id. A creature of raw instincts, lusts and desires. I'm sure it will make you a very interesting subject,' she says, running a fingertip along your chin as she leans her muzzle in closer. She presses her plump breasts against you as she licks your ear. 'Just take care not to let it as it is and we can expect some very interesting sessions together,' he whispers softly in your ear before stepping away.";
		now wrcurseMoffatt is 1;
	else if HP of Doctor Moffatt is 3 or HP of Doctor Moffatt is 4:
		if lastfuck of Doctor Moffatt - turns < 8:
			say "     'A most interesting response. We'd best make note of it for later. For now though, we need to focus on my experiment instead of biasing the results in such a manner. As fun as that would be,' she adds, giving your bottom a squeeze. 'Just return and ask me again a day or two after each session and we'll take it from there, my dear.'";
			say "     'What I'd much prefer you do right now is head back out and wander around for a bit. Come back in a day or so and tell me about your experiences and how they made you feel. Besides, I'll need to spend some time with my patients. I'm sure they miss me, too.'";
		else:
			say "     'Ready for another session, then?' she says with a happy smile. 'To start, I want you to lie down on the couch and tell me about what's happened since our last session.' You stretch out and begin to relate your recent experiences to her as she asks you how you felt about the creatures you saw, which ones you found arousing, how much sex you needed to get through your day and so forth[if wrcurseMoffatt > 0]. She also asks you about your wereraptor side and what you feel as the night comes on[end if]. You keep it brief to start, but soon find yourself adding increasing detail as you talk about the lustful urges you've been feeling and the heightened arousal your infected body feels at everything. Between taking her copious notes, her paws wander to her large breasts, her engorged cock or her hefty balls to caress them while asking another question[if player is not neuter]. As you reminisce over what you've seen and done, your hands end up drifting down to your groin, starting to play with yourself as you talk[end if].";
			say "     After a long session that has you rather worked up, Dr. Moffatt gets up to collect another dose from somewhere behind her desk. This gives you another fine view under her raised tail as she goes looking for it, which only arouses you further. In your lustful state, you gulp down the tainted milk without hesitation, moaning in pleasure as a fresh rush of lust and change flows through you.";
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
				follow the breast change rule;
			else:
				now non-infectious entry is false;
				infect "Hyperskunk";
				now non-infectious entry is true;
			if player is neuter:
				follow the sex change rule;
			say "     As the transformation progresses, you end up putting yourself on wanton display for the skunk, aroused by letting her see the changes overtaking you[if breastsizetemp < breast size of player]. The swelling at your chest makes you moan as your bosom expands, making you feel even sexier[end if]. You tease your breasts, tweaking your nipples and moaning at the shivers of pleasure this gives you[if cockstemp < cocks of player]. You can't help but touch your new cock and balls, and (with a little prompting from Dr. Moffatt) start listing off some of the things you'd like to do with your newfound maleness, feeling particularly pleased whenever you can get the skunk's cock to twitch and throb as well[else if cocklengthtemp < cock length of player]. Your dainty hands slip down to your growing cock, stroking it to full erection, and (with a little prompting from Dr. Moffatt) you start listing off some of the things you'd like to do with it[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player]. Your expanded balls churn with increased virility and you delight in telling her about how much cum they'll give[end if][if cuntstemp < cunts of player]. Your altered hands drift downwards, starting to finger your fresh, new pussy, pleased as you see the doctor lick her lips at the sight of it[else if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player]. Your altered hands drift downwards, starting to finger your expanded cunt, pleased as you see the doctor lick her lips at the sight of it[end if]. You continue to caress and tease yourself, savoring the changes while Dr. Moffatt continues to ask her questions. As her questions get increasingly lewd, you [if player is male]pump your throbbing cock until you climax, spraying yourself with a sticky load of cum[else]finger your wet pussy until you climax, soaking your thighs in fresh, feminine juices[end if].";
			say "     'I am very pleased with your progress. I want to you to come back in another day or two for another session so we can continue,' she says, putting her notepad away. 'I do need to get back to my other patients and you should head back into city so you can tell me how you're responding to what you observe. I look forward to you telling me about all those sexy creatures again.'";
			decrease libido of player by 10;
			if libido of player < 40, now libido of player is 40;
			now lastfuck of Doctor Moffatt is turns;
			increase HP of Doctor Moffatt by 1;
	else if HP of Doctor Moffatt is 5:
		if lastfuck of Doctor Moffatt - turns < 8:
			say "     'A most interesting response. Things seem to be advancing well. We'd best make note of it for later. We need to focus on my experiment instead of biasing the results in such a manner, at least for a little longer. As fun as that would be,' she adds, giving your bottom a squeeze. 'Just return and ask me again a day or two after each session and we'll take it from there, my dear.'";
			say "     'For the moment, I'd ask you head back out into the city and wander around a little more. Come back in a day or so and tell me about your experiences and how they made you feel. That will also give me some time with my other patients. I'm sure they miss me, too.'";
		else:
			say "     'Ready for another session, then?' she says with a happy smile as you hop onto the couch. As you begin to relate your recent experiences to her, she continues jotting down notes between fondling herself. By this point, you require little prompting, but she does ask you to add further details from time to time with her questions of 'Did you approach it for sex?' or 'Do you recall how many times you came?' and the like. You go into considerable detail on the lustful urges you've been feeling and the heightened arousal your infected body feels at everything[if wrcurseMoffatt > 0]. She also probes further about your wereraptor urges and what forms those primitive, lustful desires take[end if]. Between taking her copious notes, her paws wander to her plump bosom, her engorged cock or her hefty balls to caress them while asking another question[if player is not neuter]. As you reminisce over what you've seen and done, your own hands run over your body for a while before focusing on your groin, masturbating openly as you tell the sexy skunk all the dirty things you've been thinking lately.";
			say "     After a long session that has you very worked up, Dr. Moffatt gets up and walks towards the couch with a sway to her hips. 'I think you're ready for your next dose. We'll have to take this one direct from the source,' she says with a smile. Your eyes run over her body, locking on her big breasts and nipples as she tweaks them. You see milk starting to leak from them and you lick your lips. As you sit up and reach for her, she presses your face to her bosom, holding one of those lovely gray nipples to your lips and letting you nurse milk from her directly. In your lustful state, you gulp down the tainted milk without hesitation, moaning in pleasure as a fresh rush of lust and change flows through you.";
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
				follow the breast change rule;
			else:
				now non-infectious entry is false;
				infect "Hyperskunk";
				now non-infectious entry is true;
			if player is neuter:
				follow the sex change rule;
			say "     As you continue nursing and the transformation progresses, you grow all the more aroused and play with yourself vigorously. You can smell her arousing scent and the scent of her arousal, but any attempt to fondle the skunk is gently redirected back to yourself though[if breastsizetemp < breast size of player]. The growth of your bosom makes you moan as your breasts expand, making you feel even sexier[end if]. You tease your breasts, tweaking your nipples in time to the licking and suckling you're giving the sexy skunk's nipples[if cockstemp < cocks of player]. You can't help but touch your new cock and balls, and moan to Dr. Moffatt about how eager to you are to put it to use soon as you switch to her other nipple to nurse from it[else if cocklengthtemp < cock length of player]. Your dainty hands slip down to your growing cock, stroking it to full erection, and moan to Dr. Moffatt about which of the many creatures you've seen you want to use it on first[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player]. As you rub your expanded balls, you mumble around the dribbling nipple about how nice your growing load's going to feel[end if][if cuntstemp < cunts of player]. Your altered hands continue further, diving into your fresh, new pussy as trembles of delight run through your body[else if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player]. Your altered hands continue further, diving into your growing cunt as trembles of delight run through your body[end if]. You continue to grope and fondle yourself openly as the skunk moves back to watch, rivulets of milk still running down her breasts. Her paws run along her hard and throbbing cock as she asks you some final questions about how your changes are making you feel. You have difficulty answering, with lots of moans and grunts interruping your responses as you masturbate eagerly in front of her. You [if player is herm]pump your throbbing cock and plunge several fingers into your cunt repeatedly until you have a crashing climax that sprays your semen across your mephit body and soaking your round, sexy thighs in fresh, feminine juices[else if player is male]pump your throbbing cock until you climax hard, spraying your semen across your mephit body[else]plunge several fingers into your cunt repeatedly until you have a crashing climax that soaks your round, sexy thighs in fresh, feminine juices[end if].";
			say "     'Your progress is quite interesting. I want you to come back in another day or two and we could have another session then,' she says with a sexy purr in her voice while teasing her still leaking nipples. 'But for now, I do need to get back to my other patients and you should head back into city to observe some more activity. I look forward to hearing what you think about when you see all those sexy creatures out there.'";
			decrease libido of player by 10;
			if libido of player < 40, now libido of player is 40;
			now lastfuck of Doctor Moffatt is turns;
			increase HP of Doctor Moffatt by 1;
	else if HP of Doctor Moffatt is 6 or HP of Doctor Moffatt is 7:
		if lastfuck of Doctor Moffatt - turns < 8:
			if HP of Doctor Moffatt is 6:
				say "     'A most interesting response. Things seem to be advancing well. We'd best make note of it for later. We need to focus on my experiment instead of biasing the results in such a manner, at least for a little longer. As fun as that would be,' she adds, giving your bottom a squeeze. 'Just return and ask me again a day or two after each session and we'll take it from there, my dear.'";
				say "     'For the moment, I'd ask you head back out into the city and wander around a little more. Come back in a day or so and tell me about your experiences and how they made you feel. That will also give me some time with my other patients. I'm sure they miss me, too.'";
			else:	[HP 7]
				say "     'A most interesting response, given your earlier reaction. Things seem to be advancing well. We'd best make note of it for later. Perhaps you'll be more amenable during our next session?' she teases, giving your bottom a squeeze. 'Just return and ask me again a day or two after each session and we'll take it from there, my dear.'";
				say "     'For the moment, I do want you to head back out into the city and do some more exploring. Meet others, make new friends and have fun with them. Come back in a day or so and tell me about your experiences and how they made you feel. Until then, I'll tend to my other patients. They need some time with their doctor, too.'";
		else:
			if HP of Doctor Moffatt is 6:		[HP 6 - first offer]
				say "     'Ready for another session, then?' she says with a happy smile as you hop onto the couch. As you begin, you relate the increasing urges you feel after you've been away between sessions. You talk about how thoughts of skunks, and of her, keep coming to your mind and how your lust grows uncontrollably the longer you've stayed away. 'Hmm... Interesting,' she muses. 'I thought something like this might occur.' She asks you a few questions about your lusts and urges, particularly related to your increasingly obsessive thoughts of her. You would be embarrassed to say this normally, but the way these thoughts of her have been consuming your mind (and her clear arousal at some of your comments) make you continue in increasing detail. At a few points, she tries to steer the conversation back to the other creatures you've seen and sexual desires you've had since your last visit[if wrcurseMoffatt > 0] as well as your wereraptor curse[end if], but you keep going back to her.";
				say "     After you've gone on at length about your growing lust for her, she runs her paws along her side and over her skirt, making her cock twitch and dribble. She's clearly become quite excited by listening to your desires. 'Mmm... this is a most interesting response. I think I may have a solution to help you deal with the negative effects you're experiencing. If you're willing, that is?' she purrs, running her paws down over her shaft, which is now fully hard. You eye her throbbing erection and lick your lips, longing for that meaty cock after all you've said that you almost agree immediately to whatever she wants.";
				now HP of Doctor Moffatt is 7;
			else:					[HP 7 - offering again]
				say "     'Ready for another session, then?' she says with a happy smile as you hop onto the couch. As you begin to relate your experiences and actions in the city, you find your mind always coming back to talking about your thoughts of sexy skunks and, more specifically, of her in particular. As before, the session continues with her asking about these lusts and urges you have and any attempt to talk about your other experiences [if wrcurseMoffatt > 0]or your wereraptor curse [end if]soon wanders back to your lusts for her. 'Mmm... These interesting responses of yours continue. I think you might be ready to try that solution I've offered to deal with those negative symptoms you've been experiencing. If you're willing this time, that is?' she asks, rubbing her paws over her throbbing cock in a clear offer.";
			say "     [bold type]Shall you take her up on her offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "     The hyperskunk smiles as you agree and tosses aside her notepad, moving quickly towards the couch to join you. You reach up towards her bosom to prepare to nurse again, but she sways her hips, bringing her cock into reach instead. 'No, I think you're ready for a full dose this time. But we'll start you off easy with just an oral dose,' she says with a moan as you've already pressed your lips to the large glans and are licking and sucking at it for her delicious precum. She strokes your head, gently guiding you forward, your mouth and throat slowly stretching open to accommodate her giant cock. You're surprised with how easy it's going in and are pleased to get more of her throbbing maleness inside you.";
				say "     As she starts to thrust, you moan wetly around its thick flesh, rubbing your hands over her hefty balls and sucking hungrily on her rod. 'Mmm... you're doing so well. Keep this up and you'll earn a special treat, my sexy skunky,' she moans, caressing your stretched jaw and throat. As she starts thrusting, she starts playing with her breasts and tweaking her nipples. While you have trouble seeing this while stuffed onto her pulsing shaft, you can feel her warm milk squirting down onto you. As you feel the tingles of the nanites at work, you can feel your body start to change and it only excites you more. Clearly this excites the skunk doctor as well, as she cums -hard- while watching you change. Her heavy balls churn and pulse in your paws as blast after blast of mephit cum is pumped into you. The first few shots are enough to make you feel full and she's just gotten started. By the time she's done and slid her spent shaft from you, you're stuffed so full that your belly bulges out like a big balloon filled with hot semen. There's no discomfort from this, only the pleasure of being so full you can hardly move.";
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
					follow the breast change rule;
				else:
					now non-infectious entry is false;
					infect "Hyperskunk";
					now non-infectious entry is true;
				now non-infectious entry is false; [double-dose this time]
				infect "Hyperskunk";
				now non-infectious entry is true;
				if player is neuter:
					follow the sex change rule;
				say "     Your paws move to rub your stuffed tummy, feeling the thick cream churn around inside you as you caress the bulge. You can tell the sexy doctor is pleased with her handiwork as she looks you over, having taken her seat at the edge of the desk again. The sight of that sexy body of hers, especially the hefty cock and giant balls that did this to you excite you and you struggle to reach a paw around your overfull belly and past your wide hips to play with yourself[if breastsizetemp < breast size of player]. Your other hand grabs your enlarged breasts and starts rubbing them, teasing your gray nipples. To your delight, you start to leak a little milk of your own[else if breast size of player > 0]. Your other hand grabs your breasts and starts rubbing them, teasing your gray nipples. To your delight, you start to leak a little milk of your own[end if]. You stroke and caress your chest with moans of delight, your body feeling even better than before thanks to the hefty dose of hyperskunk cream[if cockstemp < cocks of player]. Managing to grope around your stuffed belly, you stroke your new cock and balls, describing how you want to use it on the next critter you find[else if cocklengthtemp < cock length of player]. Managing to grope around your stuffed belly, you stroke your enlarged cock and balls, describing how you want to use it on the next critter you find[end if][if cockstemp < cocks of player or cocklengthtemp < cock length of player and ( libido of player > 60 or humanity of player < 50 )], willing or not[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player]. As you rub your swollen testes, you long for the opportunity to drain them into someone[end if][if cuntstemp < cunts of player]. Your dainty paws continue further, caressing the wet folds of your new and eager pussy as ripples of pleasure run through you from it[else if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player]. Your dainty paws continue further, caressing the wet folds of your growing pussy, diving into your growing cunt as ripples of pleasure run through you from it[end if]. As you play with yourself openly for the sexy skunk, she makes some notes and resumes her questions.";
				say "     Milk still trickles down her breasts and her cock, even after having cum so vigorously, twitches and throbs as she asks you about how your changes are making you feel this time. You have to pause often in your responses to moan or groan as you waves of delight from your wonderful new body run through you. You tell her how it feels different this time, better somehow and she mumbles some comments to herself about your considerable progress. You [if player is herm]pump at your throbbing cock and plunge your dainty paw entirely into your cunt, driving yourself to a loud and messy orgasm that splatters your seed all over yourself and the wall behind you. Your paw and crotch are soaked from your feminine juices, as is the lower half of the couch[else if player is male]pump at your throbbing cock, driving yourself to a loud and messy orgasm that splatters your seed all over yourself and the wall behind you[else]plunge your dainty paw entirely into your cunt, driving yourself to a loud and messy orgasm that leaves your paw and crotch soaked from your feminine juices, as is the lower half of the couch[end if].";
				say "     'You've made considerable progress this session. I'm very pleased with these results,' she says, with a particular emphasis on [']pleased['] that makes your loins quiver in delight at the prospect of more. 'Your cravings should fade now, leaving you better able to enjoy that wonderful new body of yours. Please come back for more sessions, as it's important to hear how you're responding to those you meet out there. Also, if you need another boost, come back to see me again and we'll have another in-depth session,' she says, running a paw over her large phallus, making it twitch. She helps you up out of the couch and gives your ass a pat, sending you on your way with a kiss and a reminder to have fun out there.";
				decrease libido of player by 10;
				if libido of player < 40, now libido of player is 40;
				now lastfuck of Doctor Moffatt is turns;
				now HP of Doctor Moffatt is 8;
			else:
				say "     The busty skunk mmm-hmms and makes some more notes on your response, but does seem disappointed with your choice. Setting the notepad down, she runs her paws over her breasts, tweaking her nipples to draw out some milk. You subconsciously run your tongue along your lips, already imagining the taste of the doctor's delicious milk. 'We'd best move on to your next dose then,' she says, sashaying over to you and pressing her bosom to your face. You wrap your lips eagerly around her nipple and start nursing, savoring the taste of it even as you feel the rush of changes running through your increasingly sexy body.";
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
					follow the breast change rule;
				else:
					now non-infectious entry is false;
					infect "Hyperskunk";
					now non-infectious entry is true;
				if player is neuter:
					follow the sex change rule;
				say "     As you continue nursing and the transformation progresses, you grow all the more aroused and play with yourself vigorously. You can tell the skunk is very aroused by this from the soft moans and the soft sounds of her stroking her throbbing meat. Your earlier reservations about playing with the skunk fade further, but you are in the throes of your delightful transformation right now and become enraptured in playing with yourself[if breastsizetemp < breast size of player]. You moan around her gray nipple as your own breasts expand further and you hope they'll be as lovely as hers soon[end if]. You stroke and caress your wonderful tits, teasing your nipples a playful pinch even as you nibble on the doctor's[if cockstemp < cocks of player]. You can't help but stroke your new cock and balls, moaning about how eager to you are to put it to use on the next creature you find[else if cocklengthtemp < cock length of player]. Your dainty hands slip down to your growing cock, stroking it to full erection, and moan to Dr. Moffatt that you look forward to putting it to use on the next creature you find[end if][if cockstemp < cocks of player or cocklengthtemp < cock length of player and ( libido of player > 60 or humanity of player < 50 )], willing or not[end if][if cockstemp is not 0 and cockwidthtemp < cock width of player]. As you rub your swollen testes, you long for the opportunity to drain them into someone[end if][if cuntstemp < cunts of player]. Your dainty paws continue further, diving into your new and eager pussy as it quivers with delight at every touch[else if cuntlengthtemp < cunt length of player or cuntwidthtemp < cunt width of player]. Your dainty paws continue further, diving into your growing cunt as it quivers with delight at every touch[end if]. You continue to grope and fondle yourself openly as the skunk moves back to watch, rivulets of milk still running down her breasts. Her paws run along her leaking erection as she asks you some final questions about how your changes are making you feel. Your responses are broken up by a lot of moans and grunts interrupting your attempts to answer as you masturbate eagerly in front of her. You [if player is herm]stroke your pulsing shaft and drive several fingers into your cunt until you have a loud and messy climax that leaves you wet, sticky and satisfied[else if player is male]stroke your pulsing shaft until you have a loud and messy climax that leaves you wet, sticky and satisfied[else]drive several fingers into your cunt over and over until you have a loud and messy climax that leaves you wet, sticky and satisfied[end if].";
				say "     'I'm quite pleased with these results despite your earlier reluctance to advance further. Perhaps during the next session you'd like your session to be a little more hands on?' she purrs, teasingly playing with her breasts and smiling coyly at you. 'But for now, I should check in on my other patients while you head back into the city and have some more fun out there so you can tell me all about it next session,' he moans, stroking her still-hard cock. Looking at it, you're unsure if you should feel sorry for her patients or envy them.";
				decrease libido of player by 10;
				if libido of player < 40, now libido of player is 40;
				now lastfuck of Doctor Moffatt is turns;
	else if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9:	[sessions + sex]
		if lastfuck of Doctor Moffatt - turns < 8:
			say "     'You are back for more a little earlier than expected,' she says, making some notes. 'But as I stated, I believe we should wait at least a day between your sessions, even now that you've moved past the preliminary portion and are now into the meat of it.' She lets a paw glide over her cock with a grin.";
		else:
			if bodyname of player is not "Hyperskunk":
				say "     She slides her fluffy tail across your [bodytype of player] body. 'Hmmm... it seems you've gone and lost that sexy skunk body of yours while out having some fun. But don't worry, I'll be happy to help you with that once we're through with our session.' She runs her paw along your side before pushing you towards the couch.";
			else if the player is pure:
				say "     She smiles as she looks you over appreciatively. 'I must say - you're looking quite the sexy beast. You're certainly best suited to be a beautiful, voluptuous skunk,' she says with a sexy purr in her voice while running her paws over your chest. 'Let's get your session started so I can show you just how much I like the new look.'";
			say "     As she motions you towards the couch, you hop onto it quickly, eager to start telling your sexy shrink about all the fun you've been getting up to out in the city";
			if wrcurseMoffatt > 0 and a random chance of 1 in 4 succeeds:
				say "[one of]. 'Now let's talk some more about this wild, primitive side of you. What do you feel when the changes are overtaking you? Do you find yourself longing for the wild abandon of giving into your lusts?' she asks, taking notes on your responses and helping you focus on the lustful urges over the violent ones.[or]. 'Tell me more about this wild, primitive creature living within you. Describe its wants and desires to me. What does it seek? What are its lustful passions? Are they so different from your normal, daily ones?' she asks, intrigued by your answers.[or]. 'Let's take a moment to delve into your id and seek out this primitive beast lurking within you. Where does it draw its strength? What fuels its wild rage?' she asks, helping you deal with your curse a little better.[in random order]";
				increase libido of player by 2;
				increase humanity of player by 5;
				if humanity of player > 100, now humanity of player is 100;
			else:
				say "[one of]. 'Now tell me about some of these creatures you've been seeing. How has their appearance been affecting you? What features about them spark your interest?' she asks, enjoying your description of those sexy beasts.[or]. 'Let's talk some more about these creatures you've been seeing. Are there any you particularly enjoy running into? What about them makes them so special?' she asks, nodding as she notes down your responses while her own cock twitches[or]. 'And what about these others you see out in the city? Which have been exciting you of most of late?'[or]. 'Have you been helping others out in the city and making new friends? It's important for you to make friends. Difficult times are easier to get through with friends to help you out.' While this sounds like normal psychologist talk, the lewd way her cock throbs makes it pretty clear how she thinks you and your friends in the city should help each other out[or]. 'And what do you find sexy now that you didn't before the outbreak? What have your sexual fantasies and desires been like over the last few days? Do you remember how you would have reacted to that before changing?' she asks. And while you have trouble remembering what you may have been like this all started, how could you not have lusted for all the sexy things you see around you? She smiles and nods at your responses, making more notes[or]. 'Now tell me about your new, sexy [bodytype of player] body. What do you like about it the most?' she asks, her cock throbbing as you describe how your new body turns you on and what feels best about it[or][if ( player is herm and a random chance of 1 in 2 succeeds ) or ( player is puremale )]. 'Now tell me about this [cock of player] cock of yours. Have you been wanting to have intercourse with the creatures you've been seeing with it? Which ones in particular get a rise out of you?' she asks, stroking her heavy balls as you start listing off the people and things you'd like to fuck[else if player is female]. 'Now tell me about that [cunt size desc of player] pussy of yours. How often have you been wanting intercourse lately? Are there any people you've met or creatures you've seen you'd like to have stuff that juicy hole of yours?' You can't help but start fingering yourself as you list off several well-hung cocks you've seen lately all while the skunk strokes her own twitching penis[else]. 'And how have you been responding to your sexual desires while being a genderless individual? What gender do you want to try being next?' she asks with interest, playing with her own nipples as she listens to your response[end if][in random order]";
			say ". The session goes on for a while with her asking more questions which make you increasingly aroused as you talk about all the sexy things you've been seeing and doing, enjoying how the skunk strokes and caresses herself, clearly turned on by hearing all your sexual desires. You hold nothing back from your shrink, also telling her how she turns you on and how much you want her as well.";
			if HP of Doctor Moffatt is 8:		[sex]
				say "     After some time, she calls an abrupt end to the session, tossing aside the notepad. From the way her cock throbs and dribbles pre, it seems she'd rather skip her remaining questions and get on to the in-depth part of your session. Joining you on the couch, she spreads your legs and gets her cock lined up with your [if player is female]pussy[else]ass[end if]. Looking at the size of it, you can't help but gulp a little, but you are so worked up that your eager for her to try mounting you. You nod to her and reach down to grab her cock, stroking it forwards as a further sign of your willingness. The well-hung skunk grins and eases her wide hips forward, pressing her large, dripping glans against your wanton hole, slowly spreading you open. You moan loudly as her [one of]giant cock[or]meaty missile[or]hyper penis[or]super-sized cock[at random] slowly sinks into you. There is some initial discomfort, but so much more pleasure as well, all your earlier sessions making your body crave this.";
				say "     As the skunk starts fucking you, slowly at first to draw it out, she [one of]continues to ask questions, this time about how you're enjoying getting fucked and what stimulates your [bodytype of player] body the most. You have difficulty answering, moaning lustfully about your body's turn-ons, which the skunk is happy to exploit[or]asks more questions, this time about whether you'll be getting the other creatures out there to fuck you like this. Between thrusts, you moan out answers, soon listing off all the sexy males and herms you'd like topping you[or]asks you to tell her which sex positions you like the best and why. You moan out responses, telling her all your favorite positions, though this one seems the best right now for obvious reasons[or]foregoes more questions to press her body overtop of yours and press her bosom to your face, offering a drink of her delicious milk. You drink it down eagerly, loving her creamy taste[thirstdecrease][or]skips more questions and instead gets you to nurse for more milk. You suckle her delicious milk between moans of pleasure[thirstdecrease][in random order]. As she starts thrusting into you harder, somehow having buried the whole of her massive cock into you, she moans about what wonderful progress you're making and how pleased she is at having picked you.";
				say "     As the in-depth portion of the session continues, you can feel her giant phallus throbbing and pulsing inside your [if player is female]cunt[else]bottom[end if] harder and faster as the skunk's excitement grows. You slide your hands down to your belly, stroking over the large bulge it's making inside you and rub over it, drawing more sounds of pleasure from both of you. That's finally enough to set the skunk off and she pushes in deep one last time before unleashing her load into you. There's so much of semen that it comes out as a long blast of cum with bigger surges in the flow rather than just coming out in spurts. You both moan long and loud through this as you watch your belly swell with her prodigious output[if player is female]. With her cock stuffed deep inside you, your womb becomes overfilled with the hyperskunk's semen as she seeks to breed her sexy [one of]patient[or]test subject[at random][else]. With her cock stuffed deep inside you, her excessive load fills you more and more, unable to escape around the thick cock[end if]. When her flow finally ebbs, she flops down atop you, burying you in her cleavage, and you both have to rest for a bit before she dismounts. Surprisingly, your [if player is female]pussy[else]anus[end if] doesn't overflow with cum when she pulls out a little later, your body instead keeping it all inside.[impregchance][impregchance]";
				now HP of Doctor Moffatt is 9; [oral next time]
			else if HP of Doctor Moffatt is 9:		[oral]
				say "     After she's gone through her questions, both you and Dr. Moffatt are quite aroused and eager to move on to the in-depth portion of your therapy. She slides off the desk in a sexy manner as strides over to you. 'Mmm... you've done quite a bit of talking this session. I think you should put your mouth to other use now,' she says with a grin, offering her dripping cock to you. You gulp a little as you look at the size of it, but are so worked up that you eagerly start licking it. 'Go on, doctor's orders,' she says, stroking her gloved paws over your head, guiding you forward. Your mouth and throat slowly stretch open to accommodate her massive erection. It goes in with ease like before, your body having been conditioned to accept it, even crave for it. It feels wonderful to have her throbbing, pulsing cock stuffed into your mouth and down your throat, filling you so much your flesh bulges to fit it.";
				say "     You reach up to start playing with her massive balls, knowing from before just how much cream they hold and you'll soon be getting. You moan wetly around her throbbing member as you imagine it soon filling you, running your tongue along the pulsing gray shaft[one of]. 'Mmm... that's a good skunky. Take your medicine,' she purrs[or]. 'You look so sexy stuffed full of cock,' she rumbles in pleasure[or]. 'You're very good at this. You were always meant to suck skunk cock,' she moans[or]. 'I'm very pleased with your progress. Soon you'll be able to accept that you've always wanted to be a slutty, sexy skunk,' she moans[in random order] as she starts thrusting gently at first. Her pace does quicken as the excitement builds and your throat relaxes enough to allow for the rapid pounding you desire from her.";
				if a random chance of 1 in 3 succeeds or ( player is neuter ):
					say "     The sexy skunk's paws release your head, leaving you to continue to push your face forward into each thrust she makes. Her free paws slide up her own body to play with her breasts and nipples. While you have difficulty watching this, you can feel her warm milk squirting down onto your [bodydesc of player] form. You are even rewarded with a taste as some runs down her fur and wets the base of her cock. This added prize makes you all the more eager to push forward to get the whole of her cock inside you with each thrust. The massive blow job and deep throating soon gets to be too much for the hyperskunk and she groans in pleasure, cumming hard. You can feel her oversized orbs churn with virile seed moments before each blast of mephit cum is pumped into you. The first few shots are enough to fill your stomach and there's so much more to come. Once she's drained, your belly is bulging like a cum-filled balloon. This leaves you feeling wonderfully full and content, loving the fact that you're so stuffed you can hardly move. You lick and suck on her cock for the last dregs of her cum, savoring the final mouthful before struggling to swallow it down and releasing her spent shaft.";
				else:
					say "     The sexy skunk holds your head steady as she pulls her hips back. You moan in disappointment as her cock pops free with a wet slurp. 'Lie back and I'll tend to your needs as well. I can't let my patient go without some relief, now can I?' she says with a grin. You eagerly lie back on the couch and she climbs atop you in a sixty-nine. Having already been stretched out, her cock goes in easily, letting her bury it in your mouth while she presses her muzzle between your legs to start licking [if player is herm]at your cock and cunt[else if player is male]along your cock[else]at your juicy cunt[end if]. With you beneath her, it's easy for the skunk to pound her giant shaft into your mouth hard and fast. All you can do is release soft, muffled moans of pleasure as she jams the meaty thing down your throat again and again while licking your crotch.";
					if cock length of player >= 24:
						say "     'Mmm... your cock is coming along nicely. It's such a fine size for such a sexy skunk,' she moans before slowly sinking her muzzle down over it. Your [cock size desc of player] shaft throbs, spurting precum into her mouth and down her throat as she stretches open to accommodate your big cock in return. Soon you're both stuffed with meat, giving blow jobs to your huge cocks and loving it[if player is female]. The curvaceous doctor slides a paw under your balls to stroke and tease your pussy, fingering you even as she tries to suck you off[else]. The curvaceous doctor rolls your balls around in her paw, stroking your cum-filled orbs as she tries to suck you off[end if]. Clearly she's had quite a bit of practice of late and soon you can no longer hold back, cumming with a muffled moan around your own meaty mouthful. This is enough to set her off, sending blast after blast of mephit cum down your throat. And while the first few shots are enough to make you feel full, there's plenty more to come after that and it doesn't end until you're left bloated and full like a cum-filled balloon[if cock width of player >= 24]. Stuffed quite full herself, the doctor can only slowly roll herself off of you and onto the floor. You both struggle to get up, feeling so delightfully full you can hardly move[else]. The doctor slowly slides herself off of you and onto the floor, panting as she recovers from the powerful orgasm[end if].";
					else if player is male:
						say "     'Mmm... hopefully we can get some more meat on your meat soon,' she says as she runs her tongue along your [cock size desc of player] shaft before sinking her muzzle down over it. Your [cock of player] cock throbs, spurting precum into her mouth to give her a taste. Her tongue starts to play over your sensitive member as she sucks your cock, making you release a muffled moan of pleasure and remind you to get back to doing the same to her much larger cock[if player is female]. The curvaceous doctor slides a paw under your balls to stroke and tease your pussy, fingering you even as she tries to suck you off[else]. The curvaceous doctor rolls your balls around in her paw, stroking your cum-filled orbs as she tries to suck you off[end if]. Clearly she's had quite a bit of practice of late and soon you can no longer hold back, cumming with a muffled moan around your own meaty mouthful. This is enough to set her off, sending blast after blast of mephit cum down your throat. And while the first few shots are enough to make you feel full, there's plenty more to come after that and it doesn't end until you're left bloated and full like a cum-filled balloon[if cock width of player >= 24]. Stuffed quite full herself, the doctor can only slowly roll herself off of you and onto the floor. You both struggle to get up, feeling so delightfully full you can hardly move[else]. The doctor slowly slides herself off of you and onto the floor, panting as she recovers from the powerful orgasm[end if].";
					else:
						say "     'Mmm... such a juicy, needy pussy you have here,' she purrs as she gives you another long lick over your sensitive folds[one of]. 'Hot and ready for a nice big skunk cock, I'd say. In my professional opinion,' she adds, giving you another lick that makes you release muffled moan around your mouthful of meat[or]. 'Perhaps I should stuff you full of skunk kits next time. Would you like that?' she purrs, giving you another lick while you try your best to nod with her cock stuffed in your mouth[or]. 'Does my horny patient want her doctor to fill her pussy next time?' she asks, giving you another long lick while you try your best to nod with her cock stuffed in your mouth[or]. 'Perhaps I'll give you your next dose in this hot and ready cunt of yours,' she moans, giving you another lick that makes you release muffled moan around your mouthful of meat[at random]. As the skunk continues to thrust down into your face, her fingers and tongue lavish attention upon your [cunt size desc of player] pussy. She [if cunt width of player > 5]slides a pair of fingers, then a third, and then her whole dainty paw into your wide pussy. Again and again she stuffs you nicely with her gloved fingers from one end and her pulsing cock from the other[else if cunt width of player > 2]inserts a second finger into you and then a third into your ample pussy. Again and again, she stuffs you nicely with her gloved fingers from one end and her pulsing cock from the other[else]. She inserts a second finger into your wet pussy. Again and again, she stuffs you nicely with her gloved fingers from one end and her pulsing cock from the other[end if]. As her paw and muzzle work at your pussy, lapping up your juices, clearly having quite a bit of practice of late. She keeps pounding your face as your tongue does its best to please her in return. Eventually this all becomes too much for her and she cums hard, sending blast after blast of mephit cum down your throat. And while the first few shots are enough to make you feel full, there's plenty more to come after that and it doesn't end until you're left bloated and full like a cum-filled balloon[if cock width of player >= 24]. Stuffed quite full herself, the doctor can only slowly roll herself off of you and onto the floor. You both struggle to get up, feeling so delightfully full you can hardly move[else]. The doctor slowly slides herself off of you and onto the floor, panting as she recovers from the powerful orgasm[end if].";
				now HP of Doctor Moffatt is 8; [sex next time]
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
				follow the breast change rule;
			else:
				now non-infectious entry is false;
				infect "Hyperskunk";
				now non-infectious entry is true;
			if player is neuter:
				follow the sex change rule;
			say "     After Dr. Moffatt helps you up off the couch, she runs her paws over your bloated belly, telling you once again what a productive session this has been. Her paws then move down to your wide hips and gives your rear a light swat. 'You should head off for now so I can get back to my other patients, sexy. You go have lots of fun and come back for another session soon so we can continue your therapy.'";


to say thirstdecrease:
	PlayerDrink 10;

to say MoffatHypnosisFullSex:
	say "     'Such a nice [if player is female]girl[else]boy[end if],' the psychologist giggles. Stuck in a trance state, the skunk's voice feels as if it was inside your head with your own mind. She circles around the couch while you look down, your body locked in place. Eventually, she stops near your face. ";
	if a random chance of 1 in 2 succeeds:
		say "She slaps her flaccid cock against your cheeks a couple of times, before pressing it against your lips. 'Suck.' As soon as the word escaped her lips, your raise your head and, like an automaton, begin to bob your mouth up and down her shaft. It quickly hardens and thickens, until it stretches your lips and reaches down your throat; but you do not stop a single moment. With your gag reflex suppressed by the hypnosis, your lips slide down to the base of Doctor Moffat's shaft, before going back to its crown, in a metronomic rhythm.";
		say "     Moffatt purrs from your relentless efforts. She amuses herself by ordering you to go 'faster' and 'slower' from time to time. Eventually, she orders you to stop, and pulls her cock out of your mouth. Strands of saliva and pre crash on the ground. 'Good toy,' she says while petting your head. 'Time to use the other end.'";
	else:
		say "She puts one foot on the couch and guide your face to her ballsack. 'Lick.' As soon as you hear the single-worded order, you bury your face into the skunk's scrotum and start licking without pause. In an oblivious frenzy, you make your tongue travel up and down the doctor's crack, focusing on each of her huge balls when she gives you the order. Your hazy mind loses the sense of time, and your service goes on for what feels hours, but only lasts for a dozen minutes.";
		say "     Moffatt purrs from your relentless efforts. Eventually, she orders you to stop, and puts her foot off the couch. Her cock is rock-hard and rests on your [face of player] head, wetting the top with her pre, which makes her giggle at the sight. 'Good toy,' she says while petting your head. 'Time to use the other end.'";
	[Priority order: pussy, cock, ass]
	[Pussy, default for females and herms if anal level is 1]
	if player is female and (a random chance of 1 in 2 succeeds or anallevel is 1):
		say "     Doctor Moffatt walks around you, and positions herself behind you. 'Such a good girl. I did not even have to order you to prepare yourself this time.' She softly guides your right hand fingers out of your pussy, and put your hand back on the sofa. Trapped in the hypnosis, you simply stare in front of you, your cunt quivering from the sudden removal of your digits. They are quickly replaced by the doctor's cock. It pushes inside you, stretching you nice and good until she bottoms out. 'Hnnn. Yesss.' Moffatt begins to pump her hips against your butt. Slap, slap, slap. Each time her balls slam into your groin, a small electric shock runs through your spine. Eventually, as you are about to cum, the trance begins to wear off, and your consciousness suddenly realizes where you are and what is happening. The sensory backlash has you cum hard.";
		say "     You let out a long, loud bellow as your pussy squeezes the skunk's shaft like a vice and femcum splashes on the fur of her thighs[if player is male]. Your male bits let out ropes of cum on the leathery furniture, that the doctor had fortunately protected with a towel beforehand[end if]. Doctor Moffatt cums not long after, and your tired brain feels her torrent of cum rush down your womb. You hear her raspy pants behind you as she slides out of you slowly, letting her deflating cock flop along your thigh, a trail of cum painting your leg white.";
	[Cock, default for males if anal level is 1]
	else if player is male and (a random chance of 1 in 2 succeeds or anallevel is 1):
		say "     Doctor Moffatt walks around you, and snaps her fingers. 'Turn'. You instantly lay on your back on the couch, exposing your erect cock for her, one of your hands relentlessly pumping it. 'Such a good boy. I did not even have to order you to prepare yourself this time.' She softly guides your fingers off your dick, and straddles your pelvis. Trapped in the hypnosis, you simply stare at the ceiling, your penis squirming in expectation. Moffatt wastes no time slamming her ass down on your shaft. She accommodates your [cock size desc of player] easily. 'Hnnn. Yesss,' she purrs, massaging her belly before stroking her cock, and rocking on your own shaft. Slap, slap, slap. Each time she bottoms out, a small electric shock runs through your spine. Eventually, as you are about to cum, the trance begins to wear off, and your consciousness suddenly realizes where you are and what is happening. The sensory backlash has you cum hard.";
		say "     You let out a long, loud bellow as your fists clench the leathery furniture, and your empty your balls into the good doctor in a succession of long, thick ropes of sperm. Doctor Moffatt cums not long after, and while she squeezes your over-sensitive cock with her anal muscles, she strokes her cock with fast, powerful strokes until it sprays fresh cum all over your [bodyname of player] body, up to your face and into your open mouth. You hear her raspy pants behind you as she slides off you slowly, letting her deflating cock flop along your stomach.";
	[Ass]
	else:
		say "     Doctor Moffatt walks around you, and positions herself behind you. 'Such a good toy. I did not even have to order you to prepare yourself this time.' She softly guides your right hand fingers out of your ass, and put your hand back on the sofa. Trapped in the hypnosis, you simply stare in front of you, your ass quivering from the sudden removal of your digits. They are quickly replaced by the doctor's cock. It pushes inside you, stretching you nice and good until she bottoms out. 'Hnnn. Yesss.' Moffatt begins to pump her hips against your butt. Slap, slap, slap. Each time her balls slam into your groin, a small electric shock runs through your spine. Eventually, as you are about to cum, the trance begins to wear off, and your consciousness suddenly realizes where you are and what is happening. The sensory backlash has you cum hard.";
		say "     You let out a long, loud bellow as your ass squeezes the skunk's shaft like a vice[if player is male]. Your male bits let out ropes of cum on the leathery furniture, that the doctor had fortunately protected with a towel beforehand[end if]. Doctor Moffatt cums not long after, and your tired brain feels her torrent of cum rush down your innards. You hear her raspy pants behind you as she slides out of you slowly, letting her deflating cock flop along your thigh, a trail of cum painting your leg white.";
	say "     Panting heavily, the doctor sits down on her desk chair, and fetches some tissues to wipe herself. '[one of]I was quite skeptical when we began these hypnosis sessions, but in the end, I don't regret it one bit[or]I can't get enough of this, really. Maybe I should plan some [']therapy sessions['] with that weasel. What do your think?[stopping].'";

to say MoffatHypnosisPartialSex:
	say "     'Such a nice [if player is female]girl[else]boy[end if],' the psychologist giggles. A sense of dread fills you, and you try to get off from the couch. 'Don't move, my sweet toy.' Despite your brain screaming to move, your muscles refuse to bulge. Doctor Moffatt circles around the couch while you look down, locked in place. Eventually, she stops near your face. ";
	if a random chance of 1 in 2 succeeds:
		say "She slaps her flaccid cock against your cheeks a couple of times, before pressing it against your lips. 'Suck.' You muster all your strength to not obey the command, despite the desire to wrap your lips around her thick glans growing by the second. 'Suck, my dear toy.' As soon as the keyword escaped her lips, your raise your head and start to bob your mouth up and down her shaft. It quickly hardens and thickens, until it stretches your lips and reaches down your throat; but you do not stop a single moment. You start gagging, but your body does not react and your lips keep sliding down to the base of Doctor Moffat's shaft, before going back to its crown, in a metronomic rhythm.";
		say "     Moffatt purrs from your relentless efforts. She amuses herself by ordering you to go 'faster' and 'slower' from time to time, adding the keyword if you show hesitation. Eventually, she orders you to stop, and pulls her cock out of your mouth. Strands of saliva and pre crash on the ground. 'Good toy,' she says while petting your head. 'Time to use the other end.'";
	else:
		say "She puts one foot on the couch and guide your face to her ballsack. 'Lick.' You muster all your strength to not obey the command, despite the growing desire to plunge your head between these furry thighs of hers. 'Lick, my dear toy.' As soon as you hear the keyword, you bury your face into the skunk's scrotum and start licking, without pause. Powerless to restrain yourself, you make your tongue travel up and down the doctor's crack, focusing on each of her balls each time she gives the order, adding the keyword to her command if necessary. Your involuntary service goes on for what feels hours, but only lasts for a dozen minutes.";
		say "     Moffatt purrs from your relentless efforts. Eventually, she orders you to stop, and puts her foot off the couch. Her cock is rock-hard and rests on your [face of player] head, wetting the top with her pre, which makes her giggle at the sight. 'Good toy,' she says while petting your head. 'Time to use the other end.'";
	[Priority order: pussy, cock, ass]
	[Pussy, default for females and herms if anal level is 1]
	if player is female and (a random chance of 1 in 2 succeeds or anallevel is 1):
		say "     Doctor Moffatt walks around you, and positions herself behind you. 'Such a good girl. I did not even have to order you to prepare yourself this time.' To your greatest shame, you realize that you had started to finger yourself, at some point. She slowly guides your right hand fingers out of your pussy, and puts your hand back on the sofa. Your entire body shudder, trying to break out from the paralysis, but you are only able to look behind you, as you watch Moffatt line up her cock with your main orifice. The thick shaft pushes inside you, stretching you nice and good until she bottoms out. 'Hnnn. Yesss.' You let a long moan escape your lips as well. Moffatt begins to pump her hips against your butt. Slap, slap, slap. Each time her balls slam into your groin, a small electric shock runs through your spine. Eventually, as you are about to cum, the transe begins to wear off, and your limbs are able to move on their own again. But then, a flow of sensorial pleasure rushes your brain and has you cum hard.";
		say "     You let out a long, loud bellow as your pussy squeezes the skunk's shaft like a vice and femcum splashes on the fur of her thighs[if player is male]. Your male bits let out ropes of cum on the leathery furniture, that the doctor had fortunately protected with a towel beforehand[end if]. Doctor Moffatt cums not long after, and your tired brain feels her torrent of cum rush down your womb. You hear her raspy pants behind you as she slides out of you slowly, letting her deflating cock flop along your thigh, a trail of cum painting your leg white.";
	[Cock, default for males if anal level is 1]
	else if player is male and (a random chance of 1 in 2 succeeds or anallevel is 1):
		say "     Doctor Moffatt walks around you, and snaps her fingers. 'Turn'. You grit your teeth, this time trying not to move. 'Turn, my sweet toy,' she says, and before you realize it, you are on your back, exposing your erect cock for her, one of your hands relentlessly pumping it. 'Such a good boy. I did not even have to order you to prepare yourself this time.' Taken aback and confused as to when you had started to masturbate yourself, you fail to react when the skunk psychiatrist softly guides your fingers off your dick, and straddles your pelvis. Heavily paralyzeed, you can only stare in distress at the doctor, as she wastes no time slamming her ass down on your shaft. She accommodates your [cock size desc of player] easily. 'Hnnn. Yesss,' she purrs, massaging her belly before stroking her cock, and rocking on your own shaft. Slap, slap, slap. Each time she bottoms out, a small electric shock runs through your spine. Eventually, as you are about to cum, the transe begins to wear off, and your limbs are able to move on their own again. But then, a flow of sensorial pleasure rushes your brain and has you cum hard.";
		say "     You let out a long, loud bellow as your fists clench the leathery furniture, and your empty your balls into the good doctor in a succession of long, thick ropes of sperm. Doctor Moffatt cums not long after, and while she squeezes your over-sensitive cock with her anal muscles, she faps her cock with fast, powerful strokes until it sprays fresh cum all over your [bodyname of player] body, up to your face and into your open mouth. You hear her raspy pants behind you as she slides off you slowly, letting her deflating cock flop along your stomach.";
	[Ass]
	else:
		say "     Doctor Moffatt walks around you, and positions herself behind you. 'Such a good girl. I did not even have to order you to prepare yourself this time.' To your greatest shame, you realize that you had started to finger yourself, at some point. She slowly guides your right hand fingers out of your ass, and put your hand back on the sofa. Your entire body shudder, trying to break out from the paralysis, but you are only able to look behind you, as you watch Moffatt line up her cock with your main orifice. The thick shaft pushes inside you, stretching you nice and good until she bottoms out. 'Hnnn. Yesss.' You let a long moan escape your lips as well. Moffatt begins to pump her hips against your butt. Slap, slap, slap. Each time her balls slam into your groin, a small electric shock runs through your spine. Eventually, as you are about to cum, the transe begins to wear off, and your limbs are able to move on their own again. But then, a flow of sensorial pleasure rushes your brain and has you cum hard.";
		say "     You let out a long, loud bellow as your ass squeezes the skunk's shaft like a vice[if player is male]. Your male bits let out ropes of cum on the leathery furniture, that the doctor had fortunately protected with a towel beforehand[end if]. Doctor Moffatt cums not long after, and your tired brain feels her torrent of cum rush down your innards. You hear her raspy pants behind you as she slides out of you slowly, letting her deflating cock flop along your thigh, a trail of cum painting your leg white.";
	say "     Panting heavily, the doctor sits down on her desk chair, and fetches some tissues to wipe herself. You head towards her, fists clenched, but before you have a chance to say or do anything, she interrupts you. 'This was a blast. Still, you got a little more training to go, my sweet toy. Now, out.'";


Section 4 - Active Effects

an everyturn rule:
	if ( HP of Doctor Moffatt >= 3 and HP of Doctor Moffatt <= 7 ) and lust of Doctor Moffatt is not 1:
		if skunkbeaststatus is 1 or jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100):
			say "     Something about your recent changes has affected you. Thoughts of the curvy skunk doctor have stopped filling your mind.";
			now HP of Doctor Moffatt is 97;
		else if lastfuck of Doctor Moffatt - turns < 12:
			increase libido of player by ( HP of Doctor Moffatt + lastfuck of Doctor Moffatt - turns ) / 3;
		else if lastfuck of Doctor Moffatt - turns is 12:
			say "     You feel a small twinge inside you, a growing longing to see Doctor Moffatt again as you start to miss her, lusting for the sight of her curvy body.";
			decrease morale of player by 1;
			increase libido of player by 8;
		else if lastfuck of Doctor Moffatt - turns < 32:
			decrease morale of player by ( lastfuck of Doctor Moffatt - turns ) / 5;
			if morale of player < 0, decrease humanity of player by a random number between 0 and 3;
			increase libido of player by a random number between 4 and 8;
			if a random chance of ( lastfuck of Doctor Moffatt - turns ) in 40 succeeds:
				say "     [one of]Your thoughts continuously stray back to the sexy skunk psychiatrist at the Hospital, making you long to visit her again for another session.[or]You feel a rush of arousal and start getting distracted as every round shape you see starts looking like a plump breast or big, sexy ass. Maybe it's time to go visit Dr. Moffatt again.[or]You feel an aching longing to have another session with the skunk doctor that gets to be increasingly distracting.[or]Your body becomes increasingly aroused by the variety of sexy creatures you see around you.[or]You feel yourself being drawn back to see the skunk doctor again, your body needing another dose and your mind filling with lust.[or]Your loins aches, longing for another dose of the skunk doctor's treatment.[at random]";
		else if lastfuck of Doctor Moffatt - turns >= 32:
			say "     You moan and stumble, leaning against a broken wall for support as a huge rush of arousal fills you[if player is herm]. You grab your cock and start pumping it while burying several fingers in your dripping pussy, working yourself to a wild and crashing orgasm that somehow leaves you feeling cleansed[else if player is male]. You grab your cock and start pumping it, working yourself to a wild and sticky orgasm that somehow leaves you feeling cleansed[else if player is female]. You bury several fingers into your dripping pussy, working yourself to a wild and crashing orgasm that somehow leaves you feeling cleansed[else]. You work your hands all over yourself, trying to find release for this sudden surge of arousal. With a painful twisting inside you, the lust finally breaks and you are left feeling cleansed[end if]. Your mind feels much clearer than it has in the last few days.";
			now lust of Doctor Moffatt is 1;
			now libido of player is libido of player / 2;
			if player is neuter, now HP of player is HP of player / 2;
			increase morale of player by 5;
			if morale of player < 0, now morale of player is morale of player / 2;
		if libido of player > 100, now libido of player is 100;
	else if HP of Doctor Moffatt is 8 or HP of Doctor Moffatt is 9:
		if skunkbeaststatus is 1 or jackalmantf > 0 or jackalboytf > 0 or nightmaretf > 0 or HellHoundlevel > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100):
			say "     Something about your recent changes has affected you. Thoughts of the curvy skunk doctor have stopped filling your mind.";
			now HP of Doctor Moffatt is 97;
		else if bodyname of player is "Hyperskunk" and player is not pure:
			say "     You moan softly as shivers of delight run through your mephit body. Your paws move up to your [if breast size of player > 0]breasts and tease your nipples[else]nipples[end if]pinching and tweaking them. Soon they respond by leaking milk that dribbles down your [one of][bodydesc of player][or][bodytype of player][purely at random] body. You are left panting with pleasure as you lick the traces of milk from your dainty fingers even as you feel the milk starting to take effect.";
			increase libido of player by 10;
			if libido of player > 100, now libido of player is 100;
			hyperskunkdose;


to hyperskunkdose:
	[puts Hyperskunk as lead monster in case of infection/impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hyperskunk":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Hyperskunk";
	now non-infectious entry is true;

an everyturn rule:
	if level of Doctor Moffatt > 0:
		decrease lust of Doctor Moffatt by 1;
		[with 8 days remaining, the bonus on stats goes down, the player is compelled to return consult Dr Moffatt]
		if lust of Doctor Moffatt is 8:
			if dexterity of Doctor Moffatt is 1:
				decrease strength of player by level of Doctor Moffatt;
				if strength of player < 1, now strength of player is 1;
				say "     A big wave of fatigue washes over your body. Did the effect of Doctor Moffat's hypnosis end?";
				say "[bold type]The bonus in strength brought by your hypnosis session has ended.[roman type]";
			else if dexterity of Doctor Moffatt is 2:
				decrease dexterity of player by level of Doctor Moffatt;
				if dexterity of player < 1, now dexterity of player is 1;
				say "     You feel as if your hands suddenly went numb. Did the effect of Doctor Moffat's hypnosis end?";
				say "[bold type]The bonus in dexterity brought by your hypnosis session has ended.[roman type]";
			else if dexterity of Doctor Moffatt is 3:
				decrease stamina of player by level of Doctor Moffatt;
				if stamina of player < 1, now stamina of player is 1;
				say "     You start panting, and feel the need to take a break. Did the effect of Doctor Moffat's hypnosis end? ";
				say "[bold type]The bonus in stamina brought by your hypnosis session has ended.[roman type]";
			else if dexterity of Doctor Moffatt is 4:
				decrease perception of player by level of Doctor Moffatt;
				if perception of player < 1, now perception of player is 1;
				say "     Your vision becomes more blurry, and the world becomes more numb around you. Did the effect of Doctor Moffat's hypnosis end?";
				say "[bold type]The bonus in perception brought by your hypnosis session has ended.[roman type]";
			else if dexterity of Doctor Moffatt is 5:
				decrease charisma of player by level of Doctor Moffatt;
				if charisma of player < 1, now charisma of player is 1;
				say "     You begin to feel bad into your own body, and your posture becomes less assured. Did the effect of Doctor Moffat's hypnosis end?";
				say "[bold type]The bonus in charisma brought by your hypnosis session has ended.[roman type]";
			else if dexterity of Doctor Moffatt is 6:
				decrease intelligence of player by level of Doctor Moffatt;
				if intelligence of player < 1, now intelligence of player is 1;
				say "     Your head starts hurting, and you realize that you forgot what you were heading to. Did the effect of Doctor Moffat's hypnosis end?";
				say "[bold type]The bonus in intelligence brought by your hypnosis session has ended.[roman type]";
			now dexterity of Doctor Moffatt is 0;
			if level of Doctor Moffatt is:
			-- 1:
				say "[bold type]You should return to Doctor Moffatt, and undertake another hypnosis session.[roman type]";
			-- 2:
				say "[bold type]You immediately think about going back to Doctor Moffatt, for another hypnosis session.[roman type]";
			-- 3:
				say "[bold type]You need to go back to Moffatt. Now.[roman type]";
			-- 4:
				say "[bold type]Without a second thought, you head to the hospital, and check with the Mistress.[roman type]";
				move player to Psych Department;
			-- 5:
				say "[bold type]As if your mind blanked out, you find yourself in front of Mistress Moffat's office, a blissful smile on your face.[roman type]";
				move player to Psych Department;
		[Once the weaning period has passed, the hypnosis effect goes one step back]
		if lust of Doctor Moffatt is 0:
			decrease level of Doctor Moffatt by 1;
			now lust of Doctor Moffatt is 7;

Section 5 - Endings

[See the Hyperskunk file for endings related to Dr. Moffatt.]

Section 6 - Hypnosis sessions

instead of linkactioning Doctor Moffatt when XP of Doctor Moffatt is 2:
	say "Possible Actions: [link]talk[as]talk Doctor Moffatt[end link], [link]smell[as]smell Doctor Moffatt[end link], [link]fuck[as]fuck Doctor Moffatt[end link], [link]hypnosis[end link][line break]";

understand "hypnosis" as hypnoSession.

hypnoSession is an action applying to nothing.

Check hypnoSession:
	if dexterity of Doctor Moffatt is not 0, say "Sorry, but I don't think it would be good for your mental health to as many sessions in such a short time. Come back a little later, once you feel the effects of the previous session have faded." instead;

[Level of Doctor Moffatt indicates the level of hypnosis (from 0 to 5)]
[Lust of Doctor Moffatt indicates the weaning level]
[Dexterity of Doctor Moffatt indicates the type of stat bonus chosen
0 - Inactive
1 - Strength
2 - Dexterity
3 - Stamina
4 - Perception
5 - Charisma
6 - Intelligence]
carry out hypnoSession:
	say "     'Okay,' Doctor Moffatt says. [bold type]What aspect of your being to you want to work on, today?[roman type][line break]";
	say "     [link](1)[as]1[end link] - You want to feel stronger.";
	say "     [link](2)[as]2[end link] - You want to feel nimbler.";
	say "     [link](3)[as]3[end link] - You want to feel sturdier.";
	say "     [link](4)[as]4[end link] - You want to feel sharper.";
	say "     [link](5)[as]5[end link] - You want to feel prettier.";
	say "     [link](6)[as]6[end link] - You want to feel smarter.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 6:
		say "Choice? (1-6)>[run paragraph on]";
		get a number;
		if calcnumber >= 1 and calcnumber <= 6:
			break;
		else:
			say "Invalid choice. Choose from 1 to 6 the stat you want to develop through hypnosis: [link]1[as]1 (strength)[end link], [link]2[as]2 (dexterity)[end link], [link]3[as]3 (stamina)[end link], [link]4[as]4 (perception)[end link], [link]5[as]5 (charisma)[end link] or [link]6[as]6 (intelligence)[end link].";
	if calcnumber >= 1 or calcnumber <= 6:
		LineBreak;
	if calcnumber is:
		-- 1: say "[hypnoScene1]";
		-- 2: say "[hypnoScene2]";
		-- 3: say "[hypnoScene3]";
		-- 4: say "[hypnoScene4]";
		-- 5: say "[hypnoScene5]";
		-- 6: say "[hypnoScene6]";
	now lust of Doctor Moffatt is 16;
	if level of Doctor Moffatt < 5:
		increase level of Doctor Moffatt by 1;
		if level of Doctor Moffatt is:
			-- 1: say "[hypnoCatch1]";
			-- 2: say "[hypnoCatch2]";
			-- 3: say "[hypnoCatch3]";
			-- 4: say "[hypnoCatch4]";
			-- 5: say "[hypnoCatch5]";
	if dexterity of Doctor Moffatt is:
		-- 1:
			say "[bold type]Your strength raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase strength of player by level of Doctor Moffatt;
		-- 2:
			say "[bold type]Your dexterity raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase dexterity of player by level of Doctor Moffatt;
		-- 3:
			say "[bold type]Your stamina raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase stamina of player by level of Doctor Moffatt;
		-- 4:
			say "[bold type]Your perception raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase perception of player by level of Doctor Moffatt;
		-- 5:
			say "[bold type]Your charisma raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase charisma of player by level of Doctor Moffatt;
		-- 6:
			say "[bold type]Your intelligence raises momentarily by [level of Doctor Moffatt]![roman type]";
			increase intelligence of player by level of Doctor Moffatt;

to say hypnoScene1: [Raising strength]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	say "     'You are in a dark, dangerous forest. Something has been following you ever since you walked in. Something big, dangerous. You feel oppressed. Then, all of sudden, here it is. Big, bad, nasty. Do you see it?' Your mind pictures the dark beast, lunging towards you. 'You fight. You fight. You punch, you kick, you struggle.' Lost in your dream, your body begins to shuffle by itself on the chair, moving your arms and legs in an imaginary display of martial arts. 'Yes. You're doing great. It is larger than you, but it is no match for you. You are strong. You are stronger. The beast whines in pain. It submits, crawling on the ground in front of you. You feel satisfied. Proud.'";
	say "     You cannot help but break a smile as you picture your enemy, prowled at your feet, asking for mercy. 'Then, the beast turns around you. It raises its tail. You can see that [']it['] is a [']he[']. He wags his tail, as he offers his body to his new master.'";
	now dexterity of Doctor Moffatt is 1;


to say hypnoScene2: [Raising dexterity]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	say "     'You are sailing on the sea, in your little boat. You are having a good time. Suddenly, there is a large ship approaching from starboard. They raise a flag. Pirates! A small crew begins to board your beloved ship, swords in hand. You defend yourself fiercely.' Enthralled by the hypnosis, your body begins to wiggle in the chair, mimicking your actions in your story. 'They are no match for you. Their swords cut thin air as you roll and summersault your way through the pirates. Eventually, you reach the captain and, in a dexterous swipe, cut her pants open. The pirates, out of respect, surrender to you. You feel strong, proud.'";
	say "     You cannot help but break a smile as you picture the pirates surrendering to you. 'Then, the captain approaches. It seems that you impressed her. She proposes to join her in her cabin for... Parleys.'";
	now dexterity of Doctor Moffatt is 2;

to say hypnoScene3: [Raising stamina]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	if player is male:
		say "     'You hear an enormous crowd cheer and applause around you. You are on a running track. This is the Summer Olympics, the final of the 800m. You look to your left, then to your right, gauging your competition. You see this man next to you. His body is muscular, built for running fast, and for a long time. But you smile, because you know, deep inside, that he is no match for you.' Your face breaks into a smile in the real world as well. 'The race starts. You run, and run. Everyone but this man is far behind you, turning the race into a duel. He is as fast as you, so the result will be decided by your stamina. 500 meters, 600, 700; you arrive at the last stretch. You feel the burn on your muscles as you push for the final sprint. Your rival is audibly panting, more strongly with each passing meter. Suddenly, in the final ten meters, he abruptly falls behind. You won, with at least half a second.'";
		say "     'As you exit the stadium', right after receiving your medal, you head straight for the showers. The man is there. He pats you on the back, congratulating you on your victory, on your extraordinary endurance. Then, getting closer to you, he whispers that he is curious as to how good is your stamina for... Other things.'";
	else:
		say "     'You hear an enormous crowd cheer and applause around you. You are on a running track. This is the Summer Olympics, the final of the 800m. You look to your left, then to your right, gauging your competition. You see this large woman next to you. Her body is muscular, built for running fast, and for a long time. But you smile, because you know, deep inside, that she is no match for you.' Your face breaks into a smile in the real world as well. 'The race starts. You run, and run. Everyone but this woman is far behind you, turning the race into a duel. She is as fast as you, so the result will be decided by your stamina. 500 meters, 600, 700; you arrive at the last stretch. You feel the burn on your muscles as you push for the final sprint. Your rival is audibly panting, more strongly with each passing meter. Suddenly, in the final ten meters, she abruptly falls behind. You won, with at least half a second.'";
		say "     'As you exit the stadium', right after receiving your medal, you head straight for the showers. The woman is there. He pats you on the back, congratulating you on your victory, on your extraordinary endurance. Then, getting closer to you, he whispers that he is curious as to how good is your stamina for... Other things.'";
	now dexterity of Doctor Moffatt is 3;

to say hypnoScene4: [Raising perception]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	say "     'The police sirens are blaring. You and your crew have just completed the heist of the century, and now it is your job to drive them to safety. The race car swallows the road, and the surrounding traffic is a blur as you slalom past it. Car on the left, then car on the right. Turn. Traffic light, watch out. Eventually, you reach the entrance of a small side alley. There is barely the space for the car, you cannot miss, and with the police on your tail you cannot slow down. You trust your eyes and delicately align your vehicle. The alley gets closer, and closer. Then, with the terrible noise of metal scraping against the brick wall, your car goes through. Everyone cheers in the car, as the car that was chasing you crashes in the waste bins by the street corner.'";
	say "     'A couple hours later, you are back at the hideout. While the rest of the team starts counting the money, you isolate yourself with one of your accomplices. The gorgeous woman unzips her catsuit, and lets her jet black air flow freely out of the leather top. 'That was some impressive driving,' she says, making you proud of yourself. She leans closer to you and whispers to your ear. 'You earned your share well enough. How about I give you a bonus?'";
	now dexterity of Doctor Moffatt is 4;

to say hypnoScene5: [Raising charisma]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	say "     This is the homecoming party of your school. You are here, wearing your nicest clothes, with one goal in mind: asking out the prettiest, most popular girl. There she is, in her beautiful dress. It is now or never. Anybody would be anxious, would self-doubt. But not you. A charming smile on your face, you invite the girl for a dance. She agrees heartily. Everyone makes space on the dancefloor for the two of you, and you start dancing. One, two, three, four; one, two, three, four. Your pair swirls around the ballroom as the songs play, one after the other.";
	say "     'Minutes, then hours pass in a flash. Nobody is able to resist your charm. The girl of your dream is the first among them. [']How I wish this night would never end,['] she tells you. Then, she slowly leans her mouth to your ear. [']I know a quiet place, one where we could do another kind of dance. Follow me?...[']'";
	now dexterity of Doctor Moffatt is 5;

to say hypnoScene6: [Raising intelligence]
	say "     Dr Moffatt has you lying down on the couch. She asks you to lie down and gives you some instructions. 'Now, it is important that, during the session, you focus on my words, but most importantly, you must relax. Don't try to force things, or else it will not work. Put these on.' The doctor gives you a pair of headphones. A relaxing white noise begins to fill your head. 'Breathe slowly. Empty your mind. Let the noise help you,' the skunk asks. After several minutes of relaxation, you hear the doctor again.";
	say "     'You are in a small, cozy living room, sitting on a chair in front of a chessboard. In front of you is one of the best chess players in the world. The situation is tense. This is the final game, and you are at a tie. You want to win. You [italic type]have[roman type] to win. You focus intensely, then play a move. Then another, then another. As you play, you begin to feel different. You start to see patterns in your opponent's moves, and you are able to plan several moves in advance. You take less and less time to take your turns, without visibly struggling. You feel confident, smart. Eventually, you see it. The last move, the key to victory. Checkmate.' Unconsciously, you repeat the last word.";
	say "     'You won, fair and square. The other player looks at you, surprised and humbled. You shake hands with him, when you feel him keeping your hand in his. [']My brilliant friend, how about we take a last drink, in front of the fireplace?['] You see in his eyes that he has something else in mind, and smile in turn.'";
	now dexterity of Doctor Moffatt is 6;


to say hypnoCatch1:
	say "     [one of]As you mumble, taken by the doctor's racy suggestions, an idea seems to flash into the skunk's mind. She starts talking again. 'As you have your way, you cannot help but think about good doctor Moffatt. It is thanks to her that you are where you are now. Good, beautiful Doctor Moffatt.' You groan as the psychiatrist repeats the same idea several times to your ears. Eventually, she snaps her fingers to your ear, bringing you back to reality[or]Doctor Moffatt takes the opportunity to enforce some positive suggestions about her in your mind[stopping].";
	say "     'How do you feel?' she asks. You sense the newfound strength inside your body, and reply that words cannot help you to express how thankful you are to the good doctor. The skunk grins. 'Good. Come back soon, then. We will have another session.'";

to say hypnoCatch2:
	say "     [one of]As you mumble, taken by the doctor's racy suggestions, the skunk grins, and resumes her other training. 'Despite the situation, you cannot help but think back to the good Doctor Moffatt. Pretty, sexy Moffatt, with her fluffy fur and her generous chest. Perverse imagery involving you and her feel your brain...' You groan as the psychiatrist repeats the same idea several times to your ears. Eventually, she snaps her fingers to your ear, bringing you back to reality[or]Doctor Moffatt takes the opportunity to enforce some lustful suggestions about her in your mind[stopping].";
	say "     'How do you feel?' she asks. You sense the newfound strength inside your body, and look back at her, feeling strangely flustered as you gaze at her beautiful curves. The skunk grins. 'Good. Come back soon, then. We will have another session.'";

to say hypnoCatch3:
	say "     [one of]As you mumble, taken by the doctor's racy suggestions, the skunk grins, and resumes her other training. 'You cannot help but feel grateful for the doctor Moffatt. That sweet, voluptuous Moffatt. Your heart skips a beat as you imagine her and you, fondling and caressing, her thick cock pounding you again and again as you howl in pleasure.' You groan as the psychiatrist repeats the same idea several times to your ears. Eventually, she snaps her fingers to your ear, bringing you back to reality[or]Doctor Moffatt takes the opportunity to enforce make you unable not to think about her in sexual ways.[stopping].";
	say "     'How do you feel?' she asks. You sense the newfound strength inside your body, and look back at her. You barely prevent yourself from jumping on her on the spot, but [if player is male]your raging boner[else]your wet crotch[end if] betrays your intentions. The skunk grins. 'Good. Come back soon, then. We will have another session.'";

to say hypnoCatch4:
	say "     [one of]As you mumble, taken by the doctor's racy suggestions, the skunk grins, and resumes her other training. 'You cannot help but feel that you owe everything to doctor Moffatt. To your [italic type]mistress[roman type]Moffatt. When she calls you [']my sweet toy['], you feel obliged to help her in every way. Even now, your body starts to freeze as you hear the wind whisper these words: [']my sweet toy['].' You groan as the psychiatrist repeats the same idea several times to your ears, and ensures you are conditioned to think of her as your mistress from now on. Eventually, she snaps her fingers to your ear, bringing you back to reality[or]Doctor Moffatt takes the opportunity to reinforce a keyword to have you obey her commands.[stopping].";
	say "     'How do you feel, my sweet toy?' she asks. 'Good,' you reply instantly, surprising even yourself. The skunk grins and walks to you, giving your cheek a small kiss. 'Good. Come back soon, then. We will have another session.'";

to say hypnoCatch5:
	say "     [one of]As you mumble, taken by the doctor's racy suggestions, the skunk grins, and resumes her other training. 'You feel a presence behind you. You look at her, eyes filled with admiration. Doctor Moffatt. Mistress Moffatt to you, the one you owe everything too, to whom you are but a toy, fit to obey every single command. You smile as she calls you: [']my sweet toy[']. You get on your knees and walk to her, ready to obey every single of her commands.' You groan as the psychiatrist repeats the same idea several times to your ears. Eventually, she snaps her fingers to your ear, bringing you back to reality[or]Doctor Moffatt takes the opportunity to reinforce her dominance over you.[stopping].";
	say "     'How do you feel, my sweet toy?' she asks. 'Good, mistress,' you reply instantly, surprising even yourself. The skunk grins and walks to you, giving your cheek a small kiss. 'Good. Come back soon, then. We will have another session.'";

DrMoffatt ends here.
