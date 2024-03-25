Baron by Voidsnaps begins here.

Section 1 - Baron's Introduction

Chapter 1 - Introduction Event

Table of GameEventIDs (continued)
Object	Name
Baron's Bizarre Bazaar	"Baron's Bizarre Bazaar"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Baron's Bizarre Bazaar"	Baron's Bizarre Bazaar	"[EventConditions_Baron's Bizarre Bazaar]"	Baron's Apothecary	2500	2	100

to say EventConditions_Baron's Bizarre Bazaar:
	now CurrentWalkinEvent_ConditionsMet is true;

Baron's Bizarre Bazaar is a situation.
ResolveFunction of Baron's Bizarre Bazaar is "[ResolveEvent Baron's Bizarre Bazaar]".
The level of Baron's Bizarre Bazaar is 0.
The sarea of Baron's Bizarre Bazaar is "Nowhere".

to say ResolveEvent Baron's Bizarre Bazaar:
	say "     Stepping into the highest building in the village after its sign draws your attention, its letters seemingly swimming as though capable of moving on their own, you look around, amazed by the amount of different vials, jars, and baskets full of unknown ingredients lining the plywood shelves. The place reminds you of a new-age crystal infested hippy store, and the scents that waft from every direction overwhelm you, setting the room spinning. It's hard to remember why you entered this place, and you're about to leave, when a buttery smooth voice breaks you out of your stupor. 'Why hello there. It's been a while since I've seen a new face around here. I was beginning to think my choice of venue was problematic.' A muscular iguana dressed in a outfit that reminds you of a stereotypical witchdoctor greets you, the beads and animal bones festooning his masculine body rattling as he claps a companionable hand on your shoulder. 'What are we looking for today, hmm? Ol' Baron's got a cure for anything that ails you.' Guiding you to a counter that's little more than a cardboard box draped with a table cloth, the iguana sits, crossing his legs and giving you an eyeful of a peculiar sight in the process. His crotch is smooth and bare, with no hint of a genital slit, balls or a pussy. It seems he's a neuter.";
	now Baron's Bizarre Bazaar is Resolved;

Chapter 2 - Baron's NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Baron	"Baron"

Baron is a man.
ScaleValue of Baron is 4. [human sized]
Body Weight of Baron is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Baron is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Baron is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Baron is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Baron is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Baron is 12. [length in inches]
Breast Size of Baron is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Baron is 2. [count of nipples]
Asshole Depth of Baron is 10. [inches deep for anal fucking]
Asshole Tightness of Baron is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Baron is 0. [number of cocks]
Cock Girth of Baron is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Baron is 0. [length in inches]
Ball Count of Baron is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Baron is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Baron is 0. [number of cunts]
Cunt Depth of Baron is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Baron is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Baron is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Baron is false.
PlayerRomanced of Baron is false.
PlayerFriended of Baron is false.
PlayerControlled of Baron is false.
PlayerFucked of Baron is false.
OralVirgin of Baron is false.
Virgin of Baron is false.
AnalVirgin of Baron is false.
PenileVirgin of Baron is true.
SexuallyExperienced of Baron is true.
TwistedCapacity of Baron is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Baron is true. [steriles can't knock people up]
MainInfection of Baron is "Lizardman". [Always match the capitalization of the infection. Case sensitive.]
Description of Baron is "[BaronDesc]".
Conversation of Baron is { "<This is nothing but a placeholder!>" }.
The scent of Baron is "[BaronScent]".
Baron is in Baron's Apothecary.
Energy of Baron is usually 5000.

to say BaronDesc:
	say "     A strangely muscular green scaled iguana draped in animal bones, beads, and a shamanistic mask. The very picture of a witch doctor, he walks and talks with confidence, unafraid to show off his empty crotch and bubble butt, along with pecs that bounce with supernatural perkiness. You don't know much about him, but he seems friendly enough, though when he wants to experiment, you find yourself a bit afraid of him. Who knows what sort of strange hexes he's capable of!";

to say BaronScent:
	say "     Baron smells like various herbs with a hint of something arcane and dangerous.";

Section 2 - Baron's Shop

[Not open yet. Brainstorm ideas.]

Section 3 - Baron's Sex Scenes

instead of fucking Baron:
	if lastfuck of Baron - turns < 2:
		say "     'My, aren't you ambitious.' Baron laughs as you proposition him, patting your forearm. 'It's best you wait a little while, though. Don't want to get bored with ol' Baron!' Still, he pulls your hand to his ass, letting you get in a good, long squeeze to tide you over. What a tease.";
	else:
		say "[BaronFuckMenu]";

instead of conversing Baron:
	if HP of Baron is 0:
		say "     'I'm afraid I don't have much to talk about yet. It's been a slow day for business. Why don't you try coming back later?' Baron says with an apologetic smile, patting your hand as if thanking you for checking in.";
		say "     {Author's note: You don't have anything to talk about with Baron yet! He'll be a part of future quests, so maybe check back if you need some sort of witchcraft done later.}";
	else:
		say "     As you walk over to Baron, he leans against the wall, his hand reaching out to rest on your arm. 'Don't worry, Ol' Baron can sense when something's the matter. Ask away!' It's disarming that he seems to know what you want before you do, but you think it's polite to ask anyway.";
		LineBreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if "Almost Free" is listed in Traits of Janaz:
			choose a blank row in table of fucking options;
			now title entry is "Ask Baron whether he can help you with Janaz's unique issue";
			now sortorder entry is 1;
			now description entry is "The lizard shaman seems knowledgable with things witchy and otherworldly. Ask for his help in finding a way to help your demon fox son?";
		if "Herb Search" is listed in Traits of Baron:
			choose a blank row in table of fucking options;
			now title entry is "Ask Baron where to find the items for Janaz's freedom";
			now sortorder entry is 2;
			now description entry is "What the hell is a poisonous cloudberry and what's a glowfern? Ask for help.";
		[]
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
					if (nam is "Ask Baron whether he can help you with Janaz's unique issue"):
						say "[BaronJanazRitual]";
					else if (nam is "Ask Baron where to find the items for Janaz's freedom"):
						say "[BaronJanazListHint]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the mysterious shopkeep, deciding on a different course of action.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		clear the screen and hyperlink list;

to say BaronFuckMenu:
	say "     As you walk over to Baron, he leans against the wall, his hand reaching out to rest on your arm. 'Don't worry. I can see what you want, and it's alright. Ask away. Ol' Baron isn't above having some fun.' It's disarming that he seems to know what you want before you do, but you think it's polite to ask anyway.";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask Baron to let you fuck his ass";
		now sortorder entry is 1;
		now description entry is "Despite Baron's unique lack of genitals, you find your eyes drawn to his ass. Surely it's still usable";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Baron if you can lick his ass";
	now sortorder entry is 2;
	now description entry is "Despite Baron's unique lack of genitals, you find your eyes drawn to his ass. Just a taste couldn't hurt";
	sort the table of fucking options in sortorder order;
	[]
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
				if (nam is "Ask Baron to let you fuck his ass"):
					say "[BaronAnal]";
				else if (nam is "Ask Baron to let you lick his ass"):
					say "[BaronRim]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the mysterious shopkeep, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BaronRim: [masturbated while eating his ass.]
	say "     As Baron stares expectantly at you, you decide to go for it. Reaching down, you grab an overflowing handful of his bubble butt, digging your fingers into the marshmallowy texture and enjoying the smooth scaly exterior. Clearing your throat, you ask him if he'll sit on your face, inwardly cringing at your forwardness and hoping he'll accept your advances. 'Not the first to ask for the privilege, and certainly not the last.' Baron twines around your body, pressing his pecs against your chest and guiding your other hand to his lonely, left-out butt cheek. He's more muscular than he looks at first glance, with pectorals that you could sink your fingers into, which makes his utter lack of genitals even more strange and exotic. As you get a feel for the heft of that deliciously round ass, he chuckles, unbothered by the blatant groping. 'I'll fulfill your wish. Come.'";
	say "     Baron wastes no time, leading you into a small alcove behind the counter with a grip on your wrist and a perfect view of his rolling gait. The iguana guides you to a pile of blankets with a conveniently placed pillow for your head, straddling your chest and giving you an eyeful of the valley between those godly cheeks. A forest green hole winks at you, already slightly agape, and you feel your face flush as you realize how much Baron must use it to get it so loose. 'Pretty, isn't it? I've never had any complaints.' Baron coos as he sits back, silencing any reply and pressing that slightly gaping hole against your lips. He's so relaxed on top of you that all of his weight rests on your face, sealing you in the fragrant depths of that perfect ass, and his hands busy themselves at your crotch, tugging your pants down to free your [if Player is male]hardening cock [else if Player is female]feminine sex [else]sensitive null-bulge[end if].";
	WaitLineBreak;
	say "     Testing the softness of that yielding hole, you barely suppress a moan as it parts against your tonguing, letting your oral appendage slip past non-existent defenses and explore the slightly-musky flavors hidden past it. Baron's so clean that you could eat out of him, and his hole's playful clenches encourage you to mash your mouth against it, lapping deep like a thirsty dog at a bowl of water. 'Such an earnest desire.' Baron's soothing, buttery voice floats past the cheeks sealing up your world, and you feel his fingers dance across your [if Player is male]hard cock [else if Player is female]wet pussy, [else]tingling null-bulge, [end if]sating the growing need in your stomach and working you in tune with your sloppy eating. There's no doubt that he's done this before, but you don't mind the implication that you're licking out a hole that's seen many a cock, instead focusing on that perfect, slightly sweaty heat baring down on your face.";
	say "     'That's it. No need to hold back. Finish for me.' Baron's encouragement reaches a fever pitch as he [if Player is male]strokes you to an unforgiving, friction-heavy rhythm that sends cum careening down your cock, spraying his hand with your desire. [else if Player is female]fingers you hard and fast, setting your pussy aquiver and unleashing a soft squirt of fem-cum as he forces an orgasm on your needy hole. [else]sets off a null-gasm, making your body seize up as you moan your finish into the softness of his inner depths. [end if][line break]";
	WaitLineBreak;
	say "     'Don't hesitate to ask if you'd like another taste. Ol' Baron's not much of a prude.' The iguana says as he helps you to your feet, wiping the fluids staining his hand on a nearby rag and placing it in a jar. Did he just use you to get a potion ingredient? The afterglow feels too good to protest, and instead, you nod and stagger out of his makeshift bedroom, a dopey smile on your face.";
	NPCSexAftermath Baron receives "Stroking" from Player;

to say BaronAnal:
	say "     As Baron stares expectantly at you, you decide to go for it. Reaching down, you grab an overflowing handful of his bubble butt, digging your fingers into the marshmallowy texture and enjoying the smooth scaly exterior. Clearing your throat, you ask him if he'll sit on your cock, inwardly cringing at your forwardness and hoping he'll accept your advances. 'Not the first to ask for the privilege, and certainly not the last.' Baron twines around your body, pressing his pecs against your chest and guiding your other hand to his lonely, left-out butt cheek. He's more muscular than he looks at first glance, with pectorals that you could sink your fingers into, which makes his utter lack of genitals even more strange and exotic. As you get a feel for the heft of that deliciously round ass, he chuckles, unbothered by the blatant groping. 'I'll fulfill your wish. Come.'";
	say "     Baron wastes no time, leading you into a small alcove behind the counter with a grip on your wrist and a perfect view of his rolling gait. The iguana guides you to a pile of blankets with a conveniently placed pillow for your head, straddling your chest and giving you an eyeful of the valley between those godly cheeks. A forest green hole winks at you, already slightly agape, and you feel your face flush as you realize how much Baron must use it to get it so loose. Trailing that jiggly rump lower along your body, Baron brings it to rest as your cock flops between those pretty green cheeks, your tip angled against that slightly agape hole. All it takes is the slightest pearl of pre to ease your way, and the meltingly soft inner walls just past that hole welcome you, taking every inch until bubbly cheeks grind against your lower stomach.";
	WaitLineBreak;
	say "     The implication that you're not the first- nor even close- to fuck that perfect rump drives you wild, and you grip Baron's tail, hiking it up to give you a better view of the sloppy hole rolling up and down your length. It's so well-trained that you're sure you won't last long, and honestly, you don't want to! Blasting your load into the slutty shop owner was always the goal- so why not speed it up! With that in mind, you grip his hips, thrusting wildly upward in time with every bounce. No matter how hard you go, there's no protest, not even a wayward clench, and you're able to pound to your heart's content, working up a sweat and squirting your desire with every thrust, every added bit of lubrication adding to the lewd sounds echoing through the alcove. One final titanic shove brings you to the hilt just as the dam breaks, and you flood Baron's ass, painting his innards white and falling backward as your hips buck gently in time with each desperate, gooey shot.";
	say "     Looking at you over his shoulder, Baron slowly raises his hips until your cock flops free of his hole, quickly capturing your leaking seed with a nearby jar and sealing it. If you weren't so wrapped in the afterglow of a good fuck, you'd be worried about what the shaman will do with your cum, but you only have eyes for that creamy ass, feeling your exhausted cock throb as if begging for another round. 'Don't worry.' Baron says with a wink, spreading his cheeks to show off the mess you made and chuckling as you swallow the drool it brings to your mouth. 'Think of it as an insurance policy. You get whatever you like, and I have leverage if you ever get on my bad side. Ol' Baron's always on the lookout for a win/win.' Ever cryptic, the slutty shopkeep pats your messy stomach, setting aside the jar full of your seed. You recover in that back room, attended to with a wet cloth and soft fingers, and stand up feeling refreshed, thanking Baron for his attention. You can't resist giving that bubbly ass one last squeeze, and judging by the way he leans into your touch, letting your fingers graze his cum-slick hole, you assume he's as into it as you are. You'll have to return next time you want to dump a load in him- Possible magical consequences be damned!";
	NPCSexAftermath Baron receives "AssFuck" from Player;

Section 2 - Janaz storyline

to say BaronJanazRitual:
	say "     Put at ease by Baron's irrepressible aura of competency, you confide in him. With Kal Ren willing to release Janaz from his bonds but unwilling to elaborate on a method, you're at a loss. You've already proven you're willing to put your life on the line for him, but you're not sure what that entails! 'Ah.' Leaning against the counter, Baron contemplates you, wiggling his raised tail and wobbling his raised rump in thought. 'Perhaps you could summon this son of yours. Ol' Baron has experience, but your 'demon' sounds like quite the sadist. Wouldn't want to stumble upon any traps woven on the poor thing.' Flicking his tail, Baron raises his voice, looking past you. 'Or he can come out! I see you there, child. Ol' Baron doesn't bite unless you ask him to!'";
	say "     With a guilty expression and a lowered head, Janaz plods into the room, sitting at your feet. He seems almost shy around Baron, unable to meet his gaze. Even Kal Ren doesn't elicit this kind of automatic respect. What exactly is Baron? 'Hmm.' Crossing the distance between them, the lizard inspects Janaz's muzzle, pulling his jaws apart and tugging his tongue. He's thorough with his examination, from head to toe, inspecting every body part with eccentric glee and mumbling. Of course, in classic Baron style, he ends with Janaz's ass in the air and a palm full of furry balls, rolling them around with a chuckle. It's almost comical how easily he manipulates Janaz- It takes a lot of guts to tug a demon's tail!";
	WaitLineBreak;
	say "     'Excellent work. At a glance, you can barely tell no soul is rattling around in there.' Still taking liberties with his hands, Baron slaps Janaz's back gently with an open palm like a used car salesman. 'Homunculi this advanced require serious power to maintain. Sever that connection, and he'll melt away into goo.' Releasing Janaz's balls, Baron absentmindedly rubs his chin, leaning against a fuzzy side and fixing a jolly grin in your direction. 'Easy enough to fix- Though I'll need some... special ingredients.' Sauntering over to the sales counter, Baron flashes his ass at you as he scribbles a few words on a slip of paper, dipping his claw directly into ink and using it as though it were a pen. He hands it to you shortly after, shooing you toward the door and fixing an oddly predatory expression on Janaz. You get the feeling he'll be extracting a payment while you're gone, and as you peruse the short list, you realize he'll have plenty of time. Two glowferns and a poisonous cloudberry? What the hell are those?";
	TraitGain "Herb Search" for Baron;
	now Glowfern is active;
	now Cloudberries is active;

to say BaronJanazListHint:
	say "     Stumped by Baron's list, you sheepishly ask him where you might find the items he listed. You've never heard of either of the ingredients, and you'd prefer not to pick the wrong thing! Baron chuckles as you speak, then shakes his head. 'I haven't the faintest idea! It's been quite a while since I've needed more than the most basic spells, and you'd be surprised how many of those are powered exclusively by renewable resources.' Glancing downward, he heavily hints at what he means, practically undressing you with his eyes. 'Though I suppose that the methods haven't changed... Poisonous cloudberries grow by [bold type] dead trees in deep forests, [roman type]while glowferns prefer [bold type]wet, soggy soil and high humidity. [roman type]Now off you go! I have things to do!'";

Table of GameEventIDs (continued)
Object	Name
Glowfern	"Glowfern"

Glowfern is a situation.
ResolveFunction of Glowfern is "[ResolveEvent Glowfern]".
Sarea of Glowfern is "Sinking Swamps".
Glowfern is inactive.

to say ResolveEvent Glowfern:
	say "     Slogging through the darkest parts of the swamp, you search for the glow of Baron's mystical ingredient, growing more frustrated by the minute as your feet sink into thick mud and the oppressive, supernaturally constant heat settles on your shoulders like a sack of bricks. You're about to give up when you spot a luminescent dot on the horizon and follow it to your destination, your fatigue melting away and the wet, muddy squelch of your feet nothing but background noise. It's brighter than you would have imagined- You almost have to squint as you reach out to touch the rustling fronds, frozen by exactly how beautiful the twin plants appear to be. Who would ever want to destroy something so beautiful? You couldn't possibly pick them. The longer you stare at them, the more you feel compelled to lie beneath them and bask in their radiance. There's even a conveniently placed divot between the two plants.";
	if a stamina check passes 13:
		say "     The dozy feeling passes soon after it comes over you, accompanied by a strange buzz beneath your skin, as though your body rejects the feeling. You don't have time to nap! Let alone here, in the swamps, where anything could stumble upon you! Steeling yourself, you grab the glowferns by the roots, carefully stuffing them into a spare rag and packing them in your backpack. Thank goodness for your stamina. You're not sure what would have happened if you'd fallen asleep!";
	else if a perception check passes 12:
		say "     Catching a glimpse of white out of the corner of your eye, you dust off the base of the fern, recoiling when you find an intact but completely clean skull with the plant's roots coiled in its various orifices. You stop before you uncover more, murmuring thanks to the plant's victim for saving you from the same fate. If you hadn't seen it, you would have probably become fertilizer, just like they did! Careful not to disturb the unearthed skull, you pluck the glowferns, wrapping them in a spare cloth and tucking them away in their bag before they can exert their influence again.";
	else: [failed both checks]
		say "     Yawning, you decide to rest, your eyelids suddenly so heavy that it's impossible to keep them open. You don't bother to set anything aside, instead falling to the ground between the ferns and letting the soft, loamy soil cushion you. It's like the best feather bed you've ever felt! Even the heat of the swamps can't bother you as you drift away in that heavenly embrace, barely registering the rustling sound from both sides.";
		follow the turnpass rule;
		say "     You're not sure how much time passes, but when you awaken, all your gear is just out of reach, barely visible through the corner of your eye. Stranger still, you feel slightly numb, and when you attempt to move, it feels as though you're underwater. Struggling as best you can, you twist this way and that, realizing you're held in place by something stringy and coiling. Another sensation breaks through the anesthetic currently dulling your senses, and as you crane your head, you realize what it is, groaning your discomfort. A writhing mass of roots, sickly white and glowing as though pulsating, slithers along your inner thigh, nudging at sensitive flesh as though searching, then snakes its way further, butting up against your ass with a singular purpose. The pulsing flash of vegetal tentacles grows more rapid as it tests your entrance, and before you can move to stop it, it heaves its way forward, penetrating you in one smooth motion.";
		WaitLineBreak;
		say "     Undulating roots violate your rear, working their way in at a snail's pace and lighting up nerves along the way, sending liquid fire coursing through you[if player is male]r manhood[else if player is female]r womanhood[end if]. There's no stopping the steady thrust, and you're unsure whether you want to, weakly clawing at the ground and fighting the urge to settle back into sleep while the plant violates you. It's going far too deep into you for comfort, and each second it spends exploring your innards settles your mind further, injecting you with who-knows-what to keep you docile.";
		say "     [bold type]If you want to escape the fern's grip, you need to act now![roman type]";
		say "     [link](Y)[as]y[end link] - Yank it out of you! This feels dangerous!";
		say "     [link](N)[as]n[end link] - It feels nice. Maybe you'll just settle in and nap while it has its way with you...";
		if Player consents:
			if a strength check passes 8:
				say "     Summoning the last of your strength, you grab the undulating mass of roots and heave, dragging it out of you in one loud squelch and leaving the mass of roots to dangle, dripping pale fluids and questing against your fingers. You're wide awake almost instantly, running on adrenaline, and you take the opportunity to sever the plant from its roots before it can reestablish its hold over you, bundling the ferns in an old cloth and tucking them away in your pack. Shuddering at the empty feeling in your ass, you gather your things, reequipping yourself and sparing the twisting mass of dying roots a glance. What would have happened if you hadn't woken up? Are those bones you can see peeking out of the disturbed dirt? You hasten your step, eager to leave before you find out.";
			else:
				say "     Clawing ineffectually at the undulating mass, you can't quite seem to halt their steady march into your innards, succumbing to the growing pleasure spreading through your stomach. It's impossible to think, and another wave of tiredness settles you back into position before you figure out a way out of your predicament, your legs like jelly and your breath coming in slow and calm. Yawning and settling into a comfortable position, you focus on the gentle, rolling motion of those roots working their way ever deeper into your body. It feels so nice you don't want it to end, but you're exhausted enough that even an orgasm wouldn't wake you. Maybe you can take care of it when you wake up...";
				wait for any key;
				now battleground is "Void";
				the Player was ended by "Glowfern";
				trigger ending "Player has died";
				end the story saying "You have been turned into fertilizer by the glowferns.";
		else: [Not writing vore... sorry.]
			say "     Yawning and settling into a comfortable position, you focus on the gentle, rolling motion of those roots working their way ever deeper into your body. It feels so nice you don't want it to end, but you're exhausted enough that even an orgasm wouldn't wake you. Maybe you can take care of it when you wake up...";
			wait for any key;
			now battleground is "Void";
			the Player was ended by "Glowfern";
			trigger ending "Player has died";
			end the story saying "You have been turned into fertilizer by the glowferns.";
		now Resolution of Glowfern is 2;
	TraitGain "Glowfern Found" for Baron;
	now Glowfern is Resolved;

Table of GameEventIDs (continued)
Object	Name
Cloudberries	"Cloudberries"

Cloudberries is a situation.
ResolveFunction of Cloudberries is "[ResolveEvent Cloudberries]".
Sarea of Cloudberries is "Forest".
Cloudberries is inactive.

to say ResolveEvent Cloudberries:
	say "     Cutting through thick brush, you hike through the forest, keeping your eyes peeled for a berry bush. You've never seen cloudberries before, but you doubt they'll be abstractly named! Things are never that easy in this godforsaken city! You'll be lucky if you don't have to climb a tree to gather floating berries shaped like cotton balls. Grumbling to yourself, you finally reach a dark, shaded meadow covered in thick bushes alongside a fallen tree. Thankfully, the cloudberries are more mundane than you expected, though there's one problem. At least 30 different bushes sprawl in front of you, half sporting green and dark purple leaves with red stalks holding mottled raspberry-like fruit and the other half milky white berries and blood-red leaves. There's no way they're the same species, and Baron didn't tell you which one you needed!";
	say "     [bold type]Sample the berries to figure out which one is the correct one?[roman type]";
	say "     [link](Y)[as]y[end link] - Fuck it! Taste some of each!";
	say "     [link](N)[as]n[end link] - Bring some of both back with you. You'll have to bring a smaller batch of each, though...";
	if Player consents:
		say "     Shaking your head, you decide not to bother yourself any longer, grabbing a small handful from each bush and staring at the fruit. Baron said the berry he's looking for will be poisonous, right? All you have to do is figure out which causes a reaction! The nanites should protect you from any adverse effects. Secure in your logic, you down the handful of milky white berries first, chewing thoughtfully as a strangely floral, acidic flavor caresses your tongue. It's not bad! You might have to return here and get enough to make a pie sometime, if you can remember exactly-";
		say "     Almost as soon as you finish the mouthful, your vision wavers. Strange colors float in from the sides, and when you look down at your outstretched hand, your fingers wave like treetops in the wind, bending impossibly. You try to speak, but no sound comes out, and a loud, intense screech echoes from everywhere around you. Horrified, you scan the trees for danger, only to see gigantic eyes staring back at you from every direction, following your every move as myriad mouths open around them, screaming in unison until the din becomes impossible to ignore, drowning your brain. Overwhelmed by the impossible scene, you collapse, clutching at the sides of your head- horrified to find that it no longer exists. What are you? Who are you? Where are you?! You're floating away on a sea of horrific screams and psychedelic colors, screaming soundlessly for someone, anyone, to help you. Mercifully, everything ceases before you lose your mind.";
		WaitLineBreak;
		follow the turnpass rule;
		say "      You're not sure how long you're out, but when you awaken, you've got a splitting headache, and your vision is slightly blurry like you've had far too much to drink. Dry lips crack as you lurch to your feet and groan at how heavy your limbs feel, and you wordlessly gather more of the berries that caused your trip, packing them away in a safe place. There's no fucking way you're trying the other variety of berry after the technicolor hell you witnessed, so Baron will just have to make what you gathered work!";
		increase thirst of Player by 20;
		increase stamina of Player by 1;
		now Resolution of Cloudberries is 2;
	else:
		say "     Shaking off any thoughts of using yourself as a guinea pig, you carefully gather some of each berry, padding them with an old rag and tucking them away in your pack. Who knows what eating random berries would do, let alone what 'poisonous' means to the cryptic iguana shaman! For all you know, it's instant death unless handled correctly! Or worse, some gateway into becoming a mindless berry bush! You'll let him decide which one he needs.";
		now Resolution of Cloudberries is 1;
	TraitGain "Cloudberries Found" for Baron;
	now Cloudberries is resolved;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Payment"	Payment	"[EventConditions_Payment]"	Baron's Apothecary	2500	2	100

to say EventConditions_Payment:
	If "Cloudberries Found" is listed in Traits of Baron and "Glowfern Found" is listed in Traits of Baron:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Payment	"Payment"

Payment is a situation.
ResolveFunction of Payment is "[ResolveEvent Payment]".
The level of Payment is 0.
Sarea of Payment is "Sinking Swamps".

to say ResolveEvent Payment:
	say "     As you return to Baron's apothecary, you stop at the door, intrigued by the litany of sound you hear from within. Is that Janaz whining? It's not hard to guess what's going on just past the flimsy entryway.";
	say "     [bold type]Do you want to walk in on them, or wait politely for them to finish?[roman type][line break]";
	say "     [link](Y)[as]y[end link] Yes, why should Janaz have all the fun?";
	say "     [link](N)[as]n[end link] No, you're not in the mood to be a voyeur.";
	if Player consents:
		LineBreak;
		say "     As soon as you step into the doorway, you're surprised to find a different scene than expected. Usually dominant and requiring quite a bit of coaxing to deviate from beastly mating, Janaz lies pinned on his back, legs splayed and held in place by Baron's grip. Wet, sloppy sounds emanate from their grinding bodies, leaving no doubt about what's happening- though you can still see your feral son's canine cock disappearing between wobbling green cheeks. 'Welcome back!' Baron says with a wave, piledriving the poor fox's captive cock into his greedy hole. 'We grew tired of waiting, so ol' Baron took it upon himself to begin gathering- mmm... The last ingredient.' His lewd behavior at odds with his smooth, though pre-smeared crotch, the genital-less iguana dips lower, biting his lower lip as a wet slap heralds the knot slipping into his well-used hole. 'There it is. Let it all out~.' Closing his eyes for a moment, Baron places a hand on his growing stomach, filled with the demon fox's seed.";
		say "     'Father, I-' Whimpering, Janaz rolls his head backward, his tongue hanging from his mouth, lolling limply. 'May I do this again?' He hisses through clenched teeth as he rolls his hips upward, a goofy expression of pure bliss on his face. 'He's even more talented than you are!' His first experience with someone besides you appears to have gone well, though his words sting a little, causing a small wave of jealousy. You're sure you can take a dick just as well as Baron! You'll have to show him later, after- Fuck. Exasperated as you realize you've gone off track, you palm your forehead, shimmying out of your pack and offering up the ingredients Baron asked for, the small packet of berries and vaguely luminescing ferns with freshly grown roots twisting and writhing as though searching for a new victim. You neglect to mention your trouble with gathering them, wiping dirt off your fingers, and asking if Baron needs anything else to finish the ritual.";
		WaitLineBreak;
		say "     'Nothing I don't already have on hand!' Baron wiggles his ass, rising with a pleasured look on his face as a wet pop slips Janaz out of him. Gathering a bottle from an unseen corner of his desk, he cradles the tip of your son's cock with it, milking out the last dregs of his orgasm, then bustling around, leaving a trail of dripping mess. At least a dozen different powders and tinctures join the swirling load, coloring it increasingly strange shades until it settles into an electric, vibrantly glowing purple, aided by a quick juicing of the cloudberries and every last frond of both ferns, crushed into a paste. Shaking the concoction and corking it with his finger, Baron froths it until you worry it might explode, drizzling it into two hastily produced wooden cups, offering one to you and the other to Janaz as he sits up and eyes it suspiciously. Licking the leftover potion from his finger, he beams, motioning with one hand for you to down the lot of it. 'All at once. The texture isn't pleasant, but you'll see why you need it soon enough.'";
	else:
		say "     Waiting patiently by the door, you tap your foot, listening to frenzied moans and wild whimpers. It continues for an impressive amount of time, but eventually, you hear the telltale sound of two bodies collapsing to the ground. A few minutes later, you clear your throat, knocking at the doorframe and announcing yourself.You pointedly ignore the fact that Janaz is currently knot-deep in Baron's ass, lying on his back with a blissful expression on his face, shimmying out of your pack and offering up the ingredients Baron asked for, the small packet of berries and vaguely luminescing ferns with freshly grown roots twisting and writhing as though searching for a new victim. You neglect to mention your trouble with gathering them, wiping dirt off your fingers, and asking if Baron needs anything else to finish the ritual.";
		say "     'Nothing I don't already have on hand!' Baron wiggles his ass, rising with a pleasured look on his face as a wet pop slips Janaz out of him. Gathering a bottle from an unseen corner of his desk, he cradles the tip of your son's cock with it, milking out the last dregs of his orgasm, then bustling around, leaving a trail of dripping mess. At least a dozen different powders and tinctures join the swirling load, coloring it increasingly strange shades until it settles into an electric, vibrantly glowing purple, aided by a quick juicing of the cloudberries and every last frond of both ferns, crushed into a paste. Shaking the concoction and corking it with his finger, Baron froths it until you worry it might explode, drizzling it into two hastily produced wooden cups, offering one to you and the other to Janaz as he sits up and eyes it suspiciously. Licking the leftover potion from his finger, he beams, motioning with one hand for you to down the lot of it. 'All at once. The texture isn't pleasant, but you'll see why you need it soon enough.'";
	WaitLineBreak;
	say "     Eying the magical concoction, you watch Janaz down his in one gulp, eager to do whatever it takes to please you. With no excuse to chicken out after watching his expression change to disgust and bewilderment, you quickly follow suit, holding back a gag at the objectionably chunky texture. There's no delay between draining the last drop and your vision darkening to an intensely bright tunnel surrounded by pulsating darkness. Impossible colors dance and reach toward you in the inky black, disappearing as soon as they appear, and a dull roar echoes in your ears, growing brighter as you refocus on a shaman's mask floating before you.";
	say "     Baron's voice echoes from the painted wood. 'You'll be passing from the realm. Hold onto your sense of self. Ol' Baron can only do so much.' That echoing, resonant voice is different, possessing a power that seems at odds with his eccentric, oversexed personality but undeniably belongs to the iguana shaman. 'Facing your demons is never easy. I should know.' Suddenly, your vision rushes toward something far in the distance, leaving behind the mystical mask. Fires roar around you, swirling and dancing into demonic, horrific faces, licking at your feet as you walk down a nebulous. Two figures come to life at the end of it, leaping from the flames in the middle of an unfamiliar scene. Janaz cringes at the feet of a hulking familiar figure despite a shrouded face and glowing red eyes. As it turns, you realize it's Kal Ren, raising one paw.";
	WaitLineBreak;
	say "     Quickening your pace as that paw comes down, claws extended, you can only watch it make contact with a resounding thud, knocking the feral demon fox from his feet and sending him reeling toward you, lifeless and limp. The wraith smiles, all brimstone and teeth, as it kicks Janaz's body, and an echoing voice fills your ears as it fades, leaving nothing but the faintest glow where its eyes were. 'Have your toy.' Cradling Janaz in your arms, you hold back the panic rising in you. It can't be real. It isn't what you want. Is this all your fault? You can't think- can't speak- what's happening to you? 'The link's severed.' Baron's voice brings you back from your grief, like a warm hand on your shoulder, and the floating shaman's mask appears before you, worn by a ghostly figure you can't quite make out. 'Make him yours before he fades. The terms of the contract are clear.'";
	say "     Before you can question what to do, you see a tendril of glowing, bluish-green light extending from just out of your view, where your chest would be. It quests like a freshly grown root, meandering toward Janaz, then splits, surrounding his body and infusing him with the same light. An impossible-to-describe feeling comes over you as you watch, as though you're in two places at once, and suddenly, the flaming hellscape around you dissolves, leaving you kneeling on the floor of Baron's apothecary next to Janaz's warm, furry side, your face buried in the musky fluff. The iguana beams at you, no trace of the witchy appearance you saw in your vision marring his handsome features, and offers a hand, heaving you to your feet before you can question what just happened. 'All according to plan. Leave here and come back in a few hours. Your boy'll need to sleep it off.' Waving you off, he pushes you outside, then slides a piece of corrugated metal over the doorway, shutting you out. It seems you'll have to wait and see what happens!";
	now energy of Janaz is turns;
	now Payment is resolved;
	TraitLoss "Herb Search" for Baron;
	TraitLoss "Glowfern Found" for Baron;
	TraitLoss "Cloudberries Found" for Baron;
	move Janaz to Baron's Apothecary;



Baron ends here.