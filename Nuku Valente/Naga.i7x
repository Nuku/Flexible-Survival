Version 2 of Naga by Nuku Valente begins here.
[Version 2.1 - Agumented existing content done by Wahn - Blue Bishop.]
[Original commissioned by AsureaSkie.]

"Adds a Naga creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Naga" } to infections of guy;

to say LoseToNaga:
	[if bodyname of player is "human" or bodyname of player is "herm human" and player is pure:
		say " Your opponent laughs, like a dry hiss, tongue flicking as he moves over your defeated form, 'You ssshould leave thisss place, human. Your kind is finished in thisss city. Remember it - or you will be punissshed fresh.'";] [To keep or not to keep?]
	if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (a random chance of 1 in 3 succeeds and anallevel is 3)):
		if "Submissive" is listed in feats of player:			
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick human-like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort. Being so fully in the power of another being arouses you to no end, making you gasp and moan at being used for his pleasure.";
			say "     The naga laughs at your eagerness to be taken and 'punished' by him as he uses his coils to keep your wriggling form under control while  pounding eagerly at your [bodytype of player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your bowels with thick gouts of snake seed. The snake-creatures's second cock meanwhile sprays his load all over your back, leaving you pretty wet and sticky. Satisfied, the naga rolls you off of himself to the ground, and slithers away.[mimpregchance]";
		otherwise: 				
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick human-like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort.";
			say "     Your ass sends guilty pangs of pain and pleasure through you as the snake-man uses his coils to keep your wriggling form under control, pounding eagerly at your [bodytype of player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your bowels with thick gouts of snake seed. The snake-creatures's second cock meanwhile sprays his load all over your back, leaving you pretty wet and sticky. Satisfied, the naga rolls you off of himself to the ground, and slithers away.[mimpregchance]";
	otherwise if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		if "Submissive" is listed in feats of player:			
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick human-like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into[if cunts of player > 1] one of[end if] your cunt[sfn], lancing you on the thick tool and rocking without concern for your comfort. Being so fully in the power of another being arouses you to no end, making you gasp and moan at being used for his pleasure.";
			say "     The naga laughs at your eagerness to be taken and 'punished' by him as he uses his coils to keep your wriggling form under control while  pounding eagerly at your [bodytype of player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your womb with thick gouts of snake seed. The snake-creatures's second cock meanwhile sprays his load all over your back, leaving you pretty wet and sticky. Satisfied, the naga rolls you off of himself to the ground, and slithers away.[impregchance]";
		otherwise: 				
			say "     With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to him. He coils about you, warm and trapping, and becomes visibly aroused - twice so - with two thick human-like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts one of his cocks firmly into[if cunts of player > 1] one of[end if] your cunt[sfn], lancing you on the thick tool and rocking without concern for your comfort.";
			say "     Your ass sends guilty pangs of pain and pleasure through you as the snake-man uses his coils to keep your wriggling form under control, pounding eagerly at your [bodytype of player] form. Soon, the shaft within you swells, then starts to pulse rhythmically with spurt after spurt of cum, filling your womb with thick gouts of snake seed. The snake-creatures's second cock meanwhile sprays his load all over your back, leaving you pretty wet and sticky. Satisfied, the naga rolls you off of himself to the ground, and slithers away.[impregchance]";
	otherwise:
		if "Submissive" is listed in feats of player:
			say "     The serpentine creature entwines you in his coils, leaving only your head free to gasp for breath. As his tail tightens around you, his scaly hide rubs across your [bodydesc of player] body. Chuckling darkly at your feeble groaning, the male naga then moves his upper body in closer, showing off his twin human-like cocks, erect and dripping with precum. Seeing the guy's intent, you give in to your submissive feelings, parting your lips to gladly serve your ophidian master's pleasure.";
			say "     Without delay, he stuffs his twin erections into your mouth, hissing lustfully as he fucks your face. Being so fully in the power of another arouses you to no end and his precum tastes quite nice, so you suck and lick on his cocks on your own accord too, wanting to make it even better for him. Blowing the naga off eagerly, even enthusiastically, your mouth waters at the taste of the cocks filling your senses.";
		otherwise: 
			say "     The serpentine creature entwines you in his coils, leaving only your head free to gasp for breath. As his tail tightens around you, his scaly hide rubs across your [bodydesc of player] body. Chuckling darkly at your feeble groaning, the male naga then moves his upper body in closer, showing off his twin human-like cocks, erect and dripping with precum.";
			say "     Seeing the guy's intent, you close your mouth tightly, but another crushing constriction causes you to cry out, leaving your mouth wide to be stuffed by the twin erections. The taste of its precum arouses you and you are soon licking and sucking on them despite yourself. At first, this is rather reluctant, but soon you're going at it eagerly, even enthusiastically, your mouth watering at the taste of the cocks filling your senses.";				
		say "     The throbbing shafts stuffing your mouth soon throb and pulse, releasing the creature's copious, thick semen, filling your mouth to overflowing, unable to swallow because of his crushing coils around your chest. After chuckling at your plight for a moment, he relaxes his grip, allowing you to gulp down his musky load and gasp for breath. Dropping you to the ground now that he's done with you, the naga slithers off, leaving you weak and coughing as you try to recover from the crushing blow job you've been made to endure.";

			
to say WinOverNaga:
	say "     [one of]The naga staggers from his many wounds and collapses to the ground. [or]Your last blow draws a shuddering hiss before the naga falls to the ground and ceases fighting. [at random]Even though you can literally see his body mend in rapid pace as the nanites infusing him do their work, he won't be ready for another fight for a while";
	if libido of player > 30 or "Dominant" is listed in feats of player:
		say "... this is your chance to have some fun with the snake-creature. Do you want to?";
		if player consents:
			if cocks of player > 0:
				say "     Dropping your gear and sliding off all clothing as you go along, you step up to stand over the naga and present your [cock size desc of player] cock[smn] to him. After hesitating a moment more and giving a low hiss, the snake-creature says 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meanss anything if we meet again.' That said, he gives a little shrug and reaches out, gently handling[if cocks of player > 1] one of[end if] your manhood[smn][if cockname of player is not listed in infections of internallist] and [ball size][end if] with his fingers. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
				say "     While he fondles you, the male naga's tongue plays over your skin in a feathery light touch. [if cockname of player is not listed in infections of internallist]He spends some time teasing your balls, wrapping his forked tongue around one then the other and lightly squeezing them[otherwise]He spends some time teasing your crotch, lightly lashing his forked tongue against your [bodytype of player] form[end if], [if anallevel > 1]even snaking it down between your legs to brush against your back door, [end if]then moving his attention to your soon fully hard cock. It's a strange but very pleasant feeling to have him play his long but thin tongue over your erection, then wrap around it and tug on it in a pretty stimulating fashion. Overwhelmed in the sensations of having this snake-person jerk you off with his tongue, you moan and lean your head backwards, savouring the pleasure he gives you.";
				say "     [WaitLineBreak]";				
				say "     After a while of just licking and squeezing your manhood, the naga moves on to giving you a more regular blowjob and slides his lips over your pole, taking it into his broad, seemingly toothless maw. Thankfully, his fangs are folded away into their pockets in the roof of his mouth so you don't have to worry about them. Bobbing up and down in the pretty great blowjob he's giving you, the naga male meanwhile also strokes his long body against you, with the tip of his tail brushing softly against your sides and back.";
				say "     Arousal quickly mounting higher and higher from your partner's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to cum rises in your bells. You moan that you're close, which only has the snake-person speed up more, lips still tightly wrapped around your shaft as you blow your [cum load size of player] load. He eagerly swallows spurt after spurt of your cum, even milking the very last drops from your soon softening cock. 'That was - sssatisfactory,' he says, as a statement not a question, then slithers away without looking back.";
			otherwise if cunts of player > 0:
				say "     Dropping your gear and sliding off all clothing as you go along, you step up to stand over the naga and present your crotch to him. After hesitating a moment more and giving a low hiss, the snake-creature says 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meanss anything if we meet again.' That said, he gives a little shrug and reaches out, gently pulling apart [if cunts of player > 1]the nether lips of one of your cunts[otherwise]your nether lips[end if] while his tongue plays over its folds in a feathery light touch. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
				say "     He spends some time just licking your outermost lips, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your clit and inner labia. It's a strange but very pleasant feeling to have him play his long but thin tongue over your privates, then dip into your vagina and explore inside. Overwhelmed in the sensations of having this snake-person tease and lick the inner walls of your pussy, you moan and lean your head backwards, savouring the pleasure he gives you.";
				say "     [WaitLineBreak]";
				say "     After a while of gentle licking and soft poking, the male naga pulls back a bit, then puts his lips to your clitoris and really concentrates on that, nibbling on it and brushing over it with the tip of his tongue. Head against your crotch in the pretty great cunnilingus he's giving you, the naga male meanwhile also strokes his long body against you, with the tip of his tail brushing softly against your sides and back.";
				say "     Arousal quickly mounting higher and higher from your partner's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the snake-person speed up more, pushing his long tongue even deeper into your vagina than before and finding all new spots to caress and tease. Moments later, you moan loudly, orgasming from the continued stimulation, femcum squirting from your pussy and hitting the naga's scaled face. He eagerly puts his lips to your sex, catching and swallowing it all after the first splash, then licks his maw clean with his long tongue. 'That was - sssatisfactory,' he says, as a statement not a question, then slithers away without looking back.";	
			otherwise:
				say "     Dropping your gear and sliding off all clothing as you go along, you step up to stand over the naga and present your crotch to him. After hesitating a moment more and giving a low hiss, the snake-creature says 'You defeated me, so I will ssserve for your pleasssure - just thisss once. Do not think thisss meanss anything if we meet again.' That said, he gives a little shrug and reaches out, gently stroking your genderless but still sensitive skin and playing over it in a feathery light touch with his tongue. Seems like he brushed your whole fight and any resentment at losing aside as 'in the past' and now is totally concentrated on trying to have a somewhat nice time with you.";
				say "     He spends some time just licking your pubic area, then snakes his tongue down between your legs to brush against your back door and tease it a bit before returning to your crotch. Dealing with your sexless state without any hesitation, he's creative in the ways he tickles, licks and strokes you, giving you a very pleasant feeling. While his head is against your crotch in the pretty great oral attention he's giving you, the naga male meanwhile also strokes his long body against you, with the tip of his tail brushing softly against your sides and back.";
				say "     [WaitLineBreak]";
				say "     Arousal quickly mounting higher and higher from your partner's gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the snake-person speed up more, and moments later a feeling of bliss floods your body and you shake in orgasm. He continues pleasing you until your climax abates, then pulls away. 'That was - sssatisfactory,' he says, as a statement not a question, then slithers away without looking back.";		
		otherwise:
			say "     As you're currently not interested in having carnal relations with a half-man-half-snake creature, you just walk away, leaving him to pick himself up later.";
	otherwise:
		say ". With nothing else to gain from this encounter, you gather your things and head off.";
	
to say NagaDesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if cocks of player > 0 and cunts of player > 0:
		now sex entry is "Both";
	otherwise if cocks of player > 0:
		now sex entry is "Male";
	otherwise if cunts of player > 0:
		now sex entry is "Female";
	otherwise:
		now sex entry is "Male";
	say "     A creature consisting of human and snake blended together in an intimidating mixture slithers into sight ahead of you. It is a naga - a male one, judging from what you see as he raises his human-like upper body to have a good look at you in turn.";
	say "     He has [one of]brown and black[or]bright red and yellow[or]grey and tan[at random] scales, fine and soft looking. Two muscular arms are his only limbs, if one discounts the great tail that makes up most of the male naga's long body. Clenched in his right hand is a pipe. A crude, but likely effective, makeshift weapon. Of course, he also has great jaws that likely contain sharp, possible venomous, fangs. His human torso is well muscled and sleek, well built all around and lacking in blemish. The naga's head and face are entirely that of a huge snake, staring unblinkingly and tasting the air with flickering forked tongue.";
	say "     [line break]";
	say "     The moment of mutual examination ends as the naga hisses 'SSsssubmit - or don't... it will sssatisfy me either way, prey.' With that, he rushes towards you, sliding over the ground quickly with sinuous twists of his snake-body.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Naga";
	now attack entry is "[one of]The naga swipes at you with his pipe with alarming accuracy[or]With a loud hiss, the male naga lashes at you, sinking his fangs painfully into your [bodydesc of player] body[or]The naga lashes out with its tail, striking you solidly with the heavy mass[at random].";
	now defeated entry is "[WinOverNaga]";
	now victory entry is "[LoseToNaga]";
	now desc entry is "[NagaDesc]";
	now face entry is "a snake's head, with unblinking eyes and huge venomous fangs. Your [skinname of player] hide is sleek across your majestic hood, flaring wide when excited or worked up, framing your head from behind your face";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "extremely long. You can feel the powerful rings of your muscles drawing you forward quietly across the ground. It almost feels like you're floating along, moving with a sublime confidence in your snake like body";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]scaly[or]softly scaled[or]scaled[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]human[or]normal[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you feel your [skin of player] skin stretching out as your skull flattens out into a snake-like face. Your eyes blink for the last time before the lids become clear. You find you can now taste scents in the air";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your legs snap together, almost toppling you as they flow together quickly. Strange numbing pleasure radiates down along your torso as you can feel your spine extending down along your fused legs, then beyond, forming a powerful tube-like body that trails along behind you";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft [one of]brown and black[or]bright red and yellow[or]gray and tan[at random] scales begin to spread quickly from your palms. As they settle, soft itching warmth follows, then fades, leaving you with a new hide to admire";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel something settle in your lower torso, but nothing physically changes that you can see";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock becomes achingly erect for a moment before settling down in human shape";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 10;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male";               [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 25;                    [ The monster's starting hit points. ]
	now lev entry is 3;                    [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;                   [ Monster's average damage when attacking. ]
	now area entry is "Mall";              [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 2;                  [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;           [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9;             [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;                [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;            [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                  [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;            [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;             [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20;                [ Target libido the infection will rise towards. ]
	now loot entry is "";                  [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;             [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]serpentine[or]legless[or]altered[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]serpentine[or]reptilian[at random]";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;              [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;          [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;     [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;         [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "snakenaga";    [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if humanity of player < 10:
		if bodyname of player is "Naga":
			say "     Losing your mind to the infection, you find yourself slithering down the ruined streets of the city until you make your way to a dilapidated building that's more intact than it first seems. Making the undamaged basement into your new den, you spend the next few weeks gathering as much food as you can before going out and taking captive one of the soldiers who just so happened to have been prowling around your den.";
			if cocks of player > 0:
				say "     Curling around the other with your long serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then breed your increasingly complacent victim for days to come. Flushing out his humanity with your continuous mating, your find your efforts bearing fruits as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from hisr once flabby skin.";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds]. During your period of hiding, your mate manages to snag a confused soldier left left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";
			otherwise if cunts of player > 0:
				say "     It takes a few injections of your venom to subdue the other, but once the soldier has become complacent, you spend the next few weeks getting yourself stuffed full by the punch-drunk male as you constantly force him to fill up your achingly empty vent[if the player is impreg_ok]. It takes time, but soon you find yourself heavy with a large clutch of eggs, but by that time your new naga mate doesn't need any coercion to continue filling you with his seed[otherwise]The soldier's seed never takes, but soon it doesn't matter as you and your new naga mate spend hours into the day curled around each other as he stuffs you full with his thick, serpentine seed[end if].";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds]. During your period of hiding, your mate manages to snag a confused soldier left left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";
			otherwise:
				say "     Curling around the other with your long serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then have your increasingly complacent victim breed your anal vent days to come. Flushing out his humanity with your continuous contact, your find your efforts bearing fruits as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from hisr once flabby skin.";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds]. During your period of hiding, your mate manages to snag a confused soldier left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";

Naga ends here.
