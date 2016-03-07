Yuppie Mink by StripeGuy begins here.
[ Version 1.1 - Female graphic added ]

"Adds Yuppie Mink to Flexible Survival."

when play begins:
	add { "Yuppie Mink" } to infections of furry;


Section 1 - Monster Responses

ymgmode is a number that varies.  ymgmode is usually 1.

to say ymgdesc:
	choose row monster from the table of random critters;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     Your wandering feet bring you close enough to see an aristocratic mink, albino or just royal white, puttering around the deck of their yacht. With a haughty sniff, they turn their nose up at you and vanish belowdecks.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now ymgmode is 0;
	otherwise if guy is banned:
		now ymgmode is 1;
	otherwise if girl is banned:
		now ymgmode is 2;
	otherwise if a random chance of 1 in 2 succeeds:
		now ymgmode is 1;
	otherwise:
		now ymgmode is 2;
	if ymgmode is 1:
		setmongender 4;		[creature is female]
		project figure of YuppieMink_icon;
		say "     Moored at the docks among the industrial and commercial crafts are also several pleasure boats caught up in the military blockade.  From one of them, a slender white figure appears.  Some kind of mink or ermine, with shimmering white fur and a regal bearing that oozes haughty attitude.  The matching white tennis ensemble she wears does little to conceal her pert breasts and shapely thighs, attractive even if she is huffy and upset.  '[one of]This dock is absolutely filthy!  It puts me in a crass mood.[run paragraph on][or]Did you bring the fresh supplies of caviar and wine?  No?  Then what are you good for?[run paragraph on][or]This outbreak has ruined my shed-ule!  You there!  Amuse me for a bit![run paragraph on][or]Ah, a replacement for my cabana boy![run paragraph on][or]Does the harbormaster know who I am?  This is asinine![run paragraph on][or]I hope you brought a racquet with you.[run paragraph on][at random]' she says it in a clipped tone, pausing before hopping from the deck to fight you!";
		now sex entry is "Male";
		if "Female Preferred" is listed in the feats of the player, now sex entry is "Female";
	if ymgmode is 2:
		setmongender 3;		[creature is male]
		say "     Moored at the docks among the industrial and commercial crafts are also several pleasure boats caught up in the military blockade.  From one of them, a slender white figure appears.  Some kind of mink or ermine, with shimmering white fur and a regal bearing that oozes contempt.  The smart blue captain's jacket he wears with the matching hat is lovely, but the lack of pants leaves his dripping cock and swinging sack on full display.  He doesn't seem to mind at all, setting down his wine glass before calling to you.  '[one of]Ahoy there!  You must be my new sexy cabin boy![run paragraph on][or]Did you bring the fresh supplies of caviar and wine?  No?  Then what are you good for?[run paragraph on][or]This city is so droll.  Nothing like Madrid.  You look a bit like a whore I knew there, though.  Come aboard and remind me more![run paragraph on][or]Thank goodness, someone to scrub this decking.  I am dripping all over the inlaid hardwoods.[run paragraph on][or]Don't they know who I am?  Why, I'll have them bent over the rail of my yacht and pound their asses until they're blue in the face.  Mmm... that sounds lovely. Perhaps I'll practice a bit of that with you.[run paragraph on][or]Thank goodness, someone other than these blue collar types.  Come aboard for some wine and a hard fucking, will you?[run paragraph on][at random]' He hops down from the deck, gearing up to fight!";
		now sex entry is "Female";
		if "Male Preferred" is listed in the feats of the player, now sex entry is "Male";

to say ymgfight:
	if ymgmode is 1:
		say "[one of]The mink digs her manicured claws into your flesh![or]She pulls out her racquet and gives you a firm swat with it![or]With a sudden swirl of her short skirt, she kicks you right in the shin![or]She falls back and gestures, allowing a deckhand to throw something heavy at you![or]She bites at you fiercely, then spends a moment wiping the taste of commoner from her mouth.[or]She hits you on the head with an empty bottle of champagne.[or]With a keening cry, she hurls herself at you with limited effectiveness.[or]She lifts her short skirt, exposing her needy cunt to you playfully, sapping your will to fight.[at random]";
	otherwise:
		say "[one of]The mink digs his manicured claws into your flesh![or]He pulls off his hat and throws it like a disc![or]With a growling snarl, he whips his pocketwatch around by the chain and hits you in the face![or]He steps back to allow a deckhand to wallop you from behind![or]He momentarily sidesteps, accepting a mixed drink from a deckhand. After draining it, he hurls the empty glass at you![or]He writhes his hips forward and milks his cock, spalttering you with precum.[or]He digs around in his pockets, and passes a bribe to the nearest stevedore. You never see the empty crate that falls on your head![at random]";

to say losetoymg:
	if ymgmode is 1:
		say "[losetoymgirl]";
	otherwise:
		say "[losetoymguy]";

to say losetoymgirl:
	if hp of player > 0:
		say "     Unable to resist the mink gal's insistent arrogance, you sink to your knees. Your fingers go slack, gear falling to the deck as she closes in to rest one foot on your shoulder. With a smirk, she pushes you onto your back. 'At least you have the sense to take your place.' She muses quietly, gesturing for you to strip.";
	otherwise:
		say "     Beaten senseless by the yachting mink, you collapse to the wooden slats of the dock. At the snap of her fingers, deckhands yank your gear and clothes of without ceremony, leaving you bare to her. 'You locals are so unfriendly! This is worse than that trip to Peru!'";
	if cocks of player > 0:
		say "    With a soft little self-amused hum the mink stands beside you, swinging one short leg across your body to straddle your prone form. 'At least you've got something I can amuse myself with.' She hikes her skirt up to expose the dripping slit of her needy cunt, rubbing it idly with her paws. Her eyes close, head tilting back as she teases herself with her fingers and you with the sight of her lips opening. Honey-like juices dribble down, splattering on your belly and crotch. The warmth and scent is enough to get your prick stiff and ready for her, but things are outside your control! Your dick is aching with need by the time she is ready, smoothly crouching down and aligning her cunt with the tip of your cock. 'There we go.' She churrs with satisfaction as she sits down in a single motion, her cunt swallowing you to the base!";
		say "     She feels so good around you, her tight cunt expertly massaging and milking your length as she begins to bounce. Her pert tits wobble in the high-dollar sports bra she wears, out of your reach. Every time you extend a hand toward them, she slaps it away. The mink girl is running the show, but you are lucky enough to be along for the ride. Eventually you have to lay back and enjoy it, but are only halfway to your own orgasm before she is barking and trembling in delight! With a gush of femjuices, she has her delightful orgasm, eyes rolling back in her head. She stands up suddenly, leaving you blueballed and in sexual agony. 'Not terrible.' Daintily, she flicks the tip of your still thrumming cock with a toe. That is enough for you to finally limp to orgasm, the mink laughing as you splatter yourself. Still laughing, she returns to her yacht! ";
	otherwise:
		say "     Finding only a wet pussy between your legs, the mink clicks her tongue in disappointment. 'Unfortunate' She chides you gently, but hikes her skirt up to expose the dripping slit of her needy cunt, rubbing it idly with her paws. Her eyes close, head tilting back as she teases herself with her fingers and you with the sight of her lips opening. With a huff she steps forward, gripping your head firmly and bringing up to her needy cunt. Its lick or die, and you have little choice but to worship that hot slit! Time loses meaning as you slurp and lick, teasing her swollen clit until at last the mink gushes femjuices and soaks your face! Satisfied, she allows you to collapse, climbing back aboard her yacht.";

to say losetoymguy:
	if hp of player > 0:
		say "     Swayed by the mink stud's almost obnoxious confidence, you find yourself kneeling on the dock, head bowing. 'There is the trait I like. Subservience.' His claws tick on the wooden planks as he draws closer, gesturing for you to disrobe as he removes his cravat.";
	otherwise:
		say "     Having beaten the stuffing out of you, the studly mink unknots his cravat with something almost like disinterest as a deckhand pulls off your gear and clothing. Too weak to resist, you allow yourself to be stripped bare and laid out.";
	if cunts of player > 0:
		say "     Eyeing your wet cunt, the mink gives his cock a stroke to milk out a few fat droplets of precum in anticipation. 'In this dirty town I suppose I have no choice but to slum a bit.' The insult is coldly smug, but you're in no position to complain as he lowers himself onto you. Though he seems awful self-centered, he's well mannered enough to balance his weight on his elbows instead of you! That seems the extent of his manners, though, as you get no warning before he plunges his fat cock into you! If it didn't feel so damn good to have that well-formed cock jammed to the hilt, you might be tempted to complain! With a soft chuff and a roll of his hips, the mink begins to fuck you with smooth motions. The mixed juices of your cunt and his dribbling cock slick things up nicely and allow such a fluid breeding!";
		say "     He completely ignores your body or your pleasure in favor of his own, even going so far to growl and snap when you lift up for a desperate kiss. Despite his selfish nature, the pleasure from being bred stokes a fire from your clit to the ridges of your womb within! As if sensing your deep excitement, the mink churrs quietly to you as his pace quickens. 'Don't think for a moment my litter entitles you to a slice of the inheritance.' His grin is humorless as he continues to pound in deep, his orgasm on the way. With a deep rolling bark he sinks in as deep as his hips will bear, massive nuts cradled against your thighs. The warmth of his seed is almost agonizing as he fills your cunt to the brim, streams of it bubbling out to splatter on the deck. With a sigh he pulls out and leaves you well fucked and dribbling, returning to his yacht.  [impregchance]";
	otherwise:
		say "     Noting your lack of a tight cunt, the mink rotates his paw, the deckhand helpfully flipping you over. 'In this dirty town I suppose I have no choice but to slum a bit.' The insult is coldly smug, but you're in no position to complain as he kicks your legs apart to expose your dimpled asshole. He kneels between your legs, getting a grip on your spread thighs. Without so much as a by-your-leave he rocks his cock forward and your ass backwards to meet it! Without regard for your comfort, the mink pushes his thick slicked-up cock in at a steady pace deep into your asshole! Such upfront rape should horrify you, but thanks to the nanites your cock is rock-hard as he starts to smoothly fuck you senseless!";
		say "     He completely ignores your body or your pleasure in favor of his own, even being cruel enough to slap your hand down if you attempt to give your cock a stroking. Despite his selfish nature, the pleasure from being bred stokes a fire from your toes to ears as he expertly saws in and out of your ass! His grip tightens as his strokes speed up, hammering your ass harder with that shapely cock! 'You're almost as tight as the Cayaman resort boys!' He snickers, and lunges forward with a snarl, his fat nuts nestling against your thighs as he impales you as deep as he can drive. With a satisfied sigh, he unloads his massive torrent of hot, fertile seed deep into your asshole, filling your guts with warmth! Its just enough, barely, to push you over the edge, your neglected cock splattering milky ropes across the dock timbers. His load spent, the mink withdraws and leaves you to collapse, already walking back to his yacht. [impregchance]";

to say beattheymg:
	if libido of player < 30:
		say "'I'll never hear the end of this at the yacht club!,' the mink gasps, collapsing into a heap on the docks. 'Valet! Get me to the belowdeck spa so I can recover!' The mink's dainty ears flutter with fear as you approach, but before you get your hands on the uppity cruiser, a bevy of valets and manicurists descend. In the flurry, you lose sight of your prey! You'll need to be fast next time around.";
	otherwise:
		if ymgmode is 1:
			say "[beattheymgirl]";
		otherwise:
			say "[beattheymguy]";

to say beattheymgirl:
	say "     The uppity mink lady looks positively confused as she is beaten into submission. 'This is preposterous! I am too important and rich for this!' Before she can continue, you deftly slap her down to reinforce your control. ";
	if cocks of player > 0: [male or herm]
		say "  The shocked mink is made speechless by the rough treatment, too startled to struggle even weakly as her skirt is flipped up. Despite the beatdown, her cunt is inflamed with arousal and dripping with femmy juices, beckoning to your hard cock! You descend on her like a severe market correction, pinning her down against the rough planks of the dock. She yelps, her tits bouncing up and out of the sportsbra to jiggle in the salty air. They look so delectable, but you cannot resist the siren song of that hot snatch! There is a deep pleasure to be had from putting the bratty mustelid in her place, roughly fucking her like some low-class bimbo until at last you spurt your hot cum deep inside! You snicker at the thought of impregnating her with a scandalous mixed-breed litter as you draw back out, admiring how her cunt bubbles with your cum.";
	otherwise if cunts of player > 0: [female]
		say "  The shocked mink is made speechless by the rough treatment, too startled to struggle even weakly as her skirt is flipped up. Despite the beatdown, her cunt is inflamed with arousal and dripping with femmy juices, mirroring your own excited gash! Without a word you just take hold of her tiny ears and yank that angular muzzle right up against your snatch! At first she struggle a bit, but after a box to the ears she gets the picture! Her tiny tongue is small but skillful, and hot as the shining sun! By flexing your arms, you get her into a good cunt-lapping rhythm that brings you to a happy gushing orgasm before too long! Satisfied, you shove the sticky splattered mink aside and return to your adventure!";	
	otherwise:
		say "Having nothing to work with, you leave the beaten mink to be ravaged by dock-workers or merchants as fate decides.";

to say beattheymguy:
	say "     The poor mink fellow sinks down to his knees, jaunty cap sliding off to clatter across the deck. It splashes into the water, forlornly.";
	if cocks of player > 0: [male]
		say "Your cock is rock hard in anticipation as you kneel down and flip the mink over. His short tail presents no obstacle to revealing his puckered tailhole, which winks at you as the poor male gasps for breath. You show him the same mercy he would have shown you - none. Your cock is lubed with drizzles of your precum, and that is all you need to press deep inside the defeated man! His soft humiliated moan is drowned out by your happy growl, as the yuppie mink is very tight and very hot! Before long you are jackhammering the poor ermine hard enough to make your balls slap together with wet sexual sounds! Like the nice person you are, you grope underneath his hips, finding his fat mink-fucker, giving it a few strokes. Somehow you manage to time your orgasms together completely by accident, splattering his jizz across the dock as you fill his guts with cum! After you're fully sated, a single shove decouples you and after a dick-shake, it's time to hit the adventuring trail!  ";
	otherwise if cunts of player > 0: [female]	
		say "You admire the well tenderized mink, one hand dropping down to fondle your needy cunt. Despite the violence, his cock is still throbbing and ready for action - an elegantly curved and shapely mass of thick cunt-pleasing pole. It is simply too tempting to pass up, and you give in to your own carnal desires for that thick cock! With a happy sigh, you straddle the mink's slender hips and guide that fat cunt-spreader to your lips, hissing gently as it spreads your cunt. It feels so hot and thick, filling you wonderfully with sheer animal pleasure! Using his supple body as your anchor, you start bouncing on it, riding it like a throbbing dildo until at last you come to a screaming orgasm! Weakly, he mirrors your intense pleasure, weakly groaning as his fat cock pumps a massive load into your steamy snatch! After a few moments of recovery, you pry yourself off him, snickering as you dribble a mixture of juices all over his fancy jacket. Maybe next time he'll think twice before attacking you![impregchance]";
	otherwise:
		say "Having nothing to work with, you leave the beaten mink to be ravaged by dock-workers or merchants as fate decides.";


Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Yuppie Mink"; [Name of your new Monster]
	now attack entry is "[ymgfight]";
	now defeated entry is "[beattheymg]";
	now victory entry is  "[losetoymg]";
	now desc entry is "[ymgdesc]";
	now face entry is "narrowed and strongly defined with an arrogant, aristocratic bearing made all the more visible by stark white fur. Tiny ears, a pink nose, and lips that reflexively twitch into sneers. ";
	now body entry is "elegantly thin and tapered, with an elongated torso and somewhat short limbs. The narrow width of your shoulders and hips simplifies your silhouette to the most basic and sleek of profiles. Slightly built, and delicately wrought, your body is perfect for complimenting satin and gold.";
	now skin entry is "[one of]satin soft white fur[or]elegantly white-furred[or]short but silky-smooth milky fur[at random]";
	now tail entry is "You have an elegant if somewhat short tail which is like a cloud or snowbank in motion, an almost hypnotically swirling sensual limb..";
	now cock entry is "[one of]pinkish[or]high-class cock[or]fat mink fucker[or]thick fuckstick[at random]";
	now face change entry is "your nose and mouth pull forward into a pointy and aristocratic muzzle, angular and shapely. Your teeth extend into predatory points as both ears shift upwards into dainty cups of flesh. Sleek and dangerous, your face is obviously high-class and dangerous";
	now body change entry is "your frame slims down and extends, the elongation making your body seem all the more slender.  Your arms and legs shorter and thin out to become more dainty and attractive, for fast and lithe movements.  Your limbs end in smallish paws that are soft and pink, obviously never used for a day of manual labor";
	now skin change entry is "you feel your whole body fluff up as nearly iridescent fur begins to grow, so white as to be nearly transparent and softer than the finest silk or velvet";
	now ass change entry is "pain and aches flare up as a soft, fluffy white mink tail uncurls from your ass";
	now cock change entry is "you feel electric sensations as nanites reform your cock, pink hues blossoming as your meat thickens to the sculpted curves of what looks like a cock designed for royalty, subtle textures and elegant curves which downplay its intimidating size. Beneath your newly shaped cock, white fuzz envelopes your nuts as they swell and bloat into an oversized purse brimming with cum";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 10;
	now int entry is 14;
	now cha entry is 10;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 28;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 2;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Warehouse";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 10;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 60;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]elegant[or]aristocratic[or]compact[at random]";
	now type entry is "mustelid";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Yuppie Mink":
		if humanity of player is less than 10:
			say "     Lost in the inhuman desires that rule your body and the shell of your mind, you leave the city. The dueling needs you feel to breed and rule end up making you quite dysfunctional, barely able to even survive until you find your way to another yuppie mink who is not quite as far gone as you are. What begins as a mindless fuckfest eventually becomes something like an arranged marriage, in that they arrange continual survival for you, and your body is married to their genitals. It works out well enough for you in the long run, not that you are ever aware enough to truly realize and appreciate it.";
		otherwise:
			say "     You manage to survive the many hardships of the city with something like an intact sense of self and free-will. Despite your impressive feats in combat and stealth, you still fall prey to the effects of your Yuppie Mink infection, and emerge with an obnoxious sense of entitlement that drives the military up the wall. Between demands for special treatment and confusion as to the location of the shiatsu massage parlor, your time under quarantine is insufferable for everyone involved. To add insult to injury, there is not a single person in the camp as sophisticated and worldly as you are!";
			say "     After you are released, you try to fit back into society in one way or another. Being a temporarily embarrassed millionaire, it is not easy for you in the half-way house for refugees - but you endure! With your considerable charm and appearance you manage to talk your way into some rather high class establishments. A bit of guile and sensuality gets you first the uniform of an employee, which you then manage to ply into access to the wardrobe of the wealthy. A change of clothes later, and you are able to mingle with the rich and well-bred with whom you belong.";
			if cunts of player > 0:							[FEMALE/HERM]
				say "     It takes a bit of time and some quick thinking, but before long you manage to cultivate a small group of suitable bachelors. You wrap them around your dainty little fingers first, exploring their wealth and influence. When you find one that suits you in personality and holdings, you strike with the predatory swiftness of your mink breeding. The curves of your body in another woman's gown hypnotize him like startled prey, and he is easily lured away from the droll party to somewhere more private. Once alone, it is easy to goad him into exploring your body, the heat of your slavering cunt like a siren's call. For a wonderful mindless night you allow him to fuck you senseless, addicting him to the sensation of your talented snatch.";
				say "     After that first night, he is yours for the taking, and before the first litter swells your body a ring is on your finger. As his wife, you control him with unabashed sensuality that is literally infectious. Before the first anniversary he has become a mink just like you. Happily, you pass much of the time on your yacht, fucking the days away in luxurious abandon.";
			otherwise:									[MALE]
				say "     It takes a bit of time and some quick thinking, but before long you manage to identify a young heiress, pretty enough but unattached. You use your considerable charm and sensuality, capitalizing on the rich allure of your natural scent to captivate her. When you judge her to be at the apex of affection and fertile, you strike with the predatory swiftness of your mink breeding. The stolen poetry flows from your lips like honeyed wine, and the touch of your nimble paws tear down the last of her defenses. She offers her body, and you take it with all the masculine force you can bring to bear. Again and again you dump thick, hot loads from your oversized nuts deep into her cunt, taking pains to ensure she catches your litter that first night. By morning, your pups are planted deep inside her young body, securing the first part of your plan.";
				say "     Her parents are less than pleased that a seemingly penniless mutant has bred their daughter, and intends to wed. A bit of charm does the trick - dear old mum gets a skilled fucking right atop her tea cozies, while dad experiences the famous mink flexibility as you ride his cock and suck his balls at the same time. She is barely showing when you walk down the aisle, but that soon changes. A lot of things change, actually, as you become the center of a slew of minks! Between your children and your wife, you also infect her immediate family with your strain of nouveau riche minkness.";

 
Yuppie Mink ends here. 
