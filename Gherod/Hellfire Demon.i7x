Version 4 of Hellfire Demon by Gherod begins here.

"Adds the kinky Hellfire Demons to be roaming around Red Light District in service of an unknown entity."

[Version 1 - File created - Gherod]
[Version 2 - New Victory Scene w/ Xaedihr and Male player]
[Version 3 - Updated Infection with lootlists and infection items. Leather Jockstrap moved to Hellfire Workers file.]
[Version 4 - Added new Victory scene - Worship the demon's feet.]

Section 1 - Lootlist

to say GenerateTrophyList_Hellfire_Demon:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "hellfire demon horn shard" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "soda" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "obsidian coin" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "libido pill" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 2 - Creature Responses

to say HellDemon wins:
	if HP of Player > 0: [player submits]
		say "     Unable to resist such a powerful presence, you immediately submit to the demon's will, his eyes following your movements with great satisfaction, as you kneel down in front of him. 'Finally someone who knows their place. That's a good start, but let's see how much you can handle.' With that said, the hellish creature prepares to use you as he sees fit...";
		if a random chance of 1 in 2 succeeds:
			HellDemonBJForced;
		else if Player is male or Player is neuter:
			HellDemonAnalForced;
		else if Player is female:
			HellDemonPussyForced;
	else: [player loses]
		say "     Unable to continue fighting the so mighty and powerful demon, you immediately give in to his will, his eyes following your movements with great satisfaction as you're forced to kneel down in front of him. 'You know how to put up a fight! That left me all boned up... Perfect, I was just thinking about testing your holes.' With that said, the hellish creature prepares to use you as he sees fit...";
		if a random chance of 1 in 2 succeeds:
			HellDemonBJForced;
		else if Player is male or Player is neuter:
			HellDemonAnalForced;
		else if Player is female:
			HellDemonPussyForced;

to HellDemonBJForced:
	project Figure of HellfireDemon_hard_icon;
	say "     He moves towards you, groping on his ever growing bulge as he approaches, barely contained by the dark jockstrap he's wearing. Without a warning, you feel his strong hand on the back of your head pushing you, your nose and face in general pressed against the by now massive bump in his reductive underwear. His musk is overwhelming, feels like a drug is taking over your system slowly, you could name it pheromones, but it gets harder to think the more you take it in through your nostrils. You're naturally compelled to just open your mouth and gobble up on the sizable protrusion. 'Like all the others, you just can't help it... Do we smell that good?' he teasingly asks, throwing a laugh by the time you're sliding your tongue all over it. You simply have no will of your own anymore, it's as if something took control of your actions and it's just impossible to fight it...";
	say "     All your work on his crotch just made the devil have to do something about this restrictive jockstrap, and so you hear a loud snapping sound as he tears the elastic band apart. Pushing your head away for a second, he takes it off and throws it away, now revealing his full length to you, throbbing harder than ever right in front of your eyes. 'Suck it. You'll enjoy, by the looks of it.' He doesn't even finish speaking and you're already, inexplicably, with your lips planted on the tip of his cock, slipping what you can of his glans inside as your tongue wiggles around them. You place your hands on his trunk thighs, each so wide than your can keep all your fingers stretched without curving down, only to find out you can't even find strength to offer any resistance force.";
	WaitLineBreak;
	say "     'No need to be shy...' he says with a coy tone, soon followed by a sudden pull made with his hand on the back of your head, progressively harder... Forcing you to take his cock a little deeper, nearly dislocating your jaw as he keeps pushing... adding 'Take it all in like the good bitch you are.' in the process. As this happens, ";
	if Player is submissive:
		say "you feel yourself craving to be used by this demon, and whoever he might want to bring along, over and over, your submissive tendencies starting to sprout out as the numerous possibilities arise in your mind. This feeling of his dick just stretching your mouth over it, burying itself in your throat, making you feel properly owned as it bulges out in your neck... Only if you could be tied up and left helpless to be facefucked by the hugest demonic cocks like this one... You're glad to let your mind slip away as he claims you, facefucking you like you're meant to be, each thrust harder than the last.";
	else:
		say "you feel a huge discomfort around your jaw as he keeps pushing his cock in, slipping past your tongue and into your throat all the way in, keeping you lightheaded and unable to breathe... His size is just too much for you to comfortably handle, and there's even an impressive bump in your neck with the thickness of his shaft throbbing inside your throat. You can't do anything about it, nor you have the will to resist, as he facefucks you, pulling and shoving his dick back in again and again, the next time harder than the last.";
	say "     Despite all this, your gag reflex is nonexistent, and you have no trouble in actually enduring his rough treatment. He's essentially fucking your throat, thrusting his hips as he keeps his grip on you tight, his big balls swinging back and forth heavily against your chin... 'We turn all our slaves into great cocksuckers... You're no exception.' Things are about to get [if Player is submissive]much better[else]very worrying[end if] as you hear his breath getting deeper and more intense, and he lets you know why. 'Time to swallow my load like a good [boygirl]...' He thrusts a couple more times, then fully buries the entirety of his length inside your throat... and you feel his meat throb intensely, followed by what you'd be expecting...";
	say "     'Fuck yesss...!' he moans and grunts, unloading heavy bursts of hot cum right through your esophagus. You don't get to taste any of it as it falls directly into your stomach, and he continues to ravage your mouth as more and more of it fills you. It is so much that your belly begins to bloat, and you're completely stuffed by the time his orgasm subsides, about a long minute after. 'Damned Hell, I needed this release on some untamed mouth... Delicious...' he comments as he pulls his cock out, and you inevitable cough some of his delicious semen out through your mouth. It's so sweet, and fills you so nicely... that you feel rather lightheaded.";
	WaitLineBreak;
	say "     With the deed done, the demon stands up and looks at you with a satisfied grin. 'You take it well, but you could still use some practice before I introduce you to Master. Keep sucking dick and getting fucked by the biggest ones you can find, it will do you good.' he says, before he retreats back to the shadows. You, however, can't do the same, as you're so dizzy that you end up falling against a wall on your attempt to walk. It takes a while until the drug-like effects of his powerful demonic seed subside.";
	CreatureSexAftermath "Player" receives "OralCock" from "Hellfire Demon";

to HellDemonAnalForced:
	project Figure of HellfireDemon_hard_icon;
	say "     He moves towards you, groping on his ever growing bulge as he approaches, barely contained by the dark jockstrap he's wearing. With a forceful push, he makes you bend over on fours with his overpowering might[if Player is not naked], stripping you of any gear in his sight,[end if] and slaps one of your asscheeks hard. 'All this fighting got me boned up! Hope you don't mind me taking your hole.' Completely helpless, you see the demon crouching down and diving his face between your buns, his long pointy tongue licking your pucker and pressing in deep. All you feel is this nimble extension of himself wiggling and squeezing itself inside, deeper than you could imagine he could reach, delivering a lot of pleasurable sensations that makes your anus relax. Soon, you feel odd, like you could take anything inside...";
	say "     'All ready for a good fuck now.' he says, pulling his tongue out of your wet hole and immediately replace it with his throbbing demonic cock. You can already feel it brushing against your pucker as he slowly and steadily pushes in. He grabs your hips and helps himself settle inside you, his throbbing meat being buried somewhat painfully in you for moments, before you become relaxed enough to start taking it in, which you're surprisingly able to do so. In this, he pounds slowly at first, only for a few moments, before he starts to raise the rhythm, making his heavy ballsac swing back and forth with powerful momentum. 'So tight...! Seems like you were born for this.' he keeps taunting you, fucking your ass relentlessly with slow and deeper thrusts.";
	WaitLineBreak;
	say "     With your insides so stretched around his huge demon cock, you remain impaled on it for several moments of being fucked deep and hard, with the devil now on top of you, smothering you against the harsh ground, whispering in your ear 'Who's a good bitch? Taking a huge dick in the ass... Yes, it's only you...' he taunts you, ";
	if Player is submissive:
		say "and you feel yourself craving to be used by this demon even more, and whoever he might want to bring along, over and over, your submissive tendencies starting to sprout out as the numerous possibilities arise in your mind. This feeling of his dick just stretching your hole over it, burying itself in your ass, making you feel properly owned as it fills you so well... Only if you could be tied up and left helpless to be fucked by the hugest demonic cocks like this one... You're glad to let your mind slip away as he claims you, wrecking your ass like it's meant to be, each thrust harder than the last.";
	else:
		say "and you still feel some pain in your ass as he keeps pushing his cock in, slipping so deep inside until he's ballsdeep in you, keeping you pinned down underneath him... His size is just too much for you to comfortably handle, and there's even a slight bulge on your belly with the thickness of his shaft throbbing inside your bowels. You can't do anything about it, nor you have the will to resist, as he fucks you, pulling and shoving his dick back in again and again, the next time harder than the last.";
	say "     As he gets harder and rougher with you, his grunting continues, louder than before, his grip around your body almost painfully tight, and soon he's fucking you so hard and deep you feel like you're going to get split in two. He continues, encouraged by your squirming, your own moaning bringing him pleasure and the will to give it all into you. 'Fuck... I'm going to fill you up so good!' You have no other choice but to await him to reach his climax, and soon enough, you're feeling an absurd amount of cum being delivered inside you, almost too hot for you to endure as your bowels are flooded with the hottest and thickest demonic seed for a long minute. He rests his length fully inside you, throbbing to the very last drop of cum, making your belly swell with the enormous amount of jizz sloshing inside you.";
	WaitLineBreak;
	say "     With the deed done, the demon stands up and looks at you with a satisfied grin. 'You take it well, but you could still use some practice. Keep sucking dick and getting fucked by the biggest ones you can find, it will do you good.' he says, before he retreats back to the shadows. You, however, can't do the same, as you're so full and so unexplainably dizzy that you can't even manage to stand on your feet. You have to it out for a while before you can proceed with your affairs.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Hellfire Demon";

to HellDemonPussyForced:
	project Figure of HellfireDemon_hard_icon;
	say "     He moves towards you, groping on his ever growing bulge as he approaches, barely contained by the dark jockstrap he's wearing. With a forceful push, he makes you bend over on fours with his overpowering might[if Player is not naked], stripping you of any gear in his sight,[end if] and slaps one of your asscheeks hard. 'All this fighting got me boned up! Hope you don't mind me taking your cunt.' Completely helpless to resist, the demon pushes you even lower, to the ground, as he tops you, grabbing you from underneath with just enough angle to be able to rub your vulva against his throbbing meat. He teases you too, groping your chest and rubbing you down all over, his scorching hot body and the air around him making you lose any will to struggle, arousal and wicked desire taking place, instead.";
	say "     'All ready for a good fuck now, aren't we?' he says, finally pressing his pulsing demonic cock against your labia. You can already feel it slipping inside as he slowly and steadily pushes in. He holds your arms down and helps himself settle inside you, his rock solid erection being buried somewhat painfully in you for moments, before you become relaxed enough to start taking it in, which you're surprisingly able to do so. In this, he pounds slowly at first, only for a few moments, before he starts to raise the rhythm, making his heavy ballsac swing back and forth with powerful momentum. 'Sliding in so easily... Someone's enjoying it, yeah? You were born for this.' he keeps taunting you, fucking your womanhood relentlessly with slow and deeper thrusts.";
	WaitLineBreak;
	say "     With your insides so stretched around his huge demon cock, you remain impaled on it for several moments of being fucked deep and hard, with the devil now on top of you, smothering you against the harsh ground, whispering in your ear 'Who's a good bitch? Taking a huge dick like that... Yes, it's only you...' he taunts you, ";
	if Player is submissive:
		say "and you feel yourself craving to be used by this demon even more, and whoever he might want to bring along, over and over, your submissive tendencies starting to sprout out as the numerous possibilities arise in your mind. This feeling of his dick just stretching your sex over it, burying itself in your needy cunt, making you feel properly owned as it fills you so well... Only if you could be tied up and left helpless to be fucked by the hugest demonic cocks like this one... You're glad to let your mind slip away as he claims you, wrecking your pussy like it's meant to be, each thrust harder than the last.";
	else:
		say "and you still feel some pain in your canal as he keeps pushing his cock in, slipping so deep inside until he's ballsdeep in you, keeping you pinned down underneath him... His size is just too much for you to comfortably handle, hitting your cervix more than once, although that pain too seems to subside the more he gives into you. You can't do anything about it, nor you have the will to resist, as he fucks you, pulling and shoving his dick back in again and again, the next time harder than the last... and all you can feel is addicting pleasure.";
	say "     As he gets harder and rougher with you, his grunting continues, louder than before, his grip around your body almost painfully tight, and soon he's fucking you so hard and deep you feel like you're going to get split in two. He continues, encouraged by your squirming, your own moaning bringing him pleasure and the will to give it all into you. 'Fuck... I'm going to fill you up so good!' You have no other choice but to await him to reach his climax, and soon enough, you're feeling an absurd amount of cum being delivered inside you, almost too hot for you to endure as your womb is flooded with the hottest and thickest demonic seed for a long minute. He rests his length fully inside you, throbbing to the very last drop of cum, making your feminine insides swell with the enormous amount of jizz sloshing inside you.";
	WaitLineBreak;
	say "     With the deed done, the demon stands up and looks at you with a satisfied grin. 'You take it well, but you could still use some practice. Keep sucking dick and getting fucked by the biggest ones you can find, it will do you good.' he says, before he retreats back to the shadows. You, however, can't do the same, as you're so full and so unexplainably dizzy that you can't even manage to stand on your feet. You have to it out for a while before you can proceed with your affairs.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Hellfire Demon";

to say HellDemon loses:
	say "     You successfully manage to fend off all of the demon's attacks while weakening him in the process. Though as the battle pressed on, you can't help but notice that he popped a boner out of fighting you, making his jockstrap... reduntant, to say the least, given the enormous size of his cock. '[Boygirl], you hit hard! That surely made me horny... I'll let you go, but I won't refuse some fun if you're down for it, sexy. Just a warning, though... I like it [bold type]rough[roman type].' With such a blunt proposal, [bold type]how will you proceed?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to suck his dick";
	now sortorder entry is 1;
	now description entry is "Get a taste of his demon cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship the demon's feet";
	now sortorder entry is 7;
	now description entry is "Work your tongue around those crimson toes";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Facefuck the demon";
		now sortorder entry is 2;
		now description entry is "Make him blow you and take it down his throat";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muscley ass";
		now sortorder entry is 3;
		now description entry is "Prepare his hole and give him a hard pounding";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Offer your ass for his pleasure";
		now sortorder entry is 4;
		now description entry is "Let him use your ass and give you a nice fuck";
	[]
		if demonologist is listed in companionList of Player and libido of Xaedihr > 0:
			choose a blank row in table of fucking options;
			now title entry is "Double tag him with Xaedihr";
			now sortorder entry is 99;
			now description entry is "Fuck him from both sides";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Sit on his face";
		now sortorder entry is 5;
		now description entry is "Make him lick your pussy";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Offer your pussy for his pleasure";
		now sortorder entry is 6;
		now description entry is "Let him use your pussy as he sees fit";
	[]
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
				if (nam is "Offer to suck his dick"):
					say "[HellDemonBJ]";
				else if (nam is "Facefuck the demon"):
					say "[HellDemonFacefuck]";
				else if (nam is "Fuck his muscley ass"):
					say "[HellDemonFuck]";
				else if (nam is "Offer your ass for his pleasure"):
					say "[HellDemonAnal]";
				else if (nam is "Sit on his face"):
					say "[HellDemonCun]";
				else if (nam is "Offer your pussy for his pleasure"):
					say "[HellDemonPussy]";
				else if (nam is "Worship the demon's feet"):
					say "[HellDemonFeet]";
				else if (nam is "Double tag him with Xaedihr"):
					say "[HellDemonXMale]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You take a step back and shake off your head, denying his offer. 'No? Heh... Your loss. Though I'm sure you'll change your mind.' he says, before retreating back into the shadows.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say HellDemonBJ:
	project Figure of HellfireDemon_hard_icon;
	say "     Seeing your eyes stop on the hot devil's more than prominent erection, throbbing and begging to break free of its constraints, he licks his lips in delight of having it exposed like that, and from seeing you stare at the considerable stain of precum he's making. 'Is it something you like? My, I can only get so hard...' he teases, before slipping his hands around the elastic band, then slowly sliding it down, revealing bit by bit his thick and veiny meat. Eventually, his cock pops out of his jockstrap like a spring, now free and pulsing even harder, and he parts with the underwear for good once you've also seen his sizable pair of cum-factories hanging heavily below. 'I suppose we won't need this anymore, now that you've seen everything.' he comments as he kicks the dirty jockstrap over to some corner. 'Come on, give it a taste. You won't regret it...'";
	say "     Now that he's got you under his spell, you don't think you could do anything to resist him. There's definitely something about him that makes you feel lightheaded, and you can't quite put your finger on it. But you can, however, get on your knees and put your hands around his large shaft, feeling its rock hard state throbbing within your grasp. He lets you take your time patiently, or perhaps he just loves seeing you stare at his proud erection, but only until a certain point, that is when his warm and strong hand slips to the back of your head and encourages you to meet the glistening tip with your lips. He feels really hot, as in literally, all of his skin many degrees above yours in temperature, and feeling his cock in your mouth feels like an entirely different experience.";
	WaitLineBreak;
	say "     Wiggling your tongue against his sensitive glans makes him leak a good amount of precum, which tastes sweet and extremely hot, and you try to get your lips around too. 'Can only take the tip, I assume?' - he teases you, throwing a chuckle - 'That's cute.' With a dick that big, it is indeed a challenge to provide its entirety consistent pleasure, although the demon gives a toothy smile at your dedication and encourages you to continue with a firm pat on your head. You'd think he would rush you, but he's just standing there, letting you explore his manhood at your own pace and getting lost in the experience. You use your hands to cover what you can't reach while your mouth covers the bumpy tip, as you are comfortable, and that seems to please the devil. The constant stream of demonic precum leaking out of his slit would suggest so.";
	say "     'I would in other circumstances just force my load in you, but... I'll leave that decision to you. I'm close, by the way.' he lets you know, and almost immediately you can feel his crimson rod getting almost too hot, as if about to erupt. You need to decide quickly [bold type]where you want his load[roman type], and judging by the size of his gonads, it shows promise...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Swallow it."; [gobble up his entire load... or fail trying to]
	say "     ([link]N[as]n[end link]) - Let it shoot wherever."; [well... gets bathed instead]
	if Player consents:
		LineBreak;
		say "     With your resolve set on swallowing all his sweet and warm load, you start jerking the demon's cock harder and faster while keeping your lips wrapped around it. 'I hope you enjoy it... F-fuck, it's coming...!' Following his stuttering words, you're surprised with a massive surge of cum instantly filling your mouth! You urge to swallow it before more comes in, but it's so much that you end up being forced to quit this inhuman task, and feel the ridiculous amounts of warm sperm just splattering all over your face. He doesn't stop cumming for like a long minute, and you've wasted more than half of his load... 'Damned Hell! I came really hard...' - he pants, looking at you with a grin - 'Don't worry about that. They can only swallow it all if I shove my cock down their throats. But it was cute of you to try.' He whips out the last drops of cum which fall on your already drenched face as he eyes you for a while longer...";
		say "     'This was fun. Hope we meet again. Maybe next time you won't be able to resist me at all.' With this said, the demon retreats back to the shadows. You try to walk too, but you feel strangely lightheaded and blissful out of nowhere, hindering your attempts at moving properly. You wait it out for a few until you're able to return to your journey.";
	else:
		LineBreak;
		say "     With your resolve set on just making him cum as hard as you can, you start jerking the demon's cock harder and faster while licking across the side of his glans. 'I hope you enjoy seeing the blast... F-fuck, it's coming...!' Following his stuttering words, you're surprised with a massive surge of cum shooting as far as several meters from where you're standing now, and he keeps going with equal strength! Spurt after spurt of seed that he shoots leaves a faint hint of how sweet it must taste, and you feel tempted to reach over for some, but you can't just stop stroking that raging cock, still erupting as hard as ever for like a long minute. 'Damned Hell! I came really hard...' - he pants, looking at you with a grin - 'You should probably get a taste sometime. Some just can't have enough of it.' He whips out the last drops of cum, which actually happen to fall on your face, making you close your eyes in surprise. He gives out a chuckle as he steps back.";
		say "     'This was fun. Hope we meet again. Maybe next time you won't be able to resist me at all.' With this said, the demon retreats back to the shadows. His cumdrop teases your lips, and you can't help but want to give it a taste. Then you wish you hadn't, because it feels almost addicting, and tempting to lick from the pool he made on the ground... Though you manage to shake off these thoughts and worry about proceeding with your journey, instead.";
	CreatureSexAftermath "Player" receives "OralCock" from "Hellfire Demon";
	LJockstrapPickup;

to say HellDemonFacefuck:
	project Figure of HellfireDemon_hard_icon;
	say "     Looking at the sexy devil's lustful glare, you also begin to feel your own building up as you eye his alluring body from head to toe. Starting to feel your own [Cock of Player] penis gaining a will of its own, you let the demon know exactly what you want from him... his long and pointy tongue all over your dick, as well as his lips wrapped around your shaft. 'I shall gladly provide, though I doubt you'll last long. Feel free to surprise me, though.' he answers, winking at you as he falls on his knees[if scalevalue of Player < 4]... then on his fours, as he's a tall one, [end if]and immediately puts his long and flexible demon tongue to work, wrapping it around the tip of your manhood and slowly pushing it through your shaft, as his lips take place around it as well. His mouth feels incredibly hot, very literally, making your dick throb and pulse constantly. You already don't want to have it leave...'";
	say "     He makes eye contact with you, bright yellow eyes gazing upon yours in a teasing way for a brief moment, then he shifts his focus completely towards sucking your cock. A devil like him surely had to be an amazing cocksucker, knowing just every single spot that makes you stutter and shiver, providing you with insane amounts of pleasure as he proceeds to slide his lips further in and back, taking your entire length with ease. Almost overwhelmed by the pleasure, you take a deep breath and close your eyes, though that only seems to send you deeper into a strange trance, as your senses begin to relocate themselves towards the task at hand. With a will that doesn't seem your own, you feel your muscles begin to tingle, a rush of lust surging through you as you look down at the sexy hellish guy who has your dick in his mouth.";
	WaitLineBreak;
	say "     With an impulse, you slip your hands over the demon's tauric horns - which are incredibly warm to the touch - and a very naughty idea comes to mind... So you start pulling him towards you, then releasing the tension, followed by another pull as you jerk your hips in conformity, only to find out how good it actually feels, ";
	if Player is dominant:
		say "having a powerful demonic creature at your mercy, making him take your dick however you want, having him submit to you like this... The sheer thought makes you throb harder than before, only wanting to feel his tongue, the walls of his mouth, his throat, everything wrapped tight around your meat as hard as you can facefuck him. Only if you had him as your personal slave, satisfying all your whims and needs, such a strong devil at your permanent service, performing this well at all tasks you order him to perform for you... Only if you could have that, you could keep fucking this demon's throat all you wanted, for as long as you desired...";
	else:
		say "the sensation of letting go your own limits, delivering yourself to the pleasure of having such an expert in sex driving you insane with lust... The sheer thought makes you throb harder than before, only wanting to feel his tongue, the walls of his mouth, his throat, everything wrapped tight around your meat as hard as you can facefuck him. Only if you could keep having this, surrounded by lust, sex and desire for as long as you wished, as long as you craved it... Only if you could have that, you could keep getting naughty with sexy devils like this demon whenever your heart craved for this kind of thing...";
	say "     Now that you have found a great use for his huge horns, you keep your grip tight around them as you keep thrusting into the demon's mouth, moving his head according to your momentum, never letting go as long as you can feel his warm insides around your penis. A little while after, you start feeling yourself getting closer to climax, but your mind tells you to never stop. It just feels to good to think about anything else but the pleasure you're getting from this, and it's not long until you're cumming down the demon's throat. He urges to hungrily swallow all the sperm you keep shooting for the duration of your orgasm, until the very last drop! You let go of his horns, and with a last suck, he licks the remaining drops of cum that are still leaking from your half-hard member.";
	WaitLineBreak;
	say "     'T'was splendid... You sure are naughty...! Hope we meet again. Maybe next time you won't be able to resist me at all.' With this said, the demon retreats back to the shadows. You're left to catch your breath, but in your mind still run thoughts of debauchery for a good while... There's something [italic type]odd[roman type] about this kind of demons...";
	CreatureSexAftermath "Hellfire Demon" receives "OralCock" from "Player";

to say HellDemonFuck:
	project Figure of HellfireDemon_hard_icon;
	say "     Considering your options, you wonder why would such a powerful and mighty devil wear a jockstrap, which exposes their butt so much... So you tell him to turn around and let you look at him. He does so with a coy toothy smile on his face, and the view of his muscular glutes, popping to your eyes with a magnificent round shape jiggling up and down for your pleasure - that is, of course the demon would tease you by clenching his buttcheeks - and you simply just know why he would flaunt his backside so proudly. 'See something you like, [mister]? Would you like to come closer?' he says, rather seductively, and with his ass drawing your gaze like a magnet, it's very difficult for you to resist it! Almost as if by a will that is not yours, you step forward and [if scalevalue of Player > 3]crouch down before[else]bend yourself towards[end if] such glorious butt...";
	say "     Having it at your reach, you extend your hands to feel the firm buttocks, and the demon as provocative as he is, takes a tiny step back very slowly, just enough for you to see it coming closer to your face. It's a really big ass, given his considerable overall frame, and somehow his thick skin feels surprisingly soft against your cheek... You feel tempted to simply bury your face in there and get a taste of his hole. 'Maybe I should part with this jockstrap and give you free access to what's inside?' he says, looking at you over his shoulder, and you nod at him with hungry lust beginning to consume you... So he slides his hands over the elastic band, then pushes it down, having you see his underwear fall through his muscular legs down to the ground. He then kicks them away, spreading his legs as he stands and grabbing his glutes, pulling them sideways. His pucker is twitching at you... 'Come in... get a taste. You'll want in before you know it.'";
	WaitLineBreak;
	say "     Without any further ado, you finally give in to your desires and bring your face to the space between his rock solid cheeks, stretching your tongue over to his hole. He lets his glutes slowly hug your face back as you make out with his anus, hungrily eating it out and leaving it as wet as you can. 'Damn, you wanted it that badly, huh?' he teases you, though you pay no attention to what he says, you just want to press your tongue deeper in his ass and stretch the tasty, moist and hot pucker that's still drawing you in... In your mind, run thoughts about";
	if Player is dominant:
		say "having a powerful demonic creature such as him at your mercy, making him take your dick however you want, having him submit to you... The sheer thought makes you throb harder than before, only wanting to feel your cock in his ass, his insides clenching around your meat as hard as you can fuck him. Only if you had him as your personal slave, satisfying all your whims and needs, such a strong devil at your permanent service, performing this well at all tasks you order him to carry on for you... Only if you could have that, you could keep fucking this demon's ass all you wanted, for as long as you desired...";
	else:
		say "the sensation of letting go your own limits, delivering yourself to the pleasure of having such an expert in sex driving you insane with lust... The sheer thought makes you throb harder than before, only wanting to feel your cock in his ass, his insides clenching around your meat as hard as you can fuck him. Only if you could keep having this, surrounded by lust, sex and desire for as long as you wished, as long as you craved it... Only if you could have that, you could keep getting naughty with sexy devils like this demon whenever your heart craved for this kind of thing...";
	say "     'Sounds like you want something more than just lick my hole... I took my share of cock in the ass before, don't you want to try it yourself?' Damn right you want. In fact, you can't wait any longer, and with a powerful and surprising push, the demon falls on his fours in front of you, ready to take it. 'Hah! Getting rough, ain't it?' he asks you, suggesting that you go even harder on him once you start fucking that delicious ass. It's not long until you find yourself rubbing the tip of your [Cock of Player] manhood against his blinking pucker, and with a push, you stretch it around your tip, then shaft, all the way through your cock as you push in further and further... He takes you entirely, and you feel he would, no matter the size... 'I guarantee you, you never had an ass like this.'";
	WaitLineBreak;
	say "     It just drives you mad! His ass is so incredibly hot, feels like it's pumping your dick... You feel yourself getting even harder than you would by normal circumstances, and just like that, you find yourself rock hard, throbbing and pulsing, ballsdeep inside a demon's ass. Such feeling [if player is dominant]of power[end if] takes over your mind, and you can't think of nothing else but to thrust in that ass, making him take your dick as hard as you can. Nothing else matters but to fuck that hole until neither of you can move anymore! 'Fuck, that feels amazing... Fuck me harder... Ngh... HARDER...!' you hear the demon shout, not as a command, but as a very heartfelt plea, sending you shivers down your spine as you keep pushing and pulling your dick, feeling it rub against his warm insides, clenching around your shaft so delightfully...";
	say "     He grunts like the hell beast he is, giving his ass for you to fuck completely, even helping by moving it instead of having you do all the work, and eventually you feel like he's milking your dick and you don't have to do anything at all. The demon wants it so badly he takes whatever he so badly wants from you, but you can't help it... You have to keep fucking him as hard as you can. To keep things interesting, you take a hold of his erect member and jerk it just a bit, and that's enough to trouble the sexy devil... 'Fuck... Fuck...! You're gonna make me... A-ah...!' With enough of jerking his dick and hitting his prostate with yours, you feel like both of you are ready to hit the climax in no time...";
	WaitLineBreak;
	say "     Then, just like that, you feel all his insides tighten around your manhood, twitching and clenching uncontrollably as he releases an audible demonic roar. With his cock still in your hand, you feel it throb and pulse, gushing out tremendous amounts of jizz all over the ground beneath you both! And soon follows yours, your load leaving through your cock like a geyser, if it didn't end inside the demon. You keep filling him up for the next moments, although as your climax begins and subsides, the hot devil is still shooting thick goblets of his demonic seed down, panting heavily... But eventually, it also comes to a stop, and he takes his time to recollect his senses, just as you do.";
	say "     'Uhm... That was... Just keep it between us, okay? I don't want them thinking I like this so much... W-which I don't, no, not as much as fucking... at least... Er... Well, goodbye.' he says, hesitating between every word, as he retreats back to the shadows. You're free to walk out of here as well.";
	LJockstrapPickup;
	CreatureSexAftermath "Hellfire Demon" receives "AnalFuck" from "Player";

to say HellDemonAnal:
	project Figure of HellfireDemon_hard_icon;
	say "     Staring at the sexy devil's bulge so indecently exposed, you start to feel a growing itch between your asscheeks, a warm sting making you want to bend over for the demon. This happens as you picture the hot hellspawn fucking your ass with that enormous tool of his. 'You've got something on your mind, haven't you? Must be fun. Wanna grab my cock as you tell me all about it?' he says, grabbing his jockstrap by the band and snapping it. All you see is his prick jumping out of its former constraints and point directly at you, throbbing hard, as if awaiting your move. 'I know a few ways I could use this bad boy on you... And you must know them well, too.' With a will that isn't almost your own, you take a few steps forward and slip a hand over his shaft, which is very warm to the touch.";
	say "     'Yesss... Give it a good stroke and tell me where you want it.' Your heart races at the sheer thought of having it buried deep in your ass, and you don't really have to say anything. Unconsciously, you're already turning your butt over to him, as his large hand begins feeling your glutes up. 'Mmm... bend over for me. I'll give you what you're craving for.' With that said, the demon actually doesn't wait for you to oblige his request, rather pushing you down and making you practically hand your ass over to him. There's him [if Player is not naked]pulling your lower gear down, exposing your butt for him[else]giving your already exposed cheek a light slap[end if] before you feel his hellish breath tickling your skin.";
	WaitLineBreak;
	say "     'Ever had a demon tongue up your bum?' he asks as you feel his bearded face press against your cheek, a long and nimble pointy tongue finding its way in your pucker. It's not long until you feel it squeezing and wiggling itself inside you, and it goes pretty deep as you feel his scorching hot lips land on the surrounding spot. Such sensation sends shivers down your spine, the devil tonguefucking your ass so good that you feel so nice and relaxed, soon ready to get his thick member inside with all the ease in the world. Then, when he thinks you're ready, his powerful arms begin to embrace you as he pulls you down with him, so you softly fall all on fours with him on top of you. His pulsing rod is just rubbing against your now very cock-hungry hole...";
	say "     With you both positioned, he takes hold of you as he begins to thrust, your hole making way for the demonic cock that's about to invade you. He's gentle at first, letting you get used to his size, but then he starts pushing another inch in you, then another more... 'You're tight... Fucking hot...' he comments, slowly burying his entire length in you until you're at capacity. He holds you very tight as his cock slides in and out of your pucker, feeling as if your insides were being split open to accommodate his monstrous size. You can't explain how, but your body seems to be reacting unnaturally, so relaxed towards him fucking you that you seem to just be able to take a few more inches in... Soon, he's ballsdeep inside, his scorching ballsack laying softly against you as he kisses your neck.";
	WaitLineBreak;
	say "     'We turn all our slaves into expert bottoms, able to take any dick in them... Feels good, doesn't it?' he says, holding you with his large arm crossing your chest while kissing your neck. He pounds you progressively harder, eventually pinning you down completely on the ground beneath him, squashing your face down as he fucks you without mercy. 'Nngh... Fuck, I need to fill you up...!' With his heavy ballsac swinging back and forth, basically wrecking your ass with each thrust, you know it's going to be big. Out of generosity, the red devil grabs your [Cock of Player] cock to stroke it in sync, and if his own meat shaft ramming against your prostate wasn't enough, you're quickly brought to the brink of orgasm. At this pace, you'll end up cumming at the same time as him... Perhaps he is, indeed, aiming for that.";
	say "     He hasn't stopped since then, your only warning being a beastly, long grunt of pleasure as you begin feeling a very warm stream of thick juice filling your bowels, so much cum that you start feeling them swell by the time he's midway in his orgasm, still unloading inside you. 'Yessss! Take it ALL!' By the time you can feel so much demonic jizz sloshing around inside you, his stroking drives you over the edge as well, making you shoot so hard it makes you lightheaded, your cock rubbing and squished against the demon's large hand protecting it from the harsh ground. He kisses your neck until both of your climaxes start to subside, his muscular body resting on top of yours as you take some time to catch your breath.";
	WaitLineBreak;
	say "     'Damn, that was good...' - he says, still holding you beneath him - ";
	if Player is submissive:
		say "'Feels great, doesn't it? Imagine if you were an everyday's slave at our place... I could come fill you up so good like this... Your days would be filled with constant pleasure, perfect for a true submissive like you to enjoy.' His words surely bring excitement to your soul, and you're already imagining yourself bound, left helpless to be used and abused by any of those hot devilish people";
	else:
		say "'Feels great, doesn't it? See what you've been missing... If you'd just give in, I could probably bring you with me. We'd have a lot of fun either way.' His words manage to get some curiosity going in your mind";
	say ". Figuring it's time to get going, the demon stands up and leaves you lying on the ground, still full of his seed. 'Hope we meet again. Maybe next time you won't be able to resist me at all.' With this said, the demon retreats back to the shadows. You're left to wait out until you process enough of his cum, in your mind still running thoughts of debauchery for a good while... There's something [italic type]odd[roman type] about this kind of demons...'";
	CreatureSexAftermath "Player" receives "AnalFuck" from "Hellfire Demon";

to say HellDemonCun:
	project Figure of HellfireDemon_hard_icon;
	say "     Thinking what you should do with the sexy devil, your eyes end up locked on his. As you observe his face, his handsome and masculine features, you feel a soft warmth on your groin as an idea slips into your mind, taking over your thoughts. The demon shows a grin at you, as if knowing what you're thinking, and walks up to you, ready to give your cheek a gentle stroke. 'Oh, I know that look... But I figure you need encouragement.' he says, sliding one of his meaty hands between your legs, pressing against your crotch so nicely as he begins to take a seat on the ground. He's now looking up at you, licking his lips to show his long demonic tongue, and by a will that is almost not yours, [if Player is not naked]you slide down your lower gear and take off your clothes, [else]you give your exposed womanhood a soft rub, [end if]and walk over the demon. He leans back as your pussy hovers above his face, his expression rather eager as your arousal keeps building up.";
	say "     Slowly, you duck above his head, your thighs on each side as you grind your labia across his lips. The demon lets out a pleased hum as he gives you a kiss, your moistened vulva tingling in response as lust starts to take over. He doesn't disappoint with his oral skills either, the pointy and long tongue of a demon being one of the most pleasurable things that could have ever entered you at this stage, wiggling and squirming around so nicely that you feel every inch and bit of your sex thoroughly stimulated, and you can hear him sucking in your juices rather hungrily. Pressing against his face harder only seems to encourage him to tonguefuck you, and soon you find yourself actually riding his tongue, so buried deep in you that you can't help but moan at the joyful sensations happening in your womanhood.";
	WaitLineBreak;
	if Player is dominant:
		say "     Now wouldn't it be nice to have such a powerful demonic creature at your service to provide you such a godlike cunnilingus anytime you craved a lengthy and wiggling hot tongue in you? Only if you had him as your personal slave, satisfying all your whims and needs, such a strong devil at your permanent service, performing this well at all tasks you order him to carry on for you... Only if you could have that, you could keep riding this demon's face all you wanted, for as long as you desired...";
	else:
		say "     The sensation is tempting to let go your own limits, delivering yourself to the pleasure of having such an expert in sex driving you insane with lust... The sheer thought sets your body ablaze, only wanting to feel that lengthy, skillful hot tongue deep inside your canal, his hunger for your girly fluids... Only if you could keep having this, surrounded by lust, sex and desire for as long as you wished, as long as you craved it... Only if you could have that, you could keep getting naughty with sexy devils like this demon whenever your heart craved for this kind of thing...";
	say "     You can't endure this for much longer. As you keep grinding on his face, completely lost in pleasure and lust, an intense wave of pleasure begins to overwhelm your senses, and soon you're squirming and moaning helplessly past the brink of your climax. Clearly the demon must be flattered from having made you orgasmed with his tongue alone, and you can see that from the way he's looking at you when the intensity begins to subside. He pulls out, ending with a kiss around your wet groin. 'You sure are tasty. I could do this all night, see how many times I could make you hit it like this. I think your mind would break, eventually...' he teases, giving you a wink. Glancing over your shoulder, you see the poor devil has been throbbing hard all the time...";
	say "     [bold type]Do you want to finish him off?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Make him cum. After all, he licked you good.";
	say "     ([link]N[as]n[end link]) - Just leave him like that.";
	if Player consents:
		LineBreak;
		say "     He did please you a lot, so you figure he might deserve a reward for his efforts. You slide down through his body, making your way down with a few teasing kisses of your own, before you take a hold of his monster cock, throbbing so hard and still painfully restrained by his diminutive leather jockstrap... 'I might cum just from you looking at it... Fuck...' he admits, his deep voice trembling as your hands take hold of the pulsing shaft, sliding it to the side of his kinky underwear and providing only a mere strokes before you're surprised with a massive surge of cum shooting as far as several meters from where you are now! And he keeps going with equal strength! Spurt after spurt of seed that he shoots leaves a faint hint of how sweet it must taste, and you feel tempted to reach over for some, but you can't just stop stroking that raging cock, still erupting as hard as ever for like a long minute. 'Fucking Hell! That was hot!' - he pants, looking at you with a grin - 'You should probably get a taste sometime. Some just can't have enough of it.'";
		say "     As tempting as that sounds, you think it's time to get going. Grabbing your things, you say your goodbyes to the demon. 'See you soon, gorgeous. This was fun... maybe next time we can skip right into the fun, eh?' He throws a chuckle as he gets up, soon retreating back into the shadows as you proceed with your usual affairs.";
	else:
		say "     You have more to do than to satisfy a devil's necessities. He did well with yours, but now it's time to leave. 'Aw, you're going to leave me like this?' he asks with disappointment in his tone, his raging cock pulsing incredibly hard before your eyes. 'It's not right to tease a demon like this... You better pray that I never gain the upper hand.' Despite his threats, you don't give in, instead grabbing your things and leaving the area. You're so mean, but you have a feeling he likes that.";
	CreatureSexAftermath "Hellfire Demon" receives "OralPussy" from "Player";

to say HellDemonPussy:
	project Figure of HellfireDemon_hard_icon;
	say "     Staring at the sexy devil's bulge so indecently exposed, you start to feel a growing itch down on your groin, a warm sting making you want to bend over for the demon. This happens as you picture the hot hellspawn fucking you raw with that enormous tool of his. 'You've got something on your mind, haven't you? Must be fun. Wanna grab my cock as you tell me all about it?' he says, grabbing his jockstrap by the band and snapping it. All you see is his prick jumping out of its former constraints and point directly at you, throbbing hard, as if awaiting your move. 'I know a few ways I could use this bad boy on you... And you must know them well, too.' With a will that isn't almost your own, you take a few steps forward and slip a hand over his shaft, which is very warm to the touch.";
	say "     'Yesss... Give it a good stroke and tell me where you want it.' Your heart races at the sheer thought of having it buried deep inside your sex, and you don't really have to say anything. By the time you're thinking about it, the red devil slips one of his strong hands down your crevice and gives you that look. 'I take it you want to be filled.' With a nod, [if Player is not naked]while you first get rid of your own clothing and gear, [end if]you let the demon know you want him inside you, encouraging him to simply lift you off the ground and hold you within his powerful arms. Spreading your legs around his waist, he carefully descends your body, and your pussy, on his huge demonic dong, eager to please.";
	WaitLineBreak;
	say "     As you feel your lower lips stretching around his shaft as he keeps pushing, you feel a burning sensation of pleasure taking over you. In the embrace of the devil, you give yourself in completely, letting him handle everything. 'Isn't this way better than fighting? Indulging in the sweet pleasures of life, rather than resisting... One day you'll be craving for it.' Despite his taunts, you can't focus on anything else but the way he fills you so well, burying more of his length inside you which, somehow, you are able to take in. The demon still whispers in your ear ";
	if Player is submissive:
		say "'Feels great, doesn't it? Imagine if you were an everyday's slave at our place... I could come fill you up so good like this... Your days would be filled with constant pleasure, perfect for a true submissive like you to enjoy.' His words surely bring excitement to your soul, and you're already imagining yourself bound, left helpless to be used and abused by any of those hot devilish people...";
	else:
		say "'Feels great, doesn't it? See what you've been missing... If you'd just give in, I could probably bring you with me. We'd have a lot of fun either way.' His words manage to get some curiosity going in your mind...";
	say "     By the time he's bouncing you on his dick, you're helping by wiggling your lower half tantalizingly, in hopes to get the hot devil more excited, and it works. He's holding you, even tighter now, and needs a new angle to pound you as you deserve. With this, he carries you over to a nearby wall, leaning your back against, still managing to keep hold of your body with his much greater strength, which is not even a challenge for him. There, he thrusts into you harder, his heavy sack swinging in motion as it begins to swell and ascend, his manhood throbbing and heating up... 'Hope you like a flooded womb... it happens to often...!' he warns you, or rather informs, as he gets very close to orgasm.";
	WaitLineBreak;
	say "     With only a couple more thrusts, he lets out a beastly grunt, unloading each and every drop of his seed into his womb, spurt after spurt filling you with thick and sweet demonic cum for a long minute, and this triggers a massive surge of pleasure through your whole being, breaking through your senses like a rampant shiver. Your in-sync orgasms seem to have pleased the demon, as he keeps depositing his last drops of hellish fluids inside you. When he's finally done, he slowly puts you on the ground, helps you lie down and chuckles with amusement as he sees his own cum leaking from your swollen womb though your flustered pussy. 'That was fun. Hope we meet again... Maybe I can fill you another time.' With this, the demon retreats back to the shadows, leaving you taking a much needed rest before you can do the same.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Hellfire Demon";

to say HellDemonFeet:
	say "     You have won the fight, and that means you can take anything you want out of the demon, even things you would normally want if you were in a submissive position. Regardless, once your eyes lay on the demon's feet, all perfectly shaped and soft looking, adorned with a full set of obsidian claws each, giving them a somewhat wild look... A thought crosses your mind. Lost in your contemplations, you are startled by him suddenly wiggling his toes as he realizes you are staring at them. 'I see something caught your gaze, [mister]... Would that be these?' he asks, lifting one of his feet and moving it around, showing off every angle of those large and soft-looking soles. 'What's holding you, then? Come have a closer look! It's not like I'm gonna walk away...'";
	say "     He then picks a toppled container that happens to be nearby and sits on it with a manspread, letting his cock poke out of his leather jockstrap as he stretches his legs forward, raising his soles off the ground. Following his previous words without thinking much on the matter, you step closer to the demon and kneel in front of him. Placing one hand behind his ankle, you lift one of his feet and inspect it from a closer distance, already thinking of the things you could do to it. You start by rubbing it a bit all over with your fingers and thumb, providing him with a sort of foot massage. It surprises you how soft his skin is down there, perhaps due to the quick regenerative characteristics of these demons, since they walk barefoot.";
	WaitLineBreak;
	project Figure of HellfireDemon_hard_icon;
	say "     'Well, that feels great, but... I'm sure you had something more in mind, right?' He gives you his other foot to hold, moving both closer to your face as you absentmindedly touch them. Your eyes continue to follow those wiggling toes and the temptation to bring them closer to your mouth increases... to the point you simply just do it, placing your lips atop one of his big toes and slowly wrapping them around it, though carefully to avoid that sharp claw. 'Mmh, well... That's more like it. I probably should let you know that I'm into this.' The demon rips his jockstrap off and frees the monster within, jerking his cock while he observes you worshiping his feet. You do not pay much attention to that, though, as for now your focus is that big toe you have your tongue wiggling around.";
	say "     It slowly escalates into a full-on toe sucking as you get your mouth between them. One at a time, you allow them to enter your mouth while rubbing the rest of the foot, and the demon finds himself in the freedom to rub the other's sole against your cheek. As things get more intense, so does your desire for the devil's pleasure, and you are quick to add the other foot to the action, jumping from one's toes to the other's with your tongue and lips always ready to suck on them. 'Oh, you're doing so good... I'm in luck to have found a foot lover like you...' he teases, now watching you put your tongue under the toes and kissing the sides of the soles. Soon, you go all out, stretching your tongue and moving it in circles around the entire underside of both feet, alternating between them, causing the demon to feel more than happy to start press them against your face.";
	WaitLineBreak;
	say "     'Mmmh... Keep going... Feels great...' he moans as he jerks his cock with long and steady strokes, pushing against your face with his feet until you simply find it easier to lie down and let him take the lead. He leans forward to look at you as now both of his feet are on top of your face, giving you generous access to the toes once more. He slides one entire set of them into your mouth and only stops until your lips are resting by their base. 'Suck on them good for me... That really makes me throb...' The rest of the sole remains atop your chin while he rubs the rest of your face with the other foot, and he is not exactly gentle with it. You feel the motions of him jerking off, the momentum being carried all the way through his legs, as he grows more and more excited...";
	say "     With your face overtaken by both his feet, your only option left is to suck on his toes as he pleases. The demon gives you plenty of time with each foot to worship as he brings himself closer to the edging point. Soon, he gets there, and you can hear him moan as he struggles to hold back, all the way up to a point that he just... cannot hold it anymore. 'Fuck, I'm cumming! Yess!' he shouts, and soon, cum comes raining down over his abs - and everywhere, really - as you carry on wiggling your tongue around and below his toes, only further intensifying his pleasure. He cums so much that you can even hear the drops falling on the container he is sitting on, as it is getting sprayed all around him, like a firehose.";
	WaitLineBreak;
	say "     It is then that the demon pulls his feet off your mouth, placing them on each side of your head as you remain completely turned on by the experience. He stands up and looks down at you with the biggest smile as the cum slides down his body, some of it even dripping on your face as he catches his breath. 'That was fucking hot! Look at the mess you've made me do... It got all over!' He then laughs as he rubs his body, smearing that creamy load all over his torso. 'Though I guess funtime's over and I have to go. Was cool to let you lick my feet, made me cum good... See ya!' He then just starts walking away, leaving you lying on the ground look at him go. Eventually, you get a grip of your senses and decide to stand up, keeping this encounter engraved in your memory for future reference...";
	CreatureSexAftermath "Player" receives "Other" from "Hellfire Demon";

to say HellDemonXMale:
	project Figure of HellfireDemon_soft_icon;
	say "     With a quick glance over your companion, you give Xaedihr a sign to step ahead as he eyes you with mischief. 'Oh, kind of you to think of me. It was getting boring to see you take all the fun for yourself...' he comments, while simultaneously performing an arcane gesture, causing his signature dark tendrils to raise from the ground and slowly wrapping themselves around the red devil's legs. 'What's this?! A sorcerer?! No, come on, we can talk about this, I'm sure?' he protests, but soon his words turn into moans as his throbbing meat, still restrained underneath his barely fitting jockstrap, is held and stroked by a single tendril slipping itself around his shaft. This makes him weak on the knees, and with a slight push, he's brought down on all fours. Though as this clearly isn't enough to satisfy the half-demon, he also makes sure he removes the jockstrap, while guiding you to walk over the sexy devil's rear, a delightful muscle ass now fully exposed to you.";
	say "     'Now that looks like a tasty sight. And since I'm a generous person, I'll let you have it as I facefuck him. You know I love a mouth wrapped around my dick.' says Xaedihr, winking at you suggestively. With a pat on the devil's powerful glutes, you feel up his butt in all of its glory as the sorcerer takes his own manhood out, slapping it on the demon's face before sliding it in between his lips. You hear grunts from the other side as the helpless hellspawn is forced to take a footlong of a cock in his throat, being held by his large horns, while you're ready to bring your [Cock of Player] penis between the muscle cheeks. His hole, twitching and surprisingly eager, feels warm and slick, inviting you to put your cock in and enjoy the tight feeling around your shaft in any way you see fit. Without any further ado, you do so, thrusting into his ass until you're all the way in, your pelvis hitting his butt with your cock resting inside.";
	WaitLineBreak;
	project Figure of HellfireDemon_hard_icon;
	say "     'How are you feeling down there, demon slut? Getting double tagged and tentacle raped, what's not to enjoy...?' Xaedihr keeps teasing the sexy devil as his tendrils fully embrace the demon's thick body, further stimulating his throbbing meat as you keep on fucking his ass hard and deep. He's basically being supported by the sorcerer's magic, making it feel so easy for you to pound and thrust to your heart's content. Grabbing him by the hips to aid the momentum, you pick up the pace in order to feel a much greater sensation, going so deep in the devil that he can't help but twitch his asshole around your shaft, grunting with a mouth full of Xaedihr's cock. 'What's the matter? My bud is fucking you too hard? Shame you can't talk and complain about it...' he teases once more, tightening his grip around the demon's horns and pulling his face towards himself, leaving only the balls out as his entire shaft gets buried inside the devil's mouth.";
	say "     Xaedihr gives you a look, suggesting something. 'How about we trade spots? Don't want to leave you deprived of a nice throat... Plus, I think he's thirsty.' You can [bold type]fuck the demon's mouth and let Xaedihr take the ass[roman type] that you've warmed up, before filling him up from both sides, or [bold type]keep things as they are.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hell yeah, go feed the demon yourself!";
	say "     ([link]N[as]n[end link]) - You want to cum in his ass, instead.";
	if Player consents:
		LineBreak;
		say "     With a nod, you agree on trading places with your friend. Pulling out your cock out of the crimson devil's ass, you walk over to Xaedihr's spot as he moves to yours with a few steps, the demon being too overwhelmed with ecstasy to make any sounds other than moaning and grunting. Now on his frontal side, you bring your meatstick over those soft and warm lips, push it in between them as his long tongue twirls around your cock, and take hold of his big horns to give him the facefuck he deserves. In the meantime, the half-demon doesn't waste any time in covering the hole you've left unfilled, shoving all of his twelve inches inside the hellspawn's ass without an issue at all, grinning in satisfaction. 'Fuck, he's tight... Even when warmed up...' Pleased with the sensation of the demon's pucker clenching around his length, Xaedihr gives the muscle ass a loud slap, making him let out a groan with your dick in his mouth.";
		say "     How that almost sets you off, feeling his deep voice vibrating through your shaft, making you throb with pleasure and all the much eager to thrust into his throat. And his horns are so convenient to aid you in this, making such great handles to help you pound his sorry mouth until you have nearly driven yourself close to climax. Definitely doesn't help seeing your sorcerer friend pounding the demon's ass on the other side as he makes eye contact with you, sending a wink and a charming smirk that makes you throb even harder. 'You want to fill him up? I'm all set...' he says, and truth be told, you cannot wait to unload inside this sexy devil's mouth and make him swallow up your cum until the very last drop.";
		WaitLineBreak;
		say "     With a couple more thrusts, you feel your orgasm settling in, and you can't help but let out a moan as your seed leaves your body, spurt after spurt coming inside the red devil's mouth as you keep thrusting until the end. The tendrils tighten their grip around the demon, holding him in place as Xaedihr too cums in his ass, and all you can imagine is his insides getting covered completely by the virile mage as he pounds that rear hard and deep. Inevitably, you feel the demon's grunts as all this happens, he too hitting the edge and making a puddle of his own load around his knees, plentiful of hellish cum just laying there on the ground. 'Fuuuck... this felt so good...' says Xaedihr, as he is slowly pulling out his cock from the demon's abused hole, a stream of his load following right after and leaking down to the muscle glutes. You do the same, pulling out of his mouth and finally letting the hunky devil take a breath.";
		CreatureSexAftermath "Hellfire Demon" receives "OralCock" from "Player";
		CreatureSexAftermath "Hellfire Demon" receives "AnalFuck" from "Xaedihr";
	else:
		LineBreak;
		say "     Shaking your head, you let him know you want to keep the ass to yourself. 'Huh, alright. All the better for me.' he replies, with a wink and a grin as he proceeds to continue to facefuck the hunky devil as eagerly as before. After all, his hole clenching around your length is feeling so good, you don't really want to pull out now. Instead, you want to continue fucking this delicious ass while Xaedihr keeps making the demon choke and grunt with his twelve inches fully buried inside his throat. He's leaning his head back with just the happiest pleasure face as he's feeling the crimson devil's throat muscles around his thick shaft, then returning to pound his face as if it was the ass you're fucking by the other side.";
		say "     As the spitroast fucking continues, you eventually hit signs that you're getting closer the more you thrust, as once can only last so long. Slowing down the pace, you try to let Xaedihr know that you really want to cum, and he gets you with a suggestive, teasing nod with a smirk drawn on his face. He makes a couple more poundings at half the speed and he too looks to be close. 'You want to fill him up? I'm all set...' he says, and truth be told, you cannot wait to unload inside this sexy devil's ass and coat his insides until left leaking your cum from his anus. Just the image of his pucker twitching open as your seed slowly makes its way out from where it was deposited sends your cock into a hard frenzy, so ready to explode.";
		WaitLineBreak;
		say "     With a couple more thrusts, you feel your orgasm settling in, and you can't help but let out a moan as your seed leaves your body, spurt after spurt coming inside the red devil's ass as you keep thrusting until the end. The tendrils tighten their grip around the demon, holding him in place as Xaedihr too cums down his throat, and you can hear the sexy devil gulping down every single drop of it. 'Fuck yes... Swallow all of it, demon slut... That's right...' says Xaedihr, amidst some grunting, as the demon too hits the edge, making a puddle of his own load around his knees, plentiful of hellish cum just laying there on the ground. 'Fuuuck... this felt so good...' he continues, slowly pulling out his cock from between the hellspawn's lips, finally letting the hunky devil take a breath. You do the same, pulling out of his ass as a stream of your load follows right out of his abused hole, leaking down to the muscle glutes.";
	say "     'Now this was hot. Hope you took some lessons, hellfire boy.' teases your sorcerer friend, leaving a rather humiliated demon silent as he lies down on the ground, right on his own messy puddle of cum as Xaedihr's tendrils return to their own void. He only lets out a defeated grunt, but you can tell he secretly enjoyed being used like that, both his mouth and ass used and abused for a good while. 'I think we should do this again, totally. Hope you're down for that anytime, bud.' he tells you, and you think he's actually eager to do it again. Perhaps he is, given how much he gets off from dominating demons... A charming fellow, this man.";
	CreatureSexAftermath "Hellfire Demon" receives "OralCock" from "Xaedihr";
	CreatureSexAftermath "Hellfire Demon" receives "AnalFuck" from "Player";
	if a random chance of 3 in 4 succeeds and loyalty of Xaedihr < 30:
		say "     [bold type]The time you've spent with Xaedihr made him open up more to you.[roman type][line break]";
		increase loyalty of Xaedihr by 1;

to LJockstrapPickup:
	if carried of leather jockstrap < 1:
		say "     Though while that happens, you happen to come across the jockstrap left behind by the demon when he removed it before you. Luckily enough, as it is quite dark around here and it's barely visible if you had not paid attention. It smells greatly of his sweet musk... There is no way to guarantee safety in using it, but it [italic type]should[roman type] be fine, since it is in good conditions.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Pick it up.";
		say "     ([link]N[as]n[end link]) - Just leave it.";
		if Player consents:
			say "     You crouch down to pick the leather jockstrap and stow it away in your inventory.";
			ItemGain leather jockstrap by 1 silently;
		else:
			say "     With a shrug, you leave it where it is. It probably will not be there in a few minutes.";

to say HellDemon Desc:
	say "     Standing in front of you is yet another intimidating creature of Hell. A deep crimson, tall and powerful demon, with large tauric horns on the top of his head, approaches you from the darkness. Your eyes inevitably land on the massive bulge barely contained by a leather jockstrap, jiggling slightly at each step that he takes. On top of that, his athletic body is covered in muscle, with a simple harness around his hairy pectorals, and while he generally looks more human in appearance than the brutish of demons, his dark sharp claws still prove a threat to you. With a grin on his face, he speaks to you:[line break]";
	if Hellfire Club is known:
		say "     'Look who it is! Master's special guest taking a walk during the night! How about we spar... And fuck right after?' You swear you can already see his bulge growing with the anticipation of having it with you, be it just fighting or more than that. He also doesn't waste any time, lunging himself at you with a grin on his face.";
	else if BodyName of Player is "Hellfire Demon" and FaceName of Player is "Hellfire Demon": [player looks like a Hellfire Demon]
		say "     'Fancy meetin' you here! Did you get fucked so much that you became one of us? Should've just asked Master Mogdraz for a joining pass, I'm sure he'd provide you with enough juice... in exchange for your soul. A small price for an eternity of fun, if you ask me... Speaking of fun, wanna have a go?' With this, the demon lunges himself at you.";
	else:
		say "     'Oh... Are you lost? What a cutie! And I definitely could use someone to unload my balls into... Master makes us work so much...! Alright, do as you're told and I might let you suck me off! How does that sound?' Without expecting any answer, the demon lunges himself at you.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Hellfire Demon"	"[PrepCombat_Hellfire Demon]"

to say PrepCombat_Hellfire Demon:
	setmongender 3;
	project Figure of HellfireDemon_clothed_icon;

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hellfire Demon";
	add "Hellfire Demon" to infections of DemonList;
	add "Hellfire Demon" to infections of OtherworldlyList;
	add "Hellfire Demon" to infections of MaleList;
	add "Hellfire Demon" to infections of BipedalList;
	add "Hellfire Demon" to infections of TailList;
	now Name entry is "Hellfire Demon";
	now enemy title entry is "Hellfire Demon"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He charges towards you, knocking you back violently.[or]With a swing of arms, his sharp claws cut through your skin like heated blades.[or]By focusing energy, the red demon sprays quick flames in your direction, leaving you singed.[or]Enraged, the scarlet demon charges at you with his claws ready to mutilate you. Luckily, you escape with just a painful scratch.[at random]";
	now defeated entry is "[HellDemon loses]";
	now victory entry is "[HellDemon wins]";
	now desc entry is "[HellDemon Desc]";
	now face entry is "of a fiery demon with bright yellow eyes and dark sclera, featuring an wide and chiseled jawline, covered in a short black beard, and very short dark hair on the topside of your head, with pointy ears on both sides. Two large and thick taurus-like horns emerge from your forehead, getting thinner towards the tip";
	now body entry is "that of an athletic bodybuilder, musclebound and solid, offering both strength and neat posture. There's also some body hair on you";
	now skin entry is "deep red"; [ format as "You have (your text) skin"]
	now tail entry is "You have powerful, rock-hard glutes, with a long demonic tail that swings back and forth behind you, ending in a classic spaded tip"; [ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]demonic[or]demon[or]infernal[or]bump-ridden[at random]"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "you begin to feel your skull reshaping under your skin, becoming wider and more masculine. A strange feeling in your mouth heralds your canine teeth sharpening and becoming longer to give you a rather intimidating smile. Finally a pair of large horns grow out of the top of your forehead, tauric in shape. Even your eyes have changed, to bright yellow irises enveloped by a darkened sclera"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well, and you feel both stronger and agile. There's a strange and intense heat inside you"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin color has turned into a deep shade of red"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel it becoming tighter, powerful, and more fit. This is followed by a strange feeling at the base of your spine, and then there is a very strange, and painful, burning sensation, as if your flesh is boiling and liquefying. The pain lasts for some time, but, when it finally subsides, you can feel your new, long demon tail sway back and forth behind you, equipped with a spaded tip and everything"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it begins to grow thicker, large bumps sprouting up all across its surface"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 13;
	now sex entry is "Male";
	now HP entry is 115;
	now lev entry is 13;
	now wdam entry is 21;
	now area entry is "Red"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 17;
	now Ball Size entry is 4; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 80; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "hellfire demon horn shard"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "hellfire demon milk";
	now CumItem entry is "hellfire seed";
	now TrophyFunction entry is "[GenerateTrophyList_Hellfire_Demon]";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]muscular[or]powerful[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "demonic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 2; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4-1 - Items

Table of Game Objects (continued)
name	desc	weight	object
"hellfire demon horn shard"	"A fragment of one of the Hellfire Demon's obsidian horns. It seems to have been chipped off during a fight."	0	hellfire demon horn shard

hellfire demon horn shard is a grab object.
It is temporary.
Usedesc of hellfire demon horn shard is "[hellfire demon horn shard use]";

to say hellfire demon horn shard use:
	say "Holding the shard between your palms, you stroke over it, carefully. Strangely, the obsidian disintegrates after a while, becoming a cloud of fine crystallic particles that are absorbed into your skin. It seems to cause some sort of reaction with the nanites in your system...";
	HellfireDemonInfect;

instead of sniffing hellfire demon horn shard:
	say "The shard doesn't smell like anything in particular.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"hellfire seed"	"The white, gooey seed of one of your past demonic lovers. It smells very sweet, a little like burnt cream, and feels really hot. Comes inside a plastic water bottle that could be mistaken for some sort of buttermilk, if someone hadn't written 'Hellfire Demon' across the label. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	hellfire seed

hellfire seed is a grab object.
hellfire seed is cum.
Usedesc of hellfire seed is "[hellfire seed use]";

to say hellfire seed use:
	say "     The warm, sticky liquid tastes almost too hot, but very sweet, as you drink it. You feel the warm seed going down your throat, leaving the delightful sensation of a tasty and hot beverage. It leaves a lingering lust for sex...";
	PlayerDrink 5;
	SanLoss 10;
	increase Libido of Player by 15;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a reaction with the nanites in your system...";
		HellfireDemonInfect;

instead of sniffing hellfire seed:
	say "The demonic semen smells sweet, a little like burnt cream.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"hellfire demon man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Hellfire Demon Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	hellfire demon man-milk

hellfire demon man-milk is a grab object.
hellfire demon man-milk is milky.
Purified of hellfire demon man-milk is "distilled milk".
Usedesc of hellfire demon man-milk is "[hellfire demon man-milk use]";

to say hellfire demon man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the demonic man-milk run over your tongue and down your throat. Tastes rich and oddly sweet. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a raction with the nanites in your system...";
		HellfireDemonInfect;

instead of sniffing hellfire demon man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

[---]

to HellfireDemonInfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Hellfire Demon":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	infect "Hellfire Demon";
	now non-infectious entry is true;

Section 4-2 - Equipment



Section 5 - Endings

Hellfire Demon ends here.
