Version 2 of Zigor by Stripes begins here.
[Version 2.0 - Stage 2 started]
"Adds a Leather Wolf NPC named Zigor to the Flexible Survival game."

Section 0 - Event	[Transposed from Red Events]

Leather Wolves is a situation.
The sarea of Leather Wolves is "Red";
when play begins:
	add Leather Wolves to badspots of girl;
	add Leather Wolves to badspots of guy;
	add Leather Wolves to badspots of furry;

Instead of resolving a Leather Wolves:
	say "     Some noise up ahead attracts your attention and you creep closer.  Hunkering down behind a pair of cars, you look at the small pack of wolfmen gathered in front of a leather store.  At some point, several of the mannequins have been stripped of their outfits and the wolves seem to be wearing them.  Somehow their leather gear is shaped to cover large parts of their lupine faces and transformed bodies.  A pair of them are indulging in sex on the leather harness they've hung from a building-side flagpole.  Others are stroking themselves off or fingering their pussies while they watch.  As you study the pack more closely, you come to realize that they are not merely wearing the leather, but that it is part of them at the same time.";
	say "     While you might want to check out the leather goods store you've found, there's a bit too much activity here right now.  Perhaps you'll be able to check it out later once the wolves are done having their fun.  You make note of the place and consider stopping by again in the future.";
	say "     (Now [bold type]Cuero Lobo[roman type] is known.)[line break]";
	now Cuero Lobo is known;
	increase score by 10;
[	say "     With this pack established here, there[']s clearly no safe way to search the immediate area further and you quietly backtrack.";
	increase score by 1;	]
	Now Leather Wolves is resolved;


Section 1 - Leather Store

Cuero Lobo is a room. It is fasttravel. It is private.
The description of Cuero Lobo is "[cuerolobodesc]";

the scent of Cuero Lobo is "The store smells of cured leather, oil and lupine arousal.";

to say cuerolobodesc:
	if hp of Zigor is 0:
		say "     Finding your way back in the area of that leather store, you approach it cautiously.  Scoping it out, you find that the pack of leather wolves has moved on, taking their harness with them.  There is a sign on the window that says 'Out of Stock' but another that says they're open.  Curious and feeling it's probably safe to approach, you head inside.  The store interior has largely been denuded of material, leaving mostly empty mannequins and display photos on the wall, though a few pieces remain.  The scent of leather, oils and lupine sex still hangs in the air.  The store is not as unoccupied as it first appeared though, there being one of those leather wolves reclining casually with his feet up on the counter.";
		say "     'Hola!  Welcome to Cuero Lobo, my friend.  I am Zigor,' he says with a rich Spanish accent, rolling his r's and smiling.  He, like the others you saw outside previously, is partially covered in leather gear that is somehow a part of him.  'I'm sorry, but we are fresh out of stock these days.  Demand for our quality items is quite high, you must understand.  We hope to resume business once all the excitement settles down a little and we're able to provide more to our ever-eager clients.  But perhaps you'd like to stay to keep me company while we wait,' he says in that alluring, sensual accent of his.";
		now hp of Zigor is 1;
	otherwise:
		say "      This leather goods store has been almost completely denuded of its wares by the lustful mobs, its racks and displays emptied and the mannequins disrobed.  The photos on the wall show several of their more elaborate items, many of them quite kinky.  Looking more closely, many of them are actually very explicit photos, probably having replaced the more acceptable sample images that were once in the frames.  The store is manned by Zigor, a leather-bound wolf with a sexy accent.";

[
guards - lupine gimp masks
]

Section 2 - Zigor the Leather Wolf

Zigor is a man.  Zigor is in Cuero Lobo.
The description of Zigor is "[zigordesc]";
The conversation of Zigor is { "Hola!" }.

the scent of the Zigor is "The wolf smells strongly of oiled leather and lupine arousal.";

to say zigordesc:
	say "     Zigor the leather wolf has the build of an average, fit human being, but altered to have lupine features, most prominently his head, hands, feet and tail.  Given that he's wearing/bonded to a leather outfit that covers most of him, you can only see portions of his pelt.  His fur contains a mix of grey, black, brown and rust colours that make him stand out from the other wolves you've seen.  The leather portions of his hide cover his chest, legs and forearms.  It is made of black leather with even some metal rings and straps built into it as well as a separate leather patch that partially covers his plump, pierced sheath.  The wolf has a rich, sensual voice and speaks with a distinctly Spanish accent that turns you on every time you hear it.";


Instead of conversing the Zigor:
	if hp of Zigor is 0:
		say "ERROR-Zigor-0L: You should not be able to find me!";
	otherwise if hp of Zigor is 1:
		say "     Zigor smiles as you chat with him for a little while.  'My store has always done quite well, our goods being the best around,' he says with pride.  'And we have only become more popular lately.  We can hardly keep up with demand.  That first night, our store was mobbed by so many eager customers.  Oh, it filled my heart with joy to see them all clamoring for the wares, many of them trying them out right away.  Oh, it was such a sight,' his already sexy voice adding extra sensual emphasis to his words.";
		say "     'Now, our stock unfortunately too low for sales at the moment.  But because I like you, I might be convinced to show you some items from my personal collection downstairs.  I have a room set aside where my special guests and try them out.  Doesn't that sounds like fun,' he says softly, rubbing his leather-clad body against yours while running his padded fingertips along your side.  'I promise to make you cry out with such painful delight,' he adds, his lupine fangs showing as he grins.";
		now hp of Zigor is 2;
	otherwise if hp of Zigor is 2:
		say "     [one of]'I named my store [italic type][']Cuero Lobo['][roman type], or [']Leather Wolf['], because I thought it evoked strength and power.  Little did I know I'd one day become a [italic type]cuero lobo[roman type] myself to make it all the more fitting.'[or]'This is one item that customers particularly enjoy,' he says, pointing to one of the photos on the wall, showing some very kinky leather gear trussing up a [one of]man[or]woman[at random] while they are disciplined and fucked.  'I would love to see you in one of those someday,' he adds with a sensual rumble and a hard squeeze of your ass.[or]'Perhaps I could interest you in a more personal session with my collection downstairs?' he says in that sensual voice of his.[or]'We are working hard to restock our wares, but the demand is so high now.'[or][if the player is submissive]'You look like you'd take very well to my private chamber.  The discipline of a strong, firm wolf is just what you need, carino***,' he says, giving your ass a hard squeeze.  Your submissive urges cause you to moan, making you long to let him have his way with you[otherwise]'I think you should join me downstairs.  The strong ones like you are all the more fun to break and the discipline from a strong, firm wolf is just what you need to do it, carino***,' he says, giving your ass a hard squeeze.  His offer sounds very enticing, making you strongly consider seeing just what he means[end if].[or]'That first night was such fun.  So many eager customers coming in here, trying out our wares right in the store.  You should have been there.  It would have been nice to see them all taking turns with you,' he says with a toothy grin.[or]Zigor runs his eyes up and down you.  'Mmm... I have trouble deciding what to tie you up in first, mi mascota,' he says with a rather predatory smile.[at random]";
	otherwise:
		say "     [one of]'I named my store [italic type][']Cuero Lobo['][roman type], or [']Leather Wolf['], because I thought it evoked strength and power.  Little did I know I'd one day become a [italic type]cuero lobo[roman type] myself to make it all the more fitting.'[or]'This is one item that customers particularly enjoy,' he says, pointing to one of the photos on the wall, showing some very kinky leather gear trussing up a [one of]man[or]woman[at random] while they are disciplined and fucked.  'I would love to see you in one of those someday,' he adds with a sensual rumble and a hard squeeze of your ass.[or]'You should join me for another personal session with my collection downstairs,' he says in that sensual voice of his.[or]'We are working hard to restock our wares, but the demand is so high now.'[or][if the player is submissive]'Someone like you was meant to enjoy all the painful delights of my private collection, carino***,' he says in that sexy accent of his while grabbing your ass[otherwise]'I look forward to another session with the painful delights of my private collection, carino***,' he says in that sexy accent of his while grabbing your ass[end if].  The offer is very tempting, your body longing for more of the wolf's tough love.[or][or]'That first night was such fun.  So many eager customers coming in here, trying out our wares right in the store.  You should have been there.  It would have been nice to see them all taking turns with you,' he says with a toothy grin.[or]Zigor runs his eyes up and down you.  'Mmm... I have trouble deciding what to [if a random chance of 1 in 3 succeeds]tie you up in next[otherwise if a random chance of 1 in 2 succeeds]strike you next[otherwise]train you with next[end if], mi mascota,' he says with a with a rather predatory smile.[at random]";


the fuckscene of Zigor is "[sexwithZigor]".

to say sexwithZigor:
	if hp of Zigor < 2:
		say "     You should probably get to know him a little before making such an offer.";
	otherwise if cocks of player is 0:
		say "     'I apologize.  I thought I mentioned this, but my collection is only available to those of a more masculine persuasion at the moment,' he says with regret.  'Surely you can find someone out there who can help you with that,' he adds.";
		say "[bracket]Only M/M content at present - The Mgmt.[close bracket][line break]";
	otherwise if lastfuck of Zigor - turns < 8:
		say "     'I know you long for more, but this is about teaching you discipline.  If you cannot wait until the next session, then you aren't learning and I will have to be more... zealous... in my methods.'  Despite his sexy, sensual tone, his lupine teeth show as he emphasizes his point.";
	otherwise if hp of Zigor is 2:
		say "[zigor_S1_00_MM]";
		now lastfuck of Zigor is turns;
		now hp of Zigor is 3;
	otherwise if hp of Zigor < 8:	[Stage 1]
		say "     Asking Zigor for another session in his private dungeon, he motions for you to wait by the door downstairs.  Flipping the sign on the window, he calls out for [randomwolfgimp] to [one of]stand guard[or]mind the store[or]keep an eye on things[at random] while he's occupied[if hp of Zigor is 3].  Another leather wolf comes out, looking quite similar to the previous one and again covered by a gimp mask.  He pays you little mind and says nothing, moving to guard against intruders[otherwise].  The masked, leather-bound wolf exits from the [one of]back room[or]stockroom[or]leatherworking room[at random] and moves to guard the front door[end if].  Knowing you won't be disturbed, you follow Zigor down the stairs and into the dark basement.";
		if hp of Zigor is 6 or ( hp of Zigor is 7 and a random chance of anallevel in 5 succeeds ):	[hp of 6-7 - buttplug training]
			say "[zigor_S1_analtraining]";
		otherwise if hp of Zigor is 4 or ( hp of Zigor > 4 and a random chance of anallevel in 5 succeeds ):		[hp of 4 - anal]
			say "[zigor_S1_02_MM]";
			now libido of player is ( libido of player + libido of player + 100 ) / 3;
		otherwise:		[hp of 3 - oral]
			say "[zigor_S1_01_MM]";
		if hp of Zigor < 7, increase hp of Zigor by 1;
	otherwise:
		say "     After flipping the store sign to [']closed['] and calling for [randomwolfgimp] to come to the front, you are brought down into your dominator's private dungeon.  With the silent, masked wolf there to [one of]stand guard[or]mind the store[or]keep an eye on things[at random], you know you will neither be disturbed nor be saved from Zigor's painful dominance.  And still you descend, a thrill of excitement and anticipation already running through you, already getting hard at the thought of it.";
		if hp of Zigor is 8:		[intro to second level - suspended and whipped]
			say "[zigor_S2_00_MM]";
			now hp of Zigor is 9;
		otherwise if hp of Zigor is 9:			[oral]
			say "[bracket]Temporary reuse of stage 1 scene.[close bracket]";
			say "[zigor_S1_01_MM]";	[temporary reuse of previous oral]
			now hp of Zigor is 10;
		otherwise if hp of Zigor is 10:			[anal]
			say "[bracket]Temporary reuse of stage 1 scene.[close bracket]";
			say "[zigor_S1_02_MM]";	[temporary reuse of previous anal]
			now hp of Zigor is 9;
[			now hp of Zigor is 11;	]
		otherwise if hp of Zigor is 11:
			say "***";
			[fucking machine?]
			[toy?]
		otherwise if hp of Zigor is 12:
			[Zigor rides player's cock on rack]
			[offer to give you something special]
			if the player consents:
				say "***";
				[grand finale]
			otherwise:
				[whipped again for not accepting the training enough]
				say "***";
				now hp of Zigor is 9;		[reset cycle]
	now lastfuck of Zigor is turns;


to say zigor_S1_00_MM:	[stage 1 intro - MM]
	say "     Deciding to accept Zigor's offer, you tell him you'd like to view his collection.  Smiling at this, he flips the open sign to closed and calls out for [randomwolfgimp] to come out and watch the store.  A few moments later another leather wolf arrives from the back of the store.  He is almost completely covered in leather fetish gear, to the point of even having a lupine gimp mask fused over his face.  His amber eyes spare you only a momentary glance before standing silently on watch in the room.  Surprised by his appearance, you turn your gaze from him only when Zigor calls for you to follow him through another door and down the stairwell.";
	say "     Unlocking the basement door, Zigor leads you into a lantern-lit, dungeon-like room outfitted with an array of kinky BDSM gear.  You'd suspected you'd find something like this down here, but nowhere near to this extent.  Set up around the room is an array of chains, slings and other restraining devices.  A rack along one wall has shelves of whips, paddles and other pain-inducing items.  A small table next to that has an array of dildos, butt plugs and other sex toys orderly arranged atop it.  There are several black cabinets and locked trunks as well, probably holding even more startling gear.  Even moreso than upstairs, the whole room smells strongly of leather and lupine sex.";
	attempttowait;
	say "     As you're trying to take it all in, Zigor suddenly grabs you and pushes you down overtop of a padded bench.  With a speed that must come from considerable practice, he has your wrists snapped into the leather shackles even before the stars clear from your eyes.  'As this is your first time, I thought we'd start with something simple, mi mascota,' he says in that sexy voice of his.  He removes anything covering your ass before groping it with a paw.  But just as you start to relax, there comes a hard, painful SWAT! as something strikes your butt cheek.  Looking back, you see him raise the riding crop again and bring it down on your other cheek.";
	say "     The throbbing sting of the blows are echoed by the throbbing of your cock, quickly growing hard.  After a few more stinging swats, Zigor pauses for a moment to stroke your [cock of player] penis, spreading your leaking precum across it.  'Mmm... I knew you'd like this,' he says with that sensual Iberian accent of his.  'The proper amount of discipline is what people like you need to bring out the best in them.'  He brushes the leather flap of the riding crop across your manhood, over your balls and then between your cheeks.  He resumes lashing you with the crop as he continues to stroke you off.  As he continues, the line between pain and pleasure blurs more and more until you're crying out for him to hit you again the next time he pauses.  Grinning toothily, he gives you a hard swat across the balls.  You scream loudly, cumming hard as tears run from your eyes.  He pumps you for all you'll give, catching [if cock width of player < 25]most of it in a bucket under the bench[otherwise]as much as he can in a bucket under the bench[end if].";
	say "     The wolf gently caresses your sore ass with one paw as he undoes the shackles.  'You did well enough for your first time, I suppose.  But I expect better of you in the future,' he adds, squeezing your rump painfully in emphasis.  'Return for another session tomorrow.'  You moan and nod, unsure how you failed, but finding yourself wanting to do better regardless.  And with that, he pulls you off the table and shoves you out the door, forcing you to stumble up the stairs with your balls still aching.  Despite the pain, it is a pleasant ache that you want to feel again soon.";


to say zigor_S1_01_MM:	[stage 1 - oral - MM]
	say "     Once inside, he orders you over to the wooden stocks in one corner of the room.  The restraint [if scalevalue of player is not 3]has been fitted with boards where the holes have been scaled to fit your wrists and neck[otherwise]has holes cut into the boards for your wrists and neck[end if][if hp of Zigor is 3].  When you hesitate, he lashes your ass with a flog, prompting you to climb into it[otherwise].  You obediently move over to it and climb into it[end if].  Resting your chest across an angled, leather-padded bench, you place yourself in the holes and your dominator locks you into it.  With you trapped, he takes his time to run his flog across your cheek while giving you a wolfish grin.  He then strides around behind the medieval restraint, moving out of your line of sight.  You're left staring at the wall for a while, making you wonder if he's left you alone before suddenly receiving a harsh lashing across your ass, making you cry out in pained surprise.";
	say "     You are lashed and whipped for quite some time, broken up by brief respites of him stroking your erect cock.  The lupine dominator strikes you all over, paying particular attention to your ass, [if breast size of player > 0]breasts[otherwise]pecs[end if] and sides, though few spots are spared from the flog's touch.  The heat of every lashing seems to make your [cock of player] penis ache all the more even as your eyes water from the pain.";
	say "     Once you're aching all over and about to cum from it, he stops and moves back around in front of you.  You can see he's removed the patch from his loins, uncovering his white sheath and the black cock emerging from it.  Grabbing your head roughly, he forces his cock into your mouth.  'Take it, my pet.  Suck it like you need it to live, you slutty bitch.  But if you bite,' he says in warning while rubbing his scourge across your cheek again, 'you will truly know my wrath.'  His voice gets hard like steel, hard like that wolf cock stuffed in your mouth, as he growls menacingly at you.  You nod quickly and start sucking at his cock, your unsatiated arousal making you lustful for his lupine seed.  You're doing well until it whips you again suddenly across the back, causing you to moan.  You resist the urge to clench your teeth, but the effort makes your jaws ache even more.  Thankfully, after his extended torture of you, he's quite close himself and you're able to finish him off before your jaw muscles give out.  And your reward is the delicious rush of his wolf cum into your mouth and down your throat, which you gulp down hungrily.";
	say "     His balls drained, Zigor takes your cock in hand and strokes you off, rewarding you for being such a good, cocksucking pet.  On edge for so long, it only takes a few pumps to get you to climax.  Your [cum load size of player] load is shot into a bucket beneath you, the last few shots aided out of you by lashes from his flog across your ass.  Once you're spent, he leaves you in the stocks.  You can only stare at the wall as he casually cleans up the mess and straightens the room while the painful lashings fade to dull aches as your body quickly heals.  It's hard to tell how long you're there, losing track of time before finally being freed and allowed to return back upstairs.";


to say zigor_S1_02_MM:	[stage 1 - anal - MM]
	say "     Once inside, he grabs you by the back of the neck before your eyes can adjust to the low light and pushes you onto a leather sling.  In it, you are suspended face down off the ground at waist height[if scalevalue of player > 3].  Given its size and reinforced chains, it has clearly been made after the outbreak to hold [body size of player] mutants like yourself[end if][if hp of Zigor is 4].  When you try to get up, you're given a smack on the back of the head by the wolf as he growls for you to stay where he puts you[otherwise].  Knowing what's coming, you get settled into the sling and hold out your arms and legs for your dominator[end if].  Picking up some manacles and shackles, he places them around your ankles and wrists, tightening the chains enough that you can swing, but are unable to resist or escape.  With you secure, he strides over to his shelf and selects a [one of]hard[or]leather[or]wooden[or]long[or]wide[at random] paddle with considerable care while you are forced to watch him mull over his decision, increasing your trepidation and anticipation further.  His choice made, he gives it a hard SMACK! across your rear, making you cry out.";
	say "     Your rear is tenderized by several more painful blows, each one accompanied by a twitch of your cock and a spurt of precum.  The stinging of your rump is soothed by the soft caress of his sheath fur and the dribbling precum leaking from his emerging shaft.  Getting himself lined up, he thrusts hard into you without preamble, the suddenness of the penetration only adding to the aching pleasure you're feeling.  He fucks you hard and fast, rocking you in the sling.  From time to time he pulls on the chains to force himself in harder or swats your shoulder, back or thigh with the paddle.  Despite, or perhaps because of the pain, the rough fucking feels wonderful, your asshole clenching tightly around his lupine penis with every blow, allowing you to feel every push, throb and grind it makes inside your oversensitive ass.";
	say "     After a good, long session of painful fucking, he drives his foot long cock into you, knot and all.  With a howl and his claws sinking into your tender ass, he cums.  His lupine seed blasts into you, filling your ass with his creamy load.  This sends you over the edge and you cry out, cumming messy streaks of cum onto the floor as you spill your [cum load size of player] load onto the stone floor.  Zigor hardly waits for his knot to go down before yanking it out hard, causing you to cry out even as his oily cum leaks out to soothe it.  He leaves you suspended like that for a while, disciplining you with more blows from the paddle.  It is only once you're hard again that he releases you, aching and aroused, to go back upstairs.";


to say zigor_S1_analtraining:
	say "     Once inside, he directs you to the padded bench you used on your first visit with a hard swat from a switch he pulled off the wall.  With a whimper of delight, you get naked and onto it as quickly as you can[if hp of player is 6], earning a second lashing as you're not quite fast enough for your dominator's liking[end if].  As quick as before, he has you shackled down onto it, leaving you at his not-so-tender mercies.";
	if "Twisted Capacity" is not listed in feats of player:
		say "     He drags the switch slowly between your ass cheeks, but does not swat you as you whimper and raise your ass for him.  He instead starts spreading some lube across your pucker and then pushing one finger and then another into it[if hp of player is 6].  At first, you are rather surprised at how tender and sensual he is about this.  But when he selects a dauntingly large buttplug from his collection you realize what his true intentions are[otherwise].  Knowing what is to come, you do your best to relax, enjoying his sensual touch while you can before he selects a dauntingly large buttplug to be used on you[end if].  He has a very cruel grin on his lupine face as he lubes up the massive toy before jamming it hard against your back entrance.  The earlier preparation is nowhere near enough to cope with such a big toy and you're left whimpering and moaning in a mix of pleasure and pain as he works it steadily deeper with hard pushes while stroking your dangling cock with his other paw.";
		say "     'That's it, little mascota,' he whispers sensually in your ear as he gives it another hard push.  'Your body needs to be trained.  These are such interesting times; you need to be -he drives the increasingly thick plug another inch into you- prepared to accept it.'  He gives a chuckling growl and gives the toy another push.  It hurts, but it is a good hurting and your cock is rock hard and dribbling with pre from the wolf's constant stroking.  As the session goes on, it gets more and more difficult for you to deal with the thick base of the latex plug, but [if hp of Zigor is 6]Zigor keeps pushing to stretch you out[otherwise]you do you best to accommodate the dominant wolf's toy[end if].";
		say "     After what feels like hours of stretching, your anus crests the widest point and quickly yanks the rest of the toy into your ass as it closes back down around the narrower portion.  This slams the toy buried deep inside you against your prostate, setting you off into a screaming climax as your reward for finally succeeding.  The whole of your lower body, aching from the effort of your training, quivers and trembles as you spray your [cum load size of player] messily onto the ground and into the waiting bucket.  As you're cumming, the leather wolf moves in front of you and forces his cock down your throat, feeding you his seed after a few thrusts.";
		increase xp of Zigor by 1;
		if xp of Zigor is 3:
			say "     'It pleases me to see you coming along so well, cachorro.  That should help with your ordeals in the city as well as let us move on to some more intense pleasures,' he says with a toothy smile in that sensual accent of his.  He gives your ass a firm squeeze with his claws digging in, causing your ass to clench and squeeze down around that extremely large buttplug it is holding with ease.  As he leaves you there to enjoy the sensation of fullness and being delightfully stretched inside, you eye his collection with a hunger for the various huge toys.";
			say "     [bracket]You have gained the [bold type]Twisted Capacity[roman type] feat.[close bracket]";
			add "Twisted Capacity" to feats of player;
			increase score by 20;
		otherwise:
			say "     After several lashings across the ass with the switch, he relents.  'You did well enough, I suppose,' the wolf says in his sensual, Iberian accent.  'Perhaps we'll have you try something [if xp of Zigor is 1]a little bigger[otherwise]with real girth to it[end if] next time.'  Feeling the sore ache from your ass despite the nanite infection, you are filled with both trepidation and anticipation for more.  He leaves you tied up and stuffed for quite some time, your ass gradually becoming used to the added extension.  During this time, your eyes drawn to his collection and those even larger toys awaiting you.";
	otherwise:
		if xp of Zigor is 3:	[got feat from him]
			say "     He drags the switch slowly between your ass cheeks, but does not swat you as you whimper and raise your ass for him.  He instead starts spreading some lube across your pucker and then pushing one finger and then another into it[if hp of player is 6].  At first, you are rather surprised at how tender and sensual he is about this given what you've come to expect and desire from him[otherwise].  Having been through this before, you do your best to relax, enjoying his sensual touch[end if].  As your accommodating anus relaxes and stretches, the surprised wolf plunges further into you.  'It seems that someone has already stretched you out quite nicely, pequeno*** juguete,' he says while teasingly rubbing at your prostate.";
		otherwise:			[got feat elsewhere]
			say "     He drags the switch slowly between your ass cheeks, but does not swat you as you whimper and raise your ass for him.  He instead starts spreading some lube across your pucker and then pushing one finger and then another into it.  Having undergone your training, your accommodating anus relaxes and stretches, allowing the sensual wolf to plunge further into you.  'It seems that you are indeed stretched out quite nicely, pequeno*** juguete,' he says while teasingly rubbing at your prostate.";
		say "     'I have something I have been saving for just this occasion,' the wolf says sexily, giving your ass a swat with the switch as added emphasis.  He strides over to his collection and pulls out a huge, knotted dildo.  It looks much like his own cock, but enlarged and wired to a handheld remote.  This he lubes up quickly before easing it inch by delightful inch into your anus.  He pauses from time to time to give you another few lashings.  These cause you to moan in pleasure as your stuffed hole clenches momentarily around the thick toy inside you.  Once it's buried into you to the top of the knot, he takes a moment to caress your cock and balls, telling you to be a good sub and take it all.  You nod eagerly, your lust-filled mind wanting that thick bulb in you so badly.  Zigor grins at your respond and gives it a hard push, forcing it all into you with a wet plop and a loud cry from you.";
		say "     With that big thing buried and knotted inside you, he's free to stride around you, remote and switch in hand.  The dildo begins to vibrate inside you, sending tingles of erotic bliss through your lower body.  As he starts lashing you, he punctuates each blow by turning up the vibrator briefly, tying your pain into your pleasure.  From time to time, he pauses before you, stuffing his cock down your throat and having you suck his leaking meat.  This goes on for quite a while, the wolf expertly keeping you from cumming as he draws out your punishing delight.  Once he's satisfied with your continued training, he takes your mouth again and lashes you wildly, keeping the vibrator on max until you both have powerful, sticky climaxes that leave you both tired and panting.  Your balls drained, he gradually eases the dial down until its off and removes the knotted dildo from you before sending you back up the stairs on unsteady legs with another swat of the switch.";
		now xp of Zigor is 4;
		now hp of Zigor is 8;


to say zigor_S2_00_MM:
			say "     Once inside, he shoves you face first against a wall hard enough to bruise you.  As he pulls your arms upright, he grinds himself against you, rubbing that leather covered bulge in his crotch against you.  He shackles your wrists together with leather manacles separated by only a short length of chain.  'And now that your training has come along, it's time to progress to more [']intense['] training,' he says with a sensual, intense growl and [if breasts of player > 0]pinches your nipples[otherwise]digging his claws into your ass[end if].  Reaching down to rub your [cock of player] erection, he licks your ear.  'With some more discipline, I'm sure I can bring the very best out of you,' he rumbles in that sensual accent of his.  His paw shifts to your balls, giving them a painful squeeze.  As you cry out, a ball gag is jammed into your mouth and tied firmly.  'As delightly as your cries are, I'm not in the mood for them today.'";
			say "     And with that said, he grabs the chain connecting your manacles and drags you roughly across the floor to a suspended hook.  Hanging you onto the hook, he winches you up until you're suspended freely.  A plump, vibrating toy is jammed into your asshole with little preamble, the penetration still somewhat painful despite your intense training due to the suddenness.  Your ankles are then cuffed together, bound tightly against one another.  Belts are then lashed around your lower legs and then your thighs, each of them being used to strike you harshly before being locked tightly.  Each blow makes your [cock size desc of player] shaft twitch and precum spurt from your [cock of player] cock, the sharp pain exciting you.  By the time he's done trussing you up, your legs are tightly bound together, ensuring that vibrator has no room to escape.";
			attempttowait;
			say "     Zigor strides over to a rack of disciplinary tools, taking his good time in deciding what to use on you.  He examines several paddles, lashes and crops, mulling over his decision while that toy continues to buzz inside you.  It provides a continuous source of low-level pleasure while the aching in your arms slowly grows, all while knowing this is but the preamble and you are left anticipating what is to come.  After drawing it out, Zigor leaves the display case without choosing any of them.  'No, I believe we'll need something a little stronger this time,' he says with a toothy grin, opening up an engraved chest on another shelf.  He pulls a long leather whip from it and gives it a rapid flick, lashing it through the air with a sharp crack.";
			say "     The next crack of the whip is aimed at you, striking your side and stinging painfully.  Your loud cry is muffled by the ball gag, but there is still a loud groan.  'What is that, my pet?  You want it again?' he asks.  You shake your head, but he swings again, striking the underside of your arm.  The lashings continue, the wolf striding around you, landing blows across you all over, front, back and sides and top to bottom.  Zigor is quite skilled with the whip, his blows always striking his target.  Never once does he hit the same place nor does he strike your bonds.  The only exception to this is your ass, upon which he is particularly focused at the end.  Tears wet your eyes from the pain of it, but the continuous vibration adds a layer of pleasure as well to your discipline.  The whipping session is brief, but far more painful and intense than anything he's done before.  You hurt all over, but most especially at your rock-hard cock, your balls churning with need for release.";
			attempttowait;
			say "     After taking his time to clean and oil his whip, he winds it back up and returns it to its engraved case before striding over to you.  The leather wolf smiles and licks his chops as he eyes his handywork.  'Mmm... that felt good.  It has been some time since I gave someone a proper lashing.  It seems you enjoyed it as well,' he rumbles, running a fingertip across your [cock size desc of player] erection.  That said, the sexy wolf opens his muzzle wide and stuffs your cock into his mouth.  His skillful tongue plays across your manhood while he rubs your balls in his padded paws.  After everything you've been through, you don't last long, spilling your [cum load size of player] payload down his throat.  Once he's gotten it all, he licks his chops.  'Oh, what a delicious reward your pain yields.'";
			say "     The wolf lowers you down onto the floor.  Still tightly bound, you can do nothing but lay there and watch as he strokes his large, lupine cock until his seed is splattered across you[if wslevel is 1].  He leaves streaks of white across your whole body, though he makes a point to spray much of it across your face[otherwise].  After leaving streaks of white across your face and body, he sighs softly and releases more fluid onto you, this time painting you up and down with his piss.  He makes a point his spray at your mouth.  With the gag in your mouth, you some of it seeps around, giving you a taste of the acrid fluid[end if].  When he's drained, he removes your gag and offers you his cock.  'Lick me, perra cachonda,' he says, offering you his cock.  In your lustful need, you obey, pressing your lips around it and lick it clean.";
			say "     'Very good.  If you learn well, I will not need to be quite so harsh with you in the future.  Consider this... incentive to accept your training.  Let that wonderful ache and my scent be reminders of whom you belong to, mi mascota,' Zigor says in that soft, sensual voice of his as he caresses your messy face.  He leaves you there for some time, which you appreciate, your body feeling too sore to move quite yet, though the nanites are helping you to recover quickly.  All the while, the toy inside you continues to buzz away, providing constant pleasurable reinforcement, making you look forward to your next session.";


to say randomwolfgimp:
	say "[one of]Miguel[or]Emilio[or]Fernando[or]Javier[in random order]";

[      hp of Zigor      ]
[ 0 = not been to store ]
[ 1 = seen store        ]
[ 2 = talked to Zigor   ]
[ 3 = session 1         ]
[ 4 = session 2         ]
[ 4 = session 3+        ]

[      xp of Zigor      ]
[ 0 = no anal training  ]
[ 1 = anal training 1   ]
[ 2 = anal training 2   ]
[ 3 = training done     ]
[ 4 = Twisted Capacity  ]


[options:
doggy-style locking spreader
sex swing
spreaders
chains/bracelets/anklets
rack
bit gag
...
]


[ carino*** - sweetheart
mascota - pet
cachorro - pup/cub ]

[
length of delay check
]

Zigor ends here.