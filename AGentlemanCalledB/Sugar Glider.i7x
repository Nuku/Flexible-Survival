Version 2 of Sugar Glider by AGentlemanCalledB begins here.
[Version 2 - No sex, Fellatio + Sugar Ferret theft by Stripes]

"Adds a Sugar Glider creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

nosugarglidersex is a number that varies.
sugarglidernote is a truth state that varies. sugarglidernote is usually false.
when play begins:
	add { "Sugar Glider" } to infections of girl;
	add { "Sugar Glider" } to infections of furry;
	add { "Sugar Glider" } to infections of humorous;

to say losetoSugarGlider:
	now nosugarglidersex is 0;
	if bodyname of Player is "Sugar Ferret" or facename of Player is "Sugar Ferret":
		if HP of Player > 0:
			say "     Giving up on resisting the sweet marsupial, you allow her to push you to the ground in her eagerness, stripping you of your clothing and gear in the process. 'Yay! Let's have some fun, you stinky [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random],' she says with a giggle.[run paragraph on]";
		else:		[steal before]
			say "     Beaten by the giggling marsupial, you are unable to continue resisting her. She pushes you to the ground, stripping you of your clothing and gear in the process. 'You [one of]soda jerks[or]fizz heads[or]carbonated tube rats[or]candy hoarders[or]pop guzzlers[at random] don't normally put up nearly so much of a fight. You must really be holding out on me.' She leans in closer, giving you an exaggerated, inquiring look before grinning and licking her long tongue across your cheek. 'Is that it? Got lots of candy you're trying to hide? I think you're holding out on me, honey,' she says with a playful giggle while her paws and bushy tail run tickling across your body.";
			say "     Despite yourself, you can't help but squirm and laugh at the frantic tickling. In the throes of laughter, you can't resist as she paws through your stuff with one paw while the other and her tail keep you giggling";
			if carried of chips > 0:
				say ". Finding your stash of snacks, she swipes some with an exaggerated 'Ah-ha!' and stashes it away. Having claimed her prize, she turns her attention to you now, eager to celebrate her find.[run paragraph on]";
				decrease carried of chips by 1;
			else if carried of soda > 0:
				say ". Finding your stash of snacks empty, she instead turns her attention to your pop and swipes one. 'Well, since you've not got any candy for me, I guess I'll take this instead.' She gives your cheek another lick. 'Oh, don't worry, hon. I'll stop by later and trade it back for some sweet, sweet candy.' That said, she turns her attention to you now, eager to celebrate her find.[run paragraph on]";
				decrease carried of soda by 1;
			else:
				say ". Finding your stash of snacks empty, she mock-pouts and grinds her twin cunts against your leg. 'Nothing for me at all? How about some sweet sex then, you [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random]?' she says with a giggle as she turns her attention back to your body.[run paragraph on]";
	else:
		if HP of Player > 0:
			say "     Giving up on resisting the sweet marsupial, you allow her to push you to the ground in her eagerness, stripping you of your clothing and gear in the process.[run paragraph on]";
		else:
			say "     Beaten by the giggling marsupial, you are unable to resist as she pushes you to the ground, stripping you of your clothing and gear in the process.[run paragraph on]";
	if Player is male and a random chance of 1 in 3 succeeds:	[69]
		say " The glider climbs atop you, moving into a 69 position. This gives you an eyeful of her two dripping, sugary snatches as her sweet waters drip out onto your lips. When her long, dexterous tongue slides along your cock, wrapping around it and squeezing it wetly, you can't help but moan, letting some of her juices drip out onto your tongue. With the taste of her saccharine syrup flooding your senses, it's not long before the sweet aroma of the drooling lips before you becomes too much. You begin licking and sucking as those syrupy folds, alternating between her pussies as best you can to further please your giggly companion. As you're working your tongue deep into one of her cunts, the sugar glider lowers her muzzle down, engulfing your cock and sucking down on it firmly.";
		say "     Your tongue and lips work at those sweet folds of hers, lapping at that candy-sweet clit of hers. She moans and giggles in delight around your throbbing manhood while her agile tongue plays across it. She even slips her tongue out and curls it around your balls, licking and squeezing at them as she sucks you off. Having two honeyed treats to dig into, you lap at both her pussies, using your fingers to please the second while you eat out the other.";
		WaitLineBreak;
		say "     The overpowering sweetness of the sugar glider's feminine juices fills your mouth as she cums, sending you over the edge as well. Even as you work to pump your [Cum Load Size of Player] load into her, you continue licking and sucking at her quivering folds, drawing out her climax as long as you can to get as much of the sweet nectar as possible while her second cunt soaks your face and hand in her sticky mess. [if Cock Count of Player is 1]As you're finishing up, she switches to licking at your cock like it's a lollipop, getting your last few spurts of seed to[else if Cock Count of Player is 2]With her muzzle sucking down your load from the penis in her mouth, she strokes your other shaft with her paw, letting your seed[else]With her muzzle sucking down your load from the penis in her mouth, she strokes your other shafts with her paws, letting your seed[end if] splatter across her cute, pink muzzle.";
		say "     Sitting up, she grinds her crotch against your face a little longer, enjoying her victory while licking your semen from herself. Once cleaned up, the glider gives you one last gleeful titter before springing to her feet and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
	else if Cock Count of Player is 1: [Male PC 1 cock]
		say " The glider looks a little disappointed as she discovers your single member, making a cute pouty lip as she teases your [cock of Player] cock to full attention, before positioning herself over your groin and aligning your shaft with one of her dual cunts. She slowly descends over your member, enveloping your flesh in her syrupy folds. Once fully hilted, the giggling sugar glider leans forward over top of you, pressing her large soft breasts against your body as she presses her short muzzle to your lips, her long, dexterous tongue slipping into your mouth as she kisses you deeply, filling your mouth with her sickly sweet taste.";
		say "     After breaking the kiss, the glider stares down at you with a smile for a moment before she reaches for your hand, pulling it towards her unfilled cunt and stroking your fingers across her sticky folds until you begin to finger her wanton passage yourself, leaving her free to massage and fondle her pillowy breasts as she begins bouncing happily in your lap. The delightful squeezing of her cunt around your shaft as she rides you is quite distracting, but you do your best to focus on pleasuring her second cunt, working your fingers deep into her syrupy folds to ensure your lovely companion is satisfied. Your effort is soon rewarded, her giggles giving way to long moans of delight as your combined efforts quickly push her to climax. With an adorable squeal the sugar glider reaches her peak, her feminine passages clamping down around your cock as her orgasm hits, pushing you over the edge as well, as her second cunt soaks your hand and groin in her sweet nectar.";
		WaitLineBreak;
		say "     As her climax subsides, the glider leans forward once more, giving you another quick kiss on the cheek before rising to her feet, allowing more of her sweet-smelling syrupy mess to drool from her dual cunts as she pulls free of your shaft. With a smile she reaches down into the pouch on her belly and pulls out a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random], slipping it into your mouth with a cute titter before [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else if Cock Count of Player > 1: [Male PC 2+ cocks]
		say " Almost bouncing with excitement as she reaches for your [cock of Player] cocks, the glider eagerly teases you to full erection before positioning herself over your groin and aligning a shaft with each of her dual cunts. With a gleeful titter, she slowly descends over your [if Cock Count of Player is 2]twin [end if]shafts, enveloping your flesh in her syrupy folds. Once fully hilted, the giggling sugar glider leans forward over top of you, pressing her large soft breasts against your body as she presses her short muzzle to your lips, her long, dexterous tongue slipping into your mouth as she kisses you deeply, filling your mouth with her sickly sweet taste.";
		say "     After breaking the kiss, the glider stares down at you with a smile for a moment before she begins happily bouncing in your lap. The delightful squeezing of her cunts alternates between your shafts, ensuring you don't get a moment of relief from the pleasurable sensation she so eagerly provides as her ride continues. Lost if the throes of her delight, your lovely companion doesn't even notice as you reach for the bouncing pillowy breasts just above you until you give them a playful squeeze, causing her to meep in surprise. As her rhythm returns, you fondle her lovely breasts and tease her nipples, her giggles giving way to long moans of pleasure as your combined efforts quickly push her to climax. With an adorable squeal, the sugar glider reaches her peak, her feminine passages clamping down around your cocks as her orgasm hits, pushing you over the edge as well.";
		WaitLineBreak;
		say "     As her climax subsides, the glider leans forward once more, giving you another quick kiss on the cheek before rising to her feet, allowing the sweet-smelling syrupy mess to drool from her dual cunts as she pulls free of your shaft. With a smile, she reaches down into the pouch on her belly and pulls out a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random], slipping it into your mouth with a cute titter before [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else:	[Female/neuter PC]
		say " Making a cute pouty lip as she discovers you lack the appropriate equipment to satisfy either of her obviously eager cunts, the sugar glider leans forward and gives you a quick kiss, her long, dexterous tongue slipping into your mouth for a moment, filling your mouth with the sickly sweet taste of her saliva before standing up and positioning her dual cunts above your face. With your appetite already wetted by her sugary kiss, it's not long before the sweet aroma of the drooling lips before you becomes too much. You begin licking and sucking as those syrupy folds, alternating between her pussies as best you can to further please your giggly companion. As you're working your tongue deep into one of her cunts, the sugar glider presses her groin forward, forcing you to focus your attention on one pussy while she begins fingering the other, her giggles giving way to long moans of delight as your combined efforts quickly push her to climax.";
		WaitLineBreak;
		say "     The overpowering sweetness of the sugar glider's feminine juices fills your mouth as she cums. You continue licking and sucking at her quivering folds, drawing out her climax as long as you can to get as much of the sweet nectar as possible while her second cunt soaks your face in her sticky mess.";
		say "     Staring down at you, your face still half buried in her groin, the glider gives you one last gleeful titter before springing to her feet and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
	if ( bodyname of Player is "Sugar Ferret" or facename of Player is "Sugar Ferret" ) and HP of Player > 0:	[steal after]
		if carried of chips > 0:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together. Looking towards her departing figure, you see her turn back and wave tauntingly with the snacks she's stolen tucked into her pouch. She giggles and gives her tail a teasing flick as she rushes away, making her escape.";
			decrease carried of chips by 1;
		else if carried of soda > 0:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together. Looking towards her departing figure, you see her turn back and wave tauntingly with the soda she's stolen tucked into her pouch. She giggles and gives her tail a teasing flick as she rushes away, making her escape.";
			decrease carried of soda by 1;
		else if a random chance of 1 in 3 succeeds and sugarglidernote is false:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together. It doesn't seem that anything's been taken, but there is a note left there. 'Next time, make sure there's something for me to swipe, you stupid [one of]ferret[or]tube rat[or]fizz head[or]soda jerk[at random]. XOXOXO.' It's even got a pink, sugary imprint of her lips on it. Looking towards her departing figure, you see her turn back and wave with a giggle before making her escape.";
			now sugarglidernote is true;
		else:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together. Thankfully, there doesn't seem like anything's been taken. Looking towards the departing figure, you see her turn and [one of]make a rude gesture[or]flick her tail teasingly[or]blow you a raspberry[or]give her rear a shake[at random] before disappearing from sight.";


to say beattheSugarGlider:
	say "     Beaten, the giggling sugar glider falls to the ground. She looks up at you with a coy grin, putting her body on display as she traces a finger along the outer lips of each of her cunts, trying to entice you to take part in a different game";
	if nosugarglidersex > 2:
		say ", but you have little interest in the ditzy marsupial. As with the others of her kind before her, you shake your head and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else if Player is not neuter and ( Libido of Player > 40 or bodyname of Player is "Sugar Ferret" or facename of Player is "Sugar Ferret" or bodyname of Player is "Sugar Glider" or facename of Player is "Sugar Glider" ):
		say " and the sexy display is quite tempting. Will you take part in some fun with the beaten sugar glider? (Y/N)";
		if Player consents:
			now nosugarglidersex is 0;
			say "     Deciding to have some fun with the eager glider, you drop your gear and move towards her[run paragraph on]";
			if Player is male and a random chance of 1 in 3 succeeds:	[fellatio]
				say " front. She gives a disappointed squeak as you grab her head and pull it towards your crotch instead of using your manhood to satisfy her need, but you're more in the mood for some quick, oral relief. Despite not getting what she wanted, the horny marsupial smiles and seems quite pleased to lavish attention upon your [cock of Player] cock[smn].";
				say "     Her saliva smells sweet and is a little sticky, but that tongue of hers is a delight. The long, dexterous tongue slips out and runs across your maleness, licking your manhood and balls. You are soon fully hard and dripping precum across your lustful prize's lips. She welcomes your [cock size desc of Player] cock into her muzzle, sucking at it greedily while her paws grip your ass. The sugary scent of the horny girl has gotten you quite excited and you thrust firmly into her slick muzzle while running your fingers through her cotton-candy fur until you cum with a groan of ecstasy. The sexy marsupial swallows down your load, the scent of her arousal growing much stronger in the air as she orgasms as well, leaving wet patches of her juices on the ground and running down her thighs as she fingers her twin pussies to satisfy herself.";
				WaitLineBreak;
				say "     Having been feed a tasty treat and had a crashing climax of her own, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her orgasm. Pulling your still-twitching member from her syrupy muzzle, you take a moment to wipe it across her soft fur. You gather up your things, give her unfucked holes a teasing fingering and grin at her needy moans. You head off with a noticeable spring in your step after the sugary encounter.";
			else if Player is male:
				say " supine form. With a cheer she spreads her legs before you, and with her dual cunts now on full display, you quickly move over the giggling glider and find yourself pulled into a tight hug. Her long, sugary sweet tongue slips into your mouth as she kisses you deeply, her sickly sweet taste making you a bit lightheaded and giggly.";
				if Cock Count of Player is 1: [Male w/single cock]
					say "     When she finally releases you, you quickly set about aligning your [cock of Player] shaft with one of her drooling cunts before plunging into her. Your lovely companion squeals in delight and her long tail wraps around your body, enveloping you in a warm, soft embrace. Noticing her poor empty second cunt before you start thrusting, you plunge a pair of fingers into the syrupy folds just as you start pulling back, alternating between driving your shaft into her and driving your fingers into her depths in a slow, steady rhythm.";
					say "     The excited giggles of the sugar glider soon give way to long moans of pleasure, her delightful squeezing folds gripping your member tightly as she rapidly approaches climax. With an adorable squeal the sugar glider reaches her peak, her feminine passage clamping down around your cock as her orgasm hits, pushing you over the edge as well. With a groan you blow you [Cum Load Size of Player] load into her body as her paws stroke her candy furred belly in satisfaction.";
					WaitLineBreak;
					say "     Sated, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her climax. Pulling your still-twitching member from her syrupy folds, you take a moment to lick the delightfully sweet mess from your hand before gathering your things and departing, a noticeable spring in your step after the sugary encounter.";
				else if Cock Count of Player > 1: [Male w/multiple cocks]
					say "     When she finally releases you, you quickly set about aligning your [cock of Player] shafts with her drooling cunts before plunging into her. Your lovely companion squeals in delight and her long tail wraps around your body, enveloping you in a warm, soft embrace. The delightful squeezing of her cunts alternates between your shafts, ensuring you don't get a moment of relief from the pleasurable sensation as your slow, steady rhythm builds. Soon the excited giggles of the sugar glider give way to long moans of pleasure. With an adorable squeal the sugar glider reaches her peak, her feminine passage clamping down around your cocks as her orgasm hits, pushing you over the edge as well. With a groan you blow you [Cum Load Size of Player] load into her body as her paws stroke her candy furred belly in satisfaction.";
					WaitLineBreak;
					say "     Sated, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her climax. She pouts a little as you pull your still-twitching members from her syrupy folds, but does little else to resist you leaving as you gather your things and depart, leaving the sugary marsupial to recover on her own.";
			else: [Female]
				say "     With a cheer, she springs to her knees, nearly knocking you over with her enthusiasm as she buries her muzzle between your thighs. Carefully letting yourself fall to the ground, you lay on your back and spread your legs, allowing the excited marsupial easier access to your needy cunt.";
				say "     Her long wet tongue makes several slow passes across your outer lips before she presses her snout against your cunt and delves deep into your womanly passage with her dexterous tongue. You moan in delight as she works deeper and deeper into your body, her nose rubbing delightfully against your clit as her talented tongue seems to stretch like taffy, pressing into your innermost depths. You cry out loud in delight as she rapidly drives you to climax, soaking your lovely companion's muzzle in your feminine nectar as you orgasm powerfully.";
				WaitLineBreak;
				say "     Even in the afterglow of your climax, you moan at the delightful shivers the sugar glider's tongue sends through your body as it slowly slides out of your depths. She pulls her muzzle from your cunt with a wet slurp, doing her best to clean your female juices from her matted pink fur as she moves over your supine body. As her face reaches your own, the sugar glides presses her muzzle to your lips, her long tongue slipping into your mouth, filling it with the sugary taste of her own saliva mixed with your own musky fluids before she springs to her feet and [one of]skips off into the midway[or]scampers up a nearby light post and glides off over the stalls[or]climbs a nearby stall and bounds off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
		else:
			increase nosugarglidersex by 1;
			say "     Deciding to leave the ditzy marsupial be, you shake your head at her and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else:
		say ", but you decide to let the ditzy marsupial be. You shake your head at her and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";


to say SugarGliderdesc:
	setmongender 4;      [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     Before you is a peculiar looking rodent-like creature, with large dark eyes, swiveling ears and a thick tail almost as long as she is tall. Her brightly colored fur is primarily pink, with a light blue belly and chest, as well as a blue stripe from the tip of her nose down her back and tail. Even from a distance you can smell the sugary sweetness of her cotton-candy-like hide.";
	say "     Giggling happily as she spots you, she [one of]pulls the lollipop she's sucking on from her mouth and[or]pulls the jawbreaker she's sucking on from her mouth and[or]blows a large bubble with the gum she's chewing on, then[at random] tucks it into the pouch on her belly [if Player is sugarbodied or player is sugarfaced]and looks you over. '[one of]All on your own[or]None of your greedy pals around[or]Scouting for more pop on your own[or]Out to swipe more candy on your own[at random], you [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random]? How about you gimme some of your sweet, sweet candy and we can make out.' With that, she bounds[else]before bounding[end if] towards you. Her large breasts bounce distractingly as she runs, and her open arms draw attention the large wing-like flaps of flesh between her arms and legs, stretching like taffy as she rushes towards you. It appears you're facing a literal sugar glider.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Sugar Glider"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The Sugar Glider [one of]reaches into her pouch, withdrawing a small piece of candy. 'Catch!' she shouts, tossing the candy towards you. Distracted by the flying sweets, she quickly steps forwards, planting a sugary kiss on your cheek before you can react[or]runs towards you before stopping suddenly and spinning her body. Her long, thick tail strikes you in the face as she spins, filling your dizzy head with her sugary sweet scent[or]strikes you with her short, sharp claws[or]leaps towards you, wrapping you in her wing-like embrace, giggling happily as you struggle to push her off[or]wraps her long, soft tail around your [bodydesc of Player] [bodytype of Player] body, temporarily distracting you from fighting[at random]."; [ Successful attack message ]
	now defeated entry is "[beattheSugarGlider]"; [ Text when monster loses. Change 'Sugar Glider' as above. ]
	now victory entry is "[losetoSugarGlider]"; [ Text when monster wins. Change 'Sugar Glider' as above. ]
	now desc entry is "[SugarGliderdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "cute and rodent-like, with large eyes and swiveling ears[if Player is SugarGliderskinned and player is male]. There is a pink stripe in your cotton candy fur that travels over your head and connects with the stripe on your back, contrasting your otherwise blue coat[else if Player is SugarGliderskinned]. There is a blue stripe in you cotton candy fur that travels over your head and connects with the stripe on your back, contrasting your otherwise pink coat[end if]";
	now body entry is "slender and light, yet strangely soft and malleable like taffy[if Player is female], with a large pouch on your belly[end if]. Your arms and legs end in small, dexterous paws with short claws, built for climbing. The most striking feature of your form is the large, thin membrane stretched between your hands and feet"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "a short coat of sugary cotton candy like fur. It is [if Player is male]mostly blue, with a pink belly and chest, as well as a pink stripe down your back[else]mostly pink, with a light blue belly and chest, as well as a blue stripe down your back[end if]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "You have a long, thick, somewhat prehensile tail, nearly as long as you are tall and covered in thick [if Player is male]blue[else]pink[end if] cotton candy fur."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]bright pink[or]narrow[or]slender[at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "your thoughts become clouded with a sudden craving for sugary treats, pressure build in your face as it is reshaped into a short, rodent-like muzzle, with large eyes made for seeing in the dark and swiveling ears atop your head"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your whole form goes soft. It shifts to a slender, rodent-like form with [if Player is female]a large marsupial pouch on your belly and [end if]small, dexterous, paw-like hands and feet built for climbing. An unusual pulling sensation builds in your sides, as well as the edges of your arms and legs, and you watch with fascination as your body stretches like fresh taffy, forming large, wing-like membranes between your limbs"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "you try and suppress the urge to giggle, thanks to the tickling sensation of the [if Player is male]blue[else]pink[end if] and [if Player is male]pink[else]blue[end if] cotton candy fur spreading over your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel a strange pulling building at the end of your spine, and you watch as your spine stretches to form a long tail covered in [if Player is male]blue[else]pink[end if] cotton candy fur"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts, becoming quite slender as it takes on a bright pink tone"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 31; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Fair"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 5; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 2; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 8; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 65; [ Target libido the infection will rise towards. ]
	now loot entry is "crushed candies"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 33; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]malleable[or]slender[or]lithe[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "marsupial"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]


Definition: a person is sugargliderskinned:
	if skinname of Player is "Sugar Glider", yes;
	no;

Definition: a person is sugargliderbodied:
	if bodyname of Player is "Sugar Glider", yes;
	no;

Definition: a person is sugarglidercocked:
	if cockname of Player is "Sugar Glider", yes;
	no;

Definition: a person is sugarglidertailed:
	if tailname of Player is "Sugar Glider", yes;
	no;

Definition: a person is sugargliderfaced:
	if facename of Player is "Sugar Glider", yes;
	no;

Section 3 - Crushed Candy

Table of Game Objects (continued)
name	desc	weight	object
"crushed candies"	"A small pile of broken bits of candy."	0	crushed candies

crushed candies is a grab object. It is a part of the player. crushed candies is infectious. The strain of crushed candies is "Sugar Glider".

The usedesc of crushed candies is "[crushedcandiesuse]";

to say crushedcandiesuse:
	say "     Pouring the crumbled candy into your mouth, you crunch away happily at the sweet treat. As you finish your snack you can't help but feel a little giddy, thanks to the burst of sugar induced energy";
	increase morale of Player by 1;
	increase Libido of Player by 8;

the scent of crushed candies is "The crumbled candy smells unsurprisingly sweet.".

Section 4 - Endings [Awaiting sugar ferret tie ins]

[
when play ends:
	if bodyname of Player is "Sugar Glider":
		if humanity of Player < 10:
			say "     Succumbing to your sugary infection, you are soon drawn back to the sights and sounds of the midway...";
		else:
			say "     You survive, but were infected by the Sugar Glider.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Sugar Glider ends here.
