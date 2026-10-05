Alon by Voidsnaps begins here.


Section 1 - Room

Table of GameRoomIDs (continued)
Object	Name
Overflowing Grotto	"Overflowing Grotto"

Overflowing Grotto is a room.
Description of Overflowing Grotto is "[Overflowing Grotto_Desc]".
The scent of Overflowing Grotto is "[Overflowing Grotto_Scent]".
Overflowing Grotto is east of Edge Of The Swamp.
Alon is in Overflowing Grotto.

to say Overflowing Grotto_Desc:
	say "     In the middle of the reservoir, a raised platform of water glistens as it overflows on all sides, overflowing with fresh water that seems endless. Stones stacked on all sides dam it from the rest of the water, and the water that gushes over the top is bright and crystal clear. ";
	if Alon is in Overflowing Grotto:
		say "Occasionally, you see a bright blue form break the water in a cloud of mist, diving in and out. It seems to pay you no mind, and almost seems playful. Is that the dragon you're seeking?";
	else:
		say "Thankfully for the swamps below, the water seems to have slowed down since Alon left. That constant flow of water may have expanded the swamp outward!";

to say Overflowing Grotto_Scent:
	say "     Smelling like clean water and a hint of the ocean despite its freshwater nature, the Overflowing Grotto sparkles in the middle of the reservoir. There's a distinct hint of draconic musk that accompanies the moist scent, but it's not at all unpleasant.";

instead of going east from The Edge Of The Swamp when "Hunting Alon" is not listed in Traits of Soot:
	if Alon is in Glittering Gate:
		say "     The dragon's old rock pool sits empty now. The strange self-fueling fountain appears to have slowed down to a trickle, no longer at risk of destroying the already partially destroyed dam. There's no reason to revisit it!";
	else:
		say "     A large form dives in and out of a pool in the distance. You get the feeling you shouldn't try to go over there, lest you offend it. After all, it looks big enough to eat you in a single gulp!";

Section 2 - Meeting Alon

Table of GameCharacterIDs (continued)
object	name
Alon	"Alon"

Alon is a man.
ScaleValue of Alon is 5. [dragon sized]
Body Weight of Alon is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Alon is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Alon is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Alon is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Alon is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Alon is 12. [length in inches]
Breast Size of Alon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Alon is 2. [count of nipples]
Asshole Depth of Alon is 10. [inches deep for anal fucking]
Asshole Tightness of Alon is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Alon is 2. [number of cocks]
Cock Girth of Alon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Alon is 15. [length in inches]
Ball Count of Alon is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Alon is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Alon is 0. [number of cunts]
Cunt Depth of Alon is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Alon is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Alon is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Alon is false.
PlayerRomanced of Alon is false.
PlayerFriended of Alon is false.
PlayerControlled of Alon is false.
PlayerFucked of Alon is false.
OralVirgin of Alon is false.
Virgin of Alon is false.
AnalVirgin of Alon is false.
PenileVirgin of Alon is false.
SexuallyExperienced of Alon is true.
TwistedCapacity of Alon is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Alon is true. [steriles can't knock people up]
MainInfection of Alon is "". [Always match the capitalization of the infection. Case sensitive.]
Description of Alon is "[AlonDesc]".
Conversation of Alon is { "<This is nothing but a placeholder!>" }.
The scent of Alon is "[AlonScent]".
ImpregFunction of Alon is "[ImpregAlon]".

to say AlonDesc:
	if Alon is in Overflowing Grotto:
		say "     Swimming over to you faster than would be possible for most creatures, the dragon looks you over with a curious eye, then sticks his tongue out at you and splashes you before you can react. He laughs and heaves himself up onto a bank of stacked stones so you can take a better look, soaking up the warmth the stones gathered during the day. Pretty azure scales cover him from head to toe, matching the webbed paws that stretch languidly in the sun, and a massive pair of balls jiggle with each movement, underneath a thick tail. There's no doubt this dragon's a male! He regards you with a face framed by a crest of aquatic frills, and no wings grace his back, setting him apart from others. There's no malice in his movements, and you get the feeling he's an agreeable fellow.";
	else if Alon is in Glittering Gate:
		say "     Swimming up to greet you, Alon does a trick for your amusement, conveniently showing his rear end when he turns to dive, then jump out of the water, landing gracefully back inside. Satisfied with the degree he soaked you with water, he heaves himself out of the pool, lying in the perptual sunlight with a contented sigh and a dreamy expression. Pretty azure scales cover him from head to toe, matching the webbed paws that stretch languidly in the sun, and a massive pair of balls jiggle with each movement, underneath a thick tail. There's no doubt this dragon's a male! He regards you with a face framed by a crest of aquatic frills, and no wings grace his back, setting him apart from others. There's no malice in his movements, and you get the feeling he's an agreeable fellow. ";
		if "Slightly Pregnant" is listed in Traits of Alon:
			say "Alon's stomach shows the slightest bulge, and as he stretches in the sun, it becomes more pronounced. There's no doubt he's full of eggs! When he notices you looking, he smirks, rubbing his belly and spreading his legs. Is he trying to entice you?";
		if "Heavily Pregnant" is listed in Traits of Alon:
			say "Alon's stomach shows a massive bulge, and as he stretches in the sun, it becomes more pronounced, showing off the indivisual outline of each egg. There's no doubt he's full to the brim! When he notices you looking, he smirks, rubbing his belly and spreading his legs. Is he trying to entice you?";

to say AlonScent:
	say "     Alon somehow smells like the sea and a clean river at the same time, mixed with dragon musk.";

to say ImpregAlon:
	if ImpregTimer of Alon is 0: [not already pregnant]
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new son is growing in Alon now!";
		now ImpregTimer of Alon is 1; [Pregnant.]
	else:
		if debugactive is 1:
			say "     DEBUG: Can't impregnate Alon, already pregnant!";

Section 3 - Convincing Alon

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Laughing Leviathan"	Laughing Leviathan	"[EventConditions_Laughing Leviathan]"	Overflowing Grotto	2500	2	100

to say EventConditions_Laughing Leviathan:
	if "Hunting Alon" is listed in traits of Soot:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Laughing Leviathan	"Laughing Leviathan"

Laughing Leviathan is a situation.
ResolveFunction of Laughing Leviathan is "[ResolveEvent Laughing Leviathan]".
Sarea of Laughing Leviathan is "Nowhere".


to say ResolveEvent Laughing Leviathan:
	say "     Trying your best to climb the steep sides of the makeshift dam, you finally make it to the top, pausing to catch your breath. Unfortunately, it seems you've drawn the attention of the place's owner, and you ready yourself for a fight as a streaking form approaches from beneath the clear water. Is that a dragon? Crap, that must be Alon, the dragon you're looking for! 'Hello there!' An amused masculine voice accompanies a flood of water droplets as the dragon heaves himself up alongside you, looking at your combat stance with a curious expression. 'Are you here to start a fight? You must be the owner of that big wall! I'm sorry for that hole over there. I thought it could hold me!'";
	say "     Continuing, the dragon flicks his hind leg in the water. 'If I had my hoard I could probably pay you to fix it. You humans love shiny things even more than I do!' Rolling over on his back with a dramatic sigh, the dragon keeps talking without letting you get a word in edgewise. 'Oh, but I know, you're probably some knight sent to slay me! All grim determination and tragic backstory!' Puffing his cheeks, the dragon lets out a raspberry. 'Why can't you guys just let me stay somewhere nice! It's always [']I will slay you, evil Alon!['] Or some other farce!'";
	WaitLineBreak;
	say "     Finally forcing your way into the conversation, you wonder aloud whether Alon would prefer a different outcome. After all, he seems reasonable enough. If he just lets you press your palm onto his scales and doesn't struggle, you can take him somewhere he won't be bothered. As long as he doesn't mind a little quid pro quo, you can guarantee you won't harm him. Scratching his chin with one claw, the dragon thinks for a moment, completely ignoring the fact that he's on his back with his masculinity prominently on display. 'Alright! If you can answer one question, I'll go with you!' Rolling over onto his side, the dragon regards you with a face large enough to cause some serious damage if he decided to bite.";
	say "     'What's the meaning of life?'";
	let Alon_Rune_Choices be a list of text;
	add "Living life to the fullest." to Alon_Rune_Choices;
	add "Forty-Two." to Alon_Rune_Choices;
	let Alon_Rune_Choice be what the player chooses from Alon_Rune_Choices;
	if Alon_Rune_Choice is:
		-- "Living life to the fullest.":
			say "     Without hesitation, you answer that the meaning of life is living life to the fullest. You're not sure what that means for you, but you'd love to find out. Alon shakes his head at your answer, rolling back into the water and floating out of reach. 'Nope! That's the sort of answer you'd get if you asked the leader of a convent! All it's missing is a lengthy speech about finding meaning in giving yourself to others!' Spitting to the side, Alon continues in a disgusted tone. 'I don't like serious people. How do I know you won't force me to work? I've already eaten one gross wizard that wanted to use my eyes for a [']staff enlargement['] potion!'";
			say "     Significantly more wary, Alon watches you with his face half-underwater, effortlessly staying in place with a serpentine motion. 'But I'm still curious about this place you want to take me. Maybe I can give you a second chance. How about another question?' With no choice but to go along with the whim of the dragon, you tell him to ask away. Keep in mind, [bold type]if you answer incorrectly, he probably won't trust you any longer.[roman type][line break]";
			WaitLineBreak;
			say "     Alon grins and takes on a conspiratorial look. 'What's your policy on [']playing with dragons[']?'";
			say "     [link]Y[as]y[end link] That's what you're here for! You're a dragonfucker and you don't mind if he knows it!";
			say "     [link]N[as]n[end link] You'll gladly play fetch, if that's what he's asking for.";
			if Player consents:
				say "     Without hesitation, you tell Alon exactly what you mean to do with him if he comes with you, in excruciating detail. Thankfully, he seems quite into the idea, heaving himself back out of the water and forcing you to back up with the intensity of his puppy-like excitement. 'What are we waiting for?! Usually the peasants scream and run when they see me watching them bathe, but all those dangly bits look fun to play with! Let's go, let's go!' Aggressively pressing his nose against your palm, Alon shakes his head as the rune works its magic, with an expression like a person with a fly up their nose. When Soot appears, he looks at you with a surprised expression, stepping aside while Alon dives facefirst into the portal, happily splashing around in the pools nearby. You'll have to explain this to the mage later...";
				move Alon to Glittering Gate;
				TraitLoss "Hunting Alon" for Soot;
				TraitGain "Captured Alon" for Soot;
				TraitGain "MPreg" for Alon;
			else:
				say "     With a sour expression, Alon turns tail on you in a huff. 'It seems you've taken obliviousness to another level. How can I trust you if I don't know your motives? I don't want to be an ingredient in a stew!' Diving into the pool, Alon gives you the impression that he wants to be left alone.";
				TraitGain "Aggravated Alon" for Soot;
		-- "Forty-Two.":
			say "     At a loss for words, you give the most absurd answer you can think of, the number forty-two. You can almost hear crickets as you look at the surprised dragon, and you worry you might have said the wrong thing, but he cracks after amoment, snorting and letting out a surprisingly human belly-laugh. 'My sort of human. Not a single thought, just the first thing that popped into your head! Alright. Let's go. Work your magic!' Offering his snout, Alon shakes his head as the rune works its magic, with an expression like a person with a fly up their nose. When Soot appears, he looks at you with a surprised expression, stepping aside while Alon dives facefirst into the portal, happily splashing around in the pools nearby. You'll have to explain this to the mage later...";
			move Alon to Glittering Gate;
			TraitLoss "Hunting Alon" for Soot;
			TraitGain "Captured Alon" for Soot;
			TraitGain "MPreg" for Alon;

instead of conversing Alon:
	if "Aggravated Alon" is listed in Traits of Soot and Alon is in Overflowing Grotto:
		say "     Your first few attempts at gaining Alon's attention fail, but on the fourth try, he swims over, leaning his head on the makeshift bank of the overflowing grotto. You apologize for getting off on the wrong foot as he looks you over with an uninterested expression, and attempt to redeem yourself, wondering what you should tell him so that he'll forgive your earlier faux pas. Keep in mind [bold type]he said that he prefers people who tell the truth.[roman type][line break]";
		LineBreak;
		say "     [bold type]How should you get Alon to trust you?[roman type][line break]";
		let Alon_Oblivious_Choices be a list of text;
		add "Tell him what you're really planning." to Alon_Oblivious_Choices;
		add "Tell him you really have a better place for him to live." to Alon_Oblivious_Choices;
		let Alon_Oblivious_Choice be what the player chooses from Alon_Oblivious_Choices;
		if Alon_Oblivious_Choice is:
			-- "Tell him what you're really planning.":
				LineBreak;
				say "     Taking a chance, you tell the dragon exactly what you want to do with him. Sexual conquest and all, you tell him in excruciating detail exactly what'll happen if he comes with you. You can almost hear crickets in the background as he tilts his head, and it comes as such a surprise when he bursts out laughing that you nearly jump out of your skin. 'What are we waiting for?! Usually the peasants scream and run when they see me watching them bathe, but all those dangly bits look fun to play with! Let's go, let's go!' Aggressively pressing his nose against your palm after heaving himself the rest of the way out of the pool, Alon shakes his head as the rune works its magic, with an expression like a person with a fly up their nose. When Soot appears, he looks at you with a surprised expression, stepping aside while Alon dives facefirst into the portal, happily splashing around in the pools nearby. You'll have to explain this to the mage later...";
				move Alon to Glittering Gate;
				TraitLoss "Hunting Alon" for Soot;
				TraitGain "Captured Alon" for Soot;
				TraitGain "MPreg" for Alon;
			-- "Tell him you really have a better place for him to live.":
				LineBreak;
				say "     Deciding to play it safe, you tell the dragon that you want to move him somewhere he won't be destroying the environment. You happen to have somewhere that he can enjoy himself, as long as he doesn't mind a few... concessions. 'You're still lying, but I can smell why~!' With a grin, the dragon looks pointedly toward your crotch as though he can smell what you intend, nostrils flaring. 'Fuck it! I'm more than willing. Usually the peasants scream and run when they see me watching them bathe, but all those dangly bits look fun to play with! Let's go, let's go!' Aggressively pressing his nose against your palm after heaving himself the rest of the way out of the pool, Alon shakes his head as the rune works its magic, with an expression like a person with a fly up their nose. When Soot appears, he looks at you with a surprised expression, stepping aside while Alon dives facefirst into the portal, happily splashing around in the pools nearby. You'll have to explain this to the mage later...";
				move Alon to Glittering Gate;
				TraitLoss "Hunting Alon" for Soot;
				TraitGain "Captured Alon" for Soot;
				TraitGain "MPreg" for Alon;
	else if Alon is in Glittering Gate:
		say "     You try to strike up a conversation with the water dragon, but he seems too busy playing among the waves, ignoring you and even splashing you when he sees your sour expression. You give up trying to talk to him, resolved that you'll have to offer something more enticing to capture his attention.";

Section 4 - Alon Captured Scenes

instead of fucking Alon:
	if Alon is in Overflowing Grotto:
		say "     You haven't even earned the dragon's trust yet! Why are you trying to have sex with him? You should get him back to the pocket universe before you try anything.";
	else if Alon is in Glittering Gate:
		say "     Catching Alon's attention to bring him to the surface, you toss aside your gear on the nearest dry spot and ask him whether he's willing to work on some 'interspecies relations.' It seems he's more than game, and within a few moments, you're confronted with a curious dragon snout shoved between your legs, huffing your genitals like an overexcited dog.";
		if OffSpringCount of Alon is 0 and impregtimer of Alon is 0:
			say "     Since this is your first time with the admittedly friendly dragon, you let him explore your crotch with his tongue";
			if Player is male:
				say ". In an impressive display of tonguesmanship, the dragon wraps his appendage all the way around your awakening cock, slurping along its length and giving a few experimental, drooly tugs that drag a moan out of your mouth";
			if Player is female:
				say ". Trailing between your thighs, the dragon finds your cunt, dragging his tongue over your lips and tickling its way inside, filling you up with the spiraling appendage and tasting your arousal";
			say ".";
			say "[AlonFirstFuck]";
		else if OffSpringCount of Alon < 3:
			say "     Already used to your body, Alon seeks out the most sensitive spots on your body, soon covering the space between your legs with drool. You let him lick as he likes, huffing aloud as he ";
			if Player is male:
				say "sucks your dick surprisingly skillfully, trailing his tongue along the underside.";
			else if Player is female:
				say "starts rolling his tongue along your clit to a curious rhythm that almost vibrates.";
			else:
				say "continues slurping between your cheeks and teasing your ass.";
			say "[AlonFuckMenu]";
		else if OffspringCount of Alon > 2:
			say "[AlonFuckMenu]";

to say AlonFuckMenu:
	say "     The dragon seems worked up enough that you could do whatever you like. What would you like to do to him?";
	let Alon_Sex_Choices be a list of text;
	if Player is male:
		add "Fuck his face." to Alon_Sex_Choices;
		add "End the foreplay and fuck his ass." to Alon_Sex_Choices;
	if Player is female:
		add "End the foreplay and demand that Alon fuck you." to Alon_Sex_Choices;
	let Alon_Sex_Choice be what the player chooses from Alon_Sex_Choices;
	if Alon_Sex_Choice is:
		-- "Fuck his face.":
			LineBreak;
			say "     Throwing your usual objective to the wind, you grip the dragon's fin-like crest for leverage, grunting as you guide more of your cock into his mouth. For such a large creature, he's remarkably gentle, and his mouth feels tighter than most, slurping your shaft to the root with little effort. 'Tasty.' Talking with his mouth otherwise occupied, the orally focused dragon rolls his tongue along the underside of your shaft with a coiling motion that makes you see stars. Looking up at you with mischief shining in slit pupils, he wraps his tongue along your whole length, then lolls it out [if Player is InternalBalls]to slip it between your cheeks, slipping his tongue into your ass and waggling it until he finds your prostate. [else]to slather your balls in sticky saliva. One quick moment of suction, and they slip into his mouth alongside your cock, subjected to a whirling, worshipful licking. [end if][line break]";
			say "     Attacked from two angles, you grit your teeth, humping recklessly against the dragon's mouth without a single thought for the carefully hidden teeth that might snag your masculinity. All you can think of is how wet, hot, and soft that maw is around your dick, coupled with how much you want to give the dragon a taste of your cum. Sensing your impending orgasm, the dragon releases his tight suction, opening his maw wide and using nothing but his tongue to polish your cock. Wrapped around your shaft, it's almost as tight as a hand, though twice as soft, and you can't last much longer under its coiling expertise, firing off thick ropes of cum that paint the pink flesh of the dragon's maw and dribble down his chin. Not a drop is wasted, milked from your shaft by that coiling tongue, though the dragon's sure to show you the milky pool in the bottom of his maw before he swallows.";
			WaitLineBreak;
			if ImpregTimer of Alon is 0:
				say "     Head in hand, you pant your appreciation for the dragon's oral expertise, though you lament that you didn't fulfill your purpose. There won't be any eggs this time. 'There's always next time,' Alon chuckles as he suns his still-erect cock, ignoring its indignant squirming. You bow to his logic as you collect your things, thinking to yourself that there will be many more 'next times.'";
			else:
				say "     Head in hand, you pant your appreciation for the dragon's oral expertise, though you lament that you can't pump another clutch in him while the first one's still growing. 'There's always next time,' Alon chuckles as he suns his still-erect cock, ignoring its indignant squirming and caressing his stomach. You bow to his logic as you collect your things, thinking to yourself that there will be many more 'next times.'";
			NPCSexAftermath Alon receives "OralCock" from Player;
		-- "End the foreplay and fuck his ass.":
			LineBreak;
			say "     Tugging yourself free of the dragon's enticing maw, you tell him that it's time for the main event. You're here to fuck his ass this time, and it'd be a crying shame to waste your cum somewhere it can't do its work. 'Yes, sir!' Alon plops down on his stomach, lifting his tail high and wiggling his haunches for you, looking over his shoulder as he licks away the drool that drips down his chin. His azure hole winks at you, unable to fully close, clearly already loosened, and you get the feeling he's been waiting for this.";
			say "     Climbing the dragon's scaly rump, you stuff yourself into the comfortable space between his back legs, hanging onto his tail for purchase and maneuvering your dick into place. Still wet from his slurping maw, you stuff yourself inside with little fanfare, sliding to the root and testing those deliciously pulsing inner walls. It's hard to resist the instinct to pound away, and before you give more than one or two slow thrusts, you're already raring to go. 'Just the right size,' Alon coos as you fuck him, chin against the ground and tongue hanging out of his mouth like a panting dog. Claws sinking into the stone beneath him, he wriggles his whole body with anticipation, demanding more with his body language. 'Almost as good as being mounted by a territorial drake. Scratches that itch.'";
			WaitLineBreak;
			say "     Punishing the dragon for comparing you to someone else, you lose any pretense of holding yourself back. Slapping that upturned rump, you pound away hard enough that your whole body presses against the dragon's perineum, setting off a growling noise of appreciation from the slutty dragon. It seems this is what he wanted, and you're more than willing to give him all he wants! You're not sure how long you rut the dragon, taking advantage of his massive size to fuck him as hard and fast as you like without any fear of harming him. In that timeless back and forth of suckling inner muscles and deep dicking, you lose yourself in the sloppy noises and greedy desire to claim something so much bigger than yourself, clinging to that thrashing tail hard enough that you worry the scales will leave an imprint on your skin.";
			say "     Orgasm washes over you suddenly, without its usual slow build, and you thrust your way through it, gritting your teeth and watching your dick grow sloppier by the second, creaming that greedy hole with enough seed that your balls drip with it. By the time you finish, you swear more than a gallon of seed steams on the dragon's blue scales, shining in the sunlight, and you feel faint, as though you've poured all of your energy into filling him up. Falling backward, you try to catch your breath, patting the tail that catches you. 'Mm. I'll just lie here for a bit,' Alon says dreamily, the puddle seeping out between his hind legs telling you he enjoyed himself as much as you did. A content expression shows on his face, and as you reequip yourself, you see his eyes flutter closed, and his chest moves in an unmistakable, slow rhythm. You've fucked him into exhaustion!";
			NPCSexAftermath Alon receives "AssFuck" from Player;
			if impregtimer of Alon is 0: [Guaranteed Pregnancy.]
				now ImpregTimer of Alon is 1;
		-- "End the foreplay and demand that Alon fuck you.":
			LineBreak;
			say "     As much as you'd like to enjoy Alon's tongue for a bit longer, you shove his face away from the sloppy tonguing he's settled into, shivering at the dripping mess he made of your pussy. It's time for the main event, and you'd hate to use all of your energy before you get a taste of that prehensile cock waggling between Alon's legs. Telling the dragon to roll over so you can climb on, you watch as he complies, admiring the flopping appendage as it rears up like an excited snake. You climb onto Alon's stomach without hesitation, balancing yourself as best as you can and wriggling backward until you feel that tapered tip kiss your clit, going still as it rolls along your lips like a dog sniffing out its favorite treat. Taking advantage of the dragon's unique anatomy, you settle in, groaning aloud while it wriggles past your sopping wet lips and thrusts itself inside.";
			say "     'Mmmph.' Teased by your clenching insides, the dragon puts in the work to slide you further along his shaft, digging claws into the stone around him until he's in a sitting position. With gravity to aid him, he penetrates you to the thick, throbbing base, churning balls a perfect seat while his squirming cock slides around your inner walls, kissing your cervix and soaking you through with precum. It seems he's too excited to take his time, judging by his dick slithering as far out of you as it can manage, only to dive back in like a snake into its burrow. Spreading your legs wide, you lean into the unconventional fuck, riding the cock in an opposite rhythm to increase the depth of his thrusts. That slippery cock seeks out all your most sensitive spots, swirling over there with the perfect amount of pressure, and before long, you feel your orgasm fast approaching, your stuffed cunt singing with pleasure.";
			WaitLineBreak;
			say "     You're selfish with your orgasm, sitting down hard and rubbing your clit as you cream the dragon's shaft with squirt after squirt of femcum. His dick wriggles as you scoot back and forth, deprived of the friction it was enjoying, but that only works you to new heights, setting off a chain of miniature orgasms that slacken your jaw and mess the dragon's crotch further with your drooling fluids. You fall forward onto the dragon's stomach as the last orgasm quakes through your body, still impaled on a solid foot of hot dragon cock. Your legs turn into jelly when that shaft takes charge, slithering in and out of you with a rough rhythm that fills the sunny clearing with a sound reminiscent of stirring pasta. Too exhausted to take charge, you let it use your quivering quim, moaning aloud with every thrust and holding your bulging stomach with one hand as the dragon's hips thrust upward, slapping his balls on your ass cheeks on every downswing. His orgasm comes sooner than you'd hoped, but you only suffer a moment of disappointment before the fireworks begin inside you.";
			say "     Like a sprinkler set on high, the dragon's dick swirls over your insides, hosing them with thick seed. With nowhere to go, it sprays out of your cunt at high pressure, basting your insides and coating your lower half with an increasingly thick layer of musky dragon. You're not sure how long Alon's cock power washes your insides, but it eventually slows to a trickle, falling out of you with a wet plop, and you catch your breath on his heaving belly, admiring the way the sun glints off of his scales. You barely notice when the eggs slip out of your loosened cunt, sending a shiver down your spine as they roll down between your legs and land in the puddle the two of you made. You're so wet that they slide right out, barely stretching you before they plop to the ground, and you zone out at the pleasant sensation, only coming to your senses once the dragon's snoring rumbles through his warm belly. Shaking your head at the dragon's typical response to an orgasm, you take the opportunity to gather your gear, cleaning yourself up as best you can and leaving him to nap in the sun. After all, you're sure you wore him out! Poor thing.";
			if OffSpringCount of Alon < 4:
				increase OffSpringCount of Alon by 1;
			NPCSexAftermath Player receives "PussyFuck" from Alon;
		-- "Nevermind.":
			say "     Deciding against fucking the dragon for now, you tell Alon to wait until you're more in the mood, noting his slightly disappointed expression as he nods his head, still staring hungrily at your crotch and licking his lips. ";



to say AlonFirstFuck:
	let Alon_First_sex_Choices be a list of text;
	if Player is male:
		add "Breed him for the first time." to Alon_First_sex_Choices;
	if Player is female:
		add "Demand that Alon breed you for the first time." to Alon_First_sex_Choices;
	let Alon_First_sex_Choice be what the player chooses from Alon_First_sex_Choices;
	if Alon_First_sex_Choice is:
		-- "Breed him for the first time.":
			LineBreak;
			say "     Pushing the dragon's curious muzzle away from your saliva-coated cock, you circle the dragon to his upturned ass, admiring the view as his tail lifts for you. There's no hesitation in his motion, and it makes you wonder if he's done this for other male dragons in the past. Somehow, that excites you, and cock-in-hand, you climb up on the dragon's legs, lining yourself up with the pretty light blue hole that matches Alon's scales. 'Mmm. Don't hold back on my account,' Alon says with a lazy pant, tongue lolling out of his mouth and head turned to watch you mount him. 'You're not the first, and you certainly won't be the last~.' Wiggling his rump, the dragon shows off his shiny, water-dripping hindquarters, inadvertently nudging you into the warmth of his hole.";
			say "     Grunting at the softness that swallows your dick to the door, you hang onto the dragon's tail for purchase, pressing your hips flush to the cleft between his cheeks. Alon certainly isn't lying- that's an experienced hole. Just slack enough to let you thrust as you like, but conforming to your dick in a deliciously tight squeeze, it encourages you to fuck it with clamping muscles. 'Not bad.' Alon isn't afraid to be vocal about his enjoyment, his balls drawing up slightly as you thrust away and teasing the bottom of your shaft as you saw in and out. 'Why don't we try something a bit more fun~?' Playful as always, the dragon clamps his tail around your ass, keeping you buried deep inside him as he carefully rolls onto his back, giving you an impressive view of a massive pair of balls and a surprising cock. It slithers and moves on its own, splashing his stomach. 'There we go,' he says as he watches your face with a lusty grin, leaning forward to encourage his questing cock into his muzzle and using his forelegs to grab his back legs, giving you room to work.";
			WaitLineBreak;
			say "     Watching the dragon suck his cock, you pound away with increasing vigor, egged on by his tail wrapping itself around your waist and providing a convenient platform for your ass with its underside. The last straw comes when the dragon's tail slithers lower and abandons your waist, teasing your hole, then slips into you, filling your ass with the wiggling appendage. Sloppily sucking himself to the same rhythm that massages your prostate, Alon winks up at you, drool dripping down his chin along with copious precum. His hole rhythmically squeezes with every thrust, and his insides beg for your cum the longer you fuck him, delicious friction threatening to suck the cum right out of you. You give the dragon what he wants, giving into the dual assault of that talented tail and slutty hole. Pushing to the root, you spray inside with magically assisted force, slumping forward and hanging there suspended by your cock and the tail still buried in your ass, at the slutty dragon's mercy even as you pump rope after rope inside of him. You're not sure who fucked who, but you don't particularly mind.";
			say "     Alon slurps himself to orgasm while you pump him full of egg batter, letting his dancing hose of a cock spray his open mouth and shamelessly wearing the extra spurts like a badge of honor. Panting, he uncurls his body once his dick's retreated into its sheath, gingerly slipping his tail from your ravaged ass and stretching in the ever-present sunlight. 'You're a better fuck than you look. Let's do that again sometime soon~.' You tell the dragon that you wouldn't mind a repeat performance as you gather your gear, watching the slutty reptile stretch and show off your handiwork. Something about that dragon ass, dripping with your cum and catching the light, just feels right, and you shake your head before you ask for another round.";
			NPCSexAftermath Alon receives "AssFuck" from Player;
			if impregtimer of Alon is 0: [Guaranteed Pregnancy.]
				now ImpregTimer of Alon is 1;
		-- "Demand that Alon breed you for the first time.":
			LineBreak;
			say "     Pushing the curious dragon's muzzle away from your sopping-wet pussy, you pat his side until he lifts his ass, then slide yourself beneath his stomach. With legs spread wide, you tell him you'd like him to breed you this time. After all, that endlessly wiggling, tapered cock looks quite interesting. You're not sure you can take the whole thing, long as it is, but it seems like a cervix-tickler. Alon gets the picture almost immediately, sucking in his stomach and pressing forward until his cock's twisting underbelly smears over your pussy. 'Sure thing! Let me know if it's too much.' He twists with some difficulty to look beneath himself, putting his flexible body to work, licking his lips of a bit of drool. 'Sorry if I get a bit worked up. It's been a while since I've been in control.'";
			say "     You don't have much time to think about the slutty dragon's implication. Instead, the intense sensation of that questing cockhead finding your slippery hole and worming its way inside takes over. It's strange watching your stomach swell with that squirming cock, but you can't deny how good it feels, and you throw your head back, holding your legs open to give Alon more room to stuff himself deeper. From above, you hear a masculine groan, and the dragon's hips surge forward, accompanied by the rest of that exotic cock. He's so deep inside you that you have no idea how he's not splitting you open, but a quick inspection of the dripping sensation rolling down your inner thighs tells you all you need to know. Alon's cock is like a fire hose, pissing precum at such volume that none of it has anywhere to go, coating your insides and gushing out.";
			WaitLineBreak;
			say "     Adding to the peculiarity of his cock, it seems that Alon doesn't need to move much to breed you harder than most could manage by putting their whole weight into it. Rather than the heavy thrust of meaty haunches propelling him to the root, that whole cock withdraws until only the tip smears itself over your throbbing clit, then dives back in of its own accord, stirring your insides to an increasingly frantic beat. You don't last long with such a talented cock working your insides, and without warning, you clamp down, legs wrapping around the dragon's churning sack instinctively, keeping him buried to the root. You ride out your orgasm with his tip rolling over your cervix, spitting pre like a sprinkler, all the while groaning your satisfaction and coating his shaft in femcum.";
			say "     'High praise. I suppose I haven't lost my edge.' Alon's voice echoes through your body, rumbling through his panting chest. Without further ado, he returns to his plundering rhythm, his cock moving at breakneck speed and diving in and out of your sloppy cunt with a purposeful rhythm. If you thought his precum was too much to handle, his orgasm hits far harder, ballooning his cock's underbelly and spraying with such force that you swear it bruises your cervix. That heavy sack draws up between your legs, and a veritable volcano of cum sprays out around your union, messing the rocks below and coating your entire body in the musky sticky seed. Thoroughly coated, you blink away the mess, holding your swollen stomach with one hand and groaning as the dragon's shadow moves from above you. You can barely move after his thorough breeding, and as his face slips between your legs again, you lapse into post-orgasmic bliss, only barely aware of his shallow lapping and curious probing.";
			WaitLineBreak;
			say "     Your stomach shifts just as the dragon's finished cleaning up most of his mess, and you groan aloud as you stretch from the inside, your pussy lips pushing apart. A rune-etched egg pulsating with light blue energy shoves the dragon's tongue aside and plops to the ground, soon followed by half a dozen others. You shiver with how good it feels, openly touching yourself despite the pair of draconic eyes fixed on you, and forget for a moment that you're not alone.";
			say "     'That was... fast?' Alon tilts his head slightly, still licking a stray bit of cum from the corner of his mouth. He prods one of the eggs with a claw as you gather your wits, his expression one of amazement. 'If only my species were half as efficient!' Reequipping yourself on shaking legs as the dirty dragon rolls back into the water, you tell him it's nothing but Soot's magic at work. Pregnancy isn't nearly this quick under normal circumstances! Shaking your head at the weird ideas the mage's magic may have given the laid-back dragon, you prepare to leave.";
			NPCSexAftermath Player receives "PussyFuck" from Alon;
			if OffSpringCount of Alon < 4:
				increase OffSpringCount of Alon by 1;



Section 5 - Alon Birth Scenes

an everyturn rule:
	if ImpregTimer of Alon > 0: [Alon is pregnant]
		increase ImpregTimer of Alon by 1; [counting up towards 24]
		if debugactive is 1:
			say "     DEBUG: Alon's eggnancy advanced one turn. Current Turn: [ImpregTimer of Alon], Target Value: 24";
		if ImpregTimer of Alon is 8:
			TraitGain "Slightly Pregnant" for Alon;
		if ImpregTimer of Alon is 20 and skipturnblocker is 0: [announcement that birthing time is coming closer]
			if Alon is visible:
				say "     Alon groans with discomfort and rolls over, his stomach distended to a level that almost seems worrisome. His tail hikes, and he doesn't appear to have his usual playfully seductive behavior, showing off a winking azure pucker that dribbles with natural lubricant. You get the feeling he'll start laying his eggs soon, so if you want to be near for the birth, you'd better stick close by!";
			else:
				say "     Your thoughts wander back to Alon, and you feel a need to go check in on him. [bold type]If you want to be present for the birth of his eggs, you should most likely stay close to him for the next 12 hours or so.[roman type][line break]";
			TraitGain "Heavily Pregnant" for Alon;
			TraitLoss "Slightly Pregnant" for Alon;
		else if ImpregTimer of Alon >= 24 and skipturnblocker is 0: [birthing time]
			if Alon is not visible: [player isn't anywhere near him]
				say "     [bold type]Your thoughts wander back to Alon, and you feel a need to go check in on him. You may have missed his egg-laying![roman type][line break]";
				add "Absent_Birth" to Traits of Alon; [just increases offspring count. no payoff. trait just there for completeness. it does nothing]
			else: [player is next to Alon] [TODO: Add mentions of other offspring]
				say "     Alon groans and lies on his side, his legs forced apart by his massvely swollen stomach. His tongue hangs out of his mouth, and you can see his azure pucker flex with effort as a soft glow illuminates it. Pulsing with an unmistakably watery aura, his first egg tests the limits of his hole, accompanied by a slow trickle of lubricant, then slides out, leaving his ass gaping and his cock throbbing. Moaning aloud as if he's enjoying himself, he bears down, readying the next. ";
				say "Alon grimaces as each egg reaches its apex, stretching his hole to its fullest, and then it slides out of him. He sighs as though disappointed that it's over, only to moan unintelligibly as the next jostles for position. At least half a dozen eggs come in quick succession, pooling by his haunches, and by the time he finishes, his thick hauches shine with messy lubricant, his hole loosened enough that you can see his soft pink inner walls, still spasming despite the birth's near finish. When the last egg left queues up, he lets out a whorish, masculine sound of pleasure, and his cock heaves, dousing the ground below in a thick layer of cum.";
				if Player is male:
					LineBreak;
					say "     Admiring that freshly stretched hole and the exhausted dragon's inability to move after his ordeal, you have an idea- [bold type]maybe Alon could use a drink?[roman type][line break]";
					say "[link]Y[as]y[end link] Yes - Take advantage and use his tongue.";
					say "[link]N[as]n[end link] No - You'll let him rest.";
					if Player consents:
						LineBreak;
						say "[AlonBirthSex]";
					else:
						LineBreak;
						say "     Shaking your head, you clear the evil thought out, instead offering the exhausted dragon some comfort, patting his haunches and gently cleaning up the mess he made with a cloth from your bag. Of course, you still tease the poor thing, taking your time to wipe away his juices from his sensitive hole, and stroking his spent cock until it gives up its last pearly dribbles into your palm. You leave him to rest once you've had your fill of teasing, satisfied by the now-sleeping dragon's contentment.";
					TraitLoss "Heavily Pregnant" for Alon;
					if OffSpringCount of Alon < 4:
						increase OffSpringCount of Alon by 1;
					now ImpregTimer of Alon is 0; [pregnancy reset]

to say AlonBirthSex:
	say "     Stripping off your gear, you set it aside and approach the dragon with your cock leading the way. Rolling your dick over his flaring nostrils while asking him if he's willing to deal with the erection his egg-laying gave you. When he doesn't respond immediately, you prod your dick between the exhausted dragon's lips, giving him a taste of the pearl of pre at the tip. 'Mmmph.' Eyes unfocused, the dragon lets his tongue loll out like a red carpet for your dick, tasting it with a slow lick before nuzzling into it, sealing his maw around it. That talented tongue swirls over the underside, dripping with drool, and each breath he takes vibrates through his muzzle, slow and calm, accompanied by a slow suckle like he's nursing.";
	say "     Taking the dragon's soft muzzle as an invitation, you hump away with wild abandon, gripping his cheeks as you feed him a steadily growing trickle of arousal. It's not quite the same as his ass, but the soft tongue wringing your dick with expert pressure sure gives it a run for its money, and you feel as though that suction will draw your balls up through your cock if you're not careful. You see no point in holding back, so you let the growing sensation in your lower stomach reach its crescendo, washing over you as you fill his mouth with rope after rope of cum. That tongue milks you for everything you can give, and the dragon suckles as you bury yourself to the root, swallowing the evidence of your orgasm without complaint and begging for more.";
	WaitLineBreak;
	say "     Softened and running dry, you tug yourself free with a wet plop, patting the dozing dragon's muzzle as he settles in for a well-deserved nap. He looks so peaceful with a bit of your cum on his lower lip and his stretched ass on display that you can't help but wonder if he's taking advantage of this situation even more than you are. Perhaps this is what he wanted all along, just sucking cock, laying eggs, and lazing about in the water!";
	NPCSexAftermath Alon receives "OralCock" from Player;

Alon ends here.