Raymond by Voidsnaps begins here.

[Resolutions:
Yours Forever:
1: Continue event.
100: Not interested.

Traits:
"Orgy Talk"- Unlocks 6-some scene. (all males)
"Mental Link" - Masturbation scenes randomly proc.

Variables:
Lust:
0: never had sex.
1: Had sex once. Early scenes.
2: Unlocks mindmeld sex for submissive players.
3-5: Growing your bond through repeated sex.
6: Scene for those with submissive and the full body infection. (mentally gifted mouse)
7: You're Raymond's mate. Fullmouse scene changes accordingly.

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
	now skin change entry is "soft grey fur covers pink skin";
	now ass change entry is "two sweet cheeks form, bubbly and perfectly sized for a pair of hands";
	now cock change entry is "becomes thinner and tapered, sticking out of a soft sheath above comparatively large balls below your shaft";
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
	now Cock Length entry is 6;
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
	now MilkItem entry is "mentally gifted mouse milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2;
	now body descriptor entry is "[one of]lithe[or]skinny[at random]";
	now type entry is "rodent";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
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
	if lastfuck of Raymond - turns < 4:
		say "     Raymond stops you just as you start to think of sex, before you can express your desire out loud. 'As much as I'd truly love to please you, I'm afraid you'll have to wait a bit.' He says, his voice ringing in your head somewhat regretfully.";
	else:
		say "     [bold type]As Raymond looks up at you with adoration shining in his eyes, you can't help but feel like taking advantage of his desire for closeness. What should you do with him?[roman type][line break]";
		LineBreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Ask Raymond if you can fuck him";
			now sortorder entry is 1;
			now description entry is "That skinny mouse butt looks fun to play with. Ask if you can";
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
		if lust of Raymond > 1 and Player is submissive and "Mental Link" is listed in traits of Raymond:
			choose a blank row in table of fucking options;
			now title entry is "Ask Raymond if you can explore your newfound bond";
			now sortorder entry is 5;
			now description entry is "Now that you're more firmly established in the collective, why not show Raymond what you can do";
		[]
		if BodyName of Player is "Mentally Gifted Mouse" and Player is pure and Player is submissive and lust of Raymond >= 6:
			choose a blank row in table of fucking options;
			now title entry is "Show off your new body";
			now sortorder entry is 6;
			now description entry is "You look a lot like Raymond now. See if he's still attracted to you now that you're a bit less 'individual'";
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
					else if (nam is "Ask Raymond if you can explore your newfound bond"):
						say "[RaymondMindmeldSex]";
					else if (nam is "Show off your new body"):
						say "[RaymondFullMouse]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the mouse, deciding on a different course of action.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		clear the screen and hyperlink list;


to say Raymond_TalkMenu:
	say "     [bold type]As Raymond tilts his head and looks up at you, you ponder what you want to talk about.[roman type][line break]";
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
	if "Cat Quest" is listed in traits of Raymond:
		choose a blank row in table of fucking options;
		now title entry is "Ask what Raymond's up to";
		now sortorder entry is 2;
		now description entry is "Raymond seems preoccupied. What do his brothers need from him";
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
				else if (nam is "Ask what Raymond's up to"):
					say "[RaymondCatQuestStart]";
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
	say "     You've noticed that Raymond refers to himself in the singular sense, but he still clings to a collective. Curious, you ask him why that is- Surely in situations like this, the nanites would override his personality and leave him like the rest. Raymond watches you with a mysterious look on his face, then sighs, his voice echoing in your mind. 'I was like them, once. A face among the crowd, born from one of the drones. I'm not certain when things changed, but I couldn't engage with the rest any longer, and I lost the features that made me like them. Pantomiming breasts in front of his flat, bare chest, Raymond chuckles under his breath. 'I couldn't very well stay there. Turns out I'm not the only one of my kind. These poor souls were cut off from the collective as well, wandering with myriad frequencies searching for someone to unscramble them. I suppose that was me. My brothers are not as charismatic as I, but they are not the bland collective my mothers belonged to. It could be a blessing, or a curse, but it is our lot in life.'";

to say RaymondCatQuestStart:
	say "     Approaching the mouse as he sits at one of the ruined restaurant's tables surrounded by his 'brothers,' you tap Raymond's shoulder, apologizing when he jumps and apologizing for startling him. Even without your direct portal to his mind, you can tell something's wrong with him. You wonder if you can help. 'Ah. It's complicated.' Raymond says, dragging you into his lap and resting his chin on your shoulder. 'I suppose I shouldn't keep things from my mate. Promise you won't do anything drastic. I've seen your approach to other issues.' Chuckling wearily, Raymond sweeps the hand not currently resting on your stomach across the table, indicating his brethren. 'An altercation has been brought to my attention. One of us disappeared while exploring a nearby alley. We can't reach him. For those used to constant connection, you can imagine the distress that causes. We're trying to decide what to do.'";
	say "     Attempting to comfort the melancholy mouse, you offer your services. You explore the city more than enough on your own. Maybe you can find his missing brother! After all, your mate's problems are your own. Sighing, Raymond shakes his head. 'I couldn't stop you if I wanted to, could I? Be careful; at least return here if it's too dangerous.' Squeezing you tight as if worried you'll disappear too, Raymond holds you close, only letting you go once you squirm out of his arms.";
	say "<This quest does not continue yet. I thought I'd put this here so that people don't get confused! Stay tuned!>";

Section 4 - Raymond Sex Scenes

to say RaymondPussyFuck: [Getting a wombful of Raymond's seed.]
	say "     Shyly, you approach the nude mouse, stumbling over your words as you try to articulate what you want him to do to you. It's strange, but you feel like a blushing bride before him. Maybe it has something to do with his ability to rifle through your thoughts. Or perhaps he's inserting this feeling himself. 'I know what you need, dearest.' Raymond says before you can get the words out, amusement written across his face as he bustles you to a nearby booth away from his brothers but still exposed enough that the exhibitionism brings a blush to your cheeks. With surprising strength for his short stature, he pushes you backward[if Player is barecrotch], spreading your knees and trailing soft pink fingers over your sex. [else]making quick work of your pants to expose you to his wandering gaze. [end if]'You're in heat, aren't you? So wet and needy that you can't resist me?'";
	say "     You open your mouth to protest, sure that you're not feeling anything of the sort, but a gnawing feeling in your stomach starts as his words echo through your head. Instead of whatever you were planning to say, a whimper leaves your lips, and you clench your sex, suddenly aware of a flood of wetness drooling down your sopping-wet pussy and over your exposed ass. When did you get so aroused? 'There it is. So delightfully honest.' Raymond coos, his stoic expression taking on a more lusty tint as he lines himself up, letting his awakening dick grow against your aching clitoris. The slightest touch burns through you, and you barely suppress the desire to yank him toward you, to get that mouse cock to fill your needy cunt. 'Relax, dearest.' Raymond guides his dickhead to kiss against your clitoris, perching on the edge of the seat with the aid of dextrous rodent paws. [if scalevalue of Player > 2]Despite your size difference, you can't help but feel a delicious thrill at being dominated. A tapered cock that shouldn't satisfy you feels like the best you've ever seen, and those heavy rodent balls brushing against your upturned ass make you feel like you're going to gush.[end if][line break]";
	WaitLineBreak;
	say "     Raymond saws his cock between your nether lips with slow, gentle patience, bringing his cock up to gently tap against your throbbing clit and showing off the glistening layer of wetness you've coated it in. 'You're so ready for me already. I bet this is the best you've ever had.' Prodding at your entrance, he punctuates his unspoken dirty talk with mock thrusts that drive you wild. Gods, you never knew a dick could feel this good. Every inch needs to be inside you immediately, and with the heat coming over you, you can't think about anything else. Digging your fingers into the faux leather booth, you buck your hips, hoping to capture that gloriously hard cock. 'Needy thing.' Raymond says, bringing a string of pussy juice to his lips and licking it clean with an air of dominance that makes your stomach clench- your womb is begging. 'It's alright. You'll get everything you want.' He says, his mental voice taking on a lustier, huskier tone as he surges forward, filling you [if scalevalue  of Player <= 2]to the brim with melting pleasure [else]with an average amount of dick that should be nothing special but radiates sensations you've never experienced before[end if].";
	say "     With practiced ease, Raymond explores your cunt with slow, measured thrusts, creating a wet symphony that serves as the soundtrack for your ecstasy. Every thrust is like a miniature orgasm, twisting your guts into knots, and you find yourself bucking into each one, forcing six inches of delving mouse cock to the base. You're not sure how long your pussy clenches and gushes for him, but when he pulls out, it almost hurts. Whimpering, you look down, fixing your gaze on that glistening pink cock. You need it back inside, and you don't care how you get it! With a desperate mewl, you grab his hips, slamming him home again and wrapping your thighs around his slim waist, unwilling and unable to let him stop.";
	WaitLineBreak;
	say "     'Beautiful.' Raymond says, his inner voice breathless as his pistoning body. It seems there was a reason he pulled out, to savor your union and prevent himself from finishing too early, but he's as past caring as you are, giving you the pounding you needed. You nearly white-out around the point when you feel the first slosh of mouse cum against your womb, and with a start, you realize that Raymond's mind is broadcasting his orgasm into your head. You can feel how tightly you're clenching around him, how much his cock is throbbing, and even the relief of pump after pump of virile rodent seed mixed with the gushing of your fem-gasm. It's too much, and you collapse backward, your eyes rolling back and your body twitching in time with your shared orgasm.";
	say "     When you come to, Raymond is tending to your face, wiping away sweat and caressing your cheek. He smiles down at you like an angel, and his voice echoes in your brain, warm and comforting. 'That's it. Come back to me, dearest.' Pressing a kiss to your forehead, he cradles your face against his chest, paying no mind to his still-dripping cock against your side. 'I'm afraid you're too beautiful. I couldn't restrain myself. You understand, don't you?' Weakly you nod, but you're already making plans to do this again, hardly resisting the urge to play with your dripping, well-basted pussy. Idly, you wonder if you have to leave. Sadly, your afterglow wears off eventually, and you have to walk away from the mouse's makeshift fuck-nest. You'll be back, and soon.";
	NPCSexAftermath Player receives "PussyFuck" from Raymond;
	TraitGain "Mental Link" for Raymond;
	infect "Mentally Gifted Mouse";
	if lust of Raymond < 2:
		increase lust of Raymond by 1;

to say RaymondSuckOff: [Sucking his mousy cock.]
	say "     You can't take your eyes off Raymond's cock. It's so deliciously pink, and the way it swings when he moves makes you wish you were there to nuzzle underneath it and feel its weight. Before you realize what you're doing, you do just that, kneeling to press your nose between that floppy cock and heavy rodent balls. Taking a deep breath, you relax into the blissful heat of his genitals, only stopping once you realize he's erect. 'Greedy, aren't you, dearest? Surely that's not the shallow depth of your devotion, is it?' Taking hold of your cheeks, the mouse focuses your view on the tapered mouse cock between your eyes and the trickle of precum rolling down its underside. Thrusting provocatively, he mimics penetrating your mouth, forcing your lips against fuzzy white balls. 'You're not going to leave me wanting.' He phrased it like a statement rather than a question, and you shiver as you ponder the almost-command, licking your lips and pressing a gentle kiss to those churning orbs.";
	say "     Wary of disappointing your mousy beau, you cradle his balls in your balms, massaging them as you press gentle kisses along his underside. You shake your head, breathlessly telling him you wouldn't dream of disappointing him, and roll your tongue against the tip, making out with his perfect cock. You swear you feel a spark in your genitals and press the issue, surprised as you feel a sensation akin to what you're doing. Oh, the wonders of Raymond's powers. Lost in the sensation of burying yourself in an imaginary mouth, you take Raymond to the root, moans vibrating through his shaft. It feels so erotic- almost as if you're sucking your cock rather than his[if Player is not male], even though you don't have one. [else]. [end if]Lost in the intense sensations, you find yourself unable to do anything but helplessly bob, your technique growing sloppier as the mousy shaft paints your tongue in desire. 'That's it. Such a sweet, perfect pair of lips.' Raymond says with a groan, humping into your mouth and gripping either side of your face. His tongue hangs out in a slight pant, revealing white buck teeth where his lips hang open, and when he looks down at you, you can't help but feel a sense of pride. You're making him feel so good that he can't keep his composure!";
	WaitLineBreak;
	say "      Doubling your efforts, you spread your legs [if Player is barecrotch and Player is female]letting your pussy drip to the floor below. [else if Player is barecrotch and Player is male]feeling your cock throb its desire, growing closer by the second. [else if Player is not barecrotch]Feeling your still imprisoned genitals throb, messing the crotch of your pants with slippery liquid and threatening to leave a wet spot. [end if]You barely resist the urge to cum, but it seems you have no choice. Raymond's past the point of no return, and as he fucks your face with wild abandon, you feel orgasm settle over your mind, accompanied by the undeniable sensation of the back of your throat hosed with mouse cream. You join him in his finish, gulping gratefully and making a mess of yourself until he frees you from his grip, letting you take deep breaths tainted with mouse musk and clean sweat. 'You're quite talented.' Raymond shudders, rubbing his tip over your lips and letting you feel the oversensitive sensations it drags from his still dribbling cock. 'Please, help yourself whenever you like.' You patiently kiss away the mess of drool and cum you've left on your mouse's crotch, swallowing every drop and teasing the odd squeak from him as your tongue hits the right spot. You almost try for a second round, but it's too strong for you, and you pull back, disappointed by the short circuit your brain almost experiences. Oh well. You can do it again soon.";
	NPCSexAftermath Player receives "OralCock" from Raymond;
	infect "Mentally Gifted Mouse";
	TraitGain "Mental Link" for Raymond;
	if lust of Raymond < 2:
		increase lust of Raymond by 1;

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
	infect "Mentally Gifted Mouse";
	TraitGain "Mental Link" for Raymond;
	if lust of Raymond < 2:
		increase lust of Raymond by 1;

to say RaymondOrgy:
	say "     Trying in vain to hide your excitement, you once again broach the subject of Raymond's brothers. His suggestion from earlier was interesting, and you wonder if he might facilitate you meeting the others. And perhaps something more. In unison, the other mice turn their heads toward you, scurrying to attention around Raymond. They seem much shyer than he is, but their bare crotches betray their excitement. There's not a single soft cock among them, though there's a significant variance in size. One of them would be above average by human standards!";
	say "     'They're as interested as you are, dearest. Normally, I'd be jealous, but I don't mind. After all, I've shared everything with them. Why not our love?' Trailing his paw down one of his compatriot's sides, he strokes their cock, angling his hips to give you a show of kissing their tips together. Swallowing your excitement, you hurriedly set aside your gear, baring yourself to the horny collective and searching for a surface to facilitate what's about to happen. With a start, you notice the mice circling you, and your cheeks flush as you realize you'll be on the floor. How slutty. Yet, somehow, that adds to the thrill. At Raymond's urging, the most hung of his brothers closes the distance between you, taking his position at your rear as you lie on your back with your legs spread and your knees pulled up to show off your [if Player is purefemale]glistening cunt[else if Player is herm]glistening cunt and hard, overeager cock[else if Player is puremale]hard, overeager cock [else]sensitive null-bulge[end if]. He's clumsy, but before long, he stuffs himself past your defenses, claiming your ass and slipping into the hilt.";
	WaitLineBreak;
	say "     You whimper, but your open mouth provides the perfect target for the next mouse, a soft, boyish one with eager thrusts that tap against the back of your throat without a care for your gag reflex, which seems suppressed. The others follow suit, and you find yourself mashed between rutting bodies. One grinds their dick against your chest, while two more claim your hands, thrusting against increasingly slippery fingers and holding your hips open for the pounding mouse between your legs.  Your desperate bits are hardly forgotten. [if Player is male]The pounding cock massaging your prostate forces plenty of lube for the smallest of the mice to sit on your needy dick and capture it in tight, silky depths.[end if] [if Player is female]Your sweet pussy welcomes a hard dicking from another, singing in bliss as he alternates with the man in your ass, basting your womb in liquid desire. [end if]It's already overwhelming, but a familiar voice brushes your mind like hot velvet, tinged with unadulterated lust.";
	say "     'My sweet. You don't understand how crazy you make us. Allow me to show you.' Raymond's voice gives way instantly to something so powerful you moan around the cock pistoning your throat. Every sensation wrung from your body by the five men rushes you at once, alongside their voices, and you shudder as you realize you can feel every cock as though it were your own. 'So tight. Need more.' 'Beautiful fingers. Harder.' 'Clench for me, baby.' [if Player is male]'Cum inside me!' [end if]All at once, they beg for your attention, adjusting your efforts through dirty talk laden instructions and bringing your shared pleasure to greater heights. It's too much. Before long, you feel a white-hot fuzziness spreading across your mind. Lusty brain fog that only lets you pleasure your audience.";
	WaitLineBreak;
	say "     The mouse in your ass is the first to cum [if player is herm]sending your dual sexes to new heights as you experience both masculine and feminine orgasms at the same time, accompanied by the mice tending to them. [else if player is puremale]wringing a sympathetic load from your cock into the rough rider mashing his ass against your crotch.[else if player is purefemale]setting your pussy to gushing around the pistoning male inside it, goading him to baste your womb in a thick load. [end if]The mouse grinding himself on your chest is next, painting a mosaic across your nipples before the two in your hands join him, painting the mouse on your face's upturned ass and adding to the mess. The mess on his cheeks brings the final domino toppling, and you gulp down a heavy load, so cum-drunk that you feel it drooling from your nose. You whimper in confusion as the mice pull away from your grip, your pleasure-overloaded mind begging for more but instantly regretting your needy thoughts as your ass spreads again. They're far from done with you! As slick cock after slick cock penetrates every hole you offer, you grow further away from your physical shell, drowning in need and experiencing endless orgasms with the men ravaging your body. Overwhelmed and barely able to stay conscious, you let yourself drift, blacking out despite the bodies still eagerly using yours.";
	WaitLineBreak;
	say "     'Apologies, dearest. It seems that our efforts erased some of that fierce independence I love so much about you.' Raymond takes a shaky breath, and you realize he's on the edge. Your mental bond tells you he's been staring into the abyss for a while, and his cock will explode any second. Has he been waiting until you were awake to taste it? The thought flushes your face, and you suckle appreciatively, eager to receive everything he wants to give you. 'Yess.' Raymond's voice takes on a hiss, and he explodes against your throat, the excess sloppily bubbling from your lips to join the cum dripping from your nose and coating your chin. You swallow what you can, but you're so exhausted that all you can do is hold on, massaging his cock with your tongue.";
	say "     You recover in silence, aided by Raymond's gentle paws cleaning your body with a towel produced from who-knows-where. He's warmer than usual, kissing your cheeks and smiling with an intensity that matches the sun. You could get used to this, but all too soon, you leave, gathering your gear and kissing your mouse's eager lips. Once outside, you realize what Raymond meant by lowering your independence. The sudden influx of mouse cum has made you look more like Raymond and his brothers! With a start, you realize you could become one of them with enough sessions. Maybe you should keep it up.";
	infect "Mentally Gifted Mouse";
	TraitGain "Mental Link" for Raymond;
	NPCSexAftermath Player receives "OralCock" from Raymond;
	CreatureSexAftermath "Player" receives "AssFuck" from "Mentally Gifted Mouse";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Mentally Gifted Mouse";
	if lust of Raymond < 2:
		increase lust of Raymond by 1;

to say RaymondMindmeldSex:
	if lust of Raymond is 2:
		say "     Approaching your mousey beau, you use your clumsy mental powers to reach out and touch his, shivering at that warm, all-enfolding, illusory hug that announces you have his attention. At first, you try to speak using your connection, but after a few minutes of the mental equivalent of gesturing wildly and grunting, you give up, sheepishly resorting to regular speech. Feeling your cheeks flush, you ask the mouse if he's willing to share some of his time, letting the way you fidget and touch yourself explain all he needs to know about what you want. 'Haven't we passed that point, love? You're as much a part of me as my own body. You don't need to be so shy.' Raymond takes your hand and kisses the back like a true gentleman- behavior nearly instantly invalidated by the flood of kinky images that assault your brain, spreading warmth through your stomach. 'I'd be honored to take care of your needs. All you have to do is [italic type]ask.'[roman type][line break]";
		say "     Your thoughts waver when confronted with Raymond's suave, doting tone. Despite his height, he easily dominates the conversation, and every word resonating through your skull only excites you more, amplified by the constant, hand-holding-esque grip of his mind on yours. You stammer [if Player is not barecrotch]feeling your pants tighten [else]your genitals throb [end if]and your legs wobble as you try to find the words to ask for what you want. Thankfully, the sight of Raymond's growing erection gives you an easy out, and you sheepishly brush your thoughts against his, imagining his mousehood inside of you in graphic detail. 'Quite desperate today, aren't you?' Raymond teases, encouraging you toward an eclectic nest in his corner of the abandoned restaurant, his hand on your ass as you pass curious rodent glances and appreciative squeaks. Privacy's in short supply, but you doubt Raymond's mind can fully disconnect from the rest. You may as well give them front-row seats! Raymond's mouth meets yours the second you sink to your knees, and you tumble backward with him on top of you, arching into his roaming paws. More than just aimless groping, all of his touch is aimed at getting you nude and ready for him, though you don't mind, whorishly spreading your legs for digging fingers and groaning as they pierce you, sending a rush from your violated hole.";
		if Player is female:
			WaitLineBreak;
			say "      'So beautiful.' Raymond's voice comes in crystal clear even as he buries his snout in your mound, slurping away at your defenseless cunt. Up and down, finding spots before you can beg for him to move his attention, he licks you to a fever pitch, drawing your hands into the fluffy white fur on the back of his neck. You're so wet that you worry he might drown, but you're too worked up to let him pull away, clamping your thighs on either side of his head just as his muzzle slips inside. Like a bucking bronco, you let yourself go, flooding the mouse's throat with your desire and whimpering as his tongue ravages your inner walls, your clit tickled by his whiskers, and your eyes fixated on those shimmering rubies staring up at you with pure worship inches above your spasming pussy."; 
			say "     Out of breath but ever composed, the stoic mouse kisses your raw, oversensitive clit as he pulls away from your sopping wet snatch, taking his cock in hand and flopping it between your lips. Without hesitation, he surges forward, his average cock delving deep into your needy cunt and claiming it as his own. 'Shh. Shh.' He says as you whimper and squirm, his hips meeting your ass cheeks and his heavy rodent balls swaying against your unattended butthole. 'It's alright, my love. I'm just going to give you something to remember me by.' Whether he's referencing the load he's going to pump into you or another orgasm, you can't tell, but the promise sends a naughty thrill through your body.";
			WaitLineBreak;
			say "     Throwing your head back, you clutch at the loose bedding beneath you, oddly comforted by the silence surrounding you. It's much easier to focus on Raymond's projected voice growing more urgent in your ears with nothing but the wet slaps and juicy noises of your sex. It starts comforting, but the closer he gets to orgasm, the more excited he seems to get, and the more he references your cunt, praising your tightness, how wet you are, and how greedy it is for every pump of rodent pre. As things get steamy, you fumble with your connection to your mousey beau, attempting to emulate his easy telepathy and succeeding with something like a mental zap. Unsure how long the link will last, you beg Raymond to breed you, sending him everything your imagination can muster- and the crystalline sensations radiating from your stuffed, well-stirred cunt- even as your legs clamp behind his shapely buttcheeks and drag him in.";
			say "     Letting out a guttural moan that breaks the silence, Raymond collapses forward against your chest, his cock sheathing itself so deep that you swear it's kissing your cervix. The underside of that average cock bloats as he thrusts away, painting your innermost depths with desperate shoves sure to bruise your thighs, and he clamps his clawed fingers on your thighs, his mind assaulting yours with the intensity of his orgasm to heap on yours. 'Perhaps... It's not such a bad thing that your individuality is fading.' Raymond's voice echoes in your mind as he mashes his lips against yours, his cock slurping free from your depths with a parting spurt to glaze your clit. 'We can connect on such an intense level. As long as you're still you...'";
			WaitLineBreak;
			say "     Sadly, you can't rest in Raymond's arms for long, despite your cunt's throbbing protest when he stands up and breaks the contact between his slippery dick and your overflowing sex. Your busy schedule is impossible to hide from someone that can read your mind, and despite your attempts to entice him into you once again, he shoos you off, slapping your ass and watching you collect your things, his tapered mousecock dripping to the floor.";
			NPCSexAftermath Player receives "PussyFuck" from Raymond;
		else if Player is male:
			WaitLineBreak;
			say "     'You're certainly excited.' With two fingers slipping past your entrance and delving deep to find your prostate, the mouse smirks up at you, his hot breath teasing your hard cock. Rolling his tongue over your tip, he flutters his fingers, his eyes closing as an involuntary noise breaks past your lips, as though he's listening intently. 'Music to my ears.' Trapped between the mouse's lapping tongue and insistent fingers, you groan and hump upward, fixated on the silky strings of mixed pre and saliva stretching from your cock to his lips. It's not fair. He knows every spot that works you up, and every sensation is broadcast through your connection, letting him finetune his efforts until you're putty in his hands.";
			say "     'Don't worry, love. That's just the first taste. You know I won't leave you unsatisfied.' Raymond soothes you as his fingers leave your softened hole, cutting your protests off. The tapered tip of his cock grazes your rim, then surges forward, and you're overwhelmed by the same sensation you're sure he's feeling.Holding your knees to your chest and throwing back your head, you let the diminutive dom have his way with you, groaning aloud as the heavy thwap of his balls against your cheeks fills the love-nest Raymond made for you. The sight of your cock swaying and drooling against the silky, smooth white fur of Raymond's stomach only makes you more erect, and you feel so overwhelmed that you just might cum before you've even started.";
			WaitLineBreak;
			say "     'Flattery is... appreciated.' Huffing and digging his claws into the bedding below, Raymond addresses your thoughts as if you're having a conversation, delving as deep as his 6-inch pole can and caressing your prostate with every stroke. The more you enjoy yourself, the more worked up he seems to get, and the more frazzled his usually calm expression becomes. You don't last long, mussing Raymond's sweat-glistening fur with long streaks of seed and clamping down as you grip the bedding beneath you, overtaken by the perfect storm of sensations broadcast through your connection. It's the most intense orgasm you think you've ever had, and judging by the mouse's renewed efforts to ream you out, he's feeling the effects of it. A symphony of wet, lewd sounds fills the air, growing more desperate and joining the normally stoic mouse's desperate grunts until you feel your insides painted by long, juicy spurts of mouse-batter.";
			say "     'Perhaps... It's not such a bad thing that your individuality is fading.' Raymond's voice echoes in your mind as he mashes his lips against yours, his cock slurping free from your depths with a parting spurt to glaze your asscheeks. 'We can connect on such an intense level. As long as you're still you...' You get the feeling that his opinion was swayed more by your ass than anything else, but you consider that a win. There's something so flattering about being such a good fuck that someone will change their mind on a dime.";
			WaitLineBreak;
			say "     Sadly, you can't rest in Raymond's arms for long, despite your cock's throbbing protest when he stands up and breaks the contact between his slippery dick and your overflowing, upturned ass. Your busy schedule is impossible to hide from someone that can read your mind, and despite your attempts to entice him into you once again, he shoos you off, slapping your messy, dripping ass and watching you collect your things, his tapered mousecock dripping to the floor.";
			NPCSexAftermath Player receives "AssFuck" from Raymond;
	else if lust of Raymond > 2:
		say "     As you open your mouth to ask for Raymond's affection, he stops you, licking his lips as his voice echoes through your brain. 'None of that. I know what you want just as well as what I want. You needn't ask when your thoughts hide nothing from me.' Taken aback, you follow Raymond's lead as he shows a rougher side of himself without bothering to take you to his little love-nest. Pink paws push you back into the booth behind you, and he pounces on you like a hungry lion, mashing his lips against yours and tearing away anything that might get in the way of touching your quivering chest, including your pack.";
		if Player is female:
			WaitLineBreak;
			say "     Wasting no time positioning you, the mouse turns you onto your side, slotting his mouse shaft against your dripping pussy and sheathing himself to the hilt. Surprisingly forceful for such a slender mouse, he lifts your thigh as he pounds away, his doting stare covering every inch of your exposed body even as he breeds you raw. There's something predatory in his gaze, and you can't help but blush at the need conveyed in every gooey thrust that smacks those heavy balls against your inner thigh. 'You're too much for me to bear.' Raymond's voice echoes through your mind as his ruby eyes stare into yours, his paw dipping between your legs to rub and massage your throbbing clit even as he bastes your innards with slippery mouse pre. 'I can barely control myself around you. This constant, aching need to be one with you- To take you- Every touch is blissful agony.'";
			say "     The poetry flowing through your mind resonates through your needy cunt, and you wiggle your hips as he finds your g-spot, groaning in wanton desire. You're not sure what's come over him, but something inside of you begs for more, to submit to the barrage of sensations flowing freely through your connection. Whether it's love or just lust, you can't tell, but you're not sure you care. 'Every moment I'm not inside you is wasted. Every breath without your scent is foul. My beautiful, independent...' Trailing off into nonsense that floods your senses, more feelings than words, Raymond pounds away at you, perching on the booth and panting as he tries his level best to stuff more cock than he has past your reddened pussy lips.";
			WaitLineBreak;
			say "     The barrage is too much, and you seize up, bucking and clamping your inner muscles while your juices coat Raymond's manhood. Lolling backward, you whimper your need, realizing he's still going strong. If anything, your orgasm has spurred him to new heights, stroking your clit to a savage beat while he churns your melting insides to butter. You lose track of how often you finish in your mousy beau's arms, one leg tossed over his shoulder and your inner thighs coated in a thick sludge of mouse cum and pussy juice from shared orgasms. He doesn't stop until he's thrusting his soft cock against your entrance, still blasting one last watery load, and when he collapses between your legs, you can still feel it weakly throb an inch inside you, loathe to flop free.";
			say "     'Sorry, my love.' Raymond's mental voice radiates through your brain, splitting the afterglow for a moment before merging with it into a comforting morass. 'It seems our connection's grown a bit strong. I don't know if I can control myself around you.' Lavishing attention on your chest even as he apologizes, his mostly sheathed cock stubbornly grinding against your weary clit, he rides out the afterglow until you decide you have to leave, treating you to an overly involved tongue-bath that ekes out another shuddering orgasm from your aching cunt, then watching you from the booth, his legs spread to show off his significantly reduced balls and his exhausted wave following you out the door. You can't help but feel a little bit of pride at the sight.";
			NPCSexAftermath Player receives "PussyFuck" from Raymond;
		else if Player is male:
			WaitLineBreak;
			say "     Wasting no time positioning you, the mouse turns you onto your side, slotting his mouse shaft against your tight asshole and sheathing himself to the hilt with the help of a drooling dollop of pre. Surprisingly forceful for such a slender mouse, he lifts your thigh as he pounds away, his doting stare covering every inch of your exposed body even as he breeds you raw. There's something predatory in his gaze, and you can't help but blush at the need conveyed in every gooey thrust that smacks those heavy balls against your cheeks. 'You're too much for me to bear.' Raymond's voice echoes through your mind as his ruby eyes stare into yours, his paw dipping between your legs to stroke and jerk your dripping dick even as he bastes your innards with slippery mouse pre. 'I can barely control myself around you. This constant, aching need to be one with you- To take you- Every touch is blissful agony.'";
			say "     The poetry flowing through your mind resonates through your desperately hard cock, and you wiggle your hips as he finds your prostate, groaning in wanton desire. You're not sure what's come over him, but something inside of you begs for more, to submit to the barrage of sensations flowing freely through your connection. Whether it's love or just lust, you can't tell, but you're not sure you care. 'Every moment I'm not inside you is wasted. Every breath without your scent is foul. My beautiful, independent...' Trailing off into nonsense that floods your senses, more feelings than words, Raymond pounds away at you, perching on the booth and panting as he tries his level best to stuff more cock than he has past your loosened asshole.";
			WaitLineBreak;
			say "     The barrage is too much, and you seize up, bucking and clamping your inner muscles while your cock paints pink paws and everything else within reach. Lolling backward, you whimper your need, realizing he's still going strong. If anything, your orgasm has spurred him to new heights, stroking your cock to a savage beat while he churns your melting insides to butter. You lose track of how often you finish in your mousy beau's arms, one leg tossed over his shoulder and your inner thighs coated in a thick sludge of mixed cum from shared orgasms. He doesn't stop until he's thrusting his soft cock against your entrance, still blasting one last watery load, and when he collapses between your legs, you can still feel it weakly throb, barely inside of your gaped hole, loathe to flop free.";
			say "     'Sorry, my love.' Raymond's mental voice radiates through your brain, splitting the afterglow for a moment before merging with it into a comforting morass. 'It seems our connection's grown a bit strong. I don't know if I can control myself around you.' Lavishing attention on your chest even as he apologizes, his mostly sheathed cock stubbornly grinding against your still relaxed entrance, he rides out the afterglow until you decide you have to leave, treating you to an overly involved tongue-bath that ekes out another shuddering orgasm into his willing throat, then watching you from the booth, his legs spread to show off his significantly reduced balls and his exhausted wave following you out the door. You can't help but feel a little bit of pride at the sight.";
			NPCSexAftermath Player receives "AssFuck" from Raymond;
	if lust of Raymond < 6:
		increase lust of Raymond by 1;
	infect "Mentally Gifted Mouse";

to say RaymondFullMouse: [Must be mentally gifted mouse. MENTAL MOUSE WILL NOT WORK. I didn't want to tie this content to something with drastically different content. It also wouldn't make sense in the context of the scene.]
	if lust of Raymond is 6:
		WaitLineBreak;
		say "      Setting aside your belongings out of sight of Raymond, you inspect your body, smoothing your white fur and feeling your ears for stray tufts. You can't deny the resemblance, though you know your eyes aren't the same pretty ruby color as your paramour's. It seems silly, but you want to show off your transformation. Though he always praised your individuality, a certain level of closeness comes with wearing the same appearance as someone so infatuated with you. Taking a deep breath, you step out into the open, trying to keep your body's natural response to Raymond's presence at bay, then giving in, letting your [if Player is male]erection[else if Player is female]glistening lower lips[end if] lead the way. 'There's my beautiful-' Raymond's words stop, and his eyes widen as he sees you standing before him in all your glory. He had to know that your body was different than when he met you, but perhaps being confronted with your nudity without the veil of lust blurring his vision (yet) has opened his eyes. Speechless, telepathically or not, he reaches out as you step into range, cupping one of your silken ears and stroking it in wonder. 'It's like looking into a mirror... Why doesn't that bother me?'";
		say "     Shuffling as sensitive flesh rolls between his fingers, you ask him what he thinks about your appearance. You know he wasn't on board with your transformation at the start- that he thought you'd lose yourself- and you want to reassure him, but his expression leaves you speechless. There's a hint of lust, but for the first time since you met him, you realize that Raymond's professions of love might have been more than attempts to take your guard down. His ruby-red eyes may as well be heart-shaped. Pressing you against a nearby wall- your new height making it easy for the slender mouse to stand over you- Raymond brings his lips inches from yours, one hand claiming your ass cheek and the other caressing your cheek. 'Drop dead gorgeous.' His voice resonates through your ears, slightly hoarse. With a start, you realize he's abandoned his usual silent communication. Somehow, his words sound more sincere from his lips despite its halting, underused quality. Touching his forehead to yours, he continues. 'Every bit of you is perfect- because you're you.' Heart pounding in your throat, you swallow his words in a passionate kiss. Nothing's ever felt more [italic type]right [roman type]than this. Draping yourself over him and going limp with the sunburst of sensation overtaking your body, you melt against Raymond's increasingly passionate movements, feeling his manhood hardening against your stomach.";
		if Player is female:
			WaitLineBreak;
			say "     Standing on your tiptoes, you moan against Raymond's tongue, your legs instinctively spreading and allowing his manhood to graze your sensitive lower lips. You're so wet that it's not long before his tip penetrates you with all the ease of a warm knife through butter, and you can't help but shudder as he sheathes himself to the hilt, clamping your inner muscles to welcome his throbbing member. You're too overwhelmed to do much more than provide a welcoming place for him to thrust, but you don't mind, even when your lips break from their desperate embrace. 'Gorgeous. My perfect, beautiful-' Croaking out compliments in that husky baritone, Raymond throws your leg over his waist, his fist clamping over the base of your pink tail to give himself a better angle to pound his passion into your yielding flesh. 'My mate.' He whispers in one silky ear as his balls slap against your ass, leaving a burning reminder of his desire.";
			say "     Clinging to the thrusting mouse and resting your chin on his shoulder, you return his affection, moaning into his neck and slathering it in kisses. You're dripping wet, so much so that between affirmations of love, you can hear the gentle patter of drips to the linoleum below, and your inner walls sing with every grunting thrust, driving you closer to orgasm by the second, but you're loathe to let the moment end. Sadly, you lose the battle with the cresting wave of desire long before you tire of Raymond's passion, tensing up and wringing his pounding cock as your needy sex explodes, twisting your stomach into knots and adding to the puddle below. It's too much for you to handle alone, and you can't help but reach out to Raymond, sharing the intensity and hoping he gets some fraction of the satisfaction you're feeling.";
			WaitLineBreak;
			say "     Stiffening when your orgasm broadcasts, Raymond clamps his mouth on your shoulder, teeth digging in just enough to hold you without drawing blood. Your pleasure pushes him over the edge almost immediately, basting your melting depths with rodent cum so voluminous that you can feel some running between your cheeks and glazing your asshole even as he hoses your cervix with blast after blast. It lasts much longer than you'd expect, and by the time he's finished, your legs have turned to jelly, forcing you to rely on his grip to stop you from spilling to the floor.";
			NPCSexAftermath Player receives "PussyFuck" from Raymond;
		else if Player is male:
			WaitLineBreak;
			say "     Guiding Raymond's fingers between your cheeks, you beg for his touch, your cock dueling with his and smearing pre over slender stomaches. He wastes no time testing your hole, nipping at your bottom lip as he presses you against the wall and maneuvers you into place. Quickly replacing his fingers with the tip of his shaft, he spears inward, aided by the mixed fluids your eager frottage spread over his member. Whimpering at the sudden burn of penetration, you lean on Raymond's body, throwing your head back and breaking the kiss as he finds your prostate. Every thrust is so purposeful, so perfectly angled, that you can feel yourself drooling, messing his chest and stomach with your cock's needy contributions. Hard and fast thrusts should hurt, but the slight ache only adds to your passion, melting your insides and clearing the way for Raymond to show how much he wants you.";
			say "     'Gorgeous. My perfect, beautiful-' Croaking out compliments in that husky baritone, Raymond encourages your legs around his waist, his fist clamping on your cock and stroking you in time with the hard shoves that shake your body. 'My mate.' He whispers in one silky ear as his balls slap against your ass, leaving a burning reminder of his desire. Trapped between the increasingly wet stroke of talented fingers and Raymond's deep-delving cock, you can only try your best to match his feverish pace. You don't want to cum early, but the heat rising in your stomach and the heavy flow of pre from your rock-hard manhood tells a different story, and despite your best efforts, you leap off the edge into your orgasm, painting the space between grinding bodies with thick, musky mouse cum.";
			WaitLineBreak;
			say "     So overwhelmed by the intensity of your finish that you can't help but share it, you reach out and connect with your dominant mate, sharing the joy of your body's singing desire. Burying your face in his neck, you hang on for dear life, your breath coming in past pants and your body begging for Raymond's balls to empty into you. You don't have to wait long. Stiffening the moment your orgasm invades Raymond's mind, he grunts, pounding upward and capturing your lips in a savage kiss. Warmth blooms inside you, filling you until you swear your stomach will swell, splashing past your union to drip down your tail and Raymond's churning balls. With no choice but to return his affection, you swirl your tongue over his, riding out his waning rhythm and cradling his head to keep him close.";
			NPCSexAftermath Player receives "AssFuck" from Raymond;
		say "     'I love you.' Raymond says with frank, unrepentant honesty, still sheathed deep inside you. He's gentle as he lets your legs down, supporting you with an embrace that makes your chest feel tight. There's an air of closeness that wasn't there before, and his usual possessiveness has taken on a more confident tone- as if you're his now. Shivering at the thought, you return his embrace, daydreaming about what being Raymond's mate might entail. Unfortunately, you can't stay there forever, warmed by soft mouse fur and surrounded by the scent of your lovemaking. Kissing Raymond's cheek before you step away from him, you gather your things, embracing him before you leave. You've got places to be and people to see, even if you want to let Raymond dote on you for days.";
		increase lust of Raymond by 1;
	else if lust of Raymond is 7:
		say "     Setting aside your belongings out of sight of Raymond, you inspect your body, smoothing your white fur and feeling your ears for stray tufts. It feels more appropriate to approach Raymond like this in hopes of igniting his lust. Still, you can't help the shy thrill shivering through you, remembering the romantic events that ensued the first time he saw you in all your mousy glory. Approaching the albino mouse, you offer some fun, twirling your tail through your fingers. Strangely, Raymond seems less happy this time. Looking you over with a softened gaze, he sighs. 'Sorry, love. More pressing matters are at hand- I can't provide the attention you deserve.' Stepping closer, he rubs his nose against yours, gently turning you to face away from him. 'You'll have to settle for something less involved.' He murmurs in your ear, forgoing his telepathy for effect.";
		if Player is male:
			WaitLineBreak;
			say "     Before you can ask what he means, the mouse's hand trails down your stomach, settling on your cock. Nuzzling into your neck, he takes your shaft in his palm, weighing it and gripping it gently before setting to work, stroking you to a quick rhythm. There's a sense of urgency as if he's trying to get you off as quickly as possible. Thankfully, Raymond's mental talents turn even the quickest sexual tryst into a mind-shattering experience. Humping his hand as it flies over your cock, you relax into his body, biting your lip as you feel his cock settle between your cheeks to tease your hole. Sadly, he doesn't push into you, but the firm grip on your shaft and the gentle fingers rolling your balls are more than enough, and you're leaking pre before you know it, feeling your cock scream for release. 'That's it. Cum for me.' Raymond coos in your ear, nipping the lower curve of it. It's less of a question and more of a demand, and you can't help but follow his instructions, groaning your approval as wide arcs of seed paint the floor below you, your balls churning in talented fingers. Raymond stops stroking when the last drops dribble pitifully from your tapered tip, and you sag to the ground as soon as he releases you, narrowly avoiding sitting in your puddled jizz.";
			say "     Sadly, Raymond doesn't do much more, kneeling to kiss your panting muzzle and licking his fingers clean while his pre dripping shaft bobs unattended. Shooting you a regretful look, he stands, his cock nearly slapping your cheek and a gentle, apologetic voice ringing in your mind. 'I promise I'll make it up to you. My brothers need me right now.'";
		else if Player is female:
			WaitLineBreak;
			say "     Before you can ask what he means, the mouse's hand trails down your stomach, settling on your pussy. Nuzzling into your neck, he spreads your lower lips with two fingers, his thumb swirling over your clit as they dig deep, stirring your wet inner walls. There's a sense of urgency as if he's trying to get you off as quickly as possible. Thankfully, Raymond's mental talents turn even the quickest sexual tryst into a mind-shattering experience, and before long, you're arching your back, riding his fingers, and creaming them with arousal. Wrapping your tail around his leg for balance, you melt against his touch, biting your lip at the increasingly wet squish filling the air. Watching his fingers work, you can't summon a moment of disappointment.";
			say "     'That's it.' Raymond coos as he nips at your radar-like ear,  feverishly flicking your most sensitive spots and letting you feel his cock between your thighs, just inches from your sex. 'Cum for me.' Groaning and tensing up, you flood his fingers, going limp and coating that mouse cock in satisfaction, your body shaking as heavy waves of orgasm crash over you. His fingers never stop until you're sure you'll go mad with overstimulation, and when he releases you, you nearly fall forward, your cunt throbbing with desire and begging for more as you sag to your knees.";
			WaitLineBreak;
			say "     Sadly, Raymond doesn't do much more, kneeling to kiss your panting muzzle and licking his fingers clean while his fem-cum coated shaft bobs unattended. Shooting you a regretful look, he stands, his cock nearly slapping your cheek and a gentle, apologetic voice ringing in your mind. 'I promise I'll make it up to you. My brothers need me right now.'";
		NPCSexAftermath Player receives "Stroking" from Raymond;
		TraitGain "Cat Quest" for Raymond;

Raymond ends here.