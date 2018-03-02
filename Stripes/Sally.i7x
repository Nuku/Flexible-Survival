Version 1 of Sally by Stripes begins here.
"Adds Dr Matt's Huskybunny slut form, now named Sally, to the Flexible Survival game"

Section 1 - Sally the Huskybunny

Sally is a woman.
The description of Sally is "[sallydesc]".
The conversation of Sally is { "Fuck me!" }.
lastSallyfucked is a number that varies. lastSallyfucked is normally 555.
the icon of Sally is figure of Sally_icon.

the scent of Sally is "The cute, little huskybunny herm smells of arousal and sex.".

to say sallydesc:
	say "     This creature, once the intellectual Dr Matt, is now nothing more than a horny slut and your personal toy. The mouse's injection has left him a mindless, lustful creature eager for sex. Sally, as you've decided to call her, is a cute and sexy huskybunny herm with no desires greater than satisfying her physical desires and yours. The slutty hybrid has fluffy fur with husky markings and tail, but a bunny muzzle and ears. Her body is something between the two, a sensual mix of canine and lapine, with lovely curves and big, rabbit footpaws. As a herm, she has six large, perky breasts, with the upper pair being above-average in size and shrinking slightly for the subsequent two rows. Her nine inch cock is almost constantly hard and both it and her wet pussy dribble with arousal.";

Instead of conversing the Sally:
	say "     [one of]The slutty huskybunny is running her paws over her body, as if rediscovering again how good it feels to touch her transformed body[or]The horny slut moans and fingers her pussy as she writhes in pleasure on the bed[or]The hybrid creature is taking a rare nap to recover after her almost constant, lustful escapades[or]The horny huskybunny strokes and pumps at her cock until she spurts streams of cum all over herself.[or]As you ask her how she's doing, the huskybunny slut gives you a vacant smile and wriggles in her seat, leaking juices onto the bunk[or]The huskybunny pinches and teases her nipples, moaning softly as milk leaks from them[or]You watch her for a bit as she bends her flexible body and starts licking her cock and pussy clean, slathering her long, canine tongue over them[at random].";

Section 2 - Sexxxings

the fuckscene of Sally is "[sexwithSally]".

to say sexwithSally:
	if lastSallyfucked - turns < 6:
		say "     You consider playing with Sally again, but you did so fairly recently. While tempting, you decide to wait, wanting to draw out your enjoyment of your slut's new form.";
	else:
		now lastSallyfucked is turns;
		say "     Sally, hearing you step up, stops what she was doing and dashes towards you. She whines softly and tugs at her leash, looking at you longingly. When you smile down at her, she bounds around happily on all fours, knowing what's coming and needing it badly. She hops back onto her bunk and rolls over, panting like a dog as she whines again, displaying her hybrid herm body that is available for your enjoyment. The air around the bunk is saturated in the scent of her arousal and her male and female cum, exciting you greatly. ";
		if cocks of player > 0:
			say "     As your needy fucktoy is a herm, how would you like to enjoy your puppy-bun pet?";
			say "     [bold type]  Do you feel like enjoying her pussy or her cock this time?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Her cock.";
			say "     ([link]N[as]n[end link]) - Her pussy.";
			if the player consents:
				say "[sallycock]";
			else:
				say "[sallypussy]";
		else:
			say "[sallycock]";

to say sallycock:
	say "     Deciding, you want go at the huskybunny's cock, you straddle her on the bed and rub your hips down onto her throbbing meat. She moans and yips softly, grinding up against you, looking at you with mindless adoration. You reach back and fondle her balls before taking a hold of her cock and lining it up. Once in position, you rub your [if cunts of player > 0]wet pussy against her glans[else]tight pucker against her glans, letting her pre act as lube[end if] before easing down. You moan in pleasure as you feel that canine cock sinking into you.";
	WaitLineBreak;
	say "     Now that her transformation is complete and she's fully adapted to be your perfect fucktoy. Somehow sensing what you want most out of any session, her cock shifts and alters its size and shape to best satisfy your lustful desires at any given time. ";
	increase lust of Sally by 1;
	if lust of Sally > 5, decrease lust of Sally by 5;
	if lust of Sally is 1:				[big human]
		say "     As you ride her shaft, you can feel it changing inside you. It swells and grows, taking on a more human form, but wonderfully huge and filling, stretching your insides tightly and filling you with pleasure. You ride her swollen meat, finding it just the right size to overstuff you just enough to be wonderfully stimulating, panting and moaning against the strain of containing it. You savour the delight of having such a big cock in you; it is just what your body craves right now. When she finally cums, her seed blasts deep inside you, sending shivers through your body as you orgasm as well. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master.[sallyimpreg]";
		say "     After a long wait for her throbbing shaft to return to normal, you ease yourself off her and scritch her long, bunny ears. She smiles at this, long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her cock clean.";
	else if lust of Sally is 2:		[long equine]
		say "     As you ride her shaft, you can feel it growing long and slender. Its tip flares and a medial ring forms as it takes on an equine form. To better take this long cock, you move onto all fours and let her mount you, which she does happily. Her horsecock dives into your slick, stretched hole and pounds away at you. You moan and groan in pleasure as it pushes deep inside you as she fucks you like a stallion, just what your body is aching for. When she finally cums, her seed blasts deep inside you, sending shivers through your body as you orgasm as well. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master.[sallyimpreg]";
		say "     After a long wait for her throbbing shaft to return to normal, she eases off of you and you scritch her long, bunny ears. She smiles at this, long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her cock clean.";
	else if lust of Sally is 3:		[knotted canine]
		say "     As you ride her shaft, you can feel it swelling at the base as it starts to shift to fit your slick hole perfectly. It alters itself, becoming a perfectly sized canine cock for your [if cunts of player > 0]pussy[else]bottom[end if], just right for stuffing and tying with you. To better enjoy that this knot, you move onto all fours and let her mount you doggy-style, which she happily does. Her dog cock dives into your slick, stretched [if cunts of player > 0]pussy[else]asshole[end if] and pounds away at you. You moan and grown in pleasure as that knot pops in and out of you repeatedly, getting ready to tie with you like a bitch in heat, just what your body is aching for. When she finally cums, her seed blasts inside you, sending shivers through your body as you orgasm as well. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master.[sallyimpreg]";
		say "     After a long wait for her throbbing shaft to return to normal and her knot releases you, she eases off of you and you scritch her long, bunny ears. She smiles at this, long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her cock clean.";
	else if lust of Sally is 4:		[barbed feline]
		say "     As you ride her shaft, you can feel it changing shape, becoming thick and growing stimulating barbs. It alters itself, becoming a chubby, feline cock, a little wide for your hole to spread it wide and leaving it vulnerable to those stimulating bumps. Your body quivers in delight at this sensation and you ride her meat eagerly, loving how this is just what you needed. The shivers of those along your stretched, sensitive [if cunts of player > 0]vaginal[else]anal[end if] walls make you moan and groan in pleasure. When she finally cums, her seed blasts inside you, sending shivers through your body as you orgasm as well. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master.[sallyimpreg]";
		say "     After a long wait for her throbbing shaft to return to normal, you ease yourself off her and scritch her long, bunny ears. She smiles at this, long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her cock clean.";
	else if lust of Sally is 5:		[big-balled dragon]
		say "     As you ride her shaft, you can feel it changing shaft, gaining stimulating ridges and a curved shape with a pointed glans. It alters its size and length to fit you perfectly, prodding that spaded tip against your [if cunts of player > 0]cervix[else]prostate[end if] to make you moan loudly. Her balls swell and swell, becoming the size of cantaloupes. Your body quivers in delight at the prospect of having this draconic cock pump you full of her hot seed, just what you desire right now. The ridges of her cock rub against all your sensitive spots as you ride that cock. When she finally cums, her spaded tip [if cunts of player > 0]pushes past your cervix and into your womb, allowing her to blast her ample semen deep inside[else]presses firmly at your prostate, allowing you to feel each and every powerful blast as those large balls drain themselves into your rump[end if], causing you to orgasm as well. You quiver in delight as her voluminous load makes your tummy swell before finally stopping, leaving you deliciously fully and sloshing with huskybunny cum. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master and seeded [if cunts of player > 0]her[else]him[end if] so well.[sallyimpreg][sallyimpreg]";
		say "     After a long wait for her throbbing shaft to return to normal, you ease yourself off her and clench down to keep as much of her load inside you. You scritch her long, bunny ears and she smiles with her long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her cock clean.";
	decrease humanity of player by a random number between 0 and 2;
	now libido of player is ( ( libido of player + 1 ) * 2 ) / 3;
	increase morale of player by 2;

to say sallypussy:
	if a random chance of 1 in 2 succeeds:
		say "     Climbing onto Sally's bunk, you kneel between your huskybunny's legs and grab her ankles. Spreading her legs and raising her ass like this, you get your cock lined up with her dripping pussy and sink into her. She moans and yips in delight as you start fucking her. Her pussy quiver and squeezes around your cock perfectly, providing delicious stimulation to your throbbing member. Her canine shaft throbs and dribbles pre down her tummy, soaking her soft, fluffy fur.";
		WaitLineBreak;
		say "     Her body, now that her transformation is complete into a slutty fucktoy, is responsive to your needs and adapts to your desires. You can feel her cunt changing around you, becoming just the right size to satisfy you, becoming [one of]loose for a fast fucking that makes her boobs quiver on her chest[or]a sensual, perfect fit that feels just right around your cock[or]tight and snug, making for a slow, tight fuck that feels so good around your needy cock[in random order].";
		WaitLineBreak;
		say "     You pound away at her, enjoying a nice, long lovemaking session. She hooks her legs around you, freeing up your hands to roam over her sexy body. Your fingers tease her all over, having so many sensitive spots and such delightful responses to your touches. Dr Mouse indeed did a fine job with her infection, making her into one of the best fucks you've ever had. You finally drive hard into her and unleash your hot seed, pushing your glans past her cervix and into eager womb. Her vaginal walls squeeze and tug at your spurting member, milking you to get as much as she can. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master and at having been seeded with his cum.";
		WaitLineBreak;
		say "     After a long wait for your afterglow to pass and for your cock to start to soften, you slip out of her with a wet pop. Her pussy clamps down automatically, wanting to keep all your seed inside. You scritch her long, bunny ears and she smiles with her long tongue hanging from her muzzle as she pants happily. As you walk off, she leans over and starts licking her sticky cunt clean.";
		decrease humanity of player by a random number between 0 and 2;
		now libido of player is ( ( libido of player + 1 ) * 2 ) / 3;
		increase morale of player by 2;
	else:
		say "     Climbing onto Sally's bunk, you roll her over onto all fours. She responds immediately by raising her tail and yipping eagerly, wagging excitedly as she offers up her dripping pussy to you. You grin at the sight and grab that sexy ass of hers, pulling her onto your shaft. She moans and yips in delight as you start fucking her. Her pussy quiver and squeezes around your cock perfectly, providing delicious stimulation to your throbbing member. Her canine shaft throbs and dribbles pre onto the cum-stained mattress.";
		WaitLineBreak;
		say "     Her body, now that her transformation is complete into a slutty fucktoy, is responsive to your needs and adapts to your desires. You can feel her cunt changing around you, becoming just the right size to satisfy you, becoming [one of]loose for a rough pounding that makes the bunk rock noisily and the huskybunny moan and yip loudly in delight[or]a sensual, perfect fit that feels just right around your cock that has her panting and moaning in ecstasy[or]tight and snug, making for a slow, tight fuck that feels so good around your needy cock. You hold her pinned down, enjoying the whimpers of pleasure coming from her needy body[in random order]. You can tell that your slutty pet's enjoying every moment as well.";
		WaitLineBreak;
		say "     You pound away at her, enjoying a nice, long session of fucking her. She keeps her large, bunny feet firmly planted and pushes back into every thrust you make. You let your hands to roam over her sexy body. Your fingers tease her all over, having so many sensitive spots and such delightful responses to your touches. Dr Mouse indeed did a fine job with her infection, making her into one of the best fucks you've ever had. Grabbing her breasts and teasing her nipples, you nibble along her bunny ears as you drive hard her into her. A few final thrusts send you over the edge and you unleash your hot seed, pushing your glans past her cervix and into eager womb. Her vaginal walls squeeze and tug at your spurting member, milking you to get as much as she can. She yips and barks excitedly, husky tail wagging frantically, happy to have pleased her master and at having been seeded with his cum.";


to say sallyimpreg:
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "[impregchance]";
	if baby is 0 and gestation of child is not 0:
		now facename of child is "Huskybunny";
		now bodyname of child is "Huskybunny";
		now skinname of child is "Huskybunny";


Section 3 - Endings

when play ends:
	if HP of Doctor Matt is 104:						[Sally the slutpet]
		if humanity of player < 10:
			say "     Not long after you give in to your infection, Sally comes running up to you and snuggles up against you. You have trouble remembering quite who she is, but you both know that she belongs to you. Glancing at her leash, you can see that she chewed through it, probably worried that you've not come back for her. Wherever back was. But regardless, she is here with you now and is your special slutpet. Despite any changes you may go through or any creatures you may encounter, she remains a huskybunny plaything. She eagerly submits to any and all of your needs and is a lover and breedtoy for you and any lovers you may find in your new life.";
		else:
			say "     The military allows you to take Sally with you, mostly because they're too run off their feet to protest the situation or properly examine her. You are careful to keep her calm, constantly whispering to her and reminding her to be a good girl. You can see it takes her a lot of effort, but she manages to contain herself during the time at the military base. After your release, you make certain to reward her with a long, lustful session. ";
			if cocks of player > 0:
				say "     You pound into her long and hard, somehow able to give her a night of wild sex that doesn't end until the sun is coming up. A few months later, her tummy starts to show, becoming pregnant with the first of many litters of huskybunny herms. These creatures, like their mother, are lustful and obedient, making wonderful fucktoys. After some careful [']training['], these beautiful sexpets fetch a high price from rich buyers.";
			else if "Sterile" is not listed in feats of player:
				say "     She pounds you long and hard, filling you again and again with her pent-up seed until you can no longer contain any more and it just keeps pouring out, and keeps fucking even after that point. Your long, lustful night of wild sex doesn't end until the sun comes up. A few months later, your tummy starts to show, becoming pregnant with the first of many litters of huskybunny herms. These creatures, like their father, are lustful and obedient, making wonderful fucktoys. After some careful [']training['], these beautiful sexpets fetch a high price from rich buyers.";
			else:
				say "     She pounds you long and hard, filling you again and again with her pent-up seed until you can no longer contain any more and it just keeps pouring out, and keeps fucking even after that point. Your long, lustful night of wild sex doesn't end until the sun comes up. Being shared around often, you smile happily as her belly starts to swell with the first of many litters of huskybunny herms. These creatures, like their mother, are lustful and obedient, making wonderful fucktoys. After some careful [']training['], these beautiful sexpets fetch a high price from rich buyers.";
			say "     Sally is popular with many of your lovers, who enjoy using her nearly as much as you do. As she moans and yips in climax, you always have to grin as you watch what was once a brilliant scientist be nothing more than a wanton slut for you to share around as you see fit. She clearly loves her new life and shows no signs of ever remembering her past existence and you never mention her true identity to anyone, leaving it as your own little secret to enjoy.";

Sally ends here.
