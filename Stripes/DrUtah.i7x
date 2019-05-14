Version 2 of DrUtah by Stripes begins here.
[Version 2 - Sex scenes w/male Dr. Utah]
[Version 2.1 - removal of banning content - Luneth]
"Adds a Wereraptor NPC named Dr. Utah to the Flexible Survival game"

[ HP of Doctor Utah                                                      ]
[ 0: not yet bred                                                        ]
[ 1: first preggers                                                      ]
[ 2: first clutch                                                        ]
[ odd: preggers                                                          ]
[ even: not preggers                                                     ]
[ 20: maximum                                                            ]

[ Libido of Doctor Utah                                                  ]
[ = egg count                                                            ]

[ lust of Doctor Utah                                                    ]
[ = gestation                                                            ]
[ <= 12 = not showing much                                               ]
[ > 12  = egg heavy                                                      ]
[ 24+   = ready to lay                                                   ]

[ UtahGender                                                             ]
[ 1: male                                                                ]
[ 2: female                                                              ]

UtahGender is a number that varies.

Section 1 - Paleontology Office

Table of GameRoomIDs (continued)
Object	Name
Paleontology Office	"Paleontology Office"

Paleontology Office is a room. It is fasttravel. It is private.
The description of Paleontology Office is "[paleodesc]".

the scent of Paleontology Office is "The office smells of old books and older bones, but also of the wereraptor occupying it.".

to say paleodesc:
	if UtahGender is 2:
		say "     Dr. Utah's office has been cleaned since you first saw it, but is still quite the mess. While most of the debris has been removed, the slashes at the wall and damage to the door and its frame remain. Several new books has been brought in, including a copy of the book Nermine had. Dr. Utah is [if daytimer is day][one of]pacing as she thinks[or]poring over some books[or]looking at some small fossils[or]surveying a map of the campus[or]lounging in her chair[at random][else][one of]prowling around the room[or]munching on some chunk of meat[or]clawing impatiently at her desk[or]gazing out the window and touching herself[or]pads around the room[at random][end if].";
	else:
		say "     Dr. Utah's office has been cleaned since you first saw it, but is still quite the mess. While most of the debris has been removed, the slashes at the wall and damage to the door and its frame remain. Several new books has been brought in, including a copy of the book Nermine had. Dr. Utah is [if daytimer is day][one of]pacing as he thinks[or]poring over some books[or]looking at some small fossils[or]surveying a map of the campus[or]lounging in his chair[at random][else][one of]prowling around the room[or]munching on some chunk of meat[or]clawing impatiently at his desk[or]gazing out the window and touching himself[or]pads around the room[at random][end if].";


Section 2 - Dr Utah the Wereraptor

Table of GameCharacterIDs (continued)
object	name
Doctor Utah	"Doctor Utah"

Doctor Utah is a person. Doctor Utah is in Paleontology Office.
The description of Doctor Utah is "[utahdesc]".
The conversation of Doctor Utah is { "Hiss!" }.
drutah_msg1 is a truth state that varies. drutah_msg1 is usually false.

the scent of Doctor Utah is "[if daytimer is day]Dr. Utah smells faintly of hidden lust and power, revealing his wereraptor nature to you[else]Dr. Utah smells of wereraptor lust and power. It is quite exciting[end if].".

to say utahdesc:
	if UtahGender is 2:
		if HP of Doctor Utah is even:
			if daytimer is day:
				say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night. Her scales are green and black and her claws and teeth are less prominent during daylight hours. She has a put on a woman's blazer and pants to keep the illusion of still being human inside to fool others, but you know better. Your own feral instincts sense her wild nature as a wereraptor like yourself.";
			else:
				say "     Dr. Utah is in her full wereraptor form, a cross between human and saurian that has her bend forwards and her arms folded up against her chest when not in use. She seems a little larger and more powerful than the other wereraptors you've seen running around. She's discarded her clothes and struts around nude, giving you ample opportunity to look over her sexy nocturnal form. With her raptor head, green and black scales and sharp talons, she's an impressive (and attractive) beast that gets your own feral urges excited.";
		else:		[egg-laden]
			if daytimer is day:
				say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night. Her scales are green and black and her claws and teeth are less prominent during daylight hours[if lust of Doctor Utah > 12]. She's become quite heavy with eggs and so she's going around in a loose-fitting dress right now[else]. She has a put on a woman's blazer and pants to keep the illusion of still being human inside to fool others, but you know better. Your own feral instincts sense her wild nature as a wereraptor like yourself[end if][if lust of Doctor Utah > 12]. The sight of her egg-laden belly excites your feral instincts greatly, pleasing your wereraptor nature to see her bred with your offspring[else if lust of Doctor Utah > 0]. Her belly's become a little rounded, showing the early signs of pregnancy, a sight which pleases you greatly[end if].";
			else:
				say "     Dr. Utah is in her full wereraptor form, a cross between human and saurian that has her bend forwards and her arms folded up against her chest when not in use. She seems a little larger and more powerful than the other wereraptors you've seen running around. She's discarded her clothes and struts around nude, giving you ample opportunity to look over her sexy nocturnal form. With her raptor head, green and black scales and sharp talons, she's an impressive (and attractive) beast that gets your own feral urges excited[if lust of Doctor Utah > 12]. Her belly has become quite rounded and heavy with eggs, a sight that pleases you greatly[else if lust of Doctor Utah > 0]. Her belly has become a little rounded, showing the early signs of pregnancy, a sight that pleases you greatly[end if].";
	else:
		if daytimer is day:
			say "     Dr. Utah looks much like you do during the day, taking on an appearance closer to a saurian human than the more feral beast form of the night. His scales are blue and green and his claws and teeth are less prominent during daylight hours. He has a put on a blazer and pants to keep the illusion of still being human inside to fool others, but you know better. Your own feral instincts sense his wild nature as a wereraptor like yourself.";
		else:
			say "     Dr. Utah is in his full wereraptor form, a cross between human and saurian that has him bend forwards and his arms folded up against his chest when not in use. He seems a little larger and more powerful than the other wereraptors you've seen running around. He's discarded his clothes and struts around nude, giving you ample opportunity to look over his sexy nocturnal form. With his raptor head, blue and green scales and sharp talons, he's an impressive (and attractive) beast that gets your own feral urges excited.";


Instead of conversing the Doctor Utah:
	if nightmaretf > 0 or HellHoundlevel > 0 or wrcursestatus is 100:
		say "     Dr. Utah sniffs and growls at you. 'You fool! You wretch! I can smell that... that... tainted essence within you. You have given up the wonderful gift I have bestowed upon you. Begone!' [if UtahGender is 1]he[else]she[end if] snarls as [if UtahGender is 1]he[else]she[end if] slashes at you, driving you from [if UtahGender is 1]his[else]her[end if] office before slamming the door on you. It seems you're no longer welcome here.";
		now wrcursestatus is 100;
		now Paleontology Office is unknown;
		move player to College Campus;
	else if UtahGender is 2 and a random chance of 1 in 3 succeeds:
		say "     [if HP of Doctor Utah is 0 and player is male]'Maybe you've seen a sexy, strong wereraptor out there who might want to mount a sexy female and breed her,' she says coyly while running a taloned paw across your hip.[else if HP of Doctor Utah is 0]'I'm looking for a sexy, strong wereraptor to mount and breed a sexy female. Could you keep your eyes open for a way to satisfy that need?' she says coyly while running a taloned paw down your chest.[else if HP of Doctor Utah is 1][one of]'Mmm... it feels so good to have a few eggs growing in me,' she says with a soft moan of pleasure as she runs her taloned hands over herself.[or]'I never had the time for children before this. From the way this feels, I'm going to enjoy making up for that in spades now,' she moans as she fingers herself lightly.[or]'Feeling those growing eggs shifting around inside me feels so nice,' she hisses softly.[or]'When these eggs inside me finally hatch, there'll be more strong wereraptors around like us to spread our gifts.'[at random][else if HP of Doctor Utah is even][one of]'Mmm... I'm looking forward to having another clutch of eggs inside me soon,' she says as she runs her taloned hands over her flat tummy.[or]'I've put my eggs somewhere hidden. They'll be warm and safe until they hatch and the next generation of wereraptors can spread out from here.'[or]'Laying my eggs felt so good that I'm looking forward to doing it again soon,' she says with a paw gripping your hip.[at random][else][one of]'Mmm... it feels so good to have another clutch of eggs growing in me,' she says with a soft moan of pleasure as she runs her taloned hands over herself..[or]'I never had the time for children before this. From the way this all feels, I'm definitely going to try making up for that now,' she moans as she fingers herself lightly.[or]'Feeling those growing eggs shifting around inside me feels so nice,' she hisses softly.[or]'When my clutches finally hatch, there'll be more strong wereraptors around like us to spread our gifts.'[or]'I've put my eggs somewhere hidden. They'll be warm and safe until they hatch and the next generation of wereraptors can spread out from here.'[or]'Laying my eggs felt so good that I'm looking forward to doing it again soon,' she says with a paw between her legs to finger herself lightly at the memories.[at random][end if]";
	else if UtahGender is 1 and player is not impreg_ok and drutah_msg1 is false:
		say "     'It is important that we prepare for our eventual [']rescue['] by building up a core group of strong wereraptors. While some of those converted may be suitable and should be ready for complete the rite, it would be better if the best of us could increase our numbers in a more... traditional manner,' he rumbles while brushing his body against yours, his stiff erection plainly visible. 'I can tell your [if Player is female]womb's[else]body's[end if] unsuitable to be bred, but there is another who may be able to assist you with that,' he adds, running a claw down your side in a sensual manner while nibbling at your neck. His touches get you quite turned on, making you more receptive to his offer to make you into a breeder.";
		if HP of doctor medea < 2:
			say "     'I have heard of another reptilian doctor off in the city, one with an interest in such matters. Seek out the [bold type]pediatrics[roman type] clinic where she works and see what can be done. Were you and I to breed, I'm sure our offspring would be fine examples of the new saurian elite.' He rumbles in your ear, licking across it as he caresses your ass and brushes his hard shaft against your hip. His offer excites you greatly, the possibility of breeding some powerful wereraptors like yourselves turning you on. You find your mind dwelling on it well after the conversation's done.";
		else:
			say "     'You mentioned another reptilian doctor off in the city, one with an interest in such matters. You should return to that [bold type]pediatrics[roman type] clinic where she works and see what can be done. Were you and I to breed, I'm sure our offspring would be fine examples of the new saurian elite.' He rumbles in your ear, licking across it as he caresses your ass and brushes his hard shaft against your hip. His offer excites you greatly, the possibility of breeding some powerful wereraptors like yourselves turning you on. You find your mind dwelling on it well after the conversation's done.";
		now drutah_msg1 is true;
	else if daytimer is day:
		say "     [one of]'I have been adding a few more converts to our numbers during my hunts.'[or]'I look forward to the night. While this form is much better than my human one, I much prefer my true form.'[or]'A few of those I've [']cursed['] seem about ready to accept their new nature. When the time is right, I shall bring them to the Museum and complete the rite.'[or]'It is best we grow are numbers slowly for now and prepare for our eventual [']rescue['].[or]'I long for the night so that I may sate my hungers.'[or]'It will be important to learn to better control our transformation and hungers. When the rescue comes, it would be best to disguise our true nature to avoid unwanted scrutiny.'[at random]";
	else:
		say "     [one of]'It is... refreshing... to be in my true form.'[or]'I think I shall head out soon and find some... meat.'[or]'Perhaps I'll head out shortly to enjoy one of the new converts out there.'[or]Dr. Utah gives a hiss of lust and flicks [if UtahGender is 1]his[else]her[end if] claws while watching someone running through the courtyard behind the building.[or]'Our numbers grow slowly, but steadily.'[or]'I think I shall stalk a new [if a random chance of 1 in 2 succeeds]female[else]male[end if] to satisfy my desires. They may even make a suitable convert.'[or]'We shall prevail thanks to the power of our gifts. While the others can breed and transform faster, the wereraptors will always remain so. Over time, the mammals shall join our numbers or become our prey.'[at random]";

the fuckscene of Doctor Utah is "[sexwithDrUtah]".

to say sexwithDrUtah:
	if nightmaretf > 0 or HellHoundlevel > 0 or wrcursestatus is 100:
		say "     Dr. Utah sniffs and growls at you. 'You fool! You wretch! I can smell that... that... tainted essence within you. You have given up the wonderful gift I have bestowed upon you. Begone!' [if UtahGender is 1]he[else]she[end if] snarls as he slashes at you, driving you from [if UtahGender is 1]his[else]her[end if] office before slamming the door on you. It seems you're no longer welcome here.";
		now wrcursestatus is 100;
		now Paleontology Office is unknown;
		move player to College Campus;
	else if Player is neuter:
		say "     You're ill-equipped to satisfy your lusts with the wereraptor. You will need to seek a gender of your own first if you hope to capture the lustful doctor's attention.";
	else if lastfuck of Doctor Utah - turns < 4 or daytimer is day:
		say "     Dr. Utah looks out over the campus and scritches [if UtahGender is 1]his[else]her[end if] chin. For the moment at least, it seems [if UtahGender is 1]he[else]she[end if] is more interested in seeking [if UtahGender is 1]his[else]her[end if] pleasures among those out there. Perhaps [if UtahGender is 1]he[else]she[end if] will be more amenable [if daytimer is day]tonight[else]tomorrow night[end if]";
	else if UtahGender is 1:
		say "[drutah_malesex]";
	else:
		say "[drutah_femalesex]";

to say drutah_femalesex:
	say "     The other wereraptor grins at your offer and slides her tongue along her muzzle before leaning in to nip at your neck. She runs her taloned hands over your [bodydesc of Player] body";
	if bodyname of Player is not "Wereraptor" or the player is not pure:
		say " and hisses in disappointment. 'It seems your body has not had an opportunity to revert to its proper, saurian form. It looks like we'll need to help it along.' She presses you against the wall and kisses you while rubbing her palm between her legs, getting it soaked in her hot juices. She then starts rubbing them over your body while nibbling along your neck and shoulder. She smears her feminine juices anywhere you're not a sexy wereraptor.";
		say "     As her juices seep into your skin, you can feel the rush of excitement as you transform back";
		wrcurserestore;
		say "     Now fully restored to your saurian glory, Dr. Utah rubs herself up against you";
	say " and growls lustfully. Her taloned hands grip your rear, pressing their pointed claws against your scales. Her tail swishes and twitches upwards with excitement, knocking a few things aside in the now cramped office.";
	if Player is male:
		if HP of Doctor Utah is even:
			say "     You can smell the female's heated excitement as she gives a hiss of need and turns around. Raising her tail and spreading her legs, she offers her juicy cunt to you. You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent. The taste is wild and exciting, much like the wereraptor herself and it sends your lust to greater heights. Feeling your feral needs rising, you pounce atop her, grabbing her by the shoulders and driving your [cock size desc of Player] [cock of Player] into her cunt with a triumphant roar.";
			say "     She leans forward further, her long tail and spread legs helping her to maintain balance. This position lets you drive into her hard and deep, fucking her like the wild beasts you both are. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When your climax comes, it is wild and feral as well. You bite down onto your lover's neck and dig your claws into her, making her growl and clamp down around you. Her cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. She cums hard, her pussy quivering and milking at your shaft in an effort to pump every shot of your saurian seed it can get. Between this and thoughts of breeding her (and many others) full of wereraptor eggs, you can't help but drain your balls into her[if Ball Size of Player > 6], leaving her full and bloated as if already ladden heavily with your eggs[else if Ball Size of Player > 5], leaving a bulge in her belly as if there's already an egg in there[end if]. After you dismount, you take a moment to enjoy the sight of her quivering pussy leaking you cum down her thighs.";
			now lust of Doctor Utah is 1;
			increase HP of Doctor Utah by 1;
		else if a random chance of 1 in 3 succeeds:
			say "     You can smell the pregnant female's excitement as she gives a hiss of need and turns around. Raising her tail and spreading her legs, she offers her juicy cunt to you. You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent. Her fecund taste is very exciting and it sends your lust to greater heights. Feeling your feral needs rising, you pounce atop her, grabbing her by the shoulders and driving your [cock size desc of Player] [cock of Player] into her cunt with a triumphant roar, intent on mounting and filling her already well-bred body.";
			say "     She leans forward further, her long tail and spread legs helping her to maintain balance[if lust of Doctor Utah > 12] despite her gravid state[end if]. This position lets you drive into her hard and deep, fucking her like the wild beasts you both are. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When your climax comes, it is wild and feral as well. You bite down onto your lover's neck and dig your claws into her, making her growl and clamp down around you. Her cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. She cums hard, her pussy quivering and milking at your shaft in an effort to pump every shot of your saurian seed it can get. Between this and thoughts of the growing wereraptor eggs already inside her, you can't help but drain your balls into her. Your sperm flows into her womb and bathes her eggs in it, helping them to grow stronger[if Ball Size of Player > 6 and lust of Doctor Utah > 12]. This leaves her so full and bloated that she can hardly move[else if Ball Size of Player > 6 or (Ball Size of Player > 5 and lust of Doctor Utah > 12)]. This leaves her full and bloated with a combination of eggs and cum[else if Ball Size of Player > 5]. This makes her tummy bulge out a little further[end if]. After you dismount, you take a moment to enjoy the sight of her quivering pussy leaking you cum down her thighs.";
			if Ball Size of Player > 6, increase lust of Doctor Utah by 1;
			if a random number between 1 and 100 < Ball Size of Player, increase lust of Doctor Utah by 1;
		else:
			say "     You can smell the pregnant female's excitement as she gives a hiss of need and turns around. Raising her tail and spreading her legs, she offers her juicy cunt to you. You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent. Her fecund taste is very exciting and it sends your lust to greater heights. Feeling your feral needs rising, you plunge your tongue into her twat and lap up her juices.";
			say "     You grab her ass with your taloned hands and knead her bottom while your tongue delves into her juicy cunt[if anallevel is 3], occasionally venturing up to lick her asshole as well[end if]. You dive your long tongue deep inside, sliding along her inner walls and teasing it against her cervix, knowing the clutch you sired is waiting behind it. After you've pushed her to a quick orgasm, she turns around and buries her muzzle between your thighs, licking and sucking at your pulsing cock. She grips your hip with one paw and works a few fingers into her cunt with the other. She works your [cock size desc of Player] erection until you finally cum, pumping your hot seed down her throat as she moans in pleasure. She kneads at your balls, coaxing as much as she can get before releasing you, wanting your hot seed to feed her growing eggs[if Ball Size of Player > 6 and lust of Doctor Utah > 12]. This leaves her so full and bloated that she can hardly move[else if Ball Size of Player > 6 or (Ball Size of Player > 5 and lust of Doctor Utah > 12)]. This leaves her full and bloated with a combination of eggs and cum[else if Ball Size of Player > 5]. This makes her tummy bulge out a little further[end if].";
	else:
		say "     You can smell the female's heated excitement as she gives a hiss of need and turns around. Raising her tail and spreading her legs, she offers her juicy cunt to you. You nuzzle you saurian head under her tail and give her a sniff, taking in her sexy scent before licking across her wet vent. The taste is wild and exciting, much like the wereraptor herself and it sends your lust to greater heights. Feeling your feral needs rising, you plunge your tongue into her twat and lap up her juices.";
		say "     You grab her ass with your taloned hands and knead her bottom while your tongue delves into her juicy cunt[if anallevel is 3], occasionally venturing up to lick her asshole as well[end if]. After you've pushed her to a quick orgasm, she turns around and does the same to you. The feel of her saurian head pressed under your tail and her long tongue sliding around inside your cunt gets you to cum as well. You switch with her like this several times until you've both had several orgasms that leave you feeling momentarily sated.";
	now lastfuck of Doctor Utah is turns;

to say drutah_malesex:
	say "     The other wereraptor grins at your offer and slides his tongue along his muzzle before leaning in to nip at your neck. He runs his taloned hands over your [bodydesc of Player] body";
	if bodyname of Player is not "Wereraptor" or the player is not pure:
		say " and hisses in disappointment. 'It seems your body has not had an opportunity to revert to its proper, saurian form. It looks like we'll need to help it along.' He presses you against the wall and kisses you while rubbing his hand across his cock and gathering up his leaking precum. He then rubs his musky pre across your body while nibbling along your neck and shoulder. He smears his preseminal fluids anywhere you're not a sexy wereraptor.";
		say "     As his juices seep into your skin, you can feel the rush of excitement as you transform back";
		wrcurserestore;
		say "     Now fully restored to your saurian glory, Dr. Utah grinds himself up against you";
	say " and growls lustfully. His taloned hands grip your rear, pressing their pointed claws against your scales. His tail swishes and twitches with excitement, knocking a few things aside in the now cramped office.";
	if Player is female:
		if Player is impreg_able:
			say "     You can smell the musky scent of the other wereraptor's arousal and can't help but become excited by it. You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your juicy pussy a long, slow lick. Tasting your fertile juices, he releases a growl of feral need. He pounces atop you, grabs your shoulders with his clawed hands and drives his enlarged, reptilian cock deep inside you with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep in an attempt to breed his mate. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your pussy quivering and milking at that 16 inch shaft in an effort to pull out very shot of saurian seed you can milk from it for your eggs. The thought of you (and many others) being bred full of wereraptor eggs extends your climax until you've gotten every last drop. Your uterus feels full and warm with his virile load by the time the transformed doctor dismounts.[fovichance]";
		else if Player is impreg_now and a random chance of 1 in 3 succeeds:
			say "     You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your juicy pussy a long, slow lick. He releases a lustful growl and licks you again before moving up to mount you. Despite already being pregnant, it seems the doctor's eager to prove his virility once again with a lustful fucking. He grabs your shoulders and drives his impressive, reptilian rod into your cunt with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep while fucking his pregnant mate. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your pussy quivering and milking at that 16 inch shaft in an effort to pull out very shot of saurian seed you can milk from it. His sperm flows into your already bred womb, filling it further. The thought of having your virile mate breed you at your next opportunity, filling you full of wereraptor eggs, is very exciting and you resolve to do just that. Once he's drained his balls into you, leaving you wet and leaking his semen, the transformed doctor dismounts.[fovichance]";
		else if "Sterile" is listed in feats of Player and a random chance of 1 in 3 succeeds:
			say "     You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your juicy pussy a long, slow lick. He releases a lustful growl and licks you again before moving up to mount you. Despite already being sterile, it seems the doctor's not going to turn down an opportunity to fuck your dripping snatch. He grabs your shoulders and drives his impressive, reptilian rod into your cunt with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep while fucking you. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your pussy quivering and milking at that 16 inch shaft in an effort to pull out very shot of saurian seed you can milk from it. His sperm flows into your sterile womb, but you long for more. The thought of having your virile mate breed you properly, filling you full of wereraptor eggs, is very exciting and you resolve to find a means to have it happen. Once he's drained his balls into you, leaving you wet and leaking his semen, the transformed doctor dismounts.";
		else:
			say "     When you approach the male for sex, he growls lustfully and pushes your head down between his saurian legs. With his sixteen inch pillar of reptilian meat on display, ready and waiting for your maw, you lick your lips and take it into your mouth. You lick and suck at the pre-drooling cock, releasing soft moans as the saurian doctor thrusts fervently. The taste of his musky pre is exciting, making you wet just from the taste of it before you even start fingering yourself wildly.";
			say "     Grabbing his hip with your free hand, you grip it firmly even as he starts thrusting harder and faster into your large, toothy maw. Taking care with those teeth, you suck lustfully on his cock, your reptilian tongue artfully playing across his sensitive flesh. You push him to a quick climax that is nonetheless powerful, filling your saurian muzzle with his virile load. It is thick and has a strong, rich taste that speaks of his strength as a wereraptor stud. You swallow it all down and make sure your mate's rod is licked clean before you release it.";
	else:
		if Player is mpreg_able:
			say "     You can smell the musky scent of the other wereraptor's arousal and can't help but become excited by it. You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your back entrance a long, slow lick. Picking up the scent of your hidden womb, fertile and ready, he releases a growl of feral need. He pounces atop you, grabs your shoulders with his clawed hands and drives his enlarged, reptilian cock deep inside you with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep in an attempt to breed his unconventional mate. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your own seed splattering onto the wall and floor as your orgasm soon follows. Your anus milks at that 16 inch shaft in an effort to pull out very shot of saurian seed you can get from it for your eggs. The thought of you (and many others) being bred full of wereraptor eggs extends your climax until you've gotten every last drop. Your bowels and hidden uterus feel full and warm with his virile load by the time the transformed doctor dismounts.[movichance]";
		else if Player is mpreg_now and a random chance of 1 in 3 succeeds:
			say "     You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your back entrance a long, slow lick. He releases a lustful growl and licks you again before moving up to mount you. Despite being male and already pregnant, it seems the doctor's eager to prove his virility once again with a lustful fucking. He grabs your shoulders and drives his impressive, reptilian rod into your ass with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep while fucking his pregnant male mate. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your own seed splattering onto the wall and floor as your orgasm soon follows. Your anus milks at that 16 inch shaft in an effort to pull out very shot of saurian seed you can milk from it. His sperm flows into your bowels as well as your already bred womb, filling it further. The thought of having your virile mate breed you at your next opportunity, filling you full of wereraptor eggs, is very exciting and you resolve to do just that. Once he's drained his balls into his male breeder, the transformed doctor dismounts, leaving your spread asshole leaking his semen down your thighs.[movichance]";
		else if Player is not mpreg_ok and a random chance of anallevel in 5 succeeds:
			say "     You give a hiss of need and turn around, raising your tail and spreading your legs. The saurian doctor nuzzles under your tail, taking in your scent before giving your back entrance a long, slow lick. He releases a lustful growl and licks you again before moving up to mount you. It seems the doctor's not going to turn down an opportunity to fuck your wereraptor ass. He grabs your shoulders and drives his impressive, reptilian rod into your muscular rear with a triumphant roar.";
			say "     You lean over further, your long tail and spread legs helping you to maintain balance. This position allows the wereraptor atop you to drive into you hard and deep while fucking you. Naturally a little cold-blooded, your bodies grow warm as you fuck and your mating grows in zeal as it does until he's fucking you like the wild beasts you both are. Your sex becomes loud and passionate, neither caring who may hear you, for all around fear the wereraptors who stalk the campus at night and you two are the greatest of them.";
			say "     When his climax comes, it is wild and feral as well. He bites down on your neck and digs his claws into your shoulders, causing you to clamp down around him. Your cry is one of lustful ecstasy, the pain nothing compared to the pleasure of being fucked like a wild beast. You cum hard, your own seed splattering onto the wall and floor as your orgasm soon follows. Your anus milks at that 16 inch shaft in an effort to pull out very shot of saurian seed you can milk from it. His semen flows into your bowels, coating them with his virile sperm, imagining all the females he's bred in a similar manner. While you wants to be right there alongside him, breeding your prey full of eggs, a part of you wants to join them in egg-stuffed bliss. The thought of having the doctor as your virile mate and breeding you properly, filling you full of wereraptor eggs, is very enticing to you right now. Once he's drained his balls into his male breeder, the transformed doctor dismounts, leaving your spread asshole leaking his semen down your thighs.";
		else:
			say "     When you approach the male for sex, he growls lustfully and pushes your head down between his saurian legs. With his sixteen inch pillar of reptilian meat on display, ready and waiting for your maw, you lick your lips and take it into your mouth. You lick and suck at the pre-drooling cock, releasing soft moans as the saurian doctor thrusts fervently. The taste of his musky pre is exciting, making you hard just from the taste of it before you even start stroking yourself wildly.";
			say "     Grabbing his hip with your free hand, you grip it firmly even as he starts thrusting harder and faster into your large, toothy maw. Taking care with those teeth, you suck lustfully on his cock, your reptilian tongue artfully playing across his sensitive flesh. You push him to a quick climax that is nonetheless powerful, filling your saurian muzzle with his virile load. It is thick and has a strong, rich taste that speaks of his strength as a wereraptor stud. You swallow it all down and make sure your lover's rod is licked clean before you release it.";
	now lastfuck of Doctor Utah is turns;


an everyturn rule:
	if lust of Doctor Utah > 0:
		increase lust of Doctor Utah by 1;
		if lust of Doctor Utah >= 24 and skipturnblocker is 0:
			say "By some unknown, feral instinct, you know that more of your offspring have entered this world. Your wereraptor nature urges you to return to Dr. Utah... perhaps to breed her with more eggs.";
			increase Libido of Doctor Utah by a random number between 2 and 4;
			now lust of Doctor Utah is 0;
			increase HP of Doctor Utah by 1;
			if HP of Doctor Utah > 20, now HP of Doctor Utah is 18;


Section 3 - Endings

[Endings to come later]

DrUtah ends here.
