Version 1 of Bubble by Stripes begins here.
[Version 1 - NPC + sex]

"Adds Bubble the Inflatable Vixen as an NPC to the Flexible Survival game."

Section 0 - Basic Structure

Bubble is a person.
The description of Bubble is "[bubbledesc]";
The conversation of Bubble is { "Yay!" }.

the scent of Bubble is "Bubble smells of warm latex with a hint of vulpine arousal.";

Section 1 - Description

to say bubbledesc:
	say "     Having become an inflatable creature after her stint at the strange bouncy castle, Bubble (as she's now called) is a latex-skinned vixen with an air-filled body.  The effects of her transformation's also deeply affected her mind, making her a bubbly airhead most of the time.  Occasionally, she'll remember enough of her old self to be able to focus on a task or keep herself from doing anything too foolish, but generally she's a happy-go-lucky girl who's eager to have some fun.";
	if libido of Bubble is 0:
		say "     She's got a very sexy figure that's been improved if anything by her transformation.  She's got lovely, smooth curves, a narrow waist and a super-flexible body that's always light on its feet.  Her inflatable skin made of smooth latex.  It is predominantly orange, though there's some black sections starting at her wrists and ankles and white ones at her chest and thighs.  These are all joined by seams between the various sections.  Her vulpine face has a happy expression and big, blue eyes that are more like living decals than real ones.  Not bothering to dress beyond a pair of brightly coloured sneakers she's found, she goes around nude.  Her breasts are buoyant and have ever-perky nipples.  Her delectable pussy is always wet with a slick sheen of her lube-like juices.  She's got a puffed out, balloony fox tail with a nozzle tip on the end of it above her (quite literally) bubble butt.";
	otherwise if libido of Bubble is 1:
		say "     Having been blown up by you, she's now got a much rounder and fuller figure.  She's got lovely, round curves, a plump belly and wide hips, all while still having a super-flexible body that's always light on its feet.  Her inflatable skin made of smooth latex.  It is predominantly orange, though there's some black sections starting at her wrists and ankles and white ones at her chest and thighs.  These are all joined by seams between the various sections.  Her vulpine face has a happy expression and big, blue eyes that are more like living decals than real ones.  Not bothering to dress beyond a pair of brightly coloured sneakers she's found, she goes around nude.  Her big breasts are buoyant and have ever-perky nipples.  Her pussy's puffy, swollen lips are always wet with a slick sheen of her lube-like juices.  She's got a puffed out, balloony fox tail with a nozzle tip on the end of it above her inflated and rounded ass.";


Section 2 - Conversation

Instead of conversing the Bubble:
	if hp of Bubble < 4:
		say "ERROR-Bubble-[hp of Bubble]C: Something funky's going on here.";
	otherwise if hp of Bubble is 4:
		say "     'This is such a fun place you've got here,' she giggles happily.  There's lots of space[if the number of bunkered people + the number of booked people > 3], lots of new friends[end if] and plenty of interesting stuff to go see outside.  Thanks for letting me stay here, cutie.'  She gives you a kiss on the cheek while giving your ass a squeeze before bounding around happily, only the weight of her sneakers keeping her partly grounded.";
		now hp of Bubble is 5;
	otherwise if hp of Bubble is 6 and a random chance of 1 in 3 succeeds:
		say "     'I've been having such a great time since I've come here.  Playing [']High Dive['] is especially fun!' she says excitedly.  Confused, you ask her what she's talking about and she just giggles.  'I'll show you.  It's loads of fun!'";
		say "     Bending over to untie her sneakers, she ends up flashing you a fine view of her delectable pussy and bubble butt.  'I got these sneakers so I don't bounce around too much while I'm having fun,' she says with some clarity.  'But they'd mess up things up now,' she adds with a giggle.  After pulling them off, she snuggles her own tail and, pinching the air valve at its tip, takes a few quick breaths and blows into it.  This causes her body to start to swell up, inflating herself until she's got a plump, rounded figure.  Full of air, she bounds effortlessly to the balcony area overlooking the main floor and leaps right off.  Crying out, you run to the balcony railing to see her floating down at a rather sedate speed while she giggles happily.";
		say "     Reaching the bottom, she bounces lightly off of the floor and rises back up several feet, rolling in mid-air as she does.  'Come on.  You try it now,' she calls up merrily.  'It's awesome!'  Responding that you don't think that'd be such a good idea, you head over to take the stairs down, only to find her bounding buoyantly up them four or five steps at a time.  Once she reaches the top, she dives right over the railing again, this time with a spin.  She twirls down, bounces around, rushes back up and leaps off again repeatedly, getting seemingly endless amusement out of it.";
		now hp of Bubble is 7;
	otherwise:
		say "     [one of]'I think I'll go and see if I can meet up with one of those cute foxes out there.  They have such a sexy sheen to their latex.'[or]'Thanks again for saving me.  From what I saw of it, getting to me couldn't have been easy.  And now we can have lots fo fun together,' she giggles at the end, her bubbling joviality returning.[or]'I think I look really sexy now, don't you?' she asks, posing naughtily for you.[or]'I can do lots of fun stuff now that I'm a balloon.  It's great.'[or]'I was so stressed before.  So many worries and problems.  All pointless stuff that was weighing me down.  But now - Poof! - no room for them in my fun-loving bubble brain,' she giggles happily.[or][if skinname of player is listed in infections of Latexlist]'Your skin feels so nice like this,' she says, running her paws over your smooth hide.[otherwise]'Mmm... I think you'd look pretty sexy with a nice latex coating,' she purrs, running a finger teasingly across your chest.[end if][or][if hp of Bubble is 6]Cuddling her own inflatable tail, she licks her tongue slowly around the air valve.  'The great thing about the new me is I can have any sexy figure I want.  Or you want,' she adds with coquettishly.[otherwise]She giggles vapidly and makes some air-headed comment.[end if][or]She giggles vapidly and makes some air-headed comment.[in random order]";


Section 3 - Sexytimes

the fuckscene of Bubble is "[sexwithBubble]";

to say sexwithBubble:
	if lastfuck of Bubble - turns < 4:
		say "     You try to entice the bubble-headed vixen into more sex, but her attention keeps wandering.  It looks like you'll have to wait a little while and try again later.";
	otherwise if hp of Bubble is 1:
		say "     She seems mighty eager, but you do want to talk to her first.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     For now, there's nothing you can do with Bubble while you're genderless.";	[***]
	otherwise:
		say "[Bubblesex00]";


to say bubblesex00:
	say "     Running your eyes over Bubble's [if libido of Bubble is 0]lissome[otherwise]plump[end if] figure, you find yourself becoming aroused.  Deciding to have some erotic fun with her with the vixen who's essentially a living sex doll, only way better, you now have to decide how you'd like to enjoy her company.  As you're mulling it over, you pull the inflatable fox woman into your arms and run your hands over her, delighting in her happy giggles.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "stuff her slick cunny";
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "stuff her [if libido of Bubble is 0]bubble butt[otherwise]inflated ass[end if]";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 3;
		now description entry is "have her suck you off";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 4;
		now description entry is "try that delightful tongue in your snatch";
[	choose a blank row in table of fucking options;
	now title entry is "Eat her out";
	now sortorder entry is 5;
	now description entry is "lick Bubble's snatch";	]
[	if cunts of player > 0 or cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 6;
		now description entry is "69 with the inflatable vixen";	]
[	choose a blank row in table of fucking options;
	now title entry is "Rim job";
	now sortorder entry is 7;
	now description entry is "have your ass licked";	]
	if hp of Bubble >= 7:
		choose a blank row in table of fucking options;
		if libido of Bubble is 0:
			now title entry is "Inflate";
		otherwise:
			now title entry is "Deflate";
		now sortorder entry is 10;
		now description entry is "change her figure by [if libido of Bubble is 0]inflating[otherwise]deflating[end if] her";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her":
					say "[bubblesex01]";
				otherwise if nam is "Anal":
					say "[bubblesex02]";
				otherwise if nam is "Blow job":
					say "[bubblesex03]";
				otherwise if nam is "Get cunnilingus":
					say "[bubblesex04]";
				otherwise if nam is "Eat her out":
					say "[bubblesex05]";
				otherwise if nam is "69":
					say "[bubblesex06]";
				otherwise if nam is "Rim job":
					say "[bubblesex07]";
				otherwise if nam is "Inflate":
					say "[bubblesex08]";
				otherwise if nam is "Deflate":
					say "[bubblesex09]";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	if hp of Bubble is 5, now hp of Bubble is 6;
	now libido of player is ( ( libido of player * 2 ) + 50 ) / 3;
	now lastfuck of Bubble is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say bubblesex01:
	if libido of Bubble is 0:
		say "     In the mood to fuck the svelte vixen, you lift her up easily and line up your [cock of player] manhood to her slick pussy.  Feeling your throbbing cock at her juicy folds, she murrs happily and wraps her arms and legs around you.  Grabbing her bubble butt, you push her onto your rod, letting those lubricated latex walls slide slowly down your shaft.  The feel of her around you is surprisingly good, her cunt clearly made for fucking.  Made of animated plastics, it moves just like a real one, squeezing and tugging at your cock with all her wanton need[if cock length of player > 24].  Despite your impressive size, her elastic vagina spreads and stretches easily to accommodate your [cock size desc of player] penis[end if].";
		say "     Bouncing her lightweight body on your cock, you bury your face in her bosom, kissing across them.  Finding your way to one of her nipples, you give it a few licks before sucking down on it.  She releases a giggling moan and wraps her arms around your head, pressing your face firmly to her yield, pillowy chest.";
		say "     'Oh yes!  Oh yes!  Just like that!  Keep going... I'm about to pop!' she cries out, her cunt quivering around you rapidly.  From that point, only a few last bounces are needed before she arches her back as she climaxes.  Her lube-like juices soak your crotch as her stretchable cunny squeezes tightly around you, milking at your shaft until you cum.  You can't help but groan as you release your [cum load size of player] load into her, painting her inner walls with your seed.  Both spent and sated, at least for the moment, she disentangles herself from you and you slide her up and off our softening member.  After licking you clean, her attention wavers and she bounds off to amuse herself elsewhere.";
	otherwise:
		say "     In the mood to fuck the plump vixen, you lower her to the ground and move atop her.  Lining up your [cock of player] manhood with her slick pussy, you take a moment to share a kiss with the inflatable vixen.  Feeling your throbbing cock at her swollen and puffy folds, she murrs happily and wraps her arms around you and spreads her legs in anticipation.  Pressing yourself down onto her padded body, you push your rod into her, letting those lubricated latex walls slide slowly over your shaft.  The feel of her around you is surprisingly good, her cunt clearly made for fucking.  Full of life despite being plastics, it moves just like a real one, squeezing and tugging at your cock with all her wanton need[if cock length of player > 24].  Despite your impressive size, her elastic vagina spreads and stretches easily to accommodate your [cock size desc of player] penis[end if].";
		say "     Cushioned by her padded body, you're supported easily by her inflatable form.  Feeling her pressed beneath you, her buxom breasts against your [if breast size of player > 1]own[otherwise]chest[end if].  Your weight doesn't seem to bother her, her balloon-like body simply compressing or swelling to accommodate your movements.  Her embrace conforms to you, ensuring you are always comfortable as you rail into that juicy pussy of hers.";
		say "     'Oh yes!  Oh yes!  Harder!  Faster!  Pump that hot cunt full!' she cries out, her cunt quivering around you rapidly.  From that point, only a few final thrusts are needed before she throws her head back as she climaxes.  Her lube-like juices soak your crotch as her stretchable cunny squeezes tightly around you, milking at your shaft until you cum.  Clutching her padded shoulders, you bury your face in her neck and paint her inner walls with your [cum load size of player] load.  Both spent and sated, at least momentarily, you rest atop her for a while, sharing kisses with her while your shaft softens.  After sliding out of her and sitting up, you're treated to her licking your clean before she goes off to find her next source of amusement.";

to say bubblesex02:
	say "     In the mood to fuck the [if libido of Bubble is 0]lithe vixen's bubble butt[otherwise]plump vixen's well-rounded rear[end if] by the back door, you bend her over one of the tables.  She giggles happily and raises her tail, giving a surprised meep as you finger her rubbery asshole instead of her dripping cunny.  She doesn't shy away from it though, bouncing her hips and teasing that you're [one of]a dirty boy[or]a kinky guy[or]quite the perv[or]a horndog[in random order].  Feeling it relax and leak a little lube of its own, you know she's ready and you line your stiff cock with her anal ring.";
	say "     Pushing past that rubbery seal gains you entrance into a tight, clinging passage that grips your meat tightly.  You take your time sliding into her at first, but soon find it easy to thrust hard and fast into her.  With a tight grip on her [if libido of Bubble is 0]bubble butt[otherwise]wide butt[end if], you drill into her again and again, enjoying the squeaking sounds of her happy yips and moans.  Her inflatable fox tail swishes around excitedly, twitching and bouncing every time you bury yourself [if cockname of player is listed in infections of Internallist]fully[otherwise]balls-deep[end if] into her ass.";
	say "     Feeling your climax coming quickly, you make a few last frantic thrusts before you can't hold back any longer.  Driving yourself as deep as you can into her back passage, you unload your hot cum into her, splattering it across her inner walls.  As your [cum load size of player] output sprays into her, her lower body trembles with delight and you can smell a fresh outpouring of her pussy juices in the air as she cums as well.  Her latex anus and rectum ripple in time to her cunt's orgasmic reaction and the last few dribbles of your seed are milked from you.";
	if libido of Bubble is 0:
		say "     Spent and sated, you pull your softening shaft from the gracile vixen's ass.  Her asshole closes up snug as soon as you're out, keeping your load in.  Aside from a sheen of slickness across it, you'd hardly be able to tell it was just fucked and filled.  Though the rivulets of femmecum running from her dripping snatch are proof plenty that she thoroughly enjoyed the assfucking.  She giggles while you look her over, happy to put herself on sexual display for you.  Eventually her attention wavers and she bounds off in search of some new form of amusement.";
	otherwise:
		say "     Spent and sated, you flop down across her back, smooshing the well-padded vixen between you and the table a little.  She releases a long, happy sigh that's also a bit of a squeak as you force a little of her excess air out.  You rest atop her for a while, finding her cushioned form very comfortable.  Once your shaft softens, it's popped free of her asshole and the hole closes up snug again.  After a while, she starts to get bored with just laying there beneath you and starts to fidget.  Getting up, you're given a quick kiss before she bounds off in search of something else to amuse her.";

to say bubblesex03:
	say "     Deciding you'd like a blow job, you gently lower Bubble to her knees and offer up your stiffening cock to her.  Eyeing your [cock size desc of player] penis with obvious hunger, she runs her tongue across her muzzle before plunging her mouth right over it[if cock length of player > 24].  The inflatable vixen has no trouble with your [cock size desc of player] manhood, her mouth and throat stretching easily to accommodate it all[end if].  Once she's got that black decal patch of her nose buried in your crotch, she starts sucking down on your meat like a horny vacuum.  Her tongue slides slickly across your shaft, exciting you further.  As she works to suck you off, you rub your hands over her latex head.  Her decal eyes look up at you and she grins at the corners of her mouth.  Between the smile and the way she's fingering her [if libido of Bubble is 1]puffy-lipped [end if]pussy wildly, you can tell she's thoroughly enjoying herself.";
	say "     Proving herself to be part sexy vixen and part sex doll, that muzzle of hers feels great around your meat drives you wild.  From the way the [if libido of Bubble is 0]slender[otherwise]plump[end if] fox girl is going to town on you, it isn't long before you're cumming.  You shoot blast after blast of your hot seed down the [if libido of Bubble is 0]lithe[otherwise]buxom[end if] inflatable's throat.  She murrs happily at the taste and licks away the last few drops as you ease your spent shaft from her muzzle.  She rubs her [if libido of Bubble is 0]smooth[otherwise]rounded[end if] tummy, enjoying the feel of your gooey cum running along her inner skin and slowly being absorbed.";

to say bubblesex04:
	say "     Deciding on having the horny vixen eat you out, you prop up one leg on a nearby chair and motion for her to give your pussy thorough tonguing.  With a happy giggle, the [if libido of Bubble is 0]slender[otherwise]plump[end if] inflatable presses her latex muzzle between your legs and, after nuzzling your thighs, starts licking your wet folds.  Several licks in, her tongue plunges into your [cunt size desc of player] cunt.  She eats you out with a lustful hunger, her tongue wriggling and squirming inside you.  It slides around inside you and gradually feels like it's swelling up inside you.  Your cunny quivers and drips with juices as her tongue probes deeper even as she starts fingering herself.";
	say "     As your excitement grows, you grab her head and press it to your crotch, grinding your hips against her inflatable muzzle.  The wriggling of her tongue inside you and the soft caress of her latex lips against your folds have you panting and moaning.  Eventually you can't hold back and pull her head in even harder, smooshing her flexible face against your quivering pussy as you cum hard.  Your vagina squeezes down around that squirming latex flesh inside you and a gush of femmecum flows across it.  She continues to work her tongue around inside you as you're orgasming until finally your over-sensitive pussy can take no more.  Pushing her muzzle back, her elongated tongue pops out of you.  Having been stretched out and inflated into a tube balloon while inside you, it gradually shrinks back down to its regular size.  Thinking nothing of this strange ability, she merrily licks her dripping chops and your crotch clean once it's gone down enough to use again.  Playtime over, something else catches her interest and she wanders off with a happy giggle.";

to say bubblesex05:		[***]
	say "***Eat her out";

to say bubblesex06:		[***]
	say "***69";

to say bubblesex07:		[***]
	say "***Rim job";

to say bubblesex08:
	say "     Deciding you'd like to see her with a fuller, more inflated figure, you run your hands over her tail.  When you brush your fingertips across the air valve at its tip, she murrs and gives a soft shiver of delight.  Moving eagerly onto all fours, she raises her tail and ass in the air, putting herself on display for you as you ready to blow her up.  Taking a deep breath and opening the valve, you press your lips around it and blow hard.  You can feel her tail swell up a little and she gives a happy moan as hot juices run down her legs.  It seems this is quite the turn on for the inflatable vixen.";
	if cocks of player > 0:
		say "     With the sight of her juicy pussy right there, you move overtop of her and sink your [cock size desc of player] cock into her stretchy cunt.  With your arms around her tail, you keep blowing more air into it and pushing it onwards into her body.  She pushes back into your thrusts, moaning for your to pump her harder.  Whether that's fucking her or inflating her doesn't matter to you, as you're very eager for both.  As you continue pounding away at her, every heavy breath you release makes her swell a little bigger.  Her ass gets wide and round, her belly curvy and huggable, her breasts big and balloony.";
		say "     By the time she's a buxom, rounded vixen, she's crying out in orgasmic delight.  With her latex cunny squeezing and quivering around you, you can't take any more and end up cumming as well.  As the last few shots of your [cum load size of player] load paints her insides, you pinch off the air nozzle and seal it up before any air can leak out.  After you pull out, she turns around and licks your cock clean before bounding to her feet so she can look over her new, rounded figure.  'Ooo!  Now there's more of me to love,' she giggles, giving you a big hug and a sloppy kiss before bounding off [if the number of booked people + the number of bunkered people > 2]to show the others[otherwise]to have some fun[end if].";
	otherwise:
		say "     Wanting to feel her swelling up beneath you, you move top her, pressing her tail lightly between you both.  With it held snug and her air nozzle still in your mouth, you're able to keep blowing into her while your arms hug her.  Despite only being latex and air now, she's able to support your weight.  This leaves you free to run your hands over her vulpine body, fondle her breasts and diddle her pussy.  She moans happily at all this, urging you to pump her harder.  Whether that's the fingers you're thrusting into her sopping cunt or inflating her doesn't matter to you, as you're eager for both.  As you continue, every heavy breath you release makes her swell a little bigger.  Her ass gets wide and round, her belly curvy and huggable, her breasts big and balloony.";
		say "     By the time she's a buxom, rounded vixen, she's crying out in orgasmic delight.  With her latex cunny squeezing and quivering around your fingers, you push a few final big lungfuls of air into her.  Panting a feeling a little woozy from your efforts, you pinch off the air nozzle and seal it up before any air can leak out.  After you slide your fingers free and stand back up, she turns around and [if cunts of player > 0]licks your pussy to a dizzying orgasm of your own[otherwise]gives your bare crotch a thorough licking in return[end if].  She bounds to her feet so she can look over her new, rounded figure.  'Ooo!  Now there's more of me to love,' she giggles, giving you a big hug and a sloppy kiss before bounding off [if the number of booked people + the number of bunkered people > 2]to show the others[otherwise]to have some fun[end if].";
	now libido of Bubble is 1;

to say bubblesex09:
	say "     Deciding to let some of her air out and bring back her slender figure, you run your hands over her tail.  When you brush your fingertips across the air valve at its tip, she murrs and gives a soft shiver of delight.  Moving eagerly onto all fours, she raises her tail and ass in the air, putting herself on display for you as you ready to release some of her excess air.  After giving the valve a teasing lick, you open it and start letting the air out.  It comes out slowly, requiring you to squeeze her tail body or tail to breach the seal.  She gives a contented sigh as the pressure's released and you spot hot juices running down her legs.  It seems this is quite pleasurable for inflatable vixen as well.";
	if cocks of player > 0:
		say "     With the sight of her juicy pussy right there, you move overtop of her and sink your [cock size desc of player] cock into her stretchy cunt.  Putting your arms around her rounded figure, you start squeezing the air out of her even as you add additional pressure by pushing your hips to her plump ass.  She pushes back into your thrusts with moans of 'Harder'.  Whether that's for you to squeeze her harder or to fuck her harder matters little to you, as you're eager to do both.  As you continue pounding away at her, you press a little more of the excess air out of the voluptuous vulpine.  Over time, her ass returns to a cute bubble butt, her belly slims down and her breasts goes back to being perky globes.";
		say "     By the time she's a slender vixen with the body of a pin-up model, she's crying out in orgasmic delight.  With her latex cunny squeezing and quivering around you, you can't take any more and end up cumming as well.  As the last few shots of your [cum load size of player] load paints her insides, you pinch off the air nozzle and seal it up before she accidentally deflates too much.  After you pull out, she turns around and licks your cock clean before bounding to her feet so she can look over her restored, slender figure.  'Ooo!  Don't I look sexy,' she giggles, giving you a big hug and a sloppy kiss before bounding off [if the number of booked people + the number of bunkered people > 2]to show the others[otherwise]to have some fun[end if].";
	otherwise:
		say "     To help her along as well as feel her changing beneath you, you move atop her, pressing her tail lightly between you both.  With it held there, you're able to put pressure on it and force out air from it.  By running your hands over her delectable body and squeezing the excess air out, you're able to push the excess into the tail so it can be forced out.  Your roaming hands caress her vulpine body, fondle her breasts and diddle her pussy when not refilling her tail.  She moans happily for 'More'.  Whether that's for more deflation or to finger her sopping cunt all the more doesn't matter to you, as you're eager for both.  As you continue playing with her, you press a little more of the excess air out of the voluptuous vulpine.  Over time, her ass returns to a cute bubble butt, her belly slims down and her breasts goes back to being perky globes.";
		say "     By the time she's a slender vixen with the body of a pin-up model, she's crying out in orgasmic delight.  With her latex cunny squeezing and quivering around your fingers, you squeeze out the last of her excess air from her tailtip valve.  You pinch off the air nozzle and seal it up before she accidentally deflates too much.  After you slide your fingers free and stand back up, she turns around and [if cunts of player > 0]licks your pussy to a dizzying orgasm of your own[otherwise]gives your bare crotch a thorough licking in return[end if].  She bounds to her feet so she can look over her restored, slender figure.  'Ooo!  Don't I look sexy,' she giggles, giving you a big hug and a sloppy kiss before bounding off [if the number of booked people + the number of bunkered people > 2]to show the others[otherwise]to have some fun[end if].";
	now libido of Bubble is 0;

Section 9 - Information

[ hp of Bubble           ]
[ 0 = not started        ]
[ 1 = Bouncy Castle open ]
[ 2 = Arrive at BC       ]
[ 3 = released           ]
[ 4 = brought home       ]
[ 5 = talked             ]
[ 6 = had sex            ]
[ 7 = High Dive scene    ]
[ ...                    ]
[ 99 = too late @ BC     ]
[ 100 = too late         ]

[ libido of Bubble        ]
[ 0 = slender (deflated)  ]
[ 1 = plump (inflated)    ]

[ word lists:

slender, lithe, lissome, gracile, svelte, skinny...
plump, rounded, full-figured, zaftig, chubby, busty, tubby, plumpish, pudgy/podgy...]

Bubble ends here.