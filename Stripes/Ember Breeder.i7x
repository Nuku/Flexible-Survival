Version 3 of Ember Breeder by Stripes begins here.
[ Version 3.4 - Adding libido pill as drop item. ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds an Ember Breeder to Flexible Survival."

embervicsex is a number that varies.

Section 1 - Monster Responses

to say emberbreederdesc:
	setmongender 5;
	say "     Before you is another strange mutant, a rather dog-like creature this time. Hir long, floppy ears perk up as she notices you. Shi has [one of]red[or]pink[at random] eyes and looks at you with obvious lust. Shi is completely unclothed and you can see just by looking at hir that shi is built to pleasure whoever shi comes in contact with; hir large breasts drip milk at a steady rate and shi has a cock that makes your mouth water. Hir penis is starkly inhuman, with ridges, bumps, spines and a knot at its base - yet somehow all that seems tantalizing, a source of myriad pleasures to anyone shi fucks. Shi lets out a moan and strokes hirself for a moment before rushing at you.";

to say losttoemberbreeder:
	if player is female and player is impreg_able:
		if a random chance of 1 in 2 succeeds:
			follow the breast descr rule;
			say "     Her nose twitches as a wild look comes to her eyes. She shoves you to the ground and clambers up on top of you even as her shaft rubs along your thigh in the motion. 'I am going to make you so full of child, your kids will be pregnant,' she whispers at you as she slips into you, strangely formed shaft sending sharp pangs of pleasure as each bump penetrates your clenching lips. The barbs that cover it pluck and pull at you when she draws back, just to slam home again. She nuzzles into your [descr] chest as she thumps against you like a huge rabbit, her own breasts rubbing along your front with each frantic push and pull. Liquid heat pours into you as she growls, slamming home and working a suddenly thick knot into your cunt, sealing herself to you.[impregchance] As you remain locked to her, she nuzzles up against you and pushes a teat to your mouth. The milk soothes and calms you, time melting into a pleasant blur. When the haze lifts, she has departed, leaving you with her sticky seed on your thighs to remind you of her.";
		else:
			say "     Running her hands over your [bodydesc of player] body, she pulls you in close and sniffs at you. Her textured cock throbs as it against your thigh. 'Mmmm... someone's fecund and ready to be bred. I'm going to knock you up so good, you won't even be able to walk,' she pants excitedly. Pushing you to the dirty ground, she rolls you onto your side, raising one of your legs and folds it across her side. With your cunt[sfn] thus exposed to her drooling prick, she gives a happy bark before thrusting into you. Your [cunt size desc of player] cunt quivers and trembles as that oddly textured shaft of hers sends shocks of delight through you as each bump rubs past your clenching lips. And when she pulls back to make another thrust, those soft barbs of hers brush across your inner walls.";
			say "     As you lose yourself in the pleasure of the dog-creature's cock pounding away at you, she relaxes her hold on you. Her freed hands soon make their way to her chest, rubbing her plump breasts and teasing her perky nipples. Pinching and pulling on them soon has milk spurting from them to rain down upon your [bodytype of player] body. The feel and scent of this only excites you further, making you imagine having some pups of your own soon nursing from you. You groan loudly and your cunt clenches down around the canine mutant's cock as you climax. While your clenching cunt does make it harder for her knot to get into you, she's up to the task like the breeder-stud she is, pounding you all the harder through your orgasm until she's tied with you. Once locked tightly together, she growls and unleashes her hot semen, flooding your womb with her sperm.[impregchance]";
			say "     Feeling delightfully full of the dog woman's semen, you lay back and bask in the hazy afterglow, rubbing your [if scalevalue of player > 4]rounded [end if]belly. Putting a hand on yours, she smiles, clearly imagining you swelling even further with a litter of pups. Losing yourself to such dreams, you awaken some time later to find her gone, with only the sticky mess leaking from your gaping cunny [if player is not impreg_able]and that pleasant warmth in your belly [end if]to show for your encounter.";
	else if player is mpreg_able:
		say "     [if player is male]The herm creature's eyes go to your cock as she pushes you to the ground, but then nose twitches. 'Oh ho! You look male, but I'd know a breeder anywhere,' she says with a lustful smile. Rolling you over, she raises your ass in the air and grinds her cock between your cheeks[else]After pushing you to the ground, the herm creature momentarily paws at your bare crotch, a little disappointed that there's neither male nor female genitals to enjoy. But then her nose twitches as a new look of excitement crosses her face. 'Aren't you a [one of]special treat[or]strange surprise[or]unusual lover[or]odd plaything[at random]? You look like you're no fun, but I'd know a breeder anywhere,' she says with a lustful smile. She then pushes you to the ground and onto all fours, raising your ass in the air so she can grind her cock between your cheeks[end if]. 'I'm going to knock up that sexy breeder ass of yours and fill you with my pups,' she whispers at you as she spreads your back door open with her strangely formed shaft. Sharp pangs of pleasure run through you as each bump penetrates your tight anal ring and the barbs that cover it pluck and pull along your inner walls as she draws back, just to slam home again.";
		say "     [if player is male]Reaching around, she takes a hold of your cock and strokes it, mumbling about how nice it'd be to ride it, but how you need a proper breeding first[else]Reaching around, she rubs a finger across your bare crotch, mumbling about how a breeder like you really needs something more there[end if]. She pounds away at you with considerable zeal, panting with excitement as her milk-laden breasts rub and slap against your back. You can feel trickles of her milk run around your sides. And then, with a final deep thrust, liquid heat pours into you as she growls and drives her thick knot into you, sealing herself inside your ass. That swollen knot keeps all her virile seed locked inside your ass, filling your belly with its warmth even as it seeks to quench the heat of your hidden womb.[mimpregchance]";
		say "     You're left locked with her for a while. She pants and licks at your neck and ears while gently grinding herself against you, spilling more of her milk across your body. Your thoughts are a pleasant blur, simply enjoying the feel of her delightful manhood and her potent seed locked inside you. When the haze lifts and you start to recover your senses, she has departed, leaving you with her sticky seed on your thighs to remind you of her.";
	else:
		if player is not male:
			say "     Chirping triumphantly, the ember breeder grabs you and pulls you tight to hir chest. Smiling, blissful in hir lusty haze, the ember breeder quickly forces a nipple into your mouth and squeezes hard on hir own tit. Sweet, rich cream explodes from the abused nipple, a constant stream that forces you to swallow or be drowned. Smiling, the ember breeder slowly strokes across your back, planting small, butterfly kisses across your brow until the flow tapers to a halt. Satisfied, the herm gently strokes your distended tummy until you fall asleep, giving a soft kiss goodnight before departing.";
		else:
			if a random chance of 1 in 2 succeeds:
				say "     The ember breeder lowers you gently to the ground and quickly removes your clothing. Shi very demurely crawls between your legs and licks your [cock size desc of player] dick until it's standing up straight in her delicate grip. Hir swollen tits drip milk on your skin as shi slides back up your body and lines hir dripping slit up with your rigid member and quickly impales hirself on you. Your shaft slips completely into hir with no resistance and shi chirps in pleasure and begins to fuck you with reckless abandon. You feel hir juices dripping down your thighs and pooling in between your legs while hir pre-cum splatters your chest as hir cock bounces up and down. Hir hips begin to slam into you hard enough to make you ache, but your own orgasm is close as shi shows no sign of stopping hirself. You try to hold back, but shi suddenly clamps down on your cock as both of hir sexual organs orgasm together; hir cock shoots cum all over your chest and face, leaving almost no inch clear of the sticky fluids. The clenching of hir tunnel around your shaft is more than you can take as your cock unloads into hir, splattering your seed against hir walls and into hir womb. Shi leans down and kisses you as hir orgasm subsides before getting up and walking shakily away, leaving you lying in a state of bliss on the ground.";
			else:
				say "     [if HP of player > 0]Giving in and letting hir do as shi well, you submit to hir lustful advances[else]Stumbling to the ground after that last blow, you're unable to resist[end if] when shi eagerly clambers atop you, paw going quickly to your groin to grope your [cock of player] manhood until its [cock length of player]-inch spire is hard and waiting for hir to climb upon. Grabbing your head, shi presses it between her milk-laden breasts as she lowers hirself down onto your cock with a moaning bark of pleasure. Hir milk drips down onto you and your head turns to one of hir nipples so you might suckle from it.";
				say "Shi rides you eagerly, panting and barking at times whenever shi gets particularly worked up. Hir cock throbs and twitches, spurting precum onto your [bodydesc of player] chest at these times. Shi takes hir time for a while, enjoying having found a mate to breed her and intends to savor it for a while. Lost in a lustful, milk-induced haze, you suckle happily and let hir do as shi pleases. You lose track of time, but it feels like about a half hour before shi will wait no longer and rides you hard and fast, driving you both to powerful, messy climaxes that leave you sticky with semen and juices by the time you're done unloading your [cum load size of player] load into hir needy womb and shi's painted the front of you in hir cum in return. Reeking of sex by the time shi's done and leaves you, you lay there in a state of sexual bliss for a while to recover your senses.";


to say beattheemberbreeder:
	say "     The ember breeder moans with need, staggering as shi tries in vain to continue the struggle. Torn between hir lusts and exhaustion, hir paws roam all over hir body, playing with her breasts, cock and pussy as she stumbles to hir knees. ";
	if player is male:
		let diceroll be a random number between 40 and 125;
		if cockname of player is listed in infections of Caninelist and diceroll < libido of player:
			say "     Something about hir needy display arouses you and you feel an uncontrollable urge to mate with this strange beast welling up in your canine loins. Before you can suppress it, you push hir down onto all fours. Shi releases a series of pleasured chirps at this and raises hir ass, offering up hir juicy pussy. You drive your [cock size desc of player] cock into hir easily, making the vaguely canine creature squirm in delight";
			if embervicsex is odd:
				say "[emberbreedersex01]";
			else:
				say "[emberbreedersex02]";
			increase embervicsex by 1;
		else:
			say "     Something about hir needy display arouses you and you feel a growing urge to mate with this strange beast. Shall you give into this desire?";
			if player consents:
				say "     Rather than resist this urge, you give into your lustful desire and approach the horny herm breeder. You push hir down onto all fours and shi releases a series of pleasured chirps, raising hir ass in the air. You drive your [cock size desc of player] cock into hir easily, making the vaguely canine creature squirm in delight. ";
				if embervicsex is odd:
					say "[emberbreedersex01]";
				else:
					say "[emberbreedersex02]";
				increase embervicsex by 1;
			else:
				say "     Resisting the temptation, you take a few steps back to distance yourself from the whining herm's needy display. Shi gropes hirself briefly, then hir paws drop to hir sides, too weak to continue. With a sad look in hir eyes, shi falls to the ground and slips unconscious, milk still leaking steadily from hir swollen tits.";
	else:
		say "     Shi gropes hirself briefly, then hir paws drop to hir sides, too weak to continue. With a sad look in hir eyes, shi falls to the ground and slips unconscious, milk still leaking steadily from hir swollen tits.";


to say emberbreedersex01:
	if cock length of player > 18:
		say "     Hir pussy stretches open to accommodate your massive shaft, bulging at the belly to fit you in. Shi brings a paw to the bulge, rubbing over it with happy chirps, glad to be taken by such a virile and well-hung male";
	say "     You bring your hands to hir breasts, squeezing them, causing large spurts of milk to shoot from hir nipples onto the ground. You work at milking hir the whole time you breed hir, soaking the tunnel floor in a growing puddle of breast milk.";
	say "     When you feel your orgasm about to arrive, you drive yourself fully into hir, pushing your cock into hir accommodating womb and releasing your thick seed to breed hir. Shi moans in delight, clamping down firmly on your cock and milking it for all you'll give[if cock width of player > 20]. Your large balls drain into hir, making hir belly swell with your semen, almost certain to impregnate the needy, breeding bitch[end if]. Hir penis twitches and hir balls pull up, spraying hir own seed into the puddle of hir milk, adding to the messy white stain. When you withdraw your cock, the breeding slut passes out in the puddle of hir own fluids with a dazed expression of happiness on hir muzzled face.";

to say emberbreedersex02:
	if cock length of player > 18:
		say "     Your [cock size desc of player] shaft stretches hir pussy open with ease, hir breeder body readily adjusting to accommodate you. Shi rubs a paw over the bulge you make in hir belly with happy chirps, pleased to have such a virile and well-hung stud atop hir.";
	say "     You briefly manhandle hir leaking breasts, drawing spurts of hir milk before moving to hir hips to grab them so you can fuck hir all the harder.";
	say "     You drive your [cock of player] cock into hir needy pussy over and over again, losing yourself in the lustful breeding. And no matter how rough you get, the horny herm only chirps and pants in hir need for more, hir body longing for your seed. You give hir plump bottom a few slaps which cause hir cunt to squeeze down around you with each blow. After a short set of these, you're ready to blow in a different manner and drive yourself fully into hir, pushing your cock into hir accommodating womb and unleashing your [cum load size of player] load. Shi moans in delight and hir vagina clamps down firmly on your cock, milking it for all you'll give[if cock width of player > 20]. Your large balls drain into hir, making hir belly swell with your semen, almost certain to impregnate the needy, breeding bitch[end if]. Hir penis twitches and hir balls pull up, spraying hir own seed onto the ground beneath hir. When you withdraw your cock, the breeding slut passes out in the puddle of hir own fluids with a dazed expression of happiness on hir muzzled face.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Ember Breeder"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The ember breeder [one of]grabs at you with hir small claws, trying to pull you against hir chest[or]grinds hir cock firmly against you[or]wraps hir claws around a tit and squeezes hard, letting the warm milk splash against your body[or]manages to get a hold of you and pulls you against one of hir nipples. Shi forces your mouth against it and squeezes hard, milk pouring down your throat[at random].";
	now defeated entry is "[beattheemberbreeder]"; [Text or say command used when Monster is defeated.]
	now victory entry is "[losttoemberbreeder]";
	now desc entry is "[emberbreederdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "an obviously canine head, with long floppy ears"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "deliciously curvy and exposes the tender lip of a pouch. Any breasts present are swollen, dribbling milk upon the floor at a slow, yet constant rate. Your arms are thick, with diminutive claws that yearn to hold and cuddle. Your legs are digitigrade, shapely, and defined with excellent muscular tone. Your feet are exceptionally large paws with long toes"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "smooth, tender, yearning"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "You have a curved, bubbly ass that, when spread, reveals aching flesh. A long, flexible tail thick with muscles covers it."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ridged, spined, and knotted"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "your face creaks as your jaw pushes forward, extending into a canine muzzle. Your ears give little shivers as they droop and swell, ending their ticklish torture as a pair of long, floppy ears"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you shudder as a faint tugging sensation stretches across your belly. With a soft moan, a velvety stretchy pouch filled with teats swelling. Immediately a heat sinks into your mammaries, milk dribbling with the slightest pressure. Your arms swell with muscle and fat, becoming soft, supple limbs meant to hold and cradle. Tiny black claws push through the tips of your long, slender fingers, hardly worthy of any defense, but wonderful to scratch and tease. Your legs snap and pop with a dull pain, your heel rising as you stumble about, trying to find some semblance of balance. You finally becomes stable, after a few awkward, misplaced steps, on the balls of your huge, comfortable feet"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin crawls as painfully pleasant shivers caress your spine. Gasping, the air itself feels heavy upon your body, drawing pleasant cries from your chest as your mind begs, pleads for the softest touch"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "the flesh of your bottom strains as it grows in size, becoming perpetually bubbly while your anus becomes both aching and needful. Deprived of stimulation, your desires are suddenly sated by a long, flexible tail thick with muscles"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your groin throbs with pleasure, your cock tingling as it warps and contorts. Tiny spines erupt along the entire length, ridges form along the top, and a thick, throbbing knot forms at the very base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 12;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 6; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 6;
	now libido entry is 66; [ Amount player Libido will go up if defeated ]
	now loot entry is "libido pill";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]curvy[or]motherly[or]twisted[as decreasingly likely outcomes]";
	now type entry is "[one of]canine[or]mutant[or]dog-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Ember Breeder":
		if humanity of player < 10:
			say "     Unable to hold out any longer, the infection affects your mind enough that you succumb to your new instincts and head off into the city in search of sexual satisfaction. You wander directionless through the wild city until you are found by ";
			let T be a random number between 1 and 3;
			if player is female and "They Have Your Eyes" is not listed in feats of player and "Sterile" is not listed in feats of player:
				if T is 1:
					say "a pack of horny wolves who capture you. You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members. Much to your delight, your womb grows quite full with their young. These pups gestate quickly and are pure wolves like their fathers. You are bred again and again, birthing numerous wolves to add to the growing pack's strength.";
				if T is 2:
					say "a small colony of ocelots who capture you. You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy. Much to your delight, your womb grows quite full with their young. These kittens gestate quickly and are pure ocelots like their fathers. You are bred again and again, birthing numerous kittens to add to the growing colony's strength.";
				if T is 3:
					say "a herd of cattle who capture you. You are mounted and fucked repeatedly by the bulls while fed milk from the cows. Much to your delight, your womb grows quite full with their young. These calves gestate quickly and are fully bovine like their fathers. You are bred again and again, birthing numerous calves to add to the growing herd's strength.";
			else if player is female and "Sterile" is not listed in feats of player:		[F/H Breeder]
				if T is 1:
					say "a pack of horny wolves who capture you. You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are bred repeatedly, used by the younger members of the pack to practice on before mounting real bitches to breed more wolves into the pack.";
				if T is 2:
					say "a small colony of ocelots who capture you. You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are kept as a small harem, used as a reward for the members of the colony.";
				if T is 3:
					say "a herd of cattle who capture you. You are mounted and fucked repeatedly by the bulls while fed milk from the cows. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are bred repeatedly, used as surrogate milkers for the herd to free the heifers to be bred more often by the bulls.";
			else if player is male:		[M Breeder / H non-breedable]
				if T is 1:
					say "a horny panda girl at the zoo. She lures you into her enclosure and rides your cock, moaning in ecstasy. When she's finally done with you, she passes you off to the next female panda for the breeding to continue. Eventually, you've satisfied them all and passively allow them to place a collar around your neck and chain you into a corner. Not that you'd want to leave such a lovely harem of needy women, but they aren't taking any chances. Despite their best efforts, you remain unchanged, but breed pure panda children in their wombs regardless. In time, many new female pandas are birthed and join the group waiting to be fucked by you.";
				if T is 2:
					say "a rubber tigress at the state fair. It seems she missed the escape the others made out of the city and is now stuck there alone. When she raises her tail for you and meowls needfully, you eagerly mount her, driving your cock into her rubbery folds and fucking her full of your seed. You breed her repeatedly until you both are satiated. Keeping herself wrapped around your cock, she deflates herself and snuggles her warm, empty body against your chest and her arms around your back. You wear her like this, a striped rubber shirt as you continue your wanderings through the city with your new partner. Every night, she moans lustfully as you reinflate your companion before fucking her. Your constant fucking makes the inflatable tigress grow thicker and fuller before finally birthing rubber tigress cubs who inflate themselves and wander off in search of companions of their own.";
				if T is 3:
					say "a female hippogriff in the downtown core of the city. She's set up a little aerie at the top of one of the high rises with the stairs blocked to seal her floor off. She carries you up to her nest and gets you to happily fuck her for hours on end. With you trapped up there, she has a continuous breeding companion and enjoys riding your cock any time she's not hunting. You remain steadfastly unchanged, but are capable of breeding with her. She grows full with eggs that eventually hatch into more beautiful hippogriffs. These take over the tops of more towers and spread to span control the air above the high rise district and abduct more flightless mates to breed with them high in their towers.";
			else:			[F non-breedable]
				if T is 1:
					say "a large wolverine guarding a historic building. Once the home of a famous writer, the house has been maintained for its historic value and the wolverine has taken to guarding it aggressively. He captures you and pins you down, fucking you repeatedly. But instead of driving you off after draining his hefty balls into you, he drags you inside and keeps you in one of the bedrooms, adding you to his fixation. He is a rambunctious lover when not on watch, pounding into you hard and deep, much to your delight. Otherwise, he leaves you to yourself to enjoy the lovely home he's given you. And while you cannot leave, you feel little need to do so, as your guard gives you plenty of sex to satisfy your cravings.";
				if T is 2:
					say "a male kangaroo, who drags you back to a small pub filled with many more roos. There you are meant to be the night's designated sport-fuck. The kangaroos take turns mounting and fucking you. They are intrigued by your pouch and play with your teats, but you transform no further, much to the dismay of some. After a night-long romp where everyone has a go at you - male, female and herm alike - you are left quite satisfied on top of the table, leaking roo cum from every hole. A few even sprayed their load into your pouch, filling it with their warm, slick semen. Despite your not changing, they decide to keep you and you quickly settle in as a staple of their pub's entertainment.";
				if T is 3:
					say "a patrol of horsemen, who take you back to their brothel. There, you are added to their collection of whores and peddled to their patrons. They spend considerable effort attempting to transform you into another mare, but are quite unsuccessful. Eventually, they give up and use you as a lure, drawing in new clients with your alluring body before letting the mares coax them over for more sex and eventually changing them into another mare for the brothel. The horsemen are quite pleased with your success at this task and always fuck you extra hard when you help catch a new girl for them.";
		else:
			say "     You are picked up by the military as they comb through the city for survivors. You convince them that you are still sane despite your rather strange body and are taken back to their base for processing. You are able to hold back your lustful instincts enough to pass their testing and brief questioning, but are held for what feels like quite some time before your final release.";
			if player is female and "They Have Your Eyes" is not listed in feats of player and "Sterile" is not listed in feats of player:			[F/H True Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs[if player is male] with your dual-gendered body[end if]. Only a few weeks after your release, you give birth to a pure strain child for one of your partners[if player is male] and a variety of females you slept with all give birth to pure children of their strain too[end if].";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your partner's strain, making you a desirable lover for those infected by uncommon strains. If they can't find a matching lover, you are available for them to breed[if player is male]. Some mismatched couples even come to you to breed with them both, siring children in the female and bearing other children for the male[end if]. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can.";
			else if player is female and player is male and "Sterile" is not listed in feats of player:		[H Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your dual-gendered body. Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover. You get pregnant as well, but this child gestates very slowly and is pure copy of yourself when born.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains. If they can't find a matching lover, you are available for them to breed. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can. As your own children grow up, they take up the business as well, helping many struggling strains breed their next generation.";
			else if player is purefemale and "Sterile" is not listed in feats of player:		[F Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your lustful body. You get pregnant during this time, but this child gestates very slowly and is pure copy of yourself when born. The feeling of being pregnant and nursing your child is quite satisfying and you eagerly seek to be bred as often as you can so you can enjoy it continuously. You breed a large family with your many lovers, offering yourself to any male as soon as you feel yourself ready to become pregnant again.";
			else if player is male:		[M Breeder or H non-breedable]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs. Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains. If they can't find a matching lover, you are available for them to breed. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can[if player is female]. While you cannot give birth yourself, seeing all the young you sire fills you with pride[end if].";
			else if player is female:		[F non-breedable]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs. You continue like this for quite some time, eventually drifting to join a brothel for the infected, satisfying your need for lustful sex while making money while doing so. Unable to get pregnant, you always feel a longing in you that can only be briefly satisfied through sex. This makes you an enthusiastic slut for your clients, ensuring that they are fully satisfied after a visit with you.";

Ember Breeder ends here.
