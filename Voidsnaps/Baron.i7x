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
	say "     'I'm afraid I don't have much to talk about yet. It's been a slow day for business. Why don't you try coming back later?' Baron says with an apologetic smile, patting your hand as if thanking you for checking in. {Author's note: Content not in yet. Reserved for quests later.}";

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

Baron ends here.