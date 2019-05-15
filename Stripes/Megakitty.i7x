Version 1 of Megakitty by Stripes begins here.
[Version 1.0 - Unlocking 'Big Momma Megakitty']

"Adds a roaming boss-level Margay referred to as the 'Megakitty' and named 'Big Momma'."

MKunleashed is a truth state that varies. MKunleashed is usually false.
MKmet is a number that varies.		[# of encounters]
MKloss is a number that varies.		[# of Player losses]
MKwin is a number that varies.		[# of Player wins]
lastMKoutcome is a number that varies.

when play begins:
	add { "Megakitty" } to infections of furry;
	add { "Megakitty" } to infections of girl;
	add { "Megakitty" } to infections of felinelist;


Section 1 - Creature Responses

[ lastMKresult ]
[ 0 = not met  ]
[ 2 = lost     ]
[ 3 = won     ]
[ 100 = fled   ]

to say megakittydesc:
	setmongender 4; [creature is female]
	now margaydancecount is 0; [reset alt attack counter]
	if MKmet is 0:
		say "     'Ahhh... so you're the new kitten my girls have been talking about. Let's see what the commotion's all about, shall we?'";
		say "     Turning around rapidly upon hearing the deep, purring voice behind you, you are surprised by the largest Margay you've ever seen. More than two feet taller than the rest and all the wider for it, you're shocked that this mountainous feline female was able to sneak up on you. She chuckles and makes a show of stretching, showing off her Rubenesque form to her stunned prey.";
		say "     Seeing her stretch like that, you can't help but run your eyes over her huge body, rounded belly and extra-wide hips and ass. Over her plump belly are three rows of breasts, but much fuller than the other margays and plainly heavy with maternal milk. Her arms are strong and motherly with human-style hands featuring retractable claws. Her legs are plantigrade legs with plenty of jiggle and firmly toned muscles to support her bulk. Despite her size, she's got cute paw feet with dark pads to walk with a delicate touch when she wants to.";
		say "     Like the others, her rounded body's covered in a soft coat of golden fur speckled by leopard-like spots. The pattern changes on her head where it becomes a pair of stripes that run down the middle of her face, brushing past the eyes and passing both sides of the nose to stop at the end of said nose. The whole is decorated with cute little spots. Her head is a small feline head with large feline eyes and small pointed feline ears.";
		say "     Reaching between her thighs, she drives a meaty paw into her extra-wide cunt. With a moan, she pulls a massive, three foot long vibrator from herself. Unlike the others, she's got only that single pussy at her crotch, but it's all the larger for it. From the size of her and the stretchability of her kind, she'd clearly have no trouble stuffing any of the other big kitties (or you) into her dripping snatch. Still wet with her juices, she heaves up the vibrator like a rumbling club and stomps towards you, feeling no need to pussyfoot around any longer.";
	else:
		say "     You find your path blocked by the massive Megakitty. Called [']Big Momma['] by the others, she's a bigger version of the other margays you've seen, with more than two feet of additional height to her. The Rubenesque feline is covered in spotted and striped fur across the whole of her massively maternal body. Her hips are extra-wide and rounded, giving the big kitty an earthshaking booty beneath her thrashing tail.";
		say "     She gives a lustful mrowl and licks her muzzle as she eyes you. '[if lastMKoutcome is 100]I won't let you get away so easily this time[else if lastMKoutcome is 3]Don't fight it. You'll be plump kitten in my belly sooner or later. You'll wear down and give in eventually - they always do[else if lastMKoutcome is 2]Don't fight it, kitten. It's time to go back where you belong[end if],' she purrs as she fingers her juicy snatch, withdrawing her massive sextoy from it to make room for you. With lust in her eyes, she stomps towards you, intent on adding you to her family, regardless of how you may feel.";
	increase MKmet by 1;
	now lastMKoutcome is 100;


to say losetomegakitty:
	increase MKloss by 1;
	if HP of Player > 0:
		say "     Giving up, you are grabbed by the massive feline and smooshed against her chest. 'See. You'll see it's much better when you listen to your Big Momma like a good kitten,' she purrs. ";
	else:
		say "     Crumpling under the assault of the massive feline, you are left weak and panting on the ground. 'See. There is no point in fighting with your Big Momma. And now it's time for you to be punished for being such a troublesome kitten,' she rumbles, grabbing you in her strong paws. ";
	if the remainder after dividing MKloss by 3 is 0 and anallevel > 1:
		say "Pressing your face to her super-sized pussy, she mrowls and grinds against you until you start licking at it. Setting aside her giant sextoy for a moment, she grabs you by both shoulders and drives your head forcibly right between her juicy petals. Her spacious cunny grips around you and starts tugging you further in [if HP of Player > 0]once again[else]despite your feeble attempts to resist[end if].";
		say "     With you secured and being pulled steadily deeper into her, she moves her paws to your ass and grabs it. Kneading your rear, she pops your shoulders in with a moan that sends quivers through her rippling vagina[if MKloss is 3]. You then feel something big and slick at your rump. For a moment you think it's her fist, but then realize it's the massive vibrator. You try to pull away, but her hold on your ass is too tight[else]. When you feel her massive vibrator at your ass again, you bite your lip and whimper, but are unable to do anything more than wait for it[end if]. With one paw gripping your backside tightly, she holds the huge toy against your [if the player is twistcapped]stretchable[else]tight[end if] hole, letting the pussy juices on it drool slowly onto your soon-to-be compromised pucker.";
		say "     She turns the vibration down low, letting its soft rumble [if the player is twistcapped]prompt your capacious hole to start relaxing in preparation[else]coax your inadequate hole relaxing a little[end if]. When another quiver of her pussy around you makes her moan, she decides she's tired of waiting and drives the vibrator into you, stretching your asshole [if the player is twistcapped]delightfully[else]painfully[end if] wide. Shivers of aching joy run through you as she turns up the power on the sextoy even as she forces more and more of it into you[if scalevalue of Player < 3]. It's so big inside you that it feels like you're being stretched around it[end if].";
		say "     With all your attention locked on that massive intruder, you barely notice that you're also being forced deeper and deeper into her hot cunny. The rumbling inside your bowels[if Player is male] and against your prostate[end if] [if Player is not neuter]grinds your loins against her vaginal walls, easily driving you to a sticky orgasm[else]grinds your body against her vaginal walls[end if]. Even as you're slipping into her womb, she cranks the vibrator up to full power, shaking you into mind-numbing bliss. The powerful motion also helps to slip you off the toy as you're drawn quickly into her uterus. When you pop off the rumbling dildo, her cervix seals up between you and it, leaving you trapped in your new mother's womb. The soft rumble of the sextoy, much like her feline purring, comforts you, lulling you into slumber. Curling up in a fetal position, an umbilical cord forms to connect you to her.";
	else if MKloss is odd:
		say "You are pushed so your face is wedged between her thighs and pressed right up to her sopping pussy. The scent of it is strong and alluring and you start licking at it. As you do, she places the femcum-slick sextoy into position in front of you.";
		say "     Gripping your head with one paw and giant vibrator with the other, she starts lowering herself down. Her rippling cunny is pushed down over your head even as her tailhole is spread around the vibrator[if HP of Player <= 0]. Despite your attempts to resist, you are inexorably drawn into her[end if]. You can feel its rumbling across the thin walls of soft flesh between the two quivering tunnels. The Megakitty mrowls in pleasure and continues to lower herself down, forcing both her playthings into her needy holes as they stretch easily to accommodate them.";
		say "     Once she's got you stuffed inside her to your hips, she raises herself back up. This is mostly so she can start riding up and down on the vibrator in her ass. Addled by the warmth, scent, taste and feel of her all around you, you lose yourself in the pleasure of her clenching cunt rippling all around you as that vibrating toy slides in and out alongside you. After taking her good, sweet time to enjoy this, she resumes feeding you into her needy cunt by popping your hips past her wet folds[if Player is not neuter]. With the massive dildo rumbling against your crotch, you moan in climax, adding your sexual release to the wet juices lubricating your passage[end if]. After that, it's an easy matter of slurping up your legs and depositing you in the warm embrace of her womb. There you drift off into a blissful slumber, your dreams filled with loving thoughts of your feline mother.";
	else:
		say "Pressing the still femcum-covered sextoy against your chest, she presses its smooth tip to your face and orders you to start licking it[if HP of Player > 0]. Having submitted to the big kitty, you do as you are instructed and start licking at the toy. The taste of her juices is quite arousing and soon you're going at it with a lustful eagerness[else]. Rather than raise her ire further, you relent and start licking at the toy. The taste of her juices is quite arousing and soon you're doing it quite voluntarily[end if].";
		say "     When you feel something warm and slick gripping your feet and sliding over them, it takes you a few moments to realize what's happening. With a wet slurp, your legs are drawn into her cunny up to your ankles and she continues to pull you in further[if HP of Player > 0]. Knowing this was your likely fate when you gave up, you see little point in resisting now. Besides,[else]. A part of you warns you to resist, but you're too weak and[end if] that delicious vibrator in your arms and at your lips is too enticing to release. The way it rumbles against your chest like a purring kitty makes you feel good all over.";
		say "     As she's engulfing your thighs, she pauses to pet and caress your head tenderly, purring about what a lovely, happy kitty you'll be. You only respond by purring and moaning, cuddling the rumbling dildo more tightly[if Player is not neuter]. She smiles down at you and adds a little extra pressure to the base of the sextoy, rubbing it firmly against your groin until you cum with a mrowl[end if]. The massive margay takes you by the waist and pulls you in, popping your hips past her juicy folds with an orgasmic cry of her own.";
		say "     With her clenching, pulling vagina drawing you ever deeper, soon you're forced to relinquish the vibrator so your chest can be pulled into her. Your arms are pressed to your sides and get drawn in with it. She does keep that delicious, rumbling sextoy pressed to your face though so you can continue to lick at it even as your head is drawn up into her cunt. The dildo follows right behind you into her snatch, helping to push you along on your way into her womb. It is only when your head slides past her cervix and that ring draws shut that you're cut off from it, though you can still feel its comforting rumbling just on the other side. You soon drift off, descending into a blissful slumber with dreams of plump, sexy kitties.";
	say "     When you come to, you're curled up [one of]in a large, open-topped box left in a secluded corner behind some rides[or]under a shut down ride[or]in the corner of a looted concession stand[or]on some torn costumes behind the carnival sideshow[at random]. And you feel different too, changed a little by your unusual experience. You stagger to your feet and leave the private spot where your feline mother left you to be safely hid until you awoke and soon find your way back to where you were.";
	if anallevel is 3 and MKloss is 9 and the player is not twistcapped:
		say "     Your ass feels strange and you reach back to rub it. Finding it even rounder than before, you slide a finger to your recently abused pucker. Rubbing it causes it to relax quickly and considerably, a stretchiness that lets you stuff your whole fist into yourself with a sense that you could easily take much more. It seems after so much abuse, your ass will never quite be the same again. You have gained the [bold type]Twisted Capacity[roman type] feat.";
		add "Twisted Capacity" to feats of Player;
	now lastMKoutcome is 2;
	infect "Margay";


to say beatthemegakitty:
	say "     The big feline hisses angrily as you continue to resist her. 'Fine! I've got plenty of other kitties to play with for now. But I'll be back for you later,' she adds as she backs off.";
	increase MKwin by 1;
	now lastMKoutcome is 3;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Megakitty"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The Megakitty[or]Big Momma[or]The margay[or]The huge margay[or]The massive feline[or]The Rubenesque hulk[or]The full-figured feline[at random] [one of]bashes you atop the head with her vibrator-turned-club, making your brains rattle[or]clubs you in the side with the massive sextoy[or]jabs you in the face with the base of her dripping club[or]slams her massive body into you, knocking you back[or]squeezes you against a wall with her heavy body[or]tosses her vibrator up, freeing her hands briefly to rapidly slash you with her painted claws[or]knees you in the gut before shoving you to the ground[or]slams into you and pushes you down, trying to smother you under her ample figure[or]pins to against something with the juicy vibrator. As she holds you there, her other paw gropes and fondles you roughly[in random order]!";
	now defeated entry is "[beatthemegakitty]";
	now victory entry is "[losetomegakitty]";
	now desc entry is "[megakittydesc]";
	now face entry is "a small feline head with large feline eyes and small pointed feline ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "quite large and VERY elastic in the belly, allowing you to move freely despite your size. Your body feels quite stretchable, and almost eager to take something large and filling inside you. Your arms are motherly feline arms with human-style hands featuring retractable claws. Your legs are plantigrade legs with plenty of jiggle and firmly toned muscles. They end with nearly human feet which have clawed toes and whose undersides consist of thick black skin pads";
	now skin entry is "a lovely, spotted patterned coat of fur over your";
	now tail entry is "You have very wide hips and a very full, plump behind. It's completed by a thick and leg-length feline tail covered in golden brown fur with black markings.";
	now cock entry is "barbed feline";
	now face change entry is "the infection hits your head, making your eyes grow bigger and your head a little smaller. Your ears turn triangular and move to the top of your head while your face grows a short muzzle like that of a wild jungle cat";
	now body change entry is "the infection seeps into you, flowing into your body. Your torso then starts growing bigger and taller, developing extra space that makes you feel like you could smuggle a washing machine in your belly. Your arms burn with an itchy fire as the infection spreads through them. Your hands crack and grow a little smaller while new claws take form in your fingers. The itchy fire hits your legs as the Margay infection takes hold in them, forcing your toes to grow claws and plumping them up with extra muscles to carry your increased weight, and even more for short periods of time";
	now skin change entry is "the Margay infection strikes your skin, soaking into it and making your entire body itch. Your body hair starts to grow in thicker and in heavier density thanks to new follicles growing in your skin. The new fur then shifts into gold and black patterns before your eyes";
	now ass change entry is "your hips immediately start to widen to fit a very large frame, gaining wide, birthing hips and a very plush bottom. Above this bootilicious behind, you grow a new tail that lengthens until it brushes the ground with its tip";
	now cock change entry is "its pulses with need, priming to explode in orgasm. There is a burning need growing in your loins, changing the way it looks. Your cock becomes more feline in shape and twitches with need. You can feel a growing need inside you as well, a longing to be filled, stuffed more full than you've ever been before";
	now str entry is 19;
	now dex entry is 17;
	now sta entry is 15;
	now per entry is 13;
	now int entry is 11;
	now cha entry is 15;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 98; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 40;
	now Cunt Tightness entry is 28;
	now libido entry is 90; [ Amount player Libido will go up if defeated ]
	now loot entry is "margay milk";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]tubby[or]fat[or]massive[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "margay"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Megakitty ends here.
