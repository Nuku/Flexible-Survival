Gator by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a gator to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ] 
gatordefeat is a number that varies.
gatorconsent is a number that varies.
to say gator attack:
	say "'Weak little thing, too bad. I thought you had more in you,' She growls as she pushes you to the ground roughly, 'I suppose I can still have some fun with you...' She crawls up on top of you, peeling off your clothes as she goes. You try to wriggle free, but a soft but painful bite to your shoulder stills you. She wraps her arms around you and hefts your ass up into the air. Her angry looking manhood juts up from her groin, dripping thin streams of lubricant as she moves you into position.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if cunts of player is greater than 0:
		say "She smoothly presses into your exposed cunt as you try to wriggle from her, but she just draws you back fully onto her powerful spear, starting to breed you urgently, 'Gonna fill a little slut up with little squealing gator pups', she hisses in an ear, 'Little weak cunts are no good for anything but mothering and being fucked'. She pulls you back firmly against each powerful stroke into your yielding form, balls slapping up against your bottom with each movement. Her breath grows faster and faster as she works at you, her generous breasts rubbing along your [skin of player] back.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "Her cock goes stiff inside of you as she squeezes you in a tight hug, hands grasping at your chest as she begins to fill you with thick sprays of her eager seed, filling your womb with her seed as she groans in satisfaction. As the waves of warmth begin to fade, she draws free of you, and swats you smartly on the rump, 'You come back for a rematch, if you have the guts.' she invites, laughing as she rises to her feet and saunters off, still erect shaft wagging.[impregchance]";
	otherwise:
		say "You give a last ditch pull from her, but she snarls and wrenches you back right onto her. Your tender back door howls in the pain of it as she mounts you fully, starting to rock firmly atop you, soft leathery hands holding you still as she takes advantage of you, 'Girl has her needs,' she croons as she rocks, 'Maybe next time, we try something else.' The motions become smoother as you relax, and the pain ebbs, and pleasure begins. You wonder if it is the nanites or her lovemaking skills, but soon your own body is pulsing with arousal and pleasure, apexing with every powerful thrust into your sensitive ass.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "Your forms shudder together as her balls slap against you once more, and rest against you as she unloads into your bowels, filling you with her hot cream. Quite suddenly, she shoves you forward.  Your head hits the ground, and when you come to, she has departed, probably to hunt something, or someone, else.[mimpregchance]";


To say gator loss:
	if gator den is unknown:
		say "Successfully subduing the great green beast, you stand over her as she pants and heaves. 'You put up a good fight,' she says, smiling with her sharp teeth, 'Kind of turns me on... I could use a nice, strong, partner.' She slowly gets to her feet, but makes no immediate motion to resume the battle. Her reptilian dick wags under her at half mast as she stretches out, 'We could have so much fun.' She approaches you slowly and leans in, whispering the location of her den, then slipping her arms around you. You can feel the warm soft curves of her front pressed against you even as her cock nudges against a thigh, 'We don[']t have to fight. I can be very accommodating.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		if cocks of player is greater than 0:
			say "Your own member stiffens unconsciously, responding to the obvious signals of readiness this beast is sending.";
		say "You wrap your hands around her in return in a brief exchange. Your hands find that, despite her thick looking scales, the gator is soft to the touch, and quite round. If you closed your eyes, she is nothing but a full bodied woman, with a few extras. Her fertile form gently squirms from you with a snap of her great jaws, 'Visit, soon. I will be waiting,' she promises, slipping away into the darkness with a sway of her thick tail.";
		now gator den is known;
	otherwise:
		say "The gator lets out an uncomfortable hiss as she is beaten, slinking off into the waters with an unhappy thrash of a tail. You can feel her eyes on you as she looks back to you a moment before she is gone.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "sewer gator"; [Name of your new Monster]
	now attack entry is "[one of]She drags you towards the water with a sneer.[or]She manages to get your head under the surface of the water, holding you down a moment.[or]Her excited member grinds against your sensitive regions needfully as her powerful claws grapple at you.[or]Her terrible teeth snap at you, sending pain through your form.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[gator loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[gator attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "She emerges from the muck, surprisingly clean despite the surroundings. Her green scales glint in the light as she saunters towards you, snout curled in a smile as her wide hips sway, '[one of]I was looking for someone to play with.[or]Did you come looking for me?[or]I love a good wrestle![at random]' she says, thick tail swaying as she crouches over, thick cock dangling between her scaly thighs and breasts heaving with her breath as she readies for battle.";[ Description of the creature when you encounter it.]
	now face entry is "long reptilian snout, with nostrils perched at the top end and long tearing teeth filling your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "full bodied, with wide hips and narrow waist, your form feels full of strength and tough to boot, with surprisingly soft, but durable, scale patterns across front and back. Peeking behind you, you can see you have two sets of bony ridges running down towards your ass.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]green scaled[or]softly scaled[or]thick scaled[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a broad, reptilian, tail. It has two ridges that run along the top, converging at the tip. It is covered in [skin of player] flesh and sways behind you with every step. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]reptilian[or]gator[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face draws forward into a long gator snout."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you swell with the appearance of muscles and height, large scaly patterns appear over most of your body as ridges grow along your spine."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh becomes tougher and thicker, yet somehow still supple and soft."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your center of balance tips dangerously as a huge thick tail emerges from you, with two bony ridges along the top, an alligator's tail."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your aching member grows slicker and somewhat pink, changing into an alligator's moist apparatus."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 18;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 7;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking.]
	now area entry is "Mall";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 5;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]muscled[or]muscular[at random]";
	now type entry is "[one of]reptilian[or]gator[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "sewer gator":
		if humanity of player is less than 10:
			if gatorconsent is 1:
				say "You settle down with that gator, your mind ensnared by her enchanting voice. She welcomes you with open arms and conditions you with love and affection, soon making you a perfectly obedient little pet for her.";
				if cocks of player is greater than 0:
					say "She sates her female urges on your cock, riding it whenever she gets in the proper mood. Her frequent dalliances result in children, but they are feral at birth, and usually flee off to parts unknown. It does not seem to bother her greatly.";
				if cunts of player is greater than 0:
					say "When her hunting goes poorly, you prove to be a very skilled outlet for her frustration. She rides you in every position over the rest of your life, filling your belly with child after child, squealing snapping beasts that stay only long enough to get a rough meal from your chest before fleeing into the wilds.";
			otherwise:
				say "Your fragile mind snaps and you growl, seeking a nice dark place to hide. You prey on mutants and humans foolish enough to come too close, grabbing them in your great jaws and hauling them to your den to violate. If your hunger is too great, they never leave. Fortunately, this is only about one in five, the others are left dizzy with pleasure, but unharmed. Humans are mutated, but most leave, except one. Even snapping at them couldn't get them to budge. Eventually you gave up, and gained a partner.";
		otherwise:
			if gatorconsent is 1:
				say "As the military mobilizes into the city, you hurry back to your sweet gator's arms. You embrace as equals, and begin telling her your plan. She looks doubtful at first, but eventually you talk her out of her sewer home. You are both rescued and whisked away back to civilization. She quickly warmed to having so many warm bodies around, and settled in to get a formal education, with you at her side for encouragement, support, and great sex.[line break][line break]She becomes a therapist. Her hypnotic voice and her eagerness to meet new people drives her success, and she never leaves your side either. It is a good life, spent together, successful.";
			otherwise:
				say "Life as a gator is somewhat interesting. Most expect you to be rough and cold blooded, everyone is surprised when they touch you to find soft, almost silky skin, warm to the touch. You secure a deal with a cosmetics firm, becoming a spokesperson for their 'beat the gator' campaign that proves wildly successful.";

to gatorfy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "sewer gator":
			now monster is y;
			break;
	infect;
	infect;
			

to say gator den scene:
	say "As you enter the den, you give a quick look around. It's dry and clean, with a large bed propped in a corner. It looks like someone grabbed a bed and dragged it down here, but it is also clean and soft looking. Laying across it is the gator. She's smiling at you, laying on her belly, breasts gently compressed beneath her, head on her hands as she gazes at you. Behind her, her tail sways slowly over her wide, round, hips, '[one of]I am so glad you took some time to visit, lover. We have so much to talk about, to do...[or]I feel as horny as anything, you are just in time to keep me company.[or]You have no idea how happy you just made me, visiting me. It gets so lonely down here.[at random]'";
	say "Do you want to stay?";
	if the player consents:
		now gatorconsent is 1;
	otherwise:
		say "You decide you don't really want to spend time with her, and head back for the library.";
		move the player to Grey Abbey Library;
		follow the turnpass rule;
		stop the action;
	if bodyname of player is "sewer gator":
		say "'You are still looking mighty fine. Come over here and let me give you a kiss,' she beckons. As you slip up onto the bed to join her, she wraps her arms around you, pressing her soft warm scales to your [skin of player] front, grinding gently as she presses her snout to you and gives a slow kiss, quiet for long moments as her hands wander across your back eagerly. Your body grows warm, responding to her desire for a mate, changing to be more like her ideal catch.";
	otherwise:
		say "'You are still missing a little something,' she chastises gently, patting the bed for you. When you slip up beside her, she slips in against you, one hand reaching between your legs, rubbing slowly as she begins to nuzzle across your neck and cheek, nipping carefully with those large teeth. As she cuddles in closer, your body grows warm, nanites rushing to modify you towards her ideal lover.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	gatorfy;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Seemingly satisfied, at least for the moment, she rolls up on top of you with a smile, 'Now what to do...'";
	if a random chance of 1 in 3 succeeds: [ She just talks ]
		say "'I want to talk, get to know you,' she says, leaning in and snuggling against your front. She chats with you quietly as she gropes and fondles at you, drawing out your name and your old job, and telling you about her old life as a bus driver. She confides that she loves her new body. 'I just want someone to share it with,' she says, nuzzling you with her great snout as she speaks, 'We can be together, have little alligatorettes. It would be nice....' she assures in a sultry whisper.";
		say "Her words seem to wriggle insidiously in your mind, feeling like a better idea by the moment. Though she does not change your body any further in the long chat, your mind feels a bit bent, and you look forward to your next visit all the more for it.";
		decrease the humanity of the player by a random number from 5 to 20;
	otherwise: [ Sex]
		if a random chance of 1 in 2 succeeds and cocks of player is greater than 0: [ She wants to be fucked]
			say "She rolls over and raises her thick tail over her back, exposing the pinkened lips nestled between her large thighs, 'Come show me just how much a stud you are,' she invites. Your [cock size desc of player] [cock of player] cock[if cocks of player is greater than 1]s[end if] rise[if cocks of player is 1]s[end if] to attention quickly and you scramble up to accept the offer, perhaps faster than you normally would. Something about her round rump just seems to call to you, and you heed the call, slamming home into her.";
			if cock length of player is less than 4:
				say "She gets an odd expression when you sink into her, then looks over shoulder, 'Mi amor, you need help,' she croons, curling her tail around you and squeezing. The warmth returns to you, filling you with hot tingles that slowly sink into your groin as things begin to change down there, swelling up inside the gator as she gasps and coos. The pleasure of changing while sheathed in the fertile female burns at your mind, eroding your human sensibilities.";
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
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
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
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
				say "Your belly grows warm as she ruts harder, her soft words seeming to make your womb tingle fiercely with a strange but deliriously wonderful sensation. You are not even sure when she spilled over the top, but you are being filled with thick seed and give out a deep sluttish moan as she clings to you, keeping her shaft plugged tight as the thick gator seed flows.[impregchance]";
				say "Satisfied, she draws from you with a wet pop, 'Perfect, my lovely mate. You should stay... But you don[']t have to, think about it, come back.' She blows a kiss at you and leans back on her bed, looking content for the moment as your cunt tingles with lingering pleasure.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			if cunts of player is less than 1:
				say "'I want to be on top,' she says as she rubs over your belly and chest slowly, 'But you are missing the part I want to fuck most. How about I let you choose?' She leans in close, rubbing her nose to yours, 'Want me to take that pretty ass of yours?'";
				if the player consents:
					say "With your approval, she grins and flips you right over. She runs her soft scaly palms over your rump as she rumbles appreciatively, 'Don[']t you worry one bit. Mother will be gentle.' She licks a finger, running it across the wet surface of her tongue before pressing the dangerously sharp tip of her claw to your puckered back door. She gently nudges your ring apart, wriggling the finger into your tight flesh as she leans in over you, 'Open up for mother, relax...' Her voice soothes you, and you find yourself relaxing at her command, allowing her digit to slowly push past, embedded fully in you. You can feel it moving inside of you as she ensures your readiness.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
					say "She draws the finger back, then clambers up behind you fully, her hot member rubbing against your ass cheeks as she leans over you. She hugs you from behind, snuggling against your back, her breasts rubbing slowly against you as she nudges herself into position, and begins to slowly rock her ready tool into your loosened doughnut. She slips in almost painlessly, and what little discomfort is soon forgotten as her rod begins to stroke into you, teasing sensitive portions of you as she pulls you back into her eager motions. She licks at your ears from behind as she couples, growling soft appreciations. Her balls slap up against you with each, increasingly fast, thrust.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
					say "With a load groan, you feel her body stiffen over your own, and her shaft swell and explode powerfully into you. Pleasure explodes abruptly, causing you to seize in a climax of your own, echoing her in tremble and timber as she holds you preciously close, clutching almost desperately as the feelings pass. As composure returns, she pulls free of you and swats you smartly on the bottom, 'Good, you made momma really happy. You come back, any time. Momma always has time for you.' she insists, sending you on your way.[mimpregchance]";
				otherwise:
					say "'Well then, we still have one other option.' She flashes her teeth, and scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close, 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
					say "Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you, 'Good. I needed that. Maybe next time, you get a turn,' she winks, then reclines, looking ready to relax.";
		otherwise: [She makes the player pleasure her orally]
			say "'Well then, I know just what to do.' She flashes her teeth, and scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close, 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you, 'Good. I needed that. Maybe next time, you get a turn,' she winks, then reclines, looking ready to relax.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	decrease the humanity of the player by 5;
	if the humanity of the player is less than 10:
		end the game saying "You decide against leaving after all.";
	otherwise:
		say "You head home afterwards.";

Gator Den is a room. "[gator den scene]". It is unknown. It is fasttravel. It is private.

After navigating gator den:
	if humanity of player > 9:
		move the player to Grey Abbey Library;
		follow the turnpass rule;

[ Edit this to have the correct Name as wall]
Gator ends here.
