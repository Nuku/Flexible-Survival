Version 1 of DrUtah by Stripes begins here.
[Version 1.2 - Fixed pregnancy mechanic w/female Dr. Utah]
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
		if hp of Doctor Utah is even:
			if daytimer is day:
				say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night.  Her scales are green and black and her claws and teeth are less prominent during daylight hours.  She has a put on a woman's blazer and pants to keep the illusion of still being human inside to fool others, but you know better.  Your own feral instincts sense her wild nature as a wereraptor like yourself.";
			otherwise:
				say "     Dr. Utah is in her full wereraptor form, a cross between human and saurian that has her bend forwards and her arms folded up against her chest when not in use.  She seems a little larger and more powerful than the other wereraptors you've seen running around.  She's discarded her clothes and struts around nude, giving you ample opportunity to look over her sexy nocturnal form.  With her raptor head, green and black scales and sharp talons, she's an impressive (and attractive) beast that gets your own feral urges excited.";
		otherwise:		[egg-laden]
			if daytimer is day:
				say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night.  Her scales are green and black and her claws and teeth are less prominent during daylight hours[if lust of Doctor Utah > 12].  She's become quite heavy with eggs and so she's going around in a loose-fitting dress right now[otherwise].  She has a put on a woman's blazer and pants to keep the illusion of still being human inside to fool others, but you know better.  Your own feral instincts sense her wild nature as a wereraptor like yourself[end if][if lust of Doctor Utah > 12].  The sight of her egg-laden belly excites your feral instincts greatly, pleasing your wereraptor nature to see her bred with your offspring[otherwise if lust of Doctor Utah > 0].  Her belly's become a little rounded, showing the early signs of pregnancy, a sight which pleases you greatly[end if].";
			otherwise:
				say "     Dr. Utah is in her full wereraptor form, a cross between human and saurian that has her bend forwards and her arms folded up against her chest when not in use.  She seems a little larger and more powerful than the other wereraptors you've seen running around.  She's discarded her clothes and struts around nude, giving you ample opportunity to look over her sexy nocturnal form.  With her raptor head, green and black scales and sharp talons, she's an impressive (and attractive) beast that gets your own feral urges excited[if lust of Doctor Utah > 12].  Her belly has become quite rounded and heavy with eggs, a sight that pleases you greatly[otherwise if lust of Doctor Utah > 0].  Her belly has become a little rounded, showing the early signs of pregnancy, a sight that pleases you greatly[end if].";
	otherwise:
		if daytimer is day:
			say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night.  His scales are blue and green and his claws and teeth are less prominent during daylight hours.  He has a put on a blazer and pants to keep the illusion of still being human inside to fool others, but you know better.  Your own feral instincts sense his wild nature as a wereraptor like yourself.";
		otherwise:
			say "     Dr. Utah is in his full wereraptor form, a cross between human and saurian that has him bend forwards and his arms folded up against his chest when not in use.  He seems a little larger and more powerful than the other wereraptors you've seen running around.  He's discarded his clothes and struts around nude, giving you ample opportunity to look over his sexy nocturnal form.  With his raptor head, blue and green scales and sharp talons, he's an impressive (and attractive) beast that gets your own feral urges excited.";


Instead of conversing the Doctor Utah:
	if nightmaretf > 0 or HellHoundlevel > 0 or wrcursestatus is 100:
		say "     Dr. Utah sniffs and growls at you.  'You fool!  You wretch!  I can smell that... that... tainted essense within you.  You have given up the wonderful gift I have bestowed upon you.  Begone!' [if girl is not banned]she[otherwise]he[end if] snarls as he slashes at you, driving you from [if girl is not banned]his[otherwise]her[end if] office before slamming the door on you.  It seems you're no longer welcome here.";
		now wrcursestatus is 100;
		now Paleontology Office is unknown;
		move player to College Campus;
	otherwise if girl is not banned and a random chance of 1 in 3 succeeds:
		say "     [if hp of Doctor Utah is 0 and cocks of player > 0]'Maybe you've seen a sexy, strong wereraptor out there who might want to mount a sexy female and breed her,' she says coyly while running a taloned paw across your hip.[otherwise if hp of Doctor Utah is 0]'I'm looking for a sexy, strong wereraptor to mount and breed a sexy female.  Could you keep your eyes open for a way to satisfy that need?' she says coyly while running a taloned paw down your chest.[otherwise if hp of Doctor Utah is 1][one of]'Mmm... it feels so good to have a few eggs growing in me,' she says with a soft moan of pleasure as she runs her taloned hands over herself.[or]'I never had the time for children before this.  From the way this feels, I'm going to enjoy making up for that in spades now,' she moans as she fingers herself lightly.[or]'Feeling those growing eggs shifting around inside me feels so nice,' she hisses softly.[or]'When these eggs inside me finally hatch, there'll be more strong wereraptors around like us to spread our gifts.'[at random][otherwise if hp of Doctor Utah is even][one of]'Mmm... I'm looking forward to having another clutch of eggs inside me soon,' she says as she runs her taloned hands over her flat tummy.[or]'I've put my eggs somewhere hidden.  They'll be warm and safe until they hatch and the next generation of wereraptors can spread out from here.'[or]'Laying my eggs felt so good that I'm looking forward to doing it again soon,' she says with a paw gripping your hip.[at random][otherwise][one of]'Mmm... it feels so good to have another clutch of eggs growing in me,' she says with a soft moan of pleasure as she runs her taloned hands over herself..[or]'I never had the time for children before this.  From the way this all feels, I'm definitely going to try making up for that now,' she moans as she fingers herself lightly.[or]'Feeling those growing eggs shifting around inside me feels so nice,' she hisses softly.[or]'When my clutches finally hatch, there'll be more strong wereraptors around like us to spread our gifts.'[or]'I've put my eggs somewhere hidden.  They'll be warm and safe until they hatch and the next generation of wereraptors can spread out from here.'[or]'Laying my eggs felt so good that I'm looking forward to doing it again soon,' she says with a paw between her legs to finger herself lightly at the memories.[at random][end if]";
	otherwise if daytimer is day:
		say "     [one of]'I have been adding a few more converts to our numbers during my hunts.'[or]'I look forward to the night.  While this form is much better than my human one, I much prefer my true form.'[or]'A few of those I've [']cursed['] seem about ready to accept their new nature.  When the time is right, I shall bring them to the Museum and complete the rite.'[or]'It is best we grow are numbers slowly for now and prepare for our eventual [']rescue['].[or]'I long for the night so that I may sate my hungers.'[or]'It will be important to learn to better control our transformation and hungers.  When the rescue comes, it would be best to disguise our true nature to avoid unwanted scrutiny.'[at random]";
	otherwise:
		say "     [one of]'It is... refreshing... to be in my true form.'[or]'I think I shall head out soon and find some... meat.'[or]'Perhaps I'll head out shortly to enjoy one of the new converts out there.'[or]Dr. Utah gives a hiss of lust and flicks [if girl is banned]his[otherwise]her[end if] claws while watching someone running through the courtyard behind the building.[or]'Our numbers grow slowly, but steadily.'[or]'I think I shall stalk a new [if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] to satisfy my desires.  They may even make a suitable convert.'[or]'We shall prevail thanks to the power of our gifts.  While the others can breed and transform faster, the wereraptors will always remain so.  Over time, the mammals shall join our numbers or become our prey.'[at random]";


instead of fucking the Doctor Utah:
	if nightmaretf > 0 or HellHoundlevel > 0 or wrcursestatus is 100:
		say "     Dr. Utah sniffs and growls at you.  'You fool!  You wretch!  I can smell that... that... tainted essense within you.  You have given up the wonderful gift I have bestowed upon you.  Begone!' [if girl is not banned]she[otherwise]he[end if] snarls as he slashes at you, driving you from [if girl is not banned]his[otherwise]her[end if] office before slamming the door on you.  It seems you're no longer welcome here.";
		now wrcursestatus is 100;
		now Paleontology Office is unknown;
		move player to College Campus;
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to satisfy your lusts with the wereraptor.  You will need to seek a gender of your own first if you hope to capture the lustful doctor's attention.";
	otherwise if lastfuck of Doctor Utah - turns < 4 or daytimer is day:
		say "     Dr. Utah looks out over the campus and scritches [if girl is banned]his[otherwise]her[end if] chin.  For the moment at least, it seems [if girl is banned]he[otherwise]she[end if] is more interested in seeking [if girl is banned]his[otherwise]her[end if] pleasures among those out there.  Perhaps [if girl is banned]he[otherwise]she[end if] will be more amenable [if daytimer is day]tonight[otherwise]tomorrow night[end if]";
	otherwise if girl is banned:
		say "     Dr. Utah looks out over the campus and scritches [if girl is banned]his[otherwise]her[end if] chin.  For the moment at least, it seems [if girl is banned]he[otherwise]she[end if] is more interested in seeking [if girl is banned]his[otherwise]her[end if] pleasures among those out there.";
		say "(***Sex w/male Dr. Utah to be added later.)[line break]";
	otherwise:
		say "     The other wereraptor grins at your offer and slides her tongue along her muzzle before leaning in to nip at your neck.  She runs her taloned hands over your [bodydesc of player] body";
		if bodyname of player is not "Wereraptor" or the player is not pure:
			say " and hisses in disappointment.  It seems your body has not had an opportunity to revert to its proper, saurian form.  It looks like we'll need to help it along.  She presses you against the wall and kisses you while rubbing her palm between her legs, getting it soaked in her hot juices.  She then starts rubbing them over your body while nibbling along your neck and should.  She smears her feminine juices anywhere you're not a sexy wereraptor.";
			say "     As her juices seep into your skin, you can feel the rush of excitement as you transform back";
			wrcurserestore;
			say "     Now fully restored to your saurian glory, Dr. Utah rubs herself up against you";
		say " and growls lustfully.  Her taloned hands grip your rear, pressing their pointed claws against your scales.  Her tail swishes and twitches upwards with excitement, knocking a few things aside in the now cramped office.";
		if cocks of player > 0:
			if hp of Doctor Utah is even:
				say "     You can smell the female's heated excitement as she gives a hiss of need and turns around.  Raising her tail and spreading her legs, she offers her juicy cunt to you.  You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent.  The taste is wild and exciting, much like the wereraptor herself and it sends your lust to greater heights.  Feeling your feral needs rising, you pounce atop her, grabbing her by the shoulders and driving your [cock size desc of player] [cock of player] into her cunt with a triumphant roar.";
				say "     She leans forward further, her long tail and spread legs helping her to maintain balance.  This position lets you drive into her hard and deep, fucking her like the wild beasts you both are.  Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does.  Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
				say "     When your climax comes, it is wild and feral as well.  You bite down onto your lover's neck and dig your claws into her, making her growl and clamp down around you.  Her cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast.  She cums hard, her pussy quivering and milking at your shaft in an effort to pump every shot of your saurian seed it can get.  Between this and thoughts of breeding her (and many others) full of wereraptor eggs, you can't help but drain your balls into her[if cock width of player > 40], leaving her full and bloated as if already ladden heavily with your eggs[otherwise if cock width of player > 20], leaving a bulge in her belly as if there's already an egg in there[end if].  After you dismount, you take a moment to enjoy the sight of her quivering pussy leaking you cum down her thighs.";
				now lust of Doctor Utah is 1;
				increase hp of Doctor Utah by 1;
			otherwise if a random chance of 1 in 3 succeeds:
				say "     You can smell the pregnant female's excitement as she gives a hiss of need and turns around.  Raising her tail and spreading her legs, she offers her juicy cunt to you.  You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent.  Her fecund taste is very exciting and it sends your lust to greater heights.  Feeling your feral needs rising, you pounce atop her, grabbing her by the shoulders and driving your [cock size desc of player] [cock of player] into her cunt with a triumphant roar, intent on mounting and filling her already well-bred body.";
				say "     She leans forward further, her long tail and spread legs helping her to maintain balance[if lust of Doctor Utah > 12] despite her gravid state[end if].  This position lets you drive into her hard and deep, fucking her like the wild beasts you both are.  Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does.  Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
				say "     When your climax comes, it is wild and feral as well.  You bite down onto your lover's neck and dig your claws into her, making her growl and clamp down around you.  Her cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast.  She cums hard, her pussy quivering and milking at your shaft in an effort to pump every shot of your saurian seed it can get.  Between this and thoughts of the growing wereraptor eggs already inside her, you can't help but drain your balls into her.  Your sperm flows into her womb and bathes her eggs in it, helping them to grow stronger[if cock width of player > 40 and lust of Doctor Utah > 12].  This leaves her so full and bloated that she can hardly move[otherwise if cock width of player > 40 or (cock width of player > 20 and lust of Doctor Utah > 12)].  This leaves her full and bloated with a combination of eggs and cum[otherwise if cock width of player > 20].  This makes her tummy bulge out a little further[end if].  After you dismount, you take a moment to enjoy the sight of her quivering pussy leaking you cum down her thighs.";
				if cock width of player > 40, increase lust of Doctor Utah by 1;
				if a random number between 1 and 100 < cock width of player, increase lust of Doctor Utah by 1;
			otherwise:
				say "     You can smell the pregnant female's excitement as she gives a hiss of need and turns around.  Raising her tail and spreading her legs, she offers her juicy cunt to you.  You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent.  Her fecund taste is very exciting and it sends your lust to greater heights.  Feeling your feral needs rising, you plunge your tongue into her twat and lap up her juices.";
				say "     You grab her ass with your taloned hands and knead her bottom while your tongue delves into her juicy cunt[if anallevel is 3], occasionally venturing up to lick her asshole as well[end if].  You dive your long tongue deep inside, sliding along her inner walls and teasing it against her cervix, knowing the clutch you sired is waiting behind it.  After you've pushed her to a quick orgasm, she turns around and buries her muzzle between your thighs, licking and sucking at your pulsing cock.  She grips your hip with one paw and works a few fingers into her cunt with the other.  She works your [cock size desc of player] erection until you finally cum, pumping your hot seed down her throat as she moans in pleasure.  She kneads at your balls, coaxing as much as she can get before releasing you, wanting your hot seed to feed her growing eggs[if cock width of player > 40 and lust of Doctor Utah > 12].  This leaves her so full and bloated that she can hardly move[otherwise if cock width of player > 40 or (cock width of player > 20 and lust of Doctor Utah > 12)].  This leaves her full and bloated with a combination of eggs and cum[otherwise if cock width of player > 20].  This makes her tummy bulge out a little further[end if].";
		otherwise:
			say "     You can smell the female's heated excitement as she gives a hiss of need and turns around.  Raising her tail and spreading her legs, she offers her juicy cunt to you.  You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent.  The taste is wild and exciting, much like the wereraptor herself and it sends your lust to greater heights.  Feeling your feral needs rising, you plunge your tongue into her twat and lap up her juices.";
			say "     You grab her ass with your taloned hands and knead her bottom while your tongue delves into her juicy cunt[if anallevel is 3], occasionally venturing up to lick her asshole as well[end if].  After you've pushed her to a quick orgasm, she turns around and does the same to you.  The feel of her saurian head pressed under your tail and her long tongue sliding around inside your cunt gets you to cum as well.  You switch with her like this several times until you've both had several orgasms that leave you feeling momentarily sated.";


an everyturn rule:
	if lust of Doctor Utah > 0:
		increase lust of Doctor Utah by 1;
		if lust of Doctor Utah >= 24 and skipturnblocker is 0:
			say "By some unknown, feral instinct, you know that more of your offspring have entered this world.  Your wereraptor nature urges you to return to Dr. Utah... perhaps to breed her with more eggs.";
			increase libido of Doctor Utah by a random number between 2 and 4;
			now lust of Doctor Utah is 0;
			increase hp of Doctor Utah by 1;
			if hp of Doctor Utah > 20, now hp of Doctor Utah is 18;


[	hp of Doctor Utah		]
[ 0 = not yet bred		]
[ 1 = first preggers		]
[ 2 = first clutch		]
[ odd = preggers			]
[ even = not preggers		]
[ 20 = maximum			]

[	libido of Doctor Utah	]
[	= egg count			]

[	lust of Doctor Utah	]
[	= gestation			]
[ <= 12 = not showing much	]
[ > 12  = egg heavy		]
[ 24+   = ready to lay		]


Section 3 - Endings

[Endings to come later]


DrUtah ends here.