Version 1 of Tehuantl by Wahn begins here.
[ Original creature by GentlemanB - greatly expanded by Wahn]

LastTehuantlCarlScene is a number that varies. LastTehuantlCarlScene is usually 10000.
LastTehuantlSpikeScene is a number that varies. LastTehuantlSpikeScene is usually 10000.[@Tag:Notsaved][with the standard value, they'll be ready for a new event right after import, no need to save this one]
TehuantlKorvinRelationship is a number that varies.
LastTehuantlKorvinScene is a number that varies. LastTehuantlKorvinScene is usually 10000.

an everyturn rule: [fix for old saves]
	if HP of Tehuantl > 49 and HP of Tehuantl < 255 and Cock Count of Tehuantl is 0: [male jaguar pet, but doesn't have a cock]
		now Cock Count of Tehuantl is 1;
		now Cock Length of Tehuantl is 12;
		now Ball Size of Tehuantl is 5;
		now Ball Count of Tehuantl is 2;
		now Cunt Count of Tehuantl is 0;
		now Cunt Depth of Tehuantl is 0;
		now Cunt Tightness of Tehuantl is 0;
		now Nipple Count of Tehuantl is 2; [2 nipples]
		now Breast Size of Tehuantl is 0;

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Tehuantl	"Tehuantl"

Tehuantl is a person.
ScaleValue of Tehuantl is 3. [human sized]
Cock Count of Tehuantl is 0.
Cock Length of Tehuantl is 0.
Ball Size of Tehuantl is 0.
Ball Count of Tehuantl is 0.
Cunt Count of Tehuantl is 1.
Cunt Depth of Tehuantl is 12.
Cunt Tightness of Tehuantl is 5.
Nipple Count of Tehuantl is 2. [2 nipples]
Breast Size of Tehuantl is 3.
TwistedCapacity of Tehuantl is false.
Sterile of Tehuantl is false.
[Basic Interaction states as of game start]
PlayerMet of Tehuantl is true.
PlayerRomanced of Tehuantl is false.
PlayerFriended of Tehuantl is false.
PlayerControlled of Tehuantl is true.
PlayerFucked of Tehuantl is true.
OralVirgin of Tehuantl is false.
Virgin of Tehuantl is false.
AnalVirgin of Tehuantl is true.
PenileVirgin of Tehuantl is false.
SexuallyExperienced of Tehuantl is true.
MainInfection of Tehuantl is "Jaguar Warrior".
Description of Tehuantl is "[TehuantlDesc]".
Conversation of Tehuantl is { "Me-ow!" }.
the fuckscene of Tehuantl is "[TehuantlSex]".
the scent of Tehuantl is "Tehuantl has an exotic earthy aroma which reminds you of the wilds.".

to say TehuantlDesc:
	if HP of Tehuantl < 50: [female Tehuantl]
		project the Figure of Tehuantl_Female_Face_icon;
		say "     Tehuantl is an exotic-looking female jaguar, with wide hips, long legs and an alluring figure. Her long dark hair, which matches the black rosettes in her golden yellow fur, is tied up in a long ponytail which reaches down to the middle of her back. Noticing your eyes upon her, she saunters over to you, showing off her naked body to full effect. There is a deep purr in her voice as she greets her [if Player is female]mistress[else]master[end if] and leans in to rub her furred cheek against your shoulder.";
	else: [male Tehuantl]
		project the Figure of Tehuantl_Male_Face_icon;
		say "     Tehuantl is an exotic-looking male jaguar, with a lean physique and impressive muscles. His bearing and fluid movements make it instantly clear that he knows how to fight - not as good as you though, as you forced him to submit to you in the museum and took the proud feline as your pet. Having accepted his new role under you, the jaguar keeps his feathered shield and obsidian-toothed Aztec sword stashed next to his bedroll these days, spending his time with trying to please you instead of martial training.";
		say "     Noticing your eyes upon him, Tehuantl saunters over to you, showing off his naked body to full effect. There is a deep purr in his voice as he greets his [if Player is female]mistress[else]master[end if] and leans in to rub his furred cheek against your shoulder.";

Instead of conversing the Tehuantl:
	if HP of Tehuantl is 11: [first heat started]
		say "[TehuantlHeatIntro]";
		now HP of Tehuantl is 12;
		now Feline Relief is active;
	else if HP of Tehuantl is 14: [toys found]
		say "     As you approach Tehuantl you drop your bag and dig out the toys you've collected for her, as well as her extra surprise. When she spots you she rushes over, nearly knocking you down as she hugs you tightly, causing the rubbery sex toys to slip from your grasp and bounce across the floor. 'Oh master, you are so kind!' she rumbles as she surveys the colorful toys scattered around her before she kisses you lightly on the cheek. As Tehuantl gets on her hands and knees to gather and inspect the things you've brought her, you quickly scan the floor for the thin red collar and quickly move to pick it up before she spots it as well.";
		say "     Quietly sneaking up behind her as she admires a particularly large pink dildo, you carefully unclasp the collar and move to place it around her neck. Tehuantl gives a curious meow as she hears the bell jingle above her head, looking back to see you holding the collar just above her. She smiles as you reach down to place it around her neck, purring happily as you fasten it snugly around her throat. She bats the bell softly several times, delighting in the cute jingle as you gently pet her for a short while before you get back to what you were doing, leaving her to get back to inspecting the toys you've brought her.";
		now TehuantlStatus is 1;
		now HP of Tehuantl is 15;
		now Energy of Tehuantl is turns;
	else if TehuantlStatus is 2: [in heat]
		say "     [one of]Tehuantl mewls at you plaintively as she stares up from her spot on the floor, furiously working [if HP of Tehuantl > 14]a large dildo[else]several fingers[end if] into her needy cunt.[or]'Oh master, I need you...'[or]Too busy licking and sucking at her own groin as she mewls in pleasure, Tehuantl doesn't even notice you approach.[or]'Please, fill me master.'[at random]";
	else if HP of Tehuantl > 49 and HP of Tehuantl < 100: [male Tehuantl]
		say "     [one of]Tehuantl runs his paws down your chest as he nuzzles up against you, purring softly as his hands slide down towards you groin.[or]'My big strong warrior, I hope you're here to use your servant again.'[or]'I look forward to being beneath you again soon, [master].'[or]'How can I serve - or service - you, my [master]?'[or]Tehuantl rumbles softly as he grooms himself on one of the padded chairs, licking his fur while one hand slowly strokes his erect cock.[at random]";
	else:
		say "     [one of]Tehuantl runs her paws down your chest as she nuzzles up against you, purring softly as her hands slide down towards you groin[or]'My big strong warrior, I hope you're here to use your pussycat again.'[or]'I look forward to being beneath you again soon, master.'[or]'How can I serve - or service - you, my master?'[or]Tehuantl rumbles softly as she grooms herself on one of the padded chairs, slowly working towards her moist cunt.[at random]";

to say TehuantlSex:
	if HP of Tehuantl is 11:
		try conversing the Tehuantl;
	else if Player is neuter:
		say "     As eager as you are to have some fun with your feline pet, you find yourself ill-equipped to have any fun with her at the moment.";
	else if lastfuck of Tehuantl - turns < 6:
		if HP of Tehuantl > 49: [male]
			say "     Tehuantl rubs himself against you and purrs, but then pulls back a little and says, 'Mmm, as much as I would love my big warrior to make use of [if Player is female]her[else]his[end if] servant again, I need some time to recuperate please.'";
		else: [female]
			say "     Tehuantl rubs herself against you and purrs, but then pulls back a little and says, 'Mmm, as much as I would love my big warrior to make use of [if Player is female]her[else]his[end if] pussycat again, I think it would be nicer for both of us if we took a break.'";
	else:
		if HP of Tehuantl < 50:
			say "     Spotting your feline pet [one of]stretching suggestively[or]bathing herself, paying particular attention to her groin[or]lounging around the library[at random], you consider having some fun with her.";
			say "[TehuantlSexMenu]";
		else:
			say "     Spotting your feline pet [one of]stretching suggestively[or]bathing himself, paying particular attention to his groin[or]lounging around the library[at random], you consider having some fun with the muscular jaguar.";
			say "[TehuantlSexMenu]";

to say TehuantlSexMenu:
	setmonster "Jaguar Warrior";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and HP of Tehuantl < 50: [male/herm player, female Tehuantl]
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "Make use of your pussy's pussy";
	[]
	if Player is male and HP of Tehuantl < 50 and TehuantlStatus is 2: [male/herm player, female Tehuantl in heat]
		choose a blank row in table of fucking options;
		now title entry is "Soothe her heat";
		now sortorder entry is 2;
		now description entry is "Give your heat stricken pet some special attention";
	[]
	if Player is male: [male player, any gender Tehuantl]
		choose a blank row in table of fucking options;
		now title entry is "Blow Job";
		now sortorder entry is 3;
		now description entry is "Have Tehuantl suck your cock";
	[]
	if Player is female: [female player, any gender Tehuantl]
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "Put your kitty's rough tongue to use";
	[]
	if Player is female and HP of Tehuantl < 50 and TehuantlStatus is 2: [female player, female Tehuantl in heat]
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 5;
		now description entry is "Share in some mutual pleasure with Tehuantl";
	[]
	if HP of Tehuantl > 49: [any player, male Tehuantl]
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 6;
		now description entry is "Make use of your kitty's manhood";
	[]
	if Player is male and HP of Tehuantl > 49: [any player, male Tehuantl]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the jaguar's ass";
		now sortorder entry is 7;
		now description entry is "Sink yourself balls-deep into the kitty";
	[
	if TehuantlKorvinRelationship is 10 or TehuantlKorvinRelationship is 1: [he and Korvin clashed, K got fucked or not]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to fuck Korvin";
		now sortorder entry is 8;
		now description entry is "Let your companions give you a show";
	]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if title entry is "Fuck her":
					say "[TehuantlSex_vag]";
				else if title entry is "Soothe her heat":
					say "[TehuantlSex_vag_Inheat]";
				else if title entry is "Blow Job":
					say "[TehuantlSex_BJ]";
				else if title entry is "Cunnilingus":
					say "[TehuantlSex_cunni]";
				else if title entry is "69":
					say "[TehuantlSex_69wtoy]";
				else if title entry is "Ride him":
					say "[TehuantlSex_Ride]";
				else if title entry is "Fuck the jaguar's ass":
					say "[TehuantlSex_Assfuck]";
				else if title entry is "Tell him to fuck Korvin":
					say "[TehuantlSex_FuckKorvin]";
				now lastfuck of Tehuantl is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the submissive feline, shaking your head slightly as [if HP of Tehuantl < 50]she[else]he[end if] gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say TehuantlSex_vag:
	say "     Deciding to make use of your pussy's enticing pussy, you drop your gear and approach Tehuantl. She mrowls lustfully as you move closer[if Player is barbed], licking her lips as she eyes your barbed cock[end if] before taking your hand as you lead her off to a secluded corner of the loft. Tehuantl moans teasingly as you push her to the floor, her tail flicking with excitement as she rolls onto her back and spreads her legs before you. 'Mmm, my big strong warrior, here to put me in my place again,' she rumbles as her paws drift down her body, caressing her delicate form as they move towards her spread thighs. With the feline's needy cunt on display for you, you waste no more time with foreplay and pounce on your eager plaything, pinning her to the ground as you align your [cock size desc of Player] [Cock of Player] cock with her wet folds.";
	if Player is barbed:
		say "     Tehuantl moans in pleasure as you begin sinking your barbed shaft into her, obviously delighting in the pleasant sensation of your spines scraping softly along her inner walls. She bites her lip in anticipation as your forward movement slows to a stop, and you feel her entire form tense up slightly as you prepare to withdraw your length. Tehuantl yowls in ecstasy as you begin to pull back, her entire form shivering beneath you as your pointed barbs scrape and tear at her tender flesh, driving her to her first climax before you've even pulled back completely. Tehuantl's moaning and yowling continues as you pound away at the needy kitty, the feeling of her tight cunt gripping your member so she can be further stimulated by your feline barbs only intensifying your own pleasure with each thrust. You roar in orgasm as your climax strikes, driving your length into her as you grip her body tightly, ensuring she stays firmly impaled by your shaft as you blast shot after shot of your [Cum Load Size of Player] load into her spasming cunt.";
		say "     Spent, you roll off your well-fucked kitty, eliciting one more groan from her as your barbs pull out of her body one final time. As you lay there basking in your afterglow Tehuantl snuggles up beside you, resting her head on your chest as she pulls your arm around herself, rumbling happily as she nuzzles against you.";
	else:
		say "     Tehuantl rumbles happily as you begin sinking your member into her, her tight cunt gripping your shaft delightfully, squeezing your cock even as you begin slowly pulling back. She mewls lustfully as you begin pounding into her eager body, her paws drifting up to tease her firm nipples as the rough fucking continues. Soon the pleasant sensations of her tight, squeezing tunnel begin to overwhelm you, and you roar in orgasm as your climax strikes, driving your length into her as you grip her body tightly, ensuring she stays firmly impaled by your shaft as you blast shot after shot of your [Cum Load Size of Player] load into her spasming cunt.";
		say "     Spent, you roll off your well-fucked kitty, panting happily as you stretch out on the floor beside her. As you lay there basking in your afterglow Tehuantl snuggles up to you, resting her head on your chest as she pulls your arm around herself, rumbling happily as she nuzzles against you.";
	NPCSexAftermath Tehuantl receives "PussyFuck" from Player;

to say TehuantlSex_vag_Inheat:
	say "     With Tehuantl's powerful scent filling the air, you decide to try and give her a little something extra to help her take the edge off. She mewls needfully as you drop your gear and approach her, spreading her legs wide to put her needy pussy on display for you. You push Tehuantl back to lay on the couch and tease her wet pussy with a pair of fingers, stroking her outer folds and clit before pressing deeper into her body. Tehuantl moans in delight as you continue frigging her, groping her breasts and tweaking her nipples as you do.";
	say "     The feline's pussy grips your fingers tightly, already milking and squeezing your fingers like a cock in an effort to cool her heat. As your play continues, you spot one of the rubber sex toys you brought back for Tehuantl to help her with her heat and reach for the bright pink cock. Toy in hand, you spread Tehuantl's nether-lips apart with the fingers already inside her and begin pushing the tip of the toy into her. Tehuantl's moans of pleasure become more frequent and much louder as you drive the thick rubber cock into her, freeing your sticky fingers to softly massage her clit as well.";
	WaitLineBreak;
	say "     It doesn't take long for your efforts to pay off, and Tehuantl is soon yowling in release. Her musky waters gush out around the rubber toy and soak your hand. Leaving the toy buried in Tehuantl's cunt, you softly rub and scratch her belly, slowly working up towards her breasts as you lean closer to her. You eagerly climb on the couch over the shivering feline as your hand drifts over her breasts and caresses her muzzle, finally pulling the pink dildo from her cunt as you line up your own shaft with her well-prepared opening.";
	say "     You both groan in delight as you begin sinking your [cock size desc of Player] [Cock of Player] cock into her, and Tehuantl's insatiable body still grips your shaft tightly despite her recent climax[if Player is barbed], pulling at your barbs delightfully[end if]. By the time you begin vigorously fucking the jaguar's needy body, she's fully recovered from her first climax and is bucking her hips enthusiastically in time with your thrusts. [if Player is barbed]With each withdrawal, your sharp barbs catch and pull at Tehuantl's soft inner flesh, adding extra stimulation for both of you before you drive your shaft back into her. [end if]Soon the wonderful feeling of her tight, squeezing tunnel gets to be too much, and with a few final powerful thrusts, you climax with a roar of ecstasy, gripping her tightly as you blast your [Cum Load Size of Player] load deep into her body. Tehuantl's feline yowl of release joins your own roar as you cum, signaling her own powerful climax.";
	WaitLineBreak;
	say "     With your twitching member still buried in Tehuantl's quivering tunnel, you lay atop her soft-furred form. She rumbles happily as your fingers trace and tickle her delicate form. You lay together with Tehuantl, cuddling for some time, simply enjoying your pet's company for a while before you finally lift yourself from the couch[if Player is barbed], sending one last ripple of pleasure through both of you as your barbs make one final rough withdrawal[end if].";
	NPCSexAftermath Tehuantl receives "PussyFuck" from Player;

to say TehuantlSex_cunni:
	if HP of Tehuantl < 50: [female]
		say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach her slowly while letting one hand wander down between your things. She mrowls lustfully as you approach, licking her lips as she watches your fingers slowly part your pussy lips. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl as she approaches on her hands and knees.";
		say "     Her padded paws tease your inner thighs gently as she positions herself between them, rumbling happily as she begins teasing your glistening folds. You run your hands through her long dark hair as the feeling of her rough tongue making long, slow passes across your outer lips sends shivers of delight run through you. Tehuantl's paws drift closer to your drooling pussy as her tongue begins pressing further into you, her soft paw pads rubbing your clit delightfully as her other paw spreads your cunt apart to give her further access to your needy depths. Soon you are moaning in pleasure as your thirsty feline pet pushes her master to a powerful climax, drinking up every drop of your feminine fluids as her talented tongue and paws draw out your orgasm as long as they can.";
		WaitLineBreak;
		say "     After lapping up all the sweet juices she can, Tehuantl lays back on the floor before you, her paws tenderly playing down her body towards her own dripping snatch. She puts on quite a show for you, mrowling lustfully as she works her fingers into her wet cunt while teasing her nipples and groping her breasts with her free paw, driving herself to several yowling climaxes as you recover from your own.";
	else: [male]
		say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach him slowly while letting one hand wander down between your things. The muscular jaguar warrior purrs in contentment as he notices you and the tip of his manhood starts showing at the opening of his sheath. The simple anticipation of being with you makes his arousal soar so very high, proving him to be an utterly devoted pet. He mrowls lustfully as you approach, licking his lips as he watches your fingers slowly part your nether lips and stroke along their length. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl, still fingering yourself as he quickly closes the distance and sinks to his hands and knees in front of you.";
		say "     Tehuantl rumbles eagerly as his padded paws tease your inner thighs gently. He positions himself between them and begins teasing your glistening folds with his tongue. You run your hands over his furred head, stopping to stroke behind his ears and intensifying his purrs of pleasure. Feeling his rough tongue making long, slow passes across your outer lips sends shivers of delight run through you. Tehuantl's paws drift closer to your drooling pussy as his tongue begins pressing further into you, his soft paw pads soon rubbing your clit delightfully while his other paw spreads your cunt apart to give further access to your needy depths. Soon you are moaning in pleasure as your thirsty feline pet pushes his [if Player is female]mistress[else]master[end if] to a powerful climax, drinking up every drop of your feminine fluids as his talented tongue and paws draw out your orgasm as long as they can.";
		WaitLineBreak;
		say "     As you slump back in your seat, a loudly purring Tehuantl slowly pulls back from your trembling pussy. The sound of his satisfaction at pleasing you fills you with pride at having such a devoted pet and you praise him with a smile, then stroke his head happily. 'Mmmh, my [if Player is female]mistress[else]master[end if] tastes amazing,' the jaguar mrowls in pleasure, cleaning up the last few stray drops of femcum before kissing your sensitive clit tenderly and laying back on the floor before you. His paws drift down his own body towards his by now fully erect prick. Putting on quite a show for you, he writhes on the ground and pants lustfully as he works his manhood with rapid strokes up and down. His other hand meanwhile slides between the feline's muscular legs to finger his own ass. Giving you an adoring look from the ground in front of you, he drives himself to a yowling climax, splattering his form in white streaks of cum while you recover from your own.";
	NPCSexAftermath Tehuantl receives "OralPussy" from Player;

to say TehuantlSex_69wtoy:
	say "     With Tehuantl's powerful scent filling the air, you decide to try and give her a little something extra to help her take the edge off. She mewls needfully as you drop your gear and approach her, spreading her legs wide to put her needy pussy on display for you. You push Tehuantl back to lay on the couch and tease her wet pussy with a pair of fingers, stroking her outer folds and clit before pressing deeper into her body. Tehuantl moans in delight as you continue frigging her, groping her breasts and tweaking her nipples as you do.";
	say "     The feline's pussy grips your fingers tightly, already milking and squeezing your fingers like a cock in an effort to cool her heat. As your play continues, you spot one of the rubber sex toys you brought back for Tehuantl to help her with her heat and reach for the bright pink cock. Toy in hand, you spread Tehuantl's nether-lips apart with the fingers already inside her and begin pushing the tip of the toy into her. Tehuantl's moans of pleasure become more frequent and much louder as you drive the thick rubber cock into her, freeing your sticky fingers to softly massage her clit as well. It doesn't take long for your efforts to pay off, and Tehuantl is soon yowling in release. Her musky waters gush out around the rubber toy and soak your hand.";
	WaitLineBreak;
	say "     With Tehuantl still shivering in delight after her climax, you climb up on the couch with her, positioning yourself above her in a 69 position. After pulling the slick pink dildo from Tehuantl's cunt, you begin lapping at her wet pussy with long, slow motions. Meanwhile, the rubbery sex-toy has found its way into Tehuantl's paws, and it is soon probing the outer folds of your own moist nethers. You can't help but moan out loud as Tehuantl sinks the toy into your body, momentarily distracting you from her wet pussy. The two of you go at it for what feels like hours, taking turns playing and teasing each other to near orgasm before backing off and letting the other take over, but eventually the delightful feeling becomes too much for [one of]Tehuantl, and she soaks your face in her nectars with a yowl of release. Even in the throes of orgasm, the insatiable feline drives her rubber sex toy into you while massaging your clit with her padded paw to until you climax as well before she finally stops[or]you, and you soak Tehuantl in your nectars with a cry of release. Despite the debilitating pleasure, you manage to focus enough to drive a pair of fingers into Tehuantl and frig her to orgasm as well before you finally let the bliss wash over you[at random].";
	WaitLineBreak;
	say "     You lay together with Tehuantl cuddling for some time, simply enjoying your pet's company for a while before you finally lift yourself from the couch.";
	NPCSexAftermath Tehuantl receives "OralPussy" from Player;
	NPCSexAftermath Tehuantl receives "PussyDildoFuck" from Player;
	NPCSexAftermath Player receives "PussyDildoFuck" from Tehuantl;

to say TehuantlSex_BJ:
	if HP of Tehuantl < 50: [female]
		say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach her slowly while letting one hand wander down to stroke your [cock size desc of Player] [Cock of Player] cock. She mrowls lustfully as you approach, licking her lips as she watches your pre drip from the tip of your shaft. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl, still stroking yourself as she approaches on her hands and knees.";
		say "     Tehuantl rumbles eagerly as she takes hold of your cock with one paw, her soft pads gripping you tightly as her other paw moves to fondle your [Ball Size Adjective of Player] [Balls]. With a smile she leans forward, her feline tongue slipping from her mouth to slowly lick across your glans, [if Player is barbed]its rough surface catching slightly on your pointed barbs [end if]sending shivers of pleasure through your body. Slowly her muzzle descends down your length, her tongue licking and teasing you the entire time as she wraps her lips around your cock.";
		WaitLineBreak;
		say "     Tehuantl's eager rumbling only intensifies as she begins bobbing her head up and down your cock[if Player is barbed], even as she moans somewhere between pleasure and pain as your barbed shaft scrapes and tears at her soft flesh[end if]. Between her tight oral grip or your cock, her hungry sucking and the pleasant sensation of her rough tongue sliding across your length, Tehuantl quickly pushes you towards your peak. You grip her head tightly as you make a few firm thrusts into her mouth before your entire form tenses up and you blast your thick [Cum Load Size of Player] load down her throat with a roar of pleasure.";
		say "     As you slump back in your seat Tehuantl slowly releases your spent shaft, cleaning up the last few stray drops of cum before kissing your glans tenderly and laying back on the floor before you. Her paws drift down her body towards her own dripping snatch. She puts on quite a show for you, mrowling lustfully as she works her fingers into her wet cunt while teasing her nipples and groping her breasts with her free paw, driving herself to several yowling climaxes as you recover from your own.";
	else: [male]
		say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach him slowly while letting one hand wander down to stroke your [cock size desc of Player] [Cock of Player] cock. The muscular jaguar warrior purrs in contentment as he notices you and the tip of his manhood starts showing at the opening of his sheath. The simple anticipation of being with you makes his arousal soar so very high, proving him to be an utterly devoted pet. He mrowls lustfully as you approach, licking his lips as he watches your pre drip from the tip of the erect shaft dangling between your legs. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl, still stroking yourself as he quickly closes the distance and sinks to his hands and knees in front of you.";
		say "     Tehuantl rumbles eagerly as he takes hold of your cock with one paw, his soft pads gripping you tightly while his other paw moves to fondle your [Ball Size Adjective of Player] [Balls]. With a smile he leans forward, his feline tongue slipping from his mouth to slowly lick across your glans, its rough surface [if Player is barbed]catching slightly on your pointed barbs[else]creating a tingling sensation as it brushes your sensitive skin[end if] and sending shivers of pleasure through your body. Slowly his muzzle descends down your length, with your pet's tongue licking and teasing you the entire time as he wraps his lips around your cock.";
		WaitLineBreak;
		say "     Tehuantl's eager rumbling only intensifies as he begins bobbing his head up and down your cock[if Player is barbed], even as he moans somewhere between pleasure and pain as your barbed shaft scrapes at his soft flesh[end if]. For having been such a proud alpha-male before you took him as yours, Tehuantl sure knows how to suck a guy off. With his mouth already doing such a splendid job as it encircles your rock-hard pole right now, lust easily trumps your curiosity and you just let him continue, putting a hand on the submissive jaguar's head to stroke him behind the ears. In all likelihood, his skills will just be the result of a drunken night - or three - with a satyr. No matter which, between his tight oral grip on your cock, his hungry sucking and the pleasant sensation of his rough tongue sliding across your length, Tehuantl's blowjob quickly pushes you towards your peak. You grip his head tightly and make a few firm thrusts into his mouth before your entire form tenses up and you blast your thick [Cum Load Size of Player] load down his throat with a roar of pleasure.";
		say "     As you slump back in your seat, a loudly purring Tehuantl slowly releases your spent shaft. The sound of his satisfaction at pleasing you fills you with pride at having such a devoted pet and you praise him with a smile, then stroke his head happily. 'Mmmh, my [if Player is female]mistress[else]master[end if] tastes amazing,' the jaguar mrowls in pleasure, cleaning up the last few stray drops of cum before kissing your glans tenderly and laying back on the floor before you. His paws drift down his own body towards his by now fully erect prick. Putting on quite a show for you, he writhes on the ground and pants lustfully as he works his manhood with rapid strokes up and down. His other hand meanwhile slides between the feline's muscular legs to finger his own ass. Giving you an adoring look from the ground in front of you, he drives himself to a yowling climax, splattering his form in white streaks of cum while you recover from your own.";
	NPCSexAftermath Tehuantl receives "OralCock" from Player;

to say TehuantlSex_Ride:
	if Player is female: [female and herm player]
		say "     Deciding to put Tehuantl's feline manhood to use, you drop your gear and approach him slowly while letting one hand wander down between your things. The muscular jaguar warrior purrs in contentment as he notices you and the tip of his manhood starts showing at the opening of his sheath. The simple anticipation of being with you makes his arousal soar so very high, proving him to be an utterly devoted pet. He mrowls lustfully as you approach, licking his lips as he watches your fingers slowly part your nether lips and stroke along their length[if Player is male], then slide up to encircle your erection[end if]. Reaching out to stroke his cheek with your other hand, you proceed to pet the purring jaguarman then eventually whisper into his pointy ear that he should lie down for you. An eager smile spreads over his muzzle and Tehuantl gives your neck a happy lick, then the Aztec warrior obediently pads over and stretches out on his bedding.";
		LineBreak;
		say "     Your pet is quite aroused and his shaft stands proudly erect for you to enjoy. But which hole do you want to take him in?";
		say "     ([link]Y[as]y[end link]) - Your pussy of course!";
		say "     ([link]N[as]n[end link]) - Up your ass!";
		if Player consents:
			LineBreak;
			say "     Tehuantl rumbles eagerly and gives you an adoring look from where he lies, sliding a hand over the bumps of his lightly furred abs and gently stroking his cock as he watches your approach. 'Mmmh - [if Player is female]mistress[else]master[end if], I'm ready for you,' he mews in a needy tone, hiking his hips up a little before letting it slump down again. A gleaming bead of precum forms at the tip of his shaft, then slowly runs down between the rows of nubby spines along his cock. This nanite apocalypse definitively has its upsides, as you'd never have dreamed of one day have such a sexy little pet before - or not so little, as the submissive jaguar actually is quite a hunk... which makes taking him as yours even more amazing...";
			say "     Not wanting to wait any longer, you step up over Tehuantl and crouch down over his crotch. The purring feline welcomes you by sliding his soft-padded paws along your legs, stroking the insides of the thighs. He eagerly rubs over your nether lips and teases the sensitive clit at the top[if Cock Count of Player > 1], then cups your balls and proceeds to stroke the erect shaft above[end if]. You're in half a mind to just let him go on with this delightful teasing for a bit, but your burning libido demands having a hard dick inside you right away. Without much further delay, you gently push Tehuantl's paw aside and take hold of his penis, then lower yourself on top of it, biting your lip in pleasure as it sinks between your parted nether lips. The jaguar's erection feels hot in your wet pussy and both of you moan and gasp at the sensations of your penetration. Then it is all in, a hard rod balls-deep inside. You pause for a second, delighted at the nicely full feeling, then lean forward to kiss Tehuantl on the muzzle before starting to rock back on his hips.";
			WaitLineBreak;
			say "     With your first pull up on his shaft, the jaguar warrior's nubby feline cock-spines scrape along your inner walls, creating a peculiar but very pleasurable feeling for you. They're relatively soft and flexible enough to not really hurt, but you definitively know that it's a proud feline you've got inside you. As you fuck him hard, bouncing up and down on his stiff rod, you revel in the fact that the muscled warrior is all yours to enjoy. Pinning his arms to the mattress with your hands just makes him purr louder. The submissive feline mews happily as you search out his nipples with your lips and suck on them, teasing the small bumps as they harden from your stimulation. His erection throbs noticeably inside you when you proceed to lightly bite one of Tehuantl's nips, and the Aztec warrior loudly pants, 'Aaah, you make me feel so good. I love being your pet!'";
			say "     Combined with the amazing feelings of having his manhood inside yourself as you gyrate on his hips, this eagerly given exclamation of his submission is the last drop needed to kick loose your looming orgasm. A tsunami-like wave of built-up lust comes crashing down over you, filling your senses with pure bliss and rocking every muscle in your body. Your pussy twitches around and squeezes Tehuantl's manhood in rhythm with squirts of femcum splashing the jaguarman's crotch[if Player is male], combined with regular cum from your cock that paints his abs in white stripes - creating an interesting pattern to soak into his spotted fur[end if]. Reflexively sucking down hard on his sensitive nipple as you come, you make Tehuantl writhe under you in turn, and with little surprise, he joins in on the climactic pleasure with his orgasm an eye-blink later. With a lust-filled yowl, his hips buck up against you, driving his penis deep as it starts to spurt large throbs of cum into your waiting depths.";
			NPCSexAftermath Player receives "PussyFuck" from Tehuantl;
			WaitLineBreak;
			say "     As both [if Player is female]mistress[else]master[end if] and pet eventually wind down from your respective orgasms, you slump down on top of Tehuantl, too exhausted to keep yourself upright for the moment. Lying on his broad and muscular chest, your chest resting on warm and soft - if a bit sweat-matted - fur, you are happy to just rest like this for a moment. The deep rumbling purr emanating from your sexy companion fills you with contentment and relaxes you even further, so much so that you almost doze off for a little while. But then, as the submissive kitty's cock eventually softens more and more, it slips from between your nether lips, allowing for his cum to trickle out of the slightly gaping hole.";
			say "     Getting an idea how to complete this very nice coupling with your pet, you quickly turn around on your hands and knees, then shimmy up over Tehuantl's stretched-out form and bring your pussy over his head. The jaguar doesn't even need any sort of pointer to know what is expected of him and eagerly starts to eat your pussy, slurping up his earlier deposit in your depths. Tehuantl's feline tongue is a bit rough, yet nevertheless quite pleasant, so you let him cat-wash you till there's not a drop of cum left. Only then do you get up with a content sigh, walking over to collect your clothes and gear again.";
		else:
			LineBreak;
			say "     Tehuantl rumbles eagerly and gives you an adoring look from where he lies, sliding a hand over the bumps of his lightly furred abs and gently stroking his cock as he watches your approach. 'Mmmh - [if Player is female]mistress[else]master[end if], I'm ready for you,' he mews in a needy tone, hiking his hips up a little before letting it slump down again. A gleaming bead of precum forms at the tip of his shaft, then slowly runs down between the rows of nubby spines along his cock. This nanite apocalypse definitively has its upsides, as you'd never have dreamed of one day have such a sexy little pet before - or not so little, as the submissive jaguar actually is quite a hunk... which makes taking him as yours even more amazing...";
			say "     Not wanting to wait any longer, you step up over Tehuantl and crouch down over his crotch. The purring feline welcomes you by sliding his soft-padded paws along your legs, stroking the insides of the thighs. He eagerly rubs over your nether lips and teases the sensitive clit at the top[if Cock Count of Player > 1], then cups your balls and proceeds to stroke the erect shaft above[end if]. You're in half a mind to just let him go on with this delightful teasing for a bit, but your burning libido demands having a hard dick inside you right away. Without much further delay, you gently push Tehuantl's paw aside and take hold of his penis, then lower yourself on top of it, biting your lip in pleasure as it first bumps against your pucker and then pops past the muscle as you increase the downward pressure. The jaguar's erection feels hot in your tight chute and both of you moan and gasp at the sensations of your penetration. Then it is all in, a hard rod balls-deep inside. You pause for a second, delighted at the nicely full feeling, then lean forward to kiss Tehuantl on the muzzle before starting to rock back on his hips.";
			WaitLineBreak;
			say "     With your first pull up on his shaft, the jaguar warrior's nubby feline cock-spines scrape along your inner walls, creating a peculiar but very pleasurable feeling for you. They're relatively soft and flexible enough to not really hurt, but you definitively know that it's a proud feline you've got inside you. As you fuck him hard, bouncing up and down on his stiff rod, you revel in the fact that the muscled warrior is all yours to enjoy. Pinning his arms to the mattress with your hands just makes him purr louder. The submissive feline mews happily as you search out his nipples with your lips and suck on them, teasing the small bumps as they harden from your stimulation. His erection throbs noticeably inside you when you proceed to lightly bite one of Tehuantl's nips, and the Aztec warrior loudly pants, 'Aaah, you make me feel so good. I love being your pet!'";
			say "     Combined with the amazing feelings of having his manhood inside yourself as you gyrate on his hips, this eagerly given exclamation of his submission is the last drop needed to kick loose your looming orgasm. A tsunami-like wave of built-up lust comes crashing down over you, filling your senses with pure bliss and rocking every muscle in your body. Your asshole twitches around and squeezes Tehuantl's manhood in rhythm with squirts of femcum splashing the jaguarman's crotch[if Player is male], combined with regular cum from your cock that paints his abs in white stripes - creating an interesting pattern to soak into his spotted fur[end if]. Reflexively sucking down hard on his sensitive nipple as you come, you make Tehuantl writhe under you in turn, and with little surprise, he joins in on the climactic pleasure with his orgasm an eye-blink later. With a lust-filled yowl, his hips buck up against you, driving his penis deep as it starts to spurt large throbs of cum into your waiting depths.";
			NPCSexAftermath Player receives "AssFuck" from Tehuantl;
			WaitLineBreak;
			say "     As both [if Player is female]mistress[else]master[end if] and pet eventually wind down from your respective orgasms, you slump down on top of Tehuantl, too exhausted to keep yourself upright for the moment. Lying on his broad and muscular chest, your chest resting on warm and soft - if a bit sweat-matted - fur, you are happy to just rest like this for a moment. The deep rumbling purr emanating from your sexy companion fills you with contentment and relaxes you even further, so much so that you almost doze off for a little while. But then, as the submissive kitty's cock eventually softens more and more, it slips from between the stretched-out folds of your pucker, allowing for his cum to trickle out of the slightly gaping hole.";
			say "     Getting an idea how to complete this very nice coupling with your pet, you quickly turn around on your hands and knees, then shimmy up over Tehuantl's stretched-out form and bring your well-bred ass over his head. The jaguar doesn't even need any sort of pointer to know what is expected of him and eagerly starts to eat out your hole, slurping up his earlier deposit in your depths. Tehuantl's feline tongue is a bit rough, yet nevertheless quite pleasant, so you let him cat-wash you till there's not a drop of cum left. Only then do you get up with a content sigh, walking over to collect your clothes and gear again.";
	else: [male + neuter player]
		say "     Deciding to put Tehuantl's feline manhood to use, you drop your gear and approach him slowly while letting one hand wander down to your crotch. The muscular jaguar warrior purrs in contentment as he notices you and the tip of his manhood starts showing at the opening of his sheath. The simple anticipation of being with you makes his arousal soar so very high, proving him to be an utterly devoted pet. He mrowls lustfully as you approach, licking his lips as he watches your fingers slide [if Player is male]around your cock, slowly stroking up and down on the erection[else]over your smooth flesh, stroking the sexless but still quite sensitive area[end if]. Reaching out to stroke his cheek with your other hand, you proceed to pet the purring jaguarman then eventually whisper into his pointy ear that he should lie down for you. An eager smile spreads over his muzzle and Tehuantl gives your neck a happy lick, then the Aztec warrior obediently pads over and stretches out on his bedding.";
		LineBreak;
		say "     Tehuantl rumbles eagerly and gives you an adoring look from where he lies, sliding a hand over the bumps of his lightly furred abs and gently stroking his cock as he watches your approach. 'Mmmh - master, I'm ready for you,' he mews in a needy tone, hiking his hips up a little before letting it slump down again. A gleaming bead of precum forms at the tip of his shaft, then slowly runs down between the rows of nubby spines along his cock. This nanite apocalypse definitively has its upsides, as you'd never have dreamed of one day have such a sexy little pet before - or not so little, as the submissive jaguar actually is quite a hunk... which makes taking him as yours even more amazing...";
		say "     Not wanting to wait any longer, you step up over Tehuantl and crouch down over his crotch. The purring feline welcomes you by sliding his soft-padded paws along your legs, stroking the insides of the thighs. He eagerly rubs [if Player is male]your manhood and takes hold of the erect shaft to stroke it[else]your sensitive skin, quickly finding the spots that are especially enjoyable[end if]. You're in half a mind to just let him go on with this delightful teasing for a bit, but your burning libido demands having a hard dick inside you right away. Without much further delay, you gently push Tehuantl's paw aside and take hold of his penis, then lower yourself on top of it, biting your lip in pleasure as it first bumps against your pucker and then pops past the muscle as you increase the downward pressure. The jaguar's erection feels hot in your tight chute and both of you moan and gasp at the sensations of your penetration. Then it is all in, a hard rod balls-deep inside. You pause for a second, delighted at the nicely full feeling, then lean forward to kiss Tehuantl on the muzzle before starting to rock back on his hips.";
		WaitLineBreak;
		say "     With your first pull up on his shaft, the jaguar warrior's nubby feline cock-spines scrape along your inner walls, creating a peculiar but very pleasurable feeling for you. They're relatively soft and flexible enough to not really hurt, but you definitively know that it's a proud feline you've got inside you. As you fuck him hard, bouncing up and down on his stiff rod, you revel in the fact that the muscled warrior is all yours to enjoy. Pinning his arms to the mattress with your hands just makes him purr louder. The submissive feline mews happily as you search out his nipples with your lips and suck on them, teasing the small bumps as they harden from your stimulation. His erection throbs noticeably inside you when you proceed to lightly bite one of Tehuantl's nips, and the Aztec warrior loudly pants, 'Aaah, you make me feel so good. I love being your pet!'";
		say "     Combined with the amazing feelings of having his manhood inside yourself as you gyrate on his hips, this eagerly given exclamation of his submission is the last drop needed to kick loose your looming orgasm. A tsunami-like wave of built-up lust comes crashing down over you, filling your senses with pure bliss and rocking every muscle in your body. Your asshole twitches around and squeezes Tehuantl's manhood[if Player is male] in rhythm with the heavy splashes of cum that your cock sends forth, painting his abs in white stripes and creating an interesting pattern to soak into his spotted fur[end if]. Reflexively sucking down hard on his sensitive nipple as you come, you make Tehuantl writhe under you in turn, and with little surprise, he joins in on the climactic pleasure with his orgasm an eye-blink later. With a lust-filled yowl, his hips buck up against you, driving his penis deep as it starts to spurt large throbs of cum into your waiting depths.";
		NPCSexAftermath Player receives "AssFuck" from Tehuantl;
		WaitLineBreak;
		say "     As both [if Player is female]mistress[else]master[end if] and pet eventually wind down from your respective orgasms, you slump down on top of Tehuantl, too exhausted to keep yourself upright for the moment. Lying on his broad and muscular chest, your chest resting on warm and soft - if a bit sweat-matted - fur, you are happy to just rest like this for a moment. The deep rumbling purr emanating from your sexy companion fills you with contentment and relaxes you even further, so much so that you almost doze off for a little while. But then, as the submissive kitty's cock eventually softens more and more, it slips from between the stretched-out folds of your pucker, allowing for his cum to trickle out of the slightly gaping hole.";
		say "     Getting an idea how to complete this very nice coupling with your pet, you quickly turn around on your hands and knees, then shimmy up over Tehuantl's stretched-out form and bring your well-bred ass over his head. The jaguar doesn't even need any sort of pointer to know what is expected of him and eagerly starts to eat out your hole, slurping up his earlier deposit in your depths. Tehuantl's feline tongue is a bit rough, yet nevertheless quite pleasant, so you let him cat-wash you till there's not a drop of cum left. Only then do you get up with a content sigh, walking over to collect your clothes and gear again.";

to say TehuantlSex_Assfuck:
	say "     Deciding that you want to feel your warrior kitty's tight asshole around your cock, you drop your gear and approach Tehuantl - stripping off articles of clothing with every step. As the muscular feline becomes aware of your presence, you're already fully naked, with a trail of discarded garments behind you. He mrowls lustfully as he takes in your body[if Player is barbed], licking his lips as he eyes your barbed cock[end if] before taking your hand as you pull him up from where he was kneeling on his bedroll. The richly painted wooden shield he was polishing lies forgotten as he readily obeys his [if Player is female]mistress[else]master[end if] - just as a good pet should. 'I am ready to serve my tlacahua,' he says with an eager purr, calling you master in his original Nahuatl language and leaning in to lick your shoulder with his rough tongue.";
	say "     Oh yeah! Life is good if one has a devoted jaguarman slave, and you stroke your eager cat's fur and feel his trained muscles. Tehuantl lives to serve you, so he is very affectionate and open for every touch and caress, from just stroking his fur to squeezing his firm buttocks and making him mew in pleasure as you stroke his wrinkled pucker. And the time of exploring and feeling the other up isn't one-sided either, as he worships his owner with eager hands, rubbing strong fingers over your form with gentle attention in a quite pleasurable massage. This almost makes you wish to simply stay doing this, entwined with your pet and both of you naked in a wide-open public library - but as he embraces you and rubs his furred cheek against yours, your rock-hard cock rubs up against the jaguar's abs. That simple touch, enjoyable in its own right, reminds you what you had originally wanted to do...";
	WaitLineBreak;
	say "     Taking hold of Tehuantl's head, you pull him close and into an eagerly returned kiss. Pushing him backwards step by step while you make out in breathless haste, the Aztec warrior soon thumps with his back against the end of a nearby bookshelf. Oh yes - this will do nicely! With eager fingers, you turn your spotted pet around and pull his arms up over his head, ordering him to brace against the wood as you fuck him. 'Master, take me as hard as you want!' he lets out an eager growl, pushing his hips back at you and raising the long tail sprouting out of his lower back right above. Who could resist such an invitation?! Running a hand down his broad back, you feel the warmth of his firm and powerful body, then spit on your fingers and rub them over his pucker for some little amount of lubrication at least.";
	if Player is barbed:
		say "     Tehuantl rumbles happily as you line up your [Cock of Player] member with his hole, then press forward steadily. His back door resists for a few heartbeats, then finally yields to the stiff invader, stretching around your shaft as you slide right in and Tehuantl gives a pleased groan. He moans in pleasure as you begin sinking your barbed shaft deeper, obviously delighting in the pleasant sensation of your spines scraping softly along his inner walls. He bites his lip in anticipation as your forward movement slows to a stop, and you feel his entire form tense up slightly as you prepare to withdraw your length. Tehuantl yowls in ecstasy as you begin to pull back, his entire form shivering beneath you as your pointed barbs scrape and tear at his tender flesh, driving him to a first climax before you've even pulled back completely. You wrap your arms around your pet from behind, holding him tightly as he trembles in orgasm and sprays the end of the bookshelf with spurts of cum.";
		say "     After giving him a moment of peace, you start moving again - making Tehuantl moan and yowl as you pound away at the needy kitty, the feeling of his tight ass gripping your member so he can be further stimulated by your feline barbs only intensifying your own pleasure with each thrust. He mewls lustfully as you continue to fuck his eager body, hand-paws scratching the wood of the bookshelf as he has to brace himself against you and the ever more rough pounding as your libido rises quickly. Your own arms embrace him from behind and move to his muscular pecs, teasing the nipples standing firm and erect from the jaguarman's own lust.";
		WaitLineBreak;
		say "     Soon the pleasant sensations of his tight, squeezing tunnel begin to overwhelm you, and you roar in orgasm as your climax strikes, driving your length into the Aztec warrior as you grip his body tightly, ensuring he stays firmly impaled by your shaft as you blast shot after shot of your [Cum Load Size of Player] load into his spasming back passage. Exhausted by the fuck, you hold on to your well-fucked kitty, leaning forward against his strong back that effortlessly bears your weight too, without even a tremble of his stretched-out arms. As your cock keeps spurting more and more cum into the jaguar's ass, you bask in the afterglow of your orgasm and start to wonder if he might be ready for another orgasm.";
		say "     Playfully groping your pet, you find his own rock-hard spined cock, its spined shaft slick with pre and cum. Taking hold of it, you begin to jerk Tehuantl off. The purrs of the anthro cat get louder and louder quickly until he unloads a powerful barrage of cum-shots, creaming the side of the bookshelf for the second time in a row. The two of you remain standing like that for a little while, riding out the throes of your respective orgasms and just enjoying the togetherness for a while. Sadly, you can't stay like this forever, so eventually you have to pull your softening cock out and lead your pet back to his bedding. The bookshelf stays behind as it is - bearing the signs of your eager coupling with its claw-marks and cum-stains.";
	else:
		say "     Tehuantl rumbles happily as you line up your [Cock of Player] member with his hole, then press forward steadily. His back door resists for a few heartbeats, then finally yields to the stiff invader, stretching around your shaft as you slide right in and Tehuantl gives a pleased groan. The jaguar warrior's ass grips your shaft delightfully, squeezing your cock even as you begin slowly pulling back. He mewls lustfully as you begin pounding into his eager body, hand-paws scratching the wood of the bookshelf as he has to brace himself against you and the ever more rough pounding as your libido rises quickly. Your own arms embrace him from behind and move to his muscular pecs, teasing the nipples standing firm and erect from the jaguarman's own lust.";
		say "     Soon the pleasant sensations of his tight, squeezing tunnel begin to overwhelm you, and you roar in orgasm as your climax strikes, driving your length into the Aztec warrior as you grip his body tightly, ensuring he stays firmly impaled by your shaft as you blast shot after shot of your [Cum Load Size of Player] load into his spasming back passage. Exhausted by the fuck, you hold on to your well-fucked kitty, leaning forward against his strong back that effortlessly bears your weight too, without even a tremble of his stretched-out arms. As your cock keeps spurting more and more cum into the jaguar's ass, you bask in the afterglow of your orgasm and remember that you need to get him off too.";
		WaitLineBreak;
		say "     Playfully groping your pet, you find his own rock-hard spined cock, its spined shaft somewhat slick with pre, and take hold of it, jerking Tehuantl off. The purrs of the anthro cat get louder and louder until he unloads a powerful barrage of cum-shots, really creaming the side of the bookshelf. The two of you remain standing like that for a little while, riding out the throes of your respective orgasms and just enjoying the togetherness for a while. Sadly, you can't stay like this forever, so eventually you have to pull your softening cock out and lead your pet back to his bedding. The bookshelf stays behind as it is - bearing the signs of cour eager coupling with its claw-marks and cum-stains.";
	NPCSexAftermath Tehuantl receives "AssFuck" from Player;

to say TehuantlandSven:
	if HP of Sven < 30:		[pet Sven]
		say "     As you make your way into the library, you hear the heavy bunker door creak open on the far side of the room. Ducking out of sight for a moment, you watch with curious interest as Sven quietly slips out and makes his way towards the stairs to the library's upper level with his nose high in the air. Taking a breath yourself, you realize the scent of Tehuantl's heat still permeates the room.";
		say "     Seeing how distracted he seems, you could probably follow Sven upstairs and see what happens without him noticing pretty easily ([link]Y[as]y[end link]), or you could leave it be ([link]N[as]n[end link]).";
		if Player consents:
			say "     As Sven's long snow-leopard tail disappears upstairs, you slowly, quietly make your way over to the steps to see what your feline pets are up to. Peeking over the top of the stairs, you see Sven lurking down one the aisles of books, wringing his tail nervously as he peers at Tehuantl from between the volumes. Tehuantl meanwhile, apparently well aware of the hidden kitty, is lounging on the couch near the balcony teasing her wet, swollen cunt as she watches the shy snowmeow spying on her.";
			say "     Finally tired of waiting, Tehuantl rises from her seat and makes her way over to where Sven is lurking. Realizing she's approaching, he quickly tries to make himself look busy, shuffling through the books in front of him as if he's looking for a specific title. With a predatory glint in her eye, Tehuantl pads up beside Sven, rumbling softly as she steps in close to him.";
			WaitLineBreak;
			say "     'And what brings you up here, cutie?' Tehuantl rumbles as she leans in close to the nervous snow leopard, gently placing a paw between his shoulders. 'I'm sure I could help you find [italic type]whatever[roman type] you're looking for. Sven shudders as Tehuantl's paw slowly descends down his back, settling at the base of his tail. Sven attempts to explain that he's looking for a particular book, but with the powerful scent of Tehuantl's arousal so close and her distracting touch, he manages only to fumble and stutter over his words until she places a finger over his lips. With her paw now scritching Sven's lower back, his tail slips from his grasp, revealing his [if HP of Sven >= 10 and lust of Sven is 1]baby blue[else if HP of Sven >= 10 and lust of Sven is 2]yellow[else]gray[end if] member, hard with arousal. Tehuantl licks her lips slowly as she eyes Sven's ready cock before looking back into the nervous kitty's face. Her paw slides down from Sven's mouth, scritching his chin for a moment before tilting his head upward slightly so she can plant a quick kiss on the end of his muzzle.";
			say "     'I think I know just what you need; I happen to be looking for the same thing. I'm sure we can help each other out cutie.' Sven can only mewl sheepishly in response before Tehuantl gives him a light push, smirking mischievously as Sven stumbles backwards, tripping over his own tail and landing his back. Without hesitation Tehuantl steps over the supine snowmeow. She positions her dripping cunt over Sven's groin and pins his shoulders to the ground before lowering herself onto his shaft.";
			WaitLineBreak;
			say "     Both felines groan in pleasure as Sven's shaft spreads Tehuantl's opening apart, pressing into her depths as she descends down his length. With a lustful growl, Tehuantl rides up and down Sven's [if HP of Sven > 10 and lust of Sven is 1]baby blue[else if HP of Sven > 10 and lust of Sven is 2]yellow[else]gray[end if] cock, yowling in pleasure as she drives him into her eager cunt, and soon any show of resistance from Sven is gone as he thrusts his hips forward to match her descent. Tehuantl grabs the other kitty's paws and presses them to her breasts, prompting him to play with them. The bell on the jaguar's collar jingles merrily as she rides the snowmeow's shaft.";
			say "     [if Player is not neuter]As you watch the show, you can't help but let your own hands drift down towards your excited groin and begin playing with yourself as you watch the feline intercourse. [end if]Before long Tehuantl's rough fucking has her approaching a powerful climax and with a yowl of ecstasy she drives herself down Sven's length, soaking his fur with her juices as she orgasms. Meanwhile, Tehuantl's wild orgasm is enough to push Sven over the edge as well, and you watch as his entire body tenses up, knowing his seed is being unloaded deep inside Tehuantl's body.";
			say "     As the two begin to come down from their respective climaxes, Tehuantl stares down at the exhausted snowmeow beneath her, licking her lips as she releases a shoulder to scratch his chin gently. Then, without another word, she begins her motion again, clearly intent on riding the submissive snow leopard to another orgasm before she'll be satisfied. Sven is a far less active participant in this second fucking, struggling to keep in time with Tehuantl's eager bouncing. By the time Tehuantl reaches her second climax, Sven can do little more than moan beneath her. With another yowl Tehuantl soaks both their crotches in a fresh wave of her feminine juices, shivering in delight as orgasm rolls through her.";
			say "     Finally sated, the lustful jaguar rolls off the exhausted snowmeow, licking and nuzzling his face as she lays beside him for a short time before getting to her feet and strutting back towards her favorite seat by the balcony, their combined juices dripping from her swollen cunt the entire way. As Sven begins stumbling to his unsteady feet, you decide it best to [if Player is not neuter]clean up your own mess and [end if]slip back downstairs before you're seen.";
		else:
			say "     Deciding to leave your feline pets be, you try to put the thought out of your mind as Sven disappears upstairs. Soon after you hear the jingling of Tehuantl's belled collar and some hushed conversation upstairs before you turn your attention to other things.";
		NPCSexAftermath Tehuantl receives "PussyFuck" from Sven;
[
	else:
		say "***Alternate Sven scene w/Tehuantl."; ]

to say TehuantlandSnow:
	if TehuantlSnowStatus is 0:
		say "     Once you finally arrive in the relative safety of the library, you stop and relax for a moment, taking a short break from the trials of the city outside. From your seat at one of the library's large study tables, you notice some movement at the staircase leading up to the abbey's second floor. You watch with curious interest as Tehuantl stealthily descends from the upper floor, her tail flicking with excitement as she peers across the library in Snow's direction.";
		say "     Snow meanwhile seems to be unaware of the feline slinking towards her, distracted with some small project she's tinkering with at the table she's claimed as a workbench, though based on the way she is idly rubbing her groin with a free paw while she works, it seems the arousing scent of Tehuantl's feline heat filling the room is still having an effect on her.";
		say "     As Tehuantl reaches the bottom of the stairs, she spots you looking at her and realizes she hasn't gone unnoticed. Glancing back at Snow, then towards you once again, she waits patiently at base of the steps as if waiting for your reaction to her apparent interest. Will you let your feline pet try and entice the unsuspecting squirrel into some fun?";
		if Player consents:
			say "     With a knowing grin you nod at Tehuantl, who gives you a naughty smirk in return before resuming her silent approach. You settle down into your seat, getting comfortable for what promises to be quite a show as she stalks across the library towards Snow.";
			say "     Even from across the room, you hear Snow chitter in surprise as the alluring jaguar taps her on the shoulder and she abruptly spins around to face the feline, revealing the painfully large erection straining her pants. Snow fidgets uncomfortably as she and Tehuantl make small talk for a while, obviously distracted by the pretty kitty's attractive assets and arousing scent. Tehuantl seems to take a perverse delight in watching the poor squirrel squirm, drawing out the awkward introduction for some time before she finally leans in close to the busty squirrel and whispers something in her ear. Snow's expression lightens instantly and she quickly sets about clearing a space at her workbench.";
			say "     Tehuantl pulls Snow into a tight embrace, dragging her towards the now cleared table before slowly descending down her squirrine form towards her groin. Her deft paws work quickly to remove Snow's tight pants, finally allowing her engorged pink member to spring free. Marveling at Snow's massive cock, Tehuantl takes a hold of it with one paw, stroking it gently as her rough tongue plays teasingly across her glans.";
			WaitLineBreak;
			say "     When Tehuantl finally rises back to her feet, Snow eagerly grabs her shoulders and pushes her back against the counter, stroking her impressive member across Tehuantl's moist nethers before pressing her hips forward, driving into the feline's needy body with a grunt. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two settle into a steady rhythm, moaning lustfully as their paws roam across each other's form, adding to their building arousal.";
			say "     With a screeching chitter and a feline yowl, the two finally reach mutual climax as Snow makes a final thrust home, pushing Tehuantl back to lay across the table as she puts all her weight into the final motion before emptying her grapefruit-sized balls into the moaning feline.";
			WaitLineBreak;
			say "     The two lay locked together on the table for a few moments before Tehuantl pushes the limp squirrel off onto the table beside her, pulling Snow's cock free with a noticeable pop. With Snow's ample load still leaking down her furred thighs, Tehuantl ascends back up to her favorite spot upstairs, only stopping momentarily at the bottom of the stairs to look back at you, winking playfully while spreading her stuffed pussy lips apart for you to see before continuing upstairs.";
			now TehuantlSnowStatus is 1;
			NPCSexAftermath Tehuantl receives "PussyFuck" from Snow;
		else:
			say "     Deciding against letting the needy feline prey on the unsuspecting squirrel, you shake your head sternly at her, motioning her back upstairs. Clearly disappointed, the obedient kitty slowly turns and makes her way back to her favorite spot upstairs, only pausing at the top of the steps to look back at you one last time before moving out of sight.";
			now TehuantlSnowStatus is 99;
	else if TehuantlSnowStatus is 1:
		if Player is not neuter:
			say "     Once again taking a moment to relax in the relative safety of the library, you spot Tehuantl slinking down the stairs once more with her eyes set on Snow. As she reaches the bottom of the stairs you consider following her to join in on the fun this time.";
			if Player consents:
				if Player is male:
					say "     Tehuantl gives you another naughty smirk as she sees you rising from your seat, making sure to swish her tail wide as you follow behind her, giving you a clear view of her tight bottom. While Tehuantl is once again warming up Snow, you stop to consider how you want to proceed; you could mount Snow as she screws the kitty ([link]Y[as]y[end link]), or get some attention from that rough feline tongue ([link]N[as]n[end link]).";
					if Player consents: [ male mounting Snow]
						say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt, and eager to get in one the fun, you slip in behind Snow with your own [cock size desc of Player] [Cock of Player] cock in hand. They both gasp as you press Snow forward to lay across Tehuantl's back and sink your own shaft into Snow's exposed cunny.";
						say "     It takes a little while before the three of you find a good rhythm, but once you do it proves to be a delightful fuck. Snow's tight hole is especially pleasant thanks to her increased arousal from the sensation of both her genders being tended too, and based on her loud feline cries of pleasure Tehuantl is more than enjoying Snow's impressive breeding tool. Snow is the first to reach climax and cries out loud as she fills the pretty jaguar with her ample seed, tipping Tehuantl over the edge to her own powerful orgasm. Simultaneously, Snow's cunt clamps down tightly around your cock as female orgasm rolls through her as well, causing you to add to their cries with a climax of your own.";
						NPCSexAftermath Snow receives "PussyFuck" from Player;
					else: [male oral]
						say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt, and eager to get in one the fun, you slip in on the ground in front of Tehuantl, bringing your shaft into position in front of her muzzle.";
						say "     With the eager squirrel furiously fucking her, Tehuantl's blow job is a little rougher than usual, but it is delightful nonetheless. The rocking motion of Snow's thrusting causes Tehuantl's head to bob up and down your length with extra vigor, with her sometimes merely teasing your glans with that rough feline tongue, or with her nose rubbing against your groin and your cock buried in her throat at other times. You ride a roller-coaster of pleasure as the feeling of this pushes you ever closer to climax, and based on the increasing frequency of her moans and mewls around your member, Tehuantl isn't far off either.";
						say "     With a muffled yowl and an excited chitter, Tehuantl and Snow both reach climax at nearly the same time, and you feel their combined juices gushing out around Snow's cock onto your feet. Snow's final firm thrusts drive Tehuantl forward onto your cock as she fills the feline with her seed, prompting you to grip her head tightly and make a few final thrusts into her wanton mouth to push yourself to orgasm as well. Your groans join the other cries of release as you fill the needy kitty with your [Cum Load Size of Player] load, and she sucks your shaft eagerly to get all the cream she can.";
						NPCSexAftermath Tehuantl receives "OralCock" from Player;
					NPCSexAftermath Tehuantl receives "PussyFuck" from Snow;
				else: [female oral]
					say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt, and eager to get in one the fun, you slip in on the ground in front of Tehuantl, bringing your wet cunt into position in front of her muzzle.";
					say "     With the eager squirrel furiously fucking her, Tehuantl's cunnilingus is a little rougher than usual, but it is delightful nonetheless. The rocking motion of Snow's thrusting causes Tehuantl's muzzle to press roughly into your sopping pussy with each motion, letting her delightful rough tongue delve further into your body each time. You run your hands through her hair and press your hips up onto her muzzle each time Snow drives into the needy feline, driving you closer to climax each time, and based on the increasing frequency of her moans and mewls, Tehuantl isn't far off either.";
					say "     With a muffled yowl and an excited chitter, Tehuantl and Snow both reach climax at nearly the same time, and you feel their combined juices gushing out around Snow's cock onto your feet. Snow's final firm thrusts drive Tehuantl forward into your groin, pressing her muzzle against your clit as her tongue presses forward into your depths until she finally drives you to orgasm as well. Even as the other's cries of delight begin to die down, Tehuantl continues licking and sucking at your spasming cunt, drawing out climax as she laps up as much of the sweet nectar as she can.";
					NPCSexAftermath Tehuantl receives "OralPussy" from Player;
					NPCSexAftermath Tehuantl receives "PussyFuck" from Snow;
				say "     The three of you lay there together in a temporarily sated pile as you bask in the afterglow of your release. Tehuantl is the first to get up and leave, giving you both a quick grope before she struts back up to her favorite spot upstairs, leaving you and Snow to collect your things and get back to your earlier tasks.";
			else:
				say "     Tehuantl gives you another naughty smirk as she passes by, obviously pleased that you're not stopping her from returning to the well-hung squirrel. The small talk is much quicker this time, and soon Tehuantl is sitting up on the counter before Snow with her legs spread wide. As Snow steps closer, her paws quickly working to strip off her pants, Tehuantl pulls her into a tight embrace before pushing her downward. With no further instruction, Snow quickly dives into Tehuantl's needy muff, kissing those needy swollen folds tenderly with one paw massaging the feline's clit and the other stroking her own sizable member.";
				say "     Snow's long, deliberate work at the feline's crotch soon has her moaning and mewling in delight, pushing her towards climax with surprising ease. Before long Tehuantl releases a feline yowl of ecstasy and soaks the squirrel's muzzle with her powerful-smelling juices.";
				WaitLineBreak;
				say "     Satisfied that the feline is sufficiently warmed up, Snow aligns her impressive tool with Tehuantl's sopping opening and begins to slowly sink it into her. With the aftermath of her first climax subsiding, Tehuantl wraps her legs around the busty squirrel, pulling more of that thick pink cock into her body with a shiver of delight. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two once again find their rhythm, playfully teasing each other between to further add to their building arousal.";
				say "     With another feline yowl, Tehuantl climaxes for the second time, forcefully pulling Snow forward as a fresh flow of her juices soaks their crotches. Soon after Snow finally reaches her own peak, nearly tipping the table over as her last powerful thrusts once again fill the feline with her ample seed.";
				WaitLineBreak;
				say "     The two lay together on the table for a while longer this time, paws roaming each other's bodies as they bask in their mutual afterglow for a while. Eventually Tehuantl finally pushes the spent squirrel off onto the table beside her and begins making her way back upstairs.";
				NPCSexAftermath Snow receives "OralPussy" from Tehuantl;
				NPCSexAftermath Tehuantl receives "PussyFuck" from Snow;
		else: [neuter]
			say "     Unfortunately, since you currently lack the appropriate equipment to join in, you're relegated to watching once again, if you want.";
			if Player consents:
				say "     Tehuantl gives you another naughty smirk as she passes by, obviously pleased that you're not stopping her from returning to the well-hung squirrel. The small talk is much quicker this time, and soon Tehuantl is sitting up on the counter before Snow with her legs spread wide. As Snow steps closer, her paws quickly working to strip off her pants, Tehuantl pulls her into a tight embrace before pushing her downward. With no further instruction, Snow quickly dives into Tehuantl's needy muff, kissing those needy swollen folds tenderly with one paw massaging the feline's clit and the other stroking her own sizable member.";
				say "     Snow's long, deliberate work at the feline's crotch soon has her moaning and mewling in delight, pushing her towards climax with surprising ease. Before long Tehuantl releases a feline yowl of ecstasy and soaks the squirrel's muzzle with her powerful-smelling juices.";
				WaitLineBreak;
				say "     Satisfied that the feline is sufficiently warmed up, Snow aligns her impressive tool with Tehuantl's sopping opening and begins to slowly sink it into her. With the aftermath of her first climax subsiding, Tehuantl wraps her legs around the busty squirrel, pulling more of that thick pink cock into her body with a shiver of delight. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two once again find their rhythm, playfully teasing each other between to further add to their building arousal.";
				say "     With another feline yowl, Tehuantl climaxes for the second time, forcefully pulling Snow forward as a fresh flow of her juices soaks their crotches. Soon after Snow finally reaches her own peak, nearly tipping the table over as her last powerful thrusts once again fill the feline with her ample seed.";
				WaitLineBreak;
				say "     The two lay together on the table for a while longer this time, paws roaming each other's bodies as they bask in their mutual afterglow for a while. Eventually Tehuantl finally pushes the spent squirrel off onto the table beside her and begins making her way back upstairs.";
				NPCSexAftermath Snow receives "OralPussy" from Tehuantl;
				NPCSexAftermath Tehuantl receives "PussyFuck" from Snow;
			else:
				say "     Deciding now isn't a good time, you shake your head at Tehuantl as she reaches the bottom of the stairs, motioning her to go back up and leaving the well-hung squirrel alone for now.";

to say TehuantlandFelinoid:
	say "     You hear a low, lusty growl as you walk into the library. Turning towards the noise, you see the end of your felinoid companion's tail as he vanishes up the stairs a bit to your right. A quick sniff of the air in here makes clear what's up - the scent of Tehuantl's heat just wafts down from above. Looks like the big cat went to follow his natural urges.";
	say "     Do you want to follow the felinoid upstairs and see what happens ([link]Y[as]y[end link]), or do you just leave them be ([link]N[as]n[end link]).";
	if Player consents:
		say "     Hurrying up the stairs so you don't miss anything, you see Tehuantl lying on the ground, several fingers buried in her pussy as she strokes herself. Meanwhile, the felinoid pads over to her and lowers his head, taking a deep sniff of her crotch before starting to lick her there. You can see the big cat's spined shaft dangling under his body, already fully hard and twitching in anticipation.";
		say "     Your felinoid keeps using his tongue on the jaguar-woman's pussy for a minute or two, making her writhe on the ground in lust, then he nuzzles the side of her hip. Tehuantl immediately understands what the large cat wants to say by rubbing his furry cheeks against her and lifts herself up from the ground. Panting in need, she takes position on all fours, presenting herself to be mounted. With a very satisfied roar, the felinoid does just that, moving his large form to cover her smaller body and bending his legs a bit to thrust his hard shaft into Tehuantl's dripping cunt.";
		WaitLineBreak;
		say "     Both felines groan in pleasure as the felinoid's shaft spreads Tehuantl's opening apart, pressing into her depths as he sinks himself into her waiting pussy. Soon he's all the way in, then starts to pull back and thrust in again, the spines on his shaft rubbing against her insides each time. Accompanied by a lustful growl, Tehuantl's claws dig into the carpeted floor, holding on tight as the virile male fucks her, even rocking back to meet his thrusts. Her obvious eagerness animates the felinoid to speed up more and more, making the bell on the jaguar's collar jingle merrily as he pounds against her ass.";
		say "     [if Player is not neuter]As you watch the show, you can't help but let your own hands drift down towards your excited groin and begin playing with yourself as you watch the feline intercourse. [end if]Before long, the rough fuck he's giving Tehuantl has the felinoid rapidly approaching his climax. He opens his muzzle in a short roar, then softly bites into her neck, just enough to hold her in position and not break the skin. One, two, three more thrusts and he suddenly holds still, his legs bent as he holds himself balls-deep in the female jaguar, depositing spurt after spurt of his feline seed straight into her womb. Meanwhile, the neck-bite and the feeling of his cum pulsing into her is enough to drive Tehuantl over the edge of her own orgasm, making her whole body shiver and her pussy gets dripping wet around the felinoid's shaft.";
		WaitLineBreak;
		say "     As the two begin to come down from their respective climaxes, Tehuantl exhaustedly sinks down on the ground, the felinoid's shaft sliding out of her with a small wet plop. He turns to look at you and gives a deep, rather self-satisfied purr, then throws himself on the ground against the freshly-bred jaguar-woman. His furry side pressed against her, he nuzzles her face, making Tehuantl giggle and give him a good scritch on the neck and behind his ears. They stay together like that on the floor, soon dozing off. You decide it best to [if Player is not neuter]clean up your own mess and [end if]slip back downstairs and leave them to get some rest.";
	else:
		say "     Deciding to leave your feline pets to take care of each other, you try to put the thought out of your mind as you hear the jingling of Tehuantl's belled collar, followed by a growl and a gasped yowl. That must have been when he entered her. Suppressing the urge to go back on your earlier decision and hurry up the stairs after them, you turn your attention to other things...";
	NPCSexAftermath Tehuantl receives "PussyFuck" from Klauz;

to say TehuantlandSarah:
	say "     You notice Sarah, who's slipped her leash, near the stairs to the second floor. She's sniffing the air with interest and soon starts padding up the steps. Given how strongly you can smell the jaguar's heat from here, it's no surprise her canine nose picked it up. The dog-woman goes up the stairs on all fours. Shall you head over to see how things go between the cat and dog?";
	if Player consents:
		say "     Watching from the base of the stairs, you see Sarah pause near the top to poke her head over. Her tail wags frantically as she checks out the source of the enticing odor, but her friendly bark is returned with a threatening snarl from Tehuantl. Sarah ducks back down out of sight, but her playful interest won't be so easily discouraged. She pokes her head up soon and barks again, getting chased back down by another snarl.";
		say "     This exchange goes on for a little while, Sarah's tail wagging more and more at the game it's become for her. You've come about halfway up the stairs by this point, watching and waiting. And sure enough, Tehuantl yowls in lustful need as another pang of her heat distracts her from the canine intruder long enough for Sarah to come up and pad over to her. Continuing up the stairs, you find Sarah's muzzle sniffing between the masturbating feline's legs, lapping at her pussy even as the spotted kitty pumps a sticky toy into herself. Feeling the dog's tongue on her wet folds, she mrowls and shivers. Pulling out the toy and spreading her legs, she leaves herself open for the husky's tongue to dive right in to replace the dildo.";
		WaitLineBreak;
		say "     The husky's tongue delves deep into the feline's heated cunny, licking and lapping frantically. Sarah wags her tail happily as she laps up her new friend's juices. Tehuantl mrowls and yowls with lustful delight at this. Taking hold of the husky's head, she keeps the husky's nose pressed to her clit while she grinds her hips in involuntary shudders of ecstasy. Sarah happily eats out the jaguar woman through several orgasms, seemingly unendingly thirsty for her juices. Eventually though, Tehuantl passes out in a post-orgasmic daze from her repeated climaxes. And while you know her heat'll go on, she's at least has some peace from it for the moment.";
		say "     Sarah, for her part, licks the kitty's surrounding crotch fur clean before finally bounding happily back down the stairs. Her tail is wagging wildly as she licks her chops clean of the feline's juices. You're treated to the fine sight of her own wet doggy cunny as she trots down. Looking over at Tehuantl, you know she'll be wanting some sex when she awakens as well. Decisions, decisions.";
		NPCSexAftermath Tehuantl receives "OralPussy" from Sarah;
		NPCSexAftermath Sarah receives "OralPussy" from Tehuantl;
		increase lastfuck of Sarah by 8;
		now lastfuck of Tehuantl is turns - 6;
	else:
		say "     You can hear a brief exchange of barks and snarls between the two. There is a brief pause before the sounds are instead replaced by the lustful and happy yowls of the jaguar woman receiving some sexual relief. This goes on for some time before Sarah comes trotting back down the stairs, tail wagging happily as she licks her chops.";
	now SarahTehuantl is true;

Section 5 - Heat, pregnancy and assorted gimmicks

TehuantlStatus is a number that varies. [1 normal, 2 in heat, 3 pregnant]
TehuantlSnowStatus is a number that varies.
SarahTehuantl is a truth state that varies. SarahTehuantl is usually false.

an everyturn rule:
	if HP of Tehuantl > 14:
		if TehuantlStatus is 1:
			if Energy of Tehuantl - turns > 39:
				now TehuantlStatus is 2;
				now Energy of Tehuantl is turns;
		else if TehuantlStatus is 2:
			if Energy of Tehuantl - turns > 39:
				now TehuantlStatus is 1;
				now Energy of Tehuantl is turns;
[
		else if TehuantlStatus is 3:
			decrease Energy of Tehuantl by 1;
			if Energy of Tehuantl is 0:
				if Player is in Bunker or Grey Abbey Library or Grey Abbey 2F
					say "     You hear Tehuantl moaning and rush to check on her.";
					say "     Tehuantl gives birth scene!";
				else:
					say "     Somehow you know a child has been born.";
				now TehuantlStatus is 1;
				now Energy of Tehuantl is turns;
				increment Tehuantl children variables
]

after navigating Grey Abbey Library:
	if HP of Tehuantl is 10:
		if Energy of Tehuantl - turns > 16:
			now HP of Tehuantl is 11;
			say "     As you enter the library, you are hit with an overwhelming scent of feline arousal and you hear mewling and moaning coming from the library's second floor. You can't help but wonder if everything is alright with your pretty pet kitty upstairs.";
	else if HP of Tehuantl is 11:
		say "     The air is still thick with the powerful scent of feline arousal, and while she seems to have quieted up, you wonder if you should go up and check on Tehuantl anyway.";
	else if HP of Tehuantl is 12 or HP of Tehuantl is 13 or HP of Tehuantl is 14:
		say "     The air is still thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat. You can't help but wonder about finding something to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
	else if HP of Tehuantl > 14:
		if TehuantlStatus is 2:
			if a random chance of ( lastfuck of Tehuantl - turns ) in 20 succeeds:
				say "[TehuantlBunkerScenes]";
			else:
				say "     The air is thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat once again.";

to say TehuantlBunkerScenes:
	let TehuantlList be a list of numbers;
	if HP of Sven is 8 or (HP of Sven >= 10 and HP of Sven <= 29):		[***adjust once alternate Sven scene is available]
		add 1 to TehuantlList;
	if Snow is booked and TehuantlSnowStatus is not 99:
		add 2 to TehuantlList;
	if Felinoid Companion is tamed:
		add 3 to TehuantlList;
	if Sarah is bunkered and SarahTehuantl is false and SarahSlut > 3:
		add 4 to TehuantlList;
	sort TehuantlList in random order;
	if entry one of TehuantlList is 1:
		say "[TehuantlandSven]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	else if entry one of TehuantlList is 2:
		say "[TehuantlandSnow]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	else if entry one of TehuantlList is 3:
		say "[TehuantlandFelinoid]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	else if entry one of TehuantlList is 4:
		say "[TehuantlandSarah]";
	else if TehuantlList is empty:
		say "     The air is thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat once again.";

to say TehuantlHeatIntro:
	say "     Tehuantl is laying on the ground as you approach her, mrowling and mewling as she furiously works several fingers in and out of her swollen cunt. By the look of the large wet spot on the carpet below her, and overwhelming scent of her feminine juices, it seems she been at this for a while.";
	say "     Tehuantl squeaks in surprise as you reach down and place a hand on her shoulder. She releases a sigh of relief as she turns and sees you standing over her, quickly rising to her knees and wrapping her arms tightly around your leg. 'Oh master, please use me. My entire body aches to be filled. I've been trying to soothe the need myself, but it's just not enough... please.' As you look down upon the begging kitty you realize she must be in heat, and she doesn't seem to be handling it so well, perhaps due to her previous male form.";
	if Player is neuter:
		say "     Lacking any gender of your own, you remain quiet as you watch Tehuantl's fingers sink back into her slick opening. As her moans and mewls begin again she seems to forget you're even there, losing herself once again in her powerful lusts. Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
	else:
		say "     Even as her paws start to stray back to her groin, Tehuantl continues to whimper up at you, begging for some relief. Will you try to help sate the kitty's lusts? ";
		if Player consents:
			if Player is male:
				say "     Deciding to try and help your pet out, you start stripping off your gear as she starts fingering herself again. The moaning feline hardly notices as you step over her, until you pull her furiously working paw from her sopping cunt. She mewls up at you with need as you run your free hand along her thigh, teasing the needy kitty for a moment before you sink a pair of your own fingers into her. Tehuantl's eager cunt grips your fingers tightly as you frig her needy hole until she reaches a yowling climax, soaking your hand in her juices.";
				say "     Even in the throes of her climax, Tehuantl moans in disappointment as you pull your fingers from her dripping cunt, and still eager from relief her own paws quickly drift back to her groin to replace yours. Surprised by your pet's seemingly insatiable need, you once again stay her eager paw as you reposition yourself to bring your [cock size desc of Player] [Cock of Player] cock into position outside her ready pussy. With one firm motion you drive into Tehuantl's body, and you delight in the feeling of her needy tunnel tightly gripping your shaft[if Player is barbed], despite your sharp barbs[end if]. Tehuantl moans and yowls as you fuck her needy body, obviously enjoying finally being filled properly just as much as you're enjoying filling her. You do your best to draw it out as long as possible for your needy pet, but the firm grip and rippling milking sensation of her hungry cunt around your [Cock of Player] cock is soon too much, and with one final drive you fill her ready body with your [Cum Load Size of Player] load with a groan of ecstasy. Tehuantl climaxes at the same time with a roar of pleasure, soaking your groin in her juices as her cunt spasms around you, drawing out every drop of cum she can in an attempt to extinguish the fire of her heat.";
				NPCSexAftermath Tehuantl receives "PussyFuck" from Player;
			else:
				say "     Deciding to try and help your pet out, you start stripping off your gear as she starts fingering herself again. The moaning feline hardly notices as you step over her, until you pull her furiously working paw from her sopping cunt. She mewls up at you with need as you run your free hand along her thigh, teasing the needy kitty for a moment before you sink a pair of your own fingers into her. Tehuantl's eager cunt grips your fingers tightly as you frig her needy hole until reaches a yowling climax, soaking your hand in her juices.";
				say "     Even in the throes of her climax, Tehuantl moans in disappointment as you pull your fingers from her dripping cunt, and still eager from relief her own paws quickly drift back to her groin to replace yours. Surprised by your pet's seemingly insatiable need, you quickly adjust your position to bring your own cunt, dripping with anticipation, before Tehuantl's muzzle. Before you've even lowered yourself down toward Tehuantl's groin her rough feline tongue is lapping and teasing at your [cunt size desc of Player] pussy, sending shivers of delight through your body as she works deeper into your tender folds. You're already having difficulty focusing by the time your tongue reaches Tehuantl's swollen, needy cunt. Already drooling with arousal you set about tending to her aching need, licking, sucking and kissing her as your hands caress her furred thighs. Tehuantl's climax strikes with surprising speed, and she soaks your face with a feline yowl of ecstasy, but even as orgasm rolls through her, her feline tongue continues working your needy cunt, further fueling your arousal as you dive back into the jaguar's still spasming cunt.";
				say "     Tehuantl's whiskers tickle your outer lips as she works her muzzle deeper into you, spreading you open with one hand to allow her further access to your trembling tunnel, even as her other paw rubs gently at your clit. Soon you reach a climax of your own, soaking Tehuantl's furred face in your nectars as you moan in pleasure, drawing your attention away from the kitty's pussy as she continues working to draw out your orgasm as long as possible.";
				NPCSexAftermath Player receives "OralPussy" from Tehuantl;
			say "     Spent, you roll off your feline companion, laying beside her as the afterglow of your climax washes over you, but even in your hazy afterglow, you can't help but notice Tehuantl continuing to pleasure herself, frigging herself to several more crashing peaks while you recover. Eventually your sense return to you enough to lift yourself from the library floor. Tehuantl doesn't even notice you quietly moving away, far too lost in sating her seemingly endless arousal. Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
		else:
			say "Deciding to leave her be for now, you remain quiet as you watch Tehuantl's fingers sink back into her slick opening. As her moans and mewls begin again she seems to forget you're even there, losing herself once again in her powerful lusts. Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";

Section 7 - Event

Table of GameEventIDs (continued)
Object	Name
Feline Relief	"Feline Relief"

Feline Relief is a situation.
ResolveFunction of Feline Relief is "[ResolveEvent Feline Relief]".
Feline Relief is a inactive.
Sarea of Feline Relief is "Red".

to say ResolveEvent Feline Relief:
	if HP of Tehuantl is 12:
		say "     As you wander through the red light district, you happen across a surprisingly intact-looking shop. The windows are blackened, preventing you from seeing inside, but the large sign above the door with three simple red Xs leaves little doubt in your mind as to what might be inside. As you stand outside the store, your mind wanders back to your poor heat afflicted kitty back at the library, and you wonder if there might be some 'toys' left inside that could help her take the edge off. Deciding there's no harm in checking, you slowly step up to the door, gripping the handle tightly and slowly pulling it open a crack. Peering inside, you see the small shop is filled with various pieces of BDSM equipment, and it is surprisingly well kept despite the state of the city around it. Not seeing anyone inside the room, you carefully push the door open and step inside. The majority of the wares in the store seem to be bondage equipment, but you do manage to find a couple colorful sex toys your poor kitty may be interested in.";
		say "     Once you've given the storefront a through search, you quickly glance around the room for a box or bag for the few toys you've selected; it is then that you spot the display of cute leather collars above the store's till. Quickly hopping over the counter, you browse the collection of collars, picking out a nice red one with a cute bell for your pet kitty to go with her new toys. After grabbing a bag from under the counter, you start packing it and prepare to depart.";
		say "     Just as you're getting ready to leave you notice shadows moving past the window outside. You hope for a second that it's just some creature wandering past, but those hopes are quickly dashed as the shop door swings open. Much to your chagrin, three of the latex covered women you've seen wandering around the city step into the small shop, each carrying another handful toys and fetish equipment. As they spot you, all three dump their cargo and turn their attention to you, two of them stepping forward to engage you while the third steps back to block the door.";
		challenge "Latex Mistress";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the first latex mistress dealt with, you quickly turn your attention to the second.";
			challenge "Latex Mistress";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     After dispatching the second latex mistress, you have only a moment to ready yourself before the third abandons her post at the door to engage you.";
				challenge "Latex Mistress";
		if fightoutcome >= 20 and fightoutcome <= 29: [player defeated]
			say "     As the latex mistress finishes with you, she steps back to reveal the other two wearing matching dark smiles, each equipped with a brightly colored strap-on dildo. You moan as you are roughly dragged over to the large rack in the center of the room and dumped face down on top of it. You struggle weakly, but you are unable to resist as the latex women bind your arms and legs with the device's built in restraints, leaving you helpless as the two strap-on equipped women approach you from either end. You gasp as the one behind you starts sinking her rubber cock into your ass, and the one in front of you takes the opportunity to drive her shaft into your open mouth. As the two latex dominatrixes pound into you, you feel you resistance draining away, your mind slipping further and further with each thrust of those rubber shafts.";
			say "     As the brutal fucking continues, you feel your body shifting and changing, your mouth and anus being molded around those rubber cocks as they thrust into you. Cool, thick liquid rubber begins leaking out from around the strap-on cocks, slowly spreading across your body with each thrust. As the last of your mind begins to fade away the liquid latex begins sealing seamlessly around your body, squeezing tightly around you as it molds you into an only vaguely human shape.";
			say "     By the time the latex mistresses finally withdraw from you, there is very little 'you' left, replaced by a placid living rubber sex doll, another toy for their collection. You are slightly disappointed when the latex women untie you from the counter, tossing your limp rubber form into the pile with all their other playthings before they head back out into the city, but you know if you wait patiently like a good toy, your mistresses will return to play with you again.";
			now HP of Tehuantl is 255;
			now BodyName of Player is "Rubber Sex Doll";
			now FaceName of Player is "Rubber Sex Doll";
			now SkinName of Player is "Rubber Sex Doll";
			now TailName of Player is "Rubber Sex Doll";
			now CockName of Player is "Rubber Sex Doll";
			now humanity of Player is 0;
			end the story saying "You are transformed into a Rubber Sex Doll by the latex mistresses.";
		else if fightoutcome >= 10 and fightoutcome <= 19: [player defeats all three mistresses]
			say "     With the three latex women dispatched, you quickly gather up the toys you had set aside, and a couple of the new additions the rubber girls brought back with them before quickly departing the store.";
			now HP of Tehuantl is 14;
			now Feline Relief is resolved;
			now Resolution of Feline Relief is 1; [player won]
		else: [player fled]
			say "     Unable to fend off the latex covered women, you decide it best to make a break for it, leaving the bag of toys behind as you duck and weave around the store, drawing your assailants away from the door before you make a break for it, escaping back into the city streets.";
			say "     It looks like you'll have to return another time to get those toys, hopefully without being disturbed next time.";
			now HP of Tehuantl is 13;
			now Resolution of Feline Relief is 2; [player fled]
	else if HP of Tehuantl is 13:
		say "     As you wander through the red light district, you once again find yourself outside the BDSM shop you were chased out of by those latex clad dominatrixes. Taking a deep breath, you once again pull the door open a crack and peer inside. Seeing the coast is clear once again you quickly step inside and make a b-line for the back counter. Finding the bag of toys and collar right where you left them, you quickly stuff them into your backpack before you rush back outside, making your escape before the latex mistresses return again.";
		now Resolution of Feline Relief is 3; [grabbed the stuff stealthily]
		now HP of Tehuantl is 14;
		now Feline Relief is resolved;

instead of going up from Grey Abbey Library while ((LastTehuantlCarlScene - turns > 6) and (Tehuantl is in Grey Abbey 2F and Libido of Tehuantl < 2 and HP of Tehuantl > 49 and HP of Tehuantl < 100) and (HP of Carl > 9 and HP of Carl < 50 and Carl is in Grey Abbey 2F)):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: TEHUANTL/CARL TALK WALKIN; Libido of TEHUANTL: [Libido of Tehuantl][line break]";
	if Libido of Tehuantl is 0: [first time]
		say "     Coming up the library stairs, your gaze is immediately drawn by the spotted form of your jaguarman pet Tehuantl, doing sit-ups on a mat in the middle of his little camp on the upper level. Again and again does he bend his upper body up from where it was lying on the floor, hands locked behind his head and with the muscles of his abs flexing through well-known movements. The spotted feline seems quite determined in performing his workout... making you wonder if it's just his routine as a warrior or maybe an effort to stay at his best to please his [if Player is female]mistress[else]master[end if]. Given the boundless devotion the jaguar has shown since accepting your dominance, option two is more than a little likely - yet before you can decide to approach and ask your pet about it, someone calls out, 'Hey there, thought I'd say hello to my new housemate.' Letting your eyes roam around a little, you quickly spot the form of a person moving on the other side of one of the many bookshelves. Glimpsing little snippets in green and brown as well as black and white fur through the spaces between the rows of books, you can easily guess who it is - and indeed, Carl steps into your line of sight just a moment later.";
		say "     The husky soldier is so focused on the jaguarman that he doesn't even realize that you're close by and just moves to crouch next to your feline pet. 'Nice to talk to you. I'm Carl. Formerly of the US army,' he offers with a smile on his muzzle and a gently wagging tail. Meanwhile, Tehuantl continues doing sit-ups, quietly counting, '...forty-eight, forty-nine, fifty,' before he finally keeps sitting up and inspects the husky soldier with a curious expression. 'Tehuantl, of the jaguar knights. Or at least I was, before I found myself in that strange place of memories of your people - this 'museum'. Every room so different from the next, and with winding paths that change around. Since then, I have been vanquished and been taken as a war-slave by my new overlord. As have you, I assume?'";
		WaitLineBreak;
		say "     Carl's brows draw together as he takes in the jaguarman's words and replies, 'You're what? A slave?! And no, I'm not. Our... host just got me out of a really bad situation and...' Tehuantl gives a knowing nod, interrupting with the words, 'Ah, a life-debt then. Good to know that the [if Player is female]mistress[else]master[end if] has other warriors [if Player is female]her[else]his[end if] service as well. We will no doubt see much of one another. I hope you'll join me for future training sessions. But now, I'm off for my run.' Before the husky has time to reply more than, 'That's not what I meant. It's...' Tehuantl jumps to his feet and dashes off after a pat on Carl's arm, doing a flying jump over the railing on the edge of the upper level. Landing one floor down with feline grace, he immediately starts sprinting along the outside wall of the library, demonstrating amazing speed and agility.";
		say "     Coming to stand at the railing and looking after the jaguarman, just like you yourself did, Carl shakes his head in wonder and asks, 'Err - was he for real? Being your slave and all?' With a smile, you let him know that some cultures just have different customs. This is simply what it took for the jaguarman to stop attacking you every time you met... and you do rather enjoy the arrangement too. Carl's eyebrows rise a little, but then the canine soldier shrugs and admits, 'There are worse ways to end up these days, I guess. No, let me rephrase that - I know there are worse things happening all the time now, with the state of things. So... sounds like I got a new workout partner, eh?' Just as he says this, Tehuantl zips through your line of sight, coming into view as he sprints through the library, then vanishing again behind another bookshelf. 'It'll definitively be an interesting experience, that's for sure.'";
		now Libido of Tehuantl is 1;
	else if Libido of Tehuantl is 1: [second time]
		say "     Coming up the library stairs, you hear someone counting up loudly, '...forty-two, forty-three, forty-four, ...' Curious, you stroll over in that direction, soon finding an open area behind a number of bookshelves, where an exercise mat has been rolled out on the ground. On it is Carl, currently wearing nothing but his camo pattern shorts as he is doing sit-ups, with Tehuantl holding onto his ankles to help him. The jaguar warrior proudly counts up his companion's repetitions, clearly enjoying himself in sharing Carl's exercise routine. Not wanting to interrupt them, you do stay halfway out of sight behind a bookshelf for now, simply watching as Carl soon comes to a stop by the time Tehuantl has counted him up to fifty. Panting visibly, the husky pushes himself up on his elbows and says, 'Phew, that's the full set done. Thanks for keeping me company - want me to do the same for you?'";
		say "     'It was a privilege to serve you, brother warrior,' Tehuantl replies with what can only be called a purr, then moves up to crouch beside Carl from where he had been kneeling up till then. 'I like your dedication and the spirit of this 'army' you talked about. So how about we bond even closer, friend? Let us be true partners in all things.' Carl pushes himself a little bit further up as he hears this, raising his eyebrows in surprise and replying, 'Uhm, I... sure, I guess? What exactly does that entail? I mean is it some sort of ritual or... oh. Oooooh!' His last words are spoken as Tehuantl lays one paw-hand on Carl's knee, then starts sliding it down the inside of his thigh. 'Good,' the jaguar purrs even louder than before and leans in to lick Carl's muzzle before saying, 'You smell really nice when you're all sweaty, brother.'";
		WaitLineBreak;
		say "     Finding himself the target of the amorous advances by your jaguarman servant, Carl sputters a little, 'Listen, I - uhm - I like you too man, but... isn't this a bit, sudden?' Tehuantl chuckles at his words, putting his other paw-hand on Carl's chest to keep him from sitting up. 'Guess I can teach you things that your people must not have thought off too, warrior Carl. Think of it - we life in the same sanctuary, we have trained together, and tomorrow we may die at the hands of any number of creatures. A warrior's life is no time for hesitation. And also - I really, really like everything about you, proud canine that you are.' With that said, Tehuantl strokes the chest-fur of the husky and straight out places his other hand on Carl's crotch, feeling the shape of his erection through the fabric of the soldier's pants.";
		say "     From the looks of it, Tehuantl is moments away from peeling Carl's clothes off him and having his way with the anthro husky. [bold type]Do you want to intervene? The jaguar is your pet after all...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Step out from behind the shelf and split them up.";
		say "     ([link]N[as]n[end link]) - Let them have their fun and bond. It'll be good for both of them.";
		if Player consents:
			LineBreak;
			say "     You decide that Carl has squirmed long enough and step closer, sharply calling Tehuantl's name. Whipping around instantly, the anthro cat gasps out the word 'Tlacahua,' falling back to his natural Nahuatl word for master in his surprise. He wilts a little as you look at him expectantly, glancing over to Carl and back at you, 'I - um, oh gods! I was so eager to bond with your other warrior that I didn't think clearly, [Master]. Keeping busy and not taking is place standing guard instead! Forgive me, I won't let this happen again!' With that, the muscular jaguar jumps up to his feet and rushes away hastily, wanting to take the overlook post at Carl's window. This leaves you and the husky behind, with Carl letting himself drop flat on the exercise mat.";
			say "     'Wow, that was... interesting,' the soldier pants out a moment later, tugging a little at his pants so they're no longer quite as snug around his erect shaft. Then come the words, 'He certainly is some character, that's for sure. I... should go too. Freshen up a bit.' The last bit is said after he sniffs himself, no doubt remembering Tehuantl's comments about how much he liked the good, honest sweat on Carl. And true to his words, Carl has the mat rolled up and is hurrying away just moments later.";
			LineBreak;
			say "     After giving the two of them what amounts to a bucket of ice-water just as they started having fun, you don't think you'll have to worry about Tehuantl and Carl getting it on again anytime soon...";
			now Libido of Tehuantl is 100;
		else:
			LineBreak;
			say "     [bold type]Do you want to watch?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Oh yeah!";
			say "     ([link]N[as]n[end link]) - Nah, give [']em some privacy.";
			if Player consents:
				LineBreak;
				say "     Simply staying where you are, you got a prime view of Tehuantl undoing the front of Carl's pants, pulling them open to reveal the husky's canine shaft. The feline mrowls in pleasure at the obvious sign of Carl's arousal and wraps his paw-hand around it as he turns to face the husky again. Then something unexpected happens - as Carl is done trying to hold back and instead slides his hand behind the jaguarman's head to pull him into a kiss. As their muzzles meet, the two trained men start making out with a vengeance. The cat and dog kiss and tongue-wrestle very eagerly, until Carl wraps his arms around Tehuantl and rolls both of them over, with the feline now pinned to the ground beneath him. 'Get ready for the time of your life kitty,' he barks playfully and shimmies out of his pants.";
				say "     Tehuantl is quick to spread his legs and raise them, baring his ass for the other man to see. 'Take me brother!' he purrs quite loudly, eager to feel Carl inside him. And the soldier doesn't let him wait long at all. Only stopping for a second to spit in his hand and slick his shaft up at least a little, the canine lines himself up with Tehuantl's pucker right away, then thrusts deep, sinking his pole into the jaguarman's insides. A lust-filled mrowl rings out, almost as loud as a shout, and Tehuantl wraps his arms and legs around the man on top of him as Carl starts to pound into him at a frantic pace. Seems like there really is a lot of built-up lust and arousal from them training together!";
				WaitLineBreak;
				say "     Barks, moans, mrowls and lusty shouts echo throughout the library as those two fuck like wild beasts, really showing off how much stamina well-trained men do have. In between, you hear the slurping sounds of Carl's dick sliding in and out of his buddy's asshole, usually accompanied by the groans as he pops his half-grown knot in and out of Tehuantl's hole too. With the pace they are setting, it doesn't take all that long before it actually swells up to the full size, locking Carl's dick down where it is - deep inside his feline friend's ass and throbbing against his prostate. And then, the husky starts to come - a deluge of cum pumped right into his brother in arms, with his knot to make sure that everything stays in and really soaks Tehuantl's innermost depths.";
				say "     The sensation of being bred by the dog is enough to drive your jaguarman pet over the edge as well. Hand-paws digging into the fur on Carl's back and leaving some scratches there (not that Carl minds right now), Tehuantl grunts loudly and humps his hips up reflexively as his feline shaft starts spraying spurts of cum, creaming his own chest-fur. The two of them stay like that for a while, each of them riding out their respective orgasms and breathing heavily. Then eventually, Carl pants out, 'Wow, that was... something else. Definitively fun! Err... there's one thing though. Gotta have to stay inside you until the knot softens, you know...' It is clear that he is a bit embarrassed by that, but Tehuantl just chuckles at the admission and says, 'We are battle-brothers now, closer than if we had been born of the same mother. There is no place I'd rather be than here, with you!'";
				WaitLineBreak;
				say "     The two of them kiss once more, lust still sizzling in the air between them. Then Carl suggests they roll over and get into a bit more of a comfortable position, and they do - with the husky stretched out on his back and Tehuantl straddling his hips, still connected by the knotted cock. They stay like that and start sharing stories with one another - of their training and lives before the current situation - bonding even tighter than just with the incredible sex they just had. With a grin on your face, you turn around and begin to walk away, leaving the two men to it.";
				now Libido of Tehuantl is 3; [they fucked, player watched]
			else:
				LineBreak;
				say "     With a grin on your face, you turn around and begin walking away. Behind you, moans and pleased barks start echoing through the library, telling a tale of a fun time between the cat and dog.";
				now Libido of Tehuantl is 2; [they fucked, player didn't watch]
			NPCSexAftermath Tehuantl receives "AssFuck" from Carl;
	now LastTehuantlCarlScene is turns;

instead of going up from Grey Abbey Library while (LastTehuantlKorvinScene - turns > 6 and (Tehuantl is in Grey Abbey 2F and TehuantlKorvinRelationship is 0 and HP of Tehuantl > 49 and HP of Tehuantl < 100) and (gsd_pet >= 60 and gshep is tamed)):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: TEHUANTL/Korvin TALK WALKIN; Libido of TEHUANTL: [Libido of Tehuantl][line break]";
	if Libido of Tehuantl is 0: [first time]
		say "     Coming up the library stairs, your gaze is immediately drawn to the spotted form of your jaguarman pet Tehuantl, sitting cross-legged on the ground, and bent over his wooden shield. The piece of gear lies on the ground, the painted side down, and its surface shining in the rich brown of some tropical hardwood. The anthro jaguar holds a bottle of olive oil in his paw. He pours a little of its content carefully on the wood, then rubs it in with a rag, already pretty soaked in oil. You feel almost entranced as you watch the warrior maintain his tool. His determined, circling movements, intent on leaving no spot on the shield uncoated, and keeping the wood supple and strong, have you thinking: albeit he agreed to become your 'war-slave' and pet, Tehuantl remains a proud, dutiful, and dependable man.";
		say "     'Hey bushman - wanna do a rain dance for me? That's what you primitives do, right?' The words break the peaceful moment. You glance up, and notice Korvin, leaning against a bookshelf, near the jaguarman, and looking down on the tribal warrior. As Tehuantl doesn't react in any way to him, the German shepherd's muzzle draws into the creases of a frown, and he begins to walk towards the anthro feline. 'Hey, spotty dip-shit - I'm talking to you!' he barks at the jaguar; again, without any overt reply. However, you can spot Tehuantl's spotted tail twitching jerkily, an obvious sign of annoyance for anyone who ever had a house cat. His confidence unbroken, the dog mouths the words 'Watch this' to you. He seems to expect that you will be on his side as a 'wing-man'. Korvin just keeps at what he is doing, without waiting to see your actual reaction, calling out a mocking, 'Here, kitty kitty,' before he 'accidentally' steps right on Tehuantl's tail.";
		WaitLineBreak;
		say "     With a roar, the jaguar jumps up from where he was sitting, unfolding his digitigrade limbs from their cross-legged position in a remarkably fluid and graceful movement. Fangs bared, he whirls around to face the anthro dog, paw-hands raised to attack - right until the moment he sees you standing to the side, watching. Freezing in mid-pounce, the jaguar warrior easily ducks the balled fist Korvin sent his way in anticipation of his reaction. Then he gains two steps distance to the attack dog and turns his attention to you. '[Master]?' Tehuantl asks and nods towards Korvin, who looks like he is about to advance on him with balled fists.";
		say "     From where you're standing, the end result of this scuffle should be fairly clear. Thinking back, you did whup Korvin's ass fairly easily, compared to the trained and experienced Aztec warrior from the museum. The German shepherd definitively bit off more than he can chew this time.";
		say "     [bold type]How do you want to handle this situation? They're both your pets after all...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Nod to Tehuantl. Korvin has it coming...";
		say "     ([link]N[as]n[end link]) - Call Korvin to heel.";
		if Player consents:
			LineBreak;
			say "     As you give your consent, the jaguar warrior steps up to Korvin, and gives the canine a lightning-quick strike to the tip of the muzzle with the base of his palm. Your German shepherd stumbles back with a pained grunt, then wipes a small trickle of blood from his hurting nose. 'Kitty got some claws, eh?' he barks aggressively. 'I'll show you who the top dog is!' And with that, the anthro canine throws himself at Tehuantl, going at him with the intention of beating the other male to the ground. Your Aztec warrior easily side-steps the attack and speeds the dog along with a shove. Carried by his momentum, Korvin crashes face first into the end of a sturdy wooden bookshelf. 'I know you to be a war-slave of our [master] too - [PosAdj of Player] smell is upon you, dog! Maybe you should act accordingly,' the jaguar calls out to the momentarily stunned Korvin. A certain level of teasing amusement is audible in his voice.";
			say "     'Fuck You!' the anthro canine barks back, as he turns around and gives Tehuantl a hostile stare. 'I may be a beta in [PosAdj of Player] pack, but that doesn't mean any stupid savage can tell me what to do! You were supposed to give in and be a proper subby kitty, asshole!' [italic type]Ah,[roman type] you think to yourself, [italic type]so that's what Korvin was planning: reclaiming at least a little status, by suppressing someone else to be his inferior.[roman type] Well, he certainly picked the wrong person to try that with! Tehuantl gives Korvin little but a smile in response, followed by a typical 'bring it' hand gesture which successfully stirs up the dog's aggression some more. With a growl, the German shepherd storms at the jaguarman again, and... *Swoosh!* *Thump!* A skillful low kick by Tehuantl sends him crashing to the floor.";
			WaitLineBreak;
			say "     Tehuantl capitalizes on his opponent lying flat on his nose, and gets instantly on top of Korvin. The experienced fighter twists the dog's arms behind his back, and pulls them up, pinning them in an almost inescapable double-armlock. 'Let me go, monkey fucker!' Korvin growls out, his muzzle, pressed to the ground, muffling his voice. While the German shepherd struggles without much avail against Tehuantl, the jaguarman looks at you, a questioning expression on his face. A glance to his crotch, which is right above Korvin's naked body and almost touches his buttocks with a well-sized erection, makes what the jaguar warrior is asking of you clear.";
			say "     [bold type]Let Tehuantl have Korvin's ass?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - To the victor go the spoils...";
			say "     ([link]N[as]n[end link]) - Nah, the embarrassment of being beaten is enough for Korvin.";
			if Player consents:
				LineBreak;
				say "     A slight nod of your head is enough for the male jaguar to go ahead. He leans forward, and puts his muzzle right next to Korvin's pointy ears. 'Let us see who is superior now, dog!' you hear him growl. With that said, he bites the back of his captive's neck, clamping down his sharp teeth on the German shepherd's fur. 'Ouch! What are-' Korvin stats to complain, when Tehuantl sinking his spined cock into his asshole with a harsh thrust makes him trash on the ground. 'Aaarghhh!' Even if you know that your spotted kitty leaks usually quite a bit of pre-cum, that must have been an entrance to remember for the dog, given that he was not prepped for it in any way! The canine lies under Tehuantl's muscular form, groans escaping from his face pressed against the floor. But he quickly ceases his fruitless attempts to throw off the other man. This reminds you that you know, from first-hand experience, that Korvin is no novice when it comes to accepting his place under a stronger partner.";
				say "     The constant growling of the jaguar warrior gives way to a soothing purr, as soon as he feels the tension leave Korvin's body. Tehuantl relaxes his bite and starts to lick the side of your attack dog's neck and face. 'We are bond brothers to the same [master]. You should only be thinking of how to please [ObjectPro of Player], not jockey for position with me. Learn this, or the next time will be much more unpleasant,' Tehuantl explains with determination in his voice. Following this statement, he grinds his crotch forward against the German shepherd's ass, tickling his inner walls with the small feline barbs adorning his shaft. The sensations leave Korvin panting against the floor in pleasure, quickly followed by a startled yelp as Tehuantl begins to pull out again, which has the nubby ends of the barbs scraping along Korvin's tender flesh.";
				WaitLineBreak;
				say "     'Fuuuckkk!!' Korvin groans out, taken by surprise by the jaguar warrior's slow withdrawal. Nonetheless, judging by his expression, it is clear that, in the resulting mixture of discomfort and arousal which wrecks his body, the pleasure is winning out. He keeps panting like a bitch in heat, and you notice that his canine cock is erect, and bobbing underneath him. Tehuantl stretches forward to lick the side of your attack dog's muzzle, 'I'm being gentle, to show you we can be true brothers,' he claims, as he thrusts once more into Korvin. The German shepherd adapts to the mixture of pleasure and light pain fairly quickly. This allows Tehuantl to speed up his thrusts little by little. With each new penetration, the opposite sensations seem to blend more and more into each other until Korvin reaches a state of constant arousal, from the continuous movements in and out his tight hole.";
				say "     Before long, the jaguar warrior thrusts into Korvin a final time, and roars triumphantly, as he forces his entire length into the exhausted canine. A visible twitch runs through his entire body, and the first of several heavy throbs of feline seed is unleashed into the mutt's body, marking him as Tehuantl's brother in your stable of sexpets. The German shepherd wheezes loudly with each additional splash of cum and spasm against his prostate. He eventually humps the ground on his own, and creams the floor and his tummy fur with his cum. The both of them have cum hard, and now, they ride out their respective orgasms together, Tehuantl clutching Korvin's furry body the whole time, and occasionally lapping at his fur. Once their climax began to subside, the jaguarman rolls the two of them over on their sides, and wraps his arms around Korvin from behind. Then, he purrs loudly. You fight as to not laugh at the expression of dismay painting your attack dog's face. His plan of domination have backfired, and led him to be fucked, and lie in his own cum, cuddled possessively by the male jaguar.";
				LineBreak;
				say "     [italic type]Oh well, it will do him some good to spend more time with Tehuantl,[roman type] you consider. [italic type]It will temper this unruly dog's unruly edges.[roman type][line break]";
				NPCSexAftermath Korvin receives "AssFuck" from Tehuantl;
				now TehuantlKorvinRelationship is 10; [Korvin got Jaguar-fucked]
			else:
				LineBreak;
				say "     A slight shake of your head is enough to make Tehuantl let go of Korvin. The jaguar still takes the opportunity in order to extend his claws before releasing the dog, having him feel their pointy extremities through his fur. The male jaguar stands up and quietly stalks a few steps away, and crosses his arms while giving Korvin a simple, casual glance, which screams silently 'He's no danger to me at all.' The eyes of the two males meet for a second. Tehuantl gives a little growl, which shows his teeth; your beaten attack dog picks himself up and walks over to you, his tail between his legs. 'Stupid savage,' you can hear him mutter under his breath as he takes his usual spot by your side.";
				now TehuantlKorvinRelationship is 1; [Korvin got beaten up by Tehuantl]
		else:
			say "     You put two fingers in your mouth and whistle sharply, drawing the German shepherd's attention to you. 'What?!' the anthro dog barks in an annoyed tone, 'I was just gonna show this kitty what a real man can do.' His tail droops a bit when he notices your disapproving expression, and he brings one paw-hand up to his neck, touching the collar you put on him. This seems to remind him that he is actually your pet. 'Um,' the canine mutters. He sets one paw in front of the other, and slowly walk backs over to you. 'Just... Some teasing, of course. I - I didn't mean to rough up your, uhm, sex slave. Guess the little pussy bruises easily?' Korvin babbles a little bit, in a pace too quick for it to be anything but excuses - at your intention, but also his. The attack dog takes his usual position by your side, avoiding to meet your eye or look towards Tehuantl. Your jaguar warrior lets out an audible purr, clenches his paw over his heart, and bows to you respectfully.";
			LineBreak;
			say "     The embarrassment should keep Korvin from bothering Tehuantl now, and in the future. It is for the best, as you have no doubt that the jaguar would have kicked his ass. Hard.";
			now TehuantlKorvinRelationship is 100; [stopped things between them]
	now LastTehuantlKorvinScene is turns;

to say TehuantlSex_FuckKorvin:
	say "     As you come up to your jaguarman pet Tehuantl, he immediately rises and comes to attention, proudly standing in front of you in all of his naked glory. Something in your demeanor or expression must have betrayed your lusty intent, as he smiles eagerly and lets out a pleased rumble from the depth of his throat, then says, 'How may I serve my tlacahua?'";


[
Section 7 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Jaguar Male Infection"	"Infection"	""	Jaguar Male Infection rule	1000	false

This is the Jaguar Male Infection rule:
	if Player has a body of "Jaguar Male":
		trigger ending "Jaguar Male Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your Jaguar infection.";
		else:
			say "     You survive, but were infected by the Jaguar.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

[
TehuantlCheating is an action applying to one topic.
understand "TehuantlTest" as TehuantlCheating.
carry out TehuantlCheating:
	say "[TameTehuantl]";
TehuantlStating is an action applying to one topic.
understand "TehuantlStat" as TehuantlStating.
carry out TehuantlStating:
	say "HP of Tehuantl:[HP of Tehuantl][line break]";
	say "Energy of Tehuantl:[Energy of Tehuantl][line break]";
	say "TehuantlStatus:[TehuantlStatus][line break]";
]

Tehuantl ends here.
