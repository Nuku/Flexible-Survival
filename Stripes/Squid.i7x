Version 2 of Squid by Stripes begins here.
[Version 2.2 - Tweaked Anime Babe vulnerability]

[Adaptation of Squid Girl for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds a female Squid creature to Flexible Survival."

Section 1 - Creature Responses

squidcolor is a number that varies.

to say squiddesc:
	if a random chance of 1 in 2 succeeds:
		say "     Rising from the waters is a female squid creature. Her sleek and smooth body, made for gliding through the water with ease, is covered in wet-looking yellow flesh. Her head is almost human, except for having an elongated crown and large, dark eyes. The squid girl's chest is a slightly lighter color than the rest of her body and has a pair of small, flat breasts. Her arms are long tentacles lined with rows of suckers and ending in pad-like hands. Her legs are a collection of tentacles, eight in number, that twist and roll as she moves around. Her ass is small and compact, barely disturbing the silhouette of her body. Beneath the shifting tentacles, you spot her wet pussy, quivering with need.";
	else:
		say "     You are suddenly accosted by what looks to be a strange squid-girl. Sleek and smooth in form, her streamlined build gives an almost fey appearance. Seemingly gliding towards you, she exposes her glistening yellow flesh. Head human-like, it is exaggerated by an elongated crown and large, dark eyes. Further informing you of her lithe body, the creature's chest is a slightly paler facet, adorned with a pair of small, flat breasts. Her arms long tentacle-like appendages, they are lined with rows of suckers and ending in pad-like hands. Pretty much everything below the waist is obscured by a writhing mass of tentacles, twisting and rolling as she moves to attack you, strangely determined in spite of her seemingly frail appearance.";
	if BodyName of Player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, has trouble resisting the squid's swaying tentacles. You moan and squeal in barely suppressed pleasure as those tentacles squirm around you, quickly draining your resistance.";
		decrease plfleebonus by 3;
		decrease pldodgebonus by 3;
		decrease plmindbonus by 3;
		now HP of Player is ( 2 * HP of Player ) / 3;
		now Libido of Player is ( 100 + Libido of Player + Libido of Player ) / 3;

to say losetosquid:
	if HP of Player > 0:
		say "     You stand down and throw your hands up in submission against the tentacled lady. Cautiously, she advances upon you, and once sufficiently satisfied with your compliance she starts to gently relinquish you of your attire before having her fun.";
	else:
		say "     Quickly moving, you find you're too weak to react before her suctioned tendrils grab hold of you and throw you to the ground, getting a faceful of sand. She then roughly exonerates your clothing from its beleaguered owner, its lewd intent made transparent to your vulnerable form.";
	if Player is male:
		say "     Partially engulfed in a writhing mass of tentacles, the girl descends her torso upon your crotch, the soft and affection caress of these appendages quickly influencing you into arousal, and though you cannot see past the mess of flesh you doubtlessly feel your [cock size desc of Player] rod engulfed in the folds of the slinky creature's tight cunt[if Cock Count of Player > 2]. In addition to the assault on your single organ, she's not one to let your additional equipment go neglected, and proceeds to let a couple tentacles attend to these tools, her proceeding kneads and strokes exasperated by the suctioned surface of such dexterous limbs[else if Cock Count of Player is 2]. In addition to the assault on your single organ, she's not one to let your second rod go neglected, and proceeds to let a tentacle wrap around its length, her proceeding kneads and strokes exasperated by the suctioned surface of such a dexterous limb[end if].";
	if Player is female:
		say "     [if Cunt Count of Player > 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, more tentacles invading your additional feminine holes one by one. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else if Cunt Count of Player is 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, followed by another in your second female passage. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades your exposed cunt. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[end if].";
	if Nipple Count of Player > 1 and Breast Size of Player > 0:
		say "[if Nipple Count of Player > 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, occasionally switching between the numerous sets. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else if Nipple Count of Player is 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, switching between the main set and the second on occasion. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of Player] breasts, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[end if][if scalevalue of Player > 3]. It's a little awkward for her to overpower a creature substantially larger than herself, but it's transparent that she enjoys the unique challenge of abusing such a sizable beast[end if].";
	else:
		say "     She bears down upon you, her suctioned 'hands' affectionately kneading your [bodydesc of Player] chest, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[if scalevalue of Player > 3]. It's a little awkward for her to overpower a creature substantially larger than her, but it's transparent that she enjoys the unique challenge of abusing such a sizable beast[end if].";
	if anallevel is 3:
		say "     Her pleasurable amusement certainly lacking in restraint, you're jolted with the immediate sensation of one of her numerous tendrils teasing at your exposed ass. The slick and smooth organ slowly worms its way into these confines, causing you to moan. She giggles merrily, your subsequent protests a source of mirthful amusement to the diminutive creature, her tentacle wriggling its way deeper into your bowels, forcing you to contend with its irreverent stimulation.";
	if Player is male:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, her own climax matching yours as your ejaculate into her hidden depths[if Cock Count of Player > 2]. Your additional organs aimed at you, they too explode against her tendril's affection, dousing you with your own fluids[else if Cock Count of Player is 2]. Your second organ aimed at you, it too explodes against her tendril's affection, dousing you with your own fluids[end if][if Cunt Count of Player > 1]. Further exacerbating your release, your abused cunts tighten against the small creature's intrusions[else if Player is female]. Further exacerbating your release, your abused cunt tightens against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else if Player is female:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, [if Cunt Count of Player > 1]your abused cunts tightening against the small creature's intrusions[else if Player is female]your abused cunt tightening against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else:
		say "     She watched you as you writhe against her perverse affections, very much amused by your protests as she arouses you, lacking any sexual outlet to sate her relentless assault. You're about to pass out from exhaustion before she finally relents, slowly prying her limbs from your beleaguered form, and departing with a merry giggle and a gentle kiss.";
	say "     'Come back soon,' she whispers to you, 'I'll be waiting,' before she descends back into the depths of the coast. Regardless of how you feel about the circumstances which unfurled before you, you have to admit that it's a little embarrassing to be covered in all these welts from the abuse of the squid girl's suckers.";

to say beatthesquid:
	say "     [bold type]You feel that she won't last much longer. How do you want to handle the end of your fight?[roman type][line break]";
	let Squid_Choices be a list of text;
	if Player is male:
		add "Fuck her pussy." to Squid_Choices;
		add "Fuck her ass." to Squid_Choices;
		add "Let her fuck your ass with her tentacles." to Squid_Choices;
	if Player is female:
		add "Let her fuck your pussy with her tentacles." to Squid_Choices;
	add "Just knock her away and let her flee." to Squid_Choices;
	let Squid_Choice be what the player chooses from Squid_Choices;
	if Squid_Choice is:
		-- "Fuck her pussy.":
			LineBreak;
			say "[Fuck_SquidGirl_Pussy]";
		-- "Fuck her ass.":
			LineBreak;
			say "[Fuck_SquidGirl_Ass]";
		-- "Let her fuck your pussy with her tentacles.":
			LineBreak;
			say "[SquidGirl_TentacleFuckPussy]";
		-- "Let her fuck your ass with her tentacles.":
			LineBreak;
			say "[SquidGirl_TentacleFuckAss]";
		-- "Just knock her away and let her flee.":
			LineBreak;
			say "     You strike the aquatic creature down, and - seeing this as a losing fight - she quickly tumbles back into the depths of the waters from whence she came, releasing a cloud of ink to hide her escape.";

to say Fuck_SquidGirl_Pussy:
	say "     The strange squid-girl attempts a desperate move, a sudden puff of dark ink blooming in the water around her as she tries to dart away, a final, instinctual effort after the light tussle. But you are quicker, your hand shooting out through the dissipating cloud to wrap firmly around one of her tentacle-arms, stopping her escape instantly. The sleek, yellow-skinned form goes rigid for a second, then slackens against your grip, all fight draining away. Her large, dark eyes meet yours, wide with a sudden, deep submission, the earlier determined glint replaced by a pliant yielding. She had come at you before, driven by a strange, primal horniness, but now, defeated, she is yours to command, her glistening form pliant in your grasp.";
	say "     You maintain your hold on her tentacle, drawing the sleek form closer. Her mass of lower tentacles ceases its writhing, settling slightly as you guide her. You position her, her slender body surprisingly cooperative, the slightly paler facet of her chest and the small, flat breasts rising and falling with her quickened breaths. Between the thick bundle of her leg tentacles, the smooth, human-like folds of her pussy come into view, glistening with natural lubrication, an inviting contrast to the alien texture of her skin. The air feels thick with the salty scent of her, mingling with the faint, metallic tang of the ink.";
	WaitLineBreak;
	say "     You guide your [Cock of Player] shaft to her, pressing against the soft, yielding entrance. A soft, involuntary sound escapes her, a faint gurgle or sigh that resonates strangely. You begin to thrust, easing yourself inside the tight, wet sheath. The initial movement is met with a subtle clenching, her muscles adapting to the intrusion. The depth feels different, softer somehow than human flesh, yet the sensation of being held, surrounded by her warmth and slickness, is intensely pleasurable. As you move slowly at first, a subtle pulse of color begins to play across her yellow skin - faint waves of pink and orange ripple beneath the surface, flowing from her core outwards, a living blush.";
	say "     As you deepen the thrusts, her long, tentacle-like arms begin to move, not in struggle, but in a seeking caress. Rows of small suckers brush lightly against your back, your sides, adhering and releasing with a soft popping sound that adds to the sensory experience. Some of her lower tentacles stir as well, wrapping loosely around your legs, your hips, pulling you subtly but insistently tighter against her, drawing you deeper into her strange, wet core. The color pulses on her skin grow slightly bolder, waves of violet and red joining the mix, flowing faster across her surface with each powerful stroke, her glistening form shifting hues with her building arousal.";
	WaitLineBreak;
	say "     Movements become more urgent, her body arching slightly into your thrusts, the suckers on her arms pressing harder against your skin. Quick, sharp gasps escape her, sounds that are not quite human, but clearly expressive of escalating sensation. Her tentacles tighten their grip, holding you fast as you drive into her, seeking the deepest point. Rhythmic sounds of wet flesh meeting wet flesh fill the space between you. The color display on her skin becomes frantic, rapid flashes of vivid blues, greens, and deep purples exploding across her body, creating a dazzling, chaotic pattern that signals her imminent release. Her eyes, wide and dark, glaze over for a moment, and with a sudden, full-body shudder, a wave of intense clenching ripples through her. She cries out, a strange, alien noise tinged with pleasure and release, her small, flat breasts rising sharply as her orgasm washes over her, her skin momentarily flashing a blinding white before settling into a deep, flushed red.";
	say "     You feel her release holding you tightly, her body pulsing around you, the deep red hue of her skin a testament to her recent climax. Driven by her orgasm and your own building arousal, you deepen your thrusts, pushing hard into her receptive form. The tight, slick heat inside her is overwhelming, the grip of her internal muscles sending shivers through your body. You reach your own peak quickly, a sudden, powerful surge, emptying yourself deep inside her yielding vagina, the hot flood of cum filling her with a profound sense of completion. You hold still for a moment, catching your breath, her skin slowly returning to its base yellow hue, save for a few lingering pink splotches. Panting, you withdraw slowly. Her tentacles loosen their grip, her body relaxing. You step back, and with a silent, fluid movement, she turns and ducks beneath the surface of the nearby water, her form gliding swiftly away, vanishing into the depths until the next encounter.";
	CreatureSexAftermath "Squid" receives "PussyFuck" from "Player";

to say Fuck_SquidGirl_Ass:
	say "     The strange squid-girl attempts a desperate move, a sudden puff of dark ink blooming in the water around her as she tries to dart away, a final, instinctual effort after the light tussle. But you are quicker, your hand shooting out through the dissipating cloud to wrap firmly around one of her tentacle-arms, stopping her escape instantly. The sleek, yellow-skinned form goes rigid for a second, then slackens against your grip, all fight draining away. Her large, dark eyes meet yours, wide with a sudden, deep submission, the earlier determined glint replaced by a pliant yielding. She had come at you before, driven by a strange, primal horniness, but now, defeated, her glistening form is pliant in your grasp.";
	say "     You maintain your hold on her tentacle, drawing the sleek form closer. Her mass of lower tentacles ceases its writhing, settling slightly as you guide her. Positioning her, the squid girl's slender body surprisingly cooperative as you pull her small, pert butt higher, guiding her into just the right position. Between the thick spread of her leg tentacles, the small pucker of her anus comes into view, tight and inviting. As your intention becomes clear, a jolt goes through her form, and her skin flashes with sharp, warning colors - jarring reds and yellows pulsing rapidly beneath the surface, a visual representation of surprise and perhaps apprehension, though she remains physically pliant.";
	WaitLineBreak;
	say "     Pressing yourself against the tight opening, you begin your entry. The initial penetration is met with resistance, a deep tightness requiring slow, deliberate pressure. A small, choked sound escapes her, higher pitched and tinged with that same surprise shown on her skin. The warning colors on her skin falter for a moment, replaced by a confused swirling of hues as your entry stretches her, easing inch by careful inch into the tight sheath. The sensation is different, deeper and more muscular, a profound feeling of being gripped and held.";
	say "     As you slowly begin to thrust, finding a rhythm against the firm hold of her anus, the initial surprise on her skin fades away. The warning colors subside, replaced by a slower, undulating pulse of warmer tones - soft oranges, pinks, and blues ripple across her yellow flesh. Her long, tentacle-like arms begin to move. One snakes down, its tip brushing against the human-like folds between her leg tentacles, then slipping inside her own vagina, a strange, slick self-penetration. Another tentacle tip seeks out her clit, rubbing and pressing with a gentle, rhythmic motion, the small suckers working against her sensitive bud, while her small breasts rise and fall with quickening breaths.";
	WaitLineBreak;
	say "     Her body begins to relax into the dual stimulation, her hips starting to undulate with yours, meeting your movements, pressing back against your anal penetration while simultaneously urging her tentacle deeper inside herself. The colors on her skin deepen, the warm hues intensifying and spreading, flowing faster and more vibrantly across her form with each of your powerful thrusts into her anus, matched by the steady pressure of her tentacle in her pussy and the rubbing on her clit. Quick gasps punctuate the wet sounds of your coupling, her strange vocalizations now clearly tinged with pleasure. The colors become a frantic, beautiful storm - electric blues, vivid greens, and deep purples flash across her surface in rapid, chaotic waves, announcing the imminent explosion of her pleasure.";
	say "     Her body tenses, a sharp cry escaping her as the climax seizes her. A full-body shudder racks her frame, her tentacles tightening convulsively around you and herself. Her skin flares blindingly white for a fleeting second, then settles into a deep, saturated red as the wave of intense pleasure washes over her, her internal muscles clenching powerfully around your cock. You feel her release holding you tightly, her body pulsing around you, the deep hue of her skin a testament to her recent climax. Driving hard into her yielding anus, you reach your own peak quickly, a sudden, powerful surge, emptying yourself deep inside her, the hot flood of cum filling her with a profound sense of completion. Her tentacles loosen their grip, her body relaxing as you hold still for a moment, catching your breath. The red shade on her skin slowly fades back to her base yellow, save for a few lingering pink splotches. You step back, and with a silent, fluid movement, she turns and ducks beneath the surface of the nearby water, her form gliding swiftly away, vanishing into the depths until the next encounter.";
	CreatureSexAftermath "Squid" receives "AssFuck" from "Player";

to say SquidGirl_TentacleFuckPussy:
	say "     The strange squid-girl attempts a desperate move, a sudden puff of dark ink blooming in the water around her as she tries to dart away, a final, instinctual effort after the light tussle. But you are quicker, your hand shooting out through the dissipating cloud to wrap firmly around one of her tentacle-arms, stopping her escape instantly. The sleek, yellow-skinned form goes rigid for a second, then slackens against your grip, all fight draining away. Her large, dark eyes meet yours, wide with a sudden, deep submission, the earlier determined glint replaced by a pliant yielding. She had come at you before, driven by a strange, primal horniness, but now, defeated, her glistening form is pliant in your grasp.";
	say "     Drawing her closer, you press your body against hers, aligning your [if Player is not barecrotch]quickly bared [end if]crotch with the point where her leg tentacles meet. Spreading the appendages, you see her human-like pussy there, small and pristine. Skin meets skin, warm and yielding, the texture of her yellow flesh surprisingly smooth. You begin to grind your hips against hers, a slow, deliberate friction. The sweet, salty scent of her fills the air. As your clits rub against one another, a low hum emanates from her - the sound natural, a deep, resonant purr that vibrates through her form and into yours. On her skin, a soft, almost imperceptible blush of pink begins to spread.";
	WaitLineBreak;
	say "     Desiring more direct contact, you reach down, your fingers wrapping around one of her strong, tentacle-like arms. The rows of suckers brush against your palm, a strange, intriguing texture. You guide the tip of the tentacle towards your own waiting pussy, wet with anticipation. As you press the smooth, slightly tapered tip against your entrance, she seems to understand immediately, her own tentacles shifting, becoming more active. A soft, wet sound escapes her as the tentacle slides inside you, a strange, alien invasion that is instantly arousing. The pink blush on her skin deepens, waves of subtle orange joining it.";
	say "     Taking full control, she drives the tentacle deeper into your vagina, the firm yet flexible appendage filling you with surprising completeness. At the same time, another tentacle snakes down, finding her own pussy, its tip slipping inside her. Now, both of you are being penetrated, a silent communication passing between your bodies. The rhythm of her tentacles inside you and herself becomes synchronized, a steady, driving pace that intensifies the sensation. The colors on her skin grow more vibrant, pulsing with increasing speed - greens and blues mixing with the pinks and oranges, flowing in complex patterns across her chest and upper body.";
	WaitLineBreak;
	say "     As the dual penetration continues, two more tentacles move with purpose. One finds your sensitive clit, its sucker-lined tip beginning a deliberate, rhythmic rub, the unique texture and firm pressure quickly building intense pleasure. The other seeks out her own clit, mirroring the action, her body tensing slightly under the touch. The combined sensations - deep penetration in both of your vaginas and the focused, insistent rubbing on both clits - sends pleasure rocketing through your bodies. Your hips buck involuntarily, matching the rhythm of her tentacles. Her gasps become more frequent, higher pitched, mixing with your own ragged breaths. The color display on her skin erupts into a chaotic, dazzling light show - rapid, brilliant flashes of violet, crimson, and electric yellow explode across her form, signifying the imminent, overwhelming wave.";
	say "     The world dissolves into pure sensation as the simultaneous orgasm hits. A raw cry tears from your throat, echoed by her own strange, beautiful shriek as your bodies convulse together. Her tentacles clench around you and herself, the intense pleasure rippling through both of you in a shared, explosive release. Her skin glows with a blinding white light for a second, then settles into a deep, flushed red as the climax subsides. The intense arousal slowly ebbs, leaving you both spent and breathless. The tentacles inside you and herself begin to slide out, slick and warm. With a silent, fluid motion, she pulls completely free and turns, her form gliding beneath the water's surface, vanishing into the depths, leaving you tingling and alone.";
	CreatureSexAftermath "Player" receives "PussyDildoFuck" from "Squid";

to say SquidGirl_TentacleFuckAss:
	say "     The strange squid-girl attempts a desperate move, a sudden puff of dark ink blooming in the water around her as she tries to dart away, a final, instinctual effort after the light tussle. But you are quicker, your hand shooting out through the dissipating cloud to wrap firmly around one of her tentacle-arms, stopping her escape instantly. The sleek, yellow-skinned form goes rigid for a second, then slackens against your grip, all fight draining away. Her large, dark eyes meet yours, wide with a sudden, deep submission, the earlier determined glint replaced by a pliant yielding. She had come at you before, driven by a strange, primal horniness, but now, defeated, she is yours to command, her glistening form pliant in your grasp.";
	say "     You maintain your hold on her tentacle, drawing the sleek form closer. Her mass of lower tentacles ceases its writhing, settling slightly as you guide her. You position her, her slender body surprisingly cooperative, the slightly paler facet of her chest and the small, flat breasts rising and falling with her quickened breaths. Between the thick bundle of her leg tentacles, the smooth, human-like folds of her pussy come into view, glistening with natural lubrication, an inviting contrast to the alien texture of her skin. The air feels thick with the salty scent of her, mingling with the faint, metallic tang of the ink.";
	WaitLineBreak;
	say "     You bring your crotch near hers, but instead of pressing into the opening that seems offered, you pause. A subtle tension stiffens her form for a second, and a confused swirl of hues – soft greens and blues – ripples beneath her skin, her large eyes questioning. Ignoring the wet, ready invitation of her pussy, you reach down, your fingers wrapping around one of her strong, tentacle-like arms. The rows of suckers brush against your palm, a strange, intriguing texture. You guide the tip of the tentacle to the glistening folds between her nether lips, slicking it wet with the natural lubrication pooling there.";
	say "     With the tentacle now coated in her warmth and slickness, you guide the tip between your own buttocks, pressing gently against the tight opening. A jolt goes through her form as the intent registers, and sharp, surprised colors – reds and yellows – flash across her skin. You ease the tentacle inside, a strange, firm yet flexible intrusion entering your ass. She resists for a fraction of a second, the surprised colors intensifying, but then her inherent submission takes over. The squid girl gives a soft, alien gasp and begins to drive the tentacle deeper inside you, her movements becoming more deliberate, exploring the unfamiliar territory within your body.";
	WaitLineBreak;
	say "     Inside you, the tentacle feels around, the subtle pressure and strange texture of the suckers sending unexpected shivers of pleasure through your core. Her body leans into the task, her eyes now wide with a mixture of surprise and intense curiosity. With each movement, the tentacle seems to be seeking something, feeling for a specific point. Suddenly, a deep, resonant pressure hits as she presses your postrate. Your breath catches in your throat, your legs tremble, and a low moan escapes your lips. A visible wave of pure, overwhelming lust washes over you, making your entire body quiver.";
	say "     Sensing your distraction, that moment of profound vulnerability caused by the internal stimulation, the strange squid-girl acts with sudden, predatory purpose. Her body shifts, leverage found, and she rams her own wet pussy down onto your waiting, hard cock. A shocked gasp tears from your lungs as you are simultaneously impaled from above and penetrated from behind. She begins to ride you with surprising strength and rhythm, driving your cock deep into her while continuing to manipulate the tentacle inside your ass, focusing on that sensitive spot she found. The colors on her skin explode into a frantic, dazzling storm – rapid, brilliant flashes of violet, crimson, and electric yellow erupt across her form, a chaotic display of her own building arousal and the intensity of the moment.";
	WaitLineBreak;
	say "     Your body can't take the double stimulation for long. The anal pressure from the tentacle, combined with the tight, wet sheath of her riding pussy, pushes you over the edge. A raw cry rips from your throat as your orgasm hits, your body convulsing around the tentacle inside you and the weight of her riding your cock. You pump your load deep into her vagina in a thick, hot creampie as you come. Feeling your release, she gives a sharp, alien shriek, a wave of intense clenching rippling through her. As you empty yourself inside her, she simultaneously begins to rub her own clit frantically with another free tentacle tip, riding your spent form and bringing herself to a swift, powerful climax. Her skin flares blindingly white for a second, then settles into a deep, flushing red as her orgasm throbs through her body.";
	say "     The intense arousal slowly ebbs, leaving you both spent and breathless. The tentacles inside you and her begin to slide out, slick and warm. With a silent, fluid movement, she pulls completely free and turns, her form gliding beneath the water's surface, vanishing into the depths.";
	CreatureSexAftermath "Player" receives "AssDildoFuck" from "Squid";

to say squidskinchange:
	let tempnum be squidcolor;
	now squidcolor is a random number between 0 and 3;
	if squidcolor is tempnum, increase squidcolor by 1;
	if squidcolor is 4, now squidcolor is 0;
	say "a sensation like cold, rushing water flooding through your veins as your skin sheds away revealing slick smooth red flesh below. As you admire your new skin with wonder, it suddenly shifts to blue. Your surprise brings on a yellow hue. With a bit of practice, you settle on a color that suits you";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Squid"	"[PrepCombat_Squid]"

to say PrepCombat_Squid:
	setmongender 4; [creature is female]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Squid"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Squid" to infections of AquaticList;
	add "Squid" to infections of FurryList;
	add "Squid" to infections of NatureList;
	add "Squid" to infections of FemaleList;
	add "Squid" to infections of TentacleCockList;
	add "Squid" to infections of BipedalList;
	add "Squid" to infections of OviImpregnatorList;
	add "Squid" to infections of FeralmindList;
	add "Squid" to infections of TailweaponList;
	now Name entry is "Squid";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The squid girl whips her tentacles at you, slapping you around with her numerous tentacles![or]The female cephalopod turns and squids ink at you, temporarily blinding you and letting her strike at you with her tentacles![or]The squid girl wraps her tentacles around you and squeezes, trying to crush the fight out of you![or]The squid's tentacle arms manage to latch onto you, pulling you into her embrace for a cold, wet kiss![or]The squid girls tentacles grab you, groping you all over![at random]";
	now defeated entry is "[beatthesquid]";
	now victory entry is "[losetosquid]";
	now desc entry is "[squiddesc]";
	now face entry is "almost human-like, except for the soft-fleshed, elongated crown and large dark eyes";
	now body entry is "sleek and smooth, made for gliding through the water with ease. Your chest is a slightly lighter color than the rest of your body. Your arms are long tentacles, lined with rows of suckers and ending in pad-like hands. Your legs are a collection of tentacles, eight in number, that twist and roll as you move around";
	now skin entry is "wet-looking [if squidcolor is 1]red[else if squidcolor is 2]blue[else if squidcolor is 3]yellow[else if squidcolor is 0]purple[end if]";
	now tail entry is "Your ass is small and compact, barely disturbing the silhouette of your body.";
	now cock entry is "bulb-headed tentacle";
	now face change entry is "your previous features seem to melt away as your face returns to your normal, human shape. Your elation (or disappointment) is soon interrupted as you feel a strange pull at the top of your head. Your skull lengthens and tapers to a gentle point of soft flesh. The world shimmers, like you're looking through a pool of water, as your eyes swell and grow. You look around and see the world in a new clarity";
	now body change entry is "your body swells and then suddenly contracts into a smooth streamlined shape. You feel a second and third heartbeat grow in your chest, your new hearts flooding your body with strength and energy. Arms! Like! Noodles! Your arms fall uselessly to your sides and your hands droop as your bones dissolve into your flesh. A trail of small suckers run down your floppy limbs and spread over your flat paddle-shaped hands. As your arms swell with fluid, you're slowly able to regain control. After a few fumbles, you're able to adapt to using them and being able to pick up items with ease, and maybe even play the piano. Your legs quiver, ripple, and give way as everything from your femurs on down are reabsorbed into your body. You collapse to the ground with a heavy thud and fight to stay calm as your each legs split into a quartet of tentacles that fuse into your hips. After a bit of stumbling and unceremonious flopping about, you're able to right yourself. Once you get the hang of it, it's not that bad";
	now skin change entry is "[squidskinchange]";
	now ass change entry is "your ass shrinks and tightens, almost disappearing into the natural contours of your body";
	now cock change entry is "your cock starts to wiggle and squirm almost like it has a mind of its own. A large tapered bulb grows at the end while your shaft gains a rough, ridged texture. It wiggles around, almost like it's waving hello. Not wanting to be rude, you wave back";
	now str entry is 12;
	now dex entry is 15;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 16;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 32; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 1; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 5;
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "squid milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]soft[or]flexible[or]boneless[at random]";
	now type entry is "[one of]cephalopod[or]squid-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Squid Infection"	"Infection"	""	Squid Infection rule	1000	false

This is the Squid Infection rule:
	if Player has a body of "Squid":
		trigger ending "Squid Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     With thoughts of the cool waters of the ocean, you head back to the beach area as your infection starts rewriting your mind. Discarding you pack, you slide your sleek body into the water and swim out to find the other squids. You join their underwater school, frolicking and fondling one another happily under the waves[if Player is male]. Having a cock, you are quite popular with the cute girls[end if].";
		else:
			say "     Being partially aquatic now, the military keep you in a special holding facility for those with aquatic transformations. There is some interest in you and the others and they get several marine biologists to study your group. Several members of the military speak to you as well. While several of the others are swayed and recruited by the military, you have little interests in their offers and are happy just to swim around and enjoy your sensitive, new form. You do make friends with one of the marine biologists though, and she helps you make contact to join a marine park's staff after your release. Given your extensive transformation, you are given work as part of the cleaning staff. Able to clean the tanks and scrub the walls from within while filled, that is your primary task. You don't mind though, as it lets you [']make friends['] with all the lovely whales and dolphins after hours.";

Squid ends here.
