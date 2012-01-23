Deer by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a deer to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
deerconsent is a number that varies.
deerhappy is a number that varies.

Susan is a person. "Susan, a bipedal deer.". The description of susan is "A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large plum sized balls contained in a creamy colored softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.".
unusual creature is a situation. It is resolved.
The sarea of unusual creature is "Park";

After resolving a unusual creature, try looking;

Instead of resolving unusual creature:
	say "Your ears pick up a faint sound in your searchings and you approach carefully. Peeking through the bushes, you see a deer, bipedal, female if not for the thick black shaft that dangles between her legs. She is crying quietly, face buried in her palms, body curled against a tree. She doesn[apostrophe]t react as you slip in closer, not even noticing you until you're almost on top of you. She gasps loudly when she does notice you, throwing herself back against the tree with wide eyes.";
	wait for any key;
	say "'Don[apostrophe]t look at me!' she cries, falling in against herself, hugging herself to hide her alien form.";
	say "Do you grab her?";
	if the player consents:
		say "You lunge for her and grab a long limbed arm. Her brown fur is soft to the touch, warm as well. She[apostrophe]s wrenched to her feet with a cry, and struggles, but is unable to escape your grip as you haul her back through the city directly for the lab. Sometimes the direct answer is the best one.";
	otherwise:
		say "Do you console her?";
		if the player consents:
			say "You kneel beside her and take a hand. Rubbing gently, you tell her that she[apostrophe]s not ugly at all. She refuses your word at first, but slowly warms as you coo soft encouragements. She suddenly pulls you close and kisses firmly, her slender snout against your face for a moment. She quickly agrees to come back with you to the lab, smiling as she goes.";
			now deerconsent is 1;
		otherwise if libido of player is greater than 50 and cocks of player is greater than 0:
			say "Unsure what to do, you obey the urgings of your [cock of player] cock. You grab her and push her to the ground, belly up. Your hands grab at her generous breasts as you slip into her wet, grasping, cunt. She squeals, at first withs surprise, then increasingly with pleasure, rising her hips to meet your powerful thrusts. Your bodies dance together, her own cock grinding against your belly each time you plunge deep into her. Her cunt tightens like a vice around you before she arches her back and bleats in delight. You can feel your balls clenching in response, and you fill her belly with hot gushes of seed.";
			wait for any key;
			say "Sated, she hugs tightly to you, and agrees to accompany you to the lab, blushing and satisfied looking the whole way";
			now deerconsent is 1;
		otherwise:
			say "Unsure what to do, you stand and wait. She eventually stops her crying and looks up at you with a confused expression. 'What do you want?' she asks, making her way to her hooves. You explain that you[apostrophe]d like her to come with you and she looks around a moment before shrugging, 'I have nothing better to do,' she admits, and follows you, a little sullen.";
	now a unusual creature is resolved;
	move susan to primary lab;
	move player to primary lab;


to say deer attack:
	say "She approaches your fallen form with a smile on her cervine face. 'Little doe, this is where you belong, as part of my herd. You had your chance to be the stag,' she says, tongue rolling across her snout as she reaches to rub over your [skin of player] [breast size desc of player] chest.";
	wait for any key;
	if cunts of player is greater than 0:
		say "Wrestling your hips up into position, she pinches your bottom with her hard fingertips, 'Naughty doe, playing so hard to get. See what you[apostrophe]re missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
		if breasts of player is greater than 0:
			say "Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
		say "With a triumphant bleat, she unleashes into your waiting cunt, powerful squits of virile seed splashing into your belly.[impregchance] You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honies.[if cocks of player is greater than 0] Your [cock size desc of player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [ball size] balls in waves of bliss.[end if] You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily, 'Later.' she says, turning to leave.";
	otherwise:
		say "She scowls, 'You are missing something, doe.' She reaches between your legs, rubbing slowly, the soft fur tickling delightfully at sensitive flesh as she caresses you. Warm tingles of nanite change creep through you.";
		follow the sex change rule;
		if cunts of player is greater than 0:
			say "Wrestling your hips up into position, she pinches your bottom with her hard fingertips, 'Naughty doe, playing so hard to get. See what you[apostrophe]re missing.' She sinks into you with a wet squelch, your mutinous body already warm and set for her arrival as she sinks deeply into your grasping cunt, thick plug snugly held within you a moment before she draws back. Her motions are sharp and powerful, thick balls slapping up against your ass with each movement.";
			if breasts of player is greater than 0:
				say "Her hands wrap around you and she softly teases at your nipples, flicking and pinching at them as she rocks against you. As she adjusts her angle of entry, she makes to grab at your [breast size desc of player] breasts, massaging into the sensitive flesh eagerly, kneading at you as her groin grinds up against your ass, pushing that black cock as deep as it can go.";
			say "With a triumphant bleat, she unleashes into your waiting cunt, powerful squits of virile seed splashing into your belly.[impregchance] You groan with unasked for pleasure, body trembling as climax overtakes you. You clench powerfully around her tool, coating it with your own honies.[if cocks of player is greater than 0] Your [cock size desc of player] dick lurches, then begins to spray against the ground as it abruptly reaches peak as well, emptying your [ball size] balls in waves of bliss.[end if] You slump to the ground and the deer slips off of you, stroking herself a few last times as she eyes you hungrily, 'Later.' she says, turning to leave.";
		otherwise:
			say "She grunts in fustration, 'You refuse to be a proper doe for me,' she complains darkly before rolling you onto your belly, 'No matter, even a man can be made a doe.' she says with a disturbing smile as she hikes your ass up and aligns her heavy block cock to you. She roughly mounts, plunging the thick plug of a member into your poor ass, showing her dominance with her punishing motions. Her hands show her softer side, caressing your front in slow circular rubs, promise of a better future, if you can get past the searing pain and humiliation you are suffering.";
			if cocks of player is greater than 0:
				say "Her soft palm brushes against your [cock of player] member, starting to stroke it in time with her deep pushes into your body. Possible despite yourself, pleasure builds in your loins and spreads through you. You want to release so badly all of a sudden, [cock size desc of player] pole throbbing needfully as she strokes it faster and faster.";
			wait for any key;
			say "She pulls you back suddenly, body rigid as heat begins to spread inside of you from her twitching member.";
			if cocks of player is greater than 0:
				say "Your [ball size] balls lurch and you spray into the air, coaxed on by gentle squeezes of her hand, milking you even as she fills you with her thick seed.";
			say "Her tongue licks over an ear, 'Good doe. You will be welcome in the herd when you learn your place,' she whispers as she draws free and leaves you, bruised but sated. As she goes, you see her scratching lightly at her heavy balls, scheming lustfully of her next conquest.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
To say doestats:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "doe":
			now monster is y;
			break;
	choose row monster in table of random critters;
	now lev entry is level of player minus 1;
	now hp entry is lev entry times 10;
	now dex entry is lev entry minus 3 plus 9; 
	now wdam entry is ( ( lev entry minus 3 ) times 2 divided by 3 ) plus 8;
	say "There are [lev entry divided by 2] other does with her, following her dutifully and gazing at you with their hungry eyes. They look very similar, but lack the antlers.";


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "doe"; [Name of your new Monster]
	now attack entry is "[if level of player is greater than 5][one of]One of her helpers grabs you from behind as she lands a solid punch in your gut.[or]Just as you dodge past one of her strikes, you feel soft hands pawing at your groin, one of her helpers manhandling you with eager roughness.[or]To the cheer of her herd, she headbutts you, sharp antlers stinging powerfully where they strike.[at random][otherwise][one of]She mashes you against the ground, heavy breasts pressed to you.[or]Her thick cock slaps against you as she roughly shoves at you.[or]Thick horns prove to be quite sharp as they poke you.[or]A sudden kick lands in your midsection as she lands a hoof on you.[at random][end if]"; [Text used when the monster makes an Attack]
	now defeated entry is "[if level of player is greater than 5]Her allies array in front of her suddenly, guarding her as they all start to back away. The fight seems to be over, for now.[otherwise]She gives a loud bleat of pain and scowls at you before she takes flight. Her graceful body carries her long and fast away.[end if]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[deer attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A bipedal deer with soft brown fur and creamy off-white belly and undertail. Her nose, eartips and hands are dark hues. Atop her head is a large rack of antlers, proud and powerful. She has large cream covered breasts capped with thick black teats. She has a hungry, lustful look in her eyes, one hand usually straying to her cock, stroking it almost absentmindedly. It is disturbingly human in appearance, ebon-black fleshed with a cream sheath at the base. She has large plum sized balls contained in a creamy colored softly furred sac. Despite her animalistic appearances, she has hair like a human, running down to a little past her shoulders, a little darker than the brown fur of the majority of her form.[if level of player is greater than 5] [doestats][end if]";[ Description of the creature when you encounter it.]
	now face entry is "furry[if Susan is in primary lab], feminine,[otherwise], antlered,[end if] face of an enchanting stag doe. Your eyes burn with a smoldering lust as they look about from the end of your muzzled";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "feminine and graceful looking. You have long delicate arms and hands, capped with blackened fingertips, like hooves that don't compromise dexterity.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "brown furred";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Your butt has a deer's tail over it, [skin of player] on the top, soft cream along the underside. The rest of your ass is quite curvy and [skin of player], hiding nothing. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "pitch black human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws out into a snout, slender with a wide nose, new scents teasing your addled senses as your ears grow long and narrow, twitching towards sounds. Thick fur swells ticklishly over your new contours as a distracting pain builds at the top of your head.[if susan is in primary lab][otherwise] Grand new antler points swell and grow ornately.[end if] You give a pant, long tongue hanging a moment."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your limbs grow long and graceful, slender, feminine. Your nails seem to cover your fingertips in a protective hoof each. Your feet chance more dramatically, becoming deer hooves."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft tingles spread in waves as fur sprouts in odd patterns across you, slowly settling into brown fur across sides and back, and a cream line that runs from under your chin to your groin."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a short, upturned, and furry tail sprouts into being over your deliciously round and spankable [skin of player] ass."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock darkens until it is entirely black, but human shaped."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 12;
	now sta entry is 18;					
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 5;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 70;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "doe":
		if humanity of player is less than 10:
			if susan is in primary lab:
				say "Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When rescue does come, she escorts you to society and continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
			otherwise if susan is in hidden lab:
				say "Fear grips your heart and you take off running like the wind until you reach Susan's arms, leaping into them and curling up against her a moment. She calms you and pets you. Despite your loss of humanity, she remains clear, and cares for you as a mother, even if she likes playing with you like a lover. When Dr Mouse leaves the city, she goes with him and takes you into hiding with them.  As the doctor continues his work in the shadows, the deer continues to care for you to the end of your days, never leaving you wanting for company, or anything else.";
			otherwise:
				say "You can feel your humanity drifting away from you and flee to where your instincts urge you. You find the herd of deer, led by that magnificent stag. On seeing you, Susan steps forward and welcomes you into her arms, holding your shivering form tight to herself, 'Now you see?' she whispers, then lays you down, rutting you to the cheers of the others, many of whom stroke their black cocks over your coupling bodies, spraying you and her with hot strings of seed even as she fills your belly and officially claims you as her own.[line break][line break]When she is done, she rises from you, and one of your pack sisters takes her place, rutting you just as eagerly. She rolls over, putting you on top[if cunts of player is greater than 0] and leaving the way open for another sister to come up and claim your ass, sandwhiching you between as you're fucked by[otherwise] fucking you wildly before passing you along to[end if] each sister in turn, passed around twice through the entire circle of adoring deer. By the time it is done, you are sore but satisfied, and begin your life as a member of the herd.";
		otherwise:
			if susan is in primary lab:
				say "When the rescue comes, you return to Susan and leave the city hand in hand. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
				if orthasstart is 4:
					say "Susan remains your loving and loyal doe, bearing twin foals from your union.  Your new family convinces you to settle down with them in a life that, though perhaps unplanned, you still find rewarding.  Her work assisting Dr. Matt's research continues to yield fascinating discoveries.[line break][line break]Your two relationships cause some friction at first, but eventually Susan and Orthas learn to live with, and even rely on and care for each other in times of trouble.  Your children grow up together, well-protected and cared for.  Dr. Matt's exposure to your family causes him to reconsider some of his less ethical approaches to science.";
			otherwise if susan is in hidden lab:
				say "When the rescue comes, you return to Susan and leave the city hand in hand, using your false identities as cover. Despite any other loves or friends you pick up, she remains your favored. Her belly is swollen round often with the fruit of your couplings, and she accompanies you almost everywhere, tending to your every whim. You are both happy with the arrangement, and remain together, loving, for the rest of your long lives, eventually tended to by the children you sired and raised so well.";
			otherwise:
				say "Your sleek lines attract many. You easily secure a job as a secretary, but live for the weekends, when you'd hit the clubs and dance the night away to the gawkings of others. Though some humans remain fearful on basis of your being mutated at all, more than a few approach you openly, seeing your attention and affection. You show them a good time, on the dance floor, or the bedroom floor, depending on how much you like them. Man, woman, you find yourself not caring as much between the two.";
	if bodyname of player is "Reindeer":
		if humanity of player is less than 10:
			if susan is in primary lab:
				say "     Drawn to it by some fading memory, you fly to Trevor Labs, spreading holiday cheer in your wake.  A rather angry looking dragon comes out, shaking its fist at you and yelling about having to shovel snow now.  You start to laugh, but a fiery blast sends you banking off.  But then there is a joyous yell as a doe runs out and pushes the dragon aside, right into a snowbank.  Feeling a connection to this lovely creature, that fading memory, you zip down and scoop her up into your arms.  You fly off with her as the scaly Scrooge yells 'Good riddance, you pests.'  The doe clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body.  Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd.  When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
			otherwise if susan is in Hidden Lab:
				say "     Drawn to it by some fading memory, you fly the City Hospital, spreading holiday cheer in your wake.  Some angry jaguars come out, yelling and shaking their fists at you.  But when several silvery vixens come out and start playing in the snow nude, they seem to get in the spirit of things and join the girls in the fun.  Several mismatched creatures, which your mind interprets as mismatched toys, come out as well to make a snow fort.  You hear a joyous yell or surprise and see an elated doe bouncing up and down at one of the upper story windows, yelling and waving her arms wildly to get your attention.  When she sees you've noticed her, she motions for you to wait, dashes to the stairs and comes running out.  As she climbs down the steps, a mouse in a lab coat grabs her by the wrist, trying to hold her back.";
				say "     Angry that this little Scrooge would try to keep her from enjoying your winter wonderland, you zoom down to them.  You land and shove the mouse to the snowy ground all in one smooth motion.  But when you do, all sound of merriment around you stops.  There is a collective gasp and all eyes are locked on you.  The doe clutches you tightly and whispers fearfully for you to escape.  Wrapping your arms around her, you do just that as the hospital hordes start to charge.  As you fly off with your doe, you can see the mouse stomping about as he berates the others, all cringing fearfully before his ire, slinking back into the gloomy hospital.";
				say "     Having rescued your doe from the grinchy mouse, you soar across the city with her in your arms.  She clutches you tightly, kissing you again and again, saying how she knew you'd come back and how you have a lovely body.  Soon you are mating in the air and she's becoming more and more a holiday-infused reindeer like yourself, joining the herd.  When she start to fly on her own, your lovemaking gets even more acrobatic and the snowfall increases, spreading more holiday cheer over the infected city.";
		otherwise:
			if susan is in primary lab:
				say "     Susan happily joins you when you move north, sharing your home.  At first, she's a merely tolerates your collection of holiday kitsch.  But she loves you deeply all the same, and you her";
				if cocks of player is 0 and "Sterile" is not listed in feats of player:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.  Every year, come Christmas Day, you give birth to a new fawn";
				otherwise if cocks of player is 0:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				otherwise:
					say ".  You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection.  Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like.  Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if cocks of player > 0] while you rut her from behind[end if].";
			if susan is in Hidden Lab:
				say "     Susan happily joins you when you move north, sharing your home.  Dr Mouse is a little upset about losing his assistant, but you find him a bit grinchy and always keep your dealings with him brief.  At first, she a merely tolerates your collection of holiday kitsch.  But she loves you deeply all the same, and you her";
				if cocks of player is 0 and "Sterile" is not listed in feats of player:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.  Every year, come Christmas day, you give birth to a new fawn";
				otherwise if cocks of player is 0:
					say ".  She's a reluctant buck at first, but is soon rutting you every night, much to your delight.";
				otherwise:
					say ".  You rut her often and she ends up giving you a new fawn every year for Christmas.";
				say "     As the holiday season starts to come around, she begins to get more and more into the spirit of things, helping you decorate and even adding to your collection.  Subtly at first, but more quickly as that special day gets nearer and nearer, she grows more beautiful and caribou-like.  Soon enough, she's helping you 'make' the egg nog for the office Christmas party with a sexy Mrs. Claus outfit on her fully reindeer body[if cocks of player > 0] while you rut her from behind[end if].";

to deerfy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "doe":
			now monster is y;
			break;
	infect;
	follow the sex change rule;
	
instead of fucking the susan:
	try conversing the susan;
			
instead of conversing the susan:
	if deerconsent is 0:
		say "Rather than talk to you, she avoids you entirely. Eventually you give up in trying to approach her at all as she storms off to another part of the labs.";
		move susan to dark basement;
		remove susan from play;
		now deerconsent is 2;
	otherwise if deerconsent is 1:
		say "She smiles as you approach her, and reaches to take one of your hands, 'Ignore the creep in the hazmat,' she says, 'This is just about us. I want a mate, a partner. Will you be it?' she asks as she leans in and licks your hand once, looking at you hopefully with perked ears and a twitching tail.";
		say "Will you agree to be her mate?";
		if the player consents:
			say "'Really! Fantastic. I will be your doe. You will be my stag,' she says with a dreamy sigh.";
			if "Female Preferred" is listed in feats of player:
				say "She frowns slightly, 'Oh dear, uh, pun not intended. You simply can not be my stag. I can smell it. Sorry...' She sighs and turns away, walking off.";
				move susan to dark basement;
				remove susan from play;
				now deerconsent is 2;
				stop the action;
			say "She wraps her arms around you in a firm hug, pressing needfully against you. Warm tingles sweep over your form as change is felt building, 'Go talk to the doctor. I will wait for you.'";
			deerfy;
			now deerconsent is 2;
		otherwise:
			say "She looked crushed at your refusal, but instead of arguing the case further, just sulks and wanders off.";
			move susan to dark basement;
			remove susan from play;
			now deerconsent is 2;
	otherwise if deerconsent is 2:
		if hp of doctor matt is less than 8:
			say "She blushes and nudges you, 'You should talk to the Doctor first.'";
		otherwise:
			if libido of player is less than 50:
				say "She rubs up against you gently and runs her hands across your [skin of player] chest, 'It is good to see you,' she whispers as she snuggles close, but makes no attempt to push it further than soft chatter and close hugs.";
				deerfy;
			otherwise:
				now libido of player is 0;
				if cocks of player is less than 1:
					say "She grinds against you, a hand grabbing between your legs in an obvious groping before her long ears fall, 'Poor baby!' She leans up to kiss you, lips to lips, infectious tingling sweeping through your body in a powerful rushing wave.";
					deerfy;
					say "'Come back later, we will have some fun today,' she bids with a wag of her short tail and a smile on her snout.";
				otherwise:
					if cock length of player is greater than 12:
						say "She eyeballs your [cock size desc of player] shaft a moment before she shakes her head vigorously, 'Too large for me,' she exclaims, then leans in. Her soft warm tongue bathes over your [cock of player] pole as she strokes it with her soft palms. Sharp tingles run through your loins as she tries to bring it down to a better size for coupling.";
						deerfy;
						follow the sex change rule;
						if cock length of player is greater than 12:
							say "She pouts a bit as you remain too large for her. Her hands continue to gently pull at your excited length even as she looks disappointed, 'We can try again later.' she promises, leaving you brimming with unsated sexual lust, balls rumbling with seed. Oddly, you feel no urge to approach her again immediately.";
							stop the action;
						otherwise:
							say "'Now that is much better,' she decides, squeezing your member with a loud growl of lust, 'Let[apostrophe]s try that one more time.'";
							now libido of player is 100;
							try conversing the susan;
					if cock length of player is less than 6:
						say "She kneels down in front of you and cups your [cock size desc of player] [cock of player] tool gently, stroking along it with the bare tips of her furry fingers. She firmly strokes along your swiftly hardening shaft as she gazes up into your eyes, 'My great stallion, you need to be as large on the outside, as you are on the inside.' You aren[apostrophe]t entirely sure what part of you is big on the inside, but cease to care as her snout descends over your cock and begins to suckle noisily at you. Her skilled fingers dip lower to caress your [ball size] orbs in slow teasing as she bobs against you, working you to greater heights as the tingle of change sweets through you, intensifying with every passing moment.";
						deerfy;
						follow the sex change rule;
						if cock length of player is less than 6:
							say "The pleasure haze ebbs just slightly as she pulls free of you and returns to slow stroking, 'Still not quite large enough to sate me, my virile stallion. We will just wait a little longer.' Her tail wags behind her excitedly as she leans in to lap over the head of your shaft, insufficiently sized or not, and her strokes become firm and fast. Your groans mix with her own as if she could feel your pleasure as if it were within her own body. She squeezes at your entire member with her softly furred paws and your balls clench. Your seed sprays in great milky shots across her long snout, drawing a soft bleat of approval from her. Her long tongue darts to collect the treasure as she raises to her feet, 'Come back later, we can try again.'";
							stop the action;
						say "With your [cock size desc of player] member now large enough to please, she pushes you back, popping free of you with a lick over her lips. She turns slowly, hands running over her athletic breasts, her wide hips, bending over as she completes the turn away from you. Thick but short tail flits upwards to expose her damp and dewy lips to your view, hot, flush with her mounting arousal. Mounting is just what you had in mind, and you waste no time grabbing her and pulling her back onto your thick member, starting to drive harder and faster as your hands settle on her hips to pull her back against your eager pounds.";
						wait for any key;
						say "She is no idle partner, driving herself back against every hungry push, groaning, gasping with rising bliss. The feel of her wet, grasping cunt wrapped snugly around your [cock of player] member has you almost dizzy as you rock smoothly against her. Your balls pull up sharply, starting to fill her womb with thick gushes of hot seed, making her belly swell forward with the precious load, her body trembling under your own as she shares in the climax with you, squeaking once before a full bleat escapes her.";
						wait for any key;
						say "You settle down with her, kissing her and licking across her snout as she returns the affections to your face, hugging close. As the lust drains from you both, you eventually get up together. Sharing one last hug,  you return to the task of surviving.";
						stop the action;
					say "She grabs directly for your [cock size desc of player] [cock of player] cock and grins up at you as she strokes it, 'It is just right,' she declares as she pushes you back to the ground, guiding you to lay down and slipping up on top of you. Her warm frame presses softly as it goes and she lines herself up, one hand holding the thick tip of your member, the other parting her nethers. She sinks down along your member, shuddering as it fills her grasping tunnel perfectly. Her wet labia sink down to your groin as she settles on you, breathing hard and just enjoying the feelings for the moment as she gazes into your eyes with a burning affection.";
					wait for any key;
					say "You reach for her sides, trailing upwards and caressing her chest. Fingers catch thick black teats and her back arches towards you as you flick and tease at them. Her hips raise and fall a few inches at a time, wetly sliding across your excited member, wedged deep inside of her.  Her own member stands stiff and proud, twitching with her pleasure and dripping thick bits of clear precum along its length even as she rides against you, taking your cock deeper with every drop of her curvy form against you. Your hips are soon moving faster, driving up, bouncing her in firm shuddering motions. Her breasts heave against your grasping hands are you hold her, drawing her down against your increasingly frantic ruts.";
					wait for any key;
					say "She leans back away from your hands, her hands settling on the ground as she bends almost backwards, rutting in a bent position. Your hands find her belly and sides, rubbing and caressing her, hungry eyes taking in the bulge that your own cock creates along her belly, stretched taut in her new position. She moans softly as her shaft tenses, and begins to fire, splattering herself with her seed as it arcs through the air in powerful streams. A small part of yourself wonders what it would feel like to be filled with that same seed, but that part is quieted for the moment as your own shaft tenses and lurches, filling the willing doe with your fertile offering.";
					wait for any key;
					say "She straightens, then flops on top of you, squiring as you round her with your cum. Her messy front presses stickily to your [skin of player] front as she hugs tightly to you, heedless of the sticky warmth she shares with you. When your shaft has calmed and lays half firm within her, she leans up to kiss you on either cheek, 'I love you.' she whispers. You smile, grabbing her at the bottom and squeezing her close to snuggle for a moment, enjoying the peace before you are forced to return to other tasks.";

	
[Susan is in primary lab.]

to say deer den scene:
	say "As you enter the den, you give a quick look around. It's dry and clean, with a large bed propped in a corner. It looks like someone grabbed a bed and dragged it down here, but it is also clean and soft looking. Laying across it is the deer. She's smiling at you, laying on her belly, breasts gently compressed beneath her, head on her hands as she gazes at you. Behind her, her tail sways slowly over her wide, round, hips, '[one of]I am so glad you took some time to visit, lover. We have so much to talk about, to do...[or]I feel as horny as anything, you are just in time to keep me company.[or]You have no idea how happy you just made me, visiting me. It gets so lonely down here.[at random]'";
	say "Do you want to stay?";
	if the player consents:
		now deerconsent is 1;
	otherwise:
		say "You decide you don't really want to spend time with her, and head back for the library.";
		move the player to Grey Abbey Library;
		follow the turnpass rule;
		stop the action;
	if bodyname of player is "doe":
		say "'You are still looking mighty fine. Come over here and let me give you a kiss,' she beckons. As you slip up onto the bed to join her, she wraps her arms around you, pressing her soft warm scales to your [skin of player] front, grinding gently as she presses her snout to you and gives a slow kiss, quiet for long moments as her hands wander across your back eagerly. Your body grows warm, responding to her desire for a mate, changing to be more like her ideal catch.";
	otherwise:
		say "'You are still missing a little something,' she chastises gently, patting the bed for you. When you slip up beside her, she slips in against you, one hand reaching between your legs, rubbing slowly as she begins to nuzzle across your neck and cheek, nipping carefully with those large teeth. As she cuddles in closer, your body grows warm, nanites rushing to modify you towards her ideal lover.";
	wait for any key;
	deerfy;
	wait for any key;
	say "Seemingly satisfied, at least for the moment, she rolls up on top of you with a smile, 'Now what to do...'";
	if a random chance of 1 in 3 succeeds: [ She just talks ]
		say "'I want to talk, get to know you,' she says, leaning in and snuggling against your front. She chats with you quietly as she gropes and fondles at you, drawing out your name and your old job, and telling you about her old life as a bus driver. She confides that she loves her new body. 'I just want someone to share it with,' she says, nuzzling you with her great snout as she speaks, 'We can be together, have little allideerettes. It would be nice....' she assures in a sultry whisper.";
		say "Her words seem to wriggle insidiously in your mind, feeling like a better idea by the moment. Though she does not change your body any further in the long chat, your mind feels a bit bent, and you look forward to your next visit all the more for it.";
		decrease the humanity of the player by a random number from 5 to 20;
	otherwise: [ Sex]
		if a random chance of 1 in 2 succeeds and cocks of player is greater than 0: [ She wants to be fucked]
			say "She  rolls over and raises her thick tail over her back, exposing the pinkened lips nestled between her large thighs, 'Come show me just how much a stud you are,' she invites. Your [cock size desc of player] [cock of player] cock[if cocks of player is greater than 1]s[end if] rise[if cocks of player is 1]s[end if] to attention quickly and you scramble up to accept the offer, perhaps faster than you normally would. Something about her round rump just seems to call to you, and you heed the call, slamming home into her.";
			if cock length of player is less than 4:
				say "She gets an odd expression when you sink into her, then looks over shoulder, 'Mi amor, you need help,' she croons, curling her tail around you and squeezing. The warmth returns to you, filling you with hot tingles that slowly sink into your groin as things begin to change down there, swelling up inside the deer as she gasps and coos. The pleasure of changing while sheathed in the fertile female burns at your mind, eroding your human sensibilities.";
				follow the sex change rule;
				follow the sex change rule;
				decrease the humanity of the player by 5;
			if cock length of player is greater than 10:
				say "She squeals loudly as you try to cram your oversized manhood into her, but it's too much. She scampers away from you in a wriggle, but before you can be disappointed, you feel her soft hands on you, stroking firmly at you, 'Poor little dear,' she says with a smile, 'I will help us both,' she promises, engulfing you in the warm heat of her mouth, lapping at you with a large tongue and stroking at you with her skilled fingers. Your body tingles with pleasure, and change, as your genitals throb with the tell tale hint of transformation as she works you towards a peak rapidly. The changing throbbing reaches its climax just as you do, spilling your seed into her waiting maw.";
				if cock width of player is greater than 20:
					say "The force and volume of your seed is so great that it overflows her long snout and runs down her front in great rivers, painting her heaving breasts in your pearly virility. She groans as her belly distends, gulping down as much as she can even as it gets everywhere else, leaving her quite a mess.";
				follow the sex change rule;
				decrease the humanity of the player by 5;
			otherwise: [ just right! ]
				say "You pull back, tool glistening with the generous lubricants of the reptile woman. She pushes back against you, sinking you back into herself as she gives a soft hissing growl. You begin to dance with her, rocking smoothly against one another. She mates like a wild animal at first, as if desperate to prove what is going on to the world itself, slamming her deliciously soft cheeks into your thighs. Her own cock wags with each movement, dripping onto the bed with her excitement as you moan softly together.";
				say "You reach for one of her legs and lift it up, thrusting up into her and making her frame jiggle with every slam into her, feeling yourself sink all the deeper for the new angle. She groans and praises you, tail rubbing against your chest as she flexes powerfully around your [cock of player] shaft. All too suddenly, your [ball size] orbs contract, and you can feel your vital fluid rushing up into the scaled female. She hisses, and sprays up into the air even as her passage clamps like a vice around you, drawing out the seed towards her hungry womb.";
				wait for any key;
		otherwise if a random chance of 1 in 2 succeeds: [ She fucks]
			if cunts of player is greater than 0:
				say "She presses firmly to your front, rubbing chests together in slow circles as her firmness grows against you, poking into your belly lightly, 'Gonna make you squeal,' she says with a smile, reaching for your hips and pulling up, she shimmies to light herself up to enter your moist cavern without delay.";
				if cunt length of player is less than 8:
					say "Her cock stretches your relatively small cunt as it spears up into your cavern. By the second motion, find find yourself gushing wet, making her motions all the easier as she works at you, loosening your sex with her eager thumps.";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
				otherwise if cunt length of player is greater than 12:
					say "She sinks easily into your gaping hole, thrusting with loud lewd slurps as she grinds and groans with the pleasure of your hot tunnel around her eager shaft, not minding your large nature at all.";
				say "She wraps her arms around you in a fond embrace, rubbing her scaly cheek against your own as she coos soft delightful things to you, her words echoing in erotic tingles in your body even as she starts to piston against you, filling you with her urgent and virile pole. Her thick tail thrashes about with every movement even as your own hips start to rise to meet her, crashing together in a dance of love and lust.";
				wait for any key;
				say "Your belly grows warm as she ruts harder, her soft words seeming to make your womb tingle fiercely with a strange but deliriously wonderful sensation. You are not even sure when she spilled over the top, but you are being filled with thick seed and give out a deep sluttish moan as she clings to you, keeping her shaft plugged tight as the thick deer seed flows.[impregchance]";
				say "Satisfied, she draws from you with a wet pop, 'Perfect, my lovely mate. You should stay... But you don[apostrophe]t have to, think about it, come back.' She blows a kiss at you and leans back on her bed, looking content for the moment as your cunt tingles with lingering pleasure.";
				wait for any key;
			if cunts of player is less than 1:
				say "'I want to be on top,' she says as she rubs over your belly and chest slowly, 'But you are missing the part I want to fuck most. How about I let you choose?' She leans in close, rubbing her nose to yours, 'Want me to take that pretty ass of yours?'";
				if the player consents:
					say "With your approval, she grins and flips you right over. She runs her soft scaly palms over your rump as she rumbles appreciatively, 'Don[apostrophe]t you worry one bit. Mother will be gentle.' She licks a finger, running it across the wet surface of her tongue before pressing the dangerously sharp tip of her claw to your puckered back door. She gently nudges your ring apart, wriggling the finger into your tight flesh as she leans in over you, 'Open up for mother, relax...' Her voice soothes you, and you find yourself relaxing at her command, allowing her digit to slowly push past, embedded fully in you. You can feel it moving inside of you as she insures your readiness.";
					wait for any key;
					say "She draws the finger back, then clambers up behind you fully, her hot member rubbing against your ass cheeks as she leans over you. She hugs you from behind, snuggling against your back, her breasts rubbing slowly against you as she nudges herself into position, and begins to slowly rock her ready tool into your loosened doughnut. She slips in almost painlessly, and what little discomfort is soon forgotten as her rod begins to stroke into you, teasing sensitive portions of you as she pulls you back into her eager motions. She licks at your ears from behind as she couples, growling soft appreciations. Her balls slap up against you with each, increasingly fast, thrust.";
					wait for any key;
					say "With a load groan, you feel her body stiffen over your own, and her shaft swell and explode powerfully into you. Pleasure explodes abruptly, causing you to seize in a climax of your own, echoing her in tremble and timber as she holds you preciously close, clutching almost desperately as the feelings pass. As composure returns, she pulls free of you and swats you smartly on the bottom, 'Good, you made momma really happy. You come back, any time. Momma always has time for you.' she insists, sending you on your way.";
				otherwise:
					say "'Well then, we still have one other option.' She flashes her teeth, and scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close, 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
					wait for any key;
					say "Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you, 'Good. I needed that. Maybe next time, you get a turn,' she winks, then reclines, looking ready to relax.";
		otherwise: [She makes the player pleasure her orally]
			say "'Well then, I know just what to do.' She flashes her teeth, and scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close, 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
			wait for any key;
			say "Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you, 'Good. I needed that. Maybe next time, you get a turn,' she winks, then reclines, looking ready to relax.";
	wait for any key;
	decrease the humanity of the player by 5;
	if the humanity of the player is less than 10:
		end the game saying "You decide against leaving after all.";
	say "You head home afterwards.";
	move the player to grey abbey library;
	follow the turnpass rule;

deer Den is a room. "[deer den scene]". It is unknown. It is fasttravel. It is private.

After examining deer den:
	say "Stuff happens, then you go home.";
	move the player to Grey Abbey Library;

[ Edit this to have the correct Name as wall]
Deer ends here.