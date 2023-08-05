Raymond by Voidsnaps begins here.

[Resolutions:
Yours Forever:
1: Continue event.
100: Not interested.

Traits:
"Orgy Talk"- Unlocks 6-some scene. (all males)
"Mental Link" - Masturbation scenes randomly proc.
]

An everyturn rule:
	if "Mental Link" is listed in Traits of Raymond and (lastfuck of Raymond - turns > 4):
		if Player is in Grey Abbey Library and (a random chance of 1 in 10 succeeds or lastfuck of Raymond - turns > 16):
			say "     As you wander the streets near the library, you feel a sudden surge between your legs. Raymond's voice echoes, sounding far away, and then clarifies into a husky whisper at the back of your mind. 'Ah, my sweet. Sorry. I suppose I can't control myself.' His voice sounds labored, and as you stand there, you realize what the sensation wracking your genitals is. Raymond's touching himself and broadcasting how it feels! You blush as you [if player is not barecrotch]slip your hand into your pants [else]touch yourself [end if]in the middle of the street, excited to share such an intimate moment in public. 'Forgive me, my sweet. It's been so long- I don't think that I-' A squeak interrupts Raymond's usually well-put-together voice, and you feel orgasm wrack your body, intensified by your efforts to get yourself off. Sticky and sated, you wipe your hands off on a nearby wall, continuing on your way with a smile and the knowledge that the mouse man's thinking of you. You'll have to pay back his consideration with a visit.";
			now lastfuck of Raymond is turns;

Section 1 - Character Declaration and rooms

Table of GameRoomIDs (continued)
Object	Name
Ruined Restaurant	"Ruined Restaurant"

Ruined Restaurant is a room. It is fasttravel. It is private.
Ruined Restaurant is sleepsafe.
Description of Ruined Restaurant is "[RuinedRestaurantDesc]";

to say RuinedRestaurantDesc:
	say "     Stained white tablecloths litter the restaurant, covering up tables that have seen better days. From the looks of the decor, the place used to be an italian restaurant that was closed long before the nanites overran the city. Like Raymond, many male mice are using the tables as makeshift tents, placing their belongings under them and treating the expansive space as a sort of tent-city.";

Table of GameCharacterIDs (continued)
object	name
Raymond	"Raymond"

Raymond is a man.
ScaleValue of Raymond is 2. [dwarf-sized]
Body Weight of Raymond is 2. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Raymond is 2. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Raymond is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Raymond is 3. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Raymond is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Raymond is 5. [length in inches]
Breast Size of Raymond is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Raymond is 2. [count of nipples]
Asshole Depth of Raymond is 7. [inches deep for anal fucking]
Asshole Tightness of Raymond is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Raymond is 1. [number of cocks]
Cock Girth of Raymond is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Raymond is 6. [length in inches]
Ball Count of Raymond is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Raymond is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Raymond is 0. [number of cunts]
Cunt Depth of Raymond is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Raymond is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Raymond is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Raymond is false.
PlayerRomanced of Raymond is false.
PlayerFriended of Raymond is false.
PlayerControlled of Raymond is false.
PlayerFucked of Raymond is false.
OralVirgin of Raymond is false.
Virgin of Raymond is false.
AnalVirgin of Raymond is false.
PenileVirgin of Raymond is false.
SexuallyExperienced of Raymond is true.
TwistedCapacity of Raymond is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Raymond is true. [steriles can't knock people up]
MainInfection of Raymond is "Mentally Gifted Mouse". [Always match the capitalization of the infection. Case sensitive.]
Description of Raymond is "[RaymondDesc]".
Conversation of Raymond is { "<This is nothing but a placeholder!>" }.
The scent of Raymond is "[RaymondScent]".
Raymond is in Ruined Restaurant.


to say RaymondDesc:
	say "     Raymond is a three foot tall mouse with wide, radar like ears tinged pink, white fur, and ruby red eyes. He looks much like a lab rat you'd see in any scientist's office, but with an undeniably human posture. When you get close to him, you feel an almost hypnotic peace settle over you, as though you're enfolded in the arms of a lover, and you notice that his eyes never leave you when you're nearby, as though he sees right through you. You shiver slightly when you realize that he could be reading your thoughts right now, and you swear you see a smile quirk the edges of the mouse's muzzle.";

to say RaymondScent:
	say "     You're not sure what Raymond smells like. Whenever you think about it, you can't quite seem to grasp what the actual scent is, instead recalling some of your favorite scents from childhood. The woods after rain, fresh baked cookies, burying your face in your childhood dog's silky fur- That can't be a coincidence.";

instead of fucking Raymond: [menu in final section]
	say "[Raymond_FuckMenu]";

instead of conversing Raymond:
	say "[Raymond_TalkMenu]"

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mentally Gifted Mouse"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Mentally Gifted Mouse" to infections of InsectList;
	add "Mentally Gifted Mouse" to infections of FurryList;
	add "Mentally Gifted Mouse" to infections of MaleList;
	add "Mentally Gifted Mouse" to infections of BipedalList;
	now Name entry is "Mentally Gifted Mouse";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "";
	now defeated entry is "[Mouse Loses]";
	now victory entry is "[Mouse Wins]";
	now desc entry is "[Mouse Desc]";
	now face entry is "rodent-like in appearance, with long whiskers and buck teeth. Radar like ears top your head, pink and silky soft, and violet eyes stare at your surroundings with interest";
	now body entry is "small, lithe and short, almost feminine";
	now skin entry is "soft grey fur accented with pink";
	now tail entry is "Long and pink with a smooth silky soft appearance and fuzzy skin, a tail sprouts from just above your rump, swishing around to show your emotions.";
	now cock entry is "pink and modestly sized, peeking from a fuzzy sheath that houses your";
	now face change entry is "it lengthens to a mouselike size, matching your growing rounded ears and violet eyes, short grey hair, lightly tousled by invisible winds, sprouts from between these ears";
	now body change entry is "your physique softens into a slim, sleek, but still masculine enough that you can't be mistaken for female.";
	now skin change entry is "soft grey fur covering pink";
	now ass change entry is "two sweet cheeks form, bubbly and perfectly sized for a pair of hands";
	now cock change entry is "becomes thinner and tapered, sticking out of a soft sheath above comparatively large balls below your";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 30;
	now int entry is 22;
	now cha entry is 30;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 12;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 50;
	now MilkItem entry is ""; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2;
	now body descriptor entry is "[one of]lithe[or]skinny[at random]";
	now type entry is "rodent";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Mouse Loses:
	say "This text is not accessible. How did you get here?";

to say Mouse Wins:
	say "This text is not accessible. How did you get here?";

to say Mouse desc:
	say "This text is not accessible. How did you get here?";

Section 2 - Raymond's Introduction

Table of GameEventIDs (continued)
Object	Name
Yours Forever	"Yours Forever"

Yours Forever is a situation.
ResolveFunction of Yours Forever is "[ResolveEvent Yours Forever]".
Yours Forever is active.
Sarea of Yours Forever is "Outside".

to say ResolveEvent Yours Forever:
	say "     You're not sure how long you wander the city, but you eventually reach a strangely worn restaurant building that looks like it's falling apart, with a fading sign you can't make out. Shaking your head, you turn to walk in the other direction, unwilling to head inside and risk whatever might be waiting for you. You've seen enough horror movies to know better!";
	say "     Still, something draws you toward the dilapidated restaurant like a magnet to metal. [bold type]Would it hurt to take a peek?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - Yes. You know better.";
	say "     [link](N)[as]n[end link] - No. You're confident in your abilities. You can fight off whatever might be inside!";
	if player consents:
		say "     Shaking off whatever hypnosis draws you in, you make a mental note of the location and decide to avoid it forever. Anything that tries to entice you can't be good news.";
		now Resolution of Yours Forever is 100; [Declined. Event removed.]
	else:
		say "     Feeling silly, you open the restaurant's doors wide, wincing as they creak and slam back in place. Tentatively, following a nagging feeling in your mind, you softly call out, asking if there's anyone there. Silence meets you in the drifting dust motes, and you turn to leave, stopped only by a sudden grinding sensation in your head. Doubling over, you hold your head and curl into the fetal position, riding out a sensation you can only describe as a combination of nails on a chalkboard and an intense ice cream headache. Slowly, the static in your head solidifies, then melts into a softspoken, deep voice, like an announcer tapping a microphone, then beginning their broadcast.";
		say "     'Sorry. I suppose that's rather unpleasant.' the soothing voice says as you search for its owner. A skittering noise echoes in the dark room, and your eyes settle on a surprising sight, an albino mouse standing three feet tall. 'I've adjusted the volume. I see you've received my summons.' He bows before you, his pink paws contrasting with snow-white fur and accentuating his lack of clothing. 'I've been waiting for oh-so-long. We all have.' He says without moving his lips, blinking ruby red eyes as he crosses the distance between you, lips inches from yours. You pause, utterly taken with this mouse you've just met. The rodent is the most handsome, well-mannered, attractive stud of a mouse you've ever- Wait. You can't shake the feeling that those words aren't your own, and you look around, confused, until a squeaking laugh draws you back to your new acquaintance. 'It would be so much easier if you fell for my little trick, but I suppose that would end my interest in you.' With a smirk, the mouse leans in, pressing his lips against yours in a strangely chaste way and caressing your head with those silky pink paw pads. 'I've been watching you for quite a while. Through windows here, a dimly lit archway there, the occasional rooftop. You're magnificent. Such a free spirit, so sure of yourself.'";
		WaitLineBreak;
		say "     Unless you read the room wrong, it sounds like the mouse is IN LOVE with you. You can't help but feel a bit flattered, though you're unsure if the images fluttering in your head are a product of your imagination or something else: You and the mouse running in a meadow, eating spaghetti together, meeting your parents? 'I must have you.' The mouse continues as you feel the mental pressure intensify, filling your head with lovie-dovie images that culminate in the stark scene of you and the mouse walking down an aisle together, dressed in white. 'Ah. Perhaps I'm getting ahead of myself. I'm a patient man. There's no fun in breaking you when I can bring you into the fold. I shall allow you to leave if you'd like. With the promise that you'll return to give me a chance.'";
		say "     Other mice melt out of the woodwork and stand near the one you've been talking to, their noses twitching in curiosity as you feel the gentle nibble of their minds brushing against yours, like the first, though none seem as eager to slip in. 'I am Raymond. These are my brothers. A shy bunch, but you'll get used to them, should you invest enough time.' With an intense stare, the mouse watches your every move but does not attempt to accost you, leaving you with the conclusion that the place is safe. Would it be so bad to take Raymond up on his offer? Some of those images were pretty tempting.";
		now Resolution of Yours Forever is 1;
		move Player to Ruined Restaurant;
		AddNavPoint Ruined Restaurant;
	Now Yours Forever is resolved;

to say Raymond_FuckMenu:
	say "     [bold type]As Raymond looks up at you with adoration shining in his eyes, you can't help but feel like taking advantage of his desire for closeness. What should you do with him?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask Raymond if you can fuck him";
		now sortorder entry is 1;
		now description entry is "That skinny mouse butt looks fun to play with.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ask Raymond if he'll breed you";
		now sortorder entry is 2;
		now description entry is "You've got an itch you need scratched. Ask Raymond to ease it";
	[]
	if "Orgy Talk" is listed in Traits of Raymond:
		choose a blank row in table of fucking options;
		now title entry is "Ask Raymond if he'll let his brothers join in";
		now sortorder entry is 3;
		now description entry is "Your libido and 6 mousey studs, which will win";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Raymond's dick";
	now sortorder entry is 4;
	now description entry is "That moutwatering half-foot of mouse cock is calling your name. Answer the call";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask Raymond if he'll breed you"):
					say "[RaymondPussyFuck]";
				else if (nam is "Suck Raymond's dick"):
					say "[RaymondSuckOff]";
				else if (nam is "Ask Raymond if you can fuck him"):
					say "[RaymondAssFuck]";
				else if (nam is "Ask Raymond if he'll let his brothers join in"):
					say "[RaymondOrgy]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the mouse, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say Raymond_TalkMenu:
	say "     [bold type]As Sascha tilts his head and stares up at you from the red couch, you ponder what you want to do with him.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the other mice";
	now sortorder entry is 1;
	now description entry is "The other mice that Raymond is surrounded by seem just as interested in you as he is- why haven't they approached you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about Raymond";
	now sortorder entry is 2;
	now description entry is "You still don't know much about him. Ask Raymond about himself";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask about the other mice"):
					say "[RaymondPlayerShareConvo]";
				else if (nam is "Ask about Raymond"):
					say "[RaymondTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the mouse, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

Section 3 - Raymond Talk Options

to say RaymondPlayerShareConvo: [Opens Orgies]
	say "     Looking around at the half a dozen other mice living in the restaurant with Raymond, you can't help but wonder how he's connected with them. They seem to be in sync, and you swear you've seen other swarms of mice wandering the city before! Could it be that they're the same as those collective drones? 'My brothers? We are not that entwined. We have our separate little nooks to escape the rest. Your assumption is correct in that we are connected. What one feels, so do the rest.' Nipping at his finger to demonstrate, Raymond grins as one of the others shakes their hand and squeaks indignantly. 'I've suppressed their involvement in our little chats, though I could allow them through if you wish. Elsewhere, as well.' Elsewhere? You blush as you ponder the kinky options he implied. If you make one of them cum, would the rest?";
	TraitGain "Orgy Talk" for Raymond;

to say RaymondTalk1: [Asking about him]
	say "     You've noticed that Raymond refers to himself in the singular sense, but he still clings to a collective[if Quiet Apartment Building is resolved], much like the swarms of mice you've seen in the city[end if]. Curious, you ask him why that is- Surely in situations like this, the nanites would override his personality and leave him like the rest. Raymond watches you with a mysterious look on his face, then sighs, his voice echoing in your mind. 'I was like them, once. A face among the crowd, born from one of the drones. I'm not certain when things changed, but I couldn't engage with the rest any longer, and I lost the features that made me like them. Pantomiming breasts in front of his flat, bare chest, Raymond chuckles under his breath. 'I couldn't very well stay there. Turns out I'm not the only one of my kind. These poor souls were cut off from the collective as well, wandering with myriad frequencies searching for someone to unscramble them. I suppose that was me. My brothers are not as charismatic as I, but they are not the bland collective my mothers belonged to. It could be a blessing, or a curse, but it is our lot in life.'";

Section 4 - Raymond Sex Scenes

to say RaymondPussyFuck: [Getting a wombful of Raymond's seed.]
	say "     Shyly, you approach the nude mouse, stumbling over your words as you try to articulate what you want him to do to you. It's strange, but you feel like a blushing bride before him. Maybe it has something to do with his ability to rifle through your thoughts. Or perhaps he's inserting this feeling himself. 'I know what you need, dearest.' Raymond says before you can get the words out, amusement written across his face as he bustles you to a nearby booth away from his brothers but still exposed enough that the exhibitionism brings a blush to your cheeks. With surprising strength for his short stature, he pushes you backward[if Player is barecrotch], spreading your knees and trailing soft pink fingers over your sex. [else]making quick work of your pants to expose you to his wandering gaze. [end if]'You're in heat, aren't you? So wet and needy that you can't resist me?'";
	say "     You open your mouth to protest, sure that you're not feeling anything of the sort, but a gnawing feeling in your stomach starts as his words echo through your head. Instead of whatever you were planning to say, a whimper leaves your lips, and you clench your sex, suddenly aware of a flood of wetness drooling down your sopping-wet pussy and over your exposed ass. When did you get so aroused? 'There it is. So delightfully honest.' Raymond coos, his stoic expression taking on a more lusty tint as he lines himself up, letting his awakening dick grow against your aching clitoris. The slightest touch burns through you, and you barely suppress the desire to yank him toward you, to get that mouse cock to fill your needy cunt. 'Relax, dearest.' Raymond guides his dickhead to kiss against your clitoris, perching on the edge of the seat with the aid of dextrous rodent paws. [if Size of Player > 2]Despite your size difference, you can't help but feel a delicious thrill at being dominated. A tapered cock that shouldn't satisfy you feels like the best you've ever seen, and those heavy rodent balls brushing against your upturned ass make you feel like you're going to gush.[end if][line break]";
	WaitLineBreak;
	say "     Raymond saws his cock between your nether lips with slow, gentle patience, bringing his cock up to gently tap against your throbbing clit and showing off the glistening layer of wetness you've coated it in. 'You're so ready for me already. I bet this is the best you've ever had.' Prodding at your entrance, he punctuates his unspoken dirty talk with mock thrusts that drive you wild. Gods, you never knew a dick could feel this good. Every inch needs to be inside you immediately, and with the heat coming over you, you can't think about anything else. Digging your fingers into the faux leather booth, you buck your hips, hoping to capture that gloriously hard cock. 'Needy thing.' Raymond says, bringing a string of pussy juice to his lips and licking it clean with an air of dominance that makes your stomach clench- your womb is begging. 'It's alright. You'll get everything you want.' He says, his mental voice taking on a lustier, huskier tone as he surges forward, filling you [if scalevalue  of Player <= 2]to the brim with melting pleasure [else]with an average amount of dick that should be nothing special but radiates sensations you've never experienced before[end if].";
	say "     With practiced ease, Raymond explores your cunt with slow, measured thrusts, creating a wet symphony that serves as the soundtrack for your ecstasy. Every thrust is like a miniature orgasm, twisting your guts into knots, and you find yourself bucking into each one, forcing six inches of delving mouse cock to the base. You're not sure how long your pussy clenches and gushes for him, but when he pulls out, it almost hurts. Whimpering, you look down, fixing your gaze on that glistening pink cock. You need it back inside, and you don't care how you get it! With a desperate mewl, you grab his hips, slamming him home again and wrapping your thighs around his slim waist, unwilling and unable to let him stop.";
	WaitLineBreak;
	say "     'Beautiful.' Raymond says, his inner voice breathless as his pistoning body. It seems there was a reason he pulled out, to savor your union and prevent himself from finishing too early, but he's as past caring as you are, giving you the pounding you needed. You nearly white-out around the point when you feel the first slosh of mouse cum against your womb, and with a start, you realize that Raymond's mind is broadcasting his orgasm into your head. You can feel how tightly you're clenching around him, how much his cock is throbbing, and even the relief of pump after pump of virile rodent seed mixed with the gushing of your fem-gasm. It's too much, and you collapse backward, your eyes rolling back and your body twitching in time with your shared orgasm.";
	say "     When you come to, Raymond is tending to your face, wiping away sweat and caressing your cheek. He smiles down at you like an angel, and his voice echoes in your brain, warm and comforting. 'That's it. Come back to me, dearest.' Pressing a kiss to your forehead, he cradles your face against his chest, paying no mind to his still-dripping cock against your side. 'I'm afraid you're too beautiful. I couldn't restrain myself. You understand, don't you?' Weakly you nod, but you're already making plans to do this again, hardly resisting the urge to play with your dripping, well-basted pussy. Idly, you wonder if you have to leave. Sadly, your afterglow wears off eventually, and you have to walk away from the mouse's makeshift fuck-nest. You'll be back, and soon.";
	NPCSexAftermath Player receives "PussyFuck" from Raymond;

to say RaymondSuckOff: [Sucking his mousy cock.]
	say "     You can't take your eyes off Raymond's cock. It's so deliciously pink, and the way it swings when he moves makes you wish you were there to nuzzle underneath it and feel its weight. Before you realize what you're doing, you do just that, kneeling to press your nose between that floppy cock and heavy rodent balls. Taking a deep breath, you relax into the blissful heat of his genitals, only stopping once you realize he's erect. 'Greedy, aren't you, dearest? Surely that's not the shallow depth of your devotion, is it?' Taking hold of your cheeks, the mouse focuses your view on the tapered mouse cock between your eyes and the trickle of precum rolling down its underside. Thrusting provocatively, he mimics penetrating your mouth, forcing your lips against fuzzy white balls. 'You're not going to leave me wanting.' He phrased it like a statement rather than a question, and you shiver as you ponder the almost-command, licking your lips and pressing a gentle kiss to those churning orbs.";
	say "     Wary of disappointing your mousy beau, you cradle his balls in your balms, massaging them as you press gentle kisses along his underside. You shake your head, breathlessly telling him you wouldn't dream of disappointing him, and roll your tongue against the tip, making out with his perfect cock. You swear you feel a spark in your genitals and press the issue, surprised as you feel a sensation akin to what you're doing. Oh, the wonders of Raymond's powers. Lost in the sensation of burying yourself in an imaginary mouth, you take Raymond to the root, moans vibrating through his shaft. It feels so erotic- almost as if you're sucking your cock rather than his[if Player is not male], even though you don't have one. [else]. [end if]Lost in the intense sensations, you find yourself unable to do anything but helplessly bob, your technique growing sloppier as the mousy shaft paints your tongue in desire. 'That's it. Such a sweet, perfect pair of lips.' Raymond says with a groan, humping into your mouth and gripping either side of your face. His tongue hangs out in a slight pant, revealing white buck teeth where his lips hang open, and when he looks down at you, you can't help but feel a sense of pride. You're making him feel so good that he can't keep his composure!";
	WaitLineBreak;
	say "      Doubling your efforts, you spread your legs [if Player is barecrotch and Player is female]letting your pussy drip to the floor below. [else if Player is barecrotch and Player is male]feeling your cock throb its desire, growing closer by the second. [else if Player is not barecrotch]Feeling your still imprisoned genitals throb, messing the crotch of your pants with slippery liquid and threatening to leave a wet spot. [end if]You barely resist the urge to cum, but it seems you have no choice. Raymond's past the point of no return, and as he fucks your face with wild abandon, you feel orgasm settle over your mind, accompanied by the undeniable sensation of the back of your throat hosed with mouse cream. You join him in his finish, gulping gratefully and making a mess of yourself until he frees you from his grip, letting you take deep breaths tainted with mouse musk and clean sweat. 'You're quite talented.' Raymond shudders, rubbing his tip over your lips and letting you feel the oversensitive sensations it drags from his still dribbling cock. 'Please, help yourself whenever you like.' You patiently kiss away the mess of drool and cum you've left on your mouse's crotch, swallowing every drop and teasing the odd squeak from him as your tongue hits the right spot. You almost try for a second round, but it's too strong for you, and you pull back, disappointed by the short circuit your brain almost experiences. Oh well. You can do it again soon.";
	NPCSexAftermath Player receives "OralCock" from Raymond;

to say RaymondAssFuck:
	say "     Eager to present yourself to the mouse, you stammer your words as you set aside your gear, leaving your body naked in front of his discerning gaze. You know what you want- to give Raymond's ass the love it deserves. Feeling your face flush, you ask him what he thinks about allowing your indulgence. You're not sure what he'll make of the idea, but it can't hurt to try. 'You're so cute when you're eager.' Raymond says with a slight smirk to his mental tone, stepping closer and taking your cock in one hand. [if scalevalue of Player > 2]At his height, he perfectly aligns with it, his nose nearly touching the tip. [else]At your height, his nose nearly touches yours, and you can almost taste his lips against yours.[end if] Gods, he smells so good. 'I will allow it on one condition.' Raymond says, leading you by your dick until you reach a nearby booth, away from prying eyes but still exposed enough that you can see his brothers' eyes on your nudity.";
	say "     'You are mine, and I won't have you forget that.' He says as he pushes you backward, hopping up to straddle your lap and slotting your cock between impossibly plush cheeks. 'I can't have my dear, sweet lover thinking any less of me. I must maintain control.' Before you can ask what he means, the mouse's influence seizes your mind, and you feel a gush of precum painting his soft, pink hole, setting your hips quivering. You can feel the sensation pressed against your ass, and as he sits down, it feels like you're spreading yourself open, combining the pleasure of being fucked with the silky glide of your cock into a hole too tight and warm for this world.";
	if cock length of Player > 6:
		LineBreak;
		say "     Raymond takes every inch of your cock without difficulty, his stomach bloating into the shape of it even as his inner walls milk your shaft for every drop of arousal they can. All the while, intense eye contact never breaks, and by the time you feel your balls against plush grey fur, you feel like you'll go insane. Your ass is untouched in reality but feels full to bursting, and your prostate sings with every twitch of your buried cock, adding to the mess. The mismatched size of your cock seems like nothing more than an opportunity to enhance your pleasure, and Raymond wastes no time in slapping his soft cheeks against your churning balls, fucking himself on your dick and letting his slap against your stomach, marking you with the evidence of his desire. He's not gentle, but somehow you prefer it that way, lounging in the dual sensation and letting him do as he pleases. It's so good that you worry you'll become addicted!";
		say "     Growing impatient, you tentatively wrap your arms around your mousy rider, dragging him up and down your shaft. When he doesn't stop you, you pleasure yourself with wild abandon, pounding into him- and yourself, as the intense sensation in your ass so handily reminds you. You're unsure what feels better, his ass or yours, but you're unwilling to stop to figure it out. Finally, too soon, you feel your balls drawing up and the telltale waves of orgasm settling over you. Your eyes cross from the mixture of Raymond's hole and his unique power, and before long, you feel yourself bucking uncontrollably, painting his inside and gripping his tail to keep him buried to the hilt of your shaft.";
	else: [smaller dick scene variant]
		LineBreak;
		say "     Raymond's ass seems tailor-made for your cock, nuzzling deeper and letting you experience the slow glide of a tight hole that's just the right size. To your surprise, each inch that slips into him mirrors the sensation in your ass, and you moan aloud, overwhelmed by the doubled pleasure. 'So sweet. So well-matched- it might be fate.' With an intense gaze bordering on obsession, Raymond leads the way, milking your cock with wild abandon and mashing your balls against his cushiony rump. Every thrust flops his cock against your stomach, messing it with his desire, and you can feel every thrust perfectly angled against your prostate and designed to milk every drop you'll give your mousy man.";
		say "     Words fail you, and you're trapped in an endless cycle of pushing your hips up, then attempting to shove back on a cock that isn't there, growing frustrated as you can't quite finish. Raymond's gaze seems to give you permission as your hands rise to his waist, and you pound upward, desperate to sate your lust and bounce yourself even deeper into bliss. Finally, with a triumphant squeak, Raymond shoves downward, hilting your shaft, and your mind melts at the sensation of an anal orgasm. Untouched, his cock fountains between you, joined by the sweet strings that paint his colon as you cum in unison.";
	WaitLineBreak;
	say "      Overwhelmed by dual orgasms surging through your mind at once, you cling to Raymond, still buried in his softly clamping ass and emptying reserves of cum you didn't know you had. You press your lips against the rodent's in a deep kiss, desperate to melt off some of the intense desire running through you and only resisting the urge to fuck another load of creamy seed into him by the sensitivity of your cock. Moments later, unaided by the intensity of Raymond's sex appeal, you flop your softened cock free of that perfect ass, holding him close with a handful of grey ass cheeks. It's almost too much to bear when you finally have to gather your gear and leave, but Raymond's soothing thoughts let you sand up, aided by one of his pink paws. While he's the one that was fucked, you feel like you were the one used until you broke. Somehow, the thought isn't all that bad.";
	NPCSexAftermath Raymond receives "AssFuck" from Player;

to say RaymondOrgy:
	say "     Trying in vain to hide your excitement, you once again broach the subject of Raymond's brothers. His suggestion from earlier was interesting, and you wonder if he might facilitate you meeting the others. And perhaps something more. In unison, the other mice turn their heads toward you, scurrying to attention around Raymond. They seem much shyer than he is, but their bare crotches betray their excitement. There's not a single soft cock among them, though there's a significant variance in size. One of them would be above average by human standards!";
	say "     'They're as interested as you are, dearest. Normally, I'd be jealous, but I don't mind. After all, I've shared everything with them. Why not our love?' Trailing his paw down one of his compatriot's sides, he strokes their cock, angling his hips to give you a show of kissing their tips together. Swallowing your excitement, you hurriedly set aside your gear, baring yourself to the horny collective and searching for a surface to facilitate what's about to happen. With a start, you notice the mice circling you, and your cheeks flush as you realize you'll be on the floor. How slutty. Yet, somehow, that adds to the thrill. At Raymond's urging, the most hung of his brothers closes the distance between you, taking his position at your rear as you lie on your back with your legs spread and your knees pulled up to show off your [if Player is purefemale]glistening cunt[else if Player is herm]glistening cunt and hard, overeager cock[else if Player is puremale]hard, overeager cock [else]sensitive null-bulge[end if]. He's clumsy, but before long, he stuffs himself past your defenses, claiming your ass and slipping into the hilt.";
	WaitLineBreak;
	say "     You whimper, but your open mouth provides the perfect target for the next mouse, a soft, boyish one with eager thrusts that tap against the back of your throat without a care for your gag reflex, which seems suppressed. The others follow suit, and you find yourself mashed between rutting bodies. One grinds their dick against your chest, while two more claim your hands, thrusting against increasingly slippery fingers and holding your hips open for the pounding mouse between your legs.  Your desperate bits are hardly forgotten. [if Player is male]The pounding cock massaging your prostate forces plenty of lube for the smallest of the mice to sit on your needy dick and capture it in tight, silky depths.[end if] [if Player is female]Your sweet pussy welcomes a hard dicking from another, singing in bliss as he alternates with the man in your ass, basting your womb in liquid desire. [end if]It's already overwhelming, but a familiar voice brushes your mind like hot velvet, tinged with unadulterated lust.";
	say "     'My sweet. You don't understand how crazy you make us. Allow me to show you.' Raymond's voice gives way instantly to something so powerful you moan around the cock pistoning your throat. Every sensation wrung from your body by the five men rushes you at once, alongside their voices, and you shudder as you realize you can feel every cock as though it were your own. 'So tight. Need more.' 'Beautiful fingers. Harder.' 'Clench for me, baby.' [if Player is male]'Cum inside me!' [end if]All at once, they beg for your attention, adjusting your efforts through dirty talk laden instructions and bringing your shared pleasure to greater heights. It's too much. Before long, you feel a white-hot fuzziness spreading across your mind. Lusty brain fog that only lets you pleasure your audience.";
	WaitLineBreak;
	say "     The mouse in your ass is the first to cum, (wringing a sympathetic load from your cock into the rough rider mashing his ass against your balls(and)setting your pussy to gushing around the pistoning male inside it, goading him to baste your womb in a thick load.) The mouse grinding himself on your chest is next, painting a mosaic across your nipples before the two in your hands join him, painting the mouse on your face's upturned ass and adding to the mess. The mess on his cheeks brings the final domino toppling, and you gulp down a heavy load, so cum-drunk that you feel it drooling from your nose. You whimper in confusion as the mice pull away from your grip, your pleasure-overloaded mind begging for more but instantly regretting your needy thoughts as your ass spreads again. They're far from done with you! As slick cock after slick cock penetrates every hole you offer, you grow further away from your physical shell, drowning in need and experiencing endless orgasms with the men ravaging your body. Overwhelmed and barely able to stay conscious, you let yourself drift, blacking out despite the bodies still eagerly using yours.";
	WaitLineBreak;
	say "     'Apologies, dearest. It seems that our efforts erased some of that fierce independence I love so much about you.' Raymond takes a shaky breath, and you realize he's on the edge. Your mental bond tells you he's been staring into the abyss for a while, and his cock will explode any second. Has he been waiting until you were awake to taste it? The thought flushes your face, and you suckle appreciatively, eager to receive everything he wants to give you. 'Yess.' Raymond's voice takes on a hiss, and he explodes against your throat, the excess sloppily bubbling from your lips to join the cum dripping from your nose and coating your chin. You swallow what you can, but you're so exhausted that all you can do is hold on, massaging his cock with your tongue.";
	say "     You recover in silence, aided by Raymond's gentle paws cleaning your body with a towel produced from who-knows-where. He's warmer than usual, kissing your cheeks and smiling with an intensity that matches the sun. You could get used to this, but all too soon, you leave, gathering your gear and kissing your mouse's eager lips. Once outside, you realize what Raymond meant by lowering your independence. The sudden influx of mouse cum has made you look more like Raymond and his brothers! With a start, you realize you could become one of them with enough sessions. Maybe you should keep it up.";
	infect "Mentally Gifted Mouse";
	TraitGain "Mental Link" for Raymond;
	NPCSexAftermath Player receives "OralCock" from Raymond;
	CreatureSexAftermath "Player" receives "AssFuck" from "Mentally Gifted Mouse";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Mentally Gifted Mouse";

Raymond ends here.