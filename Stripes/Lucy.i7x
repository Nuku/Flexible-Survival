Version 1 of Lucy by Stripes begins here.
[Version 1.2 - Skunkbeast Lord special fucking scene]
"Adds a Mallrat NPC named Lucy to the Flexible Survival game."

Section 1 - Introductions

instead of going to Mall FoodCourt while ( HP of Ronda is 10 and HP of Lucy is 0 ):
	if ( bodyname of player is "Slut Rat" or facename of player is "Slut Rat" or skinname of player is "Slut Rat" or cockname of player is "Slut Rat" or tailname of player is "Slut Rat" ):
		move player to Mall FoodCourt;
		if lastfuck of Lucy - turns >= 8:
			say "     Rod comes up to talk to you, but keeps a little distance to be on the safe side. 'There's something I've been wanting to talk to you about, but you'd best completely get rid of that tainted rat infection beforehand.'";
			now lastfuck of Lucy is turns;
	else:
		move player to Mall FoodCourt;
		say "     As you come into the food court, you are spotted by Rod, who comes over to you. The rat guy is clearly excited about something. 'Yo! I got some good news. Now Ronda and I were like trying to come up with a way to thank you for the save, so we decided to do you a solid.' He takes your hand in his ratty paw, pulling you over to the atrium and to Ronda. He rushes you over to her.";
		move player to Mall Atrium;
		say "     'Now, like I was saying, Ronda and I were thinking that it was kind of a bummer that you don't have a pretty rat of your very own to snuggle up to, so we found a sweet girl for you.' You are surprised by this sudden turn of events and try to derail the matchmakers, but Rod just continues. 'Now, now... we're knowing you're still like checking out the city right now and don't want to be tied down, but that's cool. She's lookin['] for a low-commitment relationship, if you get my drift,' he says with a grin. 'And if you're worried about getting infected out there and changing genders and stuff, don't worry [']bout it. She's cool with playin['] with girls or guys, so no worries on that score. You two'll work out fine. Ain't that right, Ronda?'";
		say "     Turning to Ronda you can see that she's not quite as enthused about this plan as Rod is, but is clearly going along with it. 'Yeah, she's been asking about you and given your... uhh... wandering habits, she'd be open for you just dropping by when you can. Most of the other girls here would want a proper relationship.'";
		say "     Still unsure about this whole thing, you try to speak up, but Rod cuts you off again. 'Now, no need to thank us. We're glad to help you out. Look, here she is now,' he says pointing over to a mall rat girl coming over as she finishes straightening her fur. You suspect she was taking a moment to get prettied up before coming over. 'We should properly introduce to you. This here is Lucy and she's looking to get to know you better. Now we'll let you two have fun,' Rod says as he and Ronda scurry off.";
		WaitLineBreak;
		say "     Lucy's rather pretty as mall rats go. Her fur's a soft brown in color and well-groomed. Her trendy clothes have been chosen with care to accentuate her sexy body. She has a nice rack that's only partly covered by her red tube top with her waist exposed. She's got several hoop earrings as well as a navel piercing shown on her exposed midriff. She wears a black miniskirt with some ornamental chains and sparkles on it. The skirt is snug and clings to her curvy hips, showing off her sexy ass. She has several shiny bracelets and anklets on as well.";
		say "     Lucy's the first one to speak up. 'So, Ronda and Rod've been telling us about how you helped save her from those crazy rats down in the sewers. A brave [if player is female]girl[else]guy[end if] like you might make a nice change from the rats around here. Besides, most of the guys here've already got girls of their own. Now, since you're not going to be around all the time, I figure we can just have some kind of open relationship and that'd be more my speed,' she says, running a paw over your chest. 'We can just play around from time to time when you stop by. I do hope you'll come by often though. You're pretty cute.'";
		now HP of Lucy is 1;
		now lastfuck of Lucy is 255;
		move Lucy to Mall Atrium;


Section 2 - Lucy

Table of GameCharacterIDs (continued)
object	name
Lucy	"Lucy"

Lucy is a woman.
The description of Lucy is "[lucydesc]".
The conversation of Lucy is { "Hey baby!" }.

the scent of Lucy is "The rat girl smells of perfume and nail polish.".

to say lucydesc:
	let dayturn be turns divided by 8;
	let lucyoutfit be the remainder after dividing dayturn by 3;
	if lucyoutfit < 0, increase lucyoutfit by 3;
	say "     Lucy's rather pretty as mall rats go. She's probably one of the sexiest of the bunch and she clearly knows it. She keeps her soft brown fur well-groomed and her trendy clothes have been chosen with care to accentuate her sexy body. She has a nice rack that[if lucyoutfit is 0][']s only partly covered by her red tube top with her waist exposed[else if lucyoutfit is 1] stretches out the cut-off t-shirt she's wearing. The black top has a red heart with a white skull inside that nestled between her breasts[else] is loosely covered by a pink tube top with [']Let's play!['] printed on it in red[end if]. She's got several hoop earrings hanging from her large, round ears. She also has a navel piercing that shows on her exposed midriff. She wears a [if lucyoutfit is 0]black miniskirt with some ornamental chains and sparkles on it. The skirt is snug and clings to her curvy hips, showing off her sexy ass[else if lucyoutfit is 1]matching red shorts with a skull on its right pocket and silver studs along the cuffs[else]pink miniskirt with red trim to match her top[end if]. It has a hole in the back for her long, rat tail to emerge from. Her claws are painted a [if lucyoutfit is 0]sparkly red[else if lucyoutfit is 1]glossy black[else]bubblegum pink[end if] and she wears several shiny bracelets and anklets[if HP of Lucy >= 2]. Looking at her, you can't help but feel some fondness for your lusty girlfriend[end if].";


Instead of conversing the Lucy:
	if HP of Lucy is 0:
		say "ERROR-Lucy-0T: You should not be able to talk to me yet!";
	else if bodyname of player is "Slut Rat" or facename of player is "Slut Rat" or skinname of player is "Slut Rat" or cockname of player is "Slut Rat" or tailname of player is "Slut Rat":
		say "     You'd best ditch that twitched rat infection if you want to come near me. I'm not risking becoming some sewer dweller.";
	else if HP of Lucy is 1:
		say "     [one of]'What do you think of my outfit?' she asks.[or]'What do you find so interesting about running around out in the city when you've got such a great mall right here?' she wonders.[or]'You and I should go off and have a little fun.'[at random]";
	else if HP of Lucy is 2 or HP of Lucy is 3:
		say "     [one of]'What do you think of today's outfit?' she asks while making a sexy pose.[or]'What do you find so interesting about running around out in the city when you've got such a great mall right here?' she complains.[or][if lastfuck of Lucy - turns >= 6]'You and I should go off somewhere to have some fun again soon,' [else]'I'm looking forward to the next time we can get a chance to have some fun together,' [end if]she says with a swish of her long tail.[or][if the player is mallratbodied or the player is mallratfaced]'Like, you make for a sexy rat. I hope you'll settle down here so I can see more of you,' she says with a sexy smile.[else]'I think you'd make a fine rat if you ever want to settle down. All the dudes here would be so jealous of you for having me as your hot girlfriend. I know the girls are totally getting jealous that I snagged a hot guy like you.'[end if][or]'I think some of the girls are totally hoping I'll like leave their boys alone now that I got a [if the player is mallratbodied or the player is mallratfaced]rat[else]boyfriend[end if] of my own, but that's totally why we've got this open relationship, isn't it sweetie?' she says with a playful grin.[at random]";


Section 3 - Sexy Times

the fuckscene of Lucy is "[sexwithLucy]".

to say sexwithLucy:
	if lastfuck of Lucy - turns < 6:
		say "     'We just had some fun a little while ago. I know you can't keep your paws off your sexy girl, but [one of]I've other commitments, sweetums.'[or]I promised I'd... help Ronda with her nails.'[or]one of the cute guys broke up with his girl again and I want to see if I can console him,' she says with a wink.[purely at random]";
	else if player is neuter:
		say "     Realizing that you're ill-equipped to play with your rat girlfriend, you find yourself wanting to rush off to find a means to correct that so you can have some fun with the sexy mall rat.";
	else if bodyname of player is "Slut Rat" or facename of player is "Slut Rat" or skinname of player is "Slut Rat" or cockname of player is "Slut Rat" or tailname of player is "Slut Rat":
		say "     'You'd best ditch that twisted rat infection if you want to come near me. I'm not risking becoming some stinky sewer dweller.'";
	else if HP of Lucy is 1:
		say "     Deciding to at least play along to placate Rod and Ronda (and get a little extra tail), you suggest to Lucy that you both head off somewhere for some fun. Lucy grins at your offer and grabs your hand in hers, leading you off to a small nail salon. After putting up an [']Away for an hour['] sign she leads you to the back. 'This is my place. I do the nails for the girls when they need a touch-up. Leaves me plenty of time to do what I like. And who I like,' she quips with a grin, licking and nibbling along your neck. 'Let's see what you've got under the hood,' she adds, running her paws over you, slipping off your clothes and gear while you help her undress.";
		say "     The rat girl is quite lovely, with perky breasts with large, round nipples, a slender waist and a tight, squeezable ass. Her sexy figure excites you, as does the playful touches of her nimble paws. As you pull her close, she slides a paw between your legs to caress your genitals[if cock length of player > 10 or cock width of player > 12 or cunt length of player > 10 or cunt width of player > 10]. 'Mmm... jackpot...' she moans, clearly pleased as she gropes your enlarged loins. Feeling quite pleased, you find yourself wanting to do your best to make love to her to show her you know how to use it as well and win her affections[else if cock length of player > 5 or cock width of player > 5 or cunt length of player > 5 or cunt width of player > 5]. 'Mmm... not bad...' she says as she fondles your loins. Feeling you need more to impress her, you find yourself wanting to do your best to make love to her to win the affections of your new girlfriend[else]. 'Oh well... I guess it'll have to do,' she says, clearly a little disappointed with the size of your loins. Blushing a little, you find yourself wanting to do your best to make love to her to win her affections so you can keep her as your girlfriend[end if].";
		say "     Deciding to start by pleasuring her, you nuzzle down her neck, kissing and nibbling as you go until you reach her lovely bosom. There you start kissing her breasts and sucking at her nipples, drawing out soft squeaks and moans of pleasure. While doing this, your hands continue lower, stroking her sexy bottom, tailbase and thighs before sliding between her legs to run your fingers over her wet pussy. She's quite wet and juicy, showing that you've already gotten her quite excited. You slip a pair of fingers into her slick cunt and finger-fuck her, working to learn all the sensitive spots to please your new girlfriend. She strokes her paws along your back and head, clutching you tightly as you rub her clit. 'Oh baby. That's nice. Most of the other boys want to skip right to the fucking. Though... mmm... I'm going to need that fucking soon if you keep that up,' she adds as her pussy quivers around your fingers. Feeling quite pleased by your prospects, you decide to lower yourself further, nuzzling downwards. You give a lick over her navel piercing as you pass it on your way between her thighs. With your face between her legs, you start licking at her pussy and clit while you finger her. 'Oh baby! Yes! Right there, sweetie,' she moans throatily as her hips quiver moments before her orgasm and hot juices flow out across your face.";
		if player is male:
			say "     As her orgasm subsides, you are pulled down onto a pile of blankets and clothes by the rat girl - her impromptu nest, it seems. She kisses you passionately and grinds her hips against yours, moaning and panting with the last few spasms of her orgasm. 'Oh, I can tell we're going to have lots of fun together,' she says with a grin even as she grabs your cock, lining it up with her pussy. Needing no more invitation, you thrust into her and start fucking your lustful girlfriend. Clearly having had a lot of experience, the rat girl's hips move in time with yours, her inner walls squeezing and tugging at your thrusting cock to make fucking the sexy rat feel even better. You roll around together on the rat's nest, switching positions a few times as you make love to her. Feeling very lucky for having gotten such a sexy and talented girlfriend, you give her another kiss and continue thrusting until you both cry out in orgasm as you blast your hot load into her spasming pussy. Once spent, you snuggle with your new girlfriend for a while, sharing kisses and caresses before finally parting.";
		else:
			say "     As her orgasm subsides, you are pulled down onto a pile of blankets and clothes by the rat girl - her impromptu nest, it seems. She kisses you passionately and grinds her hips against yours, moaning and panting with the last few spasms of her orgasm. 'Oh, I can tell we're going to have lots of fun together,' she says with a grin even as she bends her flexible body to grind her soaked pussy down onto yours. 'Now to return the favor,' she says with a smile, giving you another quick kiss before moving to bury her head between your thighs this time and start licking at your cunt. The fact that she's wet with her juices as well as yours doesn't seem to bother her at all. If anything, it only excites her more, with her tongue zealously lapping at your juicy folds and across your clit. Clearly having had a lot of experience, the rat girl's muzzle and tongue move artfully across your sensitive petals and clit, shifting her tonguework to make you more and more excited. Feeling very lucky for having gotten such a sexy and talented girlfriend, you stroke her headfur and ears, telling her how hot she is and how much you're loving that tongue of hers. When she finally buries her muzzle at your crotch and dives her tongue in deep, you are so worked up you have a loud and crashing orgasm that sends your hot juices flowing over your sexy girlfriend's tongue to be lapped up. You can hear her moaning and cumming as well, a paw buried between her own legs pushing her over the edge. Once spent, you snuggle with your new girlfriend for a while, sharing kisses and caresses before finally parting.";
		infect "Mall Rat";
		now lastfuck of Lucy is turns;
		now HP of Lucy is 2;
		now Memories of the Mall is active;
	else:
		say "     Lucy grins at your offer and grabs your hand in hers, leading you off to her nail salon, putting up the away sign and takes you into the back to her little love nest. She churrs and runs her paws over your [bodydesc of player] body, slipping off your clothes slowly as she licks, kisses or nibbles at each newly-exposed area of your [bodytype of player] form. This gives you moment to decide what fun you'd like to have with your ratty girlfriend this time.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Lucy";
			now sortorder entry is 1;
			now description entry is "Have sex with your sexy rat girlfriend.";
			if bodyname of player is "Skunkbeast Lord" and the player is pure:
				choose a blank row in table of fucking options;
				now title entry is "Skunkbeast fucking";
				now sortorder entry is 2;
				now description entry is "Show your ratty girlfriend a bit of your wild side.";
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Blow job";
			now sortorder entry is 3;
			now description entry is "Let Lucy give you a blow job.";
		choose a blank row in table of fucking options;
		now title entry is "Lick Lucy";
		now sortorder entry is 4;
		now description entry is "Eat out your rat girlfriend.";
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 5;
		now description entry is "Share a 69 with the sexy rat girl.";
		if player is female:
			choose a blank row in table of fucking options;
			now title entry is "Tail fun";
			now sortorder entry is 6;
			now description entry is "Let Lucy put her tail to work.";
		if player is male and HP of Lucy >= 3:
			choose a blank row in table of fucking options;
			now title entry is "Anal";
			now sortorder entry is 7;
			now description entry is "Take Lucy by the back door.";
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Pick the corresponding number> [run paragraph on]";
		while sextablerun is 0:
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck Lucy":
						say "[lucysex1]";
					else if nam is "Blow job":
						say "[lucysex2]";
					else if nam is "Lick Lucy":
						say "[lucysex3]";
					else if nam is "69":
						say "[lucysex4]";
					else if nam is "Tail fun":
						say "[lucysex5]";
					else if nam is "Anal":
						say "[lucysex6]";
					else if nam is "Skunkbeast fucking":
						say "[lucysex7]";
					infect "Mall Rat";
					wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say lucysex1:
	if the remainder after dividing libido of Lucy by 3 is 0 and bodyname of player is not listed in infections of Taurlist:
		say "     Feeling in the mood to screw the sexy rat girl, you push her down onto the nest, running your hands along her sides as you snuggle up to her. She runs her nimble paws over your [bodytype of player] body and has you roll onto your back. She leans overtop you and gives you a wild kiss as she moves atop you. She grinds her hips down over yours, causing your [cock size desc of player] [cock of player] cock to twitch in anticipation. With a graceful shift of her hips forward and then back, she gets your glans lined up with her wet folds and pushes herself slowly down onto you, causing you both to moan into the kiss.";
		say "     As she rides your hard rod, she switches from kissing you to nuzzling and nibbling at your neck and shoulder. Your hands meanwhile move to [one of]her breasts to stroke those softly-furred globes and rub her perky nipples[or]her ass, squeezing her rear and scritching the base of her tail[purely at random], much to your girlfriend's delight. The scent and sounds of rat lust grows stronger, exciting your senses and driving you to thrust up into her as she rides you until you finally cum hard, blasting your hot load into her [if cock length of player > 20]over-stuffed [else if cock length of player > 12]stuffed [end if]cunt, sending her over the edge into orgasm as well[if cock width of player > 24]. Your enlarged balls empty their large load into your sexy girl, stuffing her belly enough that your cum leaves her slender belly visibly rounded. After she slides off your spent shaft, she snuggles up beside you, rubbing this bulge with a contented smile. 'Mmm, what a stud,' she moans[else]. Your balls empty their load into your sexy girl as you kiss and lick at one another. After she slides off your spent shaft and snuggles up beside you, she smiles contentedly and strokes her tummy. 'Mmm, that was great, loverboy,' she moans[end if]. After some more snuggling and kissing (as well as some licking to get you [']cleaned up[']), you head back out into the mall together.";
	else if the remainder after dividing libido of Lucy by 3 is 1 and bodyname of player is not listed in infections of Taurlist:
		say "     Feeling in the mood to screw the sexy rat girl, you pull her down into the nest atop you. You run your hands over her sexy body while she strokes your cock to full hardness. Once she's gotten you ready, she has you roll onto your back and she straddles your hips sideways. With her right leg going across your right hip and against your side, she gets her other leg tucked under your other leg. Glancing back at you, she lowers herself into position, sinking herself slowly down onto your [cock size desc of player] [cock of player] shaft. She grins down at you as she pushes down a little further, clearly enjoying this exotic position.";
		say "     With her straddling your hips, she gets to set the pace as she begins to ride your [cock size desc of player] cock while you get a fine view of her sexy profile as she does. Raising your hand puts it on her lovely bottom, letting you rub her tail and beautiful ass while she rides you[if anallevel is 3]. You slip your hand under that tail and start teasing her tailhole, slipping a pair of fingers into it as she moans in delight[end if]. Raising your right leg, your inner thigh rubs against her [if cock length of player > 20]over-stuffed [else if cock length of player > 12]stuffed [end if]crotch. As Lucy's excitement quickly builds, she rides harder and faster, giving her hips little twists and turns that cause delightful quivers of her pussy around your cock. With a hard push down and some final gyrations, her pussy clamps down around you and your crotch is soaked in her juices as she cums with a loud cry of ecstasy. You grab her ass hard and moan as well, pumping your hot seed into your ratty girlfriend[if cock width of player > 24]. Your enlarged balls empty their large load into your sexy girl, stuffing her belly enough that your cum leaves her slender belly visibly rounded. After you withdraw, she moans and pants, rubbing this bulge with a contented smile. 'Mmm, what a stud,' she moans[else]. Your balls empty their load into your sexy girl as you kiss and lick at one another. After you withdraw, she smiles contentedly up at you. 'Mmm, that was great, loverboy,' she moans[end if]. After some more snuggling and kissing (as well as some licking to get you [']cleaned up[']), you head back out into the mall together.";
	else:
		say "     Feeling in the mood to screw the sexy rat girl, you push her down onto the nest, tickling her as you pounce atop her. She squeaks and giggles as she squirms on the bundle of soft bedding and clothes before eventually just grabbing you tightly and pulling you into a kiss. 'Mmm... baby...' she moans as your touch shifts from tickling to stroking and caressing, moving to her breast and her ass. As her tongue dives into your mouth, you slide your cock into position, lining it up with her juicy cunt. Her rat-like hands grab your rear and pull you forward, thrusting you into her needy pussy with a moan of pleasure from each of you.";
		say "     As you thrust into her, you switch from kissing her to kissing her breasts, running your tongue across those softly-furred globes and their pink nipples. She squeaks in pleasure at this and you start sucking on them, much to your girlfriend's delight. Using one arm for support, you let the other run over her body in a mix of caresses and gropes that further excite her. The scent and sounds of rat lust grows stronger, exciting your senses and driving you to fuck harder until you finally cum hard, blasting your hot load into her [if cock length of player > 20]over-stuffed [else if cock length of player > 12]stuffed [end if]cunt, sending her over the edge into orgasm as well[if cock width of player > 24]. Your enlarged balls empty their large load into your sexy girl, stuffing her belly enough that your cum leaves her slender belly visibly rounded. After you withdraw, she moans and pants, rubbing this bulge with a contented smile. 'Mmm, what a stud,' she moans[else]. Your balls empty their load into your sexy girl as you kiss and lick at one another. After you withdraw, she smiles contentedly up at you. 'Mmm, that was great, loverboy,' she moans[end if]. After some more snuggling and kissing (as well as some licking to get you [']cleaned up[']), you head back out into the mall together.";
	increase libido of Lucy by 1;
	if HP of Lucy < 3, now HP of Lucy is 3;

to say lucysex2:
	say "     Deciding you want to feel the rat's talented muzzle around your cock, you gently push her to her knees with one hand and stroke your [if player is male]cock[else]cocks[end if] with the other. Seeing your cock offered up to her, she grins up at you and licks slowly across your [cock size desc of player] [cock of player] shaft while fondling your ballsack with the other[if cock length of player > 20]. 'Oh my, you are a big boy. This is going to take some work,' she squeaks as she keeps licking, working to get the whole of your [cock size desc of player] cock slick before continuing[else if cock length of player > 10 or cock width of player > 12]. 'Mmm... I'm looking forward to this,' she squeaks as licks it all over before continuing[else if cock length of player > 5]. 'Mmm... let me take care of this, sweetie,' she squeaks as she runs her tongue along its underside before continuing[else]. 'It's not much, but let's see if we can't still have some fun,' she squeaks as her tongue plays across your underwhelming cock[end if][if player is female]. As her muzzle sinks down over your now throbbing erection, her paw moves a little further to start teasing your juicy cunt and pumping into your wet folds[else]. As her muzzle sinks down over your now throbbing erection, she gives your balls a playful squeeze as the horny rat thirsts for their creamy contents[end if].";
	say "     Lucy makes the most of her elongated muzzle, tongue and even her ratty teeth to pleasure you, working over it with both experience and eagerness that makes for a wonderful blow job. You stroke her head and caress her ears, moaning down to her about how great it feels and how sexy she is[if cock length of player > 24]. Your enlarged maleness takes some added effort from your eager girl, but eventually she gets it stuffed into her muzzle and down her throat[end if][if player is male]. Presented with multiple cocks to enjoy, Lucy swaps between them from time to time, using her free paw to stroke them when not in her muzzle[end if]. As she blows you, she has her smooth tail playing between her legs, rubbing at her wet folds at first, but later even stuffing a few inches of it into her cunt. Watching her sexy ass wiggle as she stuffs a little more of her tail into herself proves to be too much and you release a squeaking groan, cumming hard right down your girlfriend's throat, much to her obvious delight. Even as she's gulping it down, she releases muffled moans and her hips quiver all the more as she cums around her own tail[if cock width of player > 24]. Your oversized balls provide a huge load of cum for the sexy girl, which she eagerly swallows all down until you're drained and her usually slender waist is rounded by her creamy meal. After sliding her muzzle off your shaft with a few parting licks, she grins up at you. 'Mmm... tasty and filling...' she moans[else]. Your balls give up their load for the sexy girl, which she eagerly swallows down until you're drained. After sliding her muzzle off your shaft with a few parting licks, she grins up at you. 'Mmm... tasty...' she moans[end if]. You snuggle together for a while, which includes you licking her damp thighs, pussy and tail clean, you head back out into the mall together.";

to say lucysex3:
	say "     In the mood to lavish some attention on your sexy girl, you lower yourself to your knees between her legs, kissing and licking as you go. Aside from a brief pause at her breasts and another at her pierced navel, you move quickly towards your goal, that juicy muff of hers. She gives a squeak of pleasure as you spread her folds with your fingers and run your tongue slowly over her sensitive cunny and clit. 'Mmm... baby, you know how to treat a girl right,' she says, running her paws over your head and flipping her tail around your back in a loose hug. You smile up to her, saying that a sexy girl like her deserves a treat like this before diving back in, tongue lapping over her increasingly wet folds and slipping inside her to make her moan all the more. You take your time, alternating between licking and fingering her quivering hole until she's forced to lean onto your shoulders to even stay upright. With the arousing scent of her feminine rat juices soaking your face and flowing over your tongue, she cums hard as you finger and lick her through a long orgasm. Left panting and woozy, but very content, Lucy flops down onto the bedding with a long sigh of pleasure. You snuggle together for a while, during which you [if player is male]stroke yourself off onto her soft fur, which you then have fun helping her clean up[else]finger yourself to orgasm while she sucks your nipples[end if]. After that, you head back out into the mall together.";

to say lucysex4:
	if player is male:
		say "     Wanting to enjoy your sexy girl's muzzle, but not wanting her to feel left out, you suggest a 69, which she heartily agrees to. Laying side by side, you stretch out on the soft, warm nest and snuggle together, face to groin. She raises one leg as you bury your face in her muff to give you better access and turns her attention to your stiffening cock. She runs her paw along your hip, then takes hold of your [cock size desc of player] [cock of player] shaft, bringing it to her muzzle[if cock length of player > 24]. 'Come here, big boy,' she squeaks and gives your glans a kiss before slowly sliding her muzzle down over your meaty length[else if cock length of player > 10 or cock width of player > 12]. 'Mmm... such a nice, big treat you've brought me,' she squeaks and gives your glans a kiss before slowly sliding her muzzle down over your shaft[else if cock length of player > 5]. 'Mmm... such a nice treat you've brought me,' she squeaks and gives your glans a kiss before sliding her muzzle down over your shaft[else]. 'It's not much, but let's see if we can't still have some fun,' she squeaks and gives your small glans a kiss before sliding her muzzle down over your [cock size desc of player] shaft[end if] while fondling your balls.";
		say "     Lucy's clearly had lots of practice at this and uses her muzzle to skillfully pleasure you and you do your best to please her in return[if player is female]. In addition to that, her nimble paw slips down to your damp folds and starts teasing them as well[end if]. You lick, caress and finger her juicy cunt, loving the musky scent of her arousal and the taste of your rat girlfriend's juices. You try several of the techniques you've picked up in your adventures and soon get her squeaking and moaning around your cock[if a random chance of ( 100 + libido of player ) in 300 succeeds]. You are the first to cum, her expert muzzlework pushing you over the edge to a climax that makes you moan loudly. As you cum, you dive your tongue into her, working it frantically and setting her off moments later[else]. She is the first to cum, your playful tonguework pushing her over the edge to a climax that seems to send her tongue and muzzle into overdrive in its desire for your cum. This sets you off moments later with a loud moan of your own[end if]. You lap up her flowing juices as you feel Lucy sucking your cock and swallowing down your hot seed[if player is female] while fingering your spasming pussy[end if]. You shift around to face one another and snuggle together on the soft bedding of her nest for a while, sharing delicious, musky kisses. After your break, you head back out into the mall together.";
	else:
		say "     Wanting to get a taste of your sexy girl's pussy and figuring she could do the same for you, you suggest a 69, which she heartily agrees to. Laying side by side, you stretch out on the soft, warm nest and snuggle together, face to groin. She raises one leg as you bury your face in her muff to give you better access and turns her attention to your pussy, which you've likewise bared. With a long, slow lick, you slide your tongue across her pussy before diving your tongue into her wet cunt to lap up her juices. You releases a squeak of pleasure and sets to work, her tongue and ratty teeth playfully teasing at your sensitive petals as she dives a finger into your [cunt size desc of player] vagina[if cunt width of player > 8], followed soon by two more and then her whole paw[else if cunt width of player > 4], followed soon by another two more[else if cunt width of player > 2], followed soon by a second[end if]. 'Mmm... not many of the girls are into playing like this with me. It's a nice, delicious change,' she moans as she gives you another slow lick. You flick your tongue around deep inside her in return, making her squeak in surprise and pleasure.";
		say "     You roll around together in her nest of bedding for a while, working to please one another with your tongues and hands. The scent of lust and rats grows heavy as you continue work to please one another in ways that only girls know best. You tease and lick every sensitive spot you can locate, putting particular attention on her clit. And your ratty girlfriend does the same for you, making you both quiver and moan in blissful pleasure until you both achieve crashing orgasms in quick succession, first [if a random chance of ( 100 + libido of player ) in 300 succeeds]you and then Lucy[else]Lucy and then you[end if]. You do your best to lick one another clean of your overflowing feminine juices before sliding around to face one another and snuggle, sharing deliciously musky kisses. After your break, you head back out into the mall together.";

to say lucysex5:
	say "     Catching sight of the rat girl's bare tail, you find yourself wanting to have it inside you. Taking it in hand, you grin and lick the tip of it like it were a cock before sliding it slowly down your body and between your legs. Lucy grins and nibbles your ear. 'So, looking for the Lucy Special, are we? Come're then,' she says, pulling you down onto the soft nest and snuggling up beside you. As she kisses you, her tongue diving into your mouth, she uses a paw to help guide her smooth tail into your pussy. The feel of the smooth, firm tail and its textured flesh sliding into you makes you shiver in delight. She smiles at your reaction and flicks the tip of it inside you, making you give a moan you try to muffle by kissing her again. As she slides her tail in and out of you, you reach between her legs and begin playing with her pussy in return[if cunt length of player > 48]. Over time, Lucy gradually works a great length of her slender tail into you, but is unable to plumb the full depths of your cavernous cunt. She does her best to please you, working almost the full length of her textured tail around inside you and pumping it in and out, delighting in the feel of having it pleasure you so deep inside[else if cunt length of player > 24]. Over time, Lucy gradually works a great length of her slender tail into you, eventually plumbing the full depths of your deep cunt by slipping most of it into you. You delight in the feeling of having it pleasure you so deep inside[else if cunt length of player > 12]. Lucy works more and more of her tail into you until can feel it ticking at your very depths. You delight in the feeling of having it pleasure you so deep inside[else if cunt length of player > 5]. In short order, Lucy works her slender tail into you until you can feel the tip of it teasing at the bottom of your cunt. You delight in the feeling of having it pleasure you fully[else]. While Lucy can only work a little of her tail into your [cunt size desc of player] cunt, she does her best to make it count by working her tail to pleasure your snug vagina[end if].";
	say "     She works her tail with particular attention to those spots that make you moan or squeak the most. Soon, your hot juices have soaked her tail as well as your crotch and the sheets around you from the in-depth stimulation it provides. Your sexy girlfriend seems to be having a lot of fun from this as well, both from seeing you enjoy her attentions so much as well as from the frantic fingering you're giving her in return[if breasts of player > 0 and breast size of player > 0]. While fucking you with her tail, Lucy buries her face in your cleavage, licking at your breasts and nipping at your hard nipples[else if breast size of player > 0]. While fucking you with her tail, Lucy buries her face in your cleavage, licking at your breasts[else]. While fucking you with her tail, Lucy nuzzles at your neck, licking and nibbling along your throat[end if]. Eventually this all becomes too much for you and you cry out loudly as you cum hard, a crashing wave of orgasmic ecstasy washing over you from your release. She sits back up to watch you writhe in delight on the bedding, but soon flops down atop you as her climax arrives as you continue to finger her. You both are left panting and kissing, heavy with the scent of rats and sex around you. You have fun licking each other clean before heading back out into the mall together.";

to say lucysex6:
	say "     Feeling in the mood for something a little kinkier, you lower her down onto the nest and running your hands over her sexy body. She squeaks and giggles, running her paws over your [bodydesc of player] body. You give her a long and passionate kiss before rolling her over onto all fours. She moans happily and her tail raises right away. With the lovely sight of her juicy cunt and her tight pucker half-hidden a little further up, you lick your lips and pounce atop her. You lick her round ears and nibble on them lightly, whispering to her what a hot, sexy rat she is as you get your cock lined up, not with her pussy, but with her anus. She grins back at you as she realizes just what you have in mind and arches her rear into a better position for you. 'Mmm... someone's feeling naughty,' she purrs. 'Go ahead, lover. Let's do it.'";
	say "     Having gotten your girl's permission to take her back door, you start easing your glans into her. It's [if cock length of player > 20]very [else if cock length of player > 12]rather [end if]slow going at first, letting your pre dribble onto her pucker as it spreads open to take you. It takes some time, but she clearly is enjoying this and has [if cock length of player > 20]little[else]no visible[end if] discomfort in having you fuck her ass. Once you've gotten about halfway in, she digs her claws into the bedding and moans loudly for you to stuff her ass. Grinning at his, you kiss the side of her muzzle and start thrusting, pounding at your sexy girl's beautiful backside. Reaching around to rub her pussy, you find her hand already there with a few fingers stuffed into it and switch to rubbing over her paw, encouraging her to frig herself harder. Between her squeezing anal walls and the scent of her hot juices as they run down her thighs, it's not long before you're both cumming loudly, blasting your hot load into her [if cock length of player > 20]over-stuffed [else if cock length of player > 12]stuffed [end if]ass, sending her to even greater heights of pleasure[if cock width of player > 24]. Your enlarged balls empty their large load into your sexy girl, stuffing her belly enough that your cum leaves her slender belly visibly rounded. After you withdraw, she moans and pants, rubbing this bulge with a contented smile. 'Mmm, what a stud,' she moans[else]. Your balls empty their load into your sexy girl as you kiss and lick at one another. After you withdraw, she smiles contentedly up at you. 'Mmm, that was great, loverboy,' she moans[end if]. After some more snuggling and kissing while you both get cleaned up, you head back out into the mall together.";

to say lucysex7:
	say "     Feeling in the mood to go wild with the sexy rat girl, you push her down onto the nest and move your big, skunk body over her with a playful growl. She gives an appreciative 'Oooo!' as she runs her paws over your big, strong body. 'Mmm... you're quite the [if skrp is 1]strange [end if]beast now, aren't you?' she says as she runs her paws through the fur of your underbelly[if skrp is 1]. Your additional skunk girl head gives a happy chirr and asks for a kiss. Lucy, always willing to make out with another girl, shares a tongue-filled kiss with your lustful co-inhabitor while your grind your monstrous body and throbbing erection down onto the pretty rat[else]. This gets you excited further and you grind your monstrous body and throbbing erection down onto the pretty rat girl[end if].";
	say "     Feeling you hard and ready, Lucy turns herself around to start by licking and kissing your cock while laying underneath your animalistic body. Her skillful tongue plays along it in licks and swirls that quickly have you leaking pre[if skrp is 1]. Your added skunk head is delighted to find this leaves the rat girl's juicy cunny within reach and happily exchanges French kissing for pussy licking. Lucy's happy moans and the grinding of her hips up show she's enjoying this as well[end if]. You rumble in pleasure as your ratty girlfriend lavishes attention upon your [cock size desc of player] black cock while fondling your [if cock width of player > 24]huge [else if cock width of player > 12]big [else if cock width of player > 6]plump [end if]balls. Your excited rumbling grows louder and deeper as she takes your drooling rod past her lips and into her mouth, letting you fuck her muzzle with sharp thrusts[if cock length of player > 24]. And while it is a little slow to get your mighty cock into her muzzle at first, your thrusting eventually gets it stuffed into her muzzle and down her throat[end if].";
	WaitLineBreak;
	say "     You enjoy this beastly blow job for a few minutes, but you came her to fuck your rat, and fuck her you will. Very aroused by this point, you pull your [cock size desc of player] cock free of her sucking maw and manhandle her onto all fours. Your mephit body climbs atop the smaller rat girl and you quickly drive your pulsing rod into the warm depths of her cunt. She releases a loud, lustful squeak as you penetrate her. 'Oh yeah! Fuck me hard, you beast!' she cries, steadying herself as firmly as she can while pushing her ass back and up. You don't hold back, pounding her hard and fast, driving your midnight black shaft into her juicy cunny over and over again. The wild, animalistic fucking makes quite the mess of the rat girl's nest as she's slowly pushed forward by the rough mating by her bestial lover. She doesn't seem to mind though, her vagina squeezing all the tighter around you during this stronger thrusts. The musky scent of your arousal fills the air as your energetic mating continues.";
	say "     You cum hard with a loud growl, with the rat girl crying out beneath you[if skrp is 1] and your lower skunk head even joining in[end if] as you climax together[if cock width of player > 24]. Your enlarged balls empty their large, beastly load into your sexy girl, stuffing her belly enough that your cum leaves her slender belly visibly rounded[else]. Your mephit balls empty their beastly load into your sexy girl[end if]. Once you're finished, you stay straddles over her and leave your skunk cock buried in her for some time, leaving you to enjoy the sensation of your cock buried in her cum-filled cunt. 'Mmm... I knew you'd be a beast in the sack when I first saw you, but that was even better than I'd imagined,' she says with a soft, teasing giggle. When you do pull out, she makes sure to lick your sticky cock clean before getting up. Her nose does wrinkle up when she notices that your musky scent is still clinging to her fur and she adds a fresh spritz of perfume to ward it off.";


Section 4 - Mall Recall

Table of GameEventIDs (continued)
Object	Name
Memories of the Mall	"Memories of the Mall"

Memories of the Mall is a situation. It is inactive.
The sarea of Memories of the Mall is "Outside".

Instead of resolving a Memories of the Mall:
	say "     As you're walking around the city, you find your mind wandering back to the mall, and more specifically, to your rat girlfriend waiting there. Little things you keep seeing remind you of her - stuff like the way that husky's breasts bounce when she runs, or the tight ass on that other mutant, or the unchanged rat you see scurrying between some trash cans. Unable to get your sexy girlfriend off your mind, you change directions and strike off towards the mall to see her again. Once you arrive, you make your way back to the atrium to see her again.";
	if libido of player < 50, increase libido of player by 5;
	increase lastfuck of Lucy by 6; [ready for more sex]
	now battleground is "void";
	move player to Mall Atrium;


to mallrecall:
	say "";
[
	LineBreak;
	WaitLineBreak;
	let recallchance be 0;
	if lastfuck of Lucy - turns >= 12:
		if bodyname of player is "Mall Rat", increase recallchance by 15;
		if facename of player is "Mall Rat", increase recallchance by 15;
		if HP of Lucy >= 2:
			now recallchance is recallchance / 2;
			increase recallchance by 25;
			if cockname of player is "Mall Rat", increase recallchance by 10;
		if a random chance of recallchance in 100 succeeds:
			if Smith Haven Mall Lot South is unknown:
				say "     As you start heading back to safe territory after your excursion, you find yourself wandering off in a new direction. Following buried instincts, you feel drawn somewhere... safe... somewhere... cool... You eventually arrive at the southern parking lot of a large mall. While you are largely confused by this, you can't help but feel that part of you wants to call this place home. Knowing it's somehow safe, you go inside and head to the large atrium at the center of the plaza, finding lots of other rats living there already.";
				now Smith Haven Mall Lot South is known;
			else if HP of Lucy >= 2:
				say "     As you start heading back to safe territory after your excursion, you find yourself thinking of Lucy and the mall, wanting to head back there to see your girlfriend again. The mall's a safe place, you remind yourself, and head back in that direction eagerly. You arrive safely and enter the shopping plaza[if the player is mallratbodied], feeling quite at home here[end if], and head to the central atrium.";
			else:
				say "     As you start heading back to safe territory after your excursion, you find yourself thinking of the mall, wanting to head back there to hang out. The mall's a safe place, you remind yourself, and head back in that direction eagerly. You arrive safely and enter the shopping plaza[if the player is mallratbodied], feeling quite at home here[end if], and head to the central atrium.";
			now battleground is "void";
			move player to Mall Atrium;
]

Section 5 - Endings


Lucy ends here.
