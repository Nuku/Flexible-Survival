Version 3 of Ember Breeder by Stripes begins here.
[ Version 3.4 - Adding libido pill as drop item. ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds an Ember Breeder to Flexible Survival."

embervicsex is a number that varies.

Section 1 - Creature Responses

to say emberbreederdesc:
	setmongender 5;
	say "     Before you is another strange mutant, a rather dog-like creature this time. Her long, floppy ears perk up as she notices you. She has [one of]red[or]pink[at random] eyes and looks at you with obvious lust. She is completely unclothed and you can see just by looking at her that she is built to pleasure whoever she comes in contact with; her large breasts drip milk at a steady rate and she has a cock that makes your mouth water. Her penis is starkly inhuman, with ridges, bumps, spines and a knot at its base - yet somehow all that seems tantalizing, a source of myriad pleasures to anyone she fucks. She lets out a moan and strokes herself for a moment before rushing at you.";

to say losttoemberbreeder:
	if Player is female and player is impreg_able:
		if a random chance of 1 in 2 succeeds:
			follow the breast descr rule;
			say "     Her nose twitches as a wild look comes to her eyes. She shoves you to the ground and clambers up on top of you even as her shaft rubs along your thigh in the motion. 'I am going to make you so full of child, your kids will be pregnant,' she whispers at you as she slips into you, strangely formed shaft sending sharp pangs of pleasure as each bump penetrates your clenching lips. The barbs that cover it pluck and pull at you when she draws back, just to slam home again. She nuzzles into your [descr] chest as she thumps against you like a huge rabbit, her own breasts rubbing along your front with each frantic push and pull. Liquid heat pours into you as she growls, slamming home and working a suddenly thick knot into your cunt, sealing herself to you.[impregchance] As you remain locked to her, she nuzzles up against you and pushes a teat to your mouth. The milk soothes and calms you, time melting into a pleasant blur. When the haze lifts, she has departed, leaving you with her sticky seed on your thighs to remind you of her.";
		else:
			say "     Running her hands over your [bodydesc of Player] body, she pulls you in close and sniffs at you. Her textured cock throbs as it against your thigh. 'Mmmm... someone's fecund and ready to be bred. I'm going to knock you up so good, you won't even be able to walk,' she pants excitedly. Pushing you to the dirty ground, she rolls you onto your side, raising one of your legs and folds it across her side. With your cunt[sfn] thus exposed to her drooling prick, she gives a happy bark before thrusting into you. Your [cunt size desc of Player] cunt quivers and trembles as that oddly textured shaft of hers sends shocks of delight through you as each bump rubs past your clenching lips. And when she pulls back to make another thrust, those soft barbs of hers brush across your inner walls.";
			say "     As you lose yourself in the pleasure of the dog-creature's cock pounding away at you, she relaxes her hold on you. Her freed hands soon make their way to her chest, rubbing her plump breasts and teasing her perky nipples. Pinching and pulling on them soon has milk spurting from them to rain down upon your [bodytype of Player] body. The feel and scent of this only excites you further, making you imagine having some pups of your own soon nursing from you. You groan loudly and your cunt clenches down around the canine mutant's cock as you climax. While your clenching cunt does make it harder for her knot to get into you, she's up to the task like the breeder-stud she is, pounding you all the harder through your orgasm until she's tied with you. Once locked tightly together, she growls and unleashes her hot semen, flooding your womb with her sperm.[impregchance]";
			say "     Feeling delightfully full of the dog woman's semen, you lay back and bask in the hazy afterglow, rubbing your [if scalevalue of Player > 4]rounded [end if]belly. Putting a hand on yours, she smiles, clearly imagining you swelling even further with a litter of pups. Losing yourself to such dreams, you awaken some time later to find her gone, with only the sticky mess leaking from your gaping cunny [if Player is not impreg_able]and that pleasant warmth in your belly [end if]to show for your encounter.";
	else if Player is mpreg_able:
		say "     [if Player is male]The herm creature's eyes go to your cock as she pushes you to the ground, but then nose twitches. 'Oh ho! You look male, but I'd know a breeder anywhere,' she says with a lustful smile. Rolling you over, she raises your ass in the air and grinds her cock between your cheeks[else]After pushing you to the ground, the herm creature momentarily paws at your bare crotch, a little disappointed that there's neither male nor female genitals to enjoy. But then her nose twitches as a new look of excitement crosses her face. 'Aren't you a [one of]special treat[or]strange surprise[or]unusual lover[or]odd plaything[at random]? You look like you're no fun, but I'd know a breeder anywhere,' she says with a lustful smile. She then pushes you to the ground and onto all fours, raising your ass in the air so she can grind her cock between your cheeks[end if]. 'I'm going to knock up that sexy breeder ass of yours and fill you with my pups,' she whispers at you as she spreads your back door open with her strangely formed shaft. Sharp pangs of pleasure run through you as each bump penetrates your tight anal ring and the barbs that cover it pluck and pull along your inner walls as she draws back, just to slam home again.";
		say "     [if Player is male]Reaching around, she takes a hold of your cock and strokes it, mumbling about how nice it'd be to ride it, but how you need a proper breeding first[else]Reaching around, she rubs a finger across your bare crotch, mumbling about how a breeder like you really needs something more there[end if]. She pounds away at you with considerable zeal, panting with excitement as her milk-laden breasts rub and slap against your back. You can feel trickles of her milk run around your sides. And then, with a final deep thrust, liquid heat pours into you as she growls and drives her thick knot into you, sealing herself inside your ass. That swollen knot keeps all her virile seed locked inside your ass, filling your belly with its warmth even as it seeks to quench the heat of your hidden womb.[mimpregchance]";
		say "     You're left locked with her for a while. She pants and licks at your neck and ears while gently grinding herself against you, spilling more of her milk across your body. Your thoughts are a pleasant blur, simply enjoying the feel of her delightful manhood and her potent seed locked inside you. When the haze lifts and you start to recover your senses, she has departed, leaving you with her sticky seed on your thighs to remind you of her.";
	else:
		if Player is not male:
			say "     Chirping triumphantly, the ember breeder grabs you and pulls you tight to her chest. Smiling, blissful in her lusty haze, the ember breeder quickly forces a nipple into your mouth and squeezes hard on her own tit. Sweet, rich cream explodes from the abused nipple, a constant stream that forces you to swallow or be drowned. Smiling, the ember breeder slowly strokes across your back, planting small, butterfly kisses across your brow until the flow tapers to a halt. Satisfied, the herm gently strokes your distended tummy until you fall asleep, giving a soft kiss goodnight before departing.";
		else:
			if a random chance of 1 in 2 succeeds:
				say "     The ember breeder lowers you gently to the ground and quickly removes your clothing. She very demurely crawls between your legs and licks your [cock size desc of Player] dick until it's standing up straight in her delicate grip. Her swollen tits drip milk on your skin as she slides back up your body and lines her dripping slit up with your rigid member and quickly impales herself on you. Your shaft slips completely into her with no resistance and she chirps in pleasure and begins to fuck you with reckless abandon. You feel her juices dripping down your thighs and pooling in between your legs while her pre-cum splatters your chest as her cock bounces up and down. Her hips begin to slam into you hard enough to make you ache, but your own orgasm is close as she shows no sign of stopping herself. You try to hold back, but she suddenly clamps down on your cock as both of her sexual organs orgasm together; her cock shoots cum all over your chest and face, leaving almost no inch clear of the sticky fluids. The clenching of her tunnel around your shaft is more than you can take as your cock unloads into her, splattering your seed against her walls and into her womb. She leans down and kisses you as her orgasm subsides before getting up and walking shakily away, leaving you lying in a state of bliss on the ground.";
			else:
				say "     [if HP of Player > 0]Giving in and letting her do as she well, you submit to her lustful advances[else]Stumbling to the ground after that last blow, you're unable to resist[end if] when she eagerly clambers atop you, paw going quickly to your groin to grope your [Cock of Player] manhood until its [Cock Length of Player]-inch spire is hard and waiting for her to climb upon. Grabbing your head, she presses it between her milk-laden breasts as she lowers herself down onto your cock with a moaning bark of pleasure. Her milk drips down onto you and your head turns to one of her nipples so you might suckle from it.";
				say "She rides you eagerly, panting and barking at times whenever she gets particularly worked up. Her cock throbs and twitches, spurting precum onto your [bodydesc of Player] chest at these times. She takes her time for a while, enjoying having found a mate to breed her and intends to savor it for a while. Lost in a lustful, milk-induced haze, you suckle happily and let her do as she pleases. You lose track of time, but it feels like about a half hour before she will wait no longer and rides you hard and fast, driving you both to powerful, messy climaxes that leave you sticky with semen and juices by the time you're done unloading your [Cum Load Size of Player] load into her needy womb and she's painted the front of you in her cum in return. Reeking of sex by the time she's done and leaves you, you lay there in a state of sexual bliss for a while to recover your senses.";


to say beattheemberbreeder:
	say "     The ember breeder moans with need, staggering as she tries in vain to continue the struggle. Torn between her lusts and exhaustion, her paws roam all over her body, playing with her breasts, cock and pussy as she stumbles to her knees. ";
	if Player is male:
		let diceroll be a random number between 40 and 125;
		if CockName of Player is listed in infections of Caninelist and diceroll < Libido of Player:
			say "Something about her needy display arouses you and you feel an uncontrollable urge to mate with this strange beast welling up in your canine loins. Before you can suppress it, you push her down onto all fours. She releases a series of pleasured chirps at this and raises her ass, offering up her juicy pussy. You drive your [cock size desc of Player] cock into her easily, making the vaguely canine creature squirm in delight";
			if embervicsex is odd:
				say "[emberbreedersex01]";
			else:
				say "[emberbreedersex02]";
			increase embervicsex by 1;
		else:
			say "Something about her needy display arouses you and you feel a growing urge to mate with this strange beast. Shall you give in to this desire?";
			if Player consents:
				say "     Rather than resist this urge, you give in to your lustful desire and approach the horny herm breeder. You push her down onto all fours and she releases a series of pleasured chirps, raising her ass in the air. You drive your [cock size desc of Player] cock into her easily, making the vaguely canine creature squirm in delight";
				if embervicsex is odd:
					say "[emberbreedersex01]";
				else:
					say "[emberbreedersex02]";
				increase embervicsex by 1;
			else:
				say "     Resisting the temptation, you take a few steps back to distance yourself from the whining herm's needy display. She gropes herself briefly, then her paws drop to her sides, too weak to continue. With a sad look in her eyes, she falls to the ground and slips unconscious, milk still leaking steadily from her swollen tits.";
	else:
		say "She gropes herself briefly, then her paws drop to her sides, too weak to continue. With a sad look in her eyes, she falls to the ground and slips unconscious, milk still leaking steadily from her swollen tits.";


to say emberbreedersex01:
	if Cock Length of Player > 18:
		say ". Her pussy stretches open to accommodate your massive shaft, bulging at the belly to fit you in. She brings a paw to the bulge, rubbing over it with happy chirps, glad to be taken by such a virile and well-hung male";
	say ". You bring your hands to her breasts, squeezing them, causing large spurts of milk to shoot from her nipples onto the ground. You work at milking her the whole time you breed her, soaking the tunnel floor in a growing puddle of breast milk.";
	say "     When you feel your orgasm about to arrive, you drive yourself fully into her, pushing your cock into her accommodating womb and releasing your thick seed to breed her. She moans in delight, clamping down firmly on your cock and milking it for all you'll give[if Ball Size of Player > 5]. Your large balls drain into her, making her belly swell with your semen, almost certain to impregnate the needy, breeding bitch[end if]. Her penis twitches and her balls pull up, spraying her own seed into the puddle of her milk, adding to the messy white stain. When you withdraw your cock, the breeding slut passes out in the puddle of her own fluids with a dazed expression of happiness on her muzzled face.";

to say emberbreedersex02:
	if Cock Length of Player > 18:
		say ", Your [cock size desc of Player] shaft stretches her pussy open with ease, her breeder body readily adjusting to accommodate you. She rubs a paw over the bulge you make in her belly with happy chirps, pleased to have such a virile and well-hung stud atop her";
	say ". You briefly manhandle her leaking breasts, drawing spurts of her milk before moving to her hips to grab them so you can fuck her all the harder.";
	say "     You drive your [Cock of Player] cock into her needy pussy over and over again, losing yourself in the lustful breeding. And no matter how rough you get, the horny herm only chirps and pants in her need for more, her body longing for your seed. You give her plump bottom a few slaps which cause her cunt to squeeze down around you with each blow. After a short set of these, you're ready to blow in a different manner and drive yourself fully into her, pushing your cock into her accommodating womb and unleashing your [Cum Load Size of Player] load. She moans in delight and her vagina clamps down firmly on your cock, milking it for all you'll give[if Ball Size of Player > 5]. Your large balls drain into her, making her belly swell with your semen, almost certain to impregnate the needy, breeding bitch[end if]. Her penis twitches and her balls pull up, spraying her own seed onto the ground beneath her. When you withdraw your cock, the breeding slut passes out in the puddle of her own fluids with a dazed expression of happiness on her muzzled face.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Ember Breeder" to infections of CanineList;
	add "Ember Breeder" to infections of ReptileList;
	add "Ember Breeder" to infections of FurryList;
	add "Ember Breeder" to infections of MagicalList;
	add "Ember Breeder" to infections of HermList;
	add "Ember Breeder" to infections of BarbedCockList;
	add "Ember Breeder" to infections of KnottedCockList;
	add "Ember Breeder" to infections of SheathedCockList;
	add "Ember Breeder" to infections of BipedalList;
	add "Ember Breeder" to infections of TailList;
	add "Ember Breeder" to infections of OviImpregnatorList;
	now Name entry is "Ember Breeder"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The ember breeder [one of]grabs at you with her small claws, trying to pull you against her chest[or]grinds her cock firmly against you[or]wraps her claws around a tit and squeezes hard, letting the warm milk splash against your body[or]manages to get a hold of you and pulls you against one of her nipples. She forces your mouth against it and squeezes hard, milk pouring down your throat[at random].";
	now defeated entry is "[beattheemberbreeder]"; [Text or say command used when Monster is defeated.]
	now victory entry is "[losttoemberbreeder]";
	now desc entry is "[emberbreederdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "an obviously canine head, with long floppy ears"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "deliciously curvy and exposes the tender lip of a pouch. Any breasts present are swollen, dribbling milk upon the floor at a slow, yet constant rate. Your arms are thick, with diminutive claws that yearn to hold and cuddle. Your legs are digitigrade, shapely, and defined with excellent muscular tone. Your feet are exceptionally large paws with long toes"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "smooth, tender, yearning"; [ skin Description, format as "Your body is covered in (your text) skin."]
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
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 6; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 75; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "libido pill";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]curvy[or]motherly[or]twisted[as decreasingly likely outcomes]";
	now type entry is "[one of]canine[or]mutant[or]dog-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ember Breeder Infection"	"Infection"	""	Ember Breeder Infection rule	1000	false

This is the Ember Breeder Infection rule:
	if Player has a body of "Ember Breeder":
		trigger ending "Ember Breeder Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Unable to hold out any longer, the infection affects your mind enough that you succumb to your new instincts and head off into the city in search of sexual satisfaction. You wander directionless through the wild city until you are found by ";
			let T be a random number between 1 and 3;
			if Player is female and "They Have Your Eyes" is not listed in feats of Player and "Sterile" is not listed in feats of Player:
				if T is 1:
					say "a pack of horny wolves who capture you. You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members. Much to your delight, your womb grows quite full with their young. These pups gestate quickly and are pure wolves like their fathers. You are bred again and again, birthing numerous wolves to add to the growing pack's strength.";
				if T is 2:
					say "a small colony of ocelots who capture you. You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy. Much to your delight, your womb grows quite full with their young. These kittens gestate quickly and are pure ocelots like their fathers. You are bred again and again, birthing numerous kittens to add to the growing colony's strength.";
				if T is 3:
					say "a herd of cattle who capture you. You are mounted and fucked repeatedly by the bulls while fed milk from the cows. Much to your delight, your womb grows quite full with their young. These calves gestate quickly and are fully bovine like their fathers. You are bred again and again, birthing numerous calves to add to the growing herd's strength.";
			else if Player is female and "Sterile" is not listed in feats of Player:		[F/H Breeder]
				if T is 1:
					say "a pack of horny wolves who capture you. You are mounted and fucked repeatedly by the whole pack, often used as a reward for the lower pack members. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are bred repeatedly, used by the younger members of the pack to practice on before mounting real bitches to breed more wolves into the pack.";
				if T is 2:
					say "a small colony of ocelots who capture you. You are mounted and fucked repeatedly by the whole colony, used as everyone's fucktoy. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are kept as a small harem, used as a reward for the members of the colony.";
				if T is 3:
					say "a herd of cattle who capture you. You are mounted and fucked repeatedly by the bulls while fed milk from the cows. Much to your delight, your womb grows quite full with their young. Your children gestate slowly and are pure copies of yourself. You and your children are bred repeatedly, used as surrogate milkers for the herd to free the heifers to be bred more often by the bulls.";
			else if Player is male:		[M Breeder / H non-breedable]
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
			if Player is female and "They Have Your Eyes" is not listed in feats of Player and "Sterile" is not listed in feats of Player:			[F/H True Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs[if Player is male] with your dual-gendered body[end if]. Only a few weeks after your release, you give birth to a pure strain child for one of your partners[if Player is male] and a variety of females you slept with all give birth to pure children of their strain too[end if].";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your partner's strain, making you a desirable lover for those infected by uncommon strains. If they can't find a matching lover, you are available for them to breed[if Player is male]. Some mismatched couples even come to you to breed with them both, siring children in the female and bearing other children for the male[end if]. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can.";
			else if Player is female and player is male and "Sterile" is not listed in feats of Player:		[H Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your dual-gendered body. Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover. You get pregnant as well, but this child gestates very slowly and is pure copy of yourself when born.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains. If they can't find a matching lover, you are available for them to breed. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can. As your own children grow up, they take up the business as well, helping many struggling strains breed their next generation.";
			else if Player is purefemale and "Sterile" is not listed in feats of Player:		[F Breeder]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs with your lustful body. You get pregnant during this time, but this child gestates very slowly and is pure copy of yourself when born. The feeling of being pregnant and nursing your child is quite satisfying and you eagerly seek to be bred as often as you can so you can enjoy it continuously. You breed a large family with your many lovers, offering yourself to any male as soon as you feel yourself ready to become pregnant again.";
			else if Player is male:		[M Breeder or H non-breedable]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs. Only a few weeks after your release, several of your female lovers give birth to pure children of their strain after being your lover.";
				say "     With this, word starts to get around about your fertility and how you'll breed true to your female partner's strain, making you a desirable lover for those women infected by uncommon strains. If they can't find a matching lover, you are available for them to breed. You become quite popular for this [']maternity assistance service['] and make a good living essentially off of having sex with as wide a variety of people as you can[if Player is female]. While you cannot give birth yourself, seeing all the young you sire fills you with pride[end if].";
			else if Player is female:		[F non-breedable]
				say "     You are directionless after your release, though you don't let it get you down. You become quite amorous with numerous transformed people, satiating your sexual desires and theirs. You continue like this for quite some time, eventually drifting to join a brothel for the infected, satisfying your need for lustful sex while making money while doing so. Unable to get pregnant, you always feel a longing in you that can only be briefly satisfied through sex. This makes you an enthusiastic slut for your clients, ensuring that they are fully satisfied after a visit with you.";

Ember Breeder ends here.
