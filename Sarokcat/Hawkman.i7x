Version 2 of Hawkman by Sarokcat begins here.
[ Version 2 - M/M Hawkman victory and tweaked scenes - Blue Bishop and Stripes ]

"Adds a Hawkman to Flexible Survival's Wandering Monsters table"


nohawkmansex is a number that varies.
hawkmanbeaten is a number that varies.

Section 1 - Creature Responses

to say hawkmandesc:
	setmongender 3;  [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	say "     As you wander through the city streets, you hear a whistling sound from above and look up to see a powerful avian form swooping down towards you. You jump back as it lands right in front of you and get a closer look at the anthro raptor's body as he stalks towards you on taloned feet. The strange bird-man has large, hawk-like wings stretching out from his back, clearly flight-ready given the creature's aerial approach. He is covered in a rather soft and beautiful looking plumage of brown, layered feathers with ivory-white countershading. The obviously male creature is half-erect as he cocks his avian head to the side appraisingly, and you swear you can see a lecherous grin stretching across his beak as he leaps forward to attack.";

to say Hawkman wins:
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	now nohawkmansex is 0;
	if Player is female or ( anallevel is 3 and a random chance of 2 in 5 succeeds ) or ( player is mpreg_ok and a random chance of 2 in 5 succeeds ):
		if Player is not female and a random chance of 3 in 5 succeeds:
			if HP of Player > 0:
				say "     The hawkman grins wide when you give in to him and he wastes no time in leaping forward, knocking your unresisting form to the ground. He chuckles happily as he rubs his feathered form against your [bodydesc of Player] body while divesting you of your gear. Groping you between the legs as he does, he gives a cawing laugh. 'Well, you're nothing but a big hen, ain't you?' he says teasingly, nipping at your neck while grinding his stiffened member against your rear and fondling your [if Player is male]manhood as it reacts[else]your bare groin[end if].";
			else:
				say "     The hawkman grins proudly upon your defeat and he wastes no time in leaping forward, knocking your exhausted form to the ground. He chuckles happily as he rubs his feathered form against your [bodydesc of Player] body while divesting you of your gear. Groping you between the legs as you squirm ineffectually, he gives a cawing laugh. 'Prey, I'm going to make you my hen,' he says teasingly, nipping at your neck while grinding his stiffened member against your rear meaningfully. He reaches around and fondles your [if Player is male]manhood, causing it to react involuntarily[else]bare groin, causing you to moan involuntarily[end if].";
			say "     You are manhandled onto all fours by the lustful bird even as your own arousal heightens[if HP of Player <= 0] despite yourself[end if]. His wings enfold around you possessively, keeping his prey/plaything safely trapped/enclosed. The true context of the situation becomes increasingly blurred for you as a growing need to allow the hawkman to fuck you overwhelms your reason as his masculine scent and confident, possessive manner affect your nanite-addled mind. He chuckles and pumps his cock eagerly when you reach back and spread your cheeks, baring your waiting pucker to [if HP of Player > 0]your dominant lover[else]the victorious raptor[end if]. From that point, he wastes little time in mounting you, burying his narrow pink cock in your exposed behind and causing you to moan in pleasure.";
			WaitLineBreak;
			say "     Having the avian organ inside you feels wonderful, the hawkman thrusting it skillfully and energetically into your hot hole. Your anal passage grows increasingly wet as his precum lubes you up, allowing him to fuck you harder and faster still, much to your mutual delight. You lean your chest forward and stretch your arms out, effectively raising your ass and allowing him to penetrate deeper [if HP of Player > 0]like some lustful he-hen to this studly hawk[else]into his captured man-slut prey[end if]. You pant and moan beneath him as he fucks you, his virile rod pulsing and throbbing inside you[if Player is male]. Your prostate thrums from the stimulation and your balls throb with arousal until finally spilling over in a loud and lustful orgasm. The hawkman chuckles as you climax[else]. Your body quivers with unfocused ecstasy as the stimulation eventually makes you cry out. The hawkman chuckles at your uncontrolled response[end if], nipping firmly at your shoulder and neck, and drives himself deep into you, spraying his hot load into your ass. You can't help but moan and blush a bit at how good it feels to have his semen flowing into your bowels [if HP of Player > 0]as he cums in his horny lover[else]of his misused prey[end if].[movichance]";
			say "     When he pulls out, you flop over onto your side with a dazed, contented smile on your face and a trickle of hawk seed leaking from your well-used hole. After wiping his spent shaft across your hip, he takes flight, leaving you to gradually recover your wits - though you feel a lingering longing for the confident male to reclaim you again soon.";
		else:
			say "     The hawkman's beak spreads open in a wide grin as you finally stop fighting him. He wastes no time in leaping forward and knocking your unresisting form to the ground, chuckling happily as he rubs his surprisingly soft feathers up against your body eagerly. You find yourself moaning softly as his avian form pins you to the ground, his taloned feet gripping your legs and stroking them lightly as he spreads them wide open for him. His wings open wide and enclose the two of you in a small tent smelling strongly of his masculine presence, and your body begins to burn with need even as he positions his narrow pink cock in front of your [if Player is female]already damp female opening[else]exposed behind[end if]. You feel strangely comfortable and protected as he buries himself in your waiting [if Player is female]passage[else]hole[end if], and you moan happily with pleasure as he nuzzles your neck with his hooked raptor beak.";
			say "     The feel of his avian organ in your body is absolutely wonderful, as it seems to reach deep inside you and stroke you in all the right places. The almost hypnotic building rhythm of his short thrusts into your body makes your mind fill with pleasure as you bury your fingers in his lovely, feathered sides. It isn't long before you are gasping and shuddering in [if Player is not neuter]orgasm[else]ecstasy[end if] underneath him as he fills your [bodydesc of Player] body with his wonderful avian seed. You can feel it flowing into you to pool inside your [if Player is female]womb[else]bowels[end if]. Your [bodytype of Player] body responds eagerly to his seeding with a rush of amazing pleasure even as he cries out his triumph to the empty streets around you. You find yourself smiling happily as he pulls himself off of you. The hawkman rubs his beak over your well-used body a few times before taking to the air again. As you begin to try to gather your wits about you, you find yourself almost idly wondering as you rub your belly whether or not you will see the handsome bird again anytime soon...[ovichance]";
		infect "Hawkman Male";
	else:
		say "     Knocking you to the ground, the hawkman screams his triumph, strutting around you in a particularly avian stride. As you sit up, the birdman pushes you back down with one taloned foot before taking to the sky again. Dizzy and rubbing the bump at the back of your head, you can only stare in surprise as he begins to stroke himself off above you, the hunt and the combat obviously having only increased the strange creature's arousal. Within a minute, he shudders, his cock twitching as he covers your beaten form with his sticky white seed. The seed seems to tingle even as it sinks into your body, and the watching hawkman lets out a sound of satisfaction before flying off into the city in search of more prey, leaving you lying there trying to deal with your new changes.";
		infect "Hawkman Male";


To say Hawkman loses:
	if inasituation is true:
		stop the action; [details are taken care of at the event source]
	if hawkmanbeaten < 3:
		say "     With one last vicious blow, you knock the hawkman back, the creature seemingly surprisingly fragile for all his striking power, and as he hops back and takes to the sky again to flee, you wonder if his bones are just as delicate as most birds... Sighing you turn to continue on your way, though you resolve to keep a better eye on the sky above just in case more of those surprisingly sexy hawkmen are in the area.";
	else:
		say "     With a final, vicious blow, you knock the hawkman back. Prepared for the avian's escape attempt, you reach out and grab him by the ankle as he starts to flap his wings. Too weak, you pull him down, slamming him to the ground, leaving the anthro avian vulnerable to you.";
		now sextablerun is 0;
		say "     [bold type]What do you want to do to your captive?[roman type][line break]";
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Milk him for cum";
		now sortorder entry is 1;
		now description entry is "Fill a bottle with some rich hawkman male cum";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck him";
			now sortorder entry is 2;
			now description entry is "Screw the defeated hawkman";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Leave him be[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Milk him for cum":
						say "[HawkmanCumMilking]";
					else if nam is "Fuck him":
						say "[HawkmanAssfuck]";
			else if calcnumber is 0:
				say "     To reinforce your victory, you pull a few feathers from the bird's tail, making him squawk in pain.";
				now sextablerun is 1;
			else:
				say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";
	increase hawkmanbeaten by 1;

to say HawkmanCumMilking:
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you decide to take what you want from the defeated avian instead of letting him force it upon you. Slamming his shoulders down firmly, you tell the weakened bird to stay, , then reach for his crotch and start rubbing it. As his tapering shaft starts to fill out under your touch, the hawkman's indignant squawks die down before too much longer, with your former opponent beginning grind against your hand. He still struggles a little bit, wanting to be dominant and on top, but you growl at him until he stops resisting. Only then do you take the hand that was pressing down on his chest away, using it to caress his balls instead. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the rapid beat of his heart.";
	say "     You stroke and fondle your defeated hawkman a bit, grinning as you push the groaning captive closer and closer to orgasm. You tease him by saying that maybe he should just be a good birdie and come to you when you whistle, which draws a grumpy screecg from him - right until you begin squeezing tighter and give his dick a long stroke up and down. With a chuckle, you continue to caress his manhood, and when he finally can't hold back any more, you quickly snatch up your prepared bottle and hold it to his cock, successfully catching spurt after spurt of milky white cum in it. He's got a respectable output and fills a little bit less than a third of the bottle before he sinks back in exhaustion, panting loudly. Looks like you've finished off the beaten hawk for now, so you cap the bottle of cum and pack it away, giving him a casual wave to slink off. Feathers still ruffled and untidy after having been defeated and milked, he nevertheless jumps into the air and flies off, looking for some place to lick his wounds and salve his pride.";
	LineBreak;
	say "[bold type]You gain a bottle of hawkman male cum![roman type][line break]";
	increase carried of hawkman male cum by 1;

to say HawkmanAssfuck:
	if hawkmanbeaten is odd:
		say "     Wanting some proper payback, you pin the weakened bird beneath you and grind your cock beneath his tail feathers. He squawks indignantly, but a firm hand on around its beak and thrust forward has you mounting the bird and fucking his tight ass[if Cock Length of Player > 36]. You stuff as much as you can in the hawkman's ass, filling his slender body to capacity with your throbbing meat[else if Cock Length of Player > 18]. You stuff your [cock size desc of Player] cock entirely into the hawkman's ass, filling him with your throbbing meat[else]. You stuff your [cock size desc of Player] cock into the hawkman's ass, working your full length into him[end if]. You pound away at him, loving the feel of his tight ass around your pulsing shaft as you fuck him until you cum[if Ball Size of Player > 6]. Your massive load leaves him bloated and full like a stuffed holiday bird, unable to move he's so full[else if Ball Size of Player > 4]. Your heavy load leaves him stuffed and leaking cum as he staggers away[else]. Your creamy load is pumped into him, leaving his rump and tailfeathers sticky with your seed once you're done[end if].";
	else:
		say "     Feeling the need to teach the raptor to pick his would-be prey more wisely, you grab the weakened bird by the tailfeathers and pull his ass up. He gives an indignant squawk, but cannot prevent you from pressing your throbbing member between his feathery cheeks. With your other hand pressing his head to the ground, you drive your [Cock of Player] manhood into his tight ass[if Cock Length of Player > 36]. You stuff as much of your [cock size desc of Player] cock as you can get into his slender body, filling him with your throbbing meat[else if Cock Length of Player > 18]. You stuff your [cock size desc of Player] cock entirely into him, filling him with your throbbing meat[else]. You stuff your [cock size desc of Player] cock fully into him[end if].";
		say "     While it is tempting to finish quickly, you manage to resist the urge - at least for a little while - wanting to thoroughly show this would-be predator the depth [if Cock Length of Player > 18](and girth) [end if]of his error in attacking you. As you continue fucking the panting bird, weak moans and soft caws start to escape his beak. You reach around and let your fingertips brush against his stiffened member, proving you're well aware the raptor's hard and dripping despite himself. He blushes and closes his eyes in shame, but also pushes up into your thrusts a little. You can feel his anus squeeze around your pulsing rod in more than just reaction to your thrusts and you reward this response by taking his throbbing penis in hand and stroking it.";
		WaitLineBreak;
		say "     You bugger the increasingly compliant hawk until finally you achieve climax. Driving your cock deep into his thoroughly pounded ass, you unleash your balls['] [Cum Load Size of Player] payload into him[if Ball Size of Player > 6]. Your massive load blasts wave after wave of semen into him until he's left bloated and full like a stuffed holiday bird. So full he's unable to move, he can only quiver and caw weakly in orgasm even as your excess load overflows his stretched pucker. He rolls over onto his side, weak, dazed and unable to move. You leave him there, going about your own business with a proud smile on your face for your accomplishment[else if Ball Size of Player > 4]. Your mighty load gushes wad after wad of semen into him, stuffing him until he's full. With the heat of your seed filling his bowels, he struggles to clench around you as he caws loudly in orgasm. Once spent, he slips off of you slowly and weakly staggers to his feet. Laden down with your [Cum Load Size of Player] load, he can only stumble off in a weak daze. You let him leave, instead returning to your own affairs with a proud smile on your face[else]. Your creamy load is pumped into him, painting his bowels with streaks of your semen. Feeling you climax inside him, he clenches down around you and caws in orgasm. Once spent, he slips off your slowly and he staggers to his feet. Blushing as he tries to hide his sticky rump and tailfeathers, he takes to the air. You let him leave at this point, returning to your own affairs[end if]. At least now one of those troublesome hawks has learnt his lesson.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is true;
	now Species Name entry is "Hawkman";
	add "Hawkman Male" to infections of AvianList;
	add "Hawkman Male" to infections of AvianpredList;
	add "Hawkman Male" to infections of FurryList;
	add "Hawkman Male" to infections of NatureList;
	add "Hawkman Male" to infections of MaleList;
	add "Hawkman Male" to infections of TaperedCockList;
	add "Hawkman Male" to infections of InternalCockList;
	add "Hawkman Male" to infections of BipedalList;
	add "Hawkman Male" to infections of FlightList;
	add "Hawkman Male" to infections of TailList;
	now Name entry is "Hawkman Male";
	now enemy title entry is "Hawkman";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He lashes out at you with his wing, the powerful wing strike smashing you backwards.[or]The hawkman flaps his wings and gains a leaps into the air, lashing out at you with his powerful rear talons.[or]he grabs at you with his taloned fingers.[or]He charges forward, his wings flapping behind him giving his speed as he barrels into you.[or]He lets out a loud screech causing you to duck instinctively as he barrels forward.[or]He stalks forward teasingly, his rhythmic movements almost hypnotic as he postures in front of you.[or]He strikes forward with his large, predatory beak and rubs it against you teasingly.[or]The hawkman stretches forward with one of his taloned fingers and strokes his cool finger down the side of your face teasingly.[at random]";
	now defeated entry is "[Hawkman loses]";
	now victory entry is "[Hawkman wins]";
	now desc entry is "[hawkmandesc]";
	now face entry is "a narrow, hawk-like head with a sharp, curved beak and piercing eyes"; [ Face description, format as "Your face is (your text)."]
	now body entry is "lithe and slim, with powerful taloned feet and rather claw-like taloned hands, your avian body sports two large, powerful wings, which catch the air behind you and make you almost feel like you could fly"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]soft feathered[or]brown feathered[or]hawk-like[or]feathered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a rather large tail made of feathers folded neatly behind you, its patterned feathers seeming to shine and shimmer as it flexes and spreads out with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]slim, tapered[or]avian[or]hawk-like[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose seems to flatten out, and you fight to breathe for a second as your mouth presses forward, the bones of your jaw cracking as it begins to reshape into a powerful avian beak. Your eyes swim for a minute before sharpening into the razor sharp focus of a hawk, and you gasp for breath as your beak finishes forming, your now thin, birdlike tongue exploring the smooth texture of your hawk-like beak"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your bones seem to stretch and flex under the skin for a second, your balance seeming to change as your body grows lighter, and you stagger and nearly fall as your feet shift, the knees snapping and reversing in direction as new raptor-like talons form, your hands soon shifting and following suit as they become covered in powerful birdlike talons as well. However, you discover that your changes aren't quite over, as all of a sudden your spine seems to shift, causing you to moan as your back bulges out, and two powerful avian wings erupt out from your sides, and you flap your new wings experimentally as you stretch out your powerful new avian form"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "small dimples appear over your body, covering you completely before they begin to tingle, and you feel several small pinpricks as small feathers begin to push their way out of your skin, the first set of feathers growing in quickly even as another set begins to push out to cover the soft downy underfeathers with their brown patterned hawk-like markings"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "large, powerful feathers seem to erupt out from the base of your spine, the feathers seeming to fold together to form a wide, flat, avian tail. The strange new appendage feels surprisingly responsive as you spread it out behind you experimentally, the feathers feeling surprisingly good and arousing where they rub against your body"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it is drawn up almost entirely into your body, your penis narrowing into a rather avian, pointed member as it slips into your newly created vent"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 7;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 13;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "hawkman male feathers";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 100;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]winged[at random]";
	now type entry is "[one of]avian[or]raptor[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is "Hawkman Female"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Hawkman Male"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 4; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your eyes grow a bit and become exceptionally sharp while your ears get smaller and smaller until their exterior parts vanish. Cream and colored feathers sprout from your skin, with a bit of a ruffle around your neck. Finally, a wicked beak pushes forward to give you the head of a hawk"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a sharp-beaked hawk with [Head Color of Player] feathers"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "feathered"; [one word descriptive adjective]
	now Head Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "neck-ruffle of feathers"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "cream-colored"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "yellow"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "blunt"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "it narrows a bit, with tan and brown feathers starting to sprout out of your skin, giving you a spotted coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "narrow, with a spotted coat of [Torso Color of Player] feathers"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is "feathered tummy"; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "tan and brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is "spotted"; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is "a pair of wings sprouts out of it, with cream-colored feathers on the underside and tan color on the back"; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is "the pair of cream and tan feathered wings growing from beneath your shoulder blades"; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into sharp claws and grey scales spread over your hands and lower arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] feathers down to the elbow, with small, grey scales from there down to your clawed hands"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "scaled"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro bird with brown feathers, complete with clawed feet"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro bird, with [Legs Color of Player] feathers covering them from your hips down to the clawed feet"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded and brown feathers sprout all over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered short brown feathers"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "feathered";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a fan of long brown feathers sprout sprout from your tailbone"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "fan of long [Tail Color of Player] feathers"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 2; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 8; [length in inches]
	now Cock Change entry is "it takes on a slender and pointy appearance, tapering all the way from the base to the tip"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and looks fairly slender, taping all the way from the base to the tip"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "avian"; [one word adjective: avian/canine/...]
	now Cock Color entry is "pink"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 2; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a feathered, tight sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a triangular appearance, complete with a clit at the top"; [partial sentence that fits in: "Your cunt [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and triangular in shape, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "avian"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is true;
	now Species Name entry is "Hawkman";
	add "Hawkman Female" to infections of AvianList;
	add "Hawkman Female" to infections of AvianpredList;
	add "Hawkman Female" to infections of FurryList;
	add "Hawkman Female" to infections of NatureList;
	add "Hawkman Female" to infections of FemaleList;
	add "Hawkman Female" to infections of TaperedCockList;
	add "Hawkman Female" to infections of InternalCockList;
	add "Hawkman Female" to infections of BipedalList;
	add "Hawkman Female" to infections of FlightList;
	add "Hawkman Female" to infections of TailList;
	now Name entry is "Hawkman Female";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "a narrow, hawk-like head with a sharp, curved beak and piercing eyes"; [ Face description, format as "Your face is (your text)."]
	now body entry is "lithe and slim, with powerful taloned feet and rather claw-like taloned hands, your avian body sports two large, powerful wings, which catch the air behind you and make you almost feel like you could fly"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]soft feathered[or]brown feathered[or]hawk-like[or]feathered[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a rather large tail made of feathers folded neatly behind you, its patterned feathers seeming to shine and shimmer as it flexes and spreads out with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]slim, tapered[or]avian[or]hawk-like[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your nose seems to flatten out, and you fight to breathe for a second as your mouth presses forward, the bones of your jaw cracking as it begins to reshape into a powerful avian beak. Your eyes swim for a minute before sharpening into the razor sharp focus of a hawk, and you gasp for breath as your beak finishes forming, your now thin, birdlike tongue exploring the smooth texture of your hawk-like beak"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your bones seem to stretch and flex under the skin for a second, your balance seeming to change as your body grows lighter, and you stagger and nearly fall as your feet shift, the knees snapping and reversing in direction as new raptor-like talons form, your hands soon shifting and following suit as they become covered in powerful birdlike talons as well. However, you discover that your changes aren't quite over, as all of a sudden your spine seems to shift, causing you to moan as your back bulges out, and two powerful avian wings erupt out from your sides, and you flap your new wings experimentally as you stretch out your powerful new avian form"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "small dimples appear over your body, covering you completely before they begin to tingle, and you feel several small pinpricks as small feathers begin to push their way out of your skin, the first set of feathers growing in quickly even as another set begins to push out to cover the soft downy underfeathers with their brown patterned hawk-like markings"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now Ass Change entry is "large, powerful feathers seem to erupt out from the base of your spine, the feathers seeming to fold together to form a wide, flat, avian tail. The strange new appendage feels surprisingly responsive as you spread it out behind you experimentally, the feathers feeling surprisingly good and arousing where they rub against your body"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it is drawn up almost entirely into your body, your penis narrowing into a rather avian, pointed member as it slips into your newly created vent"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 7;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 13;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 2;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "hawkman female feathers";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]winged[at random]";
	now type entry is "[one of]avian[or]raptor[at random]";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is "Hawkman Male"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Hawkman"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Hawkman Female"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 3; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 7; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 7; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your eyes grow a bit and become exceptionally sharp while your ears get smaller and smaller until their exterior parts vanish. Cream and colored feathers sprout from your skin, with a bit of a ruffle around your neck. Finally, a wicked beak pushes forward to give you the head of a hawk"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a sharp-beaked hawk with [Head Color of Player] feathers"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "feathered"; [one word descriptive adjective]
	now Head Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "neck-ruffle of feathers"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "cream-colored"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "yellow"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "blunt"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "it narrows a bit, with tan and brown feathers starting to sprout out of your skin, giving you a spotted coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "narrow, with a spotted coat of [Torso Color of Player] feathers"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "avian"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is "feathered tummy"; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "tan and brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is "spotted"; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 2; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is "a pair of wings sprouts out of it, with cream-colored feathers on the underside and tan color on the back"; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is "the pair of cream and tan feathered wings growing from beneath your shoulder blades"; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into sharp claws and grey scales spread over your hands and lower arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] feathers down to the elbow, with small, grey scales from there down to your clawed hands"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "scaled"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro bird with brown feathers, complete with clawed feet"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro bird, with [Legs Color of Player] feathers covering them from your hips down to the clawed feet"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded and brown feathers sprout all over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered short brown feathers"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "feathered";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a fan of long brown feathers sprout from your tailbone"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "fan of long [Tail Color of Player] feathers"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "feathered"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "brown"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Change entry is "it takes on a slender and pointy appearance, tapering all the way from the base to the tip"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and looks fairly slender, taping all the way from the base to the tip"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "avian"; [one word adjective: avian/canine/...]
	now Cock Color entry is "pink"; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 2; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a feathered, tight sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 2;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a triangular appearance, complete with a clit at the top"; [partial sentence that fits in: "Your cunt [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and triangular in shape, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "avian"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

when play ends:
	if BodyName of Player is "Hawkman Male" or BodyName of Player is "Hawkman Female":
		if humanity of Player < 10:
			if Player is female:
				say "Giving in to your new hawk-like instincts you spread your wings out and take to the air, the feel of the cool air whistling over your soft feathers feels amazing as you begin your first awkward flight over the city. It isn't long before you have managed to master the use of your new wings however, and are soaring easily over the city and enjoying the sights of the world spread out below you. Of course your first flight doesn't go unnoticed, and you soon have several handsome male hawks circling you teasingly, their beautiful feathers and virile male bodies speaking to something within you as you alter your flight path to give them teasing glimpses of your own sexy feathered body. Several of the hawks vie for your attention for a while, but you are eventually drawn to a rather handsome specimen who has a lovely way of slipping through the air with ease, and soon find yourself following him through the air back to his nest on top of one of the buildings in the area. Already aroused from your flight, he has no trouble in getting you to spread yourself for him, and he wastes no time in mounting you and making you screech your pleasure to the sky as he takes you again and again. [line break]";
				say "You lose track of what time it is, and eventually even what day it is, as your handsome hawk mates you often, keeping you nice and happy, feeding you and making sure you are well taken care of, even as he ensures you are unable to even think about leaving your new shared nest. Almost before you know it you can feel your belly swelling large with your new mate's seed, and you realize you are now a properly claimed and bred hawkwoman, which for some reason seems strangely satisfying to your new instincts. Soon you lay your first clutch of lovely little hawk eggs, the feeling of their ovoid shapes slipping out of your new sex is absolutely amazing, and before you know it you are panting happily in your egg filled nest with your mate looking on proudly. You find you can hardly wait for your eggs to grow and hatch into even more lovely hawks, and look forward to the happy event enthusiastically even as your new avian mate works on filling your eager body with a fresh clutch of eggs for you to lay... And you find yourself looking forward more than ever to the many breedings and clutches of eggs to come, as you fully embrace your new life as a slutty hawkwoman with a lovely belly full of life...";
			else:
				say "Giving in to your strong new hawk-like instincts, you spread your wings and take to the sky for the first time, enjoying the feeling of freedom as you slowly begin to master the skies above the infected city. Before long you are soaring through the skies with ease, and enjoying the feel of the wind rushing over your feathers as your eyes scan the city below for someone to play with. Unfortunately, the city is full of other infected, and most of the people have already become playtoys already, which leaves you flying aimlessly through the skies, until you realize that you are being silly. Looking up at the open skies around you, you can feel a grin tugging at your beak as you begin to angle your wings to take you down the coast a ways. There is after all a whole wide world out there full of people you can chase and catch. And the open skies are calling out to you as you head off in search of new places to hunt, and new partners to share the joys of flight with. Let the military do with the city as they wish, you find yourself thinking as you fly under the cover of the night sky, you have the world out there to play in...";
		else:
			say "When the military rescues you from the city, you find yourself watched closely by their scientists, as they seem fascinated by your new avian form, and the changes in your muscle density and bone mass. Their attention makes you nervous, and before long you are asking to leave, especially once they start talking about bone marrow samples and similar painful tests. Fortunately enough, they are soon far too busy dealing with the fallout from the city and some of the other infected who they 'rescued' that are causing problems in camp to devote full attention to you for very long, and soon enough you are released. Wandering around outside of the city, you soon find your new looks gathering quite a bit of attention, though they certainly aren't very helpful in finding a job of some sort. Eventually you manage to get a job as a mail courier, and while it is rather dull delivering the mail and packages most days, it does let you meet some rather interesting people. One day you even meet a fellow avian, a sexy black [one of]hawkman[or]tengu[or]eagle[or]gryphon[at random], the powerful male is more than happy to meet you as well, and while both of you have never given yourself over to your new instincts enough to master your new wings and fly, you still find the draw of meeting a fellow avian to be nearly irresistible. [if Player is female]Before long the two of you are inseparable, and it isn't much longer before you are expecting your first clutch of eggs, and you find yourself eagerly anticipating seeing just how they will look when they finally hatch, and looking forward to many more clutches of eggs in the future[else]After a few months and becoming friends, he introduces you to his sister, who was similarly infected. He held back on telling you about her until your friendship was strong enough that he could trust you. You both hit it off and are soon a happy couple with a clutch on the way[end if].";


Section 3 - Item Drop


Table of Game Objects (continued)
name	desc	weight	object
"hawkman male feathers"	"A handful of tan feathers look like they have been pulled out of the feathered coat of a hawk. They're nicely soft."	0	hawkman male feathers

hawkman male feathers is a grab object.
the usedesc of hawkman male feathers is "[HawkmanMaleFeatherUse]".
it is part of the player.
It is temporary.

to say HawkmanMaleFeatherUse:
	say "Holding the feathers between your fingers, you stroke over them, delighted in the softness. Strangely, the feathers disintegrate after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Hawkman Male";

instead of sniffing hawkman male feathers:
	say "The feathers have a pleasing, not too strong, animal-like scent.";


Table of Game Objects (continued)
name	desc	weight	object
"hawkman female feathers"	"A handful of tan feathers look like they have been pulled out of the feathered coat of a hawk. They're nicely soft."	0	hawkman female feathers

hawkman female feathers is a grab object.
the usedesc of hawkman female feathers is "[HawkmanFemaleFeatherUse]".
it is part of the player.
It is temporary.

to say HawkmanFemaleFeatherUse:
	say "Holding the feathers between your fingers, you stroke over them, delighted in the softness. Strangely, the feathers disintegrate after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Hawkman Female";

instead of sniffing hawkman female feathers:
	say "The feathers have a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"hawkman male cum"	"A plastic bottle filled with some virile, avian seed."	1	hawkman male cum

hawkman male cum is a grab object. hawkman male cum is infectious. The strain of hawkman male cum is "Hawkman Female". hawkman male cum is cum.
the scent of hawkman male cum is "The swill has an overwhelming, masculine aroma about it.".
The usedesc of hawkman male cum is "     There's so much of stuff, it's a challenge to consume all of the warm, salty fluid. By the end, you feel dizzy and a little tingly.";

Section 3 - Endings

when play ends:
	if BodyName of Player is "Hawkman Male":
		if humanity of Player < 10:
			if Player is female:
				say "Giving in to your new hawk-like instincts you spread your wings out and take to the air, the feel of the cool air whistling over your soft feathers feels amazing as you begin your first awkward flight over the city. It isn't long before you have managed to master the use of your new wings however, and are soaring easily over the city and enjoying the sights of the world spread out below you. Of course your first flight doesn't go unnoticed, and you soon have several handsome male hawks circling you teasingly, their beautiful feathers and virile male bodies speaking to something within you as you alter your flight path to give them teasing glimpses of your own sexy feathered body. Several of the hawks vie for your attention for a while, but you are eventually drawn to a rather handsome specimen who has a lovely way of slipping through the air with ease, and soon find yourself following him through the air back to his nest on top of one of the buildings in the area. Already aroused from your flight, he has no trouble in getting you to spread yourself for him, and he wastes no time in mounting you and making you screech your pleasure to the sky as he takes you again and again. [line break]";
				say "You lose track of what time it is, and eventually even what day it is, as your handsome hawk mates you often, keeping you nice and happy, feeding you and making sure you are well taken care of, even as he ensures you are unable to even think about leaving your new shared nest. Almost before you know it you can feel your belly swelling large with your new mate's seed, and you realize you are now a properly claimed and bred hawkwoman, which for some reason seems strangely satisfying to your new instincts. Soon you lay your first clutch of lovely little hawk eggs, the feeling of their ovoid shapes slipping out of your new sex is absolutely amazing, and before you know it you are panting happily in your egg filled nest with your mate looking on proudly. You find you can hardly wait for your eggs to grow and hatch into even more lovely hawks, and look forward to the happy event enthusiastically even as your new avian mate works on filling your eager body with a fresh clutch of eggs for you to lay... And you find yourself looking forward more than ever to the many breedings and clutches of eggs to come, as you fully embrace your new life as a slutty hawkwoman with a lovely belly full of life...";
			else:
				say "Giving in to your strong new hawk-like instincts, you spread your wings and take to the sky for the first time, enjoying the feeling of freedom as you slowly begin to master the skies above the infected city. Before long you are soaring through the skies with ease, and enjoying the feel of the wind rushing over your feathers as your eyes scan the city below for someone to play with. Unfortunately, the city is full of other infected, and most of the people have already become playtoys already, which leaves you flying aimlessly through the skies, until you realize that you are being silly. Looking up at the open skies around you, you can feel a grin tugging at your beak as you begin to angle your wings to take you down the coast a ways. There is after all a whole wide world out there full of people you can chase and catch. And the open skies are calling out to you as you head off in search of new places to hunt, and new partners to share the joys of flight with. Let the military do with the city as they wish, you find yourself thinking as you fly under the cover of the night sky, you have the world out there to play in...";
		else:
			say "When the military rescues you from the city, you find yourself watched closely by their scientists, as they seem fascinated by your new avian form, and the changes in your muscle density and bone mass. Their attention makes you nervous, and before long you are asking to leave, especially once they start talking about bone marrow samples and similar painful tests. Fortunately enough, they are soon far too busy dealing with the fallout from the city and some of the other infected who they 'rescued' that are causing problems in camp to devote full attention to you for very long, and soon enough you are released. Wandering around outside of the city, you soon find your new looks gathering quite a bit of attention, though they certainly aren't very helpful in finding a job of some sort. Eventually you manage to get a job as a mail courier, and while it is rather dull delivering the mail and packages most days, it does let you meet some rather interesting people. One day you even meet a fellow avian, a sexy black [one of]hawkman[or]tengu[or]eagle[or]gryphon[at random], the powerful male is more than happy to meet you as well, and while both of you have never given yourself over to your new instincts enough to master your new wings and fly, you still find the draw of meeting a fellow avian to be nearly irresistible. [if Player is female]Before long the two of you are inseparable, and it isn't much longer before you are expecting your first clutch of eggs, and you find yourself eagerly anticipating seeing just how they will look when they finally hatch, and looking forward to many more clutches of eggs in the future[else]After a few months and becoming friends, he introduces you to his sister, who was similarly infected. He held back on telling you about her until your friendship was strong enough that he could trust you. You both hit it off and are soon a happy couple with a clutch on the way[end if].";

Hawkman ends here.
