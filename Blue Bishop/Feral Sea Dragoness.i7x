Version 6 of Feral Sea Dragoness by Blue Bishop begins here.
[Version 6 - Dragonpalooza 2: Housekeeping, Vore, and Victory]
[- Originally Authored By: Tunalord Sefont -]

"Adds a Feral Sea Dragoness to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks.. ]
fsddom is a number that varies.
lastfsdfeeding is a number that varies. lastfsdfeeding is usually 255.
fsdfeedmemory is a number that varies.
FFSDUBM is a truth state that varies. FFSDUBM is usually false.
FSDOPEN is a number that varies. FSDOPEN is usually 0.

to say fsdf attack:
	if MaleList is not banned: [change target to male for infection if valid]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Feral Sea Dragon":
				now MonsterID is y;
				break;
		if "Male Preferred" is listed in feats of Player:
			now sex entry is "Male";
		else if "Female Preferred" is listed in feats of Player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of Player:
			now sex entry is "Both";
		else:
			now sex entry is "Male";
	if vorelevel is 3 and scalevalue of Player < 4 and (A random chance of 1 in 4 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):
		if HP of Player > 0:
			say "     You immediately throw up your arms and lower your guard, showing you don't wish to fight. She doesn't seem inclined to very much regard your submission as anything more than the opening for her and she betrays her innocent demeanor to immediately dive for";
		else:
			say "     Having enough of this fight, her head lunges towards";
			now struggleatt is 1;
		say " you, maw wide open!";
		say "     Before you can react, you're engulfed darkness, the sea dragoness's slick, supple flesh enveloping you. Awash in the beast's acrid breath, she pulls you into the air with by her lips";
		if a random chance of 1 in 2 succeeds:
			say ". Allowing gravity to aid her as she audibly gulps you down, powerful muscles plunging you down her slick depths.";
			say "     Hot, slippery tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy. Given the length of the trip, you're not yet wholly consumed by the sea dragoness. You might be able to pull yourself out of here before it's too late!";
			now tempnum2 is 2;
		else:
			say ". Her motion so fast, she sends you spinning in the air before immediately catching you by your feet, exposing you to the[if daytimer is night] night[end if] light once more, you access to the fresh, salt air is made brief as the monster uses gravity to aid her as she audibly gulps you down.";
			say "     Allowed one final glimpse of the outside world before it's eclipsed by the monster's toothy maw, her powerful muscles plunges you down her slick depths. Hot tube constricting against you tightly, the beast's elongated gullet bulges visibly with your occupancy. Given the length of the trip, you're not yet wholly consumed by the sea dragoness. You might be able to pull yourself out of here before it's too late!";
			now tempnum is 0;
		wait for any key;
		now boundsegment is 1;
		fsdfvore;
	else:
		if HP of Player > 0 and FSDOPEN is 0:
			say "     You immediately throw up your arms and lower your guard, showing you don't wish to fight. [one of]She yields, regarding your demeanor with a soft chirp before advancing towards you. She curiously noses you before giving you a hearty, wet lick. The dizzying scent of fish and seawater nearly overwhelms you[or]She's a bit unsure of this turn of events but, eventually, she advances to sniff you over, regarding you with an inquisitive affection[at random]. She uses her teeth to pull any attire from you might have once had, offering some illumination on her plans for you.";
		else if FSDOPEN is 0:
			say "     Having enough of this fight, her head lunges towards you, maw agape, only to grab your [bodytype of Player] body[if scalevalue of Player < 4], engulfing your head and most of your upper torso within her slimy maw. You half expect her to swallow you whole before she lifts her head back up and spits you out, throwing your now saliva-soaked form across the beach and knocking you unconscious[else]. Her teeth are at least not biting down strong enough to really hurt you, but she nonetheless starts flailing you around in a display of fierce abandon until she flings you back onto the ground with enough for you knock you right out[end if]. When you come to you can feel the warm sea air across your exposed form, the beast having already relinquished you of your attire. She regards you with a cheerful chirp, now more than happy to treat her victim with affection when they're too weak to fight back.";
		if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
			if Player is submissive:
				if a random chance of fsddom in 9 succeeds:
					if Player is male and a random chance of 1 in 2 succeeds:
						say "     She seems particularly affectionate to one of her own kind, nipping you playfully before she moves to prepare you. No doubt this dragoness has been the subject of your submissive needs before. She forces you onto your side - to which you comply - before you watch as her thick tongue caresses[if Cock Count of Player > 1] one of[end if] your emergent, [cock size desc of Player] cock[smn].";
						say "     Like clockworks, the beast's wanton affection arouses you with little difficulty, much to her cooing approval. She continues to suck on your [cock size desc of Player] rod for a brief while longer before she moves on. Having gotten the hang of this, she uses her tail to aim[if Cock Count of Player > 1] one of[end if] your dick[smn] into the needy hole, resting partially on you as she slowly pushes its head into her soft cunt, [if Cock Length of Player >= 18]faintly churring in pleasure before she acclimates to your size[else]cooing softly in approval as it descends into the folds of her flesh[end if].";
						say "     From here, she makes an earnest effort to use you, rocking her large body against your[if Cock Length of Player > 15] thick[end if] meat with an increasingly reckless fervor, occasionally nipping you an aggressive show of passion before she sings deeply into the open air, climaxing against your hard organ. Much to the whim of your mistress's body, her pleasure pushes you to your own ecstasy, [if Cock Count of Player > 2]causing your exposed members to unload against both your frames as you pump[else if Cock Count of Player is 2]causing your exposed member to unload against both your frames as you pump[else]pumping[end if] her voracious hole full with your [Cum Load Size of Player] load.";
						say "     A little dizzied from pleasure, she eventually pulls herself free of you. She departs with a playful nip, diving back into the water's depths, transparently sated by her pet's company. As you recover, you remind yourself of the now-apparent, long-term implications of forcing such a normally submissive creature into a dominant role...";
					else:
						say "     Briefly sharing affection with one of her kind, she seems inclined to nip and tease you, [one of]no doubt this being one who's had fun using you before[or]eager to abuse you already[stopping]. Firmly, she pins you to the ground with her body, shoving her exposed cunt against your head and very insistent on having you satisfy her.";
						say "     Driven by your submissive inclinations, you eagerly comply with the dragoness's command, your thick tongue teasing the portal's soft entrance. Rumbling softly, she revels in subjecting you to the lowly task of attending her tainted need.";
						say "     Tightly presses her hole against you, you're immediately your explore her depths with your slick organ, its soft folds parting to accommodate your writhing intrusion. Tasting her emergent juices, you too can't help but be aroused, [if Player is female]aching cunt[sfn] left unattended[else if Player is male]throbbing, [cock size desc of Player] dick[smn] left unattended[else]body aching with insatiable need[end if]. All the while the beast groans and mocks you for your embarrassing need, often nipping you into working harder, until the rate of your slippery affections rise to a feverish pace, singing lowly as you're driven by an overwhelming desire to pleasure this aquatic mistress.";
						say "     Much to your blind fervor's joy, you're rewarded with your endeavors when you feel her sexual fluids flood your maw, beast's passage tightening around your tongue as she roars out in orgasm, leaving you to simply writhe in unattended need.";
						say "     Eventually, she crawls off you, satisfied with your offering, she gives you a cheeky nip before she turns to dive back into the waters. As you recover before setting off, you remind yourself of the now-apparent, long-term implications of forcing such a normally submissive creature into a more dominant role...";
						increase Libido of Player by 1;
				else:
					if Player is male:
						say "     She seems particularly affectionate to one of her own kind, and inevitably pulls away. Facing away from you, you hear her softly sing, offering you to overtake her, a plea that is completely lost on you. Try as she might she can't compel you to mount her, an apparently mental quirk preventing you from fulfilling such a dominant role on a creature who [if HP of Player > 0]you've submitted to outright[else]has bested you[end if]. This doubtlessly flusters the dragoness, and she's forced to take affairs into her own flippers. Returning, she forces you onto your side - to which you comply - before you watch as her thick tongue caresses[if Cock Count of Player > 1] one of[end if] your emergent, [cock size desc of Player] cock[smn].";
						say "     Her lewd endeavors need only be brief to bring you to full arousal, continuing to suck on your [cock size desc of Player] rod for a while longer before she relents. Clearly not used to this, she awkwardly uses her tail to aim [if Cock Count of Player > 1]one of your dicks[else]your dick[end if] into the needy hole, resting partially on you as she slowly pushes its head into her soft cunt, [if Cock Length of Player >= 18]faintly churring in pleasure before she acclimates to your size[else]cooing softly in approval as it descends into the folds of her flesh[end if].";
						say "     From here, she makes an earnest effort to use you, rocking her large body against your[if Cock Length of Player > 15] thick[end if] meat with an increasingly reckless fervor, occasionally nipping you an aggressive show of passion before she sings out loudly, climaxing against your hard organ. Oddly, her song's pitch is knocked down an octave, and its powerful influence tied with the clenching of her stuffed portal is more than enough to force you into climaxing yourself, regardless of how far along you may have been, [if Cock Count of Player > 2]and causing your exposed members to unload against both your frames as you pump[else if Cock Count of Player is 2]and causing your exposed member to unload against both your frames as you pump[else]pumping[end if] her voracious hole full with your [Cum Load Size of Player] load.";
						say "     A little dizzied from the whole ordeal, she eventually pulls herself free of you. She departs with a playful nip, diving back into the water's depths, no doubt satisfied in spite of the irregular circumstances of this encounter. As you recover, you [one of]ponder[or]remind yourself of[stopping] the potential long-term implications of forcing such a normally submissive creature into a dominant role...";
					else:
						say "     Briefly sharing affection with one of her kind, she sniffs you over before finally relenting. Gently, she pins you to the ground with her body, facing her exposed cunt against your head; what she intends to have you do quite apparent.";
						say "     Driven by your submissive inclinations, you comply with such gusto that it takes the dragoness aback, your thick tongue teasing the portal's soft entrance. Cooing softly, she seems to rather enjoy having her need be attended to in such an eager manner, more so than you imagine she thought she would...";
						say "     She presses her hole more firmly against you, coaxing your explore her depths with your slick organ, its soft folds parting to accommodate your writhing intrusion. Tasting her emergent juices, you too can't help but be aroused, [if Player is female]aching cunt[sfn] left unattended[else]body aching with insatiable need[end if]. All the while the beast grows more and more aggressive in asserting her need, occasionally nipping you into working harder, until the rate of your slippery affections rise to a feverish pace, singing as you're driven by an overwhelming desire to pleasure this aquatic mistress.";
						say "     Much to your blind fervor's joy, you're rewarded with your endeavors when you feel her sexual fluids flood your maw, her passage tightening around your tongue as she cries out in orgasm, leaving you to simply writhe in unattended need.";
						say "     Eventually, she crawls off you, satisfied with your offering, she gives you a cheeky nip before she turns to dive back into the waters. As you recover before setting off, you contemplate the dragoness's strange change in demeanor, and the long-term implications of forcing such a normally submissive creature into a more dominant role...";
						increase Libido of Player by 1;
				fsdfdomshift;
			else: [Non-Submissive Conventional]
				if Player is male:
					say "     She seems particularly affectionate to one of her own kind, and inevitably pulls away. Facing away from you, you hear her softly sing, coaxing you into overtaking her. Driven by your increasingly feral mind[if HP of Player < 1] and too exhausted to fight for control[end if], you slowly pull yourself on top of dragoness, much to the beast's cooing approval. You thrust impotently against her scaled haunch before you're sufficiently hard, carefully moving to guide[if Player is male] one of[end if] your [cock size desc of Player] cock[smn] into her hungry cunt.";
					say "     [one of]You're initially gentle in forcing it in, the dragoness cooing softly as your rod slowly descends[or]Flared by a tinge of feral-charged aggression, you show your dominion by thrusting into her with sudden and reckless abandon, she wails softly in such abrasive pleasure as your drill your rod deep[at random] into the folds of her flesh. Your pace rapidly ascends as you fuck the dragoness, each thrust forcing and ecstatic wail out from the beast's lips, eager hole squeezing tightly around your[if Cock Length of Player > 15] substantial,[end if] throbbing organ.";
					say "     Very suddenly, she cries out, reveling in being rammed [if HP of Player > 0]underneath a virile beast such as you[else]by someone regardless of having bested them in combat[end if]. The sound of her voice, along with her clenching hole, is enough to make quick work of you, forcing you to roar out in pleasure as you finally fire off your [Cum Load Size of Player] load into the dragoness.";
					say "     This is more than enough to trigger her own climax, her greedy hole milking every last drop of seed you have to offer her[if Ball Size of Player > 5], even as she visibly bloats to abide it[end if]. Eventually, you manage to pull yourself free of her, the dragoness turning to offer you some soft affections before she descends back into the depths of the ocean. As you recover and regain your clarity, you see her look back at you from within the water, perhaps hoping to see you again.";
				else:
					say "     Briefly sharing affection with one of her kind, she sniffs you over before finally relenting. Gently, she pins you to the ground with her body, facing her exposed cunt against your head; what she intends to have you do quite apparent.";
					say "     [if HP of Player > 0]Sheepishly, you compel yourself[else]Hard-pressed to oblige her, her persistent smearing eventually compels you[end if] into obliging the dragoness's need, your thick tongue teasing the portal's soft entrance. Cooing softly, she writhes and trembles with anticipation, eager for her need to be attended to.";
					say "     Eventually, you drive yourself to explore her depths with your slick organ, its soft folds parting to accommodate the writhing intrusion. Tasting her emergent juices, you too can't help but be aroused, and you soon feel her own tongue [if Player is female]sampling your taste, the appendage showing no restraint in reciprocating your attendance[else]caresses your side, doing little to assuage your insatiable need[end if]. As your pace picks up, so too does her affection, until the rate of your slippery affections rise to a feverish pace, singing as you're driven by an overwhelming desire to satisfy your wanton desire.";
					say "     Much to your blind fervor's joy, you're rewarded with your endeavors when you feel her sexual fluids flood your maw, her passage tightening around your tongue as she cries out in orgasm, [if Player is female]your own cunt[sfn] aching with bliss as this is enough to push you over the edge as well[else]leaving you to simply writhe in unattended need[end if].";
					say "     Eventually, she crawls off you, her tainted need satisfied for now. Briefly attending to you, she eventually turns to dive back into the waters. It takes you a while to recover from the whole ordeal, before setting off once more.";
		else:
			say "     Carefully, she forces you onto your back by her snout, pinning you down in a same manner. She gives you a cute and affectionate look, much-maligned by her paradoxically bestial form[if intelligence of Player > 14]. You wager she's trying to sway you into compliance by appearing non-threatening, to little success[else]. Uncertain of her intent, you remain cautious and wait[end if].";
			If "Touched by Madness" is listed in feats of Player and ((player is kinky and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds) and scalevalue of Player < 4 and FSDOPEN < 2 and inasituation is false:
				If FFSDUBM is false:
					say "     Suddenly, she appears to become confused about these circumstances, some otherworldly influence throwing her off-kilter, going so far that she almost seems to have lost track of where she is; however, this absent-mindedness is only momentary before she snaps back to attention, feral eyes aglint with a new, twisted intent. Her affections become more fervent and insistent. Slick, dripping tongue absolutely drenching your smaller form with her salty saliva before she finally relents.";
					say "     By now, you're clearly aroused from these tainted fluids, but she doesn't even remotely seem interested in that. Rather, she would instead pull herself over you, soft underbelly grinding against your lubricated, [bodydesc of Player] frame before she stops, showing no desire to spare you of her massive weight, her reasoning by now very clear as you feel yourself pushed past the lips of her aquatic vent.";
					say "     Unable to contest her new desires, she begins to grind herself against the sand, her portal tightening against your wholly engulfed frame, pulling you deeper into her slick depths. This overwhelming heat; this hungry, demanding tunnel, it[if Player is not neuter]'s more than enough to set you off, almost immediately, sealing your fate when this is all that this dragoness needs to find bliss herself[else] torments you to no end, your fate soon sealed as the dragoness finds her bliss[end if], pulling you into that final, inevitable destination before your senses fade. The dragoness would no doubt recover and move on, the occupancy of her new captive not outwardly apparent to those who might see her large form...";
					now FFSDUBM is true;
				else:
					say "     You see into her eyes and you know of her twisted intent. [if HP of Player is 0 and player is not submissive]Your better judgment drives you to try and flee, but her hold on you is absolute; you will be subject to her tainted verdict regardless. In spite of her assertion, she offers what she doubtlessly now perceives as her offspring plenty of affection, though her thick, fish-smelling tongue's endeavors are dual in purpose, preparing you for what is to follow[else]Overwhelmed by her maternal pull, she need only turn sideways, exposing her body's inviting lips to you, to compel you to them. Your tongue slathering this hole with affection as she reciprocates across your [bodydesc of Player] frame, now doubtlessly perceiving you as her offspring. What better judgment you might of had is deflected by the reality of your lack of choice[end if].";
					say "     Blatantly aroused as you are, her satisfaction is met, [if HP of Player is 0 and player is not submissive]forcing herself down on you once more, her body's inviting lips embracing your smaller form before you disappear entirely under her[else]compelling you to enter her hungering portal, though you might only comply with your head and torso before she returns upright once more, engulfing the remainder of you with ease[end if].";
					say "     Wailing songs of her perverse need muffled within these confines, her portal tightens against your wholly engulfed frame, pulling you deeper into her slick depths as she seeks her wanton reprieve. This overwhelming heat; this hungry, demanding tunnel, now all-too familiar to you, it[if Player is not neuter]'s but a moment before it elicits your orgasm, sealing your fate when this is all that this dragoness needs to find bliss[else] torments you to no end, your fate soon sealed as the dragoness finds her bliss[end if], pulling you into that final, inevitable destination before your senses fade. The dragoness would no doubt recover and move on, the occupancy of her new captive not outwardly apparent to those who might see her large form, and doubtlessly happy that you are hers...";
				WaitLineBreak;
				if (player is kinky and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds:
					say "     In due time you come to, the thick, hard walls of an egg surrounding you; however, you feel yourself slightly tumbling and shifting about, and when you attempt to break free of the egg you find yourself unable to. The heat is overwhelming, [if Player is not neuter]your arousal quickly rising once more, driving you to pleasure yourself uncontrollably within these confines, making a further mess of yourself[else]your arousal quickly rising once more, forced to abide the torment of these demented confines[end if].";
					infect;
					infect;
					say "     After what seems like forever, you can see the familiar light of the outside coming through the translucent walls of your prison, compelling you to finally break free, and once you acclimate to the open air it's made very clear -why- you were forced within those confines longer than natural";
					if a random chance of 1 in 2 succeeds and MaleList is not banned:
						say ". A male sea dragon is before you, looking at his somewhat tired and lust-addled form, it's clear that he happened upon your egg and was compelled to use it for his own sexual gratification - much to your expense.";
						if ( ( player is kinky and a random chance of 3 in 8 succeeds) or a random chance of 1 in 5 succeeds):
							say "     Looking at him now, he doesn't appear fully satisfied, and looks as though he might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
							if Player consents:
								let bonus be ( dexterity of Player - 10 ) / 2;
								let target be 14;
								if Player is submissive, increase target by 1;
								let dice be a random number from 1 to 20;
								if bonus + dice > target:
									say "     You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[else]ground[end if].";
									now FSDOPEN is 0;
								else:
									say "     You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[else]ground[end if], and in seconds the dragon is on top of you, ready to subject you to his desire.";
									now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
									say "[fsdm attack]";
							else:
								say "     You decide the best thing to do is just let him have his way with you, the eager dragon soon pinning you against the [if showlocale is true]sand[else]ground[end if], ready to subject you to his desire.";
								if HP of Player < 1, now HP of Player is 1;
								now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
								say "[fsdm attack]";
						else:
							say "     Doubtlessly exhausted as he is he turns to depart, leaving you to retreat and gather your belongings - strewn across the beach as they are - along the way.";
							now FSDOPEN is 0;
					else:
						say ". Another sea dragoness is before you, [one of]though you instinctively know that it's[or]fairly certain that it's not[at random] the same one that first trapped you. Looking at her somewhat tired and lust-addled form, it's clear that she was compelled to use your egg for her own sexual gratification - much to your expense.";
						if ((player is kinky and a random chance of 1 in 2 succeeds) or (player is not kinky and a random chance of 1 in 5 succeeds)):
							say "     Looking at her now, she doesn't appear fully satisfied, and looks as though she might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
							if Player consents:
								let bonus be ( dexterity of Player - 10 ) / 2;
								let target be 14;
								if Player is submissive, increase target by 1;
								let dice be a random number from 1 to 20;
								if bonus + dice > target:
									say "     You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[else]ground[end if].";
									now FSDOPEN is 0;
								else:
									say "     You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[else]ground[end if], and in seconds the sea dragoness is on top of you, ready to subject you to her desire.";
									now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
									say "[fsdf attack]";
							else:
								say "     You decide the best thing to do is just let her have her way with you, the eager sea dragon soon pinning you against the [if showlocale is true]sand[else]ground[end if], ready to subject you to her desire.";
								if HP of Player < 1, now HP of Player is 1;
								now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
								say "[fsdf attack]";
						else:
							say "     Doubtlessly exhausted as she is she turns to depart, leaving you to retreat and gather your belongings - strewn across the beach as they are - along the way.";
							now FSDOPEN is 0;
				else:
					say "     In due time you come to, greeted by the thick and hard confines of an egg, light from the outside spilling through the translucent surface and compelling you to break yourself free. Exposed to the salty air once more, you were thankfully left on the beach, and you clean yourself off before gathering your belongings as they are, strewn across the beach.";
					infect;
			else if Player is male and Cock Length of Player > 15 and a random chance of 3 in 4 succeeds:
				say "     You are pushed onto your back, exposing your [if Cock Count of Player > 2]numerous, [cock size desc of Player] cock[else if Cock Count of Player is 2]dual, [cock size desc of Player] cocks[else][cock size desc of Player] cock[end if] to the beast. [if scalevalue of Player < 4]She chirps at you, the tone of which would infer that your oddly disproportionate anatomy amuses her, though not in a manner to suggest it's not to her liking, indicated when her tongue meets to caress along the length of your impressive rod[smn], her strangely arousing saliva almost immediately drawing you to attention[else]She draws out her tongue to caress along the length of your partially aroused rod[smn], its strangely arousing saliva almost immediately rendering you hard. She seems happy to encounter a creature even remotely close to her physical size, and if her infectious state didn't so readily betray her you'd say she prefer the variety, given her eagerness to make use of you[end if].";
				say "     Satisfied, her tongue retreats from your dick[smn]. Illustrating a clear intent to mount you, she carefully moves to crawl over your [bodytype of Player] form. [if scalevalue of Player < 4]Soft underbelly caressed along your diminutive frame, she at least shows enough care to not put a significant amount of weight on you, lest you find yourself crushed under her immense mass[else]Soft underbelly grinding across your form as she positions herself, you find that - even with your size remotely in her league - she's extremely heavy. Your immediate discomfort quickly made apparent to the dragoness, she makes some effort to shift some weight off you. In any case, at least the sand softens the pressure, if only by a bit[end if].";
				say "     Your vision is obviously obscured by the beast's expansive girth, though your sense of touch is more that sufficient a guide as you feel her cunt descend upon [if Cock Count of Player > 1]one of your [cock size desc of Player], throbbing tools[else]your [cock size desc of Player], throbbing tool[end if], an act that barely seems to phase her as she manages to envelop the impressive thing with little to no effort. Cooing softly in a show of approval [if scalevalue of Player < 4]down to[else]towards[end if] you, she relents only briefly before her massive form slowly begins to bob against its length.";
				say "     Eager to show off her tainted talent, the dragoness's bestial vent squeezes and massages along your cock's length with twisted determination, each descent of her body pounding you deeper into the sand. Driven by her wanton fervor she breaks out into song, the strange, auditory assault seemingly having the effect of intensifying your arousal, until you quickly cry out in bliss, your [Cum Load Size of Player] load flooding her hole[if Cock Count of Player > 2] while your brothers spill theirs impotently against her side[else if Cock Count of Player is 2] while its brother spills theirs impotently against her side[end if].";
				say "     She's not done with you yet, however; as she milks you dry - driven by her own, still-persisting need - you feel her underside strike your beleaguered form with greater zeal, after every descent. The light of your lust reignited in the midst of this feral wildfire, and you are forced to climax again and again until the dragoness finally finds ecstasy, her song's pitch peaking along with her, [if scalevalue of Player < 4], the intensity enough to knock you out[else]the intensity of which nearly knocking you out[end if].";
				say "     [if scalevalue of Player < 4]When you come to, you find the sea dragoness long gone and yourself half-buried in the epicenter of an embarrassing crater of sand. It[else]Eventually, she relinquishes her body's hold on you. She chirps happily at you, not really regarding the fact that you're partially buried in the sand from her weight, before she dives back into the water. You're still disoriented from the whole thing so it[end if] takes you awhile to pry yourself from the ground, find your things, and limp off back from whence you came.";
			else if a random chance of 2 in 3 succeeds or lastfsdfeeding - turns < 8:
				if Player is male:
					say "     With a soft chirp, you watch as her thick tongue moves to caress your exposed, [cock size desc of Player] dick[smn]. The slick, writing appendage finding little difficulty in coaxing you into arousal, she promptly engulfs [if Cock Count of Player > 1]one of them[else]it[end if] within the depths of her eager maw [if Cock Length of Player < 14]immediately, your member wholly consumed lost in her depths[else]with only marginal difficulty, her elongated neck illustrating a lewd practicality by hilting your impressive member inside her voracious hole[end if].";
					say "     You can't help but be overwhelmed by the sensation of her intense attendance, saliva[one of] strangely[or][stopping] potent in its ability to arouse you. [if Cock Length of Player < 10]No doubt as a result of this, combined with the fact that her maw is simply too large to articulately pleasure someone of your diminutive size, she often disengaged from her oral fixation to drag her slippery appendage across your torso and face before it returns back to your member[else]Her slippery appendage firmly wrapped around your sizeable tool, she bobs against the organ with fervent determination, her muffled songs of approval beckoned from her massive form strangely adept at eliciting further pleasure[end if]. [if scalevalue of Player < 4]Compelled by feral greed, her maw remains agape around your lower torso, which by now is absolutely drenched by her drool, her heated breath shielding you from the cold of the open, ocean air[else]The force of her avaricious maw often pushes your similarly sizeable form along the sand, clearly not intent on relinquishing your cock until it sates her tainted hunger[end if].";
					if Ball Size of Player > 5:
						say "     Driven by an ecstatic haze, your [cock size desc of Player] cock explodes into the dragoness. You would think she'd yield to such a torrential flow, but [if scalevalue of Player < 4]instead her sexual greed gets the better of her more gentle demeanor as she throws your smaller form up into the air - maw and tongue gripped firmly on you and your hose - to swallow down your copious fluids with a fervent efficiency, forcing you cling to her head with dear life[else]her impressive girth shows little difficulty in handling your expansive release, snout pinning your firmly to the sand as she relentlessly consumes every last drop[end if][if Cock Count of Player > 2], your numerous free members spilling their seed along her elongated neck[else if Cock Count of Player is 2], your free member spilling its seed along her elongated neck[end if].";
					else:
						say "     The effect of both her carnal affections and infectious influence drive you into a blinding lust frenzy, until you're lost in a furious haze of blissful release, the greedy dragoness eager to drain you of every last drop of your [Cum Load Size of Player] load[if Cock Count of Player > 2], her tongue occasionally moving to lick up what seed might emerge from your neglected members[else if Cock Count of Player is 2], her tongue occasionally moving to lick up what seed might emerge from your neglected member[end if].";
					say "     Satisfied with milking her victim dry. She sets you off before retreating back into the waters. After all that, you might have figured yourself as coming out on top if it were not at the expense being a saliva-smeared, fish-smelling, and lust-addled mess afterwards.";
				else if Player is female:
					say "     She regards you with a soft rumble before you see her tongue move to caress [if Cunt Count of Player > 1]one of your [bodytype of Player] cunts[else]your [bodytype of Player] cunt[end if]. The thick organ sends shivers down your spine as it leaves a trail of saliva across the vulnerable portal. [if Cunt Depth of Player < 5]Its initial probing makes it abundantly clear that the oversized appendage isn't going to fit no matter how hard she might try, and you take reprieve in knowing that she isn't going to challenge that fact. She instead opts to stimulate you externally by grinding her tongue's slimy surface against your exposed hole[else]She is at least gentle as the saliva-slicked appendage probes the soft folds of your exposed hole, the dragoness slow and drawn out in its motion as her tongue gradually floods the depths of your vaginal passage. Writhing in uncontrollable pleasure, the beast no doubt finds your display rather amusing to her[end if].";
					say "     [if scalevalue of Player < 4]Driven to so readily violate you, the massive creature partially engulfs your pelvic region within her moist maw, her heated breath wafting up to wash over you as she makes a complete mess of your lower torso[else]Maintaining her irreverent assault, you frequently feel her draconic snout grind itself against your vulnerable form in the midst of her lewd affections, firmly enough to start pushing you deeper into the sand underneath you[end if]. The touch of her tainted saliva exasperating the sensation of her tongue's continued attendance, it's more than enough to very rapidly bring you to climax against the worming appendage. [if Cunt Depth of Player < 5]Greedily, she licks up your sexual fluids, her scaled lips gently sucking against the [bodytype of Player] portal to coax you into offering her more. This voracious attitude, mixed with your heightened libido, is more than enough to cause you to orgasm a second time, and then a third; the dragoness relentless in cleaning you out[else]The taste of your sexual fluids only encourages her to ram you with the slick organ harder, bringing in its wake a chain of orgasms, the next more blindingly intense than the other. You nearly pass out before she finally relents[end if].";
					say "     Satisfied with sucking you dry - stained with the beast's saliva notwithstanding - she pulls herself from you. She noses you off in teasing affection before she crawls back into the ocean's depths from whence she came. You're so disoriented from the occurrence that it takes you awhile to gather your mind and stand back up, running off.";
				else if anallevel is 3:
					say "     She regards you with a soft rumble, nuzzling you with slight disconcertion at your lack of equipment for her to have fun with, until she concedes to moving her tongue to caress your ass. The thick organ sends shivers down your spine as it leaves a trail of saliva across the vulnerable anal ring.";
					say "     [if scalevalue of Player < 4 and the player is not twistcapped]The slimy organ really puts the strain on you as it's too large to easily fit in that hole, but she at least shows a gentle patience in violating you and in due time you feel it slowly worm its way in. You're so diminutive relative to her own scale that your behind is easily eclipsed by her toothy maw, making you frightful that the beast may have half a mind to swallow you whole, though for now it only has the effect of coating your lower half in his saliva[else]Its initial efforts are probing, curious as to how pliable your hole might be, before the slimy organ begins to worm its way into the depths of your bowels with little obstruction. The dragoness offers up a muffled chirp as the unengulfed portion of her long appendage frequently buckles and bends prior to its brief re-immersion, the organ making a mess of your [bodytype of Player] thighs and groin as she fucks you with her tongue[end if]. Its fervent motion doubtlessly lubricated by copious amounts of the beast's saliva, you feel her irreverent affections grab a hold of you, pulling you further and further into an aroused state until you are overwhelmed by the ecstasy of the beast's touch.";
					say "     Your audible moans amusing to the dragoness, you can only writhe in ecstatic agony as she continues to assault you with no end in sight. You can't satisfy these overwhelming desires and you feel like the beast's irreverent affection will knock you unconscious before she finally relents. Amused as she watches you writhe about the sand, she inevitably pulls the slick organ free of you.";
					say "     She turns to depart. Not completely exhausted and driven into a lustful frenzy by the creature's influence, you try to crawl after her only for the beast to dive back into the water's depths. You collapse from exhaustion, and it takes you awhile to get back up and clean the mess of bodily fluids the dragoness left in her wake.";
				else:
					say "[fsdfeeding]";
			else:
				say "[fsdfeeding]";
	if FSDOPEN is 0:
		now tempnum is 0;
		fsdbiasshift;

to say fsdfeeding:
	if fsdfeedmemory is 0:
		say "     Nosing your stomach briefly, she suddenly lifts her head and starts to clench her body in a strange way, making a slightly unsettling sound before her head descends once again to meet face. Strangely silent and making a subtly odd expression, you shrug at her, not exactly sure what she wants from you.";
		say "     She noses your cheek. What, she wants a kiss? You're not really in a position to decline and you suppose there are worse thing to - oh heavens no! Just as you open your mouth she reciprocates by flooding it with partially digested fish. Eyes abulge, you try to free yourself of her only to be met with her maw's firm grip, forcing you to swallow the sickening cocktail of seafood.";
		say "     Much to your relief, she inevitably finishes, chirping cutely at you. You find you can only scowl at the dragoness, an expression which is entirely lost on her as she regards you immense pride before departing back into the waters. Right about now you'd be willing to subject yourself to even the most horrifying eldritch monstrosities if for just a shot of mouthwash.";
		increase fsdfeedmemory by 1;
	else if fsdfeedmemory is 1:
		say "     As the dragoness starts making a familiar sound you're immediately on to her. Oh hell no, you're not having any of this again, and you exploit her briefly distracted state to get up and try to flee, a rebellion you find immediately quelled when she slaps you down with a flipper, barely even regarding your attempted escape.";
		say "     Her maw descends upon your [bodytype of Player] face, the devious portal engulfing it as she presses your awful smelling meal against your tightly-shut lips. You can't hold your breath forever and you inevitably gasp for air, only to be rewarded with an additional helping of the beast's grotesque meal. Oddly enough, it doesn't seem that bad this time. Perhaps you're acclimating to it, or her infection is driving you to accommodate her whims. In either case, she seems ever so cheerful that her friend is fed, and gives you a wet lick before descends back into the water's depths.";
		if a random chance of 1 in 3 succeeds, increase fsdfeedmemory by 1;
	else if fsdfeedmemory is 2 and anallevel is 3:
		say "     Seeing her prepare to feed you, your proper senses compel you to protest. You've had -enough-, and you're mindful enough of the creature's tricks that you're not going to let her feed you this time. When she moves over you, you respond by facing into the beach floor and remaining this way no matter how much she tries to turn you over.";
		say "     She lets out a muffled, perturbed rumble, you are victorious! Or so you initially think, as while stares at you facing the ground she comes up with another plan. You're not sure what to do when she remains quiet for a short while, but her clever plan is quickly illuminated when you suddenly feel the dragoness's snout pressed firmly against your behind.";
		say "     You're - rightfully so - taken off guard when you feel your bowels flood with her ill-conceived meal, [if scalevalue of Player < 4]your beleaguered hole quickly strained under the excessive flow as your belly quickly bulges with her contents. She's a bit more liberal with feeding you this time, perhaps to teach you a lesson for trying to avoid getting fed, though you can at least take comfort in not having to taste its foul contents this time[else]though you're at least large enough to handle the rather lewd assault; however, her lack of familiarity with this tactic shines through when the beast apparently assumes she's underfed you, and only proceeds to unload more and more of the fish through your beleaguered hole, to the point where your belly bulges blatantly with her goods[end if].";
		say "     Finishing, she sings happily, hobbling about in a strange, self-congratulatory dance. Oh yeah, you bet she thinks she's so clever for outsmarting you, you'd try to ruin such a bright mood if you weren't so unbelievably embarrassed by these turn of events. Finally, she hops off, happy as she ever can be. [if scalevalue of Player < 4]Struggling to return to your feet[else]It takes your bloated self to properly pull yourself to your feet. Inevitably[end if], you gather your things and pull your overstuffed form along. Nobody must know what happened here.";
		increase fsdfeedmemory by 1;
	else:
		say "     You watch as she begins to cough up some food for you. By this point you've been so frequently exposed to her feeding methods that, in some maddening sense, you welcome it. At least, enough so that you don't bother making any futile protests; can't really complain about a free meal, anyways.";
		say "     Complying, you open your mouth as she descends upon you, promptly meeting it with a rush of the fish matter, offering faint chirps of approval as she feeds you. Happy that you don't cause her any trouble this time, she nuzzles you affectionately after she finishes, her tongue cleaning up any mess of fish from your face - not to much benefit as it's merely replaced with an excessive heaping of her saliva. Inevitably, she departs, letting you return to your prior endeavors.";
	decrease hunger of Player by a random number between 10 and 24;
	now lastfsdfeeding is turns;
	infect; [additional infection]


To say fsdf loss:
	if Player is not submissive and ( Libido of Player - humanity of Player > 45 or ( Libido of Player - humanity of Player > 60 and "Dominant" is listed in feats of Player ) ) and ( BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness" ) and player is male:
		say "     Just as you drive the dragoness back, the creature lets out a powerful cry that compels your twisted psyche to yield. Turning away from you, you hear her softly sing, coaxing you into overtaking her. Driven by your increasingly feral mind you slowly pull yourself on top of dragoness, much to the beast's cooing approval. You thrust impotently against her scaled haunch before you're sufficiently hard, carefully moving to guide[if Player is male] one of[end if] your [cock size desc of Player] cock[smn] into her hungry cunt.";
		say "     [one of]You're initially gentle in forcing it in, the dragoness cooing softly as your rod slowly descends[or]Flared by a tinge of feral-charged aggression, you show your dominion by thrusting into her with sudden and reckless abandon, she wails softly in such abrasive pleasure as your drill your rod deep[at random] into the folds of her flesh. Your pace rapidly ascends as you fuck the dragoness, each thrust forcing and ecstatic wail out from the beast's lips, eager hole squeezing tightly around your[if Cock Length of Player > 15] substantial,[end if] throbbing organ.";
		say "     Very suddenly, she cries out, reveling in being rammed underneath a virile beast such as you. The sound of her voice, along with her clenching hole, is enough to make quick work of you, forcing you to roar out in pleasure as you finally fire off your [Cum Load Size of Player] load into the dragoness.";
		say "     This is more than enough to trigger her own climax, her greedy hole milking every last drop of seed you have to offer her[if Ball Size of Player > 5], even as she visibly bloats to abide it[end if]. Eventually, you manage to pull yourself free of her, the dragoness turning to offer you some soft affections before she descends back into the depths of the ocean. As you recover and regain your clarity, you see her look back at you from within the water, perhaps hoping to see you again...";
		infect;
	else:
		say "     Before you can land the final blow, the dragoness suddenly backs away and concedes to you. Having asserting your dominance, it's clear she intends to offer herself to you";
		if Libido of Player < 40 and "Dominant" is not listed in feats of Player:
			say ". In no mood to humor her need, you send her off, slowly retreating back into the water's depths. You go about your business once more, now that the matter has been attended to.";
		else:
			say ". Shall you oblige her desire? Otherwise, you'll shoo her off.";
			if Player consents:
				fsdfvicmenu;
				now boundmod is 0;
			else:
				say "     You choose to leave the dragoness with her need unsated, going about your business once more.";

to say fsdf desc:
	setmongender 4; [creature is female]
	psycheeval;
	libidoeval;
	now FSDOPEN is 0;
	now firebreathcount is 0;
	now firebreathready is false;
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     You notice something in the water, which appears to be a large shadow on its approach towards you. Suddenly, the prior silence is shattered with the concussive crashing of waves as a massive beast hurls itself from under its surface, landing on the beach close to you. [one of]The dragoness looks around briefly before seeing you, softly cooing[or]Looking at you, the dragoness briefly sings at you, the influence of which sends a jolt of pleasure though you[or]The dragoness chirps, tilting her finned head at you. She probably thinks she can pull off looking cute while still being a massive monster[at random]. You'd imagine its fin-like limbs would be ill-equipped to move across land, but she's quick to prove otherwise as the massive bulk begins rushing down upon you.";

Section 1-2 - Player Victory

to fsdfvicmenu:
	now calcnumber is -1;
	say "     What will you do?";
	let Trixieexit be 0;
	while Trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if Player is male][link]Mount her[as]1[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if Player is male][link]Mount her anally[as]2[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if Player is male][link]Have her suck your dick[as]3[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(4) [if Player is female][link]Have her eat your cunt[as]4[end link][else][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(5) [link]Eat her out[as]5[end link][line break]";
		LineBreak;
		say "(0) [link]Nevermind.[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Choice.";
		if calcnumber is 1:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDF_1]"; [Cunt Pitching]
				now tempnum is 0;
				fsdbiasshift;
				now Trixieexit is 1;
		else if calcnumber is 2:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDF_2]"; [Anal Pitching]
				now tempnum is 0;
				fsdbiasshift;
				now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDF_3]"; [Oral Receiving Cock]
				now tempnum is 0;
				fsdbiasshift;
				now Trixieexit is 1;
		else if calcnumber is 4:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDF_4]"; [Oral Receiving Cunt]
				now tempnum is 0;
				fsdbiasshift;
				now Trixieexit is 1;
		else if calcnumber is 5:
			say "[FSDF_5]"; [Oral Giving cunt]
			now tempnum is 0;
			fsdbiasshift;
			now Trixieexit is 1;
		else:
			say "     You have some second thoughts and choose against having your way with the dragoness, leaving her to go about your business once more."; [turn down]
			now Trixieexit is 1;

to fsdfdomshift:
	if fsddom < 7:
		increase fsddom by 1;
	else if fsddom is 7:
		increase fsddom by 1;
		say "     [italic type]You imagine that you've reached the maximum number of sea dragonesses you can turn dominant, though you'll likely still catch stragglers here or there[roman type].";

to say FSDF_1: [Cunt Pitching]
	say "     It doesn't take much before the[if scalevalue of Player < 4] massive[end if] beast obliges your endeavor to expose her undercarriage, churring eagerly at you. You see her cunt as clear as day. Shall you stretch her out a bit before proceeding? Otherwise, you'll get straight to the point.";
	if Player consents:
		say "     Hand reaching down to fondle along the sea dragoness's slick, muscled hide, pinched to subtle cleft, a digit lewdly hooks itself within its confines, forcing its way past her yielding lips. Groaning softly, the beast obliges being subjected to this act, pressing against your touch and inviting another digit to delve into its depths, followed by another...";
		say "     Her bestial pussy easily obliges this intrusion, [if scalevalue of Player < 4]even as you begin to[else]and only begins to really show any resistance when you start to[end if] use your entire hand. Eager to be abused so, the monsters overtaken by her own lust, bestial cunt quickly dripping against your limb's persistent pounding. Eventually satisfied, you pull your arm free and get to the task at hand.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if Cock Count of Player > 1: [1 = Yes, cunt. 2 = Shared, ass and cunt. 0 = No.]
		say "     You figure you can use [if Cock Count of Player is 2]both[else]two[end if] of your cocks. Shall you[if Cock Length of Player < 20]?[else]? You're probably too well-endowed to fit both of them in there, though, so the only choice you have is to stick the other up her ass.[end if]";
		if Player consents:
			if Cock Length of Player > 19:
				now tempnum2 is 2;
			else:
				say "     Shall you penetrate her cunt exclusively? Otherwise, you'll make use of both holes.";
				if Player consents:
					now tempnum2 is 1;
				else:
					now tempnum2 is 2;
		else:
			now tempnum2 is 0;
	else:
		now tempnum2 is 0;
	say "     Exposing your [cock size desc of Player] dick[smn] to the open air, [if tempnum is 1]your prior bit of fun has already left you hard, quickly sinking[else]it takes a little work to get you fully hard before slowly sinking[end if] ";
	if tempnum2 is not 2:
		say "[if tempnum2 is 1 and Cock Count of Player > 2]the head of two of them[else if tempnum2 is 1]the head of both of them[else]its head[end if] into the monster's[if Cock Length of Player > 18 or tempnum2 is 1] tight[end if] hole";
	else:
		say "the head of one of them into the monster's[if Cock Length of Player > 18] tight[end if] hole, [if Cock Count of Player > 2]another[else]the other[end if] down her ass";
	if tempnum is 1:
		say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you no resistance, your earlier work seems to have made inching yourself in deeper a fair bit easier[else]She gives you virtually no resistance, given your earlier work[end if], especially given her clear enjoyment from it.";
	else:
		say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you only slight resistance; even though she wasn't prepared for you, she certainly wants it[else]She gives you barely any resistance, clearly wanting it even if she hasn't received any preparation[end if].";
	say "     Churring and moaning loudly, the[if scalevalue of Player < 4] massive[end if] beast revels in being railed, [if tempnum2 is 2]her stuffed, twin holes squeezing eagerly against their invaders, slicking them with her juices[else if tempnum2 is 1]her stuffed, eager cunt squeezing greedily around its twin invaders, slicked by her juices[else]her stuffed, eager cunt squeezing greedily around its invader, slicked by her juices[end if]";
	say ". Blatantly submissive sea dragoness's reveling in being fucked so, she sings loudly [if scalevalue of Player < 4] down[end if] at you in her lustful haze, [bodytype of Player] form trembling with each[if scalevalue of Player > 3] powerful[end if] thrust.";
	say "     As time passes, your grip along the thick girth of the beast tightens, drawing ever close to bliss. Monster twisting and pressing against you, she can't get enough of your cock[if tempnum2 > 0]s[end if]. Shall you pull out at the last second?";
	if Player consents:
		say "     Just at the cusp of ecstasy, you wrench your tool[if tempnum2 > 0]s[end if] free of the sea dragoness's tight hole[if tempnum2 is 2]s[end if], grinding against her hide until you're set off, firing your [Cum Load Size of Player] against her underside, [if Ball Size of Player > 5]utterly drenching it[else]making an embarrassing mess of it[end if]. It doesn't seem to be enough to set her off, her abused [if tempnum2 is not 2]cunt[else]holes[end if] dribbling against the open air. Should you help her out?";
		if Player consents:
			say "     Simple fingering? Otherwise, you'll eat her out.";
			if Player consents:
				say "     Stained by a mix of her juices and your own seed, you thrust a digit between her supple folds. Whining deeply, the needy sea dragoness doesn't take long before your attendance gives her reprieve, honey dripping between your tightly clenched fingers, staining the sand and further making an embarrassing mess of herself.";
			else:
				say "     Moving in, your lips embrace her supple folds, tongue plunging[if scalevalue of Player < 4] deep[end if] into her dripping hole. Whining deeply, the needy sea dragoness doesn't take long before your affection sets her off, maw flooded with her honey until it drips to stain the sandy floor.";
			say "     Stepping away, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining use before she finally drags herself back into the sea, no doubt eager to be used by you again, some day...";
		else:
			say "     Stepping away, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining before she finally drags herself back into the sea, its lust left unsated, and no doubt eager to attend you again, some day...";
	else:
		say "     In one final thrust, you [if Player is knotted]tie[else]hilt[end if] your tool[if tempnum2 is 1]s[end if] within the sea dragoness's tight hole, crying out as you're set off, flooding her womb with your [Cum Load Size of Player] load[if Ball Size of Player > 5] and quickly beginning to sputter from her[end if]. This is more than enough to set the beast off, singing out weakly as her cunt squeezes and milks you of all you have to offer her.";
		say "     Wrenching yourself free, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining before she finally drags herself back into the sea, no doubt eager to attend you again, some day...";
	now tempnum is 0;
	now tempnum2 is 0;

to say FSDF_2: [Anal Pitching]
	say "     It doesn't take much before the[if scalevalue of Player < 4] massive[end if] beast obliges your endeavor to expose her undercarriage, churring eagerly at you. You see her hole as clear as day. Shall you stretch her out a bit before proceeding? Otherwise, you'll get straight to the point.";
	if Player consents:
		say "     Hand reaching down to fondle along the sea dragoness's slick, muscled hide, pinched to subtle cleft, a digit lewdly hooks itself within its confines, shoving its way into the supple flesh of her bowels. Groaning softly, the beast obliges being subjected to this act, pressing against your touch and inviting another digit to delve into its depths, followed by another...";
		say "     Her hole easily obliges this intrusion, [if scalevalue of Player < 4]even as you begin to[else]and only begins to really show any resistance when you start to[end if] fist her. Eager to be abused so, the monster's overtaken by her own lust, bestial cunt quickly dripping against your limb's persistent pounding. Eventually satisfied, you pull your arm free and get to the task at hand.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if Cock Count of Player > 1: [1 = Yes, ass. 2 = Shared, ass and cunt. 0 = No.]
		say "     You figure you can use [if Cock Count of Player is 2]both[else]two[end if] of your cocks. Shall you[if Cock Length of Player < 20]?[else]? You're probably too well-endowed to fit both of them in her ass, so the only choice you have is to go for both holes.[end if]";
		if Player consents:
			if Cock Length of Player > 19:
				now tempnum2 is 2;
			else:
				say "     Shall you penetrate her ass exclusively? Otherwise, you'll make use of both holes.";
				if Player consents:
					now tempnum2 is 1;
				else:
					now tempnum2 is 2;
		else:
			now tempnum2 is 0;
	else:
		now tempnum2 is 0;
	say "     Exposing your [cock size desc of Player] dick[smn] to the open air, [if tempnum is 1]your prior bit of fun has already left you hard, quickly sinking[else]it takes a little work to get you fully hard before slowly sinking[end if] ";
	if tempnum2 is not 2:
		say "[if tempnum2 is 1 and Cock Count of Player > 2]the head of two of them[else if tempnum2 is 1]the head of both of them[else]its head[end if] into the monster's[if Cock Length of Player > 18 or tempnum2 is 1] tight[end if] asshole";
	else:
		say "the head of one of them into the monster's[if Cock Length of Player > 18] tight[end if] asshole, [if Cock Count of Player > 2]another[else]the other[end if] down her cunt";
	if tempnum is 1:
		say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you no resistance, your earlier work seems to have made inching yourself in deeper a fair bit easier[else]She gives you virtually no resistance, given your earlier work[end if], especially given her clear enjoyment from it.";
	else:
		say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you only slight resistance; even though she wasn't prepared for you, she certainly wants it[else]She gives you barely any resistance, clearly wanting it even if she hasn't received any preparation[end if].";
	say "     Churring and moaning loudly, the[if scalevalue of Player < 4] massive[end if] beast revels in being railed, [if tempnum2 is 2]her stuffed, twin holes squeezing eagerly against their invaders, slicking them with her juices[else if tempnum2 is 1]her unattended cunt aching for attention as it drips to stain the sand, anal ring squeezing tightly around its twin invaders[else]her unattended cunt aching for attention as it drips to stain the sand, anal ring squeezing tightly around its invader[end if]";
	say ". Blatantly submissive sea dragoness's reveling in being fucked so, she sings loudly [if scalevalue of Player < 4] down[end if] at you in her lustful haze, [bodytype of Player] form trembling with each[if scalevalue of Player > 3] powerful[end if] thrust.";
	say "     As time passes, your grip along the thick girth of the beast tightens, drawing ever close to bliss. Monster twisting and pressing against you, she can't get enough of your cock[if tempnum2 is 1]s[end if]. Shall you pull out at the last second?";
	if Player consents:
		say "     Just at the cusp of ecstasy, you wrench your tool[if tempnum2 is 1]s[end if] free of the sea dragoness's tight hole[if tempnum2 is 2]s[end if], grinding against her hide until you're set off, firing your [Cum Load Size of Player] against her underside, [if Ball Size of Player > 5]utterly drenching it[else]making an embarrassing mess of it[end if]. It doesn't seem to be enough to set her off, her [if tempnum2 is 2]abused[else]unattended[end if] cunt dribbling against the open air. Should you help her out?";
		if Player consents:
			say "     Simple fingering? Otherwise, you'll eat her out.";
			if Player consents:
				say "     Stained by a mix of her juices and your own seed, you thrust a digit between her supple folds. Whining deeply, the needy sea dragoness doesn't need long before you attendance gives her reprieve, honey dripping between your tightly clenched fingers, staining the sand and further making an embarrassing mess of herself.";
			else:
				say "     Moving in, your lips embrace her supple folds, tongue plunging[if scalevalue of Player < 4] deep[end if] into her dripping hole. Whining deeply, the needy sea dragoness doesn't need long before your affection sets her off, maw flooded with her honey until it drips to stain the sandy floor.";
			say "     Stepping away, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining before she finally drags herself back into the sea, no doubt eager to attend you again, some day...";
		else:
			say "     Stepping away, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining before she finally drags herself back into the sea, its lust left unsated, and no doubt eager to be used by you again, some day...";
	else:
		say "     In one final thrust, you [if Player is knotted]tie[else]hilt[end if] your tool[if tempnum2 is 1]s[end if] within the sea dragoness's tight hole, crying out as you're set off, unleashing your [Cum Load Size of Player] load into her supple bowels[if Ball Size of Player > 5] and quickly beginning to sputter from her[end if]. This is more than enough to set the beast off, singing out weakly as her unattended cunt stains her underside and the sandy floor with her honey, further making an embarrassing mess of herself.";
		say "     Wrenching yourself free, satisfied, you wipe yourself clean against her slick hide and depart, contending with the cum-stained monster's insistence on you remaining before she finally drags herself back into the sea, no doubt eager to attend you again, some day...";
	now tempnum is 0;
	now tempnum2 is 0;

to say FSDF_3: [Oral Receiving Cock]
	say "     Circling around the sea dragoness to meet her head, the exhausted beast can only whimper submissively towards you. Exposing your aroused, [cock size desc of Player] dick[smn] before her, she seems somewhat eager to attend your need. Perhaps you should start off with a bit of affection? Otherwise, you'll get straight to the point.";
	if Player consents:
		now tempnum is 1;
		say "     Kneeling down to stroke along the seawater-slicked sides of the beast's muzzle, she presses softly against your touch. Your own head moving to caress hers, the monster's breath against you is bitter with the odor of saltwater and fish. You could go further. Shall you? Otherwise, you'll get back on track.";
		if Player consents:
			now tempnum is 2;
			say "     Practically on cue, the dragoness's lips part to allow your tongue access, taste soon awash in her now familiar scent. Immediately receptive towards the gesture, the beast shudders under the weight of her rising lust, more than eager to reciprocate.";
			say "     Her own slick, writhing appendage invading your maw, [if scalevalue of Player < 4]her size no doubt somewhat overwhelming, though she shows some restraint,[else]you're able to keep up the eager beast with little issue[end if] as your taste is overwhelmed by her overpowering saliva. Eventually, you find yourself satisfied with your bit of fun and you get back to the task at hand.";
	else:
		now tempnum is 0;
	say "     [if tempnum is 1]Eager to begin[else if tempnum is 2]Eager and drooling to begin[else]With little effort[end if], she obliges your need, scaled lips parting to envelop [if Cock Count of Player > 1]one of your tools[else]your tool[end if] within its depths. Thick tongue slathering along its[if Cock Length of Player > 11] substantive[end if] length, [if Cock Length of Player > 19]the dragoness's elongated neck easily handles your impressive organ[else]the dragoness shows no difficulty in handling your throbbing organ[end if]. The touch of her saliva[if tempnum is 2], along with that lingering in your maw,[end if] [one of]seeming to intensify[or]intensifying[stopping] your arousal, you can't help but thrust against her snout, the dragoness churring in approval.";
	say "     Writhing against the beast's touch, happily [if Cock Length of Player > 14]bobbing along[else]attending to[end if] your organ, you find it difficult to keep a clear head as you rapidly approach ecstasy. You don't think you'll be able to hold back for any longer. Shall you pull out at the last second? Otherwise, you'll reward the obedient little sea dragoness.";
	if Player consents:
		say "     Immediately, you wrench your dick free of her lips, strings of precum and saliva trailing from the creature's maw. A couple seconds of grinding against her snout, and you cry out, unleashing your [Cum Load Size of Player] against the beast's obliging and lust-hazed visage. Whining softly, the beast idly licks at its face as she's shamed like this.";
	else:
		say "     It's not long before you finally cry out in bliss, firing your [Cum Load Size of Player] load into the creature's obliging maw. Whining softly, she's gulps audibly in an eager desire to swallow your cum[if Ball Size of Player > 5], the sheer volume of which quickly causing it to ooze from her lips[end if].";
	say "     Satisfied, you step away from the dragon, writhing against the sand with a need to satisfy her own, lingering lust in the wake of your task. No doubt the beast will have to attend to her own need after your turn and depart.";

to say FSDF_4: [Oral Receiving Cunt]
	say "     Circling around the sea dragon to meet her head, the exhausted beast can only whimper submissively towards you. Exposing your already oozing, [cunt size desc of Player] cunt[sfn] before her, she seems somewhat eager to attend your need. Perhaps you should start off with a bit of affection? Otherwise, you'll get straight to the point.";
	if Player consents:
		now tempnum is 1;
		say "     Kneeling down to stroke along the seawater-slicked sides of the beast's muzzle, she presses softly against your touch. Your own head moving to caress hers, the monster's breath against you is bitter with the odor of saltwater and fish. You could go further. Shall you? Otherwise, you'll get back on track.";
		if Player consents:
			now tempnum is 2;
			say "     Practically on cue, the dragoness's lips part to allow your tongue access, taste soon awash in her now familiar scent. Immediately receptive towards the gesture, the beast shudders under the weight of her rising lust, more than eager to reciprocate.";
			say "     Her own slick, writhing appendage invading your maw, [if scalevalue of Player < 4]her size no doubt somewhat overwhelming, though she shows some restraint,[else]you're able to keep up the eager beast with little issue[end if] as your taste is overwhelmed by her overpowering saliva. Eventually, you find yourself satisfied with your bit of fun and you have to get back to the task at hand.";
	else:
		now tempnum is 0;
	say "     [if tempnum is 1]Eager to begin[else if tempnum is 2]Eager and drooling to begin[else]With little effort[end if], she obliges your need, scaled lips parting to envelop [if Cock Count of Player > 1]one of your pussies[else]your pussy[end if] within its embrace. Thick tongue slathering along its supple entrance, [if Cunt Depth of Player > 17]she easily thrusts the slick, writhing organ into your pliable depths[else]she thrusts the slick, writhing organ into your depths, quickly straining you with its impressive size[end if]. The touch of her saliva[if tempnum is 2], along with that lingering in your maw,[end if] [one of]seeming to intensify[or]intensifying[stopping] your arousal, you can't help but press against her snout, the dragoness churring in approval.";
	say "     Writhing against the beast's touch, happily making you twitch and gasp with each motion of her worming appendage, you find it difficult to keep a clear head as you rapidly approach ecstasy";
	if Player is male:
		say ". You don't think you'll be able to hold back for any longer, dick[smn] drooling against the open air. Shall you pull out at the last second and shame the sea dragoness with your cum? Otherwise, you'll spare her the humiliation.";
		if Player consents:
			say "     Immediately, you wrench yourself free of her tongue, strings of saliva trailing from the creature's maw following the organ's loud departure. A couple seconds of grinding your throbbing, [cock size desc of Player] cock[smn] against her snout and you finally cry out, unleashing your [Cum Load Size of Player] against the beast's obliging and lust-hazed visage. Whining softly, the beast idly licks at its face as he's shamed like this.";
		else:
			say "     It's not long before you finally cry out in bliss, firing your [Cum Load Size of Player] load into the open air as your stuffed hole throbs against the creature's obliging tongue. Whining softly, she revels in tasting your juices. After a fair length of time lost in the throes of your lust, your need dies down, allowing you a moment to catch your breath.";
	else:
		say ". Lost in a haze of your need, you cling tightly to the beast, driving her to attend your ever-harder.";
		say "     It's not long before you finally cry out in bliss, your stuffed hole throbbing against the creature's obliging tongue. Whining softly, she revels in tasting your juices. After a fair length of time lost in the throes of your lust, your need dies down, allowing you a moment to catch your breath.";
	say "     Satisfied, you finally step away from the dragoness, writhing against the sand with a need to satisfy her own, lingering lust in the wake of your task. No doubt the beast will have to attend to her own need after your turn and depart.";


to say FSDF_5: [Oral Giving Cunt]
	say "     Given her [if scalevalue of Player < 4]sheer size and weight[else]substantial weight[end if], it takes a bit of work to coax the sea dragoness into rolling onto her side, though she seems compliant enough to help you with that endeavor. Softer underside exposed to your touch, the creature churrs submissively as you fondle around to find her bestial vent, eager to oblige your touch, moaning as your digits penetrate her tight hole, clenching firmly against the intrusion.";
	say "     Appendage forcing its way in deeper, the monster can't help but revel in being so shamefully penetrated, hole quickly slick and dripping down to stain the sand. Positioning yourself on top of her proper, you have the opportunity to lavish your tongue's affection on her. Shall you? Otherwise, you'll keep your distance.";
	if Player consents:
		say "     Lowering yourself to the sea dragoness's inviting cunt, your scent is flooded with a cocktail of saltwater and her feminine odor, inviting your tongue to caress along her supple lips. Feminine portal [if scalevalue of Player < 4]barely phased by your small size[else]hardly phased by the size[end if] as you plunge into her depths, supple lips squeezing around you tightly, its owner letting out a soft coo of pleasure as your slick, writhing appendage works its way in deeper.";
		now tempnum is 1;
	else if anallevel is 3:
		say "     Very well, shall you be a bit rougher on the beast and stimulate her anally? Otherwise, you'll keep things simple.";
		if Player consents:
			say "     Shifting a bit, your hand moves to access to the sea dragoness's tailpipe, forcing a digit into its tight, supple depths. Weakly cooing as you assault her so, you show little restraint in forcing another, and another, until you're properly fisting the beast. Writhing lustfully against your[if scalevalue of Player > 3] substantial[end if] intrusion, her cunt oozes with her tainted honey, strained by your persisting abuse.";
			now tempnum is 2;
		else:
			now tempnum is 0;
	else:
		now tempnum is 0;
	say "     Your continued attention quickly picks up in pace, fueled by your own[if Player is neuter], insatiable[end if] lust";
	if Player is not neuter:
		say ". Driven by her submissive instinct, the beast moves her head down to meet your crotch, intent on attending you in turn. Shall you oblige her offering?";
		if Player consents:
			say "     Eagerly, the sea dragoness's thick tongue [if Cock Count of Player > 1]wraps around one of your dicks, throbbing[else if Cock Count of Player is 1]wraps around your dick, throbbing[else if Cunt Count of Player > 1]caresses one of your cunts, aching[else]caresses your cunt, aching[end if] needily against the slick, writhing organ's touch";
			now tempnum2 is 1;
		else:
			say "     Swatting the sea dragoness away, she's left to be the only one on the receiving end of any affection, [if Cock Count of Player > 1]your own, unattended dicks throbbing against the open air[else if Player is male]your own, unattended dick throbbing against the open air[else if Cunt Count of Player > 1]your unattended cunts aching against the open air[else if Player is female]your unattended cunt aching against the open air[end if]";
			now tempnum2 is 0;
	else:
		now tempnum2 is 0;
	say ". The dragoness's breath becomes increasingly shallow, [if tempnum2 is 1]crotch awash in her hot breath[else]body trembling[end if] with each powerful exhale, [if tempnum is 1]hole now slick with a mix of saliva and sex[else if tempnum is 2]her stuffed holes aching against you[else]her hole's oozing becoming more substantial with each passing second[end if], indicating his imminent bliss.";
	say "     Continuing to work on her, you eventually manage to set the beast off, air filled with the sound of his loud singing as her [if tempnum is 2]twin holes tighten around your intrusions[else]her cunt tightens around your intrusion[end if]. [if tempnum is 1]Your maw is quickly flooded with, quickly overwhelming you[else]Your hands are rapidly drenched in[end if] her juices";
	if tempnum2 is 1:
		say ". The whole [if boundsegment is 1]ordeal[else]sight[end if], combined with the sea dragoness's own attendance, is more that enough to set you off, your [if Player is male][Cum Load Size of Player] load flooding her maw as it encircles your tool[else] cunt aching against her tongue's slathering affection[end if].";
	else:
		say ".";
	say "     Once everything dies down, you pull yourself free of the monster, a spent and exhausted mess, too weakened and lost in a haze of lingering need to really do anything but lay there now. Satisfied with your work, you choose to leave here[if tempnum2 is 0], a fair bit lust-addled though you may be[end if].";



Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Feral Sea Dragoness";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The dragoness calls out and nips at you.[or]The dragoness slaps you with her narrow tail knocking you across the ground.[or]She tackles you and grinds herself against you before you manage to get free thanks to the loose sand.[or]She sings to you. Breaking your focus and making you trip over a rock.[at random]";
	now defeated entry is "[fsdf loss]";
	now victory entry is "[fsdf attack]";
	now desc entry is "[fsdf desc]";
	now face entry is "very much draconic in shape, adorned with a set of barbed and savage teeth. Clearly aquatic in design, ridges and fins adorn the sides of your head, and you find it a challenge to maneuver any building with such an elongated neck"; [ Face description, format as "Your face is (your text)."]
	now body entry is "distinctly bloated and bulky fare, though somewhat streamlined in presentation, inferring that you'd be better suited for hauling it underwater, if your webbed and finned limbs were any indication"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]light blue, smoothly scaled[or]light blue, softly scaled[or]light blue, delicately scaled[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a long, somewhat bulky tail, top adorned with a sail-like fin."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]spade-tipped and tapered[or]dark blue[at random]";
	now face change entry is "you undergo the effects of this infectious strain. Your face draws forward, narrowing into a distinctly draconic muzzle, the features of which are subtly feminine and finned for aquatic travel, and you nearly fall over as you find your neck suddenly elongated"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you undergo the effects of this infectious strain. Your features become increasingly rounded to appeal to a more aquatic - though distinctly draconic - lifestyle, though thankfully your limbs retain their articulation and mobility so that you fare on land with minimal difficult"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it toughens. Dark, though subtly glittering, scales sprout from your flesh to cover the whole of your body. Curiously, it feels better suited for aquatic life than one on land"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you undergo the effects of this infectious strain. You nearly lose balance as a long, large - though relatively lightweight - tail explodes from your behind. It's distinguished with a fin across its top, inferring its more aquatic application"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock turns a dark, dark blue, gradually tapering towards the tip, the flair spreading to give it a distinctly spade shape";
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 4;
	now sex entry is "Female";
	now HP entry is 80;
	now lev entry is 7;
	now wdam entry is 21;
	now area entry is "Beach";
	now Cock Count entry is 1;
	now Cock Length entry is 21;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 21;
	now Cunt Tightness entry is 15;
	now libido entry is 45;
	now loot entry is "";
	now lootchance entry is 0;
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]large[or]bulky[or]aquatic[or]muscled[at random]";
	now type entry is "[one of]draconic[or]reptilian[purely at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Vore Bound State

to fsdfvore:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if Player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if Player is male]unloading your [Cum Load Size of Player] load against the supple flesh[else if Player is female]cunt throbbing firmly against the supple flesh[else]a particularly trying task given your lack of outlet[end if][if Player is male and Ball Size of Player > 5]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if struggleatt > 0, decrease struggleatt by 1;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
		if boundsegment is not 2, increase boundcounter by 1;
		if boundcounter is 5:
			say "     The sea dragoness's body churns and she seems to have reached a point where she can keep you down. It seems your prolongued presence here has given you no other choice but to leave the beast through the other way out...";
			now boundmod2 is 1;
			increase boundcounter by 1;
		if boundsegment is 1:
			say "     Lost in utter blackness of the sea dragoness's gullet, you feel yourself constantly being pushed downward to your inevitable destination, slick tunnel tightly wrapped around you. Your captor [one of]churrs lowly, causing your prison to tremble as she feigns innocencey[or]seems to be trying to physically force you the rest of the way down with one of her fins[or]audibly endeavors to swallow you down, each attempt constricting you more firmly[purely at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else if boundsegment is 2:
			say "     Swimming in the ocean, you're briefly free of the sea dragoness's hold. It doesn't appear you'll be free for long, though, as she's making her way to you right now. You imagine your only active option is to [bold type]S[roman type]truggle your way to the beach, else you can succumb [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] the beast's intent on having you once more. You probably figure this isn't the best time to try and [if boundrecover is true][bold type]R[roman type]ecover[else][bold type]E[roman type]ndure[end if], as it'll have the same effect of getting you caught again.[line break]";
		else:
			if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
				increase hunger of Player by 1;
				increase thirst of Player by 2;
			else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
				increase thirst of Player by 1;
			say "     Submerged in a churning mass of flesh, you're utterly lost in the sea dragoness's stomach, the whole affair a disorienting mess as you feel yourself getting slowly drained. [one of]The prison smells of fish and seawater, making it hard to focus[or]The beast churrs lowly, clearly enjoying how her meal writhes around[or]Your captor happily swims about, deliberately exacerbating your situation[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [fsdstrugglebar][line break][run paragraph on]";
		if humanity of Player < 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Feral Sea Dragon":
					now MonsterID is y;
					break;
			now BodyName of Player is "Feral Sea Dragon";
			now FaceName of Player is "Feral Sea Dragon";
			now TailName of Player is "Feral Sea Dragon";
			now SkinName of Player is "Feral Sea Dragon";
			now CockName of Player is "Feral Sea Dragon";
			now tail of Player is tail entry;
			now Face of Player is face entry;
			now Skin of Player is skin entry;
			now Body of Player is body entry;
			now Cock of Player is cock entry;
			now voreloss is true;
			now Trixieexit is 1;
			end the story saying "You became a Feral Sea Dragoness's meal!";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				if boundsegment is 1, increase boundmod by 1;
				if boundmod > 2 and boundsegment is 1:
					say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through her tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragoness's stomach. Your surroundings slowly draining you, you imagine you won't last long in here...";
					if tempnum2 is not 4:
						now tempnum2 is 4;
						say "     Singing out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragoness moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
					now boundmod is 0;
					now boundsegment is 0;
					now struggleatt is -1;
					wait for any key;
				increase struggleatt by 1;
				if boundcounter > 0, decrease boundcounter by 1;
				if boundsegment is 2:
					if struggleatt < 2:
						say "     You desperately swim back to the beach, the beast in hot pursuit. Just a little further...";
						wait for any key;
					else:
						say "     You barely manage to get to the beach before sprinting inland, out of the sea dragoness's reach. Exhausted and panting as the monster finally gives up and returns back to the ocean, it takes a while for you to clean yourself off and recover from the whole ordeal. Eventually, once you're ready, you go about your business once more.";
						cleanboundmemory;
						now Trixieexit is 1;
						follow the turnpass rule;
				else if boundsegment is 1:
					if struggleatt < 3:
						say "     [if tempnum2 is 2]Properly righting your orientation, you[else]You[end if] writhe and shimmy your way up the beast's gullet, against her muscle's endeavor. You [if struggleatt is 1]don't seem to be getting anywhere[else]think you might be seeing light[end if]...";
						increase lustatt by 7 + (lustadjust * 2);
						if tempnum2 is 2, now tempnum2 is 0;
						wyvhumanityroll;
						wait for any key;
					else:
						say "     Unable to keep you down any longer, the sea dragoness groans and spits you out ";
						if tempnum2 is 4:
							say "into the waters with an audible splash. The sudden shock of light and cool waters stuns you for a moment, but eventually you swim back up to the surface. Whining at you, annoyed, your captor isn't about to let its once-meal off so easily. You'll have to swim back to the beach before she can catch up with you!";
							now boundcounter is 0;
							now boundsegment is 2;
							now struggleatt is 0;
						else:
							say "onto the sandy beach, your impact punctuated with a puff of sand. The sudden shock of light and firm earth briefly stuns you, but you eventually stumble to your feet and get a sense of what's going on. Whining at you, annoyed, your captor isn't about to let its once-meal off so easy, and you're forced to retreat further inland, where she can't reach you.";
							say "     Exhausted and panting as the monster finally gives up and returns back to the ocean, it takes a while for you to clean yourself off and recover from the whole ordeal. Eventually, once you're ready, you go about your business once more.";
							cleanboundmemory;
							now tempnum2 is 0;
							now Trixieexit is 1;
							follow the turnpass rule;
				else:
					if struggleatt < 3 and struggleatt is not 0:
						say "     You continue to struggle and protest against these twisted confines, trying to upset the beast's stomach enough to free you. [if struggleatt is 1]You don't seem to make any headway[else]She begins to groan as your prison rumbles[end if]...";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
						wait for any key;
					else if struggleatt is not 0:
						if boundmod2 is not 1:
							say "     Body finally churning, it can no longer take your protests, constricting around you as it squeezes you back up the sea dragon's gullet. Whining lowly in discontent, the beast has little interest in letting you go so easy, even if it's a struggle for her to keep you down. You still have a ways to go!";
							wait for any key;
							now boundsegment is 1;
							now struggleatt is 1;
						else:
							say "     Body loudly groaning, you feel it constrict around you as you're forced down past a tight ring, descending into the sea dragoness's bowels. Twisted and pushed around the monster's labyrinth of flesh, your trip meets its inevitable destination as you're forced past that final ring and hit with a wall of cool seawater. Desperately climbing to the surface, you're exposed to the elements of the outside once more.";
							if a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds):
								say "     Whining at you, annoyed, she wheels around to face you. Your captor isn't about to let her meal escape, even after being ejected so embarrassingly. You'll have to swim back before she catches up with you!";
								now boundsegment is 2;
								now boundcounter is 0;
								now struggleatt is 0;
							else:
								say "     Churring lowly at you, your captor isn't exactly eager to eat you again after being ejected so embarrassingly, and instead decides to swim off into the distance. Free to swim back to the beach, you sit there for a bit to recover and dry yourself off, an exhausted mess. Eventually, once you're ready, you go about your business once more.";
								cleanboundmemory;
								now tempnum2 is 0;
								now Trixieexit is 1;
								follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					if boundsegment is 1, increase boundmod by 4;
					if boundsegment is 2:
						say "     Overtaken by desire to return, you submit to your fate, the sea dragon immediately catching up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragoness's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, she pulls you into the air with her maw. Allowing gravity to aid her as she audibly gulps you down, powerful muscles plunging you down her slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragoness's warm, inviting gullet. Just as you wanted!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through her tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
						increase lustatt by 14 + (lustadjust * 2);
						if tempnum2 is not 4:
							now tempnum2 is 4;
							say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
						now boundmod is 0;
						now boundsegment is 0;
						now struggleatt is 0;
					else:
						say "     You actively submit to your current confines, [one of]the beast rumbling softly in approval of your compliance[or]your captor contently swimming as she enjoys her meal[or]the beast offering a soft, approving chirp towards your submission[at random].";
						increase lustatt by 14 + (lustadjust * 2);
						wyvhumanityroll;
				else:
					if boundsegment is 1, increase boundmod by 2;
					if boundsegment is 2:
						say "     Perhaps too exhausted to continue, you concede to your fate, the sea dragoness immediately catching up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragoness's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, she pulls you into the air with her maw. Allowing gravity to aid her as she audibly gulps you down, powerful muscles plunging you down her slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragones's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through her tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 7 + (lustadjust * 2);
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Singing out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragoness moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once she's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     You choose to submit to your fate. No doubt it won't take long before the beast has her way...";
							increase lustatt by 7 + (lustadjust * 2);
					else:
						say "     You abide your current confines, [one of]the beast rumbling softly in approval of your compliance[or]your captor contently swimming as she enjoys her meal[or]the beast offering a soft, approving chirp towards your submission[at random].";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
				LineBreak;
				wait for any key;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundsegment is 1 and a random chance of 2 in 3 succeeds, increase boundmod by 1;
				if boundrecover is true:
					SanBoost 3;
					if boundsegment is 2:
						say "     You choose this, of all times, to try and recover from your prior captivity, only for the sea dragoness to catch up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragoness's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, she pulls you into the air with her maw. Allowing gravity to aid her as she audibly gulps you down, powerful muscles plunging you down her slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragoness's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity... However, the beast doesn't spare you this moment to really appreciate it.";
							say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through her tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 4 + lustadjust;
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Singing out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragoness moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once she's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity... But you don't have much time in here.";
							increase lustatt by 4 + lustadjust;
					else:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
						increase lustatt by 4 + lustadjust;
						wyvhumanityroll;
					now boundrecover is false;
				else:
					if boundsegment is 2:
						say "     By some curious whim, you consider enduring right now, but it's utterly useless to you at this moment, and the sea dragoness ends up catching up to you! Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragoness's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, she pulls you into the air with her maw. Allowing gravity to aid her as she audibly gulps you down, powerful muscles plunging you down her slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragoness's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     Resist though you may, you can't hold your position forever. [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through her tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 4 + (lustadjust * 2);
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Singing out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragoness moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once she's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     You choose this moment to endure. Even though you're stalling, there's no doubt that it won't take long before the beast has her way...";
							increase lustatt by 4 + lustadjust;
					else:
						say "     You endure your current confines, [one of]the beast rumbling softly in approval of your compliance[or]your captor contently swimming as she enjoys her meal[or]the beast offering a soft, approving chirp towards your submission[at random].";
						increase lustatt by 4 + lustadjust;
						wyvhumanityroll;
				LineBreak;
				wait for any key;
				next;
			say "Invalid action.";


Section 4 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Feral Sea Dragoness";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your loins, your cunt quivering with need. You slide a hand between your legs and play with yourself, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seeping into your mind. You can feel your dripping lips becoming full and engorged in a wanton display of your body's need to be bred. With this realization, it is clear that you've gone into heat.";
	now description text entry is "";
	now heat start entry is "[fsdheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[fsdheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[fsdinheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your lower abdomen, your ass quivering with need. You slide a hand between your legs and play with your asshole, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seeping into your mind. You can feel your rhythmically clenching and relaxing as it becoming full and engorged in preparation for your body's need to be bred. With this realization, it is clear that you've gone into some strange heat.";

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Feral Sea Dragon";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your loins, your cunt quivering with need. You slide a hand between your legs and play with yourself, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seeping into your mind. You can feel your dripping lips becoming full and engorged in a wanton display of your body's need to be bred. With this realization, it is clear that you've gone into heat.";
	now description text entry is "";
	now heat start entry is "[fsdheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[fsdheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[fsdinheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your lower abdomen, your ass quivering with need. You slide a hand between your legs and play with your asshole, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seeping into your mind. You can feel your rhythmically clenching and relaxing as it becoming full and engorged in preparation for your body's need to be bred. With this realization, it is clear that you've gone into some strange heat.";


to say fsdheatstart:
	[puts Feral Sea Dragon as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Feral Sea Dragon":
			now MonsterID is y;
			break;
	increase Cunt Tightness of Player by 1;
	increase Cunt Depth of Player by 1;
	if Cunt Tightness of Player < Cunt Tightness entry, increase Cunt Tightness of Player by 1;
	if Cunt Depth of Player < Cunt Depth entry, increase Cunt Depth of Player by 1;
	increase Libido of Player by 10;
	if Libido of Player > 100, now Libido of Player is 100;


to say fsdheatend:
	say "As your heat passes, your needy canine cunt becomes a little less prominent and swollen.";
	[puts Feral Sea Dragon as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Feral Sea Dragon":
			now MonsterID is y;
			break;
	if Cunt Tightness of Player > Cunt Tightness entry, decrease Cunt Tightness of Player by 1;
	if Cunt Depth of Player > Cunt Depth entry, decrease Cunt Depth of Player by 1;

to say fsdinheat:
	increase Libido of Player by 4;
	if heatturnskipper is true:
		now heatturnskipper is false;
	else if Libido of Player >= 80:
		let fsdchance be ( 100 + Libido of Player - humanity of Player );
		if a random chance of fsdchance in 250 succeeds:
			if location of Player is fasttravel and location of Player is not Beach Plaza and location of Player is not Bouncy Castle:
				say "Your heat-filled mind calls you towards the waterfront, wanting to swim in the ocean and find a sexy aquatic lover to satisfy your heat. Before you can regain your senses, you head back to the beach.";
				move player to Beach Plaza;
				now Beach Plaza is known;
				now heatturnskipper is true;
				follow the turnpass rule;
			else if location of Player is Beach Plaza or location of Player is Church Hall or location of Player is Dirty Sheds or location of Player is Overgrown Area:
				say "Catching the breeze of the sea in the air, your [if Player is female]puss[yfn] quiver[sfv][else if Player is male]dick[smn] throb[smv][else]body trembles[end if] with need and your heat-addled mind is distracted, drawn back to the beach in the hopes of satisfying its need to be fucked and bred.";
				move player to Beach Plaza;
			else if location of Player is Public Beach:
				say "Looking out over the water, your lustful urges increase and you long to rush out and play in the water. Perhaps its cool waters will soothe your heat. Your [if Player is female]puss[yfn] quiver[sfv][else if Player is male]dick[smn] throb[smv][else]body trembles[end if] with each wave rolling onto the beach, making you feel all the more like you belong out there.";
				decrease humanity of Player by 3;
				increase Libido of Player by 2;
			else if location of Player is Bouncy Castle:
				say "Looking out over the water, your lustful urges increase and you long to rush out and play in the water, momentarily distracting you from your task here. Perhaps its cool waters will soothe your heat. Your [if Player is female]puss[yfn] quiver[sfv][else if Player is male]dick[smn] throb[smv][else]body trembles[end if] with each wave that rocks the inflatable castle, making you feel all the more like you belong out there.";
				decrease humanity of Player by 3;
				increase Libido of Player by 2;
			else if location of Player is BeachEnd or location of Player is Rock Arch or location of Player is Sunken Ship:
				say "Being out in the water feels so satisfying to your heat-addled body, helping to soothe your lustful urges somewhat. Surely you are meant to stay here. It feels so nice out in the water. Now if you could only find some exotic undersea lover who's willing to breed your needy body.";
				SanLoss 5;
				decrease Libido of Player by 20;
			else:
				if Player is female:
					say "Your puss[yfn] quiver[sfv] and clenches in waves as your heat continues unabated. Mmm... waves washing over you... lapping at your wet folds... cool, soothing waves... Your mind wanders to thoughts of the sea and you find yourself desiring to head there.";
				else if Player is male:
					say "Your dick[smn] throb[smv] and spurts in waves as your heat continues unabated. Mmm... waves washing over you... lapping at your slick, [cock size desc of Player] cock[smn]... cool, soothing waves... Your mind wanders to thoughts of the sea and you find yourself desiring to head there.";
				else:
					say "Your body trembles in waves as your heat continues unabated. Mmm... waves washing over you... lapping at your slick undercarriage... cool, soothing waves... Your mind wanders to thoughts of the sea and you find yourself desiring to head there.";
	if Libido of Player > 100, now Libido of Player is 100;
	if Libido of Player < 0, now Libido of Player is 0;

[Endings can be found in the Feral Sea Dragon extension]

Feral Sea Dragoness ends here.
