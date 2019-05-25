Version 1 of MPreg Platypus by Sapphire begins here.
[Version 1 - Initial Creature Setup]

"Adds a Template creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Platypus" } to infections of MaleList;
	add { "Platypus" } to infections of FurryList;

to say platypusdesc:
	setmongender 3; [creature is male]
	say "     You hear the sound of something wet shifting through the sand. At first, you pass it off as the waves of the ocean against the beach, but after a few moments, it sounds more and more like footsteps getting closer. Concerned, you look around to find the source. Down the beach you find a gravid figure holding their belly and waddling towards you. As it gets closer you see that the figure is a male with a duck's bill on the body of a heavily pregnant otter sporting wide hips and a broad tail like a beaver.";
	if BodyName of Player is "Platypus":
		if gestation of child > 0 and gestation of child < 20:
			say "     The creature approaches you and takes a moment to catch his breath. He looks up at you and smiles, a hand on his belly. 'Good to see another platypus out and about. I see you're working on another clutch. Congratulations!' Reaching forward, he rubs at your belly lovingly, feeling your belly fur move under his webbed fingers. You recoil from his touch with mild concern. 'Hey now... No need to be like that,' the platypus whines, getting a bit more aggressive with his advances.";
		else:
			say "     The creature approaches you and takes a moment to catch his breath. He looks up at you and smiles, a hand on his belly. 'Good to see another platypus out and about. Had many clutches lately?' Reaching forward, he chuckles and rubs at your belly playfully. 'How's about we try for one now?' With that, he takes a few steps back, being polite and giving you a bit of a warning before he starts a fight.";
	else if BodyName of Player is "Red Kangaroo":
		say "     Looking it over again, you realize this isn't a chimera, but an actual animal - a duck-billed platypus. The creature staggers to a stop in front of you and spends a moment catching his breath, hands on his knees. 'Nice to see another Aussie about. Pardon my lack of manners, but these eggs are weighing me down a bit.' He straightens and stretches. 'How about a little friendly sparring? Don't worry about me. I'm fit enough to keep up.'";
	else:
		say "     Looking it over again, you realize this isn't a chimera, but an actual animal - a duck-billed platypus. The creature staggers to a stop in front of you and spends a moment catching his breath, hands on his knees. 'Just give me a second. These eggs are getting a bit heavier lately.' He pants a little longer, his belly swaying with each breath. Watching the hypnotic motions of the gravid male, he grins and says, 'You'll see what I mean soon enough.' With an unexpected burst of movement, the platypus charges, leaving little time to prepare yourself for combat!";

to say losetoplatypus:
	if gestation of child > 0 and gestation of child < 20:
		say "     You fall to your knees under the platypus's assault. He goes and kneels beside you, his hand going quickly to your belly. As he rubs it for a moment, he looks you in the eyes. 'You should take better care of yourself, especially in your condition.' He holds you for a moment longer, rubbing your belly and staring at it as if lost in thought. Then he shakes his head as if to clear it, then smiles. 'Well, if you're ever up for another litter when you're done with this one, you're always welcome to find me. I'm sure you know how.' Then he walks off into the ocean, waving with his tail lifted high.";
	else:
		say "     You fall to your knees under the platypus's assault. He grins and rubs his belly as he stands over you. [if Player is impreg_ok]'Soon enough you'll have a clutch of your own to take care of. But until then, how's about you and I have a little fun?'[else]'Now now... don't let the belly fool you. I can make you feel just as good as any guy out there.'[end if] A few glances up and down your body, a few rubs over his taut belly, and his dark shaft starts peeking out of its sheath, growing erect.";
		if Player is male:
			say "     He smiles as he nudges you onto your back, sliding off your clothes. Looking over your bare rump a few moments, he smiles. 'It's a good start. But I think you'll look so much better with a big belly full of eggs.' Leaning in, he kisses at your ass, then gives a long lick between your cheeks. Suddenly he shifts and grabs you by the feet and hoists your hips to his, his cock throbbing hotly between your legs.";
			say "     After a few moments of prodding, his precum has created enough lubrication to push his cock into you slowly, letting out a moan of relief. 'You're such a nice lay after so long...' He grunts as he starts thrusting with vigor, grabbing your legs for extra leverage. With his belly pressed against your groin, teasing your cock and balls more and more from each thrust, you soon become fully aroused, leaking your precum into his fur.";
			say "     The rhythmic rocking pleasure builds into a small eternity. He tenses up, holding your hips to his, twitching as he cums into you. By then you can no longer take the sensations of his fur rubbing up and down your shaft. Leaning in, he starts to lick and nip at your neck, his hands exploring your body sensually, especially your belly. The hot sticky cum tingles inside you strongly, arousing you further.";
			say "     Giving into bliss, you cum hard, coating his fur with your seed. The platypus flops onto his back, pulling his cock out of your rump making a wet 'schluck' sound. 'Wow. I haven't had sex like that in days. I'll have to find you again sometime.' He grunts and stands, staggering a moment with the weight of his egg-filled belly, brushing the sand off of his fur, then starts walking off into the ocean to clean your cum off of his fur.[ovichance]";
		else if Player is female:
			say "     He smiles as he nudges you onto your back, sliding off your clothes. Looking over your body, he frowns. 'This won't do at all. I can't get more eggs from that.' With a gesture to your pussy, he sighs. 'Well, I guess we can fix that, and a little... [']Personal['] problem I've been having. You look between the creature's legs and watch as he grows swiftly erect. He slowly crawls over your body, his belly dragging over yours.";
			say "     Soon, his cock presses at your slit and starts to push in. Moaning in relief, he whispers in your ear 'You're such a nice lay after so long...' He grunts as he starts thrusting into you with vigor, grabbing your legs for extra leverage. His belly pressed against yours, he starts to thrust in deeper. His heavy womb presses down on your belly.";
			say "     The rhythmic rocking pleasure builds into a small eternity. His muzzle gets close to your neck and you feel his hot breath on it. A few moans escape his lips as he builds up speed, driving deep. He tenses up, holding your hips to his, keeping his dick deeply pressed into you as he cums hard. With each twitch of his cock, you feel his warm seed begin to flood you. The heat of his potent seed sends you over the edge, your hips twitching and your hands grasping at the sand beneath you.";
			say "     A few moments pass as the pair of you pant, recovering from the orgasmic sensations. Moments pass and he slowly pulls out of you, grinning. 'Wow. I haven't had sex like that in days. I'll have to find you again sometime.' He grunts as he stands, staggering with the weight of his egg-filled belly. He winks at you as he turns to leave, walking into the ocean to clean off his fur.[ovichance]";
		else:
			say "     He smiles as he nudges you onto your back, sliding off your clothes. Looking over your bare ass a few moments, he smiles. 'It's a good start. But I think you'll look so much better with a big belly full of eggs.' He kneels, then grabs you by the feet and hoists you up to his hips, his cock throbbing hotly between your legs.";
			say "     After a few moments of prodding, he finally has enough lubrication to push his cock into you slowly, letting out a moan of relief. 'You're such a nice lay after so long...' He grunts as he starts thrusting with vigor, grabbing your legs for extra leverage. His belly pressed against yours, he starts to thrust in deeper. His heavy womb presses down on your belly.";
			say "     The rhythmic rocking pleasure builds into a small eternity. He tenses up, holding your hips to his, twitching as he cums into you. With each twitch of his cock, you feel his warm seed begin to flood you. The heat of his potent seed sends you over the edge, your hips twitching and your hands grasping at the sand beneath you.";
			say "     Giving into bliss, you hit orgasm, your sphincter squeezing his shaft tightly, holding onto as much hot cum as you can. The platypus flops onto his back, pulling his cock out of your tight sphincter. 'Wow. I haven't had sex like that in days. I'll have to find you again sometime.' He grunts and stands, staggering a moment with the weight of his egg-filled belly, then starts walking off into the ocean to clean off his fur.[ovichance]";
	if BodyName of Player is "Platypus" and player is pure and player is not mpreg_ok and player is puremale:
		LineBreak;
		say "     You feel something tingling in your belly as it grows warm and put your hands on it in concern. Then a thought clicks suddenly into your head: You can now become pregnant through anal sex, much like the platypus who did this to you.";
		say "     [']MPreg['] has been added to your list of feats.";
		add "MPreg" to feats of Player;
		say "[ovichance]";

to say beattheplatypus:
	say "     The platypus grabs his belly and falls back, raising a hand up in surrender. He looks up at you with his brown eyes and says, 'Just... whatever you do, just leave my clutch alone.' Gazing at and holding his gravid womb, he patiently awaits your decision.";
	if Libido of Player > 40:
		if Player is not neuter:
			say "     As you look over the platypus, you realize that fun with the pregnant male could be exactly what you need, and the stirring in your groin seems to agree with your assessment.";
			LineBreak;
			say "     Do you have some fun with the poor man?";
			if Player consents:
				say "     You hush the platypus and kiss him firmly on his bill. You whisper in his ear some reassurances, stroking his fur, your hands going down to his belly. A gentle push rocks him gently back into the sand, the soft beach forming a makeshift bed. As you smile and disrobe, the male seems to relax, realizing you don't intend to hurt him.";
				if Player is male:
					say "     Moving yourself closer to the prone and nude male, you grin, sliding your form over his. Your hands start roaming his belly, feeling the firm eggs shift within, to which the platypus shudders, starting to grow erect, aroused by the feeling of the eggs stretching his belly taut. Squirming underneath of you, his hand starts going to your groin, starting to stroke your shaft lightly, trying to get you as aroused as he is.";
					say "     Soon enough, your erect shaft starts to throb under his attentions, starting to leak a little precum. He smiles and shifts in the sand, spreading his legs a little to give you a good view of his cheeks and the tight hole that lays between them. You understand his meaning and nod, carefully lining up your shaft to his pucker, pressing at it slowly. He moans a little, his asshole accepting your rod and squeezing it tightly.";
					say "     Slowly, but with increasing vigor, you start to thrust in and out of him, using your pre to lube up his passage. His passage is nice and tight with the added weight of his belly pressing down on your cock. With each thrust, your pleasure mounts, and you feel the need to share with your temporary lover. You start to stroke his shaft with your spare hand, gripping it tightly as you pound his tunnel.";
					WaitLineBreak;
					say "     When you feel you can take no more pleasure, the platypus starts to squirm hard, his sphincter gripping your cock tightly as he begins to cum. Wave after wave of semen coats his belly and chest, milking your rod until you join in, filling his ass. After a few moments of twitching in the sand, you flop to the sand, resting beside the gravid male. He reaches for your hand, looking at you with a smile. 'That was amazing,' he breathes to you sensually.";
					say "     As you recover from the whirlwind of sex, he rubs at his belly thoughtfully. 'Perhaps someday I could carry some of your eggs. Yeah... That sounds nice.' The pair of you share a look, then a smile. Perhaps someday, but not today. A tinge of regret tugs at the corners of your mouth as you get your things and prepare to leave, but you can't leave without one last good look at the platypus as he waves, walking into the ocean to clean up the mess of cum in his fur.";
				else:
					say "     Moving yourself closer to the prone and nude male, you grin, sliding your form over his. Your hands start roaming his belly, feeling the firm eggs shift within, to which the platypus shudders, starting to grow erect, aroused by the feeling of the eggs stretching his belly taut. Squirming underneath of you, his hand starts going to your groin, starting to tease your clit lightly, trying to get you as aroused as he is.";
					say "     The teasings get more intense, his hands going over your chest, your hands sliding over his hips, until you can't take it any more and you have to ride his cock. You shift your position to straddle him, guiding his tip to your wet cunt. With a moan of satisfaction, you slowly lower yourself around his shaft, squeezing it tightly as you settle into position.";
					say "     Not wanting to let you do all the work, the platypus puts his hands on your hips and starts to thrust into you as you rock into him, setting a steady pace. The sensation of his rod pumping deep inside you pulls several moans from both you and him as you rub your [if Breast Size of Player > 0]breasts[else]chest[end if] to heighten the pleasure.";
					say "     The pleasurable tension builds up into a small eternity, until suddenly it comes to a crashing release, forcing you to clamp your pussy down on the delicious cock inside you. Holding onto the platypus tightly, you try your best to keep milking for all he's got, and soon your efforts are rewarded. Hot waves of cum start to fill you up.[fovichance]";
					say "     A few minutes of holding each other close in the sand, his cum slowly trickling out of your snatch, you eventually regain your wits and stand up. You kiss his cheek as a quick 'Thank you' for the good time, then get your gear packed back up to go. One last look over your shoulder rewards you with the platypus waving at you before returning to the water to wash up.";
			else:
				say "     You shake your head, giving the platypus a little hug. With a soft voice, you tell him that he has no reason to fear you, or any ravishings from you. As you stand and go about your way, the male seems a little confused about not being attacked for sex. Perhaps it's the start of something new in this perverted town, but things seem a little brighter for your kind act.";
		else:
			say "     You think about it for a moment, but realize you lack the proper equipment to properly enjoy yourself with him, and any fun you can have would please him more than it would please you. With a sigh, you rub your blank crotch and turn to leave. The platypus tilts his head as you go, confused about your reaction, but accepting it for what it is as he makes his way back into the water.";
	else:
		say "     You shake your head, giving the platypus a little hug. With a soft voice, you tell him that he has no reason to fear you, or any ravishings from you. As you stand and go about your way, the male seems a little confused about not being attacked for sex. Perhaps it's the start of something new in this perverted town, but things seem a little brighter for your kind act.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Platypus";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The platypus charges you, using the full weight of his belly to knock you down![or]Using his ankle barbs, the platypus kicks at you, poisoning you![or]The platypus nips at you painfully with his bill![or]The platypus claws at you desperately![at random]";
	now defeated entry is "[beattheplatypus]";
	now victory entry is "[losetoplatypus]";
	now desc entry is "[platypusdesc]";
	now face entry is "now sporting a long black bill, just like a fuzzy duck"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a curvy platypus with a little bit of a belly and wide child-bearing hips"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "short course brown fur that hides your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "A broad, flat tail sprouts from above your butt, going down to your calves."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "dark"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your lips and nose pinch forward, darkening and hardening as it grows into a bill, course creamy fur sprouting from the rest of your face. Your ears recede into your head, making you dizzy for a moment, but you soon regain your bearings"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you feel a tingling in your gut. You quickly put on a little weight as your body gets a little chubbier, fur growing all over. Your hips push out, making your body look pear-shaped, almost as if getting ready for children"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your body starts to tingle while rough brown fur covers your skin"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you stumble, your spine elongating. A thin tail growing from above your ass, and as it settles in, it begins to flatten out and grow wider, much like a beaver's"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it tingles, becoming darker. The skin around the base of your cock pinches up into a sheath, growing soft brown fur. The tingling intensifies as you whimper, unable to stop yourself from cumming where you stand"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 13;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 37;
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Beach"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]chubby[or]curvy[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]platypus[or]monotreme[as decreasingly likely outcomes]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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


Section 3 - Endings

when play ends:
	if BodyName of Player is "Platypus":
		if humanity of Player < 10:
			say "     You hear a call in your mind, the call of other platypus like yourself. Following the call through the ruined city, you pass many infected creatures, but they don't seem to bother you, much less matter right now. The closer the call gets, the more platypuses you see following the same road. Soon the city is left behind and you find yourself at the beach.";
			say "     One by one, all the platypuses around you start diving into the water, swimming away to leave the dry world behind. The call pulls you towards the water, and though you try to fight it, you find yourself wading in, looking for a good mate, ready to start your own family with. As you search the shallow waters, another platypus finds you, and something sparks between you, knowing that this is the one that you'll spend your life with.";
			say "     You and your mate swim out into deeper waters, avoiding the boats of the soldiers moving in to cleanse the city of the infection. A few days of travel gives you plenty of time to talk with your mate, have some food, and engage in plenty of sex. Eventually you find yourself up on a strange beach. After a bit of discussion, and your mate rubbing his belly full of eggs ready to be laid, you decide that this is the place where you will set up your nest and live out the rest of your days.";
		else:
			say "     The soldiers arrive in the city, and for a moment you panic, wondering if they're going to believe that you're not one of the sex-crazed beasts around you. As you try to decide whether to run or give yourself up, you hear a call go out over a loudspeaker for any willing victims to present themselves to the medical tent for examination. You eagerly come out of hiding, and hand yourself in for the doctors to pass you as clean and give you a shot to make you non-infectious.";
			if Player is male: [MALE/HERM]
				say "     The doctors give you all the usual exams: they take some blood for testing, they get the cheek swab for your DNA, and they give your [if Player is mpreg_able]male womb[else]prostate[end if] a quick examination. A few hours later, they come back with the results of your test. At first, the doctor doesn't say much of anything, just reading the papers on his clipboard. When you ask what's wrong, he laughs and shakes his head. 'Nothing my dear boy. I just thought it would be funny to keep you waiting.'";
				if Player is mpreg_able and Cunt Count of Player is 0:
					say "     He wraps an arm around your shoulders and smiles. 'The only news I have is that we can't do anything about your womb without some serious surgery, and we can't promise that any surgery we do would stay, with those nanites in your system. There is a pill we are going to give you to make you non-infectious, but there's nothing we can do about the changes that you've already had.'";
					say "     The doctor gives your belly a little rub. 'But it's your call if you want to practice safe sex or if you want to become a mother. Either way, you're free to go about your life.' You get handed a small pill and a plastic cup full of water. Once you take it, they hand you your belongings from your time spent bunkered in the city (minus your weapons) and put you on a relocation bus, headed into your new life.";
				else:
					say "     He wraps an arm around your shoulders and smiles. 'The good news is that you've managed to avoid the same nanite strain that many others of like you have had. They all seem to be males, yet they can become pregnant. I'm sure you've seen a few in order to get like you are. But congratulations on making it as far as you did!'";
					say "     The doctor continues, 'Many of the people in that city gave into the infection and wound up sex-crazed beasts. It's been one hell of a day trying to pick out the ones that are still sane.' You both laugh over a few of the stories from some of the other survivors and the doctors. After a few minutes he gets back to business. 'There's one thing you need to do before we let you out.' He offers you a small capsule and a plastic cup full of water. 'This pill will make you non-infectious. After that, you're free to go.'";
					say "     After you take the pill and swallow it down, you say goodbye to the doctor and get put on a relocation bus, headed into your new life.";
			else: [FEMALE]
				say "     The doctors give you all the usual exams: they take some blood for testing, they get the cheek swab for your DNA, and they give your pussy a quick examination. A few hours later, they come back with the results of your test. At first, the doctor doesn't say much of anything, he just reads the papers on his clipboard. When you ask what's wrong, he laughs and shakes his head. 'Nothing, my fine lady. I just thought it would be funny to keep you waiting.'";
				say "     He puts a hand on your shoulder and smiles. 'The good news is that it's all over. We've managed to contain the infection, and those who are still sane are allowed to leave, provided that they take this pill.' You praise an eyebrow questioningly. Before you can ask, he offers you a small capsule and a little plastic cup full of water. 'It's nothing bad, it just nullifies the infectiveness of the nanites in your system.' After another look over the medicine, you swallow it with a swig of water.";
				say "     After you take the pill and swallow it down, you say goodbye to the doctor and get put on a relocation bus, headed into your new life.";

MPreg Platypus ends here.
