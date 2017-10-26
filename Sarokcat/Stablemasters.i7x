Stablemasters by Sarokcat begins here.

"Adds a new area to Flexible Survival with a variety of npcs..."

Section 1- Master's Office

Master's Office is a room. It is fasttravel. It is private. It is sleepsafe.

The description of Master's Office is "This large and rather spacious room was once the [']office['] of the owner of the Stables Hotel, however now it is your new room and the centerpiece of your new kingdom. The room itself was obviously once a suite for VIPs and dignitaries and is quite well furnished, though the previous Stablemaster obviously did plenty of redecorating during his time here. There are now several large mattresses and piles of cushions around the area, as well as a number of rather nice paintings and hangings adorning the walls, and thick plush carpeting covers the floor which actually makes things quite comfortable for your hooved feet. Several new furnishings also are now in the public side of the large room however, a functional new desk with an in-box for reports that affect the Stables, as well as several overstuffed chairs sized for your new equine staff when you decide to meet them here. Although perhaps your favorite new furnishing is the former Stablemaster herself, the lovely little black equine looking especially fetching in her new sexy slave collar as she kneels off to the side of the room.".
Slutslave is in Master's Office.

the linkaction of Slutslave is "Possible Actions: [link]talk[as]talk Slutslave[end link], [link]smell[as]smell Slutslave[end link], [link]fuck[as]fuck Slutslave[end link], [link]train[as]train slave[end link][line break]";

the scent of Master's Office is "The Master's Office, your office, smells of equines and sex.".

the scent of Slutslave is "Your slutslave smells of horses, lust and sex.".

The invent of Master's Office is { "chips", "soda", "cot", "medkit" }.


Section 2- Slutslave

Slutslavetalk is a number that varies.
LastSlutslavefucked is a number that varies. LastSlutslavefucked is usually 250.
Slutslavefucked is a number that varies. Slutslavefucked is usually 0.

Slutslave is a man.[or woman]
The description of Slutslave is "     Your sexy black mare slave is kneeling meekly in the corner, her blazing red hair and tail shifting slightly with her every movement as she watches you coyly with obvious arousal. The slave collar you put on her has seemingly bonded with her skin, and now can only be seen as a thin line of gold with some strange patterns around her neck, though your new tag fits on it nicely, hanging down between her new ample breasts and proudly proclaiming her to be your [']slut[']. Her tight, well formed body is made specifically for pleasure, as you know all too well, and you can see her naked pussy is already damp with anticipation as you look your new slave over with some amusement. She certainly makes a better slave after all than a master... and she seems to enjoy her new lot in life quite a bit as well. Looking at her closely however you can still see a glimmer of dark intelligence within her eyes, showing that while she has become a submissive pet like she always should have been, there is still quite a bit of knowledge there to be acquired. Perhaps you should take time out to [bold type]learn from slut[roman type] sometime, or maybe just spend some time enjoying [bold type]training[roman type] your slave.".
The conversation of Slutslave is { "Fuck me!" }.


instead of conversing the Slutslave:
	if Slutslavetalk is 0:		[Normal short messages the npc will say each time you talk to them]
		say "     [one of]'Welcome back master!'[or]'You make such a handsome owner.'[or]'I don't know how a little slut like me could have ever thought to challenge someone as masterful as you...'[or]'Has master decided on a name for his slut yet?'[or]'Your slave never knew how wonderful being a pet could be before, thank you so much for showing me!'[or]'I love my new collar so much...' she moans happily.[or]Your slave just stares up at you adoringly from her kneeling position.[or]'Would master like to hear about some of the things there slave has learned when she was free?'[at random]";


the fuckscene of Slutslave is "[sexwithslutslave]";

to say sexwithslutslave:
	if lastSlutslavefucked - turns < 2:
		say "     'Sorry, master,' your new slave pants out breathlessly as she kneels helplessly in front of you, 'but your new slave just can't keep up with your incredible stamina.' She has an apologetic, almost disappointed tone as she prostrates herself before you. 'Perhaps master should come back soon and train their new slave again?' she says with a rather lustful tone in her voice, which causes you to grin at how far the formerly dominant stallion has fallen.";
	else:
		if cocks of player > 0:
			say "Your slut squeals with delight as you make your desire to use her soft black equine body once again obvious as you approach her all too eager form. You can feel a grin spreading over your powerful equine muzzle as your sexy pet lies back on the cushions around her and spreads her soft equine thighs for her new master. The sight of the formerly dominant Stablemaster, now reduced to your eager and wanton slut excites you more than ever, your powerful equine cock growing stiff with desire as you teasingly approach your lovely pet, enjoying her soft moans of desire as you approach, and the was she spreads herself open for her stallion so very eagerly. Her soft whinny of need and desire for your strong stallionhood as you lower yourself above her is like music to your ears, your cock twitching with pleasure even as it slowly begins to rub up against her body, the soft black fur of her inner thighs making you moan slightly even as you prepare to claim your slut's body for your own once again. Your slut squeals with pleasure her legs wrap around your thighs almost automatically as you sink your powerful stallionhood into her pink slit, her hot needy passage eagerly welcoming home her master' stallionhood. You groan as the sensation of her velvety passage gripping and massaging your member rushes through you, before pulling out slightly and thrusting back into your lusty little mare. Every thrust making your pet moan with pleasure and desire as you once again conquer her body for your own, a slight smirk crossing your face even as the pleasure increases with every thrust, as you once more enjoy the fruits of your victory over the formerly powerful Stablemaster, now just another slutty little mare.[line break]";
			say "The pleasure of feeling of the formerly dominant stallion moaning underneath you as a wanton mare, as well as the exquisite pleasure of her soft passage clenching your stallionhood tight, is just too much for you to handle for long. And almost before you know it your mind explodes in pleasure as you give your slutty little mare exactly what she has been begging for, your strong seed filling her needy body even as she cries out underneath you in ecstasy. Groaning in pleasure as your lusty little slut's passage milks your cock for every drop of its lovely nectar, you find yourself grinning almost uncontrollably as you begin to shift your hips and begin to slowly pound into your favorite little pet once again... making use of your new stallion like endurance as you begin to wring several more orgasms out of her desperately needy form. As your second orgasm begins to build, you can't help but think -[line break]";
			say "{Scene incomplete.}";
			infect "Nightmare";
			now lastslutslavefucked is turns;
		else:
			say "Picking a rather comfortable spot amongst the cushions, you smirk as you gesture for your slutty new pet to approach her mistress, enjoying the way her eyes light up with desire as she crawls over to your equine form, obviously eager and ready to please her mistress. Looking over her lithe black equine form as she approaches, you find yourself smirking slightly even as you spread your legs out so she can worship her mistress properly, amused at how eagerly the formerly dominant stallion has fallen into her new role as a sexy little pet for your amusement. You are distracted from such thoughts rather quickly however, as her soft equine muzzle nuzzles your maresex almost lovingly, the feeling of her soft muzzle on your sensitive flesh causing you to moan in delight, and only serves to encourage your little slave all the more. You close your eyes in bliss as she begins to nibble teasingly at your already damp sex, and find yourself moaning again as her flexible equine tongue begins to lap at your already damp passage. Each lick of her tongue sending small shocks of electric pleasure throughout your body as she expertly begins to increase the pace, her soft hands stroking over your inner thighs and equine feet as she pleasures you with her mouth. Looking down at the burning red hair of the mare between your legs, you find yourself burying your hands in her mane as you press her face even deeper into your crotch, the increased sensations making you groan as the pleasure continues to build up in your body. You can see your pets fiery tail waving eagerly in the air behind her uplifted rump even as she redoubles her efforts to pleasure you, proving just how much your pet is enjoying the opportunity to worship her new goddesses sex. The intense satisfaction of having such a beautifully broken and trained pet, mingles with the pleasure your pets wonderful hands and tongue are bringing your body, and soon you find yourself awash in a sea of sensation as you let out a loud cry of pleasure as your orgasm shoots through you. You find yourself continuing to whinny in pleasure, as your lovely little slut continues to lick and nibble at your sex even as her muzzle is covered in your juices, obviously happy and desperate for the taste of her mistress. Grinning slightly, you relax as you let her continue to work on your already pleasure-filled body, looking forward to seeing just how many orgasms her skilled tongue can bring you before you have to go back to the city and your duties as Stablemistress...";
			infect "Nightmare";
			now lastslutslavefucked is turns;


lastSlutslavelearned is a number that varies. lastSlutslavelearned is usually 250.
Slutslavelearned is a number that varies. Slutslavelearned is usually 0.

Slavelearning is an action applying to nothing.

Understand "Learn from slut" as Slavelearning.
Understand "Train slave" as Slavelearning.
Understand "Train your slave" as Slavelearning.
Understand "Learn from slave" as Slavelearning.
Understand "Listen to slave" as Slavelearning.
Understand "Train slut" as Slavelearning.

Check Slavelearning:
	If Slutslave is not visible, say "huh?" instead;

Carry out Slavelearning:
	[puts Nightmare as lead monster for comparison]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Nightmare":
			now monster is y;
			break;
	if LastSlutslavelearned minus turns < 10:
		say "Your slave glances down at the ground sadly, and shakes her head slightly apologetically. 'Your Slut is truly sorry master, but she doesn't think either of us are ready for another training session so soon... maybe her gorgeous master should come back a little later? And maybe even punish their slut for not being ready sooner?' She says in a rather sad tone, though you can see from the slight dampness on her black thighs that the idea of being punished has already made your little pet hot and needy...";
	else:
		let T be a random number between 1 and 6;
		if T is 1:
			say "Looking at your slave, you ponder just what to do with your lusty little slut today, only to notice that the gleam in her eyes as she stares back at you seems almost defiant for some reason. Feeling a grin spread over your muzzle, you realize that perhaps it is time to once more prove your dominance over your slutty little pet, and you enjoy the feel of your powerful equine form as you stalk over to teach your slut a lesson once again. Her fiery equine eyes widen slightly as you approach, as if realizing just what you are about to do, just before you grab the new mare by her fiery hair and begin to wrestle her down to the ground. The former Stablemaster puts up a bit of a struggle as you pin her to the ground, though you can hear her moaning with desire even as she tries to resist your dominance. After several enjoyable minutes of wrestling with your slave, your strong muscles straining against her lithe form as you hold her down, you hear the sweet sound of her voice crying out for you in submission. The sound of her surrender echoing sweetly through your head, you continue to enjoy proving your strength and power to your little slut for several minutes more, even as her cries of pleasure and surrender grow ever more passionate. Finally when you have exhausted your little pet, and you yourself are feeling more than a bit winded from all the exertion, you stand back up and stretch leisurely, feeling more powerful than ever after your lovely little workout with your pet.";
			if Strength of player < str entry:
				say "Your Strength has increased!";
				increase Strength of player by 1;
			now Lastslutslavelearned is turns;
		else if T is 2:
			say "Idly leafing through some of the papers on the desk, you catch a glimpse of movement out of the corner of your eye, and note that your slut appears to be doing some rather unusually lewd stretching exercises. Feeling rather curious you watch her lithe body as it slides from one pose to another before she eventually pauses and blushes upon realizing you have been watching her. Feeling rather amused and aroused by the show, you decide to go join your slave for a minute, as you make her do several of the stretches and poses over again for your enjoyment. Eventually though, you find yourself trying several of the stretches out yourself, and are rather surprised at how effective they seem to be on your new equine frame. After only a short amount of time stretching and twisting your body with your pet, you find yourself growing too aroused to resist her sultry and sweaty body, and soon you are busy putting that lovely flexibility of hers to use on the cushions... Afterward you do however find yourself feeling far more flexible yourself, and grin as you find yourself looking forward to joining your pet in her exercise routine far more often...";
			if dexterity of player < dex entry:
				say "Your Dexterity has increased!";
				increase Dexterity of player by 1;
			now Lastslutslavelearned is turns;
		else if T is 3:
			say "Glancing at your slave, you look back down at the report on your desk from Fancy, before glancing at your slutty little slave again, almost impressed in spite of yourself at what the report states. Frowning slightly as you look at the estimation of just how many mares the former stallion was reputed to have visited back to back on the few nights he took himself out into the Stables proper, you realize that you have quite a reputation for stamina to live up to now. Of course you find yourself smirking with anticipation at how much fun you will have trying to do so, and decide that perhaps there is no time like the present to begin building up the stamina you will need in order to ensure the entire stable is [']well serviced['] indeed... Glancing over at your unsuspecting slut once again, you call for fancy to send you several of the more needy members of the Stables for you to practice on, looking forward to a rather long and well earned exercise session with your slut as you get up from your desk and get ready for the fun.[line break]";
			say "You groan slightly as you eventually settle your overworked body back at your desk, your muscles protesting the activity even as you lean back in the far too comfortable chair. Glancing around the room at the number of passed out mares and even several well used stallions sprawled all over every surface, you can't help but feel pleased at how well things went. And as your eyes drift over to the well used body of your favorite toy, where she lies passed out on the cushions helplessly, you already find yourself looking forward rather eagerly to your next lovely endurance session... once your body stops aching from this one anyways...";
			if stamina of player < sta entry:
				say "Your Stamina has increased!";
				decrease HP of player by 20;
			increase Stamina of player by 1;
			now Lastslutslavelearned is turns;
		else if T is 4:
			say "Feeling like you could use a bit of relaxation and fun after all the craziness that is the city nowadays, you find your thoughts wandering towards your little slut. Turning to look at her, you find yourself deciding on the perfect way to relax, and with a small smirk playing across your muzzle you gesture for your pet to put on a show for your amusement. The expression of joy and anticipation on your little slut's face is priceless as you lean back and watch her the formerly proud and independent stallion, rub her hands over her new submissive mare's form, as she begins to pleasure herself for your amusement. Your slut dong her best to tease you as she shows off her body for your amusement, her actions making you grin at how depraved and needy your little pet is now, getting caught up in the moment as your eyes enjoy tracing the lines of her soft black pelt as she strokes her hands through it. And you quickly find yourself enjoying every eager moan and whicker of the mares voice as she massages her body with her hands, her legs splayed wide and giving you a perfect view of her lovely maresex. Leaning forward you find yourself panting slightly with increased desire yourself as you find yourself noticing every detail of the arousing show in front of you, from the way her slightly hooflike hand massages her ample breasts, to the soft curves of her thighs as she runs her hand down them teasingly, and even the slight dampness leaking out of her needy sex as she moans and massages herself before you. Despite growing increasingly aroused by the sight yourself, you just can't bring yourself to interrupt the show in front of you, or even take your eyes off of your sexy slut for even a second as she slowly brings herself to orgasm at your command. When it is finally over you find yourself leaning back slightly with a smile on your face as you play your eyes over the spent form of your skillful little slut, noticing details from the play of light over her fur, to the soft way her breath causes her breasts to rise and fall teasingly. Blinking slightly as you lean back and enjoy the moment, you resolve to pay a bit more attention to all the sexy details all around you, lest you miss any minor detail of some lovely show around town...";
			if perception of player < per entry:
				say "Your Perception has increased!";
				increase Perception of player by 1;
			now Lastslutslavelearned is turns;
		else if T is 5:
			say "Groaning slightly as you try to make sense of some of the hastily scrawled papers your Stable members have sent you, you find yourself blinking in surprise slightly as your slut pipes up and offers to try helping her master. Feeling both amused and not a touch frustrated, you gesture your pet over, and are soon surprised at how she manages to translate some of the near illegible hoofwriting of your subjects. Bending over the desk once again with renewed vigor, you and your pet quickly sort through the remaining requests and reports on the city, and almost before you know it you have cleared the desk of all the paperwork. Glancing with surprise at your blushing slave, you find yourself grinning and considering [']rewarding['] her for her good service, feeling considerable better able to figure things out for yourself now that you have a little help, you get up to do just that...";
			if intelligence of player < int entry:
				say "Your Intelligence has increased!";
				increase Intelligence of player by 1;
			now Lastslutslavelearned is turns;
		else if T is 6:
			say "Looking your sexy little slave up and down speculatively, you decide that perhaps she might still have some information of benefit to you, and so gesture her over. She looks up at you rather wantonly as she approaches, only to seem rather disappointed when you only seem interested in picking her brain for useful information. The former Stablemaster is however eager enough to reply to your questions however, and you find she has a number of very useful tips and tricks for manipulating discussions and conversations, and even gives you some rather helpful advice on putting your powerful and sexy frame to use in dominating conversations... and other people...";
			if charisma of player < cha entry:
				say "Your Charisma has increased!";
				increase Charisma of player by 1;
			now Lastslutslavelearned is turns;


Stablemasters ends here.
