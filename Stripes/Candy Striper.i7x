Version 4 of Candy Striper by Stripes begins here.
[Version 4 - Linked to Sven content]

[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Raccoon Candy Striper creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

coonstatus is a number that varies.
when play begins:
	add { "Raccoon" } to infections of guy;
	add { "Raccoon" } to infections of furry;

to say losetocandycoon:
	If cocks of player > 0:
		say "     Victorious, the girlish coon giggles happily and pushes you to the ground.  Working off your remaining clothes with nimble fingers, the candy striper raises his skirt and lines his cock up with your butt.  After a few strokes to enjoy the feel of your bottom against his hot-pink shaft, it presses its glans against your back passage and slowly sinks it into you.  Its paws move around to play with your [if cocks of player > 1]cocks[otherwise]cock[end if] while it pounds away at your ass with soft moans and squeals of pleasure.  His hot-pink cock sinks into you again and again with practiced strokes.  The stimulation quickly gets you quite aroused and you're leaking precum all over the coon's paws.  Leaning overtop you, he licks and nibbles at your ears, moaning that you're such a nice fuck and a good patient who'll get his hot medicine real soon.  True enough, in a few more strokes you can feel the pink raccoon thrust hard into you and pump his hot seed deep into your bowels.  His paws work at your cock frantically, coaxing you to climax moments later.";
		say "     Finished with you, the coon slides his spent shaft out and gives you a kiss, rich with the taste of cotton candy before leaving you to recover.";
	otherwise:
		say "     The pink highlighted raccoon shoves you down to your knees in front of him.  With a flourish, he flips up his skirt to expose his hot pink six incher to you.  You resist the urge to make a comment about its size, given the size on most other creatures you've seen running around these days.  He pulls your head forward, sliding his cock into your mouth with a soft moan.  'You're no sexy boi, but you'll have to do.  Any port in a storm, as it were,' he giggles as he thrusts.  His hard shaft leaks cotton candy flavoured pre onto your tongue.  Its sweetness surprises you and makes you lick and suck more eagerly.  Glancing up, you can see he's closed his eyes, perhaps imagining a horny male in your place.";
		say "     This upsets you a little and makes you try all the harder to please him, eager to get this gay boi to cum for you.  Your tongue plays over his cock as you fondle his balls, making him release more girly moans and squeaks until he finally does cum, shooting his sugary seed down your throat.  He strokes your head and smiles down at you as he slips his cock from your lips.  You can see that the dangling strand of cum connecting you has a light, rose tint to it before it snaps.  He grins down at you and dashes off, yelling 'Not bad... for a girl.'";


to say beatthecandycoon:
	if libido of player < 40:
		say "     You manage to knock the fight out of the coon boytoy.  He moans and plays with himself, rolling over to expose his bottom to you, but you leave him to deal with his own lusts.";
	otherwise:
		say "     You manage to knock the fight out of the coon boytoy.  He moans and plays with himself, rolling over to expose his bottom to you.  You licks your lips, finding yourself quite tempted to have your way with him and use him like your own pink plaything for a bit.";
		if the player consents:
			If cocks of player > 0:
				say "     You step over to him and grab his cute bottom, giving it a squeeze.  He moans and wiggles his rear back against your hands as you line up your cock with that tight pucker.  His back door spreads open for you rather easily, though still squeezes quite nicely around your cock as you mount him.  You grip his shoulders firmly and pound into him, making the girly boi moan in delight again and again.  The coon's cock, hot pink in colour and six inches in length, twitches between his legs, dripping precum onto the ground beneath him as he's fucked.  Eventually, your excitement becomes too great and you climax, shooting your hot seed deep inside the effeminate coon boi, much to his delight.  As the pink raccoon sprays his pink seed onto the ground, the air fills with the scent of cotton candy.  Done with him, you leave him there, moaning and panting in pleasure.";
			otherwise:
				say "     You give the coon's tight tush a slap and roll him over into a seated position.  Straddling his hips, you bring your wet pussy overtop of his cock.  His erection wavers slightly, but you grab a hold of it and slide this hot-pink rod into you.  The pink coon releases a girlish moan and you bury his muzzle in your bosom.  As you ride his cock, he starts to thrust, responding to the hot, wet hole gripping his cock.  When his lips find one of your nipples and start suckling at it, you moan soft and scritch his neck.  'That's my good, gay boytoy.  Fuck that pussy,' you tease, making his ears fold down a little, but he doesn't stop or slow at all.";
				say "     The girly coon you've found makes a wonderful plaything, able to give you a long, satisfying ride with several orgasms before he finally gives in to his instincts and shoots his hot seed deep inside you.  The cotton candy smell that hangs around him grows stronger as he cums.  You let the cute coon drain his balls inside you before pulling off.  A mix of your juices and his pink cum clings to his cock as he sags back to the floor, panting and blushing as you tell him what a fine job he's done before leaving.";
				say "[impregchance]";
		otherwise:
			say "     You decide it best to just leave the horny coon to his own devices.";

to say candycoondesc:
	say "     You have encountered a cute raccoon in a pink, candy striper outfit.  The uniform is a bright pink with a white apron and skirt.  It has a few white stains scattered on it.  The raccoon has a slender, feminine build.  The fur that should normally be the dark mask around its eyes is a cotton-candy pink, as are the stripes to ring its tail, matching the striped top it wears.  The pink raccoon looks you over, licking its lips and smiling at you with a girlish grin, running its paws down its body.  That's when you notice that this rather flat-chested girl has a bulge in 'her' skirt.  The gay boytoy grins playfully as you notice the growing bump in his mini skirt and moves in to play with you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Raccoon"; [Name of your new Monster]
   now attack entry is "[one of]The uniformed raccoon gropes you firmly![or]The candy-striped raccoon beats you mercilessly with his teddy bear![or]The effeminate raccoon scratches at you with his claws![or]The effeminate raccoon shrieks and kicks you in the shin![or]The pink raccoon gives you a firm slap across the face![or]The girly coon slaps at you repeatedly![or]The candy striper manages a hard bite to your upper arm![or]The uniformed coon latches onto you and humps itself against you![or]The pink raccoon pulls you into a sudden, cotton-candy flavoured kiss while its paws grope your ass![or]The raccoon turns and grinds his butt against your crotch, moaning with arousal![or]The pink raccoon turns and flips up the back of his skirt with his tail, exposing his cute bottom, hard cock and full balls, and his tailhole to you, in an effort to entice you to play![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthecandycoon]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetocandycoon]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[candycoondesc]"; [ Description of the creature when you encounter it.]
   now face entry is "girlish, raccoon head with luscious lips and a mask of pink around your eyes"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "slender and effiminate, with nimble little hands with pink claws.  You smell faintly of cotton candy and lust"; [ Body Description, format as the text "Your Body is (your text)."]
   now skin entry is "soft, gray fur with pink highlights over your"; [ skin Description, format as the text "your body is covered in (your text) skin."]
   now tail entry is "From the base of your spine, you have fluffy raccoon tail with pink stripes banding it."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "hot-pink"; [ Cock Description, format as you have a 'size' (your text) cock.]
   now face change entry is "it grows the pointed muzzle of a raccoon with a cute, pink nose and whiskers.  Grey and white fur coats your muzzle, with a mask of pink around your eyes"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it becomes a slender and effeminate.  You can feel your butt shift as it becomes a taut bubble butt, ripe for mounting.  Your hands become nimble paws, with little pink claws at the tips of your grey-furred fingers"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it grows a soft, gray fur with pink highlights"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a fluffy raccoon's tail extends from your spine.  Where there would be dark fur, it instead has bright pink bands to ring it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it takes becomes hot-pink in colour and otherwise human-like in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 10;
   now dex entry is 14;
   now sta entry is 12;                    
   now per entry is 10;
   now int entry is 14;
   now cha entry is 16;
   now sex entry is "Male";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 28;            [ How many HP has the monster got? ]
   now lev entry is 2;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 4;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 6;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 2;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 0;            [ Number of Breasts infection will give you. ]
   now breast size entry is 0;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 0;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 0;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 0;        [ Width of female sex  infection will try and give you ]
   now libido entry is 50;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "healing booster";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 10;        [ Chance of loot dropping 0-100 ]


Section 3 - Raccoon Pet

pink raccoon is a pet.  pink raccoon is a part of the player;
The description of pink raccoon is "The pink coonboi has soft, gray fur with pink highlights and pink rings around his tail.  He looks at you with mindless adoration, now a loyal and obedient pet and plaything.";
The weapon damage of pink raccoon is 4;
The level of pink raccoon is 2;
The Dexterity of pink raccoon is 14;
The summondesc of pink raccoon is "Coming happily to your call, the girly raccoon runs up to you and wraps his arms around you, hugging you close.  He churrs happily, ready and eager to obey.";
The assault of pink raccoon is "[one of]The raccoon charges in, regardless of any risk to himself and strikes wildly at your enemy![or]Your raccoon pet leaps at the enemy, trying to tackle them.  He gets them off balance long enough for you to score a quick hit before he's tossed off![or]Yipping angrily, he nips at your foe![or]The coon boy hikes up his skirt and starts masterbating, shooting his hot seed onto his dress in a show that distracts your foe long enough to get in a quick strike![or]The raccoon grabs stray trash and rubble, pelting your enemy with it![at random]";


 An everyturn rule:
	if companion of player is pink raccoon:
		increase libido of player by 2;
		let diceroll be a random number from 35 to 150;			[lust check vs 150, player libido 35 or less auto-wins]
		if diceroll < libido of player:
			if cocks of player > 0 and cunts of player is 0:
				let T be a random number between one and five;
				if T is 1:
					say "[coonpetsex1]";
				if T is 2:
					say "[coonpetsex2]";
				if T is 3:
					say "[coonpetsex3]";
				if T is 4:
					say "[coonpetsex4]";
				if T is 5:
					say "[coonpetsex5]";
			otherwise if cunts of player > 0 and cocks of player is 0:
				let T be a random number between one and six;
				if T is 1:
					say "[coonpetsex6]";
				if T is 2:
					say "[coonpetsex7]";
				if T is 3:
					say "[coonpetsex8]";
				if T is 4:
					say "[coonpetsex9]";
				if T is 5:
					say "[coonpetsex10]";
				if T is 6:
					say "[coonpetsex11]";
			otherwise:
				let T be a random number between one and seven;
				if T is 1:
					say "[coonpetsex1]";
				if T is 2:
					say "[coonpetsex2]";
				if T is 3:
					say "[coonpetsex3]";
				if T is 4:
					say "[coonpetsex4]";
				if T is 5:
					say "[coonpetsex5]";
				if T is 6:
					say "[coonpetsex6]";
				if T is 7:
					say "[coonpetsex11]";
			infect "Raccoon";


to say coonpetsex1:		[fuck coon ass]
	say "     Feeling a stirring in your loins, you glance over at the candy coon accompanying you and decide to get a little relief.  His cotton candy scent has been getting to you and you step over to him.  He looks up at you with his adoring eyes and you grab his cute, skirted bottom, giving it a squeeze.  He moans softly and turns around, getting on all fours to present himself to you.  His pink-banded tail arches up high, flipping up his skirt and baring his ass to you.";
	say "     Stroking your shaft to full hardness, you line it up with his bottom and slowly push it into your toy's tight hole.  He moans sweetly and eagerly takes your shaft in.  You stroke his back and rear, telling him what a good boy he is and pound away at him hard and fast.";
	say "     You drive into him again and again, enjoying your cute pet's ass.  His cock throbs hard beneath him, dripping precum onto the ground.  Eventually, you feel that lovely tingling in your balls, then blast your hot load into him.  His seed stains the ground beneath him as he moans in delight, loving the feel of your load in him.";
	decrease libido of player by 16;

to say coonpetsex2:		[face fuck coon]
	say "     As you pause for a moment, you catch a whiff of your pet's sweet scent and feel a stirring in your loins.  Deciding to get a little relief, you call him over and point to your growing cock.  He smiles up at you and drops to his knees, burying his face in your groin.";
	say "     His tongue plays over your cock and balls, licking and kissing them in adoration.  He lavishes attention on his master's penis.  He has one paw under his skirt, stroking himself quickly as he sucks you off.  Having lots of practice, the coon soon has your excitement build to its peak, then past it to blast your hot load down his throat.  As he gulps down your tasty treat, his own load sprays onto his skirt.";
	decrease libido of player by 10;

to say coonpetsex3:		[coon offers ass]
	say "     As you consider your next course of action, your pet raccoon moves up to you and nuzzles at your neck.  His cotton candy scent fills your nose and your cock stirs as he places a paw to rub over it.  He drops onto all fours in front of you and wiggles his rump with a needful moan.";
	say "     You'd been feeling a little excited of late and could use some relief, so you grab his bottom and move into position.  You grind your cock against his rear until you're fully hard before lining it up with his tight tailhole.  As you sink it into him, he moans in pleasure and pushes back into it.";
	say "     Once you're fully sheathed in his rump, you start taking him in slow, even thrusts that make him mewl and squirm with need.  You reach around and play with his cock, feeling his pre dribbling out over your fingers.  You keep it up until your cute, little pet's moans of pleasure get quite loud and insistent, then decide to finish the deed.";
	say "     Gripping his ass firmly with one hand and stroking him quickly with the other, you pound away at his tight hole hard and fast.  His inner walls clamp down around you firmly with each thrust until you give him the hot load he so desires.  His own seed stains the ground, pleased to have his master's seed filling him.";
	decrease libido of player by 16;

to say coonpetsex4:		[coon offers blow job]
	say "     Coming up to you as you take a short break, your pet snuggles up to you on his knees.  Smelling your arousal, he nuzzles at your crotch and churrs softly.  You stroke his ears and nod.  He smiles up at you with adoration and soon has his muzzle wrapped around your cock.";
	say "     His practiced muzzle is a delight, working over your cock with enthusiasm and skill.  His agile fingers caress your balls and the base of your shaft as his tongue plays along your shaft and glans.  His other paw moves under his skirt to stroke himself as he sucks you off.  Your excitement builds quickly and soon your obedient pet is receiving his well earned treat.  He swallows down your whole load while staining his cute outfit with his own, filling the area with his cotton candy scent.";
	decrease libido of player by 10;

to say coonpetsex5:		[frottage]
	say "     While you debate what to do next, your pet snuggles up to you and runs his paws over your chest.  The cotton candy scent of his arousal has been getting you excited again and you decide to have a little fun with your playtoy.  Finding a clean enough spot, you get him to lay down on his back and straddle him.";
	say "     Flipping the front of his skirt out of the way, you rub your cock against his, making him moan softly.  You take both hard shafts in your hands and start stroking them.  You spread your precum and his along the two cocks, then tell your pet to take over.";
	say "     His nimble paws wrap around them both and continue stroking them.  Meanwhile, his other paw slips behind to rub your balls against his.  His agile fingers are quite adept and gently tease and caress the cocks in his paw, getting you both quite worked up until finally several new cum stains are added to your pet's cute dress, once again marking him as yours.";
	decrease libido of player by 10;

to say coonpetsex6:		[f ride coon cock]
	say "     Feeling a building heat in your loins, you glance over at your pet and decide to have a little fun.  His cotton candy scent has been getting you aroused and it's time for you to get some relief.  You motion for him to come over and he prances up to you eagerly.  You press the boytoy down onto the ground and flip up his skirt, revealing his cute, hard cock.";
	say "     Straddling him, you raise up his cock and lower your pussy down onto it.  He whimpers softly for a moment, but that soon turns into moans of pleasure as you start riding him.  His paws stroke your sides and are easily coaxed up to your chest to your breasts.";
	say "     As you continue riding him, you can feel him start to thrust up into you as his excitement builds.  His paws are a little clumsy as they play with your breasts, but do get better as you continue.  Soon, the effeminate coon moans loudly as he thrusts hard up into you and starts shooting his hot seed into you, trying to pump as much cum as he can into his mistress's pussy[if cocks of player > 0] while your cock streaks his pink outfit with cum[end if].";
	say "[coonpreg]";
	say "     When he's done, you pull yourself off.  You guide his muzzle between your thighs and he gives you a few licks to help clean your sticky folds.  As he does, you scritch his ears, telling him what a good pet he is.";
	decrease libido of player by 16;

to say coonpetsex7:		[f make coon eat you out]
	say "     As you pause for a moment, you catch a whiff of your pet's sweet scent and feel a stirring in your loins.  Deciding to get a little relief, you call him over and point between your legs.  Catching your aroused scent, he obediently nuzzles between your legs.  There's only a brief pause before he buries his muzzle in your muff and starts licking at your pussy.";
	say "     Moaning in pleasure, you tell him what a good coon he is and scritch his ears, encouraging him to slide his tongue into you.  It dives around, licking and teasing at your vaginal walls.  His attempts are rather amateurish, but quite enthusiastic, which makes up for much.  When your orgasm hits, you soak his muzzle in your juices, which he happily licks from face once you continue on your way.";
	decrease libido of player by 10;

to say coonpetsex8:		[coon offers fuck f]
	say "     As you consider your next course of action, your pet raccoon moves up to you and nuzzles at your neck.  His cotton candy scent fills your nose and your pussy grows damp.  Catching your scent, he moans softly and humps his cock against your hip.  You grin at the cute boytoy's current arousal and need, and decide to have some fun.";
	say "     You find a relatively clean spot and lay back.  Spreading your legs, you spread your pussy's wet lips and motion for your pet to come and get it.  He obediently moves into position and lines up his cock with his mistress's pussy.  He pauses briefly and his ears droop for a moment before his vacant grin returns and thrusts into you like a good sex pet.";
	say "     His paws caress your hips as he thrusts into you.  His technique, while practiced with males, works quite nicely to please you as well.  His pace is steady enough to let your excitement grow, but changes often enough that you don't go off too soon.  You have several small orgasms while his cute, little cock works to please you.  Eventually, the feel of your hot, wet hole around his cock gets to be too much for the effeminate coon and his hot seed blasts into you.";
	say "[coonpreg]";
	say "     After he's withdrawn, you snuggle your cute raccoon playtoy and tell him what a good job he did fucking your pussy.  He smiles up happily at you and nuzzles your chest.";
	decrease libido of player by 16;

to say coonpetsex9:		[coon offers eat you out]
	say "     Coming up to you as you take a short break, your pet snuggles up to you on his knees.  Smelling your arousal, he nuzzles at your crotch and churrs softly.  You stroke his ears and guide his muzzle between your legs.  He shivers softly, but slides his tongue over your wet folds.  You moan in pleasure and scritch his ears, telling him he's a good pet.";
	say "     Eager to please you, his licking gets more enthusiastic, playing over your wet folds and diving into your pussy.  While still new to this, he does try his best to please you and please you he does.  After giving your little sex pet some tips, he gets you quite worked up.  Your orgasm is quite strong and soaks the girly coon in your feminine juices, which he laps up like the good pet he is.";
	decrease libido of player by 10;

to say coonpetsex10:		[f 69]
	say "     While you debate what to do next, your pet snuggles up to you and runs his paws along your sides.  The cotton candy scent of his arousal has been getting you excited again and you decide to have a little fun with your sex pet.  Finding a clean enough spot, you get him to lay down on his side and you move to along side him in a classic, sixty-nine position.";
	say "     You rub the coon's ears, feeling them twitch as he whimpers for a moment before diving in.  His tongue laps at your wet folds, eager to please his mistress.  To reward his obedience, you take his cock into your mouth and start to suck on it, making him moan.  At that, he gets even more eager and dives his tongue into your pussy, lapping along your vaginal walls.";
	say "     While his inexperience does show a little, his eagerness to please makes up for quite a bit and you feel yourself becoming more and more aroused.  You lick and suck his penis in return, enjoying its cotton candy flavour.  When his orgasm hits, his sweet cum fills your muzzle and sets off your own, soaking his muzzle in your juices.  Once separated, your cute coon is licking his muzzle clean for some time.";
	decrease libido of player by 10;

to say coonpetsex11:		[f paw him off]
	say "     You glance over at your pink pet and decide to have a little fun with the boytoy.  His sweet, arousing scent has been getting you excited and you want to play with him again.  You motion him over and get him onto his knees beside you.  You flip up the front of his skirt and take his six inch cock in your hand.";
	say "     As you start to stroke him off, your other hand guides his between your legs.  He shivers for a moment as his fingers touch your pussy, then they start to tentatively caress your folds.  You tell him what a good pet he is and press his paw more firmly into place.  He requires no more encouragement and sets to the task of playing with his mistress's pussy obediently.";
	say "     You nibble his ears and stroke him harder and faster, listening to him release cute, girly moans.  His fingers, while inexperienced, are quite nimble.  He slides a pair into you and teases your pussy's wet lips with the others.  When his cock throbs in your paw and he moans loudly in relief, the sight of his pink cum splattering onto his cute outfit is enough to push you over the edge.  Your pussy clamps down onto the raccoon's fingers and your hot juices soak his paw[if cocks of player > 0].  Your cock, quite hard as well, blasts your seed onto his pink uniform as well[end if].  As you get back to what you were doing, you can see him licking his paw clean.";
	decrease libido of player by 10;

to say coonpreg:
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "[impregchance]";
	if baby is 0 and gestation of child is not 0:
		now facename of child is "Raccoon";
		now bodyname of child is "Raccoon";
		now skinname of child is "Raccoon";


Section 4 - Raccoon at Bunker

Candy is a man.
The description of Candy is "[coondesc]";
candytalk is a number that varies.
lastCandyfucked is a number that varies.  lastCandyfucked is normally 555.
coonsex is a number that varies.

to say coondesc:
	say "     The pink raccoon, now going by the name of Candy, is staying peaceably in the bunker.  His fur is a light grey with pink highlights.  His raccoon mask is pink, as are the stripes on his body and tail.  The raccoon has an effeminate body with a tight ass and slender figure.  He's sewed his candy striper uniform and is happily prancing around in it, looking quite cute.  Watching him, you do notice that he's found some lace-trimmed panties to add to his ensemble, keeping him from completely showing when he sashays around.  He's largely keeping himself out of trouble, though occasionally seems to revert to more primal needs and [if hp of Sven is 10]coaxes your feline pet into some more playtime[otherwise]masturbates furiously until the room smells of cotton candy from his sweet cum[end if].  You find yourself unsure if he's succumbed to the nanites or not, but he's here now and you will just hope for the best for the moment.";

instead of going to Bunker while coonstatus is 1:
	now the player is in Bunker;
	now coonstatus is 2;
	say "     As you arrive at the bunker, you can see that the pink coon has arrived there as per your directions.  He prances over to you with a grin on his face.  'Thanks for getting me out of there, hon,' he churrs.  'Doc's been going extra-crazy lately.  I mean, I think he was a little odd before the whole mouse thing, but since then, he's been doing more and more experiments on everyone at the hospital.'  He hugs his arms around himself and shudders a little.";
	say "     'I don't really remember who I am any more.  I'm pretty sure I was volunteering at the hospital and that I was gay before the change.  But aside from that, it's all rather hazy.  Since I don't remember my name, how about you call me Candy, hon?'";
	if cocks of player > 0:
		say "     'I'd really like to show you how much I appreciate your help,' he says, running a finger up your thigh";
		if bodyname of player is "Raccoon":
			say ".  'I'm so glad you decided to keep the new look, sweetie,' he adds, rubbing his slender, coon body against yours with a sexy smile";
		say ".";


instead of conversing the Candy:
	if hp of Sven is not 10:
		say "     [one of]'I'm glad I'm away from there.  I mean, the orderlies were fun if you could catch them when they weren't busy, but that wasn't always easy.  And a coon's got needs, you know,' he says with a playful wink.[or]'Please keep an eye out for any toys or lube while you're out there,' the coon says with a giggle.[or]'See if you can find some more cute guys to bring back here so I have some proper company, sweety,' he churrs with a grin.[or]'I'm sorry for any trouble I caused you back at the hospital.  I was a little... ah... worked up.  I'm doing better now, really,' he says, giving you a big smile, trying to look sincere.[at random]";
	otherwise if hp of Sven is 10 and lastSvenfucked < 6:
		say "     [one of]'I'm glad I'm away from there.  I mean, the orderlies were fun if you could catch them when they weren't busy, but that wasn't always easy.  And a coon's got needs, you know,' he says with a playful wink.[or]'Please keep an eye out for any toys or lube while you're out there,' the coon says with a giggle.[or]'See if you can find some more cute guys to bring back here so we have some proper company, sweety,' he churrs with a grin.[or]'I'm sorry for any trouble I caused you back at the hospital.  I was a little... ah... worked up.  I'm doing better now, really,' he says, giving you a big smile, trying to look sincere.[or]Candy pats your hand.  'Don't worry about Sven, sweety.  I know he's yours.  I'm just... helping him get some experience.'[or]Candy grins.  'I'll keep a close eye on your kitty while your out, sweety.'[at random]";
	otherwise:
		say "     [one of]'I'm glad I'm away from there.  I mean, the orderlies were fun if you could catch them when they weren't busy, but that wasn't always easy.  And a coon's got needs, you know,' he says with a playful wink.[or]'Please keep an eye out for any toys or lube while you're out there,' the coon says with a giggle.[or]'See if you can find some more cute guys to bring back here so we have some proper company, sweety,' he churrs with a grin.[or]'I'm sorry for any trouble I caused you back at the hospital.  I was a little... ah... worked up.  I'm doing better now, really,' he says, giving you a big smile, trying to look sincere.[or]Candy pats your hand.  'Don't worry about Sven, sweety.  I know he's yours.  I'm just... helping him get some experience.'[or]Candy grins.  'I'll keep a close eye on your kitty while your out, sweety.'[or]You end up speaking to Candy just as he's walking back from Sven's bunk.  'I've got him all warmed up for you, hon,' he churrs, licking his lips.  'Have fun!'[at random]";


Instead of fucking the Candy:
	if lastCandyfucked - turns is less than 8:
		say "     The coon smiles and kisses your cheek.  'I'm sorry, sweety.  I need a little time to recover.  I want to make the most of our playtime.'";
	otherwise:
		if cocks of player > 0:
			say "     You decide to take up Candy on his offer for a little fun.  As you walk over to him, his eyes light up, as if sensing what you want.  His paws are all over you in moments, pulling your clothes off.  He nuzzles and nibbles at your neck, churring softly while rubbing his body against yours.";
			now lastCandyfucked is turns;
			if coonsex is odd:
				if bodyname of player is "Raccoon":
					say "     Candy moans softly as he rubs his body against the raccoon body he's given you and runs his paws over it.  He lets his little claws run over your shapely curves and girly body with churrs of delight.  His fluffy tail brushes across your legs, caressing them.  'You look so sexy like this, sweety.  I'm glad you appreciate it.  And now I'm going to show you how much I appreciate it, too,' he adds with a nibble to your ear as he takes a hold of your stiff erection.";
				say "     He keeps his own outfit on and drops to his knees before you.  He starts nuzzling and licking at your [cockname of player] shaft, moaning softly at the taste of cock on his tongue again.  His talented muzzle works at your hard meat while he plays with your balls with one paw[if cunts of player > 0].  He makes a few tentative touches to your pussy, but nothing further, and returns to your balls[end if].  He smiles up at you, churring softly around your shaft, as his talented muzzle sets to work.";
				say "     You stroke the cute coon's head, rubbing his ears as he gives you a wonderful blow job.  The raccoon's clearly had a lot of practice and has learned to use his altered muzzle and tongue to his best advantage.  Looking down, you can see his other paw between his legs, stroking his cute, hot pink cock vigorously.";
				say "     The coon continues to tend to your throbbing member until finally you cum, spraying your hot load down his welcoming throat.  He licks it up happily and even makes a show of swallowing it for you.  He then lays back on the floor, still stroking himself until he sprays streaks of pink cum across his girly outfit, filling the air with the scent of cotton candy.";
				increase coonsex by 1;
				decrease libido of player by 5;
				if libido of player < 0, now libido of player is 0;
			otherwise:
				if bodyname of player is "Raccoon":
					say "     Candy moans softly and runs nimble fingers over your raccoon body, teasing and caressing you.  His paws travel over your shapely, girly body with churrs of delight and slides his fluffy, pink tail around your waist.  'You make such a sexy coon,' he churrs as he takes a hold of your cock in one paw.  'I can't wait to have you on top of me,' he adds with a nibble to your ear.";
				say "     He keeps his own outfit on and drops onto all fours.  He waves his rear at you and flicks his tail up to raise his skirt and reveal his ready tailhole to you.  'Mmm... come on... Fill your sweet Candy.'  You grab his hips and line your cock up with the coon's tight pucker, making him moan softly as you thrust into his rear.";
				say "     You grip his bubble-butt firmly and start pounding away at him, much to the coon's delight.  His tailhole, despite taking you in quite easily, is quite snug around your shaft.  The cute raccoon's tail swishes about as he pushes back into each of your thrusts with a soft moan.  His flesh is soft and warm around your cock, and squeezes deliciously around it each time.";
				say "     The girly raccoon reaches back and wraps his paw around his hot-pink cock.  He strokes himself as you pound away at his ass, driving your cock into him again and again.  The effeminate coon wiggles his rear and squeezes his tailhole down around your penis each time you thrust into his warm bottom.";
				say "     The feel of his tight ass around your cock, the sight of the girly boytoy beneath you and the cute moans he makes as you fuck him eventually all become too much.  You squeeze his fuzzy rump firmly and drive your shaft deep inside him, unleashing your hot load.  Having a fresh load of cum inside him is enough to set him off, spraying his pink cum onto the floor below and filling the air with the scent of cotton candy.";
				increase coonsex by 1;
				decrease libido of player by 10;
				if libido of player < 0, now libido of player is 0;
		otherwise:
			say "     'As much as I'd like to repay you, this coon craves cock, sweety,' he says, giving you a kiss on the cheek";
			if bodyname of player is "Raccoon" and Sven is not in the bunker:
				say ".  Maybe you can find a sexy guy out there willing to play with a pair of coons we can share";
			say ".";


Section 5 - Total Coonification

to say totalcoonification:		[version 1 - direct shift, no gender controls]
	repeat with y running from 1 to number of filled rows in table of random critters:	[puts Raccoon as lead monster...]
		choose row y in table of random critters;
		if name entry is "Raccoon":
			now monster is y;
			break;
	now tailname of player is "Raccoon";
	now facename of player is "Raccoon";
	now skinname of player is "Raccoon";
	now bodyname of player is "Raccoon";
	now cockname of player is "Raccoon";
	now tail of player is tail entry;			[...to make for quicker and accurate copying of Raccoon appearance.]
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;


Section 6 - Endings

when play ends:
	if bodyname of player is "Raccoon":
		if humanity of player is less than 10:
			if coonstatus < 100:				[Coon player - Coon non-pet]
				if coonstatus is 0:			[Coon still in hospital]
					say "     Unable to maintain your sanity, you give in to your body's instinctual needs.  Your thoughts fill with a yearning for sexy males and for cock to fill you.  Drawn by this, you head off into the city.  You drift around, flirting with some of the males you find on the way, but continue on to the hospital.";
					say "     As you are arriving there, the cute pink raccoon spots you from a window and calls out to you.  This seems to cause a bit of commotion in the hospital and he's chased by a few jaguar orderlies on the way out.  He grabs your paw in his and you run off hand in hand.  It seems he's overstayed his welcome at the hospital.";
					say "     Having nowhere else to go, your mind manages to remember the bunker and you return there with him";
				otherwise if coonstatus > 0:		[Coon in bunker]
					say "     Unable to maintain your sanity, you end up giving in to your body's instinctual needs.  Your thoughts fill with a yearning for sexy males and for cock to fill you.  You return to the bunker to seek the pink raccoon to be your mate.  Candy accepts the change in your mindset and the small shreds of humanity he'd managed to regain let go";
				if cocks of player > 0:
					say ".  As a pair of girly coons, you redecorate the place, turning it into your sexy love nest.  You both get along together well, only having some trouble coming from the fact that you both want to bottom more than top.";
					say "     This problem is solved when the military pass through.  Unable to confront the squads head on, you sneak up and drag off a lone soldier.  A few hours later and you have an olive green coon who's more than happy topping his two playmates.  A few more are added every couple of days and eventually the bunker houses a rainbow collection of girly coons.";
					if cunts of player > 0 and "Sterile" is not listed in feats of player:
						say "     While your pink lover always remains your preferred mate, many of the others are more willing to fuck you and fill your every hole.  When you do pass into heat, you enact a plan with the help of the others.  They pounce him and start fucking him; then, when he's good and horny, they lead him over to you.  With a hard thrust into his tight rump, a blue coon forces his hips down and sends the hot pink cock into your pussy.  All the other males in the gaze take turns fucking his ass or muzzle until he's cum himself dry, ensuring you are well bred with more multicolour cubs to add to the bunker.";
				otherwise if "Sterile" is not listed in feats of player:
					say ".  It takes a little coaxing by pouncing his morning wood to get him to properly fuck you, but soon enough you're cumming hard as his hot seed fills you.  The bunker becomes a nest of cute, girly coons in a rainbow of colours.  Though it always does take you pouncing him to get his cock into you to get any sex started.";
				otherwise:
					say ".  It takes a little coaxing by pouncing his morning wood to get him to properly fuck you, but soon enough you're cumming hard as his hot seed fills you.  But, being sterile, you cannot add any young to your nest.";
					say "     This problem is solved when the military pass through.  Unable to confront the squads head on, you sneak up and drag off a lone soldier.  A few hours later and you have an olive green coon who's more than happy topping his two playmates.  A few more are added every couple of days and eventually the bunker houses a rainbow collection of girly coons.";
			otherwise if coonstatus is 101:		[Coon player - Coon at pet]
				say "     Unable to maintain your sanity, you end up giving in to your body's instinctual needs.  You establish a love nest with your pink playtoy back at the bunker, using him for your pleasure as you see fit.";
				if cunts of player > 0 and "Sterile" is not listed in feats of player:
					say "     His reluctance to play with your pussy fades away completely and you have the girly coon fuck you again and again, breeding litters of raccoon cubs in a rainbow array of colours.  The females and herms are always the dominant ones, while the males are subservient playtoys for them.  They eagerly seek out others to capture and bring back to turn into colourful raccoon lovers to add to the gaze you lead at the bunker.";
				otherwise if cunts of player > 0 and "Sterile" is listed in feats of player:
					say "     His reluctance to play with your pussy fades away completely and you have the girly coon fuck you again and again.  Being sterile, you can have no cubs so you instead seek to add to your love nest from the outside.";
					say "     This problem is solved when the military pass through.  Unable to confront the soldiers head on, you sneak up and drag off a lone soldier.  A few hours later and you have an olive green coon who is just as subservient.  A few more are added every couple of days and eventually the bunker houses a rainbow collection of girly coons.  When a few females are taken in, breeding begins in earnest.";
				otherwise:
					say "     Your pink playtoy is eager to service you in any way you would like.  You happily explore a range of positions with him over several days, taking the top or bottom position as suits your fancy in the moment.  In time, you do feel the urge for more amusement.";
					say "     This problem is solved when the military pass through.  Unable to confront the soldiers head on, you sneak up and drag off a lone soldier.  A few hours later and you have an olive green coon who is just as subservient.  A few more are added every couple of days and eventually the bunker houses a rainbow collection of girly coons.  When a few females are taken in, breeding begins in earnest.";
		otherwise:							[coon player survives]
			if coonstatus is 0:				[w/o coon friend]
				say "     After being rescued and cleared by the military, you find yourself aimless for a time.  You bounce around clubs, looking for amusement to fill your needs";
				if cunts of player > 0:
					say ".  Being a transformee in a predominantly human area, you are at first looked on as an oddity and nothing more, but eventually you manage to tempt a sexy guy into a little fun in the alley behind the club one night.  From that point on, word starts to get around and you become more popular.  In time, you have become an exotic treat that everyone wants to play with and you have no lack of favorite lovers.";
				otherwise:
					say ".  Being a transformee in a predominantly human area, you are at first looked on as an oddity and nothing more, but eventually you manage to tempt a sexy guy into a little fun in the gay club's bathroom.  From that point on, word starts to get around and you become more popular.  In time, you have become an exotic treat that everyone wants to play with and you have no lack of favorite lovers.";
			otherwise:
				if coonstatus is 101:			[w/coon pet]
					say "     When their forces move in to rescue survivors, the military is reluctant to let your pink raccoon pet accompany you.  But between the emotional breakdown he starts to go through when this separation is discussed and your clear physical similarities to him, they quickly relent and bring him back to the base with you.";
					say "     You giggle inside as you watch your pet tease and tempt the soldiers on watch, much to their dismay.  But in time his playful nature gets them, one by one, to take advantage of his willing body.  He then brings them to you for your enjoyment.  You and your pet have lots of fun letting the big, tough soldiers fuck you again and again.";
				otherwise if coonstatus > 0:		[w/Candy]
					say "     When the military forces move in to rescue survivors, Candy is taken out with you and the other survivors they find.  You and the raccoon make a very effective team, teasing and tempting the soldiers on watch, much to their initial dismay.  But in time you are able to get them, one by one, to take advantage of your willing bodies.  You both bring those you ensnare back to the other for a second round of fun.  You and your pink friend have lots of fun letting the big, tough soldiers fuck you again and again.";
				say "     After a few bouts of sex with you both, you start to notice the soldiers becoming more effeminate and gaining small, coonish traits they keep concealed under their uniforms.  They are not at all dismayed by this, only becoming more eager to play with you both.  Before leaving the compound after being processed, you[if coonstatus < 100] and Candy[end if] make sure you've gotten numbers from all of them and you are soon setting up meetings with them on their off hours.";
				say "     Despite being rendered non-infectious before getting discharged from the internment camp, playing with the infected soldiers reactivates your strain, allowing you to continue to change them.  When their traits start becoming too noticeable to hide any longer, you arrange for a special orgy with all of them at once.  You and [if coonstatus < 100]Candy[otherwise]your pet coon[end if] have a long romp with them, completing their change into a rainbow collection of coon bois for you.";
	otherwise if pink raccoon is tamed:				[non-coon player w/pet coon]
		if humanity of player is less than 10:
			say "     Bound to you, your girly coon pet remains loyally with you even as your mind collapses and give in to the infection.  He becomes a playtoy for you, fulfilling your sexual needs as best he can between any other lovers or mates you may have.";
		otherwise:
			say "     When their forces move in to rescue survivors, the military is reluctant to let your pink raccoon pet accompany you.  But the emotional breakdown he starts to have as the separation is even discussed is enough leverage for you to get them to bring him back to base.  You keep a tight rein on him at the base, fucking him often in an attempt to keep him out of trouble.  This rampant sexuality does make the soldiers on watch worried about just how sane you both are.  But in little time his playful nature gets them, one by one, to take advantage of his willing body and they stop reporting the issue to their superiors.";
			say "     When you are leaving the compound, you can't help but notice that they were starting to get a little more effeminate themselves and you suspect there'll be a few more girly coons running around the base soon enough.  Your playtoy pet remains with you throughout the years, always giving you a source of amusement as you play with him or share him with others as a special reward.";
	otherwise if Candy is in the Bunker:			[non-coon player w/Candy rescued]
		if humanity of the player is less than 10:
			if cocks of player > 0:
				say "     When you give in to the nanite infection, Candy's attempts to resist end as well.  The girly raccoon reverts as the few shreds of humanity he was able to regain give out.  The pink coon accompanies you, an eager fucktoy for your use between any lovers or mates you may find out in the city.  He has dalliances of his own, seeking the attention of any sexy males you come across.";
			otherwise:
				say "     When you give in to the nanite infection, Candy leaves you.  He has little sadness over the matter, merrily skipping off in search of a cute soldier boy he can convince to take him in.";
		otherwise:
			say "     When the military forces move in to rescue survivors, Candy is taken out with you and the others.  You try to keep an eye on him, but being surrounded by sexy soldier boys is too much for the raccoon.  Behind your back, he makes out with several of the soldiers and officers.";
			say "     When you are leaving the compound, you can't help but notice that they were starting to get a little more effeminate themselves and you suspect there'll be a few more girly coons running around the base soon enough.  Your suspicions are later confirmed when you catch the coon on the phone talking to one of them.  It seems he got phone numbers from his lovers on the base and maintains phone contact with them.  The army quickly finds itself with a platoon of horny, girly raccoons in a rainbow of colours in their ranks[if cocks of player > 0].  When not entertaining his many soldier lovers, the coon is always willing to enjoy your company and you fill his willing muzzle or ass on several occasions[end if].";
	if humanity of player > 9:						[coon pet / Candy - interactions]
		if coonstatus < 100 and coonstatus > 0:			[coon saved]
			if Sarah is in the bunker and sarahslut < 4:	[Candy + non-pet Sarah]
				if cocks of player > 0:
					say "     Having saved him from an uncertain and frightening fate, Candy treats you like some damsel-rescuing hero.  Wanting to do good on the outside and drawing on what he still remembers of his past, he begins learning everything he can from Sarah.  For her part, Sarah is grateful to have a distraction from her endless reservoir of barely-controllable lust.  She throws herself into more medical training and Candy joins her.  Together they become an excellent team, saving lives against sometimes impossible odds.  Loving their rescuer with all their hearts, they learn to share your love and your bed and against all odds manage to keep each other from falling prey to their hypersensitive bodies and overactive libidos.  You sometimes find yourself regretting this however, as it is a challenge to keep up with them at times.";
				otherwise:						[Candy solo]
					say "     Having saved him from an uncertain and frightening fate, Candy treats you like a protective big sister.  Wanting to do good on the outside and drawing on what he still remembers of his past, he begins learning everything he can from Sarah.  For her part, Sarah is grateful to have a distraction from her endless reservoir of barely-controllable lust.  She throws herself into more medical training and Candy joins her.  Together they become an excellent team, sometimes saving lives against impossible odds.  Loving their rescuer with all their hearts, they remain friends with you for the rest of their lives.";
					say "     When they find a bisexual samoyed male to partner with them, they find sexual fulfillment along with their professional fulfillment.  He is a very friendly and affectionate guy, stern but loving to his horny partners, just what they need to keep them reined in.  Not being the jealous type, they aren't upset at all when he has sex with you and are even happy to share him with their most dear friend.  But that is a rare treat, as their rampant libidos keep him rather exhausted most of the time.";
			if bodyname of player is "Siren":
				say "     Candy is probably your band's number one fan, running and moderating the band's web forums in his off hours.  Being bright pink, you easily spot him dancing happily with your groupies whenever you have a show in town.  You aren't at all surprised when you start spotting a few fans with colourful raccoon tails in the audience.";
			otherwise if timothymated < 3 and Gryphoness is tamed:	[coon pet + gryphon pet]
				if bodyname of player is "Hermaphrodite Gryphon":
					say "     Candy is probably your band's number one fan, running and moderating the band's web forums in his off hours.  Being bright pink, you easily spot him dancing happily with your groupies whenever you have a show in town.  You aren't at all surprised when you start spotting a few fans with colourful raccoon tails in the audience.";
				otherwise:
					say "     Denise and Candy seem to get along well, and one day you return home to be greeted with beautiful singing and amazing dancing by your two friends.  You are so impressed, you urge them to continue working on music and choreography, and privately wonder if you should take this show on the road, and how to do so without breaking certain decency laws.";
			otherwise:
				if cocks of player > 0:
					say "     Having saved him from an uncertain and frightening fate, Candy treats you like some damsel-rescuing hero.  Wanting to do good on the outside and drawing on what he still remembers of his past, he begins nurse training, and proves quite adept at it despite his regular lewd suggestions of 'sexual healing' and 'sweet injections.'  The raccoon soldiers are always eager patients, coming to him for the most minor of complaints and are always up for Candy's playful suggestions.  Outside of his work, he spends a lot of time dressing up in various cute costumes, always searching for the ones you find the most enticing and 'christening' them with you in nights of wild passion.";
				otherwise:
					say "     Having saved him from an uncertain and frightening fate, Candy treats you like a protective big sister.  Wanting to do good on the outside and drawing on what he still remembers of his past, he begins nurse training, and proves quite adept at it despite his regular lewd suggestions of 'sexual healing' and 'sweet injections.'  The raccoon soldiers are always eager patients, coming to him for the most minor of complaints and are always up for Candy's playful suggestions.  Outside of his work, he seems to spend a lot of time stealing your clothes and teasing and enticing every male he can.  You would put a stop to it if he wasn't so damn cute in your outfits, and at least he always does the laundry on time.";
			if pigfucked > 0:
				if ( cocks of player is 0 and cunts of player > 0 ) or ( cunts of player is 0 and pigfucked > 2 ):
					say "     Candy never seems to warm up to Philip and is catty with him whenever the two end up together at your place.  It is clear that he is upset with your decision to join Philip at his farm, but has his own life as well (thanks to you) and has to accept your decision.  He does visit from time to time, but only when Philip is out, preferring you instead come visit him at his sex den.  You are always careful to clean the boar's strong scent from you before going over, lest it spoil the mood.  He always has at least one of his coon soldier bois over to play with, so he's never lonely and the visit is always fun.";
				otherwise:
					say "     Candy never seems to warm up to Philip and is catty with him whenever the two end up together.  You have to take care to wash the boar's strong scent from you after sex, lest it upset the gay coonboi.  Aside from holiday get-togethers with all your new, transformed family of friends, you make sure they are kept apart.";
		otherwise if coonstatus is 101:				[coon pet]
			if cocks of player > 0:
				say "     Your little pink pet remains a loyal slut under your care after your release from the military.  He serves and services you with absolute devotion and keeps a variety of cute dresses and frilly outfits to tease and excite you.  He seems to show a preference for a French maid dress, and dutifully keeps house whenever you are out";
			otherwise:
				say "     Your little pink pet remains a loyal slut under your care after your release from the military.  He serves and services you with absolute devotion and keeps a variety of cute dresses and frilly outfits to tease and excite you.  He seems to show a preference for a French maid's dress, and dutifully keeps house whenever you are out.  You make sure to pass him off to your male and herm friends from time to time, to appease his lust for cock";
			if bodyname of player is "Ferret":
				say ".  Lorenda and Lee take particular enjoyment out of their fellow [']maid's['] companionship and are often found playing with him in their outfits.";
			otherwise:
				say ".";
			if bodyname of player is "Siren":
				say "     Your pet raccoon loyally accompanies you on your band's tours and is there to give you his obedient and lustful affection whenever wanted.  He seems to legitimately love your band's music as well, dancing happily to it with your groupies whenever he can sneak away from his handlers during your shows.  You aren't at all surprised when you start spotting a few fans with colourful raccoon tails in the audience.";
			otherwise if timothymated < 3 and Gryphoness is tamed:	[coon pet + gryphon pet]
				if bodyname of player is "Hermaphrodite Gryphon":
					say "     Your pet raccoon loyally accompanies you on your band's tours and is there to give you his obedient and lustful affection whenever wanted.  He seems to legitimately love your band's music as well, dancing happily to it with your groupies whenever he can sneak away from his handlers during your shows.  You aren't at all surprised when you start spotting a few fans with colourful raccoon tails in the audience.";
				otherwise:
					say "     Denise and your raccoon pet seem to get along well, and one day you return home to be greeted with beautiful singing and amazing dancing by your two loving pets.  You are so impressed, you urge them to continue working on music and choreography, and privately wonder if you should take this show on the road, and how to do so without breaking certain decency laws.";
			if ( pigfucked > 0 ) or ( ( bodyname of player is "Messy Pig" or bodyname of player is "Piggy" ) and cunts of player > 0 and Philip is in Bunker ):
				say "     Your raccoon pet seems jealous of the affection you give Philip.  He mopes quietly if he sees you being affectionate with him or notices the boar's strong scent on you after you've had sex with him.  He steadfastly refuses to play with the pig, though will happily enjoy any other lover you share with him";
				if ( cocks of player is 0 and cunts of player > 0 ) or ( ( bodyname of player is "Messy Pig" or bodyname of player is "Piggy" ) and cunts of player > 0 ):	[Female at farm OR F/H Piggy at farm]
					say ".  When the coon gets even more sullen after the move to the pig farm and your oncoming litter, Philip has had enough.  The next time the coon hisses at him when he strokes your pregnant belly, he grabs the little boitoy and takes him right then and there, with much squealing from the boar and moans from the coon.  From that point on, he's much more affectionate with the boar and seems to like it best when the pig is rough and dirty with him.  The raccoon does pick up some bad habits though.  When once he was always well-groomed and clean, he becomes a scruffy and dirty raccoon, often rummaging around in the garbage or even taunting the pig to fuck him in the dumpster.  You've lost your slutty housekeeper, but gained a much happier, if messier, home for it.";
				otherwise if bodyname of player is "Messy Pig" or bodyname of player is "Piggy" and pigfucked > 0:
					if pigfucked > 2:						[M Piggy sub]
						say ".  When the coon gets even more sullen after the move to the pig farm and your repeated rutting with the boar, Philip has had enough.  The next time the coon hisses at him when he squeezes your subby, cum-filled bottom, he grabs the little boitoy and takes him right then and there, with much squealing from the boar and moans from the coon.  From that point on, he's much more affectionate with the boar and seems to like it best when the pig is rough and dirty with him.  The raccoon does pick up some bad habits though.  When once he was always well-groomed and clean, he becomes a scruffy and dirty raccoon, often rummaging around in the garbage or even taunting the pig to fuck him in the dumpster.  You've lost your slutty housekeeper, but gained a much happier, if messier, home for it.";
					otherwise:					[M Piggy lover]
						say ".  When the coon gets even more sullen after the move to the pig farm and your repeated rutting of the sows, Philip has had enough.  The next time the coon hisses at him while watching you in the pen, siring more hogs, he grabs the little boitoy and takes him right then and there, with much squealing from the boar and moans from the coon.  From that point on, he's much more affectionate with the boar and seems to like it best when the pig is rough and dirty with him.  The raccoon does pick up some bad habits though.  When once he was always well-groomed and clean, he becomes a scruffy and dirty raccoon, often rummaging around in the garbage or even taunting the pig to fuck him in the dumpster.  You've lost your slutty housekeeper, but gained a much happier, if messier, home for it.";
				otherwise:
					say ".";
			otherwise if ( bodyname of player is "Messy Pig" or bodyname of player is "Piggy" ) and pigfucked is 0 and Philip is in Bunker:
				say "     Your raccoon pet seems jealous of the friendship you have with Philip.  He mopes quietly if he sees you with him or notices the boar's strong scent on you after you've hung out.  He steadfastly refuses to play with the pig, though will happily enjoy any other lover you offer him.";	[M Piggy friend]


[ Edit this to have the correct Name as well]
Candy Striper ends here.