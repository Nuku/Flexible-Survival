Version 3 of Down Under Pub by Stripes begins here.
[Version 3.0 - Getting to know the waitress better]

"Adds a Roo-infested pub to Flexible Survival with visitation restrictions and instant departure."

Section 1 - Aussie Pub Event

Table of GameEventIDs (continued)
Object	Name
Aussie Pub	"Aussie Pub"

Aussie Pub is a situation.
The sarea of Aussie Pub is "Red".
lastpubvisit is a number that varies.
pubvisit is a number that varies.

when play begins:
	add Aussie Pub to badspots of girl;
	add Aussie Pub to badspots of guy;
	add Aussie Pub to badspots of hermaphrodite;
	add Aussie Pub to badspots of furry;

Instead of resolving a Aussie Pub:
	say "     While exploring the area, you come across an Australian themed pub previously called 'Down Under'. Some bright blue paint has been used to add 'TAKE ME' to the front of its name. Through the windows, you can see there are lots of carousing and arousing kangaroos in the pub. You can see them eating, drinking and/or fucking with uproarious enjoyment inside.";
	if the bodyname of player is "Red Kangaroo":
		say "     [bold type]You feel a longing to join them. Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			project the figure of Gillian_icon;
			say "     Giving into the urge, you step over to the door and go in. There is a brief lull in the sound at your entrance, but it quickly picks up again. You are one of them and welcome. Some beer and food are put in front of you by a sexy kangaroo doe in a tight top. Seeming eager to greet the newcomer, she's soon under the table and lapping at your groin.";
			if player is male:				[ MALE/HERM! ]
				say "     After a long bout of teasing while you enjoy the meal you've been given, you pull the doe up to sit in your lap, driving your cock into her and plowing her good and hard. You run your hands over each other's body while she bounces on your cock, using her strong roo legs. You play with her breasts and suck her nipples while she moans lustily. The other patrons near you slap your back in encouragement, joking about how she likes to break in every newcomer. From what you can gather, seeing how your focus is always drawn back to the buxom doe in your lap, is that you're managing to last longer than most. You do eventually pop off, blasting your hot seed into her gripping tunnel.";
			else:						[ FEMALE! ]
				say "     After a long bout of teasing while you enjoy the meal you've been given, you pull the doe up into your arms. You run your hands over each other's body, playing with her breasts and sucking her nipples. She calls over to the bartender for something she calls her [']double-duty['], which turns out to be a double-ended dildo that she's soon sharing with you, much to the enjoyment of the crowd. The other patrons near you slap your back in encouragement, joking about how she likes to break in every newcomer. From what you can gather, seeing how your focus is always drawn back to the buxom doe in your lap, is that you're managing to last longer than most. You are eventually struck by a thunderous orgasm that leaves your head spinning for a few minutes.";
			WaitLineBreak;
			say "     Once she's done with you, she gives you a kiss and heads off to deal with the other patrons, who seem to be happy to trade a delay in service for her usual sex show. You're informed by a friendly joey in the next booth that they have a generator hooked up for power and they've syphoned gas from the nearby station to run it. 'Just like Mad Max,' he says with a laugh. You carouse with them for hours, a romp of drinking, singing and sex.";
			project the figure of DUP_FloorShow_icon;
			say "     The main attraction comes as you're finishing up a fulfilling fuck under a strong, masculine boomer who plows you good and hard. From somewhere in the back, probably having been locked in a store room, a dog-eared man is dragged out. He's got a collar and leash on and nothing else. He's spread across a table and held down, with many of the roos taking turns to fuck him, changing him more and more into another kangaroo like yourselves. Once the buck atop you has filled you with his cream, you're off like a shot to screw the increasingly willing hybrid, caught up in the moment with the lascivious roos.";
			if player is male:				[ MALE/HERM! ]
				say "     You get lucky, getting there just as he gets a new pussy, which you quickly fill with your cock. You lick and kiss the rising breasts on the new jill's chest, taking perverse satisfaction in helping to change the mostly human-male into a herm doe for you and the others to fuck. Eventually, after you and many others have filled her with your seed, she's released from the table. She eagerly joins the first buck who took her in his booth, showing her appreciation by sucking him off.";
			else:						[ FEMALE! ]
				say "     Having just finished with the boomer, you bring your messy pussy above the playtoy's lips, letting it drip down onto him. He has his tongue up in your pussy almost immediately, seeking that thick, virile taste. He licks and teases your pussy aggressively as he seeks out every drop of roo cum he can get. From your vantage point above him, you get to watch as a new, wet slit forms under his balls, wet and dripping with need. You lick and finger her in return, taking perverse satisfaction in helping to change the mostly-human male into a herm doe for you and the others to enjoy. Eventually, after you and many others have finished playing with her, she's released from the table. She eagerly joins the first buck who took her in his booth, showing her appreciation by sucking him off.";
			WaitLineBreak;
			say "     Eventually, the party winds down, appetites (both carnal and more mundane) are sated and you head off with several of the others. As you're heading out though, the barmaid pulls you in close for another kiss. Grabbing your ass, she whispers that you should come back again in a few days and she'll let you in. You'd heard from the crowd that roos are allowed a visit a week because of the need for supplies and the popularity of the location. But it seems the serving girl's taken a liking to you and let you come every two or three days. Part of you feels quite drawn to the rambunctious roos and you look forward to finding more to have fun with in the future and looking forward to another visit to the pub.";
			infect "Red Kangaroo";
			infect "Red Kangaroo";
			SanLoss 18;
			PlayerDrink 30;
			PlayerEat 12;
			increase score by 25;
			increase pubvisit by 1;
			increase HP of Gillian by 1;
			now lastpubvisit is turns;
			now Down Under Pub is known;
			LineBreak;
			now Resolution of Aussie Pub is 1; [Entered Pub]
			now Aussie Pub is resolved;
		else:
			say "     You resist the temptation and head off with a little more resolve.";
			increase score by 1;
			increase humanity of player by 5;
			LineBreak;
			now Resolution of Aussie Pub is 2; [Did not enter Pub]
			now Aussie Pub is resolved;
	else:
		say "     You decide it'd probably be best to head for sneak away before you're noticed. Only another kangaroo could safely approach this location.";


Section 2 - Down Under Pub

Table of GameRoomIDs (continued)
Object	Name
Down Under Pub	"Down Under Pub"

Down Under Pub is a room. "[down under pub scene]". It is unknown. It is fasttravel. It is private.

to say down under pub scene:
	if bodyname of player is not "Red Kangaroo":
		say "     It probably would not be safe to approach the Aussie pub if you're not a roo like them, even if you've been there before[if HP of Gillian >= 4]. And you'd likely get spotted trying to sneak up to Gillian's flat, so that's out[end if]. You could find yourself spread out on a table and shared until there's nothing but roo in you. Mmmm... No! As nice as that sounds, you need to hold on to your sanity.";
	else if player is neuter:
		say "     Lacking any proper equipment, somehow you just don't feel the same urge to return to the pub as you once had and decide to pass on visiting it for the moment. Besides, perhaps tending to your poor, neutered groin is a higher priority than a night of drinking.";
	else if Down Under Pub is not open:			[visits allowed from noon to midnight]
		if HP of Gillian >= 4:
			say "     Seeing how it's outside of their operating hours (of noon to midnight), the pub's closed right now. You pop upstairs to visit Gillian instead.";
			WaitLineBreak;
			now battleground is "void";
			move player to Gillian's Flat;
		else:
			say "     The pub, like in its days before the infection, is only open from noon to midnight. You should keep an eye on your [bold type]watch[roman type] and try back then.";
	else if lastpubvisit - turns < 14:
		if HP of Gillian >= 4:
			say "     While you are welcome back at the Down Under Pub, they have limited supplies and have asked that patrons wait a week between visits. Since Gillian likes you, she's able to get you in every [bold type]two or three days[roman type], but you don't want to push it too much. Since you've got to wait before visiting the pub again, you instead let Gillian know you're upstairs and go wait for her. She's up with you shortly, getting one of the other girls to cover for her. Given the dampness around her muzzle and the taste of pussy on her lips when she kisses you, it's easy to guess how she convinced the girl to take her shift.";
			WaitLineBreak;
			now battleground is "void";
			move player to Gillian's Flat;
		else:
			say "     While you are welcome back at the Down Under Pub, they have limited supplies and have asked that patrons wait a week between visits. Since the barmaid likes you so much, you can probably get in every few days, but you don't want to push it too much. You can probably get away with coming back every [bold type]two or three days[roman type] though.";
	else:
		if HP of Gillian >= 4:
			say "     It's been a while since you've been to the Aussie pub and it's open now, if you want to go in. Alternatively, you can let Gillian know you're here and go wait for her upstairs.";
			say "     [bold type]Which would you prefer, going to the Down Under or meeting with Gillian?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go to the down under.";
			say "     ([link]N[as]n[end link]) - Meet with Gillian.";
			if player consents:
				say "[downunderpubvisit]";
			else:
				now battleground is "void";
				move player to Gillian's Flat;
		else:
			say "[downunderpubvisit]";
	if location of player is Down Under Pub:
		say "     With your visit to the Aussie pub over, you head back to the nearby red light district to decide where to head next.";
		WaitLineBreak;
		move player to Entrance to the Red Light District;

to say downunderpubvisit:
	setmonster "Red Kangaroo";
	let rooness be 0;
	say "     Returning to the pub again, you smile to [if HP of Gillian < 4]the barmaid[else]Gillian[end if] as you enter and give her rear a pat before taking a seat. The barman grunts a little, but seeing your friendliness with his server, lets it slide. Looking around, a few faces seem familiar from the crowd, but it's mostly a new group of roos today. There must be quite a few of them around, you conclude. This makes you smile, rather enjoying your new body now that you're in the company of all these boomers and jills. Speaking of, you're soon giving the server a lusty kiss as she comes over with your food and drink.";
	if a random chance of 3 in 7 succeeds:
		increase rooness by 1;
		say "[gillianpubfun]";
		if HP of Gillian < 3, increase HP of Gillian by 1;
	WaitLineBreak;
	say "     After your meal, you hang out and chat with a bunch of the sexy kangaroos. After some arousing carousing, you find yourself feeling in the mood for some fun. Drunk, aroused and caught up in the moment as you are, you offer yourself up to the sexy roo beside you. You snuggle up close to the roo, fondling them as you kiss.";
	let randomroos be { 1 }; [manly boomer]
	if player is male, add 2 to randomroos; [girly joey]
	if player is male, add 3 to randomroos; [horny jill]
	if player is female, add 4 to randomroos; [lez jill]
	if player is female, add 5 to randomroos; [roo pair]
	sort randomroos in random order;
	if entry 1 of randomroos is 1, say "[roopubsex1]";
	if entry 1 of randomroos is 2, say "[roopubsex2]";
	if entry 1 of randomroos is 3, say "[roopubsex3]";
	if entry 1 of randomroos is 4, say "[roopubsex4]";
	if entry 1 of randomroos is 5, say "[roopubsex5]";
	now lastpubvisit is turns;
	increase rooness by 1;
	if a random chance of 2 in 5 succeeds and rooness < 2:			[conversion show]
		wait for any key;
		say "[roofloorshow]";
		now lastpubvisit is turns - 8; [wait extra day after a tf show]
		increase rooness by 1;
		increase score by 10;
	decrease humanity of player by 10;
	infect "Red Kangaroo";
	if rooness > 1:
		infect "Red Kangaroo";
		decrease humanity of player by 8;
		increase morale of player by 3;
		now libido of player is ( libido of player * 4 ) / 5;
	PlayerDrink 15;
	PlayerEat 12;
	increase pubvisit by 1;
	LineBreak;
	if HP of Gillian is 3:
		WaitLineBreak;
		say "     As you're getting ready to leave, the barmaid comes up to you again. She gives your ass a firm squeeze and kisses you lustfully. 'Mmm... I've been keeping my eye on you, hot stuff. How about you drop by and see me some time after hours? I'm in the flat upstairs. Oh, and the name's Gillian,' she adds as she's turning to go, giving her thick tail and meaty rump an enticing sway.";
		increase HP of Gillian by 1;
		now Gillian's Flat is known;


Section 3 - Various sex scenes

Part 1 - Barmaid Scenes

to say gillianpubfun:
	if the remainder after dividing libido of gillian by 3 is:
		-- 0:
			if player is male:
				say "     It seems luck's on your side this time, as [if HP of Gillian < 4]she's[else]Gillian's[end if] got a few minutes to spend with you and she's under the table, licking and sucking at your cock eagerly. You moan in pleasure and rub her ears as her long muzzle bobs over your meaty shaft. Once you're nice and slick, she's up again and into your lap for a ride. Many of the other patrons nearby turn their attention to watch the show with grins, so you resolve to make the most of it. Taking her strong roo legs in your hands, you raise them up high so everyone gets a good view of your cock plowing into her. Getting in on the show, she fondles her bosom and holds one of her breasts up so she can lick her nipple slowly. Turned on by showing off your lover to the others, you have a very enjoyable fuck before shooting your hot load into her. Setting her back down, you give her another kiss and pat on the rear to send her back to her duties.";
			else:
				say "     It seems luck's on your side this time, as [if HP of Gillian < 4]she's[else]Gillian's[end if] got a few minutes to spend with you and she's under the table, licking and lapping at your pussy eagerly. You moan in pleasure and rub her ears as her tongue dives into you again and again. Many of the other patrons nearby turn their attention to watch the show with grins, so you resolve to make the most of it. Patting her side and turning in your seat, you raise one of your powerful roo legs high, spreading yourself. Getting in on the fun, she nibbles and kisses along your thighs so the others can get a peek at your dripping snatch before she dives back into eating you out. With her own tail raised high and her fingers in her snatch, she fingers herself wildly, much to the crowd's delight. Turned on by showing off your lover to the others, you have a very enjoyable time before finally cumming hard and soaking her muzzle in your juices. Setting her back down, you give her another kiss (which tastes of you) and pat on the rear to send her back to her duties.";
		-- 1:
			say "     Luckily for you, [if HP of Gillian < 4]she's[else]Gillian's[end if] got a few minutes between her duties and chooses to spend them with you. After a lustful kiss, she pulls you over to a nearby open space by the wall";
			if player is male and a random chance of 3 in 5 succeeds:
				say ". Facing it, she raises her tail and shakes her ass at you, telling you to fuck her hard and fast. The nearby boomers and jills watch with happy grins as they watch you drive your [cock of player] cock into her juicy cunny[if cock length of player > 30]. It takes some effort, pressing the horny roo right up against the wall to get your [cock size desc of player] shaft fully buried into her, but you manage it in the end[else if cock length of player > 20]. it takes a little added effort to get your [cock size desc of player] shaft all the way into her[end if]. Because she'll need to get back to work, the sex is fast and hard, your hands running over her sexy bod while she pushes back with her powerful hips and squeezes her vaginal walls down around your shaft until you finally cum, filling her with a fresh, creamy load to run down her thighs while she waits the tables.";
			else:
				say ". Leaning back against it, she pushes you down to your knees and moans for you to eat her out. Knowing she needs it badly, you dive on it. She runs her hands over your head and keeps you pressed between her strong thighs. Her succulent pussy is a delicious delight, her juices subtly sweet and heady with her arousal. You tongue her wet folds while your fingers stroke her pussy all over. Knowing she'll need to be back to work soon, you drive a pair of fingers into her and frig her juicy box with rapid strokes while sucking on her clit, sending her over the edge. Her femme cum soaks your face and runs down her thighs, a tantalizing sight for the patrons to see while she waits their tables.";
		-- 2:
			say "     Fortunately, [if HP of Gillian < 4]she[else]Gillian[end if] is able to get a few minutes to spend some not-so-private time with you. While kissing you lustfully";
			if player is male:
				say ", she gets her furry hands on your [one of][cock of player][or][cock size desc of player][at random] cock and eagerly strokes it to erection. She gets down on her knees and nuzzles against your manhood before making a show of slowly licking across your glans. Not wanting to wait any longer, she plunges her muzzle over your throbbing shaft[if cock length of player > 30], doing her best to get your [cock size desc of player] manhood down her throat and her best proves her to be quite the champ, able to take the full of it after only a few attempts[else if cock length of player > 20], putting in the added effort to get your [cock size desc of player] cock into her mouth and down her throat[end if]. She sucks at your shaft like a vacuum while her tongue artfully plays across it";
				if player is female:
					if cockname of player is listed in infections of internallist:
						say ". Your having internal balls leaves her with free access to your juicy pussy, letting her plunge her fingers into your cunny as well";
					else:
						say ". After giving your [ball size] a grope, she shifts her paw's focus to your juicy pussy and plunges her fingers into your cunny";
				else if cockname of player is not listed in infections of internallist:
					say ". As she sucks your throbbing rod, she gropes your balls, eager for the tasty treat inside them";
				say ".";
				say "     With her working so hard to get it, it's not long before you're moaning that you're about to cum. She doesn't let up, having you blast your load into her muzzle and down her throat. She strokes your shaft even as she eases her muzzle back, pushing the last few drops from your urethra. Keeping it in her muzzle, she [one of]makes a big production of swallowing it down for the crowd[or]goes over to a nearby [if a random chance of 2 in 3 succeeds]jill[else]boomer[end if] and snowballs your load with them, much to the delight of the crowd[or]lets it drool out over the next plateful of food she's handed, giving some lucky roo some [']secret sauce['] for their burger[cycling].";
			else:
				say " she pulls out a double-ended dildo she was somehow concealing. Referring to it as her [']double-duty['], she brushes the latex toy across your wet folds a few times before easing half of it into you. Burying your face in her ample bosom, she lowers herself down onto the remainder of the toy with a lustful cry. She rides that toy for all its worth and her gyrations cause the toy to slide and wriggle around inside you delightfully as well. The ride is fast and frantic, bringing a quick but powerful orgasm that leaves you panting in your seat. After withdrawing the toy from you, she gets you to suck on her end of it while she does the same to yours, much to the added delight of the nearby patrons watching the fun.";
	increase libido of Gillian by 1;

Part 2 - Patron Scenes

to say roopubsex1:
	say "     The sexy male roo puts his strong arms around you and runs his paws down your back even as your paws find their way to his throbbing cock. He's quite hard and eager for some fun as well. [if HP of Gillian < 4]The serving girl[else]Gillian[end if] winks at you as she clears the table, making room for you to be bent over it by the big boomer. He kneads his paws over your ass and rumbles how he's been looking forward to this since you came in. He lines up his throbbing shaft with your [if player is female]dripping cunt[else]tight pucker[end if] and slowly starts easing his tapered, roo-like cock into you, making you moan in pleasure.";
	say "     His strokes are strong and firm, giving you a good, strong fucking as soon as you've grown accustomed to his girth. But he is sensual as well, nibbling and kissing at your neck while his paws roam over your body before finding their way to your [if player is male]twitching cock[else]stuffed pussy[end if] to caress it. You wriggle and moan beneath him, loving all the attention as well as the feel of his large penis stuffed inside your [if player is female]needy cunt[else]snug bottom[end if]. When he drives hard into you one last time, rocking the table and spilling the drinks, you can feel the hot rush of his roo cum flooding your [if player is female]womb[else]bowels[end if]. Having left quite a load in you, you wipe away the leaking excess with some napkins from the table, getting a few whistles and catcalls from those watching.[impregchance]";


to say roopubsex2:
	say "     The slender, girly joey rubs his body against yours, letting his paws wander down to your cock and stroking it, eagerness in his eyes as he looks over your [cock size desc of player] [cock of player] penis. You stroke his cute body and soft fur as you consider what you'd like to do with this eager young guy. He licks his lips and moans softly as you give his rear a squeeze.";
	say "     [bold type]He seems ready to suck you off, though you could probably bend him over the table and fuck him as well, if you'd prefer.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Oral.";
	say "     ([link]N[as]n[end link]) - Anal.";
	if player consents:
		say "     Rubbing a paw through his long, curly headfur, you gently guide the roo's muzzle down to your throbbing cock. As his lips slide around it and his tongue sets to work, you are quite pleased with your decision. Clearly not unfamiliar with the act, he starts giving you a fine blowjob. His tongue slides along the underside and over your glans repeatedly while his muzzle bobs over your [cockname of player] shaft. You rub his head and shoulders as you lean back to enjoy the slow, sensual sucking. Feeling his paws on one of your large, roo feet, he caresses your paw and brings it to press against his cock, moaning softly as he slides his leaking member against it. After a long and enjoyable blowjob, you pull the roo's head down over your cock and send your hot seed down his throat. He's set off as well, spraying his load onto your long paw, though he's good enough to lick it all clean afterwards, forcing you to stifle your giggles as his tongue plays between your toes while the others around tease you and crack jokes.";
	else:
		say "     Grabbing the little guy, you grin as you grab his tail and fondle his bottom. [if HP of Gillian < 4]The serving girl[else]Gillian[end if] winks to you as she clears a spot on the table, making room for you to bend the girly young boomer over it. You spread his cheeks and look at his tight, pink pucker, ready and waiting for you. Lining up your [cockname of player] cock with his tailhole, you dribble pre onto it as he moans in anticipation. After a little teasing, you press forward, slipping into his bottom rather easily, clearly a well-practiced roo at bending over for the big boomers. With a few thrusts, you sink your shaft into him and start fucking him while the others around the table watch the show. Reaching around, you take the roo's throbbing cock in hand and pump it firmly. You go for a nice, slow ride to get him good and worked up before finishing with a few hard thrusts that make him blast his load into an empty stein someone holds out. Watching the girly young male beneath you guzzle down his own cum when the mug's handed to him, you push hard into him one last time and paint his bowels with your seed. Giving him a little swat on the ass, you withdraw and take your seat again, laughing as he's pulled into the lap of another for sloppy seconds.";


to say roopubsex3:
	say "     The big-breasted jill in your arms giggles sweetly and takes your cock in her paws. Rubbing at your stiff meat, she presses her ample bosom to your chest.";
	say "     [bold type]Her breasts, you feel, would give a fine titty-fuck, though a ride in your lap may be more what you're in the mood for this time.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Tit-fuck.";
	say "     ([link]N[as]n[end link]) - Sex.";
	if player consents:
		say "     Deciding you want those fuzzy globes around your shaft, you give her breasts a teasing squeeze and tell her you'd love to see your meat between her lovely breasts. Beaming as you compliment her rack, she quickly gets down on her knees and presses her softly furred tits around your shaft. She squeezes those soft globes against your flesh, licking and kissing your glans as she rubs them along your penis. You rumble in pleasure and lean back, enjoying the attention. The sight of her furry mounds around your cock is very nice indeed. As you get close, you let her know you're about to blow and she works all her breasts against your meat all the more firmly until finally you blow, blasting your load across her face and bosom. She then grins and gets up, not bothering to clean herself off at all, instead leaving your semen on to show what a slutty girl she is. And given the calls for attention she gets from others in the room, it clearly works to get her another lover right away.";
	else:
		say "     Pulling her into your lap, you sit her facing you so you can bury your face in her lovely globes even as you bury your cock in her furry mound. She moans happily and rides in your lap, bouncing on her muscled roo legs. You lick, kiss and suck at her nipples while running your hands over her softly furred flesh. The ride is hard and fast, soon getting you to blow your load into her eager pussy. Your cries of orgasm are muffled by her large bosom, pulling your face between those big breasts as she cries out in pleasure as well. As soon as you're done, she's up and off from your lap, looking for another lover with a giggle and a swish of her tail.";


to say roopubsex4:
	say "     The sexy jill in your arms has smaller breasts compared to the other roos girls around and wears her hair short. Her paw moves quickly [if player is male]past your cock [end if]to your wet snatch, teasing your sensitive folds. Pulling you up from your seat, she gives the [if HP of Gillian < 4]the serving girl's[else]Gillian's[end if] ass a swat, eliciting a giggling moan as she clears the table quickly. Your lover of the moment pushes you up to lay back on the sturdy table before climbing atop it as well. Bringing her groin to your face, she presents her pussy to you even as she dives in and starts licking at yours lustfully. You decide to slip a pair of fingers into her and start licking and kissing her clit. Clearly enjoying what you're doing, she works your snatch all the more eagerly[if player is male]. She even gingerly takes hold of your cock and gives it a few light strokes, but her focus is clearly on your womanly parts[end if]. The others around the table watch the show happily, holding their drinks as you two roll around on the table for a while, swapping positions a few times before finishing as you started, with her hot juices flowing down over your paw and face as she laps up yours as you both cum loudly.";


to say roopubsex5:
	say "     The male boomer nibbles along your neck and slides back to the corner of the booth, guiding you to sit on the bench and suck his cock. But just as you're about to take his throbbing meat into your mouth, you feel another pair of paws on your backside. Looking back, you see another roo, almost identical to your partner as to be brothers or even twins. They wink at you and the first one pats your head, turning you back to his cock. Not one to complain about getting two for the price of one, you start sucking and bobbing over the roo's throbbing cock even as his brother lines himself up with your pussy. You moan around the leaking shaft as you're mounted and they start fucking you from each end. You rumble in pleasure, enjoying the fine rhythm these two are able to keep, making for a long and enjoyable ride without any unevenness in the motion to distract you from the wonderful time you're having. Eventually the brothers have had all they can take and both thrust deep inside you before unleashing their hot loads down your throat and into your vagina and womb. Once finished, the fist-bump and each give you a kiss before heading off to the bar for more drinks.[impregchance]";


Part 3 - Floor Show

to say roofloorshow:
	project the figure of DUP_FloorShow_icon;
	let randomgender be a random number between 1 and 2;
	if randomgender is 1, say "[randomdesc]"; [male creature list from Strange Sluts]
	if randomgender is 2, say "[randomdesc2]"; [female creature list from Strange Sluts]
	let newgender be a random number between 1 and 5;
	say "     It seems you've picked a fortunate time to come as another floor show starts up shortly after you finish up. Another partially changed human is brought in for the group, this one a [if randomgender is 1]man[else]woman[end if] with the head and paws of a [slutname]. [if randomgender is 1]He[else]She[end if] is naked and trying to cover up with [if randomgender is 1]his paws as best he can[else]her paws as best she can[end if], but the roos bringing in the new playtoy don't allow it, showing their prize off before laying [if randomgender is 1]him[else]her[end if] down on the fucking table and taking turns.";
	say "     After several boomers and jills have had their chance, you get to move in and take a turn, finding they're well on their way to becoming another sexy [if newgender < 3]boomer[else if newgender > 3]jill[else]roo herm[end if]. Caught up in the excitement as you are, you eagerly move in to take your turn riding ";
	if player is male and newgender > 2:
		say "her. Lining your cock up, you sink it into the increasingly eager roo slut's dripping and well-used snatch, pounding away at her. She moans and writhes on the pleasure, changing further as you add your thick seed to the mix already filling her. When finished, you move around to let her lick you clean even as the next boomer moves up to take your place.";
	else if player is female and newgender < 4:
		say "[if newgender < 3]his[else]her[end if] new roo cock. With a moan of pleasure, you sink down onto it and bounce eagerly on your powerful legs until finally [if newgender < 3]he[else]she[end if] can't hold back and a load of creamy roo cum blasts from their swelling balls. When finished, you move around to let [if newgender < 3]him lick his semen[else]her lick her semen[end if] from your recently creamed pussy, smiling at how eager they are to lap it up, even as the next jill moves in to take your place.";
	else if player is male:
		say "you stride up to his face, presenting your throbbing cock to him. He moans softly and dives his reforming muzzle over it. So far gone in his lustful transformation, he sets to licking and sucking at your cock hungrily. You grin and rub his head and growing roo ears as you pump into his changing muzzle, unleashing your thick roo seed down his throat to join the many other loads he's swallowed in his bloated tummy. As you move back, another jill moves in to ride his growing roo cock.";
	else:
		say "you stride up to her face, presenting your leaking pussy to her. She moans softly and dives her reforming muzzle between your thighs and starts licking eagerly. So far gone in her lustful transformation, he sets to licking and lapping at your pussy hungrily. You grin and rub her head and growing roo ears as your damp slit against her changing muzzle, soaking her face in your female juices and adding to those from several other jills before you. As you move back, another boomer moves in to mount her again.";
	say "     When the show is done, the new [if newgender < 4]male[else if newgender > 4]female[else]herm[end if] kangaroo is sent off to join the roo who first brought in the prize to become their fucktoy lover. You can't help but smile despite what you've done, unable to feel bad about turning that poor person into another roo slut, because being a roo feels so wonderful right now. They're a happy roo, you're a happy roo, and all the roos around you are happy as well, so you feel it's for the best. With the floor show over, the party seems to be breaking up and it's time you got back to the other tasks you have before you. Since you did get to be here for one of the big shows, you'd best wait at least an extra day before coming back next time, so no one gets too upset about your privilege to get in more than most.";

[ newgender results ]
[ 1 or 2 = male     ]
[ 3 = herm          ]
[ 4 or 5 = female   ]


Section 4 - Gillian's Flat

Table of GameRoomIDs (continued)
Object	Name
Gillian's Flat	"Gillian's Flat"

Gillian's Flat is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Gillian's Flat is "     Located above the Down Under Pub, Gillian the barmaid's been living here. It's nothing fancy, but it certainly beats living out on the streets, especially these days. The studio apartment is sparsely decorated, having a loveseat and a bed and not much else. The small dining table's pushed up against one wall, probably to leave more room for that big tail of hers to swing around. There's a couple of generic motivational posters up on the wall.[line break]     From here, going [bold type]down[roman type] the stairs will take you to the pub. Exiting and heading [bold type]east[roman type] will lead you back to towards the district's entrance.".
[Downtopub is a door. Downtopub is below Gillian's Flat.

Table of GameRoomIDs (continued)
Object	Name
PlaceholderforDUP	"PlaceholderforDUP"

PlaceholderforDUP is a room. PlaceholderforDUP is below Downtopub.
EasttoRLD is a door. EasttoRLD is east from Gillian's Flat.

Table of GameRoomIDs (continued)
Object	Name
PlaceholderforRLD	"PlaceholderforRLD"

PlaceholderforRLD is a room. PlaceholderforRLD is east of EasttoRLD.	]

Table of GameRoomIDs (continued)
Object	Name
PlaceholderforDUP	"PlaceholderforDUP"

PlaceholderforDUP is a room. PlaceholderforDUP is down from Gillian's Flat.

Table of GameRoomIDs (continued)
Object	Name
PlaceholderforRLD	"PlaceholderforRLD"

PlaceholderforRLD is a room. PlaceholderforRLD is east from Gillian's Flat.

the scent of Gillian's Flat is "The room smells of the female roo living there.".

instead of going down from Gillian's Flat:
	say "     You head on down the stairs to visit the pub.";
	move player to Down Under Pub;

instead of going east from Gillian's Flat:
	say "     You go down the stairs and strike out to the east, returning towards the district's entrance.";
	move player to Entrance to the Red Light District;


Section 5 - Gillian

Table of GameCharacterIDs (continued)
object	name
Gillian	"Gillian"

Gillian is a woman. Gillian is in Gillian's Flat.
The description of Gillian is "[gilliandesc]".
The conversation of Gillian is { "Work!" }.
the scent of the Gillian is "[gillianscent]".
the fuckscene of Gillian is "[sexwithgillian]".
The icon of Gillian is Figure of Gillian_icon.

to say gillianscent:
	say "Her fine scent is a mix of pub fare, aroused roo and marsupial sex.";

to say gilliandesc:
	say "     Gillian is the sexy kangaroo doe working as a waitress in the pub downstairs. Standing almost six and a half feet tall after her transformation into a red kangaroo, she's also got a curvy hips and a long, thick tail as well. She's often got a happy grin on her face with a lustful glint in her eye as she looks back at you. You find her quite pretty, her human-marsupial body and muzzled face [if player is redroobodied]making her very attractive to your new form[else]giving her an exotic beauty that always manages to get you aroused[end if].";
	say "     Whether because it's the only one she has that'll fit her new body or just because she likes it, she wears her skimpy waitress outfit even during her off hours. It's comprised of a tight top that can only partially cover her buoyant breasts and a low-cut mini-skirt. You're intimately aware that she never wears anything under the skirt, as she prefers being ready for immediate access.";

instead of conversing Gillian:
	if HP of Gillian < 4:
		say "     ERROR-Gillian-[HP of gillian]T: You should not be able to speak to me at this point!";
	else if HP of Gillian is 4:
		say "     Gillian gives you a big hug and a lustful kiss, running her paws over your body. 'Mmm... I'm so glad you've decided to come. As much as I like all the fun I can have downstairs in the pub, it's nice to get some one-on-one time with my special friends. I know the place doesn't look like much, but it's all I really need,' she says, bouncing her ass on the edge of the bed as she grins at you.";
		increase HP of Gillian by 1;
	else:
		say "     [one of]'I used to have more stuff, but I got rid of most of it a while ago. Who needs electronics junk that doesn't work any more? My bed's plenty of entertainment.'[or]'You should just stay here with the rest of us roos. I'm sure we can find something for you to do the help out downstairs.'[or][if player is redroobodied]'Don't you like being a sexy roo now?'[else]'Didn't you prefer being a roo hotty over that bod? I mean, it's not [italic type]bad[roman type], but I think you were waaaay cuter as a sexy kangaroo.'[end if][or]'I used to go by Jill, but that gets confusing around all the other girl roos, so I have to use my proper name.'[or]'It's not easy sometimes to keep the pub stocked, but a bunch of the others are eager to help out so we can keep the place running.'[in random order]";

to say sexwithgillian:
	if lastfuck of Gillian - turns < 4:
		say "     Whoa there, hot stuff! That sounds great and all, but I've got to save some energy for work, too.";
	else if HP of Gillian < 4:
		say "     ERROR-Gillian-[HP of gillian]F: You should not be able to fuck me right now!";
	else if HP of Gillian is 4:
		say "     You should probably talk to her first before jumping into bed with her. Show a little class.";
	else:
		say "     Gillian smiles happily at your suggestion of sex. 'Yeah, let's have some fun,' she says as she pushes you eagerly over to the ";
		let gilliansexlist be { 1 }; [give cunnilingus]
		if player is not neuter, add 2 to gilliansexlist; [69]
[		if player is male, add 3 to gilliansexlist; [get blow job]			]
		if player is male, add 4 to gilliansexlist; [fuck her]
[		if player is female, add 5 to gilliansexlist; [strap-on: vaginal]		]
[		if anallevel is 3 and cunts of player is 0, add 6 to gilliansexlist; [strap-on: anal]	]
		sort gilliansexlist in random order;
		if entry 1 of gilliansexlist is lust of Gillian, reverse gilliansexlist; [avoids repeats unless only option]
		now lust of Gillian is entry 1 of gilliansexlist; [saving selection for next time]
		if entry 1 of gilliansexlist is 1, say "[gilliansex01]";
		if entry 1 of gilliansexlist is 2, say "[gilliansex02]";
		if entry 1 of gilliansexlist is 3, say "[gilliansex03]";
		if entry 1 of gilliansexlist is 4, say "[gilliansex04]";
		if entry 1 of gilliansexlist is 5, say "[gilliansex05]";
		if entry 1 of gilliansexlist is 6, say "[gilliansex06]";
		now lastfuck of gillian is turns;
		infect "Red Kangaroo";


to say gilliansex01:	[give cunnilingus]
	say "sofa. Flopping down on it, she drapes one leg across it and puts the other on the floor. 'Mmm... I'm always giving others the attention they need. My hot pussy here could use some attention of its own. Why don't you get down there and eat me out?' She's already fingering her pussy and spreads her wet folds open for you in a tantalizing display. With such a sexy prize in sight, you lick your lips and dive right in.";
	say "     'Oh, that's a good [if player is female]girl[else]boy[end if],' she moans, rubbing your head as you work your tongue over and into her cunny. You bring your fingers in on the action, caressing the juicy petals of her honeyed flower, heightening her pleasure (and the volume of her moaning). Her paw-like hands move to her chest, playing with her buxom breasts and tweaking her perky nipples.";
	say "     As you're about to slip a pair of fingers into her, she pushes your hand back. 'Not so fast. I want to savor this.' Heeding her request, you work at pleasuring her steadily, making for a long, drawn out session. Your tongue and fingertips lavish attention upon her pussy and clit. You only are given permission to stuff those waiting digits into her after she's had several smaller orgasms. That final round of vigorous finger-fucking brings her to a crashing climax that has her cry out loudly and soak your face in her juices.";

to say gilliansex02:	[69]
	say "bed. Pushing you down onto it, she moves atop you, face to crotch. Provided with an eyeful of her succulent pussy, you dive right in. She moans happily at your eagerness and soon has her muzzle pressed to your loins. ";
	if player is male:
		say "     She starts by nuzzling and kissing at your manhood before licking from your [if player is female]pussy[else if cockname of player is not listed in infections of internallist]balls[else]taint[end if] to your glans. She swirls her tonguetip around it a few times before lowering her muzzle down over your shaft. [if cock length of player > 30]With considerable effort to deal with your exceptional manhood[else if cock length of player > 20]With some effort to deal with your enlarged manhood[else]Taking it slow to savor it[end if], she works her muzzle and throat down over the whole of your [cock size desc of player] cock.";
		say "     When she feels that the pleasure of this is distracting you too much from your own task, she grinds her meaty hips down onto you, pressing her pussy down onto your face. Grabbing that rounded roo ass of hers, you dive in with renewed zeal. Your tongue brushes across her folds and licks across her firm clit. After a few rounds of this, you wriggle it into her cunny, wetly caressing her inner walls and lapping up her juices. She moans in appreciation around your shaft, rewarding you with extra vigor of her own.";
		say "     With you both going at the other's crotch so lustfully, it's not long before your lusts boil over into orgasm. Her honeyed juices flow across your tongue and soak your face while you feed the buxom kangaroo your [cum load size of player] load. She grinds her quivering mound down onto your face as she sucks every drop of spunk she can get from you. Only once she's satisfied that you've got no more to give, at least for the moment, does she release your shaft and roll off of you. Flopped out on the bed beside you, you both need a several minutes to recover.";
	else:
		say "     She starts by kissing and nibbling along your thighs, drawing steadily to your [cunt size desc of player] pussy. It is given several kisses and licks before narrowing in on your clit and lavishing attention upon that sensitive spot. She starts to alternate between lapping and sucking on your clitoris and pumping her tongue into your dripping vag.";
		say "     When she feels that the pleasure of this is distracting you too much from your own task, she grinds her meaty hips down onto you, pressing her pussy down onto your face. Grabbing that rounded roo ass of hers, you dive in with renewed zeal. Your tongue brushes across her folds and licks across her firm clit. After a few rounds of this, you wriggle it into her cunny, wetly caressing her inner walls and lapping up her juices. With her tongue still buried in your cunt, she moans in appreciation and rewards you with extra vigor of her own.";
		say "     With you both going at the other's crotch so lustfully, it's not long before your lusts boil over into orgasm. Her honeyed juices flow across your tongue and soak your face while your vaginal walls quiver around her probing tongue. She grinds her quivering mound down onto your face as she every drop of femcum she can get from you. Only once the last aftershocks of your mutual orgasms have ended does she move her muzzle back and roll off of you. Flopped out on the bed beside you, you both need a several minutes to recover.";

to say gilliansex03:	[blow job]
	say "couch. ***";

to say gilliansex04:	[fuck her]
	say "bed. While sharing a lustful kiss with you, she fondles your [cock of player] manhood. Once she's gotten you ready, she lays down on her chest and hikes her meaty ass in the air, tail held high and dripping cunny on open display. 'Come and get it, babe. I want a good, proper pounding from you this time. It's great having sex downstairs for the crowd, but it's always so rushed.'";
	say "     You run your hands over her softly-furred rear as you move into position. You take hold of your cock with one hand and diddle her pussy with the other, loving the way she grinds back against your fingers with a clear lust for more. Eager to give it to her, you let your glans kiss her juicy folds before thrusting firmly into her. You grab one arm around her thick tail and her ass with the other for support and start pounding into her.";
	say "     Mindful of her need for a good, long fucking, you do your best to pace yourself, taking pauses to slow your vigorous thrusting or shift to caressing her luscious body for a time. This allows you both to draw out the pleasure of your lovemaking and build yourselves up to ever-increasing levels of excitement. Eventually though it becomes too difficult to hold back and you eventually go wild with frantic thrusting until you unleash your [cum load size of player] load into her needy cunt. Your first few spurts are enough that she can no longer hold back and she moans loudly, clamping her cunt around your shaft like a vice during an extended orgasm. By the end of it, she's left panting for breath and your cock is fully drained and even a little sore - though in a way that feels deeply satisfying.";

to say gilliansex05:	[strap-on: vaginal]
	say "floor. ***";

to say gilliansex06:	[strap-on: anal]
	say "floor. ***";


Section 8 - Definitions

definition: Down Under Pub is open:
	if remainder after dividing turns by 8 > 5 or ( remainder after dividing turns by 8 < 1 and remainder after dividing turns by 8 > -3 ) or remainder after dividing turns by 8 is -8:			[visits allowed from noon to midnight]
		no;
	else:
		yes;


Section 9 - Random Sluts

[reclaimed from Strange Sluts]
slutname is a text that varies. slutname is usually "hound dog".

to say randomdesc:	[male]
	let T be a random number between 1 and 15;
	if T is 1:
		now slutname is "husky";
	if T is 2:
		now slutname is "hawk";
	if T is 3:
		now slutname is "panther";
	if T is 4:
		now slutname is "Anthro Rabbit";
	if T is 5:
		now slutname is "bear";
	if T is 6:
		now slutname is "stag";
	if T is 7:
		now slutname is "cheetah";
	if T is 8:
		now slutname is "kangaroo";
	if T is 9:
		now slutname is "skunk";
	if T is 10:
		now slutname is "bull";
	if T is 11:
		now slutname is "zebra";
	if T is 12:
		now slutname is "mouse";
	if T is 13:
		now slutname is "tiger";
	if T is 14:
		now slutname is "hyena";
	if T is 15:
		now slutname is "wolf";

to say randomdesc2:	[female]
	let T be a random number between 1 and 15;
	if T is 1:
		now slutname is "husky";
	if T is 2:
		now slutname is "hawk";
	if T is 3:
		now slutname is "panther";
	if T is 4:
		now slutname is "bunny";
	if T is 5:
		now slutname is "bear";
	if T is 6:
		now slutname is "doe";
	if T is 7:
		now slutname is "cheetah";
	if T is 8:
		now slutname is "kangaroo";
	if T is 9:
		now slutname is "skunk";
	if T is 10:
		now slutname is "cow";
	if T is 11:
		now slutname is "zebra";
	if T is 12:
		now slutname is "mouse";
	if T is 13:
		now slutname is "tigress";
	if T is 14:
		now slutname is "hyena";
	if T is 15:
		now slutname is "wolf";

[ HP of Gillian               ]
[ 0 = no contact              ]
[ 1 = first visit             ]
[ 2 = sex her up again in pub ]
[ 3 = sex again in pub        ]
[ 4 = invited up to her flat  ]
[ 5 = spoke w/Gillian         ]

[ libido of Gillian     ]
[ positions for pub sex ]

[ lust of Gillian ]
[ last sex position number ]

Down Under Pub ends here.
