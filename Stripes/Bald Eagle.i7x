Version 2 of Bald Eagle by Stripes begins here.
[ Version 1.0 - Original content - Stripes                  ]
[ Version 2.0 - Victory sex - Stripes                       ]
[ Version 2.1 - Impregnation for M/F sex - Wahn             ]
[ Version 2.2 - Watering Hole event bad end addition - Song ]

"Adds a Bald Eagle creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

eagledefeatnum is a number that varies.
noeaglesex is a number that varies.

to say losetoeagle:
	now noeaglesex is 0;
	let T be 1;
	if Player is submissive, increase T by 1;
	if Player is mpreg_ok, increase T by 1;
	if anallevel is 3, increase T by 1;
	if anallevel is 1, now T is 0;
	say "     Having defeated you, the eagle releases a call of triumph and pushes you down. His cock, poking from his soft feathers, is dripping with pre and eager for use on his captured prey.";
	if Player is female and a random chance of 2 in 3 succeeds:
		if Player is impreg_able and a random chance of 2 in 3 succeeds:
			say "     He roughly turns you over onto all fours and climbs atop you. As he grinds his slick cock against your pussy's wet lips, you can't help but moan a little, your needy cunt suddenly feeling empty. He nips at your shoulder and chuckles. 'Mmm... it sounds like someone's in need of a clutch in her,' he says, rubbing a taloned hand across your tummy. Before you can respond, he shifts his position enough to get his penis lined up and drives his foot-long erection into you, drawing another moan from your trembling body.";
			say "     As he mates you, he continues to nip and nuzzle at your neck and shoulders, reinforcing his dominance over you even as they feel relaxing and pleasurable. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. Your vagina squeezes and pulls at his meaty rod and, after several minutes of steady pounding, is rewarded with the hot rush of the eagle's semen. As he climaxes, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Once spent, he rubs your belly meaningfully once again before taking flight, leaving you panting and leaking his tainted seed.";
		else:
			say "     He roughly turns you over onto all fours and climbs atop you, sinking his slick cock into your pussy. You moan and quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. He nips at your shoulder and neck with his pointed beak while mating you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Bald Eagle";
	else if Player is not female and a random chance of T in 6 succeeds:
		say "     He roughly turns you over onto all fours and grabs your ass. 'You're no eagless, but you'll do for now,' he says as he climbs atop you, sinking his slick cock into your ass. You groan in discomfort at the sudden penetration, but quickly grow excited despite yourself as his soft feathers slide over your body while his hard rod drives into you. He nips at your shoulder and neck with his pointed beak while ass-fucking you. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you, stuffing your bowels with his seed. Even as you're cumming, he pushes you off his spent cock and onto the ground before soaring away.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Bald Eagle";
	else:
		say "     Tucking his wings in, he grabs your head with his taloned fingers, pulling you to his cock. He grinds his throbbing shaft against you, leaking his pre until the scent of it gets to be too much and you take it into your mouth and start sucking. You lick and suck at his cock, moaning in pleasure as you do until finally he cums, spurting his thick seed down your throat, filling your belly with his semen. Finished, he pushes you back and soars away.";
		CreatureSexAftermath "Player" receives "OralCock" from "Bald Eagle";

to say beattheeagle:
	say "     The eagle seems to recognize that battling you is a lost cause, and his head whips to the side, searching for his best way out of here.";
	say "     [bold type]If you want to do something, now's your chance...[roman type][line break]";
	let Eagle_Choices be a list of text;
	if Player is Male or Player is Herm:
		add "Jerk off and cum all over him." to Eagle_Choices;
		add "Fuck his ass." to Eagle_Choices;
		add "Ride his cock anally." to Eagle_Choices;
	if Player is purefemale:
		add "Ride his cock vaginally." to Eagle_Choices;
	add "Milk the eagle for some cum." to Eagle_Choices;
	add "Just let him go. Driving him off is enough." to Eagle_Choices;
	let Eagle_Choice be what the player chooses from Eagle_Choices;
	if Eagle_Choice is:
		-- "Jerk off and cum all over him.":
			LineBreak;
			say "[CumOn_BaldEagle]";
		-- "Fuck his ass.":
			LineBreak;
			say "[AssFuck_BaldEagle]";
		-- "Ride his cock anally.":
			LineBreak;
			say "[AssRide_BaldEagle]";
		-- "Ride his cock vaginally.":
			LineBreak;
			say "[PussyRide_BaldEagle]";
		-- "Milk the eagle for some cum.":
			LineBreak;
			say "[Milking_BaldEagle]";
		-- "Just let him go. Driving him off is enough..":
			LineBreak;
			say "     You make no effort to stop its escape, instead waving your arms at it to shoo the annoying creature away. Defeated, the eagle shrieks angrily and soars off to nurse his wounds.";

to say CumOn_BaldEagle:
	say "     You snatch the bald eagle from the air, your grip like a vise around his powerful wings. He thrashes, a whirlwind of brown and white feathers, but your strength is overwhelming. With a grunt of exertion, you slam the magnificent bird to the unforgiving ground, his powerful wings splayed uselessly beneath your weight. His enraged screeches are sharp, piercing, yet you remain unmoved, a predatory grin twisting your lips. You pin the anthro, your knee pressing firmly against his chest, effectively immobilizing the creature. The musky scent of his feathers fills your nostrils, a potent blend of wildness and vulnerability that heightens your arousal. You lean in, your voice low and commanding, and declare that the fight is over. His sharp gaze, filled with a mixture of anger and defeat, meets yours, a silent acknowledgment of your absolute dominance. The thrill of victory courses through you, fueling the already intense arousal building within. The air crackles with unspoken power - a potent mix of aggression and anticipation - as you prepare to claim your prize.";
	say "     Ignoring the eagle's continued, muffled protests, you reach down, your hand closing around your own throbbing cock. The dickhead is slick with pre-cum, a testament to the intensity of your arousal. You stroke yourself with a smooth, practiced rhythm, your eyes never leaving the defeated opponent beneath you. The feeling of your cock swelling in your hand is intoxicating; each stroke intensifies the pleasure, the growing pressure a potent mix of physical and emotional release. The anticipation builds, a heady mix of dominance and sexual gratification. You concentrate on the bald eagle's tense body, a silent proof of his submission. You find yourself focusing on the subtle rise and fall of his chest, the frantic rhythm of his heart beating against your knee. The rhythm of your hand intensifies, the pulsing sensation building inexorably to a crescendo, a moment of transcendent pleasure threatening to consume you entirely.";
	WaitLineBreak;
	say "     The pleasure is overwhelming; your orgasm erupts, a hot torrent of cum that splatters across the eagle's chest and wings. Thick ropes of semen coat the bird's feathers, glistening against his brown and white plumage. The sticky fluid clings tenaciously to the feathers, a potent symbol of your dominance, a stark visual reminder of your conquest. The musky scent of the eagle mixes with the salty tang of your cum, creating a potent, almost intoxicating aroma that hangs heavy in the air. The eagle remains tense beneath you, a captive creature completely at your mercy, his sharp gaze unwavering, if still resentful. The feeling of release is intense, both physical and emotional, a powerful sense of control that reinforces the thrill of your victory. The silence is broken only by your ragged breathing and the eagle's barely audible whimpers.";
	say "     You pull your hand away, letting your spent cock fall limp against your leg. You take a moment, breathing heavily, savoring the lingering warmth in your hand and the potent smell of your cum that permeates the air. Then, with a final, lingering look at the magnificent creature now coated in your seed, you release your hold, your dominance complete. The eagle, his feathers heavy and sticky with your cum, struggles to his feet, letting out a frustrated shriek - a sound of defiance that is ultimately powerless against your victory. With a final, defiant squawk, he launches himself into the air, disappearing into the sky; he is gone, but the potent reminder of your raw power, your complete conquest, remains on his body.";
	CreatureSexAftermath "Bald Eagle" receives "Facial" from "Player";

to say PussyRide_BaldEagle:
	say "     You seize the bald eagle, your grip a vise around his powerful wings. He thrashes, a whirlwind of brown and white feathers, but your superior strength is undeniable. You slam your defeated opponent to the hard ground, the impact jarring, pinning the magnificent bird beneath your weight. His enraged screeches are muffled, but you remain unmoved, your focus unwavering. Leaning close, you growl a simple ultimatum into the eagle's ear: he lost; submission is his only option. A guttural sound, barely a word, escapes his beak; yet, his sharp, intelligent eyes momentarily flash with defiance before surrendering to a resigned acceptance. The musky scent of his feathers, potent and wild, fills your nostrils, a heady mix that blends with the earthy aroma of the ground. The rapid beat of your avian fucktoy's heart against your chest mirrors your own rising excitement; the tension is palpable.";
	say "     With a predatory grin, you efficiently shed your [if Player is not barecrotch]clothing, and[end if]gear, until your pussy is fully exposed. Your arousal is evident; your nether lips are swollen and slick. The bald eagle watches, his gaze unwavering despite his defeat, a strange mixture of anger and reluctant fascination in his eyes. He doesn't look away, his gaze intense and unwavering. You reach down, gently parting the feathers around your defeated opponent's cock, your fingers tracing the smooth, taut length of his shaft. It's thicker at the base, tapering to a slender tip; the skin is smooth beneath your touch, firm and responsive. The simple contact is enough to initiate pre-cum to leak from the tip, which you spread up and down along his shaft, lubing it for what is to come. A raw, potent energy crackles between you, promising intense pleasure. You can smell the aroma of his arousal, adding another layer to the already powerful sensations that are overwhelming you.";
	WaitLineBreak;
	say "     You mount the eagle, your weight settling onto his already erect cock. The initial penetration is surprisingly smooth; the tapered shape of the avian shaft, combined with your own aroused wetness, makes the entrance remarkably easy. You feel the powerful thrum of the transformed man's body against yours, a primal connection that vibrates through you. The heat of his body is intense, his muscles taut and strong beneath your weight. You establish a deliberate rhythm, savoring the intense sensations; the feel of his cock stretching you is both thrilling and deeply satisfying. Meanwhile, you rub your clitoris, the friction adding another layer of pleasure, intensifying the already potent sensations. You can feel yourself building to your own climax, the anticipation almost unbearable. The rhythmic movement, the intense heat, and the touch against your clit are all working together to push you towards the edge.";
	say "     The combined internal and external stimulation pushes you towards an explosive orgasm. The pressure builds, a wave of heat flooding your body, leaving you breathless. You arch your back, your muscles clenching and releasing in a rhythmic dance. The moment of release is explosive, a momentous eruption. Your orgasm explodes, a torrential downpour of femcum coating the eagle's crotch feathers in a glistening, sticky mess. You collapse forward, your weight resting on the bird, the soft feathers surprisingly comforting against your skin. The lingering scent of his musky body clings to you, a potent reminder of your conquest, a powerful and intoxicating fragrance that you will likely remember for days to come. The aftershocks ripple through your body, a lingering tremor that only slowly subsides.";
	WaitLineBreak;
	say "     The anthro bird, however, remains remarkably still, his obvious annoyance at his lack of control palpable despite his silence. His powerful body only subtly shifts and twitches, the restrained tension even more unnerving than any protest. His silence is more unnerving than any vocalization, speaking volumes about the complex emotions churning within him: anger, frustration, and a reluctant, undeniable pleasure. Finally, his patience snaps; his pent-up desires reach a breaking point. He begins to hump his hips forcefully against you, a blatant attempt to reassert control, to claim the act as his own, a powerful display of his frustrated energy. The raw, powerful movement is both forceful and compelling, a testament to his strength and his desire.";
	say "     You meet his newfound urgency, your own rhythm shifting to fully accommodate his powerful thrusts. You feel his muscles tense, the intense pressure building rapidly. Squeezing your vaginal muscles, you tighten your grip, intensifying the sensations for both of you; the response is immediate, explosive. He bucks against you, a powerful, primal movement, and lets out a choked squawk - a sound raw with pleasure and frustrated release - as his orgasm explodes within you, a thick, hot torrent that fills you completely. The intense pressure, the searing heat, the overwhelming sensation of being completely filled leaves you breathless, your body trembling with the aftershocks. Satisfied, you dismount, rolling to your side, your breath ragged, the lingering warmth of his cum still present within you. The bald eagle, now free to move, lets out a frustrated squawk, lamenting the stickiness of his feathers, before launching himself into the air and disappearing into the sky.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Bald Eagle";

to say AssRide_BaldEagle:
	say "     You seize the bald eagle, your grip a vise around his powerful wings. He thrashes, a whirlwind of brown and white feathers, but your superior strength is undeniable. You throw your defeated opponent to the ground, the impact jarring, pinning him beneath your weight. His furious screeches are muffled, raw expressions of his frustration, but you remain unmoved, your focus unwavering. Leaning close, you growl a simple ultimatum in the eagle's ear: he lost; submission is his only recourse. A guttural sound, barely a word, escapes his beak; yet, his sharp, intelligent eyes only momentarily flash with defiance before surrendering to a resigned acceptance. The musky scent of his feathers, potent and wild, fills your nostrils, blending with the earthy aroma of the ground. The rapid beat of your soon to be avian fucktoy's heart against your chest mirrors your own rising excitement.";
	say "     With a predatory grin, you efficiently shed your [if Player is not barecrotch]clothing, and[end if]gear, presenting your bare crotch to the bird. The bald eagle watches, his gaze unwavering despite defeat, a curious mixture of anger and reluctant fascination in his eyes. You reach down, gently parting the feathers to reveal your defeated opponent's cock, your fingers tracing the smooth, taut length of his shaft. The base is thicker, tapering to a slender tip; the skin is smooth beneath your touch. The simple contact is enough to initiate pre-cum to leak from the tip, which you spread up and down along his shaft, lubing it for what is to come. The anticipation is almost unbearable; a raw, potent energy crackles between you, promising intense pleasure.";
	WaitLineBreak;
	say "     You mount the eagle, your weight settling onto his already erect cock. The initial penetration is intense; the smooth flesh pressing against your pucker, then sinking in. The tapered shape of the avian shaft makes entry surprisingly easy, a welcome contrast to the fight that led you here. The immediate thrum of the anthro's body against yours is primal, a visceral connection that vibrates through you. You establish a deliberate rhythm, savoring the intense sensations. The heat of your fucktoy's body is palpable, his muscles taut and strong beneath your weight. His musky scent intensifies, filling your senses. Your own [Cock of Player] cock, hard and throbbing, releases pre-cum onto his belly feathers. The rhythm of your movements remains deliberate, a powerful demonstration of your control over this magnificent beast, a stark contrast to the tense stillness of the anthro bird beneath you.";
	say "     The friction intensifies, the heat building with each thrust. You are acutely aware of the eagle's hard shaft inside you, the feeling both intensely pleasurable and profoundly satisfying. You sense the growing pressure within your defeated opponent, the imminent release palpable in the air. Reacting to this, your pace deepens, the rhythm becoming more primal, more urgent. The intense prostate stimulation brings your own orgasm surging; a hot, thick release explodes outward, overwhelming you with sensation. Your cum spurts, a glistening white trail across his chest, with your longest spurt even hitting his beak. The intense pleasure lingers, a potent aftershock that leaves you breathless.";
	WaitLineBreak;
	say "     The anthro bird remains remarkably still, his powerful body only subtly shifting, the restrained tension more unnerving than any protest. His silence is unsettling, speaking volumes about the complex emotions churning within him: anger, frustration, and a reluctant, undeniable pleasure. His patience finally snaps; his pent-up desires reach a breaking point. He forcefully begins humping his hips against you, a blatant attempt to reclaim control, to seize the initiative and the pleasure for himself. The raw, powerful movement is both forceful and compelling. Having reached your own pleasure, you decide to relent, to allow him this moment of feeling in control, and begin riding him once more. You meet his newfound urgency, your rhythm shifting to accommodate his powerful thrusts. His muscles bunch and tense beneath you, a thrilling display of his potent reaction.";
	say "     You squeeze your anal muscles, tightening your grip further, heightening the sensations for both of you; the response is immediate, intense. He bucks against you, his powerful cock sliding deep with each powerful thrust, and you feel him fill you very nicely. His breathing hitches, his body trembling. A choked squawk escapes his beak, a raw sound of pleasure and frustrated release as his orgasm explodes within you, a thick, hot torrent filling you completely. The intense pressure, the searing heat, the overwhelming sensation of being completely filled leaves you breathless, your body trembling with the aftershocks. Satisfied, you dismount, rolling to your side, your breath ragged, the lingering warmth of his cum still present within you. The bald eagle, now free to move, lets out a frustrated squawk, lamenting the stickiness of his cum-covered feathers, before launching himself into the air and disappearing into the sky.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Bald Eagle";

to say AssFuck_BaldEagle:
	say "     You launch yourself at the bald eagle, your weight a sudden, crushing force that drives him to the ground before he can escape. Brown and white feathers erupt around you in a chaotic burst as his powerful wings splay out, unable to prevent the impact. He lets out a furious screech, a sound that vibrates through the earth, but your grip is firm, pinning him to the ground. Ignoring his continued struggles - a desperate, powerful thrashing- you run a hand over his sleek chest, feeling the hard ridge of his ribs beneath the soft, downy feathers. His heart hammers a frantic rhythm against your palm, a potent mixture of fear and burgeoning arousal, a thrilling combination that sends a jolt of anticipation through you.";
	say "     You lean down, your voice a low growl in his ear, claiming him with the simple, potent statement that his ass is now yours. His intelligent eyes flash with defiance, a fleeting moment of resistance, before settling into a defeated squawk, a sound that signals his acceptance of your dominance. With a decisive movement, you spread your defeated opponent's legs, revealing the smooth, pale skin of his crotch above his neatly kept tail feathers. The delicate pink of his cloaca, a tight, alluring rosebud, is nestled between the dark plumage. His musky scent fills the air, a heady blend of wildness and vulnerability. You spit onto the opening, a generous amount of saliva, and then rub it in with your finger, preparing the way for your invasion.";
	WaitLineBreak;
	say "     You align your [Cock of Player] shaft, your dickhead pressing against the sensitive entrance, and begin your invasion with a slow, deliberate push. A sharp gasp escapes the anthro bird's beak, a stifled sound that is quickly swallowed by the surrounding environment. His body, however, quickly relaxes into the rhythm you establish, the initial resistance melting away under the inexorable pressure of your advance. His powerful thighs tense, his sharp talons digging into the ground, a silent testament to his submission. You feel the heat of his body, the incredible strength of his anal muscles clenching around you, a powerful, gripping embrace that is both exhilarating and intense. With each thrust, his form shudders, a low moan vibrating in his chest – a sound that is both protest and a grudging acceptance of your dominance. His own cock, previously limp with defeat, soon throbs against his feathered belly.";
	say "     The intensity of your coupling builds, a slow burn that ignites into a raging fire. You feel the eagle's body shudder with growing pleasure, his breath hitching in ragged gasps. He arches his back, attempting to meet your rhythm, his hips bucking slightly against your movements, a subtle but undeniable response to the pleasure you are inflicting. You continue, pushing to your own limit, focusing on the intense pleasure of dominating this magnificent beast. The tension in his body is palpable, his entire form a coiled spring of suppressed energy, held captive by your actions. You feel his muscles tightening around you, the anticipation of release building, a wave that threatens to overwhelm both of you.";
	WaitLineBreak;
	say "     Pleasure rages inside you, a wave threatening to consume you entirely. You push deeper, feeling the incredible tightness of his asshole gripping you. The pressure is unbearable, so very good around your thrusting cock, filling your whole body with the desire to mark the anthro bird as yours. After a barrage of hip-thrusts that grind your crotch against him in a climactic effort, you then finally ram yourself home one last time. Your cock throbs hard inside him, cum spurting into the bald eagle's gripping asshole - a hot, thick rush that leaves you breathless, a feeling of utter satisfaction and dominance. His body convulses, his entire form trembling under you. Now that you've had your pleasure, you relent and wrap your fingers around his own shaft, throbbing and more than ready for release. It doesn't take much, just a few pumps of your hand up and down along his tapering avian cock, before the bird-man erupts, shooting long streaks of cum all over his chest-plumage.";
	WaitLineBreak;
	say "     You pull out, collapsing onto the ground beside your avian fucktoy, spent but utterly satisfied. The silence is broken only by your ragged breathing. The eagle, with one last, disapproving look at his soiled feathers, pushes himself upright. With a frustrated shriek that echoes through the surrounding area, a sound of defiance against the undeniable pleasure he has just experienced, he launches himself into the air, disappearing into the sky in a huff, leaving you alone with the lingering scent of your conquest.";
	CreatureSexAftermath "Bald Eagle" receives "AssFuck" from "Player";

to say Milking_BaldEagle:
	say "     You snatch the bald eagle from the air, your grip a vise around his powerful wings. He thrashes, a frantic flurry of brown and white feathers, but your superior strength is overwhelming. With a grunt of exertion, you slam the magnificent bird to the unforgiving ground, his powerful wings splayed uselessly beneath your weight. The impact sends a jolt through his body, a sharp contrast to the effortless grace he displayed moments before. His enraged screeches are sharp, piercing, raw expressions of his frustration and defeat, yet you remain unmoved, a predatory grin twisting your lips. You pin the anthro bird, your knee pressing firmly against his chest, effectively immobilizing your defeated opponent. The musky scent of his feathers fills your nostrils, a potent blend of wildness and vulnerability that heightens your anticipation. You lean in, your voice low and commanding, a deep rumble in his ear, and declare that the fight is over, the contest decided. His sharp gaze, filled with a mixture of anger, humiliation, and a strange reluctant fascination, meets yours, a silent acknowledgment of your absolute dominance.";
	say "     Ignoring the eagle's continued, muffled protests - a guttural rumbling in his chest - you reach down, your fingers closing around the base of your avian fucktoy's cock. The shaft is surprisingly thick, tapering to a more slender tip. It's already stiff with arousal, throbbing with barely contained energy; the musky scent of his pre-cum is strong, filling your senses. You begin to stroke the transformed man's cock with a practiced hand, a steady, rhythmic motion that quickly intensifies as the creature beneath you tenses and shudders. You can feel the pulsing of his veins beneath your touch, a tangible expression of his powerful vitality, the raw power of his body reacting to your touch. The eagle's involuntary shudders intensify with each stroke, small moans escaping him despite his obvious efforts to remain stoic. You see the anticipation in his eyes, a potent mix of frustration and pleasure that only serves to heighten your own arousal. The heat of his body radiates against your hand; the potent energy is almost palpable. You are completely focused on the task at hand, your movements precise and deliberate, your attention undivided; your goal is clear.";
	WaitLineBreak;
	say "     The pressure within the bald eagle's cock builds to a crescendo, and you can feel it throbbing beneath your fingers. You grip the shaft firmly, preparing to collect your prize. The first spurts of cum are thick and viscous, quickly coating your fingers; you can feel the intense heat of his ejaculate, the raw potency of his release. You quickly guide the now-pouring stream into an empty plastic bottle you had prepared in advance, the smooth plastic a cool contrast to the heat of his ejaculate. The steady flow of the eagle's cum is thick and milky, a potent, steady stream that fills the bottle - clear evidence of his virility and your prowess. You continue milking your defeated opponent, your movements steady and expert, your focus unwavering, until the flow finally ceases, leaving you holding a bottle filled with the evidence of your dominance. The silence is punctuated only by the sound of the cum hitting the plastic, a rhythmic sound that echoes the rhythm of your strokes.";
	say "     Having harvested your prize, you carefully cap the plastic bottle, securing your trophy. You take a moment to survey the scene – the defeated eagle, still pinned beneath your knee, his plumage ruffled and his eyes wide with a mixture of shock and bewilderment. The scent of his cum is still strong, lingering in the air. With a marker, you label the bottle, clearly writing 'bald eagle' on the side. After a final look at the creature, now undeniably satisfied for having been milked, you release your hold completely. He struggles to his feet, clearly bewildered about what he just endured, his expression a mixture of shock and grudging acceptance. With a confused squawk, the bald eagle launches himself into the air and disappears into the sky, leaving you alone with your prize.";
	CreatureSexAftermath "Bald Eagle" receives "Stroking" from "Player";
	ItemGain bald eagle cum by 1;

Section 2 - Creature Insertion

to say eagledesc:
	say "     Your searching is interrupted by a sharp screech from overhead and you spot a large avian swooping down at you, talons grabbing for you. You barely dodge this first swipe as the eagle man screeches in again, this time in anger at missing. [one of]'I'll get you,' he cries[or]'You won't get away,' he cries[or]'You'll be mine, prey,' he snaps[at random] as he swoops around for another pass at you. This humanoid avian has a bald eagle, with dark brown feathers over his body and wings and a bright white over his head and neck. His wings are long and broad, formed into part of his arms. His small, taloned hands are at the midpoint of his wings['] leading edge, able to be used when the not fully extended. His feet end in the bird feet with sharp claws. His beak also looks quite sharp and dangerous.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Bald Eagle"	"[PrepCombat_Bald Eagle]"

to say PrepCombat_Bald Eagle:
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Bald Eagle"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Bald Eagle" to infections of AvianList;
	add "Bald Eagle" to infections of AvianpredList;
	add "Bald Eagle" to infections of FurryList;
	add "Bald Eagle" to infections of NatureList;
	add "Bald Eagle" to infections of MaleList;
	add "Bald Eagle" to infections of TaperedCockList;
	add "Bald Eagle" to infections of InternalCockList;
	add "Bald Eagle" to infections of BipedalList;
	add "Bald Eagle" to infections of FlightList;
	add "Bald Eagle" to infections of TailList;
	add "Bald Eagle" to infections of OviImpregnatorList;
	now Name entry is "Bald Eagle"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The bald eagle swoops in and slashes you with his talons![or]The bird man's pointed beak snaps at you, biting into you![or]The eagle grabs you with his wing hands and grinds his cock against you![or]The eagle man digs his claws deep into your shoulder![at random]";
	now defeated entry is "[beattheeagle]";
	now victory entry is "[losetoeagle]";
	now desc entry is "[eagledesc]";
	now face entry is "now that of a bald eagle, having a long, yellow beak and piercing eyes on a snow white head";
	now body entry is "partially avian, with wings built into your arms and a light, powerful frame. Your hands are small and taloned, placed at the midpoint of the leading edge of your wing, allowing them to be used by partially folding in the wing. Your legs are like a bird's, ending in sharp talons on your four grasping toes";
	now skin entry is "dark brown feathers across your body, covering your";
	now tail entry is "You have a short, feathered tail that is dark brown at the back and white in front.";
	now cock entry is "[one of]slick[or]avian[at random]";
	now face change entry is "your mouth and nose stretch forward and harden into a sharp and pointed beak. Your eyes move to the side as your head completes it transformation into an eagle's";
	now body change entry is "you gain a light, powerful frame with strong shoulders. These changes spread down your arms, forcing the bones to shift and grow long and thin. As your hand bends and extends out, growing into a wing, a second, smaller hand with taloned claws forms at your wrist. Your legs change into those of a bird with sharp talons on your four grasping toes. You are left panting and sweating after such extensive changes, but get up feeling lighter after you recover";
	now skin change entry is "ripples flow across your skin in waves. As these waves pass, small points first rise, then small tufts pop up from them. They surge and grow with each passing ripple, extending out to form a downy coat of dark brown feathers";
	now ass change entry is "you gain a short tail of feathers"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "becomes slick and smooth, sliding into a slit in your groin when not in use";
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 11; [ Monster's average damage when attacking. ]
	now area entry is "Plains"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is "eagle feather"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "bald eagle milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "bald eagle cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]avian[or]raptor[or]bird-like[at random]";
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



Table of Game Objects (continued)
name	desc	weight	object
"eagle feather"	"Exactly what it sounds like."	0	eagle feather

eagle feather is a grab object. eagle feather is infectious. Strain of eagle feather is "Bald Eagle".

Usedesc of eagle feather is "[useeaglefeather]";

to say useeaglefeather:
	say "     After twirling the feather around by the quill, you decide to start brushing is along your face. The soft feel of it brushing against you feels very nice. You continue this for a while until finally noticing that the feather has shrunk away and been absorbed into you.";


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Bald Eagle Infection"	"Infection"	""	Bald Eagle Infection rule	1000	false

This is the Bald Eagle Infection rule:
	if Player has a body of "Bald Eagle":
		trigger ending "Bald Eagle Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your infection progresses beyond the point of return, your human mind fails as your transformation progresses further. Your body alters and your wings become strong enough to carry yourself in flight. Finding a high point to soar from on your first flight, you take the air and soon learn to catch the wind and fly out to the plains at the edge of the city. You set up a small aerie in a tall building overlooking much of it, allowing you to hunt for food or prey for your lusts. While it is a nice spot, you find yourself dissatisfied when the soldiers start moving through the city below, stirring up the prey to battle or into hiding. Sick of their meddling, you fly off over their lines one evening. Your new aerie is set up in the mountains by a river with delicious fish for food and hikers to satisfy your other hungers.";
		else:
			if FaceName of Player is "Bald Eagle" and SkinName of Player is "Bald Eagle":
				say "     After being rescued from the city, you do the only sensible thing for someone in your position - politics. As an eaglemorph, the nation's pride in the bald eagle holds great sway over the voters. You become one of the first infected to be elected to office because of this and rise quickly. You have strong backing from many key demographics, especially the infected masses and the elderly. The upper class also backs you as your appearance and demeanor speaks of authority, strength and determination in the face of the adversity striking the nation. And a strong, stable country is good for steady business. Your predatory nature makes you tough on crime and international policy, but tempered by your understanding of the needs of those transformed and a changing nation's needs in this new world. While never rising to leading the nation, you are a strong figure in politics over a long and illustrious career, ending in a cushy ambassador position overseas in your twilight years.";
			else:
				say "     After being saved by the military from the infected city, you enlist with the Air Force. Despite your wings never quite enabling you to fly, despite many risky tries on your part, you long to soar above the clouds. Feeling a strong affinity for flight, you become a skilled fighter pilot and earn several commendations for missions against some of the giant wyverns and dragons that occasionally appear to wreak havoc in the skies.";

Bald Eagle ends here.
