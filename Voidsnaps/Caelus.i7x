Caelus by Voidsnaps begins here.

Section 1 - Rooms

Table of GameRoomIDs (continued)
Object	Name
Improvised Nest	"Improvised Nest"

Improvised Nest is a room.
Description of Improvised Nest is "[Improvised Nest_Desc]".
The scent of Improvised Nest is "[Improvised Nest_Scent]".
Improvised Nest is north of Perilous Path.
Caelus is in Improvised Nest.

to say Improvised Nest_Desc:
	say "     High atop one of the cliffs of Mount Shirley, the improvised nest overlooks the city, surrounded by raging winds. The nest sits inside a shallow cave, with just enough overhang to protect it from the elements, though the wind still blows strongly enough inside to whip up the scent of dragon and feathers. Consisting of a mixture of feather down and smooth stone, it's rather meticulously arranged, without a single piece feather out of place.";

to say Improvised Nest_Scent:
	say "     The nest smells unmistakably of dragon, with a hint of feathers, like you've buried your face in goose down.";

instead of going north from Perilous Path while "Hunting Caelus" is not listed in traits of Soot and dexterity of Player < 25:
	if "Hunting Caelus" is not listed in traits of Soot:
		say "     You're not sure why, but you get the feeling you shouldn't try to see what's past the cliffs. You shudder involuntarily, and find yourself looking upward, as if you're being watched from the sky, and a strong wind nearly knocks you off your feet. You shouldn't be here right now.";
	else if dexterity of player < 25:
		say "     While you know where you're supposed to go to find the final member of your harem (or the final dragon you need to cure Soot's little problem, you suppose...), you can't seem to get a good hold on the cliff face, clambering only a few scant feet before your hands lose their grip and you fall backwards on your ass, looking around in embarrassment and hoping no one saw your attempt. You should probably work on your [bold type]dexterity [roman type]if you want to make it to the top without the wind causing you to fall dozens of feet to your death!";


Table of GameRoomIDs (continued)
Object	Name
Perilous Path	"Perilous Path"

Perilous Path is a room.
Description of Perilous Path is "[Perilous Path_Desc]".
The scent of Perilous Path is "[Perilous Path_Scent]".
Perilous Path is north of Dry Plains.


to say Perilous Path_Desc:
	say "     The slightest hint of a path up the cliff face catches your eye, leading into the steep, rocky mountain area. You'd have to be pretty light on your feet to clamber up without injuring yourself in a fall. Strangely, it seems much more windy in this area, forcing you to squint as the air buffets your face. What could be going on?";

to say Perilous Path_Scent:
	say "     The path smells like biting wind and rocks, with a hint of the usual scent wafting from the plains behind you.";

Section 2 - Character

Table of GameCharacterIDs (continued)
object	name
Caelus	"Caelus"

Caelus is a man.
ScaleValue of Caelus is 5. [dragon sized]
Body Weight of Caelus is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Caelus is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Caelus is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Caelus is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Caelus is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Caelus is 12. [length in inches]
Breast Size of Caelus is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Caelus is 2. [count of nipples]
Asshole Depth of Caelus is 10. [inches deep for anal fucking]
Asshole Tightness of Caelus is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Caelus is 2. [number of cocks]
Cock Girth of Caelus is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Caelus is 7. [length in inches]
Ball Count of Caelus is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Caelus is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Caelus is 0. [number of cunts]
Cunt Depth of Caelus is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Caelus is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Caelus is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Caelus is false.
PlayerRomanced of Caelus is false.
PlayerFriended of Caelus is false.
PlayerControlled of Caelus is false.
PlayerFucked of Caelus is false.
OralVirgin of Caelus is false.
Virgin of Caelus is false.
AnalVirgin of Caelus is false.
PenileVirgin of Caelus is false.
SexuallyExperienced of Caelus is true.
TwistedCapacity of Caelus is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Caelus is true. [steriles can't knock people up]
MainInfection of Caelus is "". [Always match the capitalization of the infection. Case sensitive.]
Description of Caelus is "[CaelusDesc]".
Conversation of Caelus is { "<This is nothing but a placeholder!>" }.
The scent of Caelus is "[CaelusScent]".
ImpregFunction of Caelus is "[ImpregCaelus]".

to say CaelusDesc:
	if Caelus is in Cloudy Castle:
		say "     Smaller than the other dragons, and with a more lithe form, Caelus stands before you, fluffing his feathers at your attention and attempting to show off his pristine white plumage. His scales are a reflective silver that can only be seen on his toes and muzzle, while the rest of him is a sleek, almost bird-like sillhouette, with feathered wings and a long, sinuous tail tipped with a tuft of feathers. A private peek shows a small pair of balls (relative to his size) sitting just underneath his tail. ";
		if "Slightly Pregnant" is listed in Traits of Caelus:
			say "The dragon's stomach shows the slightest bulge of pregnancy. His feathers slightly mussed due to the discomfort of the added weight, he nevertheless appears quite pleased with himself. No doubt he's enjoying the extra attention he gained from carrying the egg.";
		else if "Heavily Pregnant" is listed in Traits of Caelus:
			say "The dragon's stomach has swollen far further than the slight bulge you remember. His feathers puff out with each breath, and his usually lithe form looks rather awkward compared to the positively spherical gut. He gives you a dirty look when he sees you staring, turning up his nose, but you notice his tail lift slightly, as if showing how much he loves the added attention.";

to say ImpregCaelus:
	if ImpregTimer of Caelus is 0: [not already pregnant]
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new son is growing in Caelus now!";
		now ImpregTimer of Caelus is 1; [Pregnant.]
	else:
		if debugactive is 1:
			say "     DEBUG: Can't impregnate Caelus, already pregnant!";

to say CaelusScent:
	say "     Caelus smells like almost nothing. A hint of flowers, and the faintest hint of dragon musk permeates his feathers. You get the feeling he obsessively preens himself, so it's no wonder that the only scent he carries is what the wind blows into his feathers.";

Section 3 - Meeting Caelus

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"PraiseHungry"	PraiseHungry	"[EventConditions_PraiseHungry]"	Improvised Nest	2500	2	100

to say EventConditions_PraiseHungry:
	if "Hunting Caelus" is listed in traits of Soot:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
PraiseHungry	"PraiseHungry"

PraiseHungry is a situation.
ResolveFunction of PraiseHungry is "[ResolveEvent PraiseHungry]".
Sarea of PraiseHungry is "Nowhere".


to say ResolveEvent PraiseHungry:
	say "     As you attempt to catch your breath, your hands still aching from the climb, you fail to notice something approaching you from behind. A sharp gust of wind knocks you forward, and you barely manage to shield your face as you crash into the nest in front of you, mercifully cushioned by downy feathers. You roll over onto your back, determined to meet whatever sent you flying head-on. 'And what, pray tell, are you?' Staring down his nose at you, a feathered dragon stands in the entryway to the shallow cave, illuminated by the sky behind him. Unlike the other three dragons you've encountered, this one gives off a different vibe. It's as if you're talking to an aristocrat… or at least someone who thinks they're nobility. Smoothing his feathers with an almost obsessive attention to detail, the dragon looks you over with mild disdain written across his face.";
	say "     What should you say?";
	let Caelus_Initial_Choices be a list of text;
	if Charisma of Player > 25:
		add "Lie to him. Try to butter him up." to Caelus_Initial_Choices;
	add "Tell the dragon the truth." to Caelus_Initial_Choices;
	let Caelus_Initial_Choice be what the player chooses from Caelus_Initial_Choices;
	if Caelus_Initial_Choice is:
		-- "Lie to him. Try to butter him up.":
			if a charisma check passes 16:
				say "     Thinking quickly, you look from the dragon’s perfectly preened feathers to the immaculate space around you. You’ve got an idea, and you can only hope that he’s as vain as he appears. Quickly, choosing your words wisely, you tell him that you’re here to take him away from this shabby place and relocate him to somewhere more worthy of his magnificent presence. After all, someone so noble shouldn’t suffer in an obscure place. Puffing out his chest, the dragon takes the bait, one paw raised to admire his claws. ‘Ah, yes. I presumed this world had no manners. Those filthy beasts and their uncouth behavior roaming the streets could not have been less welcoming. I suppose you’re some… servant… for the ruling class, then? Perhaps a duke, or a king? Don’t tell me you’re the stablehand of a lowly baron.’ The dragon enunciates the word ‘baron’ as if he’s saying something truly vile, his face contorting on each syllable.";
				say "     Nodding, you clamber to your feet, doing your best impression of a servant from a period drama. You bow at the waist and apologize for your appearance, citing the remote location as an excuse for your lack of uniform, and decide to take a risk, stating that you work for the king of this country, who very much wants to meet the dragon. You’re lying, of course, but this dragon seems to eat up every word as you continue to explain the farce, pointing to the rune on your hand and claiming that it’s a simple teleportation spell that will remove him from this place and whisk him away to his new quarters within the castle. You’ve already prepared the finest silk bed and let the castle’s cooks know he’ll be arriving soon, so if he hurries, he might arrive in time! A hint of suspicion crosses the dragon’s face as he examines the rune on your palm, but he appears too intrigued by the act you’ve put on. ‘I suppose a king would have a magician in their employ. Take me to the castle. I wish to bathe!’";
				WaitLineBreak;
				say "     Suppressing a grin, you allow the dragon to press his claw to the rune on your palm, serving himself up on a silver platter for you. You thank him for his noble behavior and praise him for responding to the king’s summons so quickly as the usual door to the pocket dimension phases into existence behind you. You’re sure to speak slowly and clearly as Soot steps out of the door, hoping he’ll follow your lead with a simple hint. Raising an eyeridge, the half-dragon half-human stares at you, then suppresses a laugh as he catches on. ‘This way, your excellence. The king awaits!' He doubles over, quivering with barely contained laughter. Thankfully, the dragon seems none the wiser, puffing out his chest and strutting toward the doorway. ‘How quaint. I suppose your king prefers to connect spaces, rather than mess about with that dizzying portal nonsense. I daresay I approve. Tell me, servant. Do your bathing halls contain…’ The dragon’s voice trails off into an unintelligible murmur as he leaves you behind, talking Soot’s ear off. You wonder how long it’ll take for him to find out he’s been tricked.";
				TraitGain "Tricked Caelus" for Soot;
			else:
				say "     You try to trick the dragon, but you only get a few moments into your spiel before you realize he's not buying what you're selling. You trail off, swallowing nervously, and ready yourself for combat. Fortunately, the dragon mulls over your halting explanation. 'Your sovereign must have taken pity on you. He must be a great king to allow such an idiot to serve him without sending them straight to the dungeons.' Preening himself with a disinterested expression, the dragon huffs. 'Transport me to your king. I shall give him advice on choosing proper servants.' Unable to believe your luck, you have Caelus touch the rune on your hand, shrugging lamely as Soot appears and leads him away. The dragon's narcissism should make him easy to manipulate, though you're not sure you enjoy his insults.";
				TraitGain "Didn't Trick Caelus" for Soot;
		-- "Tell the dragon the truth.":
			say "     Shrugging, you decide to tell Caelus the truth. While you don't quite get into all the details, you outline why you need him to come with you, and assure him that he'll be treated well. Soot's accomodations are far more suited to someone of his 'stature,' after all. The dragon scoffs. 'I shall see for myself if you're telling the truth. Pray you don't disappoint me!' He willingly touches the rune on your hand, and haughtily stalks off, tail swishing in irritation. As he steps through the door, you feel a bit speechless at how easily he agreed. Perhaps his own narcissism convinced him that he wouldn't be in any danger? You shrug, deciding to use his attitude against him to get what you need. After all, he didn't even inquire as to HOW you'd be receiving his 'help.'";
			TraitGain "Caelus Irate" for Soot;

instead of conversing Caelus:
	if Caelus is in Cloudy Castle:
		if "Caelus First Talk" is not listed in Traits of Caelus:
			if "Caelus Irate" is listed in Traits of Soot:
				say "     'Not you, again!' I will be having words with your sovereign. Pawning off his worst servant on his esteemed guest.' Huffing, the dragon stares down at you with disdain. 'I suppose you'll have to do.' You apologize to the dragon in your most faked sincere tone, then offer to make his stay more comfortable in any way he likes. If he can't think of something, you're sure you can offer him a welcome gift he won't forget.";
			else if "Didn't Trick Caelus" is listed in Traits of Soot:
				say "     'Not you, again!' I will be having words with your sovereign. Your superior assured me your king will see me shortly.' Huffing, the dragon stares down at you with disdain. 'Perhaps I'll change my mind if you're remotely competent as my butler.' You apologize to the dragon in your most faked sincere tone, then offer to make his stay more comfortable in any way he likes. If he can't think of something, you're sure you can offer him a welcome gift he won't forget.";
			else if "Tricked Caelus" is listed in Traits of Soot:
				say "     'Ah yes, we meet again! Thank you for bringing me to this lovely place. I'll be sure to put in a good word for you when my audience with the king comes around.' Huffing, the dragon looks down at you with a hint of haughty affection. 'I suppose you've been assigned as my butler? How fortuitous' You gush over the dragon's magnanimous speech in your most faked sincere tone, then offer to make his stay more comfortable in any way he likes. If he can't think of something, you're sure you can offer him a welcome gift he won't forget.";
			TraitGain "Caelus First Talk" for Caelus;
		else:
			say "     [bold type]It seems the dragon doesn't want to talk. Perhaps you should behave more like a servant?[roman type][line break]";
			let Caelus_Talk_Choices be a list of text;
			if Player is Male:
				add "Offer to pleasure the dragon anally." to Caelus_Talk_Choices;
			add "Offer your services as stress relief. (Let him fuck you.)" to Caelus_Talk_Choices;
			let Caelus_Talk_Choice be what the player chooses from Caelus_Talk_Choices;
			WaitLineBreak;
			if Caelus_Talk_Choice is:
				-- "Offer your services as stress relief. (Let him fuck you.)":
					say "     You bring up Caelus’s impressive manhood, lamenting the fact that you haven’t gotten to see it in action yet. Many a dragoness must have fallen in love with him at a single glance, if it was anything like the rest of him. Sadly, you were but a lowly servant, unworthy of seeing it, let alone touching it. ‘Indeed. You have an eye for quality.’ Puffing out his chest, the dragon immediately falls for the compliments. Almost immediately, he rears up on his hind legs, his peeking manhood showing itself and growing by the second. ‘I shall allow you to inspect it, just this once. As long as you promise not to abuse the privilege.'";
					say "     Gasping theatrically, you kneel to inspect the dragon’s growing manhood, both hands taking hold of either side. It’s warm to the touch, and honestly not that impressive in terms of its size, only around seven inches or so, but you act like it’s the biggest cock you’ve ever seen, fawning over it and stroking over the vaguely canine shape. Ridges and a knot were admittedly exotic, and you wondered how it would feel inside you. ‘Don’t be afraid. I know, it’s the biggest you’ve ever seen, isn’t it?’ Preening and putting words in your mouth, the dragon humped forward excitedly, bathing your fingers in precum and pulsating that fleshy knot. ‘Don’t be shy. You may pleasure me.’";
					WaitLineBreak;
					say "     Feigning innocence, you wonder aloud whether you’re worthy of such a gift. Your poor little hole was quaking at the thought of such a mighty manhood splitting it in half. If only there were a way for you, a servant, to earn the right to accept the dragon’s noble seed. You’d remember that feeling for the rest of your life. ‘Fear not. I’m nothing if not philanthropic.’ Falling for your admittedly bad acting, the dragon humped your hands, covering them in sweet-scented, yet musky fluids. ‘Present yourself, and I’ll grace you with my seed.’ He acted like he was doing you a favor, but you could feel him throbbing with desire.";
					say "     Profusely thanking the dragon for his benevolence, you shed your gear, raising your posterior and slotting him between your cheeks. It takes you a moment to find the right hole, but you slip him into your [if player is female]pussy [else]as [end if]without a problem, moaning aloud and begging him to fuck you. You’re already wet; that’s certainly not a lie, but the stream of praise for the size and shape of his cock is definitely an exaggeration. If you want your guts pumped full of dragon cum, though, you have to be convincing. ‘Such an accommodating servant.’ Words coming through gritted teeth, the dragon humps forward, covering you with a layer of admittedly downy feathers. What he lacks in size, he certainly makes up for in technique, [if player is female]finding your cervix with his pointed tip and kissing his cock against it[else]filling your ass [end if]with each thorough, rutting thrust. ‘Have you ever been bred by a real dragon?’";
					WaitLineBreak;
					say "     Shaking your head, you bite your lip at the growing wet, sloppy sounds of his dick slurping in and out of you. His dick’s just the right shape to tease your sweet spot, and you feel like you’re right on the edge already. You tell the dragon he’s the first real dragon to fuck you. Whether or not that’s true doesn’t seem to matter, and at this point you’ll say anything to keep him thrusting. ‘That’s right. No one else can make you feel this good. You should be- hnngh- honored.’ Ramming himself home right as you feel the tickle in your stomach growing to a full crashing wave of orgasm, the dragon drives himself home, bathing your innermost depths in pump after pump of hot seed. He thrusts all through his orgasm, stirring your hole into a sloppy mess, then tugs himself free, leaving you to collapse to the floor and twitch through your own finish. ‘Perhaps I’ll let you drain my seed again…’ He murmurs as he flops over on his side, surveying his handiwork.";
					say "[CaelusBottomBirth]";
					if Player is female:
						NPCSexAftermath Player receives "PussyFuck" from Caelus;
					else:
						NPCSexAftermath Player receives "AssFuck" from Caelus;
				-- "Offer to pleasure the dragon anally.":
					if "Caelus First Fuck" is not listed in Traits of Caelus:
						say "     Clearing your throat, you try your best to appeal to the dragon’s inflated sense of self-worth. You comment on the pleasing shape of his hindquarters, wondering aloud if he might be willing to allow you to get a closer look. After all, you’re his humble servant. It’s only right that you worship all of him. With the corners of his mouth curling upward, the dragon turns to face away from you, feathers puffed out. ‘It seems you have good taste. Isn’t it immaculate? You’ll never see a finer posterior!’ Tail lifted, the dragon barely seems to register the sluttiness of his pose. That soft pink pucker winks at you above his genital slit, at odds with the white feathers and mirror-like scales.";
						say "     You agree with the dragon, stepping forward to hold his tail out of the way. Such a fine posterior, with such a refined and pleasant smell. Not like those other, more beastly dragons, all musk and offensive animal odor. However, you lament the fact that you will never know how it compares to the others. A lowly creature like yourself could never presume the right to taste the delights hidden within that divine hole. You suppose you’ll have to settle for staring longingly. Scoffing, the dragon all but shoves his ass backward into your face, hole flexing indignantly. ‘I assure you, I surpass them all! Perhaps just this once, I’ll allow some light touching. Gently.’ Chin tilted upward; the dragon seemed pleased with your praise, all but offering himself to you in exchange for a nice, thorough ego-stroking.";
						WaitLineBreak;
						say "     Holding back a laugh at how easy it is to convince the dragon to let you fingerfuck him, you slip two fingers below his tail, lathering them with a mouthful of spit. You remark that he’s quite tight, and praise him for how his inner walls wrap around your digits like wet silk, feeling him clench at the compliment. You’re only half faking. It’s one of the better holes you’ve ever felt, and you can’t help yourself, your body reacting to the proximity of Caelus’s offered rump. An obvious erection strains toward his ass, begging you to fuck him. ‘Ah. I see why your sovereign keeps you around.’ Pushing back with a low, rumbling growl, the dragon fucks himself on your digits. His genital slit plumps the more thoroughly you loosen him up, freeing a long, almost canine shaft that pulsates in time with his heartbeat, showing off a ridge-covered reptilian knot. Before long, it dribbles down to the fluffy floor, his arousal soaked up by the strange, magical material. ‘Deeper. This massage pleases me.’";
						say "     Quietly, you set aside your gear as the dragon’s eyes flutter closed. You continue to heap on the praise, describing the dragon’s greedy clamping hole as if it were a window into heaven. Your fingers swirl around as you line up your dick, sure that the dragon won’t notice a slow transition from fingering him to fucking him. You’re right, as it turns out. He barely flinches as you remove your digits, his soft, buttery insides accepting nearly half your length without a problem. ‘Ah. Right there. I must say, this sort of massage has its merits. I never knew fingers could be so warm.’ Oblivious to your penetration, the dragon pushes back, accepting your whole dick and swishing his tail from side to side with excitement. ‘Do keep going. I can feel the most pleasant buzz.’";
						WaitLineBreak;
						say "     Gripping the dragon’s tail with one hand and carefully keeping the other out of the way, you shiver at the tight grip around your shaft. Your dick throbs, drooling precum into those greedy depths, and you saw it in and out with agonizing slowness, hoping he won’t catch on until after you’ve had your fun. You can’t help but imagine how he’d react knowing he was being bred by a ‘servant.’ ‘Deeper. Yes…’ Humping the air, the dragon reacts to your rhythm, still oblivious despite the growing wetness surrounding your dick. Claws dig into the magical flooring, and he stiffens, milking your dick in an unmistakable rhythm. Wet noises fill the air as he orgasms without warning, egged on by the pressure you’re putting on his prostate. ‘Heavens above. I shall ask the king to sell you to me. I demand more of th-’ Turning his head, the dragon looks from your fingers on the base of his tail to your free hand, and you can almost hear the gears turning in his head.";
						say "     Caught in the act, you continue humping at a steady pace. You explain to the dragon that you couldn’t resist. He was too alluring. No mortal man could see such a heavenly sight and keep himself contained. Even now, you couldn’t stop yourself. It was as though he were bewitching you. Caelus’s cock unleashed another thick layer of approval at the flood of compliments, fountaining far enough that it shot between his front legs, melting harmlessly into the floor and narrowly missing his feathery front; the dragon rationalized your indiscretion. ‘I suppose I wouldn’t be able to resist, either. You poor creature. You’ve simply never- hnngh- witnessed true perfection.’ Whether it was the steady rhythm on his prostate or the dragon’s own narcissism at work, it seemed he was alright with you fucking him. ‘Just this once… I’ll allow you to spill your seed.’";
						WaitLineBreak;
						say "     Thanking the dragon as if he were granting you the opportunity of a lifetime, you speed your thrusts. All the while, you describe in vivid detail exactly how he’s making you feel, panting with exertion as you find the right words to keep him docile. You feel a bit silly, but anything that soothes the growing heat in your lower stomach is alright with you. Just as you finish comparing his hole to the tender embrace of an angel, you feel yourself begin to release, bottoming out and spraying your approval deep into the dragon’s depths. ‘An angel? I don’t know if I’m-’ Trailing off, the dragon moans aloud as he feels you finish deep inside him, his fourth or fifth orgasm christening the floor below. He shoves backward hard enough that he nearly knocks you off your feet, his hole clamping down on the base of your cock hard enough that it nearly hurts. Every drop of cum is wrung out of you like water from a piece of cloth, and by the time you’re finished, you’re so oversensitive that you grit your teeth, withdrawing with a soft hiss.";
						say "     Blissed out and murmuring some of the compliments you’d given him under his breath, the dragon lay there, ass still presented and slippery hole gaped by your efforts. Not a drop of your seed dribbles out of him, but you can see the faintest bit of white glazing those pink inner walls. It seemed that the slutty dragon had unlocked a new part of himself. You doubt you’ll have to try half as hard to fuck him again next time!";
						NPCSexAftermath Caelus receives "AssFuck" from Player;
					else: [after first time]
						say "     You offer the dragon another 'massage,' thrusting your hips meaningfully. His eyes light up at your words, and he immediately turns around, lifting his tail. 'Do be thorough, servant. Don't disappoint me.'";
						say "     Quietly, you set aside your gear as the dragon’s eyes flutter closed. You continue to heap on the praise, describing the dragon’s greedy clamping hole as if it were a window into heaven. You line up your dick, shuddering at the soft, tight embrace that awaits you. He barely flinches as you slip isnide him, his soft, buttery insides accepting nearly half your length without a problem. ‘Ah. Right there. I must say, this sort of massage has its merits. Use your hips.’ Oblivious to how slutty he looks, the dragon pushes back, accepting your whole dick and swishing his tail from side to side with excitement. ‘Do keep going. I can feel the most pleasant buzz.’";
						WaitLineBreak;
						say "     Gripping the dragon’s tail with both hands, you shiver at the tight grip around your shaft. Your dick throbs, drooling precum into those greedy depths, and you saw it in and out with agonizing slowness, hoping he won’t catch on until after you’ve had your fun. You can’t help but feel a naughty thrill at how he's reacting, knowing he was being bred by a ‘servant.’ ‘Deeper. Yes…’ Humping the air, the dragon reacts to your rhythm, still oblivious to his own wanton, cockdrunk appearance. Claws dig into the magical flooring, and he stiffens, milking your dick in an unmistakable rhythm. Wet noises fill the air as he orgasms without warning, egged on by the pressure you’re putting on his prostate. ‘Heavens above. I shall ask the king to sell you to me. I demand more of this. I may even pay a mage to place a curse of stiffness on you so that you can continue this for days at a time!'";
						say "     You compliment the dragon, telling him that you couldn’t resist if you wanted to. He was too alluring, too handsome. No mortal man could see such a heavenly sight and keep himself contained. Even now, you couldn’t stop yourself. It was as though he were bewitching you. Caelus’s cock unleashed another thick layer of approval at the flood of compliments, fountaining far enough that it shot between his front legs, melting harmlessly into the floor and narrowly missing his feathery front; the dragon rationalized your indiscretion. ‘I suppose I wouldn’t be able to resist, either. You poor creature. You’ve simply never- hnngh- witnessed true perfection. Come now. I’ll allow you to spill your seed. Show me how grateful you are.’";
						WaitLineBreak;
						say "     Thanking the dragon as if he were granting you the opportunity of a lifetime, you speed your thrusts. All the while, you describe in vivid detail exactly how he’s making you feel, panting with exertion as you find the right words to keep him docile. You feel a bit silly, but anything that soothes the growing heat in your lower stomach is alright with you. Just as you finish comparing his hole to the tender embrace of an angel, you feel yourself begin to release, bottoming out and spraying your approval deep into the dragon’s depths. ‘An angel? I don’t know if I’m-’ Trailing off, the dragon moans aloud as he feels you finish deep inside him, his fourth or fifth orgasm christening the floor below. He shoves backward hard enough that he nearly knocks you off your feet, his hole clamping down on the base of your cock hard enough that it nearly hurts. Every drop of cum is wrung out of you like water from a piece of cloth, and by the time you’re finished, you’re so oversensitive that you grit your teeth, withdrawing with a soft hiss.";
						say "     Blissed out and murmuring some of the compliments you’d given him under his breath, the dragon lay there, ass still presented and slippery hole gaped by your efforts. Not a drop of your seed dribbles out of him, but you can see the faintest bit of white glazing those pink inner walls. It seemed that the slutty dragon was just as excited this time as he was the first. No doubt he'd be ready to fuck you again the next time you meet.";
						NPCSexAftermath Caelus receives "AssFuck" from Player;
						if impregtimer of Caelus is 0: [Guaranteed Pregnancy.]
							now ImpregTimer of Caelus is 1;

to say CaelusBottomBirth:
	say "     You feel your stomach clench as you lie there, filled to the brim with dragon seed. Within moments, your belly swells out to full pregnancy, and you moan aloud at the sensation, feeling your hole suddenly gush with lubricant. You spread your legs wide, face pressed into the soft cloud below, and strain as a massive egg tests the limits of your poor, abused [if player is female]pussy. [else]asshole. [end if]With a wet plop, you finally pass it, drenching the ground below you in a pitiful orgasm and lying there, twitching with pleasure. Caelus seems taken aback, but chuckles under his breath in a moment, remaining true to form. 'I knew I was virile, but I seem to have outdone myself. I do hope you know how to brood that egg.' You want to correct the oblivious dragon, but instead you gather your things and leave the egg for Soot.";
	if OffSpringCount of Caelus < 4:
		increase OffSpringCount of Caelus by 1;

Section 4 - Post-Birth Sex and Birthing Scenes

an everyturn rule:
	if ImpregTimer of Caelus > 0: [Caelus is pregnant]
		increase ImpregTimer of Caelus by 1; [counting up towards 24]
		if debugactive is 1:
			say "     DEBUG: Caelus's eggnancy advanced one turn. Current Turn: [ImpregTimer of Caelus], Target Value: 24";
		if ImpregTimer of Caelus is 8:
			TraitGain "Slightly Pregnant" for Caelus;
		if ImpregTimer of Caelus is 20 and skipturnblocker is 0: [announcement that birthing time is coming closer]
			if Caelus is visible:
				say "     Caelus lounges, catching your attention with a soft groan. 'Servant! Tend to me. It would seem my clutch draws near.' With an imperious gesture, he moves his haunches to face you, showing off a puffy, lubricant leaking hole. 'I shall never forgive you if I have to lay this egg by myself.";
			else:
				say "     You get the nagging feeling that you're forgetting something, and then suddenly remember the pregnant dragon you knocked up not so long ago. If you want to be there for Caelus during birth, you should probably stick around him for a while!";
			TraitGain "Heavily Pregnant" for Caelus;
			TraitLoss "Slightly Pregnant" for Caelus;
		else if ImpregTimer of Caelus >= 24 and skipturnblocker is 0: [birthing time]
			if Caelus is not visible: [player isn't anywhere near him]
				say "     You get the feeling you've forgotten something. Shaking your head and sighing, you realize you likely missed the birth of a dragon egg. Caelus's, in this case.[bold type]It looks like this time you won't get to watch Caelus give birth! Next time try to be closer to him.[roman type][line break]";
				add "Absent_Birth" to Traits of Caelus; [just increases offspring count. no payoff. trait just there for completeness. it does nothing]
			else: [player is next to Caelus]
				say "     Straining and facing away from you, Caelus gives you an eye full of a crowning egg, his dick flopping beneath that overstretched, puffy pink hole. His usually well-groomed feathers stick up in all directions, and his tongue hangs out. 'Servant! Tend to me. It would seem that the egg is coming now!' Wincing as his dick stiffens and the largest part of the egg bloats his hole, Caelus sprays the floor with an orgasm, his moans echoing through the cloudy castle. He humps the air as inch after inch of the egg works its way loose, almost fucking himself on the runed object, only to fall forward as it plops free, his gaping hole on display and his dick still spraying cum. Panting, he murmurs something about tending to him, shaking his ass. It seems he wants another round while he's still loose and wet.";
				if Player is male:
					LineBreak;
					say "     [bold type]Do you want to take advantage of the dragon's post-birth sluttiness?[roman type][line break]";
					say "[link]Y[as]y[end link] Yes, that gaping, slutty entrance looks like it needs another load.";
					say "[link]N[as]n[end link] No, let him rest.";
					if Player consents:
						say "     Tossing aside your gear, you waste no time in lining yourself up with Caelus’s ruined hole, watching it slam shut as if it wasn’t just cavernously gaping. Still, he’s extra slippery from all the juices that helped him pass the egg, and you have no trouble thrusting hard and fast, wet, sloppy noises filling the air. ‘Yes. More.’ All traces of his usually haughty, narcissistic nobility fade away as Caelus begs for your dick. ‘Seed me! Stir my insides and fill me with another clutch!’ Pushing backward, he fucks himself on your pistoning cock, coating your crotch in slippery fluids. He’s like a bitch in heat, begging for every inch.";
						say "     You don’t last long, egged on by the sloppy, wet sounds every deep thrust wrings from the dragon’s slutty hole. You bury yourself to the root, trapped by clamping, desperate muscles, and blast your load deep into the dragon’s milking embrace, gripping his haunches. It’s like he’s trying to suck out your soul. ‘Not enough.’ Grumbling, the dragon wraps his tail around your waist, using the leverage to pull you into a breakneck pace. Your softening cock has no choice but to continue pistoning into that greedy hole, and before long, he’s sitting on your waist, slamming himself down onto your dick like he’ll die if he stops.";
						WaitLineBreak;
						say "     With no choice but to let him use your dick, you let the dragon milk your dick for all its worth. You lose track of how many times you spurt deep into those depths. He doesn’t stop no matter how you squirm with overstimulation, continuing until you’re physically incapable of cumming again, and only then relenting, his hole foamed with mixed fluids and puffy with overuse. He falls forward, a dreamy expression on his face and his ass in the air, showing off his handiwork. It's clear from his expression that he’s too out of it to acknowledge your existence anymore, and you take the opportunity to sneak away before your poor dick gets used again.";
						NPCSexAftermath Caelus receives "AssFuck" from Player;
						NPCSexAftermath Caelus receives "AssFuck" from Player;
						NPCSexAftermath Caelus receives "AssFuck" from Player;
						if impregtimer of Caelus is 0: [Guaranteed Pregnancy.]
							now ImpregTimer of Caelus is 1;
					else:
						say "     You shake your head. You'll let Caelus rest after all the energy he just spent on getting that egg out. After all, with any luck, he'll be pushing out another soon enough.";
			if OffSpringCount of Caelus < 4:
				increase OffSpringCount of Caelus by 1;
			now ImpregTimer of Caelus is 0; [pregnancy reset]





Caelus ends here.