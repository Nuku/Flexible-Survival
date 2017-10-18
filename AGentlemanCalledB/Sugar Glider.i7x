Version 2 of Sugar Glider by AGentlemanCalledB begins here.
[Version 2 - No sex, Fellatio + Sugar Ferret theft by Stripes]

"Adds a Sugar Glider creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

nosugarglidersex is a number that varies.
sugarglidernote is a truth state that varies.  sugarglidernote is usually false.
when play begins:
	add { "Sugar Glider" } to infections of girl;
	add { "Sugar Glider" } to infections of furry;
	add { "Sugar Glider" } to infections of humorous;

to say losetoSugarGlider:
	now nosugarglidersex is 0;
	if bodyname of player is "Sugar Ferret" or facename of player is "Sugar Ferret":
		if hp of player > 0:
			say "     Giving up on resisting the sweet marsupial, you allow her to push you to the ground in her eagerness, stripping you of your clothing and gear in the process.  'Yay!  Let's have some fun, you stinky [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random],' she says with a giggle.[run paragraph on]";
		else:		[steal before]
			say "     Beaten by the giggling marsupial, you are unable to continue resisting her.  She pushes you to the ground, stripping you of your clothing and gear in the process.  'You [one of]soda jerks[or]fizz heads[or]carbonated tube rats[or]candy hoarders[or]pop guzzlers[at random] don't normally put up nearly so much of a fight.  You must really be holding out on me.'  She leans in closer, giving you an exaggerated, inquiring look before grinning and licking her long tongue across your cheek.  'Is that it?  Got lots of candy you're trying to hide?  I think you're holding out on me, honey,' she says with a playful giggle while her paws and bushy tail run tickling across your body.";
			say "     Despite yourself, you can't help but squirm and laugh at the frantic tickling.  In the throws of laughter, you can't resist as she paws through your stuff with one paw while the other and her tail keep you giggling";
			if carried of chips > 0:
				say ".  Finding your stash of snacks, she swipes some with an exaggerated 'Ah-ha!' and stashes it away.  Having claimed her prize, she turns her attention to you now, eager to celebrate her find.[run paragraph on]";
				decrease carried of chips by 1;
			else if carried of soda > 0:
				say ".  Finding your stash of snacks empty, she instead turns her attention to your pop and swipes one.  'Well, since you've not got any candy for me, I guess I'll take this instead.'  She gives your cheek another lick.  'Oh, don't worry, hon.  I'll stop by later and trade it back for some sweet, sweet candy.'  That said, she turns her attention to you now, eager to celebrate her find.[run paragraph on]";
				decrease carried of soda by 1;
			else:
				say ".  Finding your stash of snacks empty, she mock-pouts and grinds her twin cunts against your leg.  'Nothing for me at all?  How about some sweet sex then, you [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random]?' she says with a giggle as she turns her attention back to your body.[run paragraph on]";
	else:
		if hp of player > 0:
			say "     Giving up on resisting the sweet marsupial, you allow her to push you to the ground in her eagerness, stripping you of your clothing and gear in the process.[run paragraph on]";
		else:
			say "     Beaten by the giggling marsupial, you are unable to resist as she pushes you to the ground, stripping you of your clothing and gear in the process.[run paragraph on]";
	if cocks of player > 0 and a random chance of 1 in 3 succeeds:	[69]
		say " The glider climbs atop you, moving into a 69 position.  This gives you an eyeful of her two dripping, sugary snatches as her sweet waters drip out onto your lips.  When her long, dexterous tongue slides along your cock, wrapping around it and squeezing it wetly, you can't help but moan, letting some of her juices drip out onto your tongue.  With the taste of her saccharine syrup flooding your senses, it's not long before the sweet aroma of the drooling lips before you becomes too much. You begin licking and sucking as those syrupy folds, alternating between her pussies as best you can to further please your giggly companion.  As you're working your tongue deep into one of her cunts, the sugar glider lowers her muzzle down, engulfing your cock and sucking down on it firmly.";
		say "     Your tongue and lips work at those sweet folds of hers, lapping at that candy-sweet clit of hers.  She moans and giggles in delight around your throbbing manhood while her agile tongue plays across it.  She even slips her tongue out and curls it around your balls, licking and squeezing at them as she sucks you off.  Having two honeyed treats to dig into, you lap at both her pussies, using your fingers to please the second while you eat out the other.";
		attempttowait;
		say "     The overpowering sweetness of the sugar glider's feminine juices fills your mouth as she cums, sending you over the edge as well.  Even as you work to pump your [cum load size of player] load into her, you continue licking and sucking at her quivering folds, drawing out her climax as long as you can to get as much of the sweet nectar as possible while her second cunt soaks your face and hand in her sticky mess.  [if cocks of player is 1]As you're finishing up, she switches to licking at your cock like it's a lollipop, getting your last few spurts of seed to[else if cocks of player is 2]With her muzzle sucking down your load from the penis in her mouth, she strokes your other shaft with her paw, letting your seed[else]With her muzzle sucking down your load from the penis in her mouth, she strokes your other shafts with her paws, letting your seed[end if] splatter across her cute, pink muzzle.";
		say "     Sitting up, she grinds her crotch against your face a little longer, enjoying her victory while licking your semen from herself.  Once cleaned up, the glider gives you one last gleeful titter before springing to her feet and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
	else if cocks of player is 1: [Male PC 1 cock]
		say " The glider looks a little disappointed as she discovers your single member, making a cute pouty lip as she teases your [cock of player] cock to full attention, before positioning herself over your groin and aligning your shaft with one of her dual cunts. She slowly descends over your member, enveloping your flesh in her syrupy folds. Once fully hilted, the giggling sugar glider leans forward over top of you, pressing her large soft breasts against your body as she presses her short muzzle to your lips, her long, dexterous tongue slipping into your mouth as she kisses you deeply, filling your mouth with her sickly sweet taste.";
		say "     After breaking the kiss, the glider stares down at you with a smile for a moment before she reaches for your hand, pulling it towards her unfilled cunt and stroking your fingers across her sticky folds until you begin to finger her wanton passage yourself, leaving her free to massage and fondle her pillowy breasts as she begins bouncing happily in your lap. The delightful squeezing of her cunt around your shaft as she rides you is quite distracting, but you do your best to focus on pleasuring her second cunt, working your fingers deep into her syrupy folds to ensure your lovely companion is satisfied. Your effort is soon rewarded as her giggles giving way to long moans of delight as your combined efforts quickly push her to climax. With an adorable squeal the sugar glider reaches her peak, her feminine passages clamping down around your cock as her orgasm hits, pushing you over the edge as well, as her second cunt soaks your hand and groin in her sweet nectar.";
		attempttowait;
		say "     As her climax subsides, the glider leans forward once more giving you another quick kiss on the cheek before rising to her feet, allowing more of her sweet smelling syrupy mess to drool from her dual cunt as she pulls free of your shaft. With a smile she reaches down into the pouch on her belly and pulls out a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random], slipping it into your mouth with a cute titter before [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else if cocks of player > 1: [Male PC 2+ cocks]
		say " Almost bouncing with excitement as she reaches for your [cock of player] cocks, the glider eagerly teases you to full erection before positioning herself over your groin and aligning a shaft with each of her dual cunts. With a gleeful titter, she slowly descends over your [if cocks of player is 2]twin [end if]shafts, enveloping your flesh in her syrupy folds. Once fully hilted, the giggling sugar glider leans forward over top of you, pressing her large soft breasts against your body as she presses her short muzzle to your lips, her long, dexterous tongue slipping into your mouth as she kisses you deeply, filling your mouth with her sickly sweet taste.";
		say "     After breaking the kiss, the glider stares down at you with a smile for a moment before she begins happily bouncing in your lap. The delightful squeezing of her cunts alternates between your shafts, ensuring you don't get a moment of relief from the pleasurable sensation she so eagerly provides as her ride continues. Lost if the throes of her delight, your lovely companion doesn't even notice as you reach for the bouncing pillowy breasts just above you until you give them a playful squeeze, causing her to meep in surprise. As her rhythm returns, you fondle her lovely breasts and tease her nipples, her giggles giving way to long moans of pleasure as your combined efforts quickly push her to climax. With an adorable squeal, the sugar glider reaches her peak, her feminine passages clamping down around your cocks as her orgasm hits, pushing you over the edge as well.";
		attempttowait;
		say "     As her climax subsides, the glider leans forward once more, giving you another quick kiss on the cheek before rising to her feet, allowing the sweet smelling syrupy mess to drool from her dual cunts as she pulls free of your shaft. With a smile, she reaches down into the pouch on her belly and pulls out a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random], slipping it into your mouth with a cute titter before [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else:	[Female/neuter PC]
		say " Making a cute pouty lip as she discovers you lack the appropriate equipment to satisfy either of her obviously eager cunts, the sugar glider leans forward and gives you a quick kiss, her long, dexterous tongue slipping into your mouth for a moment, filling your mouth with the sickly sweet taste of her saliva before standing up and positioning her dual cunts above your face. With your appetite already wetted by her sugary kiss, it's not long before the sweet aroma of the drooling lips before you becomes too much. You begin licking and sucking as those syrupy folds, alternating between her pussies as best you can to further please your giggly companion. As you're working your tongue deep into one of her cunts, the sugar glider presses her groin forward, forcing you to focus your attention on one pussy while she begins fingering the other, her giggles giving way to long moans of delight as your combined efforts quickly push her to climax.";
		attempttowait;
		say "     The overpowering sweetness of the sugar glider's feminine juices fills your mouth as she cums. You continue licking and sucking at her quivering folds, drawing out her climax as long as you can to get as much of the sweet nectar as possible while her second cunt soaks your face in her sticky mess.";
		say "     Staring down at you, your face still half buried in her groin, the glider gives you one last gleeful titter before springing to her feet and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
	if ( bodyname of player is "Sugar Ferret" or facename of player is "Sugar Ferret" ) and hp of player > 0:	[steal after]
		if carried of chips > 0:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together.  Looking towards her departing figure, you see her turn back and wave tauntingly with the snacks she's stolen tucked into her pouch.  She giggles and gives her tail a teasing flick as she rushes away, making her escape.";
			decrease carried of chips by 1;
		else if carried of soda > 0:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together.  Looking towards her departing figure, you see her turn back and wave tauntingly with the soda she's stolen tucked into her pouch.  She giggles and gives her tail a teasing flick as she rushes away, making her escape.";
			decrease carried of soda by 1;
		else if a random chance of 1 in 3 succeeds and sugarglidernote is false:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together.  It doesn't seem that anything's been taken, but there is a note left there.  'Next time, make sure there's something for me to swipe, you stupid [one of]ferret[or]tube rat[or]fizz head[or]soda jerk[at random].  XOXOXO.'  It's even got a pink, sugary imprint of her lips on it.  Looking towards her departing figure, you see her turn back and wave with a giggle before making her escape.";
			now sugarglidernote is true;
		else:
			say "     It is then that you notice that your pack has been rifled through by the sneaky sugar glider while you were having sweet, syrupy sex together.  Thankfully, there doesn't seem like anything's been taken.  Looking towards the departing figure, you see her turn and [one of]make a rude gesture[or]flick her tail teasingly[or]blow you a raspberry[or]give her rear a shake[at random] before disappearing from sight.";


to say beattheSugarGlider:
	say "     Beaten, the giggling sugar glider falls to the ground. She looks up at you with a coy grin, putting her body on display as she traces a finger along the outer lips of each of her cunts, trying to entice you to take part in a different game";
	if nosugarglidersex > 2:
		say ", but you have little interest in the ditzy marsupial. As with the others of her kind before her, you shake your head and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else if ( cocks of player > 0 or cunts of player > 0 ) and ( libido of player > 40 or bodyname of player is "Sugar Ferret" or facename of player is "Sugar Ferret" or bodyname of player is "Sugar Glider" or facename of player is "Sugar Glider" ):
		say " and the sexy display is quite tempting. Will you take part in some fun with the beaten sugar glider? (Y/N)";
		if the player consents:
			now nosugarglidersex is 0;
			say "     Deciding to have some fun with the eager glider, you drop your gear and move towards her[run paragraph on]";
			if cocks of player > 0 and a random chance of 1 in 3 succeeds:	[fellatio]
				say " front.  She gives a disappointed squeak as you grab her head and pull it towards your crotch instead of using your manhood to satisfy her need, but you're more in the mood for some quick, oral relief.  Despite not getting what she wanted, the horny marsupial smiles and seems quite pleased to lavish attention upon your [cock of player] cock[smn].";
				say "     Her saliva smells sweet and is a little sticky, but that tongue of hers is a delight.  The long, dexterous tongue slips out and runs across your maleness, licking your manhood and balls.  You are soon fully hard and dripping precum across your lustful prize's lips.  She welcomes your [cock size desc of player] cock into her muzzle, sucking at it greedily while her paws grip your ass.  The sugary scent of the horny girl has gotten you quite excited and you thrust firmly into her slick muzzle while running your fingers through her cotton-candy fur until you cum with a groan of ecstasy.  The sexy marsupial swallows down your load, the scent of her arousal growing much stronger in the air as she orgasms as well, leaving wet patches of her juices on the ground and running down her thighs as she fingers her twin pussies to satisfy herself.";
				attempttowait;
				say "     Having been feed a tasty treat and had a crashing climax of her own, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her orgasm.  Pulling your still-twitching member from her syrupy muzzle, you take a moment to wipe it across her soft fur.  You gather up your things, give her unfucked holes a teasing fingering and grin at her needy moans.  You head off with a noticeable spring in your step after the sugary encounter.";
			else if cocks of player > 0:
				say " supine form. With a cheer she spreads her legs before you, and with her dual cunts now on full display, you quickly move over the giggling glider and find yourself pulled into a tight hug. Her long, sugary sweet tongue slips into your mouth as she kisses you deeply, her sickly sweet taste making you a bit lightheaded and giggly.";
				if cocks of player is 1: [Male w/single cock]
					say "     When she finally releases you, you quickly set about aligning your [cock of player] shaft with one of her drooling cunts before plunging into her. Your lovely companion squeals in delight and her long tail wraps around your body, enveloping you in a warm, soft embrace. Noticing her poor empty second cunt before you start thrusting, you plunge a pair of fingers into the syrupy folds just as you start pulling back, alternating between driving your shaft into her and driving your fingers into her depths in a slow, steady rhythm.";
					say "     The excited giggles of the sugar glider soon give way to long moans of pleasure, her delightful squeezing folds gripping your member tightly as she rapidly approaches climax. With an adorable squeal the sugar glider reaches her peak, her feminine passage clamping down around your cock as her orgasm hits, pushing you over the edge as well. With a groan you blow you [cum load size of player] load into her body as her paws stroke her candy furred belly in satisfaction.";
					attempttowait;
					say "     Sated, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her climax. Pulling your still-twitching member from her syrupy folds, you take a moment to lick the delightfully sweet mess from your hand before gathering your things and departing, a noticeable spring in your step after the sugary encounter.";
				else if cocks of player > 1: [Male w/multiple cocks]
					say "     When she finally releases you, you quickly set about aligning your [cock of player] shafts with her drooling cunts before plunging into her. Your lovely companion squeals in delight and her long tail wraps around your body, enveloping you in a warm, soft embrace. The delightful squeezing of her cunts alternates between your shafts, ensuring you don't get a moment of relief from the pleasurable sensation as your slow, steady rhythm builds. Soon the excited giggles of the sugar glider give way to long moans of pleasure. With an adorable squeal the sugar glider reaches her peak, her feminine passage clamping down around your cocks as her orgasm hits, pushing you over the edge as well. With a groan you blow you [cum load size of player] load into her body as her paws stroke her candy furred belly in satisfaction.";
					attempttowait;
					say "     Sated, the sugar glider's soft form goes limp, her long tail slipping off your body as she basks in the afterglow of her climax. She pouts a little as you pull your still-twitching members from her syrupy folds, but does little else to resist you leaving as you gather your things and depart, leaving the sugary marsupial to recover on her own.";
			else: [Female]
				say "     With a cheer, she springs to her knees, nearly knocking you over with her enthusiasm as she buries her muzzle between your thighs. Carefully letting yourself fall to the ground, you lay on your back and spread your legs, allowing the excited marsupial easier access to your needy cunt.";
				say "     Her long wet tongue makes several slow passes across your outer lips before she presses her snout against your cunt and delves deep into your womanly passage with her dexterous tongue. You moan in delight as she works deeper and deeper into your body, her nose rubbing delightfully against your clit as her talented tongue seems to stretch like taffy, pressing into your innermost depths. You cry out loud in delight as she rapidly drives you to climax, soaking your lovely companion's muzzle in your feminine nectar as you orgasm powerfully.";
				attempttowait;
				say "     Even in the afterglow of your climax, you moan at the delightful shivers the sugar glider's tongue sends through your body as it slowly slides out of your depths. She pulls her muzzle from your cunt with a wet slurp, doing her best to clean your female juices from her matted pink fur as she moves over your supine body. As her face reaches your own, the sugar glides presses her muzzle to your lips, her long tongue slipping into your mouth, filling it with the sugary taste of her own saliva mixed with your own musky fluids before she springs to her feet and [one of]skips off into the midway[or]scampers up a nearby light post and glides off over the stalls[or]climbs a nearby stall and bounds off across the rooftops[at random], but not before pulling a [one of]lollipop[or]jaw breaker[or]piece of saltwater taffy[at random] from her pouch and slipping it into your mouth with a smile.";
		else:
			increase nosugarglidersex by 1;
			say "     Deciding to leave the ditzy marsupial be, you shake your head at her and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";
	else:
		say ", but you decide to let the ditzy marsupial be. You shake your head at her and turn to leave. She gives you a cute scowl and blows a long raspberry at you before getting up and [one of]skipping off into the midway[or]scampering up a nearby light post and gliding off over the stalls[or]climbing a nearby stall and bounding off across the rooftops[at random].";


to say SugarGliderdesc:
	setmongender 4;      [creature is female]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     Before you is a peculiar looking rodent-like creature, with large dark eyes, swiveling ears and a thick tail almost as long as she is tall. Her brightly colored fur is primarily pink, with a light blue belly and chest, as well as a blue stripe from the tip of her nose down her back and tail. Even from a distance you can smell the sugary sweetness of her cotton-candy-like hide.";
	say "     Giggling happily as she spots you, she [one of]pulls the lollipop she's sucking on from her mouth and[or]pulls the jawbreaker she's sucking on from her mouth and[or]blows a large bubble with the gum she's chewing on, then[at random] tucks it into the pouch on her belly [if player is sugarbodied or player is sugarfaced]and looks you over. '[one of]All on your own[or]None of your greedy pals around[or]Scouting for more pop on your own[or]Out to swipe more candy on your own[at random], you [one of]soda jerk[or]fizz head[or]carbonated tube rat[or]candy hoarder[or]pop guzzler[at random]? How about you gimme some of your sweet, sweet candy and we can make out.' With that, she bounds[else]before bounding[end if] towards you. Her large breasts bounce distractingly as she runs, and her open arms draw attention the large wing-like flaps of flesh between her arms and legs, stretching like taffy as she rushes towards you. It appears you're facing a literal sugar glider.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Sugar Glider";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The Sugar Glider [one of]reaches into her pouch, withdrawing a small piece of candy. 'Catch!' she shouts, tossing the candy towards you. Distracted by the flying sweets, she quickly steps forwards, planting a sugary kiss on your cheek before you can react[or]runs towards you before stopping suddenly and spinning her body. Her long, thick tail strikes you in the face as she spins, filling your dizzy head with her sugary sweet scent[or]strikes you with her short, sharp claws[or]leaps towards you, wrapping you in her wing-like embrace, giggling happily as you struggle to push her off[or]wraps her long, soft tail around your [bodydesc of player] [bodytype of player] body, temporarily distracting you from fighting[at random].";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheSugarGlider]";				[ Text when monster loses.  Change 'Sugar Glider' as above. ]
	now victory entry is "[losetoSugarGlider]";					[ Text when monster wins.  Change 'Sugar Glider' as above. ]
	now desc entry is "[SugarGliderdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "cute and rodent-like, with large eyes and swivelling ears[if player is SugarGliderskinned and cocks of player > 0].  There is a pink stripe in your cotton candy fur that travels over your head and connects with the stripe on your back, contrasting your otherwise blue coat[else if player is SugarGliderskinned].  There is a blue stripe in you cotton candy fur that travels over your head and connects with the stripe on your back, contrasting your otherwise pink coat[end if]";
	now body entry is "slender and light, yet strangely soft and malleable like taffy[if cunts of player > 0], with a large pouch on your belly[end if]. Your arms and legs end in small, dexterous paws with short claws, built for climbing. The most striking feature of your form is the large, thin membrane stretched between your hands and feet";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "a short coat of sugary cotton candy like fur. It is [if cocks of player > 0]mostly blue, with a pink belly and chest, as well as a pink stripe down your back[else]mostly pink, with a light blue belly and chest, as well as a blue stripe down your back[end if]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long, thick, somewhat prehensile tail, nearly as long as you are tall and covered in thick [if cocks of player > 0]blue[else]pink[end if] cotton candy fur.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]bright pink[or]narrow[or]slender[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your thoughts become clouded with a sudden craving for sugary treats, pressure build in your face as it is reshaped into a short, rodent-like muzzle, with large eyes made for seeing in the dark and swivelling ears atop your head";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your whole form goes soft. It shifts to a slender, rodent-like form with [if cunts of player > 0]a large marsupial pouch on your belly and[end if] small, dexterous, paw-like hands and feet built for climbing. An unusual pulling sensation builds in your sides, as well as the edges of your arms and legs, and you watch with fascination as your body stretches like fresh taffy, forming large, wing-like membranes between your limbs";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you try and suppress the urge to giggle, thanks to the tickling sensation of the [if cocks of player > 0]blue[else]pink[end if] and [if cocks of player > 0]pink[else]blue[end if] cotton candy fur spreading over your body";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel a strange pulling building at the end of your spine, and you watch as your spine stretches to form a long tail covered in [if cocks of player > 0]blue[else]pink[end if] cotton candy fur";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts, becoming quite slender as it takes on a bright pink tone";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 15;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11;			[ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 31;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "Midway";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 2;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 2;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 65;			[ Target libido the infection will rise towards. ]
	now loot entry is "crushed candies";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 33;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]malleable[or]slender[or]lithe[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "marsupial";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Definition: a person is sugargliderskinned:
	if the skinname of the player is "Sugar Glider", yes;
	no;

Definition: a person is sugargliderbodied:
	if the bodyname of the player is "Sugar Glider", yes;
	no;

Definition: a person is sugarglidercocked:
	if the cockname of the player is "Sugar Glider", yes;
	no;

Definition: a person is sugarglidertailed:
	if the tailname of the player is "Sugar Glider", yes;
	no;

Definition: a person is sugargliderfaced:
	if the facename of the player is "Sugar Glider", yes;
	no;

Section 3 - Crushed Candy

Table of Game Objects (continued)
name	desc	weight	object
"crushed candies"	"A small pile of broken bits of candy."	0	crushed candies

crushed candies is a grab object. It is a part of the player. crushed candies is infectious. The strain of crushed candies is "Sugar Glider".

The usedesc of crushed candies is "[crushedcandiesuse]";

to say crushedcandiesuse:
	say "     Pouring the crumbled candy into your mouth, you crunch away happily at the sweet treat. As you finish your snack you can't help but feel a little giddy, thanks to the burst of sugar induced energy";
	increase morale of player by 1;
	increase libido of player by 8;

the scent of crushed candies is "The crumbled candy smells unsurprisingly sweet.".

Section 4 - Endings [Awaiting sugar ferret tie ins]

[
when play ends:
	if bodyname of player is "Sugar Glider":
		if humanity of player is less than 10:
			say "     Succumbing to your sugary infection, you are soon drawn back to the sights and sounds of the midway...";
		else:
			say "     You survive, but were infected by the Sugar Glider.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Sugar Glider ends here.
