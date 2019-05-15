Version 2 of Naga by Nuku Valente begins here.
[Version 2.2 - Added vore and constriction player loss scenes. Re-added human warning loss w/enhancement and one-time limit. - Stripes]
[Originally commissioned by AsureaSkie.]

"Adds a Naga creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

nagawarning is a truth state that varies. nagawarning is usually false.
when play begins:
	add { "Naga" } to infections of guy;

to say NagaDesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     A creature consisting of human and snake blended together in an intimidating mixture slithers into sight ahead of you. It is a naga - a male one, judging from what you see as he raises his human-like upper body to have a good look at you in turn. He has [one of]brown and black[or]bright-red and yellow[or]gray and tan[at random] scales, fine and soft looking. Two muscular arms are his only limbs, if one discounts the great tail that makes up most of the male naga's long body. Clenched in his right hand is a pipe, a crude, but likely effective, makeshift weapon. Of course, he also has great jaws that likely contain sharp, possibly venomous, fangs. His human torso is well-muscled, sleek, and lacking any blemish. The naga's head and face are entirely that of a huge snake, staring unblinkingly and tasting the air with a flickering forked tongue. The moment of mutual examination ends as the naga hisses. 'SSsssubmit - or don't... it will sssatisfy me either way, prey.' With that, he rushes towards you, sliding over the ground quickly with sinuous twists of his snake-body.";

to say LoseToNaga:
	choose row MonsterID from the Table of Random Critters;
	let xx be vorelevel * vorelevel;
	if Player is purehuman and nagawarning is false:
		say "     Your opponent makes a dry hiss, almost as if he was laughing, as he moves over your defeated form, his tongue flicking. Grabbed roughly by the serpentine creature, your arm is twisted behind your back, and you are held tightly from behind. That forked tongue flicks across your cheek as he hisses in your ear. 'You ssshould leave thisss place, human. Your kind is finished in thisss city. Remember it - or you will be punissshed fresh.' He bares his fangs as an added warning before shoving you away, laughing as you stumble off."; [Keeping for thematic value]
		now nagawarning is true;
	else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 2 in 5 succeeds or (a random chance of 1 in 4 succeeds and anallevel is 3)):
		if Player is submissive:
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick, reptilian shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort. Being so fully in the power of another being arouses you to no end, making you gasp and moan at being used for his pleasure. The naga laughs at your eagerness to be taken and 'punished' by him as he uses his coils to keep your wriggling form under control while pounding eagerly at your [bodytype of Player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your bowels with thick gouts of snake seed. Meanwhile, the snake-creature's second cock sprays his load all over your back, leaving you wet and sticky. Satisfied, the naga rolls you off of himself to the ground and slithers away.[mimpregchance]";
		else:
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick, reptilian shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort. Your ass sends guilty pangs of pain and pleasure through you as the snake-man uses his coils to keep your wriggling form under control, pounding eagerly at your [bodytype of Player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your bowels with thick gouts of snake seed. Meanwhile, the snake-creature's second cock sprays his load all over your back, leaving you wet and sticky. Satisfied, the naga rolls you off of himself to the ground and slithers away.[mimpregchance]";
	else if Player is female and a random chance of 1 in 2 succeeds:
		if Player is submissive:
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick reptilian shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into[if Cunt Count of Player > 1] one of[end if] your cunt[sfn], lancing you on the thick tool and rocking without concern for your comfort. Being so fully in the power of another being arouses you to no end, making you gasp and moan at being used for his pleasure. The naga laughs at your eagerness to be taken and 'punished' by him as he uses his coils to keep your wriggling form under control while pounding eagerly at your [bodytype of Player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your womb with thick gouts of snake seed. Meanwhile, the snake-creature's second cock sprays his load all over your back, leaving you wet and sticky. Satisfied, the naga rolls you off of himself to the ground and slithers away.[impregchance]";
		else:
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick reptilian shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into[if Cunt Count of Player > 1] one of[end if] your cunt[sfn], lancing you on the thick tool and rocking without concern for your comfort. Your ass sends guilty pangs of pain and pleasure through you as the snake-man uses his coils to keep your wriggling form under control, pounding eagerly at your [bodytype of Player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your womb with thick gouts of snake seed. Meanwhile, the snake-creature's second cock sprays his load all over your back, leaving you wet and sticky. Satisfied, the naga rolls you off of himself to the ground and slithers away.[impregchance]";
	else if vorelevel is not 1 and a random chance of xx in 20 succeeds:
		say "     Your opponent makes a dry hiss, almost as if he was laughing, and winds himself tightly around your defeated form, divesting you of your gear and clothing. His serpentine tongue slithers across your cheek and grins with dark amusement. The male naga throws his coils about you in a warm, soft embrace. While initially the sliding of his scaly hide across your flesh is pleasant, his strong coils continue to tighten around you harder and harder. It becomes increasingly difficult to breathe, and you try to push free, but your [bodydesc of Player] body [if HP of Player > 0]can't get enough leverage[else]is too worn from the fight[end if] to fight against his powerful tail muscles. 'Look at you - nothing but weak prey. And prey,' he hisses in your ear, 'isss nothing but food.' You cry out at this and struggle all the harder, but that [if HP of Player > 0]sudden rush[else]final surge[end if] of adrenaline isn't enough to free you, and soon, your sore body is even weaker than before.";
		if Player is male:
			say "     Your cock[smn] throb[smv] painfully hard, engorged with the blood squeezed from your crushed body. Despite your perilous situation, the brush of the snake-man's scaly hide across your aroused loins is very pleasurable. You can also feel his twin serpentine cocks grinding against your thigh and leaking precum against it, the naga quite aroused at the prospect of consuming his prey. Your vision becomes increasingly blurry as the constriction continues, leaving you barely able to see the naga's head approach with his mouth stretched open. Your head is pressed into that wide, gaping maw, and you are engulfed in a hot, humid heat. Sticky saliva clings to your head and shoulders as you are slowly forced into the creature's throat. You squirm with your little remaining strength, but his esophagus squeezes you with strong muscles. The naga seems to chuckle at your struggles and rubs his hands along his throat. His reptilian cocks grind against you all the harder, and you feel a fresh splatter of precum, the monster clearly enjoying your feeble resistance.";
			say "     And through this, some part of you can't help but be aroused as well. The slick peristalsis of his serpentine throat steadily squeezing more of your body is strangely erotic. When the coils around your chest are unwound, your gasping breath draws in the humid and musky air of the naga's breath and gastric vapors, flooding your senses with them. And once your hips are pushed into his maw, you can't help but grind against the creature's palate and the walls of his throat in a struggle for a final sexual release. Your manhood[smn] throbs with need, pressed between your crotch and those wet, rippling walls, until finally you groan weakly and cum hard, draining your balls of their gooey seed. You land messily into the creature's stomach, still spurting the last few shots of your load across yourself. Between the humid heat and your post-orgasmic haze, your exhausted body finally passes out deep inside the monster's belly";
		else if Player is female:
			say "     Your cunt[sfn] pulse[sfv] with the pounding of your heart, flush with heat from the blood squeezed from your crushed body. Despite your perilous situation, the brush of the snake-man's scaly hide across your aroused loins is very pleasurable. You can also feel his twin serpentine cocks grinding against your thigh and leaking precum against it, the naga quite aroused at the prospect of consuming his prey. Your vision becomes increasingly blurry as the constriction continues, leaving you barely able to see the naga's head approach with his mouth stretched open. Your head is pressed into that wide, gaping maw, and you are engulfed in a hot, humid heat. Sticky saliva clings to your head and shoulders as you are slowly forced into the creature's throat. You squirm with your little remaining strength, but his esophagus squeezes you with strong muscles. The naga seems to chuckle at your struggles and rubs his hands along his throat. His reptilian cocks grind against you all the harder, and you feel a fresh splatter of precum, the monster clearly enjoying your feeble resistance.";
			say "     And through this, some part of you can't help but be aroused as well. The slick peristalsis of his serpentine throat steadily squeezing more of your body is strangely erotic. When the coils around your chest are unwound, your gasping breath draws in the humid and musky air of the naga's breath and gastric vapors, flooding your senses with them. And once your hips are pushed into his maw, you can't help but grind against the creature's palate and the walls of his throat in a struggle for a final sexual release. Your puss[yfn] quiver[sfv] with need, rubbing as best it can against those wet, rippling walls, until finally you groan weakly and cum hard, gushing femme juices. You land messily into the creature's stomach and stuff a freed hand into your clenching cunt to frig yourself through the remaining moments of your orgasm to wring every last bit of ecstasy you can. Between the humid heat and your post-orgasmic haze, your exhausted body finally passes out deep inside the monster's belly.";
		else:
			say "     Your bare crotch feels flush with heat, as if the blood crushed from your body is filling your loins with a hot need that cannot be fulfilled in your neutered state. Despite your perilous situation, the brush of the snake-man's scaly hide across your aroused loins is very pleasurable. You can also feel his twin serpentine cocks grinding against your thigh and leaking precum against it, the naga quite aroused at the prospect of consuming his prey. Your vision becomes increasingly blurry as the constriction continues, leaving you barely able to see the naga's head approach with his mouth stretched open. Your head is pressed into that wide, gaping maw, and you are engulfed in a hot, humid heat. Sticky saliva clings to your head and shoulders as you are slowly forced into the creature's throat. You squirm with your little remaining strength, but his esophagus squeezes you with strong muscles. The naga seems to chuckle at your struggles and rubs his hands along his throat. His reptilian cocks grind against you all the harder, and you feel a fresh splatter of precum, the monster clearly enjoying your feeble resistance.";
			say "     And through this, some part of you can't help but be aroused as well. The slick peristalsis of his serpentine throat steadily squeezing more of your body is strangely erotic. When the coils around your chest are unwound, your gasping breath draws in the humid and musky air of the naga's breath and gastric vapors, flooding your senses with them. And once your hips are pushed into his maw, you can't help but grind against the creature's palate and the walls of his throat in a struggle for a final sexual release. Your bare crotch aches with a need for stimulation that you do your best to satisfy by rubbing it against those wet, rippling walls. Eventually, this stimulation is enough to send a rush of unfocused pleasure through your [bodydesc of Player] body that has you groaning with pleasure, even as you tumble into the creature's stomach. Between the humid heat and your post-orgasmic haze, your exhausted body finally passes out deep inside the monster's belly";
		WaitLineBreak;
		increase hunger of Player by 24;
		increase thirst of Player by 24;
		if hunger of Player < 100 and thirst of Player < 100:
			say "     Surprisingly, you eventually awaken, your [bodytype of Player] body sticky with a gooey mess of half-dried snake saliva and gastric fluids. Weak and drained, you have been left emaciated by the strange experience, your body drained of vitality and left terribly hungry and thirsty. It takes some time for your nanite-enhanced body to recover enough to collect your scattered gear, stagger to your feet, and stumble back towards safety to recover.";
			if HP of Player > 0:
				now HP of Player is HP of Player / 2;
			infect "Naga";
		else:
			say "     Drained of vitality, you are consumed by the naga, becoming nothing more than another grisly meal for the predatory monster to be digested over the next several days.";
			now XP of Player is 0;
			now non-infectious entry is true; [prevents regular naga infection from occurring]
			now hunger of Player is 999;
			now thirst of Player is 999;
			now battleground is "void";
			now combat abort is 1;
			WaitLineBreak;
			end the story saying "You have been eaten and digested by a naga.";
			stop the action;
	else if a random chance of 2 in 3 succeeds:
		if Player is submissive:
			say "     The serpentine creature entwines you in his coils, leaving only your head free to gasp for breath. As his tail tightens around you, his scaly hide rubs across your [bodydesc of Player] body. Chuckling darkly at your feeble groaning, the male naga then moves his upper body in closer, showing off his twin reptilian cocks, erect and dripping with precum. Seeing the guy's intent, you give in to your submissive feelings, parting your lips to gladly serve your ophidian master's pleasure. Without delay, he stuffs his twin erections into your mouth, hissing lustfully as he fucks your face. Being so fully in the power of another arouses you to no end, and his precum tastes quite nice, so you suck and lick on his cocks on your own accord too, wanting to make it even better for him. Blowing the naga off eagerly, even enthusiastically, your mouth waters at the taste of the cocks filling your senses.";
		else:
			say "     The serpentine creature entwines you in his coils, leaving only your head free to gasp for breath. As his tail tightens around you, his scaly hide rubs across your [bodydesc of Player] body. Chuckling darkly at your feeble groaning, the male naga then moves his upper body in closer, showing off his twin reptilian cocks, erect and dripping with precum. Seeing the guy's intent, you close your mouth tightly, but another crushing constriction causes you to cry out, leaving your mouth wide to be stuffed by the twin erections. The taste of its precum arouses you, and you are soon licking and sucking on them despite yourself. At first, this is rather reluctant, but soon you're going at it eagerly, even enthusiastically, your mouth watering at the taste of the cocks filling your senses.";
		say "     The throbbing shafts stuffing your mouth soon throb and pulse, releasing the creature's copious, thick semen into your overflowing mouth, unable to swallow because of his crushing coils around your chest. After chuckling at your plight for a moment, he relaxes his grip, allowing you to gulp down his musky load and gasp for breath. Dropping you to the ground now that he's done with you, the naga slithers off, leaving you weak and coughing as you try to recover from the crushing blow job you've been made to endure.";
	else:		[constriction into unconsciousness]
		say "     Your opponent makes a dry hiss, almost as if he was laughing, and winds himself tightly around your defeated form while divesting you of your gear. The male naga throws his coils about you in a warm, soft embrace. While initially the sliding of his scaly hide across your flesh is pleasant, his strong coils continue to tighten around you harder and harder until it becomes painful. As it gets increasingly difficult to breathe, you try to push against them, but your [bodydesc of Player] body [if HP of Player > 0]can't get enough leverage[else]is too worn from the fight[end if] to fight against his powerful tail muscles.";
		if Cock Count of Player > 1:
			say "     'Look at you - nothing but weak prey. Thisss world ssshall belong to the ssstrong,' he hisses, tightening his grip even further. Spots dance before your eyes as you struggle to remain conscious. Strangely, your cocks are painfully rock hard against those squeezing coils, as if all of your blood is getting squeezed into them. It may be the infection or perhaps the oxygen deprivation, but this perilous situation is somehow also quite arousing despite the fear and pain you feel. You can even feel the naga's twin reptilian shafts grinding against your own, the monster turned on by the act of crushing the life out of his prey.";
		else if Cock Count of Player is 1:
			say "     'Look at you - nothing but weak prey. Thisss world ssshall belong to the ssstrong,' he hisses, tightening his grip even further. Spots dance before your eyes as you struggle to remain conscious. Strangely, your cock is painfully rock hard against those squeezing coils, as if all of your blood is getting squeezed into it. It may be the infection or perhaps the oxygen deprivation, but this perilous situation is somehow also quite arousing despite the fear and pain you feel. You can even feel the naga's twin reptilian shafts grinding against your own, the monster turned on by the act of crushing the life out of his prey.";
		else if Player is female:
			say "     'Look at you - nothing but weak prey. Thisss world ssshall belong to the ssstrong,' he hisses, tightening his grip even further. Spots dance before your eyes as you struggle to remain conscious. Strangely, your crotch feels flush with heat, as if your blood is being forced to your loins and filling them with a hot need until your puss[yfn] drip[sfv] with juices. It may be the infection or perhaps the oxygen deprivation, but this perilous situation is somehow also quite arousing despite the fear and pain you feel. You can even feel the naga's twin reptilian shafts grinding against your thigh, the monster turned on by the act of crushing the life out of his prey.";
		else:
			say "     'Look at you - nothing but weak prey. Thisss world ssshall belong to the ssstrong,' he hisses, tightening his grip even further. Spots dance before your eyes as you struggle to remain conscious. Strangely, your bare crotch feels flush with heat, as if your blood is being forced to your loins and filling you with a hot need that cannot be fulfilled in your neutered state. It may be the infection or perhaps the oxygen deprivation, but this perilous situation is somehow also quite arousing despite the fear and pain you feel. You can even feel the naga's twin reptilian shafts grinding against your thigh, the monster turned on by the act of crushing the life out of his prey.";
		say "     Your vision becomes increasingly blurry as the constriction continues. You weakly try to push against the inexorable grip of the naga's tail, but you have nearly no strength left. Gasping for breath, you can still hear the naga's hissing laugh in your pounding ears, a flick of his tongue along one telling you his head's right beside yours and enjoying every moment. You feel pops, cracks, and crunches as the pain in your chest grows. You feel your ribs start to break before you finally fall unconsciousness.";
		WaitLineBreak;
		say "     Surprisingly, you eventually awaken, your [bodytype of Player] body battered and sore. Your chest is particularly painful, the nanites doing their best to mend your broken ribs and bruised body. You conclude that the naga must have released you once you'd passed out, after having wrung every last moment of fun out of his struggling prey. It takes you a few minutes to gather the strength to collect your scattered gear, stagger to your feet, and stumble back towards safety to recover.";
		now HP of Player is 1;



to say WinOverNaga:
	say "     [one of]The naga staggers from his many wounds and collapses to the ground. [or]Your last blow draws a shuddering hiss before the naga falls to the ground and ceases fighting. [at random]Even though you can literally see his body mend rapidly as the nanites infused within him do their work, he won't be ready for another fight for a while.";
	say "[bold type]This is your chance to have some fun with the snake-creature. Do you want to?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get the naga to use his long, dexterous tongue.";
	say "     ([link]N[as]n[end link]) - No, not right now.";
	if Player consents:
		LineBreak;
		if Player is male:
			say "     Dropping your gear and sliding off all of clothing as you go along, you step up to stand over the naga and present your [cock size desc of Player] cock[smn] to him. After hesitating a moment more and giving a low hiss, the snake-creature says, 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meansss anything if we meet again.' That said, he gives a little shrug and reaches out, gently handling[if Cock Count of Player > 1] one of[end if] your manhood[smn][if cockname of Player is not listed in infections of internallist] and [Ball Size Adjective of Player] [Balls][end if] with his fingers. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
			say "     While he fondles you, the male naga's tongue plays over your skin in a feathery-light touch. [if cockname of Player is not listed in infections of internallist]He spends some time teasing your balls, wrapping his forked tongue around one then the other and lightly squeezing them[else]He spends some time teasing your crotch, lightly lashing his forked tongue against your [bodytype of Player] form[end if], [if anallevel > 1]even snaking it down between your legs to brush against your back door, [end if]then moving his attention to your hardening cock. It's a strange but very pleasant feeling to have him play his long but thin tongue over your erection, wrapping and tugging on it in a stimulating fashion. Overwhelmed in the sensations of having this snake-person jerk you off with his tongue, you moan and lean your head backwards, savoring the pleasure he gives you.";
			WaitLineBreak;
			say "     After a while of just licking and squeezing your manhood, the naga moves on to giving you a more regular blowjob and slides his lips over your pole, taking it into his broad, seemingly toothless maw. Thankfully, his fangs are folded away into their pockets in the roof of his mouth so you don't have to worry about them. Bobbing up and down in the great blowjob he's giving you, the naga male also strokes his long body against you, with the tip of his tail brushing softly against your sides and back. Arousal quickly mounting higher and higher from your partner's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker, and the need to cum rises in your balls. You moan that you're close, which only has the snake-person speed up more, lips still tightly wrapped around your shaft as you blow your [Cum Load Size of Player] load. He eagerly swallows spurt after spurt of your cum, even milking the very last drops from your softening cock. 'That was - sssatisfactory,' he says, then slithers away without looking back";
		else if Player is female:
			say "     Dropping your gear and sliding off all of clothing as you go along, you step up to stand over the naga and present your crotch to him. After hesitating a moment more and giving a low hiss, the snake-creature says 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meansss anything if we meet again.' That said, he gives a little shrug and reaches out, gently pulling apart [if Cunt Count of Player > 1]the nether lips of one of your cunts[else]your nether lips[end if] while his tongue plays over its folds in a feathery-light touch. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
			say "     He spends some time just licking your outermost lips, [if anallevel > 1]even snaking it down between your legs to brush against your back door, [end if]then moves his attention to your clit and inner labia. It's a strange but very pleasant feeling to have him play his long but thin tongue over your privates, then dip into your vagina and explore inside. Overwhelmed in the sensations of having this snake-person tease and lick the inner walls of your pussy, you moan and lean your head backwards, savoring the pleasure he gives you.";
			WaitLineBreak;
			say "     After a while of gentle licking and soft poking, the male naga pulls back a bit, then puts his lips to your clitoris and really concentrates on that, nibbling and brushing over it with the tip of his tongue. Head against your crotch in the great cunnilingus he's giving you, the naga male also strokes his long body against you, with the tip of his tail brushing softly against your sides and back. Arousal quickly mounting higher and higher from your partner's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker, and the need to come becomes almost unbearable. You moan that you're close, which only has the snake-person speed up more, pushing his long tongue even deeper into your vagina than before and finding all new spots to caress and tease. Moments later, you moan loudly, orgasming from the continued stimulation, femcum squirting from your pussy and hitting the naga's scaled face. He eagerly puts his lips to your sex, catching and swallowing it all after the first splash, then licks his maw clean with his long tongue. 'That was - sssatisfactory,' he says, then slithers away without looking back";
		else:
			say "     Dropping your gear and sliding off all of clothing as you go along, you step up to stand over the naga and present your crotch to him. After hesitating a moment more and giving a low hiss, the snake-creature says 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meansss anything if we meet again.' That said, he gives a little shrug and reaches out, gently stroking your genderless but still sensitive skin and playing over it in a feathery-light touch with his tongue. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
			say "     He spends some time just licking your pubic area, then snakes his tongue down between your legs to brush against your back door and tease it a bit before returning to your crotch. Dealing with your sexless state without any hesitation, he's creative in the ways he tickles, licks, and strokes you, giving you a very pleasant feeling. While his head is against your crotch in the great oral attention he's giving you, the naga male also strokes his long body against you, with the tip of his tail brushing softly against your sides and back.";
			WaitLineBreak;
			say "     Arousal quickly mounting higher and higher from your partner's gentle touch, it doesn't take all that much longer until your pants get quicker, and the need to come becomes almost unbearable. You moan that you're close, which only has the snake-person speed up more, and moments later, a feeling of bliss floods your body, and you shake in orgasm. He continues pleasing you until your climax abates, then pulls away. 'That was - sssatisfactory,' he says, then slithers away without looking back";
	else:
		say "     As you're currently not interested in having carnal relations with a half-man-half-snake creature, you just walk away, leaving him to pick himself up later.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Naga";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The naga swipes at you with his pipe with alarming accuracy[or]With a loud hiss, the male naga lashes at you, sinking his fangs painfully into your [bodydesc of Player] body[or]The naga lashes out with its tail, striking you solidly with the heavy mass[at random].";
	now defeated entry is "[WinOverNaga]";
	now victory entry is "[LoseToNaga]";
	now desc entry is "[NagaDesc]";
	now face entry is "a snake's head, with unblinking eyes and huge venomous fangs. Your [skinname of Player] hide is sleek across your majestic hood, flaring wide when excited or worked up, and framing your head from behind your face"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "extremely long. You can feel the powerful rings of your muscles drawing you forward quietly across the ground. It almost feels like you're floating along, moving with a sublime confidence in your snake-like body"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "[one of]scaly[or]softly-scaled[or]scaled[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]reptilian[or]tapering[at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "you feel your [skin of Player] skin stretching out as your skull flattens out into a snake-like face. Your eyes blink for the last time before the lids become clear. You find that you can now taste scents in the air"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your legs snap together, almost toppling you as they flow together quickly. Strange numbing pleasure radiates down along your torso as you can feel your spine extending down along your fused legs, then beyond, forming a powerful tube-like body that trails along behind you"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "soft [one of]brown and black[or]bright-red and yellow[or]gray and tan[at random] scales begin to spread quickly from your palms. As they settle, soft, itching warmth follows, then fades, leaving you with a new hide to admire"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel something settle in your lower torso, but nothing physically changes that you can see"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it becomes achingly erect for a moment before settling down in a tapering, reptilian shape"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14;
	now dex entry is 10;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 25;
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Mall"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]serpentine[or]legless[or]altered[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]serpentine[or]reptilian[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "snakenaga"; [ Row used to designate any special combat features, "default" for standard combat. ]
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


Section 3 - Endings

when play ends:
	if humanity of Player < 10:
		if bodyname of Player is "Naga":
			say "     Losing your mind to the infection, you find yourself slithering down the ruined streets of the city until you make your way to a dilapidated building that's more intact than it first seems. Making the undamaged basement into your new den, you spend the next few weeks gathering as much food as you can before going out and taking captive one of the soldiers who just so happened to have been prowling around your den.";
			if Player is male:
				say "     Curling around the other with your long, serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then breed your increasingly complacent victim for days to come. Flushing out his humanity with your continuous mating, you find your efforts bearing fruit as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from his once flabby skin.";
			else if Player is female:
				say "     It takes a few injections of your venom to subdue the other, but once the soldier had become complacent, you spend the next few weeks getting yourself stuffed full by the punch-drunk male as you constantly force him to fill up your achingly empty vent[if Player is impreg_ok]. It takes time, but soon you find yourself heavy with a large clutch of eggs, but by that time your new naga mate doesn't need any coercion to continue filling you with his seed[else]. The soldier's seed never takes, but soon, it doesn't matter as you and your new naga mate spend hours into the day curled around each other as he stuffs you full with his thick, serpentine seed[end if].";
			else:
				say "     Curling around the other with your long, serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then have your increasingly complacent victim breed your anal vent for days to come. Flushing out his humanity with your continuous contact, you find your efforts bearing fruit as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from his once flabby skin.";
			say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds]. During your period of hiding, your mate manages to snag a confused soldier left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";

Naga ends here.
