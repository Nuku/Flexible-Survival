Version 5 of Feral Sea Dragoness by Tunalord Sefont begins here.
[Version 5.2 - Heat messages altered to fit with MPreg heat - Stripes]

"Adds a Feral Sea Dragoness to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks.. ] 
drgnsbmt is a number that varies.
lastfsdfeeding is a number that varies.  lastfsdfeeding is usually 255.
fsdfeedmemory is a number that varies.
FFSDUBM is a truth state that varies. FFSDUBM is normally false;
FSDOPEN is a number that varies. FSDOPEN is normally 0;

to say dragoness attack:
	if "Female Preferred" is not listed in feats of player and guy is not banned:		[change target to male for infection if valid]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "feral sea dragon":
				now monster is y;
				break;
	if hp of player > 0 and FSDOPEN is 0:
		say "     You immediately throw up your arms and lower your guard, showing you don't wish to fight.  [One of]She yields, regarding your demeanor with a soft chirp before advancing upon you. She curiously noses you before giving you a hearty, wet lick.  The dizzying scent of fish and seawater nearly overwhelms you[or]She's a bit unsure of this turn of events but, eventually, she advances to sniff at you, regarding you you with an inquisitive affection[at random].  She uses her teeth to pull any attire from you might have once had, offering some illumination on her plans for you.";
	otherwise if FSDOPEN is 0:
		say "     Having enough of this fight, her head lunges as you, maw agape only to grab a hold of you[if scalevalue of player < 4], engulfing your head and most of your upper torso within her slimey maw.  You half expect her to swallow you whole before she lifts her head back up and spits you out, throwing your now saliva-soaked form across the beach and knocking you unconscious[otherwise].  Her teeth are at least not biting down strong enough to really hurt you, but she nonetheless starts flailing you around in a display of fierce abandon until she flings you back onto the ground with enough for you knock you right out[end if].  When you come to, you can feel the cold air across your form, the beast has already relinquished you of your attire.  She regards you with a cheerful chirp, now more than happy to treat her victim with affection when they're too weak to fight back.";
	if bodyname of player is "feral sea dragon" or bodyname of player is "feral sea dragoness":
		if cocks of player > 0:
			if "Submissive" is listed in feats of player and drgnsbmt is 0:
				say "     She seems particularly affectionate to one of her own kind, and inevitably pulls away.  Facing away from you, you hear her softly sing, offering you to overtake her, a plea that is completely lost on you.  Try as she might she can't compel you to mount her, an irregularity in your mental framing preventing you from fulfilling such a dominant role on a creature who [if hp of player > 0]you've submitted to outright[otherwise]has bested you[end if].  This doubtlessly flusters the dragoness, and she's forced to take affairs into her own flippers.  Returning, she forces you onto your side--to which you comply--before you watch as her thick tongue caresses [if cocks of player > 1]one of your emergent cocks[otherwise]your emergent cock[end if].";
				say "     Her lewd endeavours need only be brief to bring you to full arousal, continuing to suck on your [cock size desc of player] rod for a while longer before she relents.  Clearly not used to this, she awkwardly uses her tail to aim [if cocks of player > 1]one of your dicks[otherwise]your dick[end if] into the needy hole, resting partially on you as she slowly pushes its head into her soft cunt, [if cock length of player >= 18]faintly churring in pleasure before she acclimates to your size[otherwise]cooing softly in approval as it descends into the folds of her flesh[end if].  From here, she makes an earnest effort to use you, rocking her large body against your thick meat with an increasingly reckless fervor, occasionally nipping you an aggressive show of passion before she sings out loudly, climaxing against your hard organ.  Oddly, her song's pitch is knocked down an octave, and its powerful influence tied with the clenching of her stuffed portal is more than enough to force you into climaxing yourself, regardless of how far along you may have been[if cocks of player > 2], and causing your exposed members to unload against both your frames[otherwise if cocks of player is 2], and causing your exposed member to unload against both your frames[end if].";
				say "    A little dizzied from pleasure, she eventually pulls herself free of you. She departs with a playful nip, diving back into the water's depths, no doubt satisfied in spite of the irregular circumstances of this encounter.";
				now drgnsbmt is 1;
			otherwise if "Submissive" is listed in feats of player:
				say "     She seems particularly affectionate to one of her own kind, nipping you playfully before she moves to attend to you, by now quite familiar with your very particular needs.  She forces you onto your side--to which you comply--before you watch as her thick tongue caresses [if cocks of player > 1]one of your emergent cocks[otherwise]your emergent cock[end if].";
				say "     Like clockworks, the beast's wanton affections arouse you with little difficulty, much to her cooing approval.  She continues to suck on your [cock size desc of player] rod for a brief while longer before she moves on.  Clearly not used to this, she carefully uses her tail to aim [if cocks of player > 1]one of your dicks[otherwise]your dick[end if] into the needy hole, resting partially on you as she slowly pushes its head into her soft cunt, faintly wailing in pleasure before she acclimates to your size.  From here, she makes an earnest effort to use you, rocking her large body against your thick meat with an increasingly reckless fervor, occasionally nipping you an aggressive show of passion before she sings deeply into the open air, climaxing against your hard organ.  Much to the whim of your mistress's body, her pleasure pushes you to your own blissful release, pumping your seed into her hungry portal[if cocks of player > 2], free members dousing your frames with the hot fluid[otherwise if cocks of player is 2],  free member dousing your frames with the hot fluid[end if].";
				say "     A little dizzied from pleasure, she eventually pulls herself free of you.  She departs with a playful nip, diving back into the water's depths, transparently sated by her pet's company.";
				increase drgnsbmt by 1;
			otherwise:
				say "     She seems particularly affectionate to one of her own kind, and inevitably pulls away.  Facing away from you, you hear her softly sing, offering you to overtake her.  Driven by your feral mind, you slowly pull yourself on top of dragoness, much to her approval.";
				say "     You thrust impotently against her scaled haunch before you're sufficiently hard, carefully moving to guide [if cocks of player > 1] one of your [cock size desc of player] cocks[otherwise] one of your [cock size desc of player] cock into her hungry cunt[end if].  [one of]You're initially gentle in forcing it in, the dragoness cooing softly as your rod slowly descends[or]Flared by a tinge of feral-charged aggression, you show your dominion by thrusting into her with sudden and reckless abandon, she wails softly in such abrasive pleasure as your drill your rod deep[at random] into the folds of her flesh.  Your pace rapidly ascends as you fuck this beast.  She sings out in her own ecstasy, [if hp of player > 0]happy to be rammed underneath a virile beast such as you[otherwise]clearly enjoying being rammed by someone regardless of having bested them in combat[end if].  And her clenching hole is enough to make quick work of you, forcing you to roar out in pleasure as you unload your seed into the beast.";
				say "     This is more than enough to trigger her own climax, as her greedy hole milks every last drop of seed you have to offer her. Eventually, you manage to pull yourself free of her, the dragoness turning to offer you some soft affections before she descends back into the depths of the ocean. You see her look back at you from within the water, perhaps hoping to see you again.";
		otherwise:
			say "     It's clear that neither of you have the equipment you need more [']conventional['] sex, but that doesn't mean this sea dragoness can't have a little fun with another of her kind.  Pinning you to the ground with her body, she faces her exposed cunt against your head; what she intends to have you do quite apparent.";
			say "     Driven by your feral instincts, you comply with the dominant female, your thick tongue teasing the portal's soft entrance as the dragoness coos in affectionate approval.  She presses her hole more firmly against you, coaxing your explore her depths with your slick organ, its soft folds parting to accommodate your lascivious intrusion.  Tasting her emergent sexual fluids, you too can't help but be aroused.  [if cunts of player > 0]In anticipation of this, you soon feel her own tongue sampling your taste, the appendage showing no restraint in reciprocating your affection[otherwise]She nips at your hindquarters, teasing you as she urges you to proceed[end if].  The pace of your slippery affections rise to a feverish pace, and you hear her sing as you are driven by the overwhelming desire to pleasure this aquatic mistress.";
			say "     Much to your blind fervor's joy, you're rewarded with your endeavours when you feel her sexual fluids flood your maw, her passage tightening around your tongue as she sings out in orgasm, [if cunts of player > 0]her voice reverberating through her invading organ and bringing you to your own blissful release.  Eventually, you feel her tongue retreat from your cunt and[otherwise]much to your own expense, filled with a lust that has no outlet. Eventually,[end if] she crawls off you.";
			say "     Satisfied with your fun, she gives you a soft and approving lick before she turns to dive back into the waters. It takes you awhile to gather your mind and move on.";
	otherwise:
		say "     Carefully, she forces you onto your back by her snout, pinning you down in a same manner.  She gives you a cute and affectionate look, much-maligned by her paradoxically bestial form[if intelligence of player > 14].  You wager she's trying to sway you into compliance by appearing non-threatening, to little success[otherwise].  Uncertain of her intent, you remain cautious and wait[end if].";
		If "Touched by Madness" is listed in feats of player and (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds) and scalevalue of player < 4 and FSDOPEN < 2 and inasituation is false:
			If FFSDUBM is false:
				say "     Suddenly, she appears to become confused about these circumstances, some otherworldly influence throwing her off-kilter, insomuch that she almost seems to have lost track of where she is; however, this digression is only momentary before she snaps back to attention, feral eyes aglint with a new, twisted intent. Her affections become more fervent and insistent. Slick, dripping tongue absolutely drenching your smaller form with her salty saliva before she finally relents.";
				say "     By now, you're clearly aroused from these strange fluids, but she doesn't even remotely seem interested in that. Rather, she would instead pull herself over you, soft underbelly grinding against your lubricated frame before she stops, showing no desire to spare you of her massive weight, her reasoning by now very clear as you feel yourself pushed past the lips of her aquatic vent.";
				say "     Unable to contest her new desires, she begins to grind herself against the sand, her portal tightening against your wholly engulfed frame, pulling you deeper into her slick depths. This overwhelming heat; this hungry, demanding tunnel, it[if cocks of player > 0 or cunts of player > 0]'s more than enough to elicit your orgasm, almost immediately, sealing your fate when this is all that this dragoness needs to find bliss[otherwise] torments you to no end, your fate soon sealed as the dragoness finds her bliss[end if], pulling you into that final, inevitable destination before your senses fade. The dragoness would no doubt recover and move on, the occupancy of her new captive not outwardly apparent to those who might see her large form.";
				now FFSDUBM is true;
			otherwise:
				say "     You see into her eyes and you know of her twisted intent. [if hp of player is 0 and player is not submissive]Your better judgement compels you to flee, but her hold on you is absolute; you will be subject to her tainted verdict regardless. In spite of her assertion, she offers what she doubtlessly now perceives as her offspring plenty of affection, though her thick, fish-smelling tongue's endeavours are dual in nature, preparing you for what is to follow[otherwise]Overwhelmed by her maternal pull, she need only turn sideways, exposing her body's inviting lips to you, to compel you to them. Your tongue slathering this hole with affection as she reciprocates across your frame, now doubtlessly perceiving you as her offspring. What better judgement you might of had is deflected by the reality of your lack of choice[end if].";
				say "     Blatantly aroused as you are, her satisfaction is met, [if hp of player is 0 and player is not submissive]forcing herself down on you once more, her body's inviting lips embracing your smaller form before you disappear entirely under her[otherwise]compelling you to enter her hungering portal, though you might only comply with your head and torso before she returns upright once more, engulfing the remainder of you with ease[end if].";
				say "     Wailing songs of her perverse need muffled within these confines, her portal tightens against your wholly engulfed frame, pulling you deeper into her slick depths as she seeks her wanton reprieve. This overwhelming heat; this hungry, demanding tunnel, now all-too familiar to you, it[if cocks of player > 0 or cunts of player > 0]'s but a moment before it elicits your orgasm, sealing your fate when this is all that this dragoness needs to find bliss[otherwise] torments you to no end, your fate soon sealed as the dragoness finds her bliss[end if], pulling you into that final, inevitable destination before your senses fade. The dragoness would no doubt recover and move on, the occupancy of her new captive not outwardly apparent to those who might see her large form, and doubtlessly happy that you are hers.";
			attempttowait;
			if (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds):
				Say "     In due time you come to, the thick, hard walls of an egg surrounding you; however, you feel yourself slightly tumbling and shifting about, and when you attempt to break free of the egg you find yourself unable to. The heat is overwhelming, [if cocks of player > 0 or cunts of player > 0]your arousal quickly rising once more, driving you to pleasure yourself uncontrollably within these confines, making a further mess of yourself[otherwise]your arousal quickly rising once more, forced to abide the torment of these demented confines[end if].";
				infect;
				infect;
				say "     After what seems like forever, you can see the familiar light of the outside coming through the translucent walls of your prison, compelling you to finally break free, and once you acclimate to the open air it's made very clear -why- you were forced within those confines longer than natural";
				if a random chance of 1 in 2 succeeds and guy is not banned:
					say ". A male sea dragon is before you, looking at her somewhat tired and lust-addled form, it's clear that he happened upon your egg and was compelled to use it for his own sexual gratification--much to your expense.";
					if ( ( "Kinky" is listed in feats of player and a random chance of 3 in 8 succeeds) or a random chance of 1 in 5 succeeds):
						say "     Looking at him now, he doesn't appear fully satisfied, and looks as though he might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
						If player consents:
							let bonus be ( dexterity of player - 10 ) / 2;
							let target be 14;
							if "Submissive" is listed in feats of player, increase target by 1;
							let dice be a random number from 1 to 20;
							if bonus + dice is greater than target:
								say "You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[otherwise]ground[end if].";
								now FSDOPEN is 0;
							otherwise:
								say "You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[otherwise]ground[end if], and in seconds the dragon is on top of you, ready to subject you to his desire.";
								now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
								say "[dragon attack]";
						otherwise:
							say "You decide the best thing to do is just let him have his way with you, the eager dragon soon pinning you against the [if showlocale is true]sand[otherwise]ground[end if], ready to subject you to his desire.";
							if hp of player < 1, now hp of player is 1;
							now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
							say "[dragon attack]";
					Otherwise:
						say "     Doubtlessly exhausted as he is he turns to depart, leaving you to retreat and gather your belongings--strewn across the beach as they are--along the way.";
						now FSDOPEN is 0;
				Otherwise:
					say ". Another sea dragoness is before you, [one of]though you instinctively know that it's[or]fairly certain that it's not[at random] the same one that first trapped you. Looking at her somewhat tired and lust-addled form, it's clear that she was compelled to use your egg for her own sexual gratification--much to your expense.";
					if (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 5 succeeds)):
						say "     Looking at her now, she doesn't appear fully satisfied, and looks as though she might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
						If player consents:
							let bonus be ( dexterity of player - 10 ) / 2;
							let target be 14;
							if "Submissive" is listed in feats of player, increase target by 1;
							let dice be a random number from 1 to 20;
							if bonus + dice is greater than target:
								say "You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[otherwise]ground[end if].";
								now FSDOPEN is 0;
							otherwise:
								say "You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[otherwise]ground[end if], and in seconds the sea dragoness is on top of you, ready to subject you to her desire.";
								now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
								say "[dragoness attack]";
						otherwise:
							say "You decide the best thing to do is just let her have her way with you, the eager sea dragon soon pinning you against the [if showlocale is true]sand[otherwise]ground[end if], ready to subject you to her desire.";
							if hp of player < 1, now hp of player is 1;
							now FSDOPEN is 1; [This will deflect the opening submit/lose line, check will need to be added for it]
							say "[dragoness attack]";
					Otherwise:
						say "     Doubtlessly exhausted as she is she turns to depart, leaving you to retreat and gather your belongings--strewn across the beach as they are--along the way.";   
						now FSDOPEN is 0;
			Otherwise:
				say "     In due time you come to, greeted by the thick and hard confines of an egg, light from the outside spilling through the translucent surface and compelling you to break yourself free. Exposed to the salty air once more, you were thankfully left on the beach, and you clean yourself off before gathering your belongings as they are, strewn across the beach.";
				infect;
		otherwise if cocks of player > 0 and cock length of player > 15 and a random chance of 3 in 4 succeeds:
			say "     You are pushed onto your back, exposing your [if cocks of player > 2]numerous, [cock size desc of player] cock[otherwise if cocks of player is 2]dual, [cock size desc of player] cocks[otherwise][cock size desc of player] cock[end if] to the beast[if scalevalue of player < 4].  She chirps at you, the tone of which would infer that your oddly disproportionate anatomy amuses her, though not so suggesting that it's not to her liking, indicated when her tongue meets to caress the [cock of player] rod[smn], her strangely arousing saliva almost immediately drawing your organ[smn] to attention[otherwise]She draws out her tongue to caress your [cock of player] rod[smn], its strangly arousing saliva almost immediately rendering you hard.  She seems happy to encounter a creature even remotely close to her physical size, and if her infectious state didn't so readily betray her you'd say she prefer the variety, given her eagerness to make use of you[end if].";
			say "     Satisfied, her tongue retreats from your member.  Illustrating a clear intent to mount you, she carefully moves to crawl over your form[if scalevalue of player < 4].  Soft underbelly caressed along your diminutive form, she at least shows enough care to not put a significant amount of weight on you, lest you find yourself crushed under her immense mass[otherwise].  Soft underbelly grinding across your form as she positions herself, you find that--even with your size remotely in her league--she's extremely heavy.  Your immediate discomfort quickly made apparent to the dragoness, she makes some effort to shift some weight off you.  In any case, as least the sand softens the pressure, if only by a bit[end if].  Your vision is obviously obscured by the beast's expansive girth, though your sense of touch is more that sufficient a guide as you feel her cunt descend upon [if cocks of player > 1]one of your [cock size desc of player] dicks[otherwise]your [cock size desc of player] dicks[end if], an act that barely seems to phase her as she manages to envelope the massive thing with little to no effort.  Cooing softly in a show of approval down to you, she relents only briefly before her massive form slowly begins to bob against it's length.";
			say "     Such ease would infer that her hole is loose; however, she's quick to show you quite to the contrary as her vaginal passage tenses and massages against your cock with quite the measure of determination.  Driven by her wanton fervor she breaks out into song.  This strange auditory assailment seemingly has the effect of driving your arousal further, playing an integral part in bringing your to orgasm, but she's not done with you yet.  As she milks you dry--driven by her own lust--you feel underside strike your beleaguered form with greater zeal, after every thrust.  The light of your lust not so readily snuffed out by satiation in the midst of this feral wildfire, and you are forced to climax with nauseating frequency until she herself reaches nirvana, a zenith illustrated further in her song's pitch[if scalevalue of player < 4]--so strong in fact, that you are completely knocked out by it[otherwise], an intensity of which nearly knocks you out, though you're at least physically strong enough to bear the brunt of it[end if].";
			say "     [if scalevalue of player < 4]When you come to, you find the sea dragoness long gone and yourself half-buried in the epicenter of what you would charitably regard as a crater.  It[otherwise]Eventually, she relinquishes her body's hold on you.  She chirps happily at you, not really regarding the fact that you're partially buried in the sand from her weight, before she dives back into the water.  You're still disoriented from the whole thing so it[end if] takes you awhile to pull yourself free, find your things, and go back on your merry way.";
		otherwise if a random chance of 2 in 3 succeeds or lastfsdfeeding - turns < 8:
			if cocks of player > 0:
				say "     With a soft chirp, you watch as her thick tongue moves to caress [if cocks of player > 1]one of your exposed, [cock size desc of player] cocks[otherwise]your exposed, [cock size desc of player] cock[end if].  The slick organ finding little difficulty in coaxing its victim into arousal.  With no effort, she promptly engulfs this [cock of player] rod into the depths of her eager maw [if cock length of player < 14]immediately, your member wholly consumed by that greedy hole[otherwise]with only marginal difficulty, her elongated neck illustrating a lewd practicality by hilting your impressive member inside her voracious hole[end if].";
				say "     You can't help but be overwhelmed by the sensation of her perverse affection, her saliva potent in it's ability to arouse you.  [if cock length of player < 10]No doubt in lieu of this, combined with the fact that her maw is simply too large to articulately pleasure someone of your size, she often disengaged from her oral fixation to drag her slippery appendage across your torso and face before it returns back to your member[otherwise]Her slippery appendage firmly wrapped around your sizeable tool, she bobs against the organ with fervent determination, her muffled songs of approval beckoned from her massive form strangely adept at eliciting further pleasure[end if].  [if scalevalue of player < 4]Compelled by feral greed, her maw remains agape around your lower torso, which by now is absolutely drenched by her drool, her heated breath shielding you from the cold of the open, ocean air[otherwise]The force of her avaricious maw often pushes your similarly sizeable form along the sand, clearly not intent on relinquishing your cock until it sates her wanton hunger[end if].";
				if cock width of player > 20:
					say "     Driven by an esctatic haze, your [cock size desc of player] penis explodes into the dragoness.  You would think she'd yield to such a torrential flow, but [if scalevalue of player < 4]instead her sexual greed gets the better of her more gentle demeanour as she throws your smaller form up into the air--maw and tongue gripped firmly on you and your hose--to swallow down your copious fluids with a fervent efficiency, forcing you cling to her head with dear life[otherwise]her impressive girth shows little difficulty in handling your expansive release, relentless as she consumes every last drop[end if][if cocks of player > 2], your numerous free members spilling their seed along her elongated neck[otherwise if cocks of player is 2], your free member spilling its seed along her elongated neck[end if].";
				otherwise:
					say "     The effect of both her carnal affections and infectious influence drive you into a blinding lust frenzy, a reprieve of which you immediate find as you quickly find yourself convulsing in blissful release, the greedy dragoness eager to drain you of every last drop of your cum until there is naught to take[if cocks of player > 2], her tongue occasionally moving to lick up what seed might emerge from your neglected members[otherwise if cocks of player is 2], her tongue occasionally moving to lick up what seed might emerge from your neglected member[end if].";
				say "     Satisfied with milking her victim dry. She sets you off before retreating back into the waters.  After all that, you might have figured yourself as coming out on top if it were not at the expense being a smelly, lust-addled mess afterwards.";
			otherwise if cunts of player > 0:
				say "     She regards you with a soft rumble before you see her tongue move to caress [if cunts of player > 1]one of your [bodytype of player] cunts[otherwise]your [bodytype of player] cunt[end if].  The thick organ sends shivers down your spine as it leaves a trail of saliva across the vulnerable portal.  [If cunt length of player < 10]It's initial probing makes it abundantly clear that the oversized appendage isn't going to fit no matter how hard she might try, and you take reprieve in knowing that she isn't going to challenge that fact.  She instead opts to stimulate you externally by grinding her tongue's slimy surface against your exposed hole[otherwise]She is at least gentle as the saliva-slicked appendage probes the soft folds of your exposed hole, the dragoness slow and drawn out in its motion as her tongue gradually floods the depths of your vaginal passage.  Your subsequent writhes and protests a subject of much amusement to the beast[end if].";
				say "     [If scalevalue of player < 4]Driven to so readily violate you, the massive creature partially engulfs your pelvic region within her moist maw, her heated breath wafting up to wash over you as she makes a right mess of your lower torso[otherwise]Maintaining her irreverent assault, you frequently feel her draconic snout grind itself against your vulnerable form in the midst of her lewd affections, firmly enough to start pushing you deeper into the sand underneath you[end if].  The touch of her tongue seems to be aided in pleasuring you with the sensation of her saliva against your [bodydesc of player] form, so much so that you're very rapidly brought to climax against the thick organ.  [If cunt length of player < 10]Greedily, she licks up your sexual fluids, her scaled lips gently sucking against the [bodytype of player] portal to coax you into offering her more.  This voracious attitude, mixed with your heightened libido, is more than enough to cause you to orgasm a second time, and then a third; the dragoness relentless in cleaning you out[otherwise]The taste of your sexual fluids only encourages her to ram you with the slick organ harder, bringing in its wake a chain of orgasms, the next more blindingly intense than the other.  You nearly pass out before she finally relents[end if].";
				say "     Satisfied with sucking you dry--though in a more figurative sense as you're far from dry in any literal capacity--she pulls herself from you. She noses you off in teasing affection before she crawls back into the ocean's depths from whence she came.  You're so disoriented from the occurrence that it takes you awhile to gather your mind and move on.";
			otherwise if "More Anal" is listed in feats of player:
				say "     She regards you with a soft rumble, nuzzling you with slight disconcertion at your lack of equipment for her to have fun with, until she concedes to moving her tongue to caress your back door. The thick organ sends shivers down your spine as it leaves a trail of saliva across the vulnerable ring.";
				say "[if scalevalue of player < 4 and the player is not twistcapped]The slimy organ really puts the strain on you as it's too large to easily fit in that hole, but she at least shows a gentle patience in violating you and in due time you feel it slowly worm its way in.  You're so diminutive relative to her own scale that your behind is easily eclipsed by her toothy maw, making you frightful that the beast may have half a mind to swallow you whole, though for now it only has the effect of coating your lower half in his saliva[otherwise]Its initial efforts are probing, curious as to how pliable your hole might be, before the slimy organ begins to worm its way into the depths of your bowels with little obstruction. The dragoness offers up a muffled chirp as the unengulfed portion of her long appendage frequently buckles and bends prior to its brief re-immersion, the organ making a mess of your [bodytype of player] thighs and groin as she fucks you with her tongue[end if].  Its fervent motion doubtlessly lubricated by copious amounts of the beast's saliva, you feel her irreverent affections grab a hold of you, pulling you further and further into a compliant and aroused state until you are overwhelmed by the ecstasy of the beast's touch.";
				say "     Your audible moans amusing to the dragoness, you can only writhe in ecstatic agony as he continues to assault you with no end in sight.  You can't satisfy these overwhelming desires and you feel like the beast's irreverent affection will knock you unconscious before she finally relents.  Amused as she watches you writhe about the sand, she inevitably pulls the slick organ free of you.";
				say "     She turns to depart.  Still with some energy but still driven into a lustful frenzy by the creature's influence, you try to crawl after her only for her to dive back into the water's depths.  You collapse from exhaustion, and it takes you awhile to get back up and clean the mess of bodily fluids the dragoness left in her wake.";
			otherwise:
				say "[fsdfeeding]";
		otherwise:
			say "[fsdfeeding]";

to say fsdfeeding:
	if fsdfeedmemory is 0:
		say "     Nosing your stomach briefly, she suddenly lifts her head and starts to clench her body in a strange way, making a slightly unsettling sound before her head descends once again to meet face.  Strangely silent and making a subtly odd expression, you shrug at her, not exactly sure what she wants from you.";
		say "     She noses your cheek.  What, she wants a kiss? You're not really in a position to decline and you suppose there are worse thing to--oh heavens no!  Just as you open your mouth she reciprocates by flooding it with partially digested fish.  Eyes abulge, you try to free yourself of her only to be met with her maw's firm grip, forcing you to swallow the sickening cocktail of seafood.";
		say "     Much to your relief, she inevitably finishes, chirping cutely at you.  You find you can only scowl at the dragoness, an expression which is entirely lost on her as she regards you immense pride before departing back into the waters.  Right about now you'd be willing to subject yourself to even the most horrifying eldritch monstrosities if for just a shot of mouthwash.";
		increase fsdfeedmemory by 1;
	otherwise if fsdfeedmemory is 1:
		say "     As the dragoness starts making a familiar sound you're immediately on to her.  Oh hell no, you're not having any of this again, and you exploit her briefly distracted state to get up and try to flee, a rebellion you find immediately quelled when she slaps you down with a flipper, barely even regarding your attempted escape.";
		say "     Her maw descends upon your [bodytype of player] face, the devious portal engulfing it as she presses your awful smelling meal against your tightly-shut lips.  You can't hold your breath forever and you inevitably gasp for air, only to be rewarded with an additional helping of the beast's grotesque meal.  Oddly enough, it doesn't seem that bad this time.  Perhaps you're acclimating to it, or her infection is driving you to accommodate her whims.  In either case, she seems ever so cheerful that her friend is fed, and gives you a wet lick before descends back into the water's depths.";
		if a random chance of 1 in 3 succeeds, increase fsdfeedmemory by 1;
	otherwise if fsdfeedmemory is 2 and "More Anal" is listed in feats of player:
		say "     Seeing her prepare to feed you, your proper senses compel you to protest.  You've had -enough-, and you're mindful enough of the creature's tricks that you're not going to let her feed you this time.  When she moves over you, you respond by facing into the beach floor and remaining this way no matter how much she tries to turn you over.";
		say "     She lets out a muffled, perturbed rumble, you are victorious!  Or so you initially think, as while stares at you facing the ground she comes up with another plan.  You're not sure what to do when she remains quiet for a short while, but her clever plan is quickly illuminated when you suddenly feel the dragoness's snout pressed firmly against your behind.";
		say "     You're--rightfully so--taken off guard when you feel your bowels flood with her ill-conceived meal, [if scalevalue of player < 4]your beleaguered hole quickly strained under the excessive flow as you belly quickly bulges with her contents.  She's a bit more liberal with feeding you this time, perhaps to teach you a lesson for trying to avoid getting fed, though you can at least take comfort in not having to taste it's foul contents this time...[otherwise]though you're at least large enough to handle the rather lewd assault; however, her lack of familiarity with this tactic shines through when the beast apparently assumes she's underfed you, and only proceeds to unload more and more of the fish through your beleaguered hole, to the point where your belly bulges blatantly with her goods.[end if]";
		say "     Finishing, she sings happily, hobbling about in a strange, self-congratulatory dance.  Oh yeah, you bet she thinks she's so clever for outsmarting you, you'd try to ruin such a bright mood if you weren't so unbelievably embarrassed by these turn of events.  Finally, she hops off, happy as she ever can be.  [if scalevalue of player < 4]Struggling to return to your feet,[otherwise]It takes your bloated self to properly pull yourself to your feet. Inevitably,[end if] you gather your things and pull your overstuffed form along.  Nobody must know what happened here.";
		increase fsdfeedmemory by 1;
	otherwise:
		say "     You watch as she begins to cough up some food for you.  By this point you've been so frequently exposed to her feeding methods that, in some maddening sense, you welcome it.  At least, enough so that you don't bother making any futile protests; can't really complain about a free meal, anyways.";
		say "     Complying, you open your mouth as she descends upon you, promptly meeting it with a rush of the fish matter, offering faint chirps of approval as she feeds you.  Happy that you don't cause her any trouble this time, she nuzzles you affectionately after she finishes, her tongue cleaning up any mess of fish from your face--not to much benefit as it's merely replaced with an excessive heaping of her saliva.  Inevitably, she departs, letting you return to your prior endeavours.";
	decrease hunger of player by a random number between 10 and 24;
	now lastfsdfeeding is turns;
	infect;	[additional infection]


To say dragoness loss:
	if ( libido of player - humanity of player > 15 ) and ( bodyname of player is "feral sea dragon" or bodyname of player is "feral sea dragoness" ) and cocks of player > 0:
		say "     As you drive the dragoness back she lets out a pleading song, offering you to overtake her.  Much in spite your victory, your lust-addled and feral mind overtakes your better judgment, and you slowly pull yourself on top of dragoness, much to her approval.  You thrust impotently against her scaled haunch before you're sufficiently hard, carefully moving to guide your [cock size desc of player] cock into her hungry cunt.  [one of]You're initially gentle in forcing it in, the dragoness cooing softly as your rod slowly descends[or]Flared by a tinge of feral-charged aggression, you show your dominion by thrusting into her with sudden and reckless abandon, she wails softly in such abrasive pleasure as your drill your rod deep[at random] into the folds of her flesh.";
		say "     Your pace rapidly ascends as you fuck this beast.  She sings out in her own ecstasy, happy to be rammed underneath a virile beast such as you.  And her clenching hole is enough to make quick work of you, forcing you to roar out in pleasure as you unload your seed into the beast.  This is more than enough to trigger her own climax, as her greedy hole milks every last drop of seed you have to offer her. Eventually, you manage to pull yourself free of her, the dragoness turning to offer you some soft affections before she descends back into the depths of the ocean. You see her look back at you from within the water, perhaps hoping to see you again.";
	otherwise:
		say "You're able to send the beast back into the depths from whence she came, the creature regarding you with a pleading wail as she descends.";

to say fsdf desc:
	now FSDOPEN is 0;
	now firebreathcount is 0;
	now firebreathready is false;
	say "     You notice something in the water, which appears to be a large shadow on its approach towards you.  Suddenly, the prior silence is shattered with the concussive crashing of waves as a massive beast hurls itself from under its surface, landing on the beach close to you.  [one of]The dragoness looks around briefly before seeing you, softly cooing[or]Looking at you, the dragoness briefly sings at you, the influence of which sends a jolt of pleasure though you[or]The dragoness chirps, tilting her finned head at you. She probably thinks she can pull off looking cute while still being a massive monster[at random].  You'd imagine its fin-like limbs would be ill-equipped to move across land, but she's quick to prove otherwise as the massive bulk begins rushing down upon you.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "feral sea dragoness"; 
	now attack entry is "[one of]The dragoness calls out and nips at you.[or]The dragoness slaps you with her narrow tail knocking you across the ground.[or]She tackles you and grinds herself against you before you manage to get free thanks to the loose sand.[or]She sings to you.  Breaking your focus and making you trip over a rock.[at random]";
	now defeated entry is "[dragoness loss]";
	now victory entry is  "[dragoness attack]";
	now desc entry is "[fsdf desc]";
	now face entry is "very much draconic in shape, adorned with a set of barbed and savage teeth.  Clearly aquatic in design, ridges and fins adorn the sides of your head, and you find it a challenge to maneuver any building with such an elongated neck";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "distinctly bloated and bulky fare, though somewhat streamlined in presentation, inferring that you'd be better suited for hauling it underwater, if your webbed and finned limbs were any indication";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]light blue, smoothly scaled[or]light blue, softly scaled[or]light blue, delicately scaled[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long, somewhat bulky tail, top adorned with a sail-like fin.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]spade-tipped and tapered[or]dark blue[at random]";
	now face change entry is "you undergo the effects of this infectious strain.  Your face draws forward, narrowing into a distinctly draconic muzzle, the features of which are subtly feminine and finned for aquatic travel, and you nearly fall over as you find your neck suddenly elongated"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you undergo the effects of this infectious strain. Your features become increasingly rounded to appeal to a more aquatic--though distinctly draconic--lifestyle, though thankfully your limbs retain their articulation and mobility so that you fare on land with minimal difficult"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it toughens. Dark, though subtly glittering, scales sprout from your flesh to cover the whole of your body.  Curiously, it feels better suited for aquatic life than one on land"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you undergo the effects of this infectious strain. You nearly lose balance as a long, large--though relatively lightweight--tail explodes from your behind. It's distinguished with a fin across it's top, inferring it's more aquatic application"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your cock turns a dark, dark blue, gradually tapering towards the tip, the flair spreading to give it a distinctly spade shape";
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 4;
	now sex entry is "Female";
	now hp entry is 80;
	now lev entry is 7;			
	now wdam entry is 21;
	now area entry is "Beach";
	now cocks entry is 0;
	now cock length entry is 0;
	now cock width entry is 0;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 21;
	now cunt width entry is 15;
	now libido entry is 45;
	now loot entry is "";
	now lootchance entry is 0;
	[ These represent the new additions to the table of random critters ]
	now scale entry is 5;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]large[or]bulky[or]aquatic[or]muscled[at random]";
	now type entry is "[one of]draconic[or]reptilian[purely at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";	[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "feral sea dragoness";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your loins, your cunt quivering with need.  You slide a hand between your legs and play with yourself, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seep into your mind.  You can feel your dripping lips becoming full and engorged in a wanton display of your body's need to be bred.  With this realization, it is clear that you've gone into heat.";
	now description text entry is "";
	now heat start entry is "[fsdheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[fsdheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[fsdinheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your lower abdomen, your ass quivering with need.  You slide a hand between your legs and play with your asshole, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seep into your mind.  You can feel your rhythmically clenching and relaxing as it becoming full and engorged in preparation for your body's need to be bred.  With this realization, it is clear that you've gone into some strange heat.";

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "feral sea dragon";
	now heat cycle entry is 7;
	now heat duration entry is 3;
	now trigger text entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your loins, your cunt quivering with need.  You slide a hand between your legs and play with yourself, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seep into your mind.  You can feel your dripping lips becoming full and engorged in a wanton display of your body's need to be bred.  With this realization, it is clear that you've gone into heat.";
	now description text entry is "";
	now heat start entry is "[fsdheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[fsdheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[fsdinheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A groan of excitement fills you as quivers of unexpected delight and need run through your lower abdomen, your ass quivering with need.  You slide a hand between your legs and play with your asshole, but find little relief for your growing urges as thoughts of the sea and its myriad, sexy creatures begin seep into your mind.  You can feel your rhythmically clenching and relaxing as it becoming full and engorged in preparation for your body's need to be bred.  With this realization, it is clear that you've gone into some strange heat.";


to say fsdheatstart:
	if cunts of player > 0:
		setmonster "feral sea dragon";
		choose row monster in table of random critters;
		increase cunt width of player by 1;
		increase cunt length of player by 1;
		if cunt width of player < cunt width entry, increase cunt width of player by 1;
		if cunt length of player < cunt length entry, increase cunt length of player by 1;
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;


to say fsdheatend:
	if cunts of player > 0:
		setmonster "feral sea dragon";
		choose row monster in table of random critters;
		say "As your heat passes, the throbbing longing you feel in your draconic loins subsides.";
		if cunt width of player > cunt width entry, decrease cunt width of player by 1;
		if cunt length of player > cunt length entry, decrease cunt length of player by 1;
	otherwise:
		say "As your male heat passes, that throbbing longing you feel deep in your ass subsides.";

to say fsdinheat:
	increase libido of player by 4;
	if heatturnskipper is true:
		now heatturnskipper is false;
	otherwise if libido of player >= 80:
		let fsdchance be ( 100 + libido of player - humanity of player );
		if a random chance of fsdchance in 250 succeeds:
			if location of player is fasttravel and location of player is not Beach Plaza and location of player is not Bouncy Castle:
				say "Your heat-filled mind calls you towards the waterfront, wanting to swim in the ocean and find a sexy aquatic lover to satisfy your heat.  Before you can regain your senses, you head back to the beach.";
				move the player to Beach Plaza;
				now Beach Plaza is known;
				now heatturnskipper is true;
				follow the turnpass rule;
			otherwise if location of player is Beach Plaza or location of player is Church Hall or location of player is Dirty Sheds or location of player is Overgrown Block:
				say "Catching the breeze of the sea in the air, your [if cunts of player > 0]pussy[otherwise]asshole[end if] quivers with need and your heat-addled mind is distracted, drawn back to the beach in the hopes of satisfying its need to be fucked and bred.";
				move the player to Beach Plaza;
			otherwise if location of player is Public Beach:
				say "Looking out over the water, your lustful urges increase and you long to rush out and play in the water.  Perhaps its cool waters will sooth your heat.  Your [if cunts of player > 0]pussy[otherwise]asshole[end if] quivers with each wave rolling onto the beach, making you feel all the more like you belong out there.";
				decrease humanity of player by 3;
				increase libido of player by 2;
			otherwise if location of player is Bouncy Castle:
				say "Looking out over the water, your lustful urges increase and you long to rush out and play in the water, momentarily distracting you from your task here.  Perhaps its cool waters will sooth your heat.  Your [if cunts of player > 0]pussy[otherwise]asshole[end if] quivers with each wave that rocks the inflatable castle, making you feel all the more like you belong out there.";
				decrease humanity of player by 3;
				increase libido of player by 2;
			otherwise if location of player is Sloping Sand or location of player is Coral Ring or location of player is Sunken Ship:
				say "Being out in the water feels so satisfying to your heat-addled body, helping to soothe your lustful urges somewhat.  Surely you are meant to stay here.  It feels so nice out in the water.  Now if you could only find some exotic undersea lover who's willing to breed your needy body.";
				decrease humanity of player by 5;
				decrease libido of player by 20;
			otherwise:
				say "Your [if cunts of player > 0]pussy[otherwise]asshole[end if] quivers and clenches in waves as your heat continues unabated.  Mmm... waves washing over you... lapping at your [if cunts of player > 0]wet folds[otherwise]crinkled hole[end if]... cool, soothing waves...  Your mind wanders to thoughts of the sea and you find yourself desiring to head there.";
	if libido of player > 100, now libido of player is 100;

[Endings now part of the Feral Sea Dragon endings]

Feral Sea Dragoness ends here.