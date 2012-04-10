Version 1 of Joanna by Stripes begins here.

"Adds a Kinkajou-Plant NPC named Joanna to the Flexible Survival game"

Section 1 - Event

Overrun Garden is a situation.  The level of Overrun Garden is 10.
The sarea of Overrun Garden is "High";
joannafight is a number that varies.
when play begins:
	add Overrun Garden to badspots of hermaphrodite;
	add Overrun Garden to badspots of girl;

Instead of resolving a Overrun Garden:
	say "     In a courtyard between a cluster of office buildings you spot a small garden park.  It seems the plant-life has overrun the garden, with oversized flowers and numerous vines.  You are about the head that way to give it a closer look when you spot some motion at the edge of the park.  Stepping into the park from between two buildings comes a slender female creature.  She has short brown fur, long brown hair and a very long tail.  At first you think her perhaps some kind of monkey, but change your mind as you watch her further.  After struggling to recall the animal's name, it comes to you.  A kinkajou, a South American creature that feeds on honey and nectar.  Sounds safe enough.  And she still has some clothes on, so she could even be a survivor, though it's hard to tell at the moment.";
	wait for any key;
	say "     You spot some motion in the branches near her as she starts climbing up to get at the flowers for their nectar.  Realizing too late that it is the branches themselves which moved, you call out to her in warning.  Vines lash out and grab the kinkajou woman, coiling around her and restaining her with ease[if plantdefeat is 1].  This plant creature seems related to the one that put its seed in you, but much larger and stronger.  The seed in your belly starts to stir as well so you'd best be careful[otherwise].  This plant creature seems quite strong[end if].";
	wait for any key;
	say "     The kinkajou is held spread-eagle, restained by the powerful plant and several bulbous fruits shaped like cocks are moved into position.  As she screams, one is pushed into her muzzle, stiffling the cries which soon turn into moans.  Another pair of tentacles move to her hips, one spreading her pussy open and the other driving into her ass.  As you watch, the tentacles pump into her restrained body, which not can't help but writhe in pleasure from whatever fluids it's pumping into her.";
	wait for any key;
	say "     Beyond just arousing her, the fluids start to transform her turning her fur green and her darker face to a bright red like the plant's flowers.  The powerful plant and the large volumes of corrupting fluids work to change her quickly, altering her further.  As a second and third pussy form between her legs, they are quickly filled with the tentacles as well, adding to her sounds of pleasure.  As her three pussies are being filled, a large cock forms, which then splits and grows out into four spurting tentacle cocks with a pair swollen bulbs for balls beneath.  More tendrils, as if knowing this change has been induced move in, engulfing them in sucking crimson flowers.";
	wait for any key;
	say "     You find yourself growing aroused by the strange assault you're witnessing, too fascinated to consider trying to stop it.  That is, until you see the tentacles pulling her towards a large, vaginal flower.  The flower is more than large enough to engulf her entirely, and by the way the little tendrils inside it are waving around in anticipation, that's clearly what is planned.  Too lost in the lustful pleasures of the plant's assault on her changing body and numerous genitalia, the transforming woman is unaware of the peril she is being drawn towards.  If you're going to do anything to help her, it must be now before she's engulfed in the flower.  Shall you charge to her rescue (Y) or wait to watch how it ends (N) ?";
	if player consents:
		say "     Wanting to save the poor woman, you charge in with a scream, hoping to pull her free of the tentacles before its too late.  Noticing your charge, she takes in her situation and starts trying to struggle, but can do little.  As you begin pulling vines from her, she's able to resist more and manages to pull out the cock-shaped fruits from her pussies with a loud orgasm each time.  Angered by your interference with its prey, plant tentacles move in to strike you[if plantdefeat is 1] even as your own seed stirs anew[end if].";
		say "[line break]";
		now joannafight is 3;
		challenge "Parasitic Plant";
		if joannafight is 1:
			move the player to Flower Garden;
			now Flower Garden is known;
			now hp of Joanna is 1;
			say "     Your struggle with the plant is quite difficult, but you persist, tearing roots and smashing flowers as you struggle to get reach the main body of the plant.  During your fight, the kinkajou is able to break free because you've destroyed enough of the vines and she makes a break for it.  For a moment, you think she's left you all alone, but you hear a small engine choking to start.  Looking away from the large, torn bags of fertilizer at the plant's base as you make it there, you spot her coming out of a small gardening shed wielding a gas powered hedge trimmer with a wild look in her eyes.  You tackle the vines, holding them taut as she slashes through them, splattering their green juices out.  She slashes at the plant's base, slowly cutting through it as you keep the last of the vines off her until it's sawed clean through and you both collapse, panting for breath after your life or death fight.";
			wait for any key;
			say "     After a short rest, she rolls over beside you and hugs you tightly, then kisses you softly on the cheek.  'Oh, thanks for coming to save me.  I... that plant... plant?' she starts upright, noticing her changes.  The plant's assault on her has left her partially a plant, with green fur over her body and her feet growing tendrils and roots.  Her large eyes, like her face and the flowers blossoming in her hair, are a vibrant red, beautifully contrasting with her verdant fur.  There is a little green around her eyes, much like eye shadow.  Her groin, as you saw earlier, has quite dramatically changed, now having a quartet of long cock tendrils with a swollen pair of bulbs for balls.  Beneath those, she has a trio of slick pussies shaped like lovely orchids[if daytimer is day].  She stretches her arms wide and sighs in pleasure, taking in the sunlight, turning slowly as her roots automatically dig into the soil and have to be pulled out with each step[end if].";
			wait for any key;
			say "     'And I was just getting used to being a kinkajou,' she says with a soft giggle, walking slowly around the garden, smelling the large flowers and diving her tongue into them to enjoy their nectar.  'Mmm... this looks like a lovely garden.  The perfect place for a lovely flower like me, don't you think?' she asks with a grin.  'My name is Joanna.  You're welcome to visit here again whenever you like, my brave hero,' she adds, running a green finger slowly down your chest and smiling as she sensually runs her foot-long tongue across your neck.";
		otherwise if joannafight is 2:
			say "[losejoannafight]";
		otherwise:
			say "     Having had enough, you manage to pull free of the plant, breaking the vine and escaping, leaving the girl screaming as she's pulled into the large flower.  She struggles for a time, but the plant subdues her and encloses her in the rather vaginal flower.  You are quite certain there'll be nothing left of the girl but another of these parasitic plants to set root nearby.  Well, at least you tried to help.";
	otherwise:
		say "     Deciding not to risk it, you are drawn to continue watching.  As she's pulled closer, you watch her arch her back in climax as the plant creature cums inside her, pumping her full of fluids from all directions.  Her belly swells up as more of the sticky white sap is sprayed onto her body while her freshly made balls drain their cum to feed the hungry flowers milking at her new cocks.  As she's lowered into the flower, she only starts to realize what's happening as the large tentacles withdraw, but by then, the smaller tendrils are all around her, holding her bloated body inside the flower as it starts closing around her.  She tries to hold the petals open, but her strength wanes quickly and soon she's tightly enclosed.  There is a brief struggle, then the big flower is still and the tentacles, fruits and flowers move back into their positions, waiting to lure in their next victim.  You are quite certain there'll be nothing left of the girl but another of these parasitic plants to set root nearby.  You move on";
		if "Kinky" is listed in feats of player:
			say ", your kinky urges pleased and greatly aroused by the scene you just witnessed.";
			increase morale of player by 3;
			increase libido of player by 25;
		otherwise:
			say ", strangely disturbed and yet aroused by the scene you just witnessed.";
			increase libido of player by 10;
		if libido of player > 100, now libido of player is 100;
	now joannafight is 0;
	now Overrun Garden is resolved;

to say losejoannafight:
	say "     Held by the steely vines, you can feel them probing at your body.  When the vine in your [if cunts of player > 0]cunt[otherwise]ass[end if] throbs painfully large, you cry out in a mix of pain and pleasure.  Your open mouth is quickly filled by one of the bulbous fruits and sticky sap flows into your mouth[if cunts of player is 0].  Another finds its way into you ass, spreading you open wide[end if].  It is sticky and sweet and makes you more passive[if cunts of player > 1].  Having more cunts to fill, more vines and bulbous fruits push into you, making you moan in delight[end if].  All your available holes are filled with pumping, thrusting, leaking tendrils that stuff you over and over again.  They start pulling you towards one of the large, vaginal flowers.  The slender, white tendrils rise up and start waving around, as if in anticipation, but you no longer care about what's coming, too lost in the drugged pleasure as your belly[if cunts of player > 0] and womb[end if] swells with the plant's sweet sap.";
	say "     Some motion beside you draws your eyes to the transforming kinkajou woman as the flower is closing around her swollen body.  She still tries to struggle a little, foolishly pushing against the closing petals.  Why would anyone want to stop this?  It just feels so wonderful.  Released into the flower, the white tendrils wrap around you and slide all over your body.  These are lovely caresses as you start to drift off to sleep while the plant's nectar flows over you and more tendrils slip into your body from every orifice, bonding with you.  You cum repeatedly through this experience, even as you're passing out.";
	[puts Parasitic Plant as lead monster for infection]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Parasitic Plant":
			now monster is y;
			break;
	now tailname of player is "Parasitic Plant";
	now facename of player is "Parasitic Plant";
	now skinname of player is "Parasitic Plant";
	now bodyname of player is "Parasitic Plant";
	now cockname of player is "Parasitic Plant";
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
		follow the sex change rule;
	now humanity of player is 0;
	now libido of player is 100;
	now thirst of player is 0;
	now hunger of player is 0;
	end the game saying "You were consumed by the giant parasitic plant.";
	now battleground is "void";
	now vinetrapped is 2;
	wait for any key;
	follow the turnpass rule;
	stop the action;


Section 2 - Flower Garden

Flower Garden is a room. It is fasttravel. It is private.
The description of Flower Garden is "     Joanna's garden is lush and beautiful, thriving with large and fragrant flowers under her care.  Cleaning away the remains of the monstrous plant, she's taken its place at the center of the garden.  She uproots herself from time to time to walk around and tend to her flowers.  There is a stone path to walk that weaves through the various beds and bushes.";
lastflowersmell is a number that varies.  lastflowersmell is normally 555;
Skyscrapers2 is a door.  "Leaving here to the east heads back into the High Rise District.".
Skyscrapers2 is west of Financial Sector and east of Flower Garden.  It is dangerous.
the marea of Skyscrapers2 is "High";

instead of sniffing Flower Garden:
	say "The flower garden smells wonderful, with an array of beautiful fragrances in the air, much nicer than the smell of the city surrounding it";
	if morale of player < level of player and lastflowersmell - turns < 8:
		say ".";
	otherwise:
		say ".  Stopping to smell the roses cheers you up a little.";
		increase morale of player by 5;
		now lastflowersmell is turns;


Section 3 - Joanna the Kinkajou-Plant

Joanna is a woman.  Joanna is in Flower Garden.
The description of Joanna is "[joannadesc]";
lastjoannafucked is a number that varies.  lastjoannafucked is normally 555.

instead of sniffing the Joanna:
	say "Moving up close to her, you stroke Joanna's hair and bring one of the blossoms to your nose.  It has a lovely fragrance, uniquely lovely and perhaps the best flower you've ever smelled";
	if morale of player > level of player or lastflowersmell - turns < 6:
		say ".";
	otherwise:
		say ".  Stopping to smell the roses cheers you up a little.";
		increase morale of player by 5;
		now lastflowersmell is turns;

to say joannadesc:
	say "     Joanna is a plant-like kinkajou and is a little over five and a half feet tall.  Her fur has become green and her feet end in roots and tendrils that wriggle in the soft soil.  Her face fur and large, expressive eyes have become a vibrant red, a beautiful contrast to her verdant body.  Her long hair remains and is green now as well and has lovely red flowers growing amongst it.  Her slender tail is quite long, nearly as long as she is tall.  As a plant, she remains nude to bask in the sun's light, wearing naught but a sun hat on the hottest of days.  Her breasts are shapely globes and there are soft petals ringing her nipples.  At her groin, she has a quartet of cock tendrils and a trio of wet, flowery cunts beneath them.";
	say "     Also known as a honey bear, kinkajous are nomally small creatures who live in the South American rainforest and live off honey and the nectar of flowers using their long tongues.  Something between ferret and monkey in appearance, these are cute and peaceful creatures.  Having become a plant herself, Joanna has made her home in this garden and enjoys the peaceful life of being a flower in her own garden and a kinkajou surrounded by lovely and fragrant flowers, dripping with nectar.";


Instead of conversing the Joanna:
	say "     [one of]'I should be safe enough here.  The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'I'm really liking the new me,' she says, running her paws over her verdant body.[or]'Life is so peaceful here.'[or]'I'm glad you stopped by.'[or]'Thanks for the help.  Being a plant is wonderful, but I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I have so many beautiful flowers to tend to in my garden.'[or]'I think I like these ones best,' she says, walking over to one flowering bush.  She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[otherwise]'Oh, I get so sleepy when the sun's down.  I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[at random]";


Section 4 - Joanna Sex

instead of fucking the Joanna:
	if lastJoannafucked - turns < 8:
		say "     Having played with Joanna recently, perhaps you should wait a bit before having another romp with her.  She could use a little more time in the sun to recharge and refill on her sweet juices.";
	otherwise if daytimer is night:	[night]
		say "     You make the suggestion to Joanna, but she smiles and shakes her head.  'Sorry, with the sun down, I'm just a little too sleepy to play around.  Please ask again during the daytime and I'd be happy to show you how much I appreciate all your help.'";
	otherwise:
		say "     The green kinkajou grins happily as you offer to have some fun in the sun with her.  She wraps her arms around you and kisses you passionately, diving her long tongue into your mouth.  It tastes sweet and slides around in your mouth before diving deeper and going down your throat.  As it starts leaking more of that sweetly arousing fluid, you try to decide exactly what you'd like to do to enjoy your time with your flowery lover.";
		wait for any key;
		say "[joannaselection]";


to say joannaselection:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Bukkake";
	now sortorder entry is 1;
	now description entry is "Lavish attention on her numerous genitalia to get a messy finish.";
	now toggle entry is joannasexy rule;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 2;
		now description entry is "Have her suck you off.";
		now toggle entry is joannasexy rule;
[	if cocks of player > 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Joanna";
		now sortorder entry is 4;
		now description entry is "Stuff her lovely flowers with your cock(s).";
		now toggle entry is joannasexy rule;								]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 3;
		now description entry is "Get that wonderous tongue in your womanly flower.";
		now toggle entry is joannasexy rule;
	if cunts of player > 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Pussy fucked";
		now sortorder entry is 5;
		now description entry is "Go for a ride on those tentacle cocks of hers.";
		now toggle entry is joannasexy rule;
[	if cunts of player is 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 6;
		now description entry is "Try one of those squirming tentacle cocks up your ass.";
		now toggle entry is joannasexy rule;										]
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the joannasexy rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		[puts Parasitic Plant as lead monster for sex change]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Parasitic Plant":
				now monster is y;
				break;
		choose row monster from table of random critters;
		if nam is "Bukkake":
			say "[joannasex1]";
			if hp of Joanna is 1, now hp of Joanna is 2;
		otherwise if nam is "Fellatio":
			say "[joannasex2]";
			if hp of Joanna is 1, now hp of Joanna is 2;
		otherwise if nam is "Cunnilingus":
			say "[joannasex3]";
			if hp of Joanna is 1, now hp of Joanna is 2;
		otherwise if nam is "Fuck Joanna":
			say "[joannasex4]";
		otherwise if nam is "Pussy fucked":
			say "[joannasex5]";
		otherwise if nam is "Anal":
			say "[joannasex6]";
		say "     You can feel an oddly pleasant sensation as Joanna's sweet saliva and fluids seep further into your body, warming your groin and exciting you.";
		say "[line break]";
		follow the sex change rule;
		wait for any key;


to say joannasex1:
	say "     Deciding the please the garden's loveliest flower, you break the deep-throating kiss and lower yourself to your knees.  Her numerous genitalia offer plenty of choices for you to play with.  You start by running your tongue over one of her cocks while your fingers stroke her thighs, then move to stroke the folds of her wet pussies.  Dripping with sweet nectar, you stroke those lovely flowers, dipping a few fingers into each of them, switching from one to the next after a few strokes.  You mouth meanwhile has taken her cock in and the green tendril squirms down your throat, leaking her sweet, arousing juices into you.  She runs her paws over your head while her other green shafts move on their own, rubbing against your face, smearing precum over you.  After a good long suck on that one, you move to another cock, and then another.  As you're switching to the last one, Joanna moans and sends the tendril down your throat moments before she cums hard.  Her sweet cum blasts down into your belly and blasts across your face, painting you in her semen.  Once the cumming tendrils have released you, you sit back and wipe her sugary semen from your face with one hand and lick it up.  The other is firmly between your legs, playing with your aching loins until you cum moments later.";
	increase libido of player by 15;
	if libido of player > 100, now libido of player is 100;

to say joannasex2:
	say "     Reaching down, you stroke your throbbing [cockname of player] [if cocks of player > 1]cocks[otherwise]cock[end if] and slowly break the deep-throating kiss.  You stroke her softly furred muzzle and ask her if she's like a taste of it.  Grinning, she's on her knees right away.  Her long, agile tongue slides over your tongue and then wraps completely around your penis, stroking and squeezing as she starts sucking hungrily.  You moan in pleasure and run your fingers through her green hair, being careful not to pluck her flowers, then move to scritch her round ears.  Rumbling and chirring in pleasure, rubbing your [ball size] orbs, eager for the thick nectar within[if cunts of player > 1].  Her paws run along your legs and then move to start stroking and teasing your pussies, slipping a few fingers into them to further excite you and get more of your juices[otherwise if cunts of player is 1].  Her paws run along your legs and then move to start stroking and teasing you pussy, slipping a few fingers into your cunt to further excite you and get more of your juices[end if][if cocks of player > 1].  Having several cocks to pick from, she swaps between them from time to time, doing her best to get you worked up for a big blast[end if].  When your climax finally hits, she gulps down your seed hungrily, moaning around her muzzleful of throbbing cock[if cocks of player > 2] while your other cocks spurt your semen onto her face.  She swaps quickly from one to the other, [otherwise if cocks of player is 2] while your other cock spurts your semen onto her face.  She swaps quickly between them, [otherwise], [end if]trying to get as much as she can to satisfy her body's cravings.  Once your balls are drained, she gets up, running her foot long tongue over her face and paws, licking away every drop of your juices.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say joannasex3:
	say "     Reaching down, you stroke your leaking [cunt size desc of player] [if cunts of player > 1]cunts[otherwise]cunt[end if] and slowly pull away from the deep-throating kiss.  You stroke her softly furred muzzle with your damp fingers and ask her if she'd to put that tongue of hers to work getting more.  Grinning, she's on her knees right away.  Her long, agile tongue slides across your groin, licking at your damp folds before diving into your vagina.  The red flesh pumps and wriggles inside you, sending shivers of delight up your spine[if cunts of player > 1].  She swaps back and forth between your cunts, lavishing them with attention[end if].  Your [if cunts of player > 1]pussies orgasm[otherwise]pussy orgasms[end if] several times, giving your sweet nectar to the lustful and thirsty kinkajou.  Her paws don't remain idle either, moving to [if cocks of player > 1]stroke your cocks until they finally cum as well[otherwise if cocks of player is 1]stroke your cock until it finally cums as well[otherwise]knead your ass until finally your body is wracked with one last, powerful orgasm[end if].  Moving back after that, she makes a show of sliding her messy tongue all over her face, licking away all your juices with that flexible and talented organ.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

to say joannasex4:
	say "Fuck Joanna - not yet written";

to say joannasex5:
	say "     Reaching down, you stroke Joanna's throbbing cocks, spreading her leaking juices over them until they're nice and slick.  Slowly pulling away from the deep-throating kiss, you ask if she'd like to fill you with them.  Her response is to give you another kiss with that wild tongue of hers, making you moan.  You lay down on the grass with her atop you, laying in a sunny patch.  She spreads your legs and brings her numerous cocks into position";
	if cunts of player > 2:
		say ".  Having a hole for each of her four cocks, she moans loudly in appreciation as each one of the sinks into your waiting vaginas in turn[if cunts of player is 3], pushing the final one into your tight pucker to plow your ass[end if].  The feeling of having four cocks in you at once is grand, making your body shiver and writhe in waves of delight.  Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavour once again.  You run your hands through her soft fur and stroke her breasts, your motions a little ragged and uncoordinated from the overwhelming stimuli, but Joanna is doing little better, clearly enjoying filling you so much she hardly notices your fumbling hands.  She keeps her own locked at your hips, gripping you firmly.";
	otherwise:
		say ".  With [if cunts of player is 1]some[otherwise]one[end if] of her cocks left out, she slides her cocks into your [if cunts of player is 1]cunt[otherwise]cunts[end if] and tight pucker each in turn.  The remaining [if cunts of player is 1]cock tendrils slide[otherwise]cock tendril slides[end if] around on your body, stroking against your [skinname of player] flesh[if cocks of player > 1] and entwining with your cocks[otherwise if cocks of player is 1] and entwining around your cock, squeezing and pumping over your throbbing flesh[end if].  Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavour once again.  You run your hands through her soft fur and stroke her breasts, playing with her nipples and the soft petals which surround them.  Joanna keeps her paws locked your hips, gripping you firmly.";
	say "     Her various cocks move independently, each pumping into you [if cunts of player < 3]and sliding over body [end if]at their own pace.  But there is a harmonious rhythm to their motion as well, with larger overall patterns, like a beautiful concert for the body from her separate instruments.  And like a concert, the rhythm and patterns build and swell until finally reaching their peak and she sends her cocks as deep into you as they'll go, blasting his thick, gooey cum deep inside you.  You arch your back and cum hard at the sudden influx[if cocks of player > 0], spraying your own seed across you both[end if].  You become aware that more of her sweet juices flow from her tongue as well, leaving you in a haze of pleasure as she slowly withdraws from you[if cunts of player > 2].  You are left quite full and bloated from the flow from having so many cocks all cumming inside you at once, but wonderfully so[end if].[impregchance]";
	now libido of player is ( 3 * libido of player ) / 5;

to say joannasex6:
	say "Anal - not yet written";


Section 4 - Endings

when play ends:
	if vinetrapped is 2:
		say "     You eventually awaken again as the flower petals open, allowing the morning sun to shine down on you.  Drawing strength from its light, you start to rise, helped out of flower by several of the vines.  Stretching your arms wide, you bask in the light and sigh in pleasure, feeling the pleasure of feeding all across your body.  You don't know how long you stay there, your mind foggy and thinking little at all, but are woken from your reverie by another nearby flower opening.  You walk over and help the lovely creature inside, a plant girl much like you, but with an animal face, muzzle and tail.  For a moment, there's a passing memory as if you'd seen her before, but it fades away.  She has lovely flowers in her brown hair, a green plant-like body with red across her kinkajou face.  Her long, red, tendril-tongue slides out and dives into your mouth and you can feel her cock tendrils begin to stir.";
		say "     After a long session of lovemaking on the grass where you put your vines and tendrils into one another while feeding from the sunlight, you finally look up and find the sun high in the sky.  Feeling full and sated, you take your lover's hand in yours and follow a growing urge within you both to leave and find another place to set down your roots, this one fully overgrown by the giant plant.  Kissing the giant plant's vines and bulbs, you both suck sweet juices from them before going.  Again taking her hand in yours, you entwine your viney fingers and, with some effort to unroot yourselves, head on your way.";
		say "     You travel with your companion across the city.  Travelling across the paved streets is unpleasant, not being able to feel the earth or dig into the soil, but you do so whenever you can to refresh yourselves.  While most of the creatures of the city stay out of your way, you do end up fighting with some on your journey and you make sure to leave them full of sticky nectar and sap, hoping they'll share in the joy of becoming peaceful plants instead of squabbling mammals.  And with all the fighting going on at the city's edge, you and your companion are able to slowly creep past the lines of those fighting mammals (humans, was it?) during a conflict.  It is slow going and it's very tempting to lay down your roots and stop, but you encourage one another to keep going, wanting only the best of locations for your lover.  Looking like bushes, you move with the patience of a growing plant and moves inches at a time while they fight around you with the other creatures.";
		say "     Once you're safely past them, you are able to continue on until you find a lovely riverbank glade and set down your roots permanently, sharing the pleasure of this sensation by entwining your vines with your companion and sharing nectar and sap with her.  You would not have made it here without her and now you have this place to share with her and make into a plant paradise together.  You grow and spread out your vines across the glade, quite pleased when the occasional human mammal is drawn into your glade by the lovely scent of your flowers.  Working together, you easily maange to subdue them, milking them for their nutrients and filling them with a seed of a plant of their own to start changing them.  These converts help you grow and spread further, as well as bring you more new converts to spread your plant offspring out from your hidden glade."; 
		if hellHoundLevel > 0:
			say "     With your mind almost completely erased by your transformation into a plant, you forget about your pact with the hellhound.  But he does not forget.  Having given into your life as a corrupting plant creature infecting others, your dark contract has only been delayed to prepare you for a new role in the afterlife.";
			say "     When that times comes at the end of your long life as a plant, you are pulled into the pits of Hades and given a life of as a foul tree there.  Having spent centuries growing and corrupting others in life, your body is now twisted and turned to new, dark aims on your unending task to satisfy the lustful urges of the demonic hounds.  They mark your large trunk with their foul, burning urine, letting its corruption seep into you.  Your vaginal flowers are fucked by the hound's cocks and your tendrils made to pump your tainted fluids into their bitches.  Your branches grow dark fruit which break open and release plant-like hounds to add to Hell's numbers.";
		stop the action;

Joanna ends here.