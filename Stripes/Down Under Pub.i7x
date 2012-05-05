Version 2 of Down Under Pub by Stripes begins here.
[Version 2 - Aussie Pub now a repeatable location]

"Adds a Roo-infested pub to Flexible Survival with visitation restrictions and instant departure."

Section 1 - Aussie Pub Event

Aussie Pub is a situation.
The sarea of Aussie Pub is "Red";
lastpubvisit is a number that varies.
pubvisit is a number that varies.
when play begins:
	add Aussie Pub to badspots of girl;
	add Aussie Pub to badspots of guy;
	add Aussie Pub to badspots of hermaphrodite;
	add Aussie Pub to badspots of furry;

Instead of resolving a Aussie Pub:
	say "     While exploring the area, you come across an Australian themed pub previously called 'Down Under'.  Some bright blue paint has been used to add 'TAKE ME' to the front of its name.  Through the windows, you can see there are lots of carousing and arousing kangaroos in the pub.  You can see them eating, drinking and/or fucking with uproarious enjoyment inside.";
	if the bodyname of player is "red kangaroo":
		say "     You feel a longing to join them.  Do you enter? (Y/N)";
		if player consents:
			say "     Giving into the urge, you step over to the door and go in.  There is a brief lull in the sound at your entrance, but it quickly picks up again.  You are one of them and welcome.  Some beer and food are put in front of you by a sexy kangaroo doe in a tight top.  Seeming eager to greet the newcomer, she[apostrophe]s soon under the table and lapping at your groin.";
			if cocks of player > 0:				[ MALE/HERM! ]	
				say "     After a long bout of teasing while you enjoy the meal you[apostrophe]ve been given, you pull the doe up to sit in your lap, driving your cock into her and plowing her good and hard.  You run your hands over each other[apostrophe]s body while she bounces on your cock, using her strong roo legs.  You play with her breasts and suck her nipples while she moans lustily.  The other patrons near you slap your back in encouragement, joking about how she likes to break in every newcomer.  From what you can gather, seeing how your focus is always drawn back to the buxom doe in your lap, is that you[apostrophe]re managing to last longer than most.  You do eventually pop off, blasting your hot seed into her gripping tunnel.";
			otherwise:						[ FEMALE! ]
				say "     After a long bout of teasing while you enjoy the meal you[apostrophe]ve been given, you pull the doe up into your arms.  You run your hands over each other[apostrophe]s body, playing with her breasts and sucking her nipples.  She calls over to the bartender for something she calls her 'double-duty', which turns out to be a double-ended dildo that she[apostrophe]s soon sharing with you, much to the enjoyment of the crowd.  The other patrons near you slap your back in encouragement, joking about how she likes to break in every newcomer.  From what you can gather, seeing how your focus is always drawn back to the buxom doe in your lap, is that you[apostrophe]re managing to last longer than most.  You are eventually struck by a thunderous orgasm that leaves you spinning for a few minutes.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Once she[apostrophe]s done with you, she gives you a kiss and heads off to deal with the other patrons, who seem to be happy to trade a delay in service for her usual sex show.  You[apostrophe]re informed by a friendly joey in the next booth that they have a generator hooked up for power and they[apostrophe]ve syphoned gas from the nearby station to run it.  'Just like Mad Max', he says with a laugh.  You carouse with them for hours, a romp of drinking, singing and sex.";
			say "     The main attraction comes as you[apostrophe]re finishing up a fulfilling fuck under a strong, masculine boomer who plows you good and hard. From somewhere in the back, probably having been locked in a store room, a dog-eared man is dragged out.  He[apostrophe]s got a collar and leash on and nothing else.  He[apostrophe]s spread across a table and held down, with many of the roos taking turns to fuck him, changing him more and more into another kangaroo like yourselves.  Once the buck atop you has filled you with his cream, you[apostrophe]re off like a shot to screw the increasingly willing hybrid, caught up in the moment with the lascivious roos.";
			if cocks of player > 0:				[ MALE/HERM! ]	
				say "     You get lucky, getting there just as he gets a new pussy, which you quickly fill with your cock.  You lick and kiss the rising breasts on the new jill[apostrophe]s chest, taking perverse satisfaction in helping to change the mostly human-male into a herm doe for you and the others to fuck.  Eventually, after you and many others have filled her with your seed, shi[apostrophe]s released from the table.  Shi eagerly joins the first buck who took hir in his booth, showing hir appreciation by sucking him off.";
			otherwise:						[ FEMALE! ]
				say "     Having just finished with the boomer, you bring you messy pussy above the playtoy[apostrophe]s lips, letting it drip down onto him.  He has his tongue up in your pussy almost immediately, seeking that thick, virile taste.  He licks and teases your pussy aggressively as he seeks out every drop of roo cum he can get.  From your vantage point above him, you get to watch as a new, wet slit forms under his balls, wet and dripping with need.  You lick and finger hir in return, taking perverse satisfaction in helping to change the mostly-human male into a herm doe for you and the others to enjoy.  Eventually, after you and many others have finished playing with hir, shi[apostrophe]s released from the table. Shi eagerly joins the first buck who took hir in his booth, showing hir appreciation by sucking him off.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Eventually, the party winds down, appetites (both carnal and more mundane) are sated and you head off with several of the others.  As you're heading out though, the barmaid pulls you in close for another kiss.  Grabbing your ass, she whispers that you should come back again in a few days and she'll let you in.  You'd heard from the crowd that roos are allowed a visit a week because of the need for supplies and the popularity of the location.  But it seems the serving girl's taken a liking to you and let you come every two or three days.  Part of you feels quite drawn to the rambunctious roos and you look forward to finding more to have fun with in the future and looking forward to another visit to the pub.";
			infect "red kangaroo";
			infect "red kangaroo";
			decrease humanity of player by 18;
			decrease thirst of player by 30;
			decrease hunger of player by 12;
			increase score by 25;
			if hunger of player is less than 0:
				now hunger of player is 0;
			if thirst of player < 0:
				now thirst of player is 0;
			increase pubvisit by 1;
			now lastpubvisit is turns;
			now Down Under Pub is known;
			say "[line break]";
			Now Aussie Pub is resolved;
		otherwise:
			say "     You resist the temptation and head off with a little more resolve.";
			increase score by 1;
			increase humanity of player by 5;
			say "[line break]";
			Now Aussie Pub is resolved;
	otherwise:
		say "     You decide it[apostrophe]d probably be best to head for sneak away before you[apostrophe]re noticed.  Only another kangaroo could safely approach this location.";


Section 2 - Down Under Pub

Down Under Pub is a room. "[down under pub scene]". It is unknown. It is fasttravel. It is private.

to say down under pub scene:
	if bodyname of player is not "red kangaroo":
		say "     It probably would not be safe to approach the Aussie pub if you're not a roo like them, even if you've been there before.  You could find yourself spread out on a table and shared until there's nothing but roo in you.  Mmmm... No!  As nice as that sounds, you need to hold on to your sanity.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Lacking any proper equipment, somehow you just don't feel the same urge to return to the pub as you once had and decide to pass on visiting it for the moment.  Besides, perhaps tending to your poor, neutered groin is a higher priority than a night of drinking.";
	otherwise if lastpubvisit - turns < 14:
		say "     While you are welcome back at the Down Under Pub, they have limited supplies and have asked that patrons wait a week between visits.  Since the barmaid likes you so much, you can probably get in every few days, but you don't want to push it too much.  You can probably get away with coming back every two or three days.";
	otherwise if remainder after dividing turns by 8 > 5 or ( remainder after dividing turns by 8 < 1 and remainder after dividing turns by 8 > -3 ) or remainder after dividing turns by 8 is -8:			[visits allowed from noon to midnight]
		say "     The pub, like in its days before the infection, is only open from noon to midnight.  You should keep an eye on your watch and try back then.";
	otherwise:
		[puts red kangaroo as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "red kangaroo":
				now monster is y;
				break;
		let rooness be 0;
		say "     Returning to the pub again, you smile to the barmaid as you enter and give her rear a pat before taking a seat.  The barman grunts a little, but seeing your friendliness with his server, lets it slide.  Looking around, a few faces seem familiar from the crowd, but it's mostly a new group of roos today.  There must be quite a few of them around, you conclude.  This makes you smile, rather enjoying your new body now that you're in the company of all these boomers and jills.  Speaking of, you giving the server a lusty kiss as she comes over with your food and drink.";
		if a random chance of 3 in 10 succeeds:
			increase rooness by 1;
			if cocks of player > 0:
				say "     It seems luck's on your side this time, as she's got a few minutes to spend with you and she's under the table, licking and sucking at your cock eagerly.  You moan in pleasure and rub her ears as her long muzzle bobs over your meaty shaft.  Once you're nice and slick, she's up again and into your lap for a ride.  Many of the other patrons nearby turn their attention to watch the show with grins, so you resolve to make the most of it.  Taking her strong roo legs in your hands, you raise them up high so everyone gets a good view of your cock plowing into her.  Getting in on the show, she fondles her bosom and holds on of her breasts up so she can lick her nipple slowly.  Turned on by showing off your lover to the others, you have a very enjoyable fuck before shooting your hot load into her.  Setting her back down, you give her another kiss and pat on the rear to send her back to her duties.";
			otherwise:
				say "     It seems luck's on your side this time, as she's got a few minutes to spend with you and she's under the table, licking and lapping at your pussy eagerly.  You moan in pleasure and rub her ears as her tongue dives into you again and again.  Many of the other patrons nearby turn their attention to watch the show with grins, so you resolve to make the most of it.  Patting her side and turning in your seat, you raise one of your powerful roo legs high, spreading yourself.  Getting in on the fun, she nibbles and kisses along your thighs so the others can get a peek at your dripping snatch before she dives back into eating you out.  With her own tail raised high and her fingers in her snatch, she fingers herself wildly, much to the crowd's delight.  Turned on by showing off your lover to the others, you have a very enjoyable time before finally cumming hard and soaking her muzzle in your juices.  Setting her back down, you give her another kiss (which tastes of you) and pat on the rear to send her back to her duties.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     After your meal, you hang out and chat with a bunch of the sexy kangaroos.  After some arousing carousing, you find yourself feeling in the mood for some fun.  Drunk, aroused and caught up in the moment as you are, you offer yourself up to the sexy roo beside you.  You snuggle up close to the roo, fondling them as you kiss.";
		let randomroos be { 1 };					[manly boomer]
		if cocks of player > 0, add 2 to randomroos;		[girly joey]
		if cocks of player > 0, add 3 to randomroos;		[horny jill]
		if cunts of player > 0, add 4 to randomroos;		[lez jill]
		if cunts of player > 0, add 5 to randomroos;		[roo pair]
		sort randomroos in random order;
		if entry 1 of randomroos is 1, say "[roopubsex1]";
		if entry 1 of randomroos is 2, say "[roopubsex2]";
		if entry 1 of randomroos is 3, say "[roopubsex3]";
		if entry 1 of randomroos is 4, say "[roopubsex4]";
		if entry 1 of randomroos is 5, say "[roopubsex5]";
		now lastpubvisit is turns;
		increase rooness by 1;
		if a random chance of 1 in 5 succeeds and rooness is not 2:			[conversion show]
			wait for any key;
			say "[roofloorshow]";
			now lastpubvisit is turns - 8;			[wait extra day after a tf show]
			increase rooness by 1;
			increase score by 10;
		decrease humanity of player by 10;
		infect "red kangaroo";
		if rooness > 1:
			infect "red kangaroo";
			decrease humanity of player by 8;
			increase morale of player by 3;
			now libido of player is ( libido of player * 4 ) / 5;
		decrease thirst of player by 15;
		decrease hunger of player by 12;
		if hunger of player is less than 0:
			now hunger of player is 0;
		if thirst of player < 0:
			now thirst of player is 0;
		increase pubvisit by 1;
		say "[line break]";
	say "     With your visit to the Aussie pub over, you head back to the nearby Red Light District to decide where to head next.";
	wait for any key;
	move the player to Entrance to the Red Light District;


Section 3 - Various sex scenes

to say roopubsex1:
	say "     The sexy male roo puts his strong arms around you and runs his paws down your back even as your paws find their way to his throbbing cock.  He's quite hard and eager for some fun as well.  The serving girl winks at you as she clears the table, making room for you to be bent over it by the big boomer.  He kneads his paws over your ass and rumbles how he's been looking forward to this since you came in.  He lines up his throbbing shaft with your [if cunts of player > 0]dripping cunt[otherwise]tight pucker[end if] and slowly starts easing his tapered, roo-like cock into you, making you moan in pleasure.";
	say "     His strokes are strong and firm, giving you a good, strong fucking as soon as you've grown accustomed to his girth.  But he is sensual as well, nibbling and kissing at your neck while his paws roam over your body before finding their way to your [if cocks of player > 0]twitching cock[otherwise]stuffed pussy[end if] to caress it.  You wriggle and moan beneath him, loving all the attention as well as the feel of his large penis stuffed inside your [if cunts of player > 0]needy cunt[otherwise]snug bottom[end if].  When he drives hard into you one last time, rocking the table and spilling the drinks, you can feel the hot rush of his roo cum flooding your [if cunts of player > 0]womb[otherwise]bowels[end if].  Having left quite a load in you, you wipe away the leaking excess with some napkins from the table, getting a few whistles and catcalls from those watching.[impregchance]";


to say roopubsex2:
	say "     The slender, girly joey rubs his body against yours, letting his paws wander down to you cock and stroking it, eagerness in his eyes as he looks over your [cock size desc of player] [cock of player] penis.  You stroke his cute body and soft fur as you consider what you'd like to do with this eager young man.  He licks his lips and moans softly as you give his rear a squeeze.  You could let him suck you off, though you could probably bend him over the table and fuck him as well, if you'd prefer. (Y=oral, N=anal)";
	if the player consents:
		say "     Rubbing a paw through his long, curly headfur, you gently guide the roo's muzzle down to your throbbing cock.  As his lips slide around it and his tongue sets to work, you are quite pleased with your decision.  Clearly not unfamiliar with the act, he starts giving you a fine blowjob.  His tongue slides along the underside and over your glans repeatedly while his muzzle bobs over your [cockname of player] shaft.  You rub his head and shoulders as you lean back to enjoy the slow, sensual sucking.  Feeling his paws on one of your large, roo feet, he caresses your paw and brings it to press against his cock, moaning softly as he slides his leaking member against it.  After a long and enjoyable blowjob, you pull the roo's head down over your cock and send your hot seed down his throat.  He's set off as well, spraying his load onto your long paw, though he's good enough to lick it all clean afterwards, forcing you to stifle your giggles as his tongue plays between your toes while the others around tease you and crack jokes.";
	otherwise:
		say "     Grabbing the little guy, you grin as you grab his tail and fondle his bottom.  The serving girl winks to you as she clears a spot on the table, making room for you to bend the girly young boomer over it.  You spread his cheeks and look at his tight, pink pucker, ready and waiting for you.  Lining up your [cockname of player] cock with his tailhole, you dribble pre onto it as he moans in anticipation.  After a little teasing, you press forward, slipping into his bottom rather easily, clearly a well-practiced roo at bending over for the big boomers.  With a few thrusts, you sink you shaft into him and start fucking him while the others around the table watch the show.  Reaching around, you take the roo's throbbing cock in hand and pump it firmly.  You go for a nice, slow ride to get him good and worked up before finishing with a few hard thrusts that make him blast his load into an empty stein someone holds out.  Watching the girly young male beneath you guzzle down his own cum when the mug's handed to him, you push hard into him one last time and paint his bowels with your seed.  Giving him a little swat on the ass, you withdraw and take your seat again, laughing as he's pulled into the lap of another for sloppy seconds.";


to say roopubsex3:
	say "     The big-breasted jill in your arms giggles sweetly and takes your cock in her paws.  Rubbing at your stiff meat, she presses her ample bosom to your chest.  Her breasts, you feel, would give a fine titty-fuck, though a ride in your lap may be more what you're in the mood for this time.  Which shall it be? (Y=tit-fuck, N=sex)";
	if the player consents:
		say "     Deciding you want those fuzzy globes around your shaft, you give her breasts a teasing squeeze and tell her you'd love to see your meat between her lovely breasts.  Beaming as you compliment her rack, she quickly gets down on her knees and presses her softly furred tits around your shaft.  She squeezes those soft globes against your flesh, licking and kissing your glans as she rubs them along your penis.  You rumble in pleasure and lean back, enjoying the attention.  The sight of her furry mounds around your cock is very nice indeed.  As you get close, you let her know you're about to blow and she works all her breasts against your meat all the more firmly until finally you blow, blasting your load across her face and bosom.  She then grins and gets up, not bothering to clean herself off at all, instead leaving your semen on to show what a slutty girl she is.  And given the calls for attention she gets from others in the room, it clearly works to get her another lover right away.";
	otherwise:
		say "     Pulling her into your lap, you sit her facing you so you can bury your face in her lovely globes even as you bury your cock in her furry mound.  She moans happily and rides in your lap, bouncing on her muscled roo legs.  You lick, kiss and suck at her nipples while running your hands over her softly furred flesh.  The ride is hard and fast, soon getting you to blow your load into her eager pussy.  Your cries of orgasm are muffled by her large bosom, pulling your face between those big breasts as she cries out in pleasure as well.  As soon as you're done, she's up and off from your lap, looking for another lover with a giggle and a swish of her tail.";


to say roopubsex4:
	say "     The sexy jill in your arms has smaller breasts compared to the other roos girls around and wears her hair short.  Her paw moves quickly [if cocks of player > 0]past your cock [end if]to your wet snatch, teasing your sensitive folds.  Pulling you up from your seat, she gives the serving girl's ass a swat, eliciting a giggling moan as she clears the table quickly.  Your lover of the moment pushes you up to lay back on the sturdy table before climbing atop it as well,  Bringing her groin to your face, she presents her pussy to you even as she dives in and starts licking at yours lustfully.  You decide to slip a pair of fingers into her and start licking and kissing her clit.  Clearly enjoying what you're doing, she works your snatch all the more eagerly[if cocks of player > 0].  She even gingerly takes hold of your cock and gives it a few light strokes, but her focus is clearly on your womanly parts[end if].  The others around the table watch the show happily, holding their drinks as you two roll around on the table for a while, swapping positions a few times before finishing as you started, with her hot juices flowing down over your paw and face as she laps up yours as your both cum loudly.";


to say roopubsex5:
	say "     The male boomer nibbles along your neck and slides back to the corner of the booth, guiding you to sit on the bench and suck his cock.  But just as you're about to take his throbbing meat into your mouth, you feel another pair of paws on your backside.  Looking back, you see another roo, almost identical to your partner as to be brothers or even twins.  They wink at you and the first one pats your head, turning you back to his cock.  Not one to complain about getting two for the price of one, you start sucking and bobbing over the roo's throbbing cock even as his brother lines himself up with your pussy.  You moan around the leaking shaft as you're mounted and they start fucking you from each end.  You rumble in pleasure, enjoying the fine rhythm these two are able to keep, making for a long and enjoyable ride without any unevenness in the motion to distract you from the wonderful time you're having.  Eventually the brothers have had all they can take and both thrust deep inside you before unleashing their hot loads down your throat and into your vagina and womb.  Once finished, the fist-bump and each give you a kiss before heading off to the bar for more drinks.[impregchance]";


to say roofloorshow:
	let randomgender be a random number between 1 and 2;
	if randomgender is 1, say "[randomdesc]";			[male creature list from Strange Sluts]
	if randomgender is 2, say "[randomdesc2]";		[female creature list from Strange Sluts]
	let newgender be a random number between 1 and 5;
	say "     It seems you've picked a fortunate time to come as another floor show starts up shortly after you finish up.  Another partially changed human is brought in for the group, this one a [if randomgender is 1]man[otherwise]woman[end if] with the head and paws of a [slutname].  [if randomgender is 1]He[otherwise]She[end if] is naked and trying to cover up with [if randomgender is 1]his paws as best he can[otherwise]her paws as best she can[end if], but the roos bringing in the new playtoy don't allow it, showing their prize off before laying [if randomgender is 1]him[otherwise]her[end if] down on the fucking table and taking turns.";
	say "     After several boomers and jills have had their chance, you get to move in and take a turn, finding they're well on their way to becoming another [if newgender < 4]sexy boomer[otherwise if newgender > 4]sexy jill[otherwise]sexy roo herm[end if].  Caught up in the excitement as you are, ";
	if cocks of player > 0 and newgender > 3:
		say "you eagerly move in to take your turn riding her.  Lining your cock up, you sink it into the increasingly eager roo slut's dripping and well-used snatch, pounding away at her.  She moans and writhes on the pleasure, changing further as you add your thick seed to the mix already filling her.  When finished, you move around to let her lick you clean even as the next boomer moves up to take your place.";
	otherwise if cunts of player > 0 and newgender < 5:
		say "you eagerly move in to take your turn riding [if newgender < 4]his[otherwise]her[end if] new roo cock.  With a moan of pleasure, you sink down onto it and bounce eagerly on your powerful legs until finally [if newgender < 4]he[otherwise]she[end if] can't hold back and a load of creamy roo cum blasts from their swelling balls.  When finished, you move around to let [if newgender < 4]him lick his semen[otherwise]her lick her semen[end if] from your recently creamed pussy, smiling at how eager they are to lap it up, even as the next jill moves in to take your place.";
	otherwise if cocks of player > 0:
		say "you stride up to his face, presenting your throbbing cock to him.  He moans softly and dives his reforming muzzle over it.  So far gone in his lustful transformation, he sets to licking and sucking at your cock hungrily.  You grin and rub his head and growing roo ears as you pump into his changing muzzle, unleashing your thick roo seed down his throat to join the many other loads he's swallowed in his bloated tummy.  As you move back, another jill moves in to ride his growing roo cock.";
	otherwise:
		say "you stride up to her face, presenting your leaking pussy to her.  She moans softly and dives her reforming muzzle between your thighs and starts licking eagerly.  So far gone in her lustful transformation, he sets to licking and lapping at your pussy hungrily.  You grin and rub her head and growing roo ears as your damp slit against her changing muzzle, soaking her face in your female juices and adding to those from several other jills before you.  As you move back, another boomer moves in to mount her again.";
	say "     When the show is done, the new [if newgender < 4]male[otherwise if newgender > 4]female[otherwise]herm[end if] kangaroo is sent off to join the roo who first brought in the prize to become their fucktoy lover.  You can't help but smile despite what you've done, unable to feel bad about turning that poor person into another roo slut, because being a roo feels so wonderful right now.  They're a happy roo, you're a happy roo, and all the roos around you are happy as well, so you feel it's for the best.  With the floor show over, the party seems to be breaking up and it's time you got back to the other tasks you have before you.  Since you did get to be here for one of the big shows, you'd best wait at least an extra day before coming back next time, so no one gets too upset about your privilege to get in more than most.";


Section 4 - Random Sluts

[reclaimed from Strange Sluts]
slutname is a text that varies. slutname is usually "hound dog".

to say randomdesc:
	let T be a random number between 1 and 15;
	if T is 1:
		now slutname is "husky";
	if T is 2:
		now slutname is "hawk";
	if T is 3:
		now slutname is "panther";
	if T is 4:
		now slutname is "rabbit";
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

to say randomdesc2:
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



Down Under Pub ends here.