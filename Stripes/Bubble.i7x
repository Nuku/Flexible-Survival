Version 1 of Bubble by Stripes begins here.
[Version 1.2 - UB hint & player inflation/deflation opened]
[Version 1.3 - Code and writing cleanup. Added additional comments for clarity - Song]

"Adds Bubble the Inflatable Vixen as an NPC to the Flexible Survival game."
[To understand HP of Bubble values, see Section 9]

Section 0 - Basic Structure

Bubble is a person.
The description of Bubble is "[bubbledesc]".
The conversation of Bubble is { "Yay!" }.

the scent of Bubble is "Bubble smells of warm latex with a hint of vulpine arousal.".

Section 1 - Description

to say bubbledesc:
	say "     Having become an inflatable creature after her stint at the strange bouncy castle, Bubble (as she's now called) is a latex-skinned vixen with an air-filled body. Her transformation has also deeply affected her mind, making her a bubbly airhead most of the time. Occasionally, she'll remember enough of her old self to be able to focus on a task or keep herself from doing anything too foolish, but generally she's a happy-go-lucky girl who's eager to have some fun.";
	if libido of Bubble is 0:
		say "     She's got a very sexy figure that's been improved if anything by her transformation. She's got lovely, smooth curves, a narrow waist and a super-flexible body that's always light on its feet. Her inflatable skin is made of smooth latex. It is predominantly orange, though there's some black sections starting at her wrists and ankles and white ones at her chest and thighs. These are all joined by seams between the various sections. Her vulpine face has a happy expression and big, blue eyes that are more like living decals than real ones. Not bothering to dress beyond a pair of brightly colored sneakers she's found, she goes around nude. Her breasts are buoyant and have ever-perky nipples. Her delectable pussy is always wet with a slick sheen of her lube-like juices. She's got a puffed out, balloony fox tail with a nozzle tip on the end of it above her (quite literally) bubble butt.";
	else if libido of Bubble is 1:
		say "     Having been blown up by you, she's now got a much rounder and fuller figure. She's got lovely, round curves, a plump belly and wide hips, all while still having a super-flexible body that's always light on its feet. Her inflatable skin made of smooth latex. It is predominantly orange, though there's some black sections starting at her wrists and ankles and white ones at her chest and thighs. These are all joined by seams between the various sections. Her vulpine face has a happy expression and big, blue eyes that are more like living decals than real ones. Not bothering to dress beyond a pair of brightly colored sneakers she's found, she goes around nude. Her big breasts are buoyant and have ever-perky nipples. Her pussy's puffy, swollen lips are always wet with a slick sheen of her lube-like juices. She's got a puffed out, balloony fox tail with a nozzle tip on the end of it above her inflated and rounded ass.";


Section 2 - Conversation

Instead of conversing the Bubble:
	if HP of Bubble < 4 or HP of Bubble is 99 or HP of Bubble is 100: [Formerly just < 4, but expanded to include other possible errors]
		say "ERROR-Bubble-[HP of Bubble]C: Something funky's going on here. Please report this error on the forums or on the official FS Discord in sp-bug-reports";
	else if HP of Bubble is 4:
		say "     'This is such a fun place you've got here,' she giggles happily. There's lots of space[if the number of bunkered people + the number of booked people > 3], lots of new friends[end if] and plenty of interesting stuff to go see outside. Thanks for letting me stay here, cutie.' She gives you a kiss on the cheek while giving your ass a squeeze before bounding around happily, only the weight of her sneakers keeping her partly grounded.";
		now HP of Bubble is 5;
	else if HP of Bubble is 6 and a random chance of 1 in 3 succeeds:
		say "     'I've been having such a great time since I've come here. Playing [']High Dive['] is especially fun!' she says excitedly. Confused, you ask her what she's talking about and she just giggles. 'I'll show you. It's loads of fun!'";
		say "     Bending over to untie her sneakers, she ends up flashing you a fine view of her delectable pussy and bubble butt. 'I got these sneakers so I don't bounce around too much while I'm having fun,' she says with some clarity. 'But they'd mess things up now,' she adds with a giggle. After pulling them off, she snuggles her own tail and, pinching the air valve at its tip, takes a few quick breaths and blows into it. This causes her body to start to swell up, inflating herself until she's got a plump, rounded figure. Full of air, she bounds effortlessly to the balcony area overlooking the main floor and leaps right off. Crying out, you run to the balcony railing to see her floating down at a rather sedate speed while she giggles happily.";
		say "     Reaching the bottom, she bounces lightly off of the floor and rises back up several feet, rolling in mid-air as she does. 'Come on. You try it now,' she calls up merrily in mid-bounce. 'It's awesome!' Responding that you don't think that'd be such a good idea, you head over to take the stairs down, only to find her bounding buoyantly up them four or five steps at a time. Once she reaches the top, she dives right over the railing again, this time with a spin. She twirls down, bounces around, rushes back up and leaps off again repeatedly, getting seemingly endless amusement out of it.";
		now HP of Bubble is 7;
	else if HP of Bubble >= 7 and a random chance of 2 in HP of Bubble succeeds:
		say "     [one of]'I'm so super-stretchy now, even down in my pussy. I could probably fit anything I like in there.'[or]'I found a new friend out in the city. He was this big - wide!' she says, holding her paws over two feet apart. 'He was so surprised when I was able to take him no problem,' she giggles.[or]'I met a funny little doggy out in the city. We were playing and he pushed himself right into me. I was surprised, but it was loads of fun[if HP of Bubble is 7]. We should try it[end if].'[at random]";
	else:
		say "     [one of]'I think I'll go and see if I can meet up with one of those cute foxes out there. They have such a sexy sheen to their latex.'[or]'Thanks again for saving me. From what I saw of it, getting to me couldn't have been easy. And now we can have lots of fun together,' she giggles at the end, her bubbling joviality returning.[or]'I think I look really sexy now, don't you?' she asks, posing naughtily for you.[or]'I can do lots of fun stuff now that I'm a balloon. It's great.'[or]'I was so stressed before. So many worries and problems. All pointless stuff that was weighing me down. But now - Poof! - no room for them in my fun-loving bubble brain,' she giggles happily.[or][if skinname of player is listed in infections of Latexlist]'Your skin feels so nice like this,' she says, running her paws over your smooth hide.[else]'Mmm... I think you'd look pretty sexy with a nice latex coating,' she purrs, running a finger teasingly across your chest.[end if][or][if HP of Bubble is 6]Cuddling her own inflatable tail, she licks her tongue slowly around the air valve. 'The great thing about the new me is I can have any sexy figure I want. Or you want,' she adds coquettishly[else]She giggles vapidly and makes some air-headed comment[end if].[at random]";


Section 3 - Sexytimes

the fuckscene of Bubble is "[sexwithBubble]";

to say sexwithBubble:
	if lastfuck of Bubble - turns < 4:
		say "     You try to entice the bubble-headed vixen into more sex, but her attention keeps wandering. It looks like you'll have to wait a little while and try again later.";
	else if HP of Bubble is 4: [Previously 1, which was a mistake. See Section 9 below for full list of HP values and their meanings]
		say "     She seems mighty eager, but you do want to talk to her first.";
	else if player is neuter:
		say "     For now, there's nothing you can do with Bubble while you're genderless."; [***]
	else:
		say "[Bubblesex00]";


to say bubblesex00:
	say "     Running your eyes over Bubble's [if libido of Bubble is 0]lissome[else]plump[end if] figure, you find yourself becoming aroused. Deciding to have some erotic fun with her with the vixen who's essentially a living sex doll, only way better, you now have to decide how you'd like to enjoy her company. As you're mulling it over, you pull the inflatable fox woman into your arms and run your hands over her, delighting in her happy giggles.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "stuff her slick cunny";
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "stuff her [if libido of Bubble is 0]bubble butt[else]inflated ass[end if]";
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 3;
		now description entry is "have her suck you off";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 4;
		now description entry is "try that delightful tongue in your snatch";
[	choose a blank row in table of fucking options;
	now title entry is "Eat her out";
	now sortorder entry is 5;
	now description entry is "lick Bubble's snatch";]
[	if player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 6;
		now description entry is "69 with the inflatable vixen";]
[	choose a blank row in table of fucking options;
	now title entry is "Rim job";
	now sortorder entry is 7;
	now description entry is "have your ass licked";]
	if HP of Bubble >= 7:
		choose a blank row in table of fucking options;
		now title entry is "UB";
		now sortorder entry is 9;
		now description entry is "get stuffed inside the balloony vixen";
		choose a blank row in table of fucking options;
		if libido of Bubble is 0:
			now title entry is "Inflate her";
		else:
			now title entry is "Deflate her";
		now sortorder entry is 10;
		now description entry is "change her figure by [if libido of Bubble is 0]inflating[else]deflating[end if] her";
		choose a blank row in table of fucking options;
	if HP of Bubble >= 8 and bodyname of player is "Inflatable Vulpine" and player is pure:
		if infvulpstate <= 2:
			now title entry is "Be inflated";
		else:
			now title entry is "Be deflated";
		now sortorder entry is 11;
		now description entry is "change your figure by getting [if libido of Bubble is 0]inflated[else]deflated[end if]";
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
				else if nam is "Anal":
					say "[bubblesex02]";
				else if nam is "Blow job":
					say "[bubblesex03]";
				else if nam is "Get cunnilingus":
					say "[bubblesex04]";
				else if nam is "Eat her out":
					say "[bubblesex05]";
				else if nam is "69":
					say "[bubblesex06]";
				else if nam is "Rim job":
					say "[bubblesex07]";
				else if nam is "Inflate her":
					say "[bubblesex08]";
				else if nam is "Deflate her":
					say "[bubblesex09]";
				else if nam is "UB":
					say "[bubblesex10]";
				else if nam is "Be inflated":
					say "[bubblesex11]";
				else if nam is "Be deflated":
					say "[bubblesex12]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	if HP of Bubble is 5, now HP of Bubble is 6;
	now libido of player is ( ( libido of player * 2 ) + 50 ) / 3;
	now lastfuck of Bubble is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say bubblesex01:
	if libido of Bubble is 0:
		say "     In the mood to fuck the svelte vixen, you lift her up easily and line up your [cock of player] manhood to her slick pussy. Feeling your throbbing cock at her juicy folds, she murrs happily and wraps her arms and legs around you. Grabbing her bubble butt, you push her onto your rod, letting those lubricated latex walls slide slowly down your shaft. The feel of her around you is surprisingly good, her cunt clearly made for fucking. Made of animated plastics, it moves just like a real one, squeezing and tugging at your cock with all her wanton need[if cock length of player > 24]. Despite your impressive size, her elastic vagina spreads and stretches easily to accommodate your [cock size desc of player] penis[end if].";
		say "     Bouncing her lightweight body on your cock, you bury your face in her bosom, kissing across it. Finding your way to one of her nipples, you give it a few licks before sucking down on it. She releases a giggling moan and wraps her arms around your head, pressing your face firmly to her yielding, pillowy chest.";
		say "     'Oh yes! Oh yes! Just like that! Keep going... I'm about to pop!' she cries out, her cunt quivering around you rapidly. From that point, only a few last bounces are needed before she arches her back as she climaxes. Her lube-like juices soak your crotch as her stretchable cunny squeezes tightly around you, milking at your shaft until you cum. You can't help but groan as you release your [cum load size of player] load into her, painting her inner walls with your seed. Both spent and sated, at least for the moment, she disentangles herself from you and you slide her up and off your softening member. After licking you clean, her attention wavers and she bounds off to amuse herself elsewhere.";
	else:
		say "     In the mood to fuck the plump vixen, you lower her to the ground and move atop her. Lining up your [cock of player] manhood with her slick pussy, you take a moment to share a kiss with the inflatable vixen. Feeling your throbbing cock at her swollen and puffy folds, she murrs happily and wraps her arms around you and spreads her legs in anticipation. Pressing yourself down onto her padded body, you push your rod into her, letting those lubricated latex walls slide slowly over your shaft. The feel of her around you is surprisingly good, her cunt clearly made for fucking. Full of life despite being plastics, it moves just like a real one, squeezing and tugging at your cock with all her wanton need[if cock length of player > 24]. Despite your impressive size, her elastic vagina spreads and stretches easily to accommodate your [cock size desc of player] penis[end if].";
		say "     Cushioned by her padded body, you're supported easily by her inflatable form. Feeling her pressed beneath you, her buxom breasts rub against your [if breast size of player > 1]own[else]chest[end if]. Your weight doesn't seem to bother her, her balloon-like body simply compressing or swelling to accommodate your movements. Her embrace conforms to you, ensuring you are always comfortable as you rail into that juicy pussy of hers.";
		say "     'Oh yes! Oh yes! Harder! Faster! Pump that hot cunt full!' she cries out, her cunt quivering around you rapidly. From that point, only a few final thrusts are needed before she throws her head back as she climaxes. Her lube-like juices soak your crotch as her stretchable cunny squeezes tightly around you, milking at your shaft until you cum. Clutching her padded shoulders, you bury your face in her neck and paint her inner walls with your [cum load size of player] load. Both spent and sated, at least momentarily, you rest atop her for a while, sharing kisses with her while your shaft softens. After sliding out of her and sitting up, you're treated to her licking you clean before she goes off to find her next source of amusement.";

to say bubblesex02:
	say "     In the mood to fuck the [if libido of Bubble is 0]lithe vixen's bubble butt[else]plump vixen's well-rounded rear[end if] by the back door, you bend her over one of the tables. She giggles happily and raises her tail, giving a surprised meep as you finger her rubbery asshole instead of her dripping cunny. She doesn't shy away from it though, bouncing her hips and teasing that you're [one of]a dirty boy[or]a kinky guy[or]quite the perv[or]a horndog[in random order]. Feeling it relax and leak a little lube of its own, you know she's ready and you line your stiff cock with her anal ring.";
	say "     Pushing past that rubbery seal gains you entrance into a tight, clinging passage that grips your meat tightly. You take your time sliding into her at first, but soon find it easy to thrust hard and fast into her. With a tight grip on her [if libido of Bubble is 0]bubble butt[else]wide butt[end if], you drill into her again and again, enjoying the squeaking sounds of her happy yips and moans. Her inflatable fox tail swishes around excitedly, twitching and bouncing every time you bury yourself [if cockname of player is listed in infections of Internallist]fully[else]balls-deep[end if] into her ass.";
	say "     Feeling your climax coming quickly, you make a few last frantic thrusts before you can't hold back any longer. Driving yourself as deep as you can into her back passage, you unload your hot cum into her, splattering it across her inner walls. As your [cum load size of player] output sprays into her, her lower body trembles with delight, and you soon smell a fresh outpouring of her pussy juices in the air as she cums as well. Her latex anus and rectum ripple in time to her cunt's orgasmic reaction, milking you of the last few dribbles of your seed.";
	if libido of Bubble is 0:
		say "     Spent and sated, you pull your softening shaft from the gracile vixen's ass. Her asshole closes up snug as soon as you're out, keeping your load in. Aside from a sheen of slickness across it, you'd hardly be able to tell it was just fucked and filled, though the rivulets of femcum running from her dripping snatch are proof that she thoroughly enjoyed the assfucking. She giggles while you look her over, happy to put herself on sexual display for you. Eventually her attention wavers and she bounds off in search of some new form of amusement.";
	else:
		say "     Spent and sated, you flop down across her back, smooshing the well-padded vixen between you and the table a little. She releases a long, happy sigh that's also a bit of a squeak as you force a little of her excess air out. You rest atop her for a while, finding her cushioned form very comfortable. Once your shaft softens, you slide free of her asshole and the rim closes up snug again. After a while, she starts to grow bored of just laying there beneath you and starts to fidget. Getting up, you're given a quick kiss before she bounds off in search of something else to amuse her.";

to say bubblesex03:
	say "     Deciding you'd like a blow job, you gently lower Bubble to her knees and offer up your stiffening cock to her. Eyeing your [cock size desc of player] penis with obvious hunger, she runs her tongue across her muzzle before plunging her mouth right over it[if cock length of player > 24]. The inflatable vixen has no trouble with your [cock size desc of player] manhood, her mouth and throat stretching easily to accommodate it all[end if]. Once she's got that black decal patch of her nose buried in your crotch, she starts sucking down on your meat like a horny vacuum. Her tongue slides slickly across your shaft, exciting you further. As she works to suck you off, you rub your hands over her latex head. Her decal eyes look up at you and she grins at the corners of her mouth. Between the smile and the way she's fingering her [if libido of Bubble is 1]puffy-lipped [end if]pussy wildly, you can tell she's thoroughly enjoying herself.";
	say "     Proving herself to be part sexy vixen and part sex doll, that muzzle of hers feels great around your meat and drives you wild. From the way the [if libido of Bubble is 0]slender[else]plump[end if] fox girl is going to town on you, it isn't long before you're cumming. You shoot blast after blast of your hot seed down the [if libido of Bubble is 0]lithe[else]buxom[end if] inflatable's throat. She murrs happily at the taste and licks away the last few drops as you ease your spent shaft from her muzzle. She rubs her [if libido of Bubble is 0]smooth[else]rounded[end if] tummy, enjoying the feel of your gooey cum running along her inner skin and slowly being absorbed.";

to say bubblesex04:
	say "     Deciding to have the horny vixen eat you out, you prop up one leg on a nearby chair and motion for her to give your pussy a thorough tonguing. With a happy giggle, the [if libido of Bubble is 0]slender[else]plump[end if] inflatable presses her latex muzzle between your legs and, after nuzzling your thighs, starts licking your wet folds. Several licks in, her tongue plunges into your [cunt size desc of player] cunt. She eats you out with a lustful hunger, her tongue wriggling and squirming inside you. It slides around inside you and gradually feels like it's swelling up inside you. Your cunny quivers and drips with juices as her tongue probes deeper even as she starts fingering herself.";
	say "     As your excitement grows, you grab her head and press it to your crotch, grinding your hips against her inflatable muzzle. The wriggling of her tongue inside you and the soft caress of her latex lips against your folds have you panting and moaning. Eventually you can't hold back and pull her head in even harder, smooshing her flexible face against your quivering pussy as you cum hard. Your vagina squeezes down around that squirming latex flesh inside you and a gush of femcum flows across it. She continues to work her tongue around inside you as you're orgasming until finally your over-sensitive pussy can take no more. Pushing her muzzle back, her elongated tongue pops out of you. Having been stretched out and inflated into a tube balloon while inside you, it gradually shrinks back down to its regular size. Thinking nothing of this strange ability, she merrily licks her dripping chops and your crotch clean once it's gone down enough to use again. Playtime over, something else catches her interest and she wanders off with a happy giggle.";

to say bubblesex05:		[***]
	say "***Eat her out";

to say bubblesex06:		[***]
	say "***69";

to say bubblesex07:		[***]
	say "***Rim job";

to say bubblesex08:
	say "     Deciding you'd like to see her with a fuller, more inflated figure, you run your hands over her tail. When you brush your fingertips across the air valve at its tip, she murrs and gives a soft shiver of delight. Moving eagerly onto all fours, she raises her tail and ass in the air, putting herself on display for you as you ready to blow her up. Taking a deep breath and opening the valve, you press your lips around it and blow hard. You can feel her tail swell up a little and she gives a happy moan as hot juices run down her legs. It seems this is quite the turn on for the inflatable vixen.";
	if player is male:
		say "     With the sight of her juicy pussy right there, you move overtop of her and sink your [cock size desc of player] cock into her stretchy cunt. With your arms around her tail, you keep blowing more air into it and pushing it onwards into her body. She pushes back into your thrusts, moaning for you to pump her harder. Whether that's fucking her or inflating her doesn't matter to you, as you're very eager for both. As you continue pounding away at her, every heavy breath you release makes her swell a little bigger. Her ass grows wide and round, her belly curvy and huggable, her breasts big and balloony.";
		say "     By the time she's a buxom, rounded vixen, she's crying out in orgasmic delight. With her latex cunny squeezing and quivering around you, you can't take any more and end up cumming as well. As the last few shots of your [cum load size of player] load paints her insides, you pinch off the air nozzle and seal it up before any air can leak out. After you pull out, she turns around and licks your cock clean before jumping to her feet so she can look over her new, rounded figure. 'Ooo! Now there's more of me to love,' she giggles, giving you a big hug and a sloppy kiss before bounding off to [if the number of booked people + the number of bunkered people > 2]show the others[else]have some fun[end if].";
	else:
		say "     Wanting to feel her swelling up beneath you, you move top her, pressing her tail lightly between you both. With it held snug and her air nozzle still in your mouth, you're able to keep blowing into her while your arms hug her. Despite only being latex and air now, she's able to support your weight. This leaves you free to run your hands over her vulpine body, fondle her breasts and diddle her pussy. She moans happily at all this, urging you to pump her harder. Whether that's the fingers you're thrusting into her sopping wet cunt or the inflation doesn't matter to you, as you're eager for both. As you continue, every heavy breath you release makes her swell a little bigger. Her ass grows wide and round, her belly curvy and huggable, her breasts big and balloony.";
		say "     By the time she's a buxom, rounded vixen, she's crying out in orgasmic delight. With her latex cunny squeezing and quivering around your fingers, you push a few final big lungfuls of air into her. Panting and feeling a little woozy from your efforts, you pinch off the air nozzle and seal it up before any air can leak out. After you slide your fingers free and stand back up, she [if player is female]turns around and licks your pussy to a dizzying orgasm of your own[else if anallevel is 3]moves behind you and kneels down to sweep her tongue across your anal rim, pleasuring your sexless form[else]turns around and gives your bare crotch a thorough licking in return[end if]. She then jumps to her feet so she can look over her new, rounded figure. 'Ooo! Now there's more of me to love,' she giggles, giving you a big hug and a sloppy kiss before bounding off to [if the number of booked people + the number of bunkered people > 2]show the others[else]have some fun[end if].";
	now libido of Bubble is 1;

to say bubblesex09:
	say "     Deciding to let some of her air out and bring back her slender figure, you run your hands over her tail. When you brush your fingertips across the air valve at its tip, she murrs and gives a soft shiver of delight. Moving eagerly onto all fours, she raises her tail and ass in the air, putting herself on display for you as you ready to release some of her excess air. After giving the valve a teasing lick, you open it and start letting the air out. It comes out slowly, requiring you to squeeze her body or tail to breach the seal. She gives a contented sigh as the pressure's released and you spot hot juices running down her legs. It seems this is quite pleasurable for inflatable vixen as well.";
	if player is male:
		say "     With the sight of her juicy pussy right there, you move overtop of her and sink your [cock size desc of player] cock into her stretchy cunt. Putting your arms around her rounded figure, you start squeezing the air out of her even as you add additional pressure by pushing your hips to her plump ass. She pushes back into your thrusts with moans of 'Harder'. Whether that's for you to squeeze her harder or to fuck her harder matters little to you, as you're eager to do both. As you continue pounding away at her, you press a little more of the excess air out of the voluptuous vulpine. Over time, her ass returns to a cute bubble butt, her belly slims down and her breasts go back to being perky globes.";
		say "     By the time she's a slender vixen with the body of a pin-up model, she's crying out in orgasmic delight. With her latex cunny squeezing and quivering around you, you can't take any more and end up cumming as well. As the last few shots of your [cum load size of player] load paints her insides, you pinch off the air nozzle and seal it up before she accidentally deflates too much. After you pull out, she turns around and licks your cock clean before jumping to her feet so she can look over her restored, slender figure. 'Ooo! Don't I look sexy,' she giggles, giving you a big hug and a sloppy kiss before bounding off to [if the number of booked people + the number of bunkered people > 2]show the others[else]have some fun[end if].";
	else:
		say "     To help her along, as well as feel her changing beneath you, you move atop her, pressing her tail lightly between you both. By running your hands over her delectable body and squeezing in the right places, you're able to guide the excess air into her tail so it can be forced out with a little pressure. When not refilling her tail, your roaming hands caress her vulpine body, fondle her breasts and diddle her pussy. Your teasing ministrations soon have the vixen moaning happily for 'More'. Whether that's the pleasure she feels from being deflated or carnal need doesn't matter to you, as you're eager to please her in any way you can. As you play with her, you continue to press more and more of the excess air out of the voluptuous vulpine. Over time, her ass returns to a cute bubble butt, her belly slims down and her breasts go back to being perky globes.";
		say "     By the time she's a slender vixen with the body of a pin-up model, she's crying out in orgasmic delight. With her latex cunny squeezing and quivering around your fingers, you squeeze out the last of her excess air from her tailtip valve. You pinch off the air nozzle and seal it up before she accidentally deflates too much. After you slide your fingers free and stand back up, she [if player is female]turns around and licks your pussy to a dizzying orgasm of your own[else if anallevel is 3]moves behind you and kneels down to sweep her tongue across your anal rim, pleasuring your sexless form[else]turns around and gives your bare crotch a thorough licking in return[end if]. She then jumps to her feet so she can look over her restored, slender figure. 'Ooo! Don't I look sexy,' she giggles, giving you a big hug and a sloppy kiss before bounding off to [if the number of booked people + the number of bunkered people > 2]show the others[else]have some fun[end if].";
	now libido of Bubble is 0;

to say bubblesex10:
	if HP of Bubble is 7:
		say "     Getting the bubbly vixen to lay down, you start by fingering her pussy. Her stretchy folds spread around your digits and her lubricating juices flow. Working them in deeper and adding another digit, you stretch her open further, coaxing moans and giggles of delight from the air-headed cutie. Deciding to see just how much she can take, you work your whole hand into her, resulting in a happy yip for more. Licking her pussy and clit, you slide in finger after finger from your other hand until it's pulled in as well.";
		say "     Before you even realize it, your hands are no longer sliding back when you pull and instead are just slipping further and further into her. You're already in up past your elbows by the time you start to notice this, at which point your face is pressed to those quivering folds. You release a cry of surprise that's wetly muffled by the slurp of her juicy pussy spreading wider as your head gets pulled in with a sudden orgasm from the balloon girl.";
	else:
		say "     Feeling drawn to the bubbly vixen's pussy, you start fingering her in an attempt to stretch her open. As her folds expand and swell wider, you press your face to them. You lick up her lubricating juices and kiss at her clit before using both hands to stretch her open even further. She releases a shuddering moan and yips in delight. Perhaps knowing what you want, she presses her padded paws to the back of your head and helps push it right into her vagina, followed by the hands helping to hold her open. Her vaginal walls squeeze and pull around you gently but inexorably, once again pulling you inch after inch into her. You lick across her inner walls and wiggle your fingers teasingly along them as you slide deeper, much to her delight.";
	say "     Her rubbery vaginal walls ripple and squeeze around your [bodytype of player] body as you're drawn further and further into her [if libido of Bubble is 0]slender but stretched[else]rounded and increasingly stuffed[end if] belly as room is made to accommodate you. Awash in her juices and the rubbery scent of her insides, you become more and more aroused, hardly resisting and more just squirming around for your mutual delight. You find yourself [if HP of Bubble is 8]once again slipping into that[else]slipping into an[end if] inflating chamber inside her, a balloon within the balloon. This womb forms for you as first your hands and then your arms are moved into it, followed by the rest of you as the process progresses. In the end, you end up bundled up in this snug, padded chamber.";
	say "     There's a dim orange glow from the light passing through her latex walls to provide a little illumination. You find it very peaceful and very arousing in this snug bundle inside her. You've been masturbating furiously from the moment your crotch slid past the tight, rubbery ring of her cervix and your hands have been able to [if player is male]grab your throbbing cock. You stroke your [cock of player] shaft, erect from the squeezing passage and slick with her juices, until you cum messily across yourself. After adding your semen to the slick mess inside her steamy, musky womb[else if player is female]stuff your juicy pussy. You finger yourself energetically, your cunny dripping with arousal from the squeezing passage into her, until you soak your hands with your femcum. After adding your hot juices to the slick mess inside her steamy, musky womb[else]your bare crotch. You rub your genderless groin and finger your anus in search of stimulation, using the vixen's slick juices as lubrication, until you have a shuddering, unfocused release. After this unsatisfying orgasm[end if], you drift off into a lustful slumber filled with erotic dreams while the inflatable vixen rubs her rounded belly.";
	say "     When you begin to awaken, your thoughts are hazy and you don't quite realize what's happening at first. You simply move on instinct, squirming inside the inflated chamber around you as you're slowly pushed from it. You are squeezed through a slick passage that feels delightful across your skin and exit out onto the cool tile floor of the library. You and Bubble moan and yip in delight as you're gradually pushed free of her inflatable body. You masturbate again even as your legs are still being pushed out of the inflatable vixen while she watches. You both end up cumming roughly at the same time you fully slide free of her. She cuddles you in her arms, cooing happily and sharing numerous kisses with you. Your thoughts remain empty for some time, thinking of nothing more than being happily snuggled up with your inflatable lover.";
	if HP of Bubble is 7, now HP of Bubble is 8;
	if libido of Bubble is 0:
		if infvulpstate is 0 or infvulpstate is 3, now infvulpstate is 1; [slender mode]
	else:
		if infvulpstate is 0 or infvulpstate is 1, now infvulpstate is 3; [plump mode]
	now researchbypass is 1;
	infect "Inflatable Vulpine";
	infect "Inflatable Vulpine";
	now researchbypass is 0;

to say bubblesex11:
	say "     Feeling you might prefer a fuller, more inflated figure, you pass your balloony tail to the sexy vixen and ask her to help blow you up. A shiver of delight runs through you as she fingers the air valve at the tip. You stretch out on your back, smiling up at her as she gets ready, puffing herself up with some quick breaths. When she wraps her lips around the valve and blows a big puff of vixen-scented air into you, you moan loudly and shiver again. After a few more of these, you're panting with arousal as your latex stretches with the added gas filling you.";
	say "     As she continues to blow you up, you make a show of rubbing your balloony body, both to turn her on and to help distribute the air being blown into you[if player is male]. Your balloony cock swells up to erection as well under the increased pressure inside you. Wrapping a padded paw around it, you start stroking yourself in the aim of relieving a bit of that pressure. As you pump and stroke yourself, lube-like precum dribbles from your inflated penis. After a few last breaths blown into you and a firm squeeze on your shaft, you cry out in orgasmic relief, cumming across your bulging belly in delight[else if player is female]. The puffy lips of your balloony pussy quiver and drip with juices as well under the increased pressure inside you. Stuffing a few fingers into it, you start frigging yourself in the aim of relieving a bit of the pressure. As you pump and rub your fingers into yourself, lube-like juices seep from your quivering cunny. After a few last breaths blown into you and a rapid pumping into your latex cunt, you cry out in orgasmic relief, soaking your plump, rounded thighs with your feminine juices[else]. The whole of your body grows rounder and fuller as your belly inflates, your thighs and ass plump out, and you overall get fatter. Gaining no weight from this since it's just air, you're still delightfully light while being huggably pudgy[end if][if breast size of player > 0]. Your breasts are also fuller, ballooning outwards with buoyant growth[end if]. 'Ooo! You look so cute and huggable now,' she says with a woozy giggle, lightheaded after the effort of blowing you up. Flopping against you for support as you sit up, the [if libido of Bubble is 0]slender[else]plump[end if] vixen fingers herself to a yipping orgasm.";
	increase cock length of player by cock length of player / 4;
	increase cock width of player by cock width of player / 4;
	if breast size of player > 0:
		increase breast size of player by breast size of player / 6;
		increase breast size of player by 1;
	now infvulpstate is 4;

to say bubblesex12:
	say "     In the mood to let out some air and bring back your slender figure, you pass your balloony tail to the sexy vixen and ask her to help you let some air out. She smiles happily and gives the air valve at its tip a slow lick. Opening it, she gives your tail a light squeeze, letting a little air out. This sends a shiver of delight through you and makes you weak in the knees. Feeling uncontrollably aroused, you lay back on the floor and rub your paws over yourself to push more air into your deflating tail. The giggling vixen moves atop you, pressing herself down onto you even as she squeezes your balloony tail to encourage more air to exit. It is a strangely pleasurable, even erotic sensation as the air is pushed out.";
	if player is male:
		say "     Bubble grinds her [if libido of Bubble is 0]bubble[else]padded[end if] rear over your [cock size desc of player] cock, which is fully inflated with arousal. She sinks her slick cunny down overtop of it with a moan of delight. Now riding your inflatable prick, each time she presses down to push air back into your tail, she's also stuffing your twitching rod into her pussy. In a delightfully slow process, your excess air is worked out of your [if player is female]voluptuous[else]plump[end if] body and into your tail before being squeezed out the valve at its tip. Each time this is done is like a mini-orgasm that has you moaning in pleasure.";
		say "     With both of you squeezing your body and rubbing your oversensitive latex hide, you're gradually deflated. Your ass returns to a cute bubble butt and your belly slims down[if breast size of player > 1]. The extra buoyancy in your breasts is also removed through a lot of playful rubbing, squeezing and licking of them[end if]. By the time your [if player is female]hourglass figure[else]slender physique[end if] is restored, you're crying out in orgasmic release, letting go of that last bit of excess pressure inside you as you fire your [cum load size of player] load into the horny vixen riding you. Crying out with her own release, she sags down atop your form, pressing your tail between the two of you. This forces out the last of the excess gas still within you. 'Ooo! Don't you look sexy now,' she says before licking your air nozzle and closing it up for you.";
	else:
		say "     Bubble presses her [if libido of Bubble is 0]lithe[else]chubby[end if] figure overtop of you, squeezing your tail between the two of you. This rests your sensitive tail between those [if libido of Bubble is 0]perky[else]luscious[end if] breasts of hers. You can feel her hot juices dripping down onto your crotch, letting you know that the vixen's clearly finding this very arousing as well. The two of you work your hands over your rounded body, working to push the excess air into your tail to then be squeezed out. Each time this is done is like a mini-orgasm that has you moaning in pleasure[if player is female]. Mixed in with this is a lot of fondling and teasing of your trembling cunny[end if].";
		say "     With both of you squeezing your body and rubbing your oversensitive latex hide, you're gradually deflated. Your ass returns to a cute bubble butt and your belly slims down[if breast size of player > 1]. The extra buoyancy in your breasts is also removed through a lot of playful rubbing, squeezing and licking of them[end if]. By the time your [if player is female]hourglass figure[else]slender physique[end if] is restored, you're crying out in [if player is female]orgasmic release, feeling the last of the over-inflation passing from your body into your tail even as your cunt spasms in delight[else]unfocused release, feeling the last of the over-inflation passing from your body into your tail[end if]. Crying out with her own release, she sags down atop out, pressing your tail between the two of you. This forces out the last of the excess gas still in it. 'Ooo! Don't you look sexy now,' she says before licking your air nozzle and closing it up for you.";
	decrease cock length of player by cock length of player / 5;
	decrease cock width of player by cock width of player / 5;
	if breast size of player > 1:
		decrease breast size of player by 1;
		decrease breast size of player by breast size of player / 7;
	now infvulpstate is 2;


Section 9 - Information

[ HP of Bubble           ]
[ 0 = not started        ]
[ 1 = Bouncy Castle open ]
[ 2 = Arrive at BC       ]
[ 3 = released           ]
[ 4 = brought home       ]
[ 5 = talked             ]
[ 6 = had sex            ]
[ 7 = High Dive scene    ]
[ 8 = Did UB on player   ]
[                        ]
[ 99 = too late @ BC     ]
[ 100 = too late         ]

[ libido of Bubble        ]
[ 0 = slender (deflated)  ]
[ 1 = plump (inflated)    ]

[ infvulpstate            ]
[ 0 = unset (deflated)    ]
[ 1 = deflated (set)      ]
[ 2 = deflated (locked)   ]
[ 3 = inflated (set)      ]
[ 4 = inflated (locked)   ]

[ word lists:

slender, lithe, lissome, gracile, svelte, skinny...
plump, rounded, full-figured, zaftig, chubby, busty, tubby, plumpish, pudgy/podgy...]

Bubble ends here.
